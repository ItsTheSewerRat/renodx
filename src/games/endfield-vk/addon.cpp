/*
 * Copyright (C) 2024 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

#define ImTextureID ImU64

#include <algorithm>
#include <array>
#include <atomic>
#include <cstring>
#include <cwchar>
#include <deque>
#include <mutex>
#include <shared_mutex>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include <Windows.h>
#include <detours.h>
#include <vulkan/vulkan.h>

#include <deps/imgui/imgui.h>
#include <include/reshade.hpp>

#include <embed/shaders.h>

#include "../../mods/shader.hpp"
#include "../../mods/swapchain.hpp"
#include "../../utils/bitwise.hpp"
#include "../../utils/data.hpp"
#include "../../utils/hash.hpp"
#include "../../utils/random.hpp"
#include "../../utils/resource.hpp"
#include "../../utils/settings.hpp"
#include "../../utils/state.hpp"
#include "../../utils/swapchain.hpp"
#include "./shared.h"

namespace {

PFN_vkCreateSwapchainKHR real_vk_create_swapchain = nullptr;
PFN_vkCmdSetScissorWithCount vk_cmd_set_scissor_with_count = nullptr;
bool vulkan_swapchain_hook_installed = false;
std::atomic_bool vfx_boost_tracking_enabled = false;
std::atomic_uint32_t vulkan_swapchain_width = 0u;
std::atomic_uint32_t vulkan_swapchain_height = 0u;
std::once_flag vfx_readback_failure_log_once;

std::shared_mutex vulkan_descriptor_mutex;
std::unordered_map<uint64_t, std::unordered_map<uint64_t, uint64_t>>
    vulkan_descriptor_images;
std::unordered_map<uint64_t, uint64_t> vulkan_graphics_descriptor_set_1;
std::unordered_map<uint64_t, std::unordered_map<uint64_t, uint64_t>>
    vulkan_graphics_push_images_set_1;

uint64_t GetVulkanDescriptorSlotKey(uint32_t binding, uint32_t array_element) {
  return (static_cast<uint64_t>(binding) << 32u) | array_element;
}

bool IsTrackedVfxTextureBinding(uint32_t binding) {
  return binding == 2u || binding == 4u || binding == 8u;
}

HMODULE GetReshadeVulkanModule() {
  HMODULE reshade_module = GetModuleHandleW(L"ReShade64.dll");
  if (reshade_module == nullptr) {
    reshade_module = GetModuleHandleW(L"ReShade64-endfield-vk.dll");
  }
  if (reshade_module == nullptr) {
    reshade_module = GetModuleHandleW(L"ReShadeVulkanLayer.dll");
  }
  return reshade_module;
}

bool IsEndfieldProcess() {
  wchar_t process_path[MAX_PATH] = {};
  GetModuleFileNameW(nullptr, process_path, static_cast<DWORD>(std::size(process_path)));
  const wchar_t* process_name = std::wcsrchr(process_path, L'\\');
  return _wcsicmp(
             process_name == nullptr ? process_path : process_name + 1,
             L"Endfield.exe")
      == 0;
}

VkResult VKAPI_CALL HookVkCreateSwapchainKHR(
    VkDevice device,
    const VkSwapchainCreateInfoKHR* create_info,
    const VkAllocationCallbacks* allocator,
    VkSwapchainKHR* swapchain) {
  VkSwapchainCreateInfoKHR updated_create_info = *create_info;
  switch (renodx::mods::swapchain::target_color_space) {
    case reshade::api::color_space::hdr10_st2084:
      updated_create_info.imageColorSpace = VK_COLOR_SPACE_HDR10_ST2084_EXT;
      break;
    case reshade::api::color_space::extended_srgb_linear:
      updated_create_info.imageColorSpace = VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT;
      break;
    case reshade::api::color_space::srgb_nonlinear:
      updated_create_info.imageColorSpace = VK_COLOR_SPACE_SRGB_NONLINEAR_KHR;
      break;
    default:
      break;
  }

  const bool changed = updated_create_info.imageColorSpace != create_info->imageColorSpace;
  const VkResult result = real_vk_create_swapchain(
      device,
      &updated_create_info,
      allocator,
      swapchain);
  if (result >= VK_SUCCESS || !changed) {
    if (result >= VK_SUCCESS) {
      vulkan_swapchain_width.store(create_info->imageExtent.width, std::memory_order_relaxed);
      vulkan_swapchain_height.store(create_info->imageExtent.height, std::memory_order_relaxed);
    }
    return result;
  }

  const VkResult retry_result = real_vk_create_swapchain(device, create_info, allocator, swapchain);
  if (retry_result >= VK_SUCCESS) {
    vulkan_swapchain_width.store(create_info->imageExtent.width, std::memory_order_relaxed);
    vulkan_swapchain_height.store(create_info->imageExtent.height, std::memory_order_relaxed);
  }
  return retry_result;
}

void OnBindVfxDescriptorTables(
    reshade::api::command_list* cmd_list,
    reshade::api::shader_stage stages,
    reshade::api::pipeline_layout,
    uint32_t first,
    uint32_t count,
    const reshade::api::descriptor_table* tables) {
  if (stages != reshade::api::shader_stage::all_graphics
      || !vfx_boost_tracking_enabled.load(std::memory_order_relaxed)
      || first > 1u
      || first + count <= 1u) {
    return;
  }

  const uint64_t command_buffer = reinterpret_cast<uint64_t>(
      reinterpret_cast<VkCommandBuffer>(cmd_list->get_native()));
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_graphics_descriptor_set_1[command_buffer] = tables[1u - first].handle;
  vulkan_graphics_push_images_set_1.erase(command_buffer);
}

void OnPushVfxDescriptors(
    reshade::api::command_list* cmd_list,
    reshade::api::shader_stage stages,
    reshade::api::pipeline_layout,
    uint32_t set,
    const reshade::api::descriptor_table_update& update) {
  if (stages != reshade::api::shader_stage::all_graphics
      || !vfx_boost_tracking_enabled.load(std::memory_order_relaxed)
      || set != 1u
      || !IsTrackedVfxTextureBinding(update.binding)
      || update.array_offset != 0u
      || update.count == 0u
      || update.descriptors == nullptr
      || (update.type != reshade::api::descriptor_type::texture_shader_resource_view
          && update.type
              != reshade::api::descriptor_type::sampler_with_resource_view)) {
    return;
  }

  const uint64_t command_buffer = reinterpret_cast<uint64_t>(
      reinterpret_cast<VkCommandBuffer>(cmd_list->get_native()));
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_graphics_descriptor_set_1.erase(command_buffer);
  auto& images = vulkan_graphics_push_images_set_1[command_buffer];
  const uint64_t image_view = update.type
          == reshade::api::descriptor_type::texture_shader_resource_view
      ? static_cast<const reshade::api::resource_view*>(update.descriptors)[0].handle
      : static_cast<const reshade::api::sampler_with_resource_view*>(
            update.descriptors)[0]
            .view.handle;
  const uint64_t slot = GetVulkanDescriptorSlotKey(update.binding, 0u);
  if (image_view != 0u) {
    images[slot] = image_view;
  } else {
    images.erase(slot);
  }
}

// ReShade emits both regular and descriptor-template updates through this event
// with the destination descriptor table intact.
bool OnUpdateVfxDescriptorTables(
    reshade::api::device*,
    uint32_t count,
    const reshade::api::descriptor_table_update* updates) {
  bool has_tracked_descriptors = false;
  for (uint32_t i = 0u; i < count; ++i) {
    if (IsTrackedVfxTextureBinding(updates[i].binding)
        && updates[i].array_offset == 0u
        && updates[i].count != 0u
        && (updates[i].type
                == reshade::api::descriptor_type::texture_shader_resource_view
            || updates[i].type
                == reshade::api::descriptor_type::sampler_with_resource_view)) {
      has_tracked_descriptors = true;
      break;
    }
  }
  if (!has_tracked_descriptors) return false;

  const std::lock_guard lock(vulkan_descriptor_mutex);
  for (uint32_t i = 0u; i < count; ++i) {
    const auto& update = updates[i];
    if (update.table.handle == 0u
        || update.descriptors == nullptr
        || !IsTrackedVfxTextureBinding(update.binding)
        || update.array_offset != 0u
        || update.count == 0u
        || (update.type != reshade::api::descriptor_type::texture_shader_resource_view
            && update.type != reshade::api::descriptor_type::sampler_with_resource_view)) {
      continue;
    }

    const uint64_t image_view = update.type
            == reshade::api::descriptor_type::texture_shader_resource_view
        ? static_cast<const reshade::api::resource_view*>(update.descriptors)[0].handle
        : static_cast<const reshade::api::sampler_with_resource_view*>(
              update.descriptors)[0]
              .view.handle;
    auto& images = vulkan_descriptor_images[update.table.handle];
    const uint64_t slot = GetVulkanDescriptorSlotKey(update.binding, 0u);
    if (image_view != 0u) {
      images[slot] = image_view;
    } else {
      images.erase(slot);
    }
  }
  return false;
}

bool OnCopyVfxDescriptorTables(
    reshade::api::device*,
    uint32_t count,
    const reshade::api::descriptor_table_copy* copies) {
  bool has_tracked_descriptors = false;
  for (uint32_t i = 0u; i < count; ++i) {
    if (IsTrackedVfxTextureBinding(copies[i].dest_binding)
        && copies[i].dest_array_offset == 0u
        && copies[i].count != 0u) {
      has_tracked_descriptors = true;
      break;
    }
  }
  if (!has_tracked_descriptors) return false;

  const std::lock_guard lock(vulkan_descriptor_mutex);
  for (uint32_t i = 0u; i < count; ++i) {
    const auto& copy = copies[i];
    if (!IsTrackedVfxTextureBinding(copy.dest_binding)
        || copy.dest_array_offset != 0u
        || copy.count == 0u
        || copy.source_table.handle == 0u
        || copy.dest_table.handle == 0u) {
      continue;
    }

    uint64_t copied_view = 0u;
    const auto source_set = vulkan_descriptor_images.find(copy.source_table.handle);
    if (source_set != vulkan_descriptor_images.end()) {
      const auto source = source_set->second.find(GetVulkanDescriptorSlotKey(
          copy.source_binding, copy.source_array_offset));
      if (source != source_set->second.end()) copied_view = source->second;
    }

    auto& dest_set = vulkan_descriptor_images[copy.dest_table.handle];
    const uint64_t slot = GetVulkanDescriptorSlotKey(copy.dest_binding, 0u);
    if (copied_view != 0u) {
      dest_set[slot] = copied_view;
    } else {
      dest_set.erase(slot);
    }
  }
  return false;
}

void OnInitVulkanSwapchainHook(reshade::api::device* device) {
  if (device->get_api() != reshade::api::device_api::vulkan
      || !IsEndfieldProcess()) {
    return;
  }

  const HMODULE reshade_module = GetReshadeVulkanModule();
  if (reshade_module == nullptr) {
    reshade::log::message(
        reshade::log::level::error,
        "[Endfield-VK] The active ReShade Vulkan module was not found for the swapchain hook.");
    return;
  }

  const auto get_device_proc_addr = reinterpret_cast<PFN_vkGetDeviceProcAddr>(
      GetProcAddress(reshade_module, "vkGetDeviceProcAddr"));
  if (get_device_proc_addr == nullptr) {
    reshade::log::message(
        reshade::log::level::error,
        "[Endfield-VK] vkGetDeviceProcAddr was not exported by ReShade for the swapchain hook.");
    return;
  }

  const auto native_device = reinterpret_cast<VkDevice>(device->get_native());
  vk_cmd_set_scissor_with_count = reinterpret_cast<PFN_vkCmdSetScissorWithCount>(
      get_device_proc_addr(native_device, "vkCmdSetScissorWithCount"));
  if (vk_cmd_set_scissor_with_count == nullptr) {
    reshade::log::message(
        reshade::log::level::error,
        "[Endfield-VK] vkCmdSetScissorWithCount is unavailable; UID/latency text splitting cannot run.");
  }

  if (!vulkan_swapchain_hook_installed) {
    real_vk_create_swapchain = reinterpret_cast<PFN_vkCreateSwapchainKHR>(
        get_device_proc_addr(native_device, "vkCreateSwapchainKHR"));
    if (real_vk_create_swapchain == nullptr) {
      reshade::log::message(
          reshade::log::level::error,
          "[Endfield-VK] vkCreateSwapchainKHR was unavailable for the swapchain hook.");
    } else if (DetourTransactionBegin() != NO_ERROR
               || DetourUpdateThread(GetCurrentThread()) != NO_ERROR
               || DetourAttach(
                      reinterpret_cast<void**>(&real_vk_create_swapchain),
                      HookVkCreateSwapchainKHR)
                      != NO_ERROR
               || DetourTransactionCommit() != NO_ERROR) {
      DetourTransactionAbort();
      real_vk_create_swapchain = nullptr;
      reshade::log::message(
          reshade::log::level::error,
          "[Endfield-VK] Failed to install the native Vulkan swapchain color-space hook.");
    } else {
      vulkan_swapchain_hook_installed = true;
    }
  }

}

void UninstallVulkanSwapchainHook() {
  if (!vulkan_swapchain_hook_installed || real_vk_create_swapchain == nullptr) return;

  if (DetourTransactionBegin() == NO_ERROR
      && DetourUpdateThread(GetCurrentThread()) == NO_ERROR
      && DetourDetach(
             reinterpret_cast<void**>(&real_vk_create_swapchain),
             HookVkCreateSwapchainKHR)
             == NO_ERROR
      && DetourTransactionCommit() == NO_ERROR) {
    vulkan_swapchain_hook_installed = false;
    real_vk_create_swapchain = nullptr;
  } else {
    DetourTransactionAbort();
  }
}

renodx::mods::shader::CustomShaders custom_shaders;

void RegisterCustomShader(
    uint32_t crc32,
    const std::span<const uint8_t>& bytecode) {
  custom_shaders.emplace(
      crc32, renodx::mods::shader::CreateCustomShader(crc32, bytecode));
}

void InitializeCustomShaders() {
#undef CustomShaderEntry
#define CustomShaderEntry(crc32) RegisterCustomShader(crc32, __##crc32)
  __ALL_CUSTOM_SHADERS;
#undef CustomShaderEntry
#define CustomShaderEntry(crc32) \
  {crc32, renodx::mods::shader::CreateCustomShader(crc32, __##crc32)}
}

ShaderInjectData shader_injection;

// The complete Endfield payload is descriptor-backed on Vulkan. Keep the
// fullscreen output pass on a small, guaranteed-portable push-constant payload.
struct SwapChainInjectData {
  float peak_white_nits;
  float graphics_white_nits;
  float swap_chain_decoding;
  float swap_chain_gamma_correction;
  float swap_chain_custom_color_space;
  float swap_chain_clamp_color_space;
  float swap_chain_encoding;
  float swap_chain_encoding_color_space;
};

static_assert(sizeof(SwapChainInjectData) == 8u * sizeof(float));

SwapChainInjectData swap_chain_injection;
bool swap_chain_target_sync_pending = true;
bool swap_chain_output_initialized = false;
float requested_swap_chain_encoding = 4.f;
float active_swap_chain_encoding = 4.f;

void SyncSwapChainInjection() {
  swap_chain_injection = {
      .peak_white_nits = shader_injection.peak_white_nits,
      .graphics_white_nits = shader_injection.graphics_white_nits,
      .swap_chain_decoding = shader_injection.swap_chain_decoding,
      .swap_chain_gamma_correction = shader_injection.swap_chain_gamma_correction,
      .swap_chain_custom_color_space = shader_injection.swap_chain_custom_color_space,
      .swap_chain_clamp_color_space = shader_injection.swap_chain_clamp_color_space,
      .swap_chain_encoding = shader_injection.swap_chain_encoding,
      .swap_chain_encoding_color_space = shader_injection.swap_chain_encoding_color_space,
  };
}

reshade::api::color_space GetSwapChainColorSpace(float encoding_value) {
  if (encoding_value == 4.f) return reshade::api::color_space::hdr10_st2084;
  if (encoding_value == 5.f) return reshade::api::color_space::extended_srgb_linear;
  return reshade::api::color_space::srgb_nonlinear;
}

void SetActiveSwapChainEncoding(float encoding_value) {
  active_swap_chain_encoding = encoding_value;
  shader_injection.swap_chain_encoding = encoding_value;
  shader_injection.swap_chain_encoding_color_space = encoding_value == 4.f ? 1.f : 0.f;
  SyncSwapChainInjection();
}

const std::string build_date = __DATE__;
const std::string build_time = __TIME__;

float current_settings_mode = 0;
float current_render_reshade_before_ui = 0;

bool UsingSwapchainUpgrade() {
  return true;
}

bool UsingSwapchainUtil() {
  return (current_render_reshade_before_ui != 0.f
          || UsingSwapchainUpgrade());
}

void ApplySwapChainEncodingTarget(float encoding_value) {
  const bool is_hdr10 = encoding_value == 4.f;
  const bool is_scrgb = encoding_value == 5.f;
  requested_swap_chain_encoding = encoding_value;

  if (is_hdr10) {
    renodx::mods::swapchain::target_format = reshade::api::format::r10g10b10a2_unorm;
  } else if (is_scrgb) {
    renodx::mods::swapchain::target_format = reshade::api::format::r16g16b16a16_float;
  } else {
    renodx::mods::swapchain::target_format = reshade::api::format::r8g8b8a8_unorm;
  }
  renodx::mods::swapchain::target_color_space = GetSwapChainColorSpace(encoding_value);

  // Vulkan has no DXGI ResizeBuffers fallback. ReShade selects the surface
  // format and the game-local hook applies the matching native color space.
  renodx::mods::swapchain::use_resize_buffer = false;
  renodx::utils::device_proxy::SetTargetFormat(renodx::mods::swapchain::target_format);
  renodx::utils::device_proxy::SetTargetColorSpace(renodx::mods::swapchain::target_color_space);
  SetActiveSwapChainEncoding(
      swap_chain_output_initialized ? active_swap_chain_encoding : encoding_value);
  swap_chain_target_sync_pending = true;
}

// Helper to update resolution-based uniform variables in ReShade effects
void UpdateReshadeResolutionUniforms(reshade::api::effect_runtime* runtime, uint32_t width, uint32_t height) {
  float fwidth = static_cast<float>(width);
  float fheight = static_cast<float>(height);

  // Enumerate all uniform variables and update those with resolution-related source annotations
  runtime->enumerate_uniform_variables(nullptr, [fwidth, fheight](reshade::api::effect_runtime* rt, reshade::api::effect_uniform_variable variable) {
    char source[64] = {};
    if (rt->get_annotation_string_from_uniform_variable(variable, "source", source)) {
      // Update BUFFER_WIDTH uniform
      if (std::strcmp(source, "bufwidth") == 0) {
        rt->set_uniform_value_float(variable, fwidth);
      }
      // Update BUFFER_HEIGHT uniform
      else if (std::strcmp(source, "bufheight") == 0) {
        rt->set_uniform_value_float(variable, fheight);
      }
      // Update reciprocal width (1.0 / BUFFER_WIDTH)
      else if (std::strcmp(source, "rcpwidth") == 0 || std::strcmp(source, "bufwidth_rcp") == 0) {
        rt->set_uniform_value_float(variable, 1.0f / fwidth);
      }
      // Update reciprocal height (1.0 / BUFFER_HEIGHT)
      else if (std::strcmp(source, "rcpheight") == 0 || std::strcmp(source, "bufheight_rcp") == 0) {
        rt->set_uniform_value_float(variable, 1.0f / fheight);
      }
      // Update BUFFER_RCP_WIDTH (alternative naming convention)
      else if (std::strcmp(source, "buffer_rcp_width") == 0) {
        rt->set_uniform_value_float(variable, 1.0f / fwidth);
      }
      // Update BUFFER_RCP_HEIGHT (alternative naming convention)
      else if (std::strcmp(source, "buffer_rcp_height") == 0) {
        rt->set_uniform_value_float(variable, 1.0f / fheight);
      }
      // Update pixel size (float2 with 1/width, 1/height)
      else if (std::strcmp(source, "pixelsize") == 0) {
        float pixel_size[2] = { 1.0f / fwidth, 1.0f / fheight };
        rt->set_uniform_value_float(variable, pixel_size, 2);
      }
      // Update screen size (float2 with width, height)
      else if (std::strcmp(source, "screensize") == 0) {
        float screen_size[2] = { fwidth, fheight };
        rt->set_uniform_value_float(variable, screen_size, 2);
      }
    }
  });
}

// Flag to track if we're currently executing our bypass render
// This prevents ReShade from rendering during normal present while allowing our bypass to work
static bool bypass_render_active = false;

// Deferred Tech Test preset application (avoids crash from UpdateSetting inside on_change_value)
static int pending_tech_test_preset = -1;  // -1 = none, 0 = restore defaults, 1 = apply tech test
static float prev_tech_test_look = -1.f;   // impossible initial value forces first-frame detection

// Callback to disable effects during normal present when bypass is enabled
// This prevents double-rendering (once via bypass, once via normal present)
void OnReshadeBeginEffects(reshade::api::effect_runtime* runtime,
                           reshade::api::command_list* cmd_list,
                           reshade::api::resource_view rtv,
                           reshade::api::resource_view rtv_srgb) {
  // Only intercept if bypass is enabled AND we're not currently in bypass render
  // When bypass is disabled (current_render_reshade_before_ui == 0), let ReShade render normally
  if (current_render_reshade_before_ui != 0.f && !bypass_render_active) {
    runtime->set_effects_state(false);
  }
}

// Callback to re-enable effects after present (keeps effects available for bypass)
void OnReshadeFinishEffects(reshade::api::effect_runtime* runtime,
                            reshade::api::command_list* cmd_list,
                            reshade::api::resource_view rtv,
                            reshade::api::resource_view rtv_srgb) {
  // Only re-enable if bypass is enabled AND we disabled them
  if (current_render_reshade_before_ui != 0.f && !bypass_render_active) {
    runtime->set_effects_state(true);
  }
}

bool ExecuteReshadeEffects(reshade::api::command_list* cmd_list) {
  if (current_render_reshade_before_ui == 0.f) return true;
  if (!UsingSwapchainUtil()) return true;

  auto* cmd_list_data = renodx::utils::data::Get<renodx::utils::swapchain::CommandListData>(cmd_list);
  if (cmd_list_data == nullptr) return true;
  if (cmd_list_data->current_render_targets.empty()) return true;

  // Get the ORIGINAL RTV from deferred lighting - do NOT use the clone here
  // The clone is at swapchain resolution (e.g., 3840x2160) but we want to render
  // ReShade effects at the pre-upscale resolution
  auto rtv0 = cmd_list_data->current_render_targets[0];
  if (rtv0.handle == 0) return true;
  auto* device = cmd_list->get_device();
  auto* data = renodx::utils::data::Get<renodx::utils::swapchain::DeviceData>(device);
  if (data == nullptr) return true;

  // Get the render target resolution
  auto resource = device->get_resource_from_view(rtv0);
  auto resource_desc = device->get_resource_desc(resource);
  uint32_t rtv_width = resource_desc.texture.width;
  uint32_t rtv_height = resource_desc.texture.height;

  const std::shared_lock lock(data->mutex);
  for (auto* runtime : data->effect_runtimes) {
    UpdateReshadeResolutionUniforms(runtime, rtv_width, rtv_height);
    bypass_render_active = true;
    runtime->set_effects_state(true);
    runtime->render_effects(cmd_list, rtv0, rtv0);
    bypass_render_active = false;
  }

  return true;
}

// Hotkey state tracking
bool ui_toggle_key_was_pressed = false;
int ui_toggle_hotkey = 0;
bool hotkey_input_active = false;

// Heuristic tracking for UID UI
bool is_ping_input_candidate = false;
bool is_ping_drawn = false;
bool is_uid_input_candidate = false;
uint32_t draw_call_vertex_count = 0;  // Track vertex count from draw calls (not draw_indexed)

struct VfxBoostMatch {
  uint32_t shader_crc;
  uint32_t texture_crc;
  uint32_t texture_binding;
};

constexpr std::array vfx_boost_matches = {
    VfxBoostMatch{0xD1547742u, 0x512923BCu, 2u},
    VfxBoostMatch{0xAE252182u, 0xF38B0BAAu, 2u},
    VfxBoostMatch{0xAC95E7B1u, 0xFA6BD53Au, 4u},
    VfxBoostMatch{0x333B85CCu, 0x1A45F4EBu, 8u},
};

std::shared_mutex vfx_texture_mutex;
std::unordered_map<uint64_t, uint32_t> vfx_texture_crcs;
std::array<uint32_t, vfx_boost_matches.size()> vfx_match_view_counts = {};
std::mutex vfx_readback_mutex;
std::unordered_set<uint64_t> vfx_readback_seen;
std::deque<uint64_t> vfx_pending_readbacks;

struct VfxReadbackState {
  reshade::api::device* device = nullptr;
  reshade::api::resource intermediate = {0u};
  reshade::api::fence fence = {0u};
  uint64_t fence_value = 0u;
  uint64_t image_view = 0u;
  reshade::api::resource_desc desc = {};
  uint32_t row_pitch = 0u;
  uint32_t slice_pitch = 0u;
  bool canceled = false;
  bool failed = false;
};

VfxReadbackState vfx_readback_state;

void SetVfxBoostTrackingEnabled(bool enabled) {
  if (vfx_boost_tracking_enabled.exchange(enabled, std::memory_order_relaxed)
      == enabled) {
    return;
  }
  if (enabled) return;

  {
    const std::lock_guard lock(vfx_readback_mutex);
    for (const uint64_t image_view : vfx_pending_readbacks) {
      vfx_readback_seen.erase(image_view);
    }
    vfx_pending_readbacks.clear();
  }
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_graphics_descriptor_set_1.clear();
  vulkan_graphics_push_images_set_1.clear();
}

void OnResetVfxCommandList(reshade::api::command_list* cmd_list) {
  if (!vfx_boost_tracking_enabled.load(std::memory_order_relaxed)) return;
  const uint64_t command_buffer = reinterpret_cast<uint64_t>(
      reinterpret_cast<VkCommandBuffer>(cmd_list->get_native()));
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_graphics_descriptor_set_1.erase(command_buffer);
  vulkan_graphics_push_images_set_1.erase(command_buffer);
}

bool IsVfxTextureDesc(const reshade::api::resource_desc& desc) {
  return desc.type == reshade::api::resource_type::texture_2d
      && (desc.texture.format == reshade::api::format::bc7_unorm
          || desc.texture.format == reshade::api::format::bc7_unorm_srgb)
      && desc.texture.width == 256u
      && desc.texture.height == 256u;
}

bool ComputeVfxTextureCrc(
    const reshade::api::resource_desc& desc,
    const reshade::api::subresource_data& data,
    uint32_t* output_crc) {
  if (!IsVfxTextureDesc(desc) || data.data == nullptr || output_crc == nullptr) return false;

  const uint32_t target_row_pitch = reshade::api::format_row_pitch(
      desc.texture.format, desc.texture.width);
  const uint32_t target_slice_pitch = reshade::api::format_slice_pitch(
      desc.texture.format, target_row_pitch, desc.texture.height);
  const uint32_t source_row_pitch = data.row_pitch != 0u
      ? data.row_pitch
      : target_row_pitch;
  const uint32_t source_slice_pitch = data.slice_pitch != 0u
      ? data.slice_pitch
      : reshade::api::format_slice_pitch(
            desc.texture.format, source_row_pitch, desc.texture.height);
  if (target_row_pitch == 0u
      || target_slice_pitch == 0u
      || source_row_pitch < target_row_pitch
      || source_slice_pitch < target_slice_pitch) {
    return false;
  }

  uint32_t crc = 0xFFFFFFFFu;
  const auto* source = static_cast<const uint8_t*>(data.data);
  const uint32_t row_count = target_slice_pitch / target_row_pitch;
  for (uint32_t row = 0u; row < row_count; ++row) {
    crc = renodx::utils::hash::UpdateCRC32(
        crc, source + static_cast<size_t>(row) * source_row_pitch, target_row_pitch);
  }
  *output_crc = renodx::utils::hash::FinalizeCRC32(crc);
  return true;
}

void OnDestroyVfxResourceView(
    reshade::api::device*,
    reshade::api::resource_view view) {
  {
    const std::lock_guard lock(vfx_readback_mutex);
    vfx_readback_seen.erase(view.handle);
    std::erase(vfx_pending_readbacks, view.handle);
    if (vfx_readback_state.image_view == view.handle) {
      vfx_readback_state.canceled = true;
    }
  }

  const std::lock_guard lock(vfx_texture_mutex);
  const auto cached_crc = vfx_texture_crcs.find(view.handle);
  if (cached_crc == vfx_texture_crcs.end()) return;
  for (size_t i = 0u; i < vfx_boost_matches.size(); ++i) {
    if (cached_crc->second == vfx_boost_matches[i].texture_crc) {
      if (vfx_match_view_counts[i] != 0u) --vfx_match_view_counts[i];
      break;
    }
  }
  vfx_texture_crcs.erase(cached_crc);
}

reshade::api::resource_view GetBoundVfxTextureView(
    reshade::api::command_list* cmd_list,
    uint32_t binding) {
  const uint64_t command_buffer = reinterpret_cast<uint64_t>(
      reinterpret_cast<VkCommandBuffer>(cmd_list->get_native()));
  const uint64_t descriptor_slot = GetVulkanDescriptorSlotKey(binding, 0u);
  const std::shared_lock lock(vulkan_descriptor_mutex);

  const auto pushed = vulkan_graphics_push_images_set_1.find(command_buffer);
  if (pushed != vulkan_graphics_push_images_set_1.end()) {
    const auto image = pushed->second.find(descriptor_slot);
    if (image != pushed->second.end()) return {image->second};
  }

  const auto bound_set = vulkan_graphics_descriptor_set_1.find(command_buffer);
  if (bound_set == vulkan_graphics_descriptor_set_1.end()) return {0u};
  const auto descriptors = vulkan_descriptor_images.find(bound_set->second);
  if (descriptors == vulkan_descriptor_images.end()) return {0u};
  const auto image = descriptors->second.find(descriptor_slot);
  return image != descriptors->second.end()
      ? reshade::api::resource_view{image->second}
      : reshade::api::resource_view{0u};
}

bool AreAllVfxBoostTexturesResolved() {
  const std::shared_lock lock(vfx_texture_mutex);
  return std::all_of(
      vfx_match_view_counts.begin(),
      vfx_match_view_counts.end(),
      [](uint32_t count) { return count != 0u; });
}

void QueueVfxTextureReadback(reshade::api::resource_view view) {
  if (view.handle == 0u
      || !vfx_boost_tracking_enabled.load(std::memory_order_relaxed)
      || AreAllVfxBoostTexturesResolved()) {
    return;
  }

  const std::lock_guard lock(vfx_readback_mutex);
  constexpr size_t kMaxPendingReadbacks = 64u;
  if (vfx_pending_readbacks.size() >= kMaxPendingReadbacks) return;
  if (!vfx_readback_seen.emplace(view.handle).second) return;
  vfx_pending_readbacks.push_back(view.handle);
}

void ProcessPendingVfxTextureReadback(reshade::api::command_queue* queue) {
  auto* device = queue->get_device();
  const std::lock_guard lock(vfx_readback_mutex);
  if (vfx_readback_state.device != nullptr
      && vfx_readback_state.device != device) {
    return;
  }
  if (vfx_readback_state.failed) return;

  if (vfx_readback_state.image_view != 0u) {
    if (device->get_completed_fence_value(vfx_readback_state.fence)
        < vfx_readback_state.fence_value) {
      return;
    }

    if (!vfx_readback_state.canceled) {
      void* mapped_data = nullptr;
      if (device->map_buffer_region(
              vfx_readback_state.intermediate,
              0u,
              vfx_readback_state.slice_pitch,
              reshade::api::map_access::read_only,
              &mapped_data)) {
        uint32_t texture_crc = 0u;
        const bool all_zero = std::all_of(
            static_cast<const uint8_t*>(mapped_data),
            static_cast<const uint8_t*>(mapped_data)
                + vfx_readback_state.slice_pitch,
            [](uint8_t value) { return value == 0u; });
        const bool computed = ComputeVfxTextureCrc(
            vfx_readback_state.desc,
            reshade::api::subresource_data{
                .data = mapped_data,
                .row_pitch = vfx_readback_state.row_pitch,
                .slice_pitch = vfx_readback_state.slice_pitch,
            },
            &texture_crc);
        device->unmap_buffer_region(vfx_readback_state.intermediate);

        if (!all_zero && computed) {
          const std::lock_guard texture_lock(vfx_texture_mutex);
          const bool inserted = vfx_texture_crcs
                                    .emplace(
                                        vfx_readback_state.image_view,
                                        texture_crc)
                                    .second;
          if (inserted) {
            for (size_t i = 0u; i < vfx_boost_matches.size(); ++i) {
              if (texture_crc == vfx_boost_matches[i].texture_crc) {
                ++vfx_match_view_counts[i];
                break;
              }
            }
          }
        }
      }
    }

    vfx_readback_state.image_view = 0u;
    vfx_readback_state.canceled = false;
  }

  if (!vfx_boost_tracking_enabled.load(std::memory_order_relaxed)) return;
  if (AreAllVfxBoostTexturesResolved()) {
    for (const uint64_t image_view : vfx_pending_readbacks) {
      vfx_readback_seen.erase(image_view);
    }
    vfx_pending_readbacks.clear();
    return;
  }

  while (!vfx_pending_readbacks.empty()) {
    const uint64_t image_view = vfx_pending_readbacks.front();
    vfx_pending_readbacks.pop_front();
    const reshade::api::resource_view view = {image_view};
    const auto resource = device->get_resource_from_view(view);
    if (resource.handle == 0u) continue;

    const auto desc = device->get_resource_desc(resource);
    if (!IsVfxTextureDesc(desc)
        || !renodx::utils::bitwise::HasFlag(
            desc.usage, reshade::api::resource_usage::copy_source)) {
      continue;
    }

    const auto view_desc = device->get_resource_view_desc(view);
    if (view_desc.texture.first_level != 0u) continue;
    const uint32_t levels = std::max<uint32_t>(desc.texture.levels, 1u);
    const uint32_t subresource = view_desc.texture.first_layer * levels;
    const uint32_t row_pitch = reshade::api::format_row_pitch(
        desc.texture.format, desc.texture.width);
    const uint32_t slice_pitch = reshade::api::format_slice_pitch(
        desc.texture.format, row_pitch, desc.texture.height);
    if (row_pitch == 0u || slice_pitch == 0u) continue;

    if (vfx_readback_state.device == nullptr) {
      reshade::api::fence fence = {0u};
      if (!device->create_fence(
              0u, reshade::api::fence_flags::none, &fence)) {
        return;
      }
      vfx_readback_state.device = device;
      vfx_readback_state.fence = fence;
    }
    if (vfx_readback_state.intermediate.handle == 0u
        && !device->create_resource(
            reshade::api::resource_desc(
                static_cast<uint64_t>(slice_pitch),
                reshade::api::memory_heap::gpu_to_cpu,
                reshade::api::resource_usage::copy_dest),
            nullptr,
            reshade::api::resource_usage::copy_dest,
            &vfx_readback_state.intermediate)) {
      return;
    }

    auto* cmd_list = queue->get_immediate_command_list();
    if (cmd_list == nullptr) return;
    cmd_list->barrier(
        resource,
        reshade::api::resource_usage::shader_resource,
        reshade::api::resource_usage::copy_source);
    cmd_list->copy_texture_to_buffer(
        resource,
        subresource,
        nullptr,
        vfx_readback_state.intermediate,
        0u,
        desc.texture.width,
        desc.texture.height);
    cmd_list->barrier(
        resource,
        reshade::api::resource_usage::copy_source,
        reshade::api::resource_usage::shader_resource);
    queue->flush_immediate_command_list();

    vfx_readback_state.image_view = image_view;
    vfx_readback_state.desc = desc;
    vfx_readback_state.row_pitch = row_pitch;
    vfx_readback_state.slice_pitch = slice_pitch;
    vfx_readback_state.canceled = false;
    ++vfx_readback_state.fence_value;
    if (!queue->signal(
            vfx_readback_state.fence,
            vfx_readback_state.fence_value)) {
      vfx_readback_state.image_view = 0u;
      vfx_readback_state.failed = true;
      std::call_once(vfx_readback_failure_log_once, []() {
        reshade::log::message(
            reshade::log::level::error,
            "[Endfield-VK] Failed to signal the asynchronous VFX texture readback; texture discovery is disabled for this device.");
      });
    }
    return;
  }
}

void OnDestroyVfxDevice(reshade::api::device* device) {
  {
    const std::lock_guard lock(vfx_readback_mutex);
    if (vfx_readback_state.device == device) {
      if (vfx_readback_state.intermediate.handle != 0u) {
        device->destroy_resource(vfx_readback_state.intermediate);
      }
      if (vfx_readback_state.fence.handle != 0u) {
        device->destroy_fence(vfx_readback_state.fence);
      }
      vfx_readback_state = {};
    }
    vfx_readback_seen.clear();
    vfx_pending_readbacks.clear();
  }
  {
    const std::lock_guard lock(vfx_texture_mutex);
    vfx_texture_crcs.clear();
    vfx_match_view_counts.fill(0u);
  }
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_descriptor_images.clear();
  vulkan_graphics_descriptor_set_1.clear();
  vulkan_graphics_push_images_set_1.clear();
}

constexpr std::array<uint32_t, 12> kVulkanUiVisibilityPixelShaderHashes = {
    0x71C9A27Au,
    0x2002AE80u,
    0xCEC6342Au,
    0xF952B899u,
    0x0CF25D6Fu,
    0x8D8CA241u,
    0x4A58BC0Bu,
    0x7D650384u,
    0xAEC2747Bu,
    0x934733E7u,
    0x3961B617u,
    0x89B77E6Du,
};
constexpr uint32_t kVulkanUidPixelShaderHash = 0xFF43F702u;
constexpr std::array<uint32_t, 2> kVulkanDirectHidePixelShaderHashes = {
    0xAB895B1Fu,
    0xACF0F46Du,
};

constexpr uint32_t kVulkanPingVertexShaderHash = 0xDB010722u;
constexpr uint32_t kVulkanPingPixelShaderHash = 0x512AB6E6u;

bool IsVisible(float value) {
  return value >= 0.5f;
}

bool DrawTextRegion(
    reshade::api::command_list* cmd_list,
    uint32_t index_count,
    uint32_t instance_count,
    uint32_t first_index,
    int32_t vertex_offset,
    uint32_t first_instance,
    bool keep_latency_text) {
  if (vk_cmd_set_scissor_with_count == nullptr) return false;
  const uint32_t width = vulkan_swapchain_width.load(std::memory_order_relaxed);
  const uint32_t height = vulkan_swapchain_height.load(std::memory_order_relaxed);
  if (width == 0u || height == 0u) return false;

  constexpr float kTextSplitFromHeight = 192.f / 2160.f;
  const uint32_t split_x = std::min(
      width,
      static_cast<uint32_t>(height * kTextSplitFromHeight + 0.5f));
  const VkRect2D clip_rect = keep_latency_text
      ? VkRect2D{
            .offset = {.x = 0, .y = 0},
            .extent = {.width = split_x, .height = height},
        }
      : VkRect2D{
            .offset = {.x = static_cast<int32_t>(split_x), .y = 0},
            .extent = {.width = width - split_x, .height = height},
        };
  const VkRect2D restore_rect = {
      .offset = {.x = 0, .y = 0},
      .extent = {.width = width, .height = height},
  };

  const auto native_cmd_list = reinterpret_cast<VkCommandBuffer>(cmd_list->get_native());
  vk_cmd_set_scissor_with_count(native_cmd_list, 1u, &clip_rect);
  cmd_list->draw_indexed(
      index_count,
      instance_count,
      first_index,
      vertex_offset,
      first_instance);
  vk_cmd_set_scissor_with_count(native_cmd_list, 1u, &restore_rect);
  return true;
}

bool OnPingDraw(reshade::api::command_list* cmd_list) {
  if (is_ping_input_candidate) {
    is_ping_drawn = true;
  } else {
    is_ping_drawn = false;
  }
  return true;
}

bool OnUIDDraw(reshade::api::command_list* cmd_list) {
  if (is_uid_input_candidate) {
    if (!IsVisible(shader_injection.status_text_opacity) &&
        !IsVisible(shader_injection.latency_text_opacity)) {
      return false;
    }
  }
  return true;
}

bool OnUiVisibilityDraw(reshade::api::command_list* cmd_list) {
  return shader_injection.ui_visibility >= 0.5f;
}

bool OnUidOrUiVisibilityDraw(reshade::api::command_list* cmd_list) {
  if (shader_injection.ui_visibility < 0.5f) return false;
  return OnUIDDraw(cmd_list);
}

bool KeepOriginalShader(reshade::api::command_list* cmd_list) {
  return false;
}

void RestoreVFXBoostShader(
    reshade::api::command_list* cmd_list,
    renodx::utils::shader::CommandListData* shader_state) {
  if (shader_state == nullptr) return;
  auto* pixel_state = renodx::utils::shader::GetCurrentPixelState(shader_state);
  if (pixel_state->pipeline.handle != 0u) {
    cmd_list->bind_pipeline(pixel_state->applied_stage, pixel_state->pipeline);
  }
}

bool ReplaceVFXBoostShader(
    reshade::api::command_list* cmd_list,
    const VfxBoostMatch& match) {
  auto* shader_state = renodx::utils::shader::GetCurrentState(cmd_list);
  if (shader_state == nullptr) return false;

  if (!IsVisible(shader_injection.perchannelblowout)) {
    SetVfxBoostTrackingEnabled(false);
    RestoreVFXBoostShader(cmd_list, shader_state);
    return false;
  }
  SetVfxBoostTrackingEnabled(true);

  const auto texture_view = GetBoundVfxTextureView(cmd_list, match.texture_binding);
  if (texture_view.handle == 0u) {
    RestoreVFXBoostShader(cmd_list, shader_state);
    return false;
  }

  uint32_t texture_crc = 0u;
  bool has_texture_crc = false;
  {
    const std::shared_lock lock(vfx_texture_mutex);
    const auto cached_crc = vfx_texture_crcs.find(texture_view.handle);
    if (cached_crc != vfx_texture_crcs.end()) {
      texture_crc = cached_crc->second;
      has_texture_crc = true;
    }
  }
  if (!has_texture_crc) {
    QueueVfxTextureReadback(texture_view);
    RestoreVFXBoostShader(cmd_list, shader_state);
    return false;
  }
  if (texture_crc != match.texture_crc) {
    RestoreVFXBoostShader(cmd_list, shader_state);
    return false;
  }

  return true;
}

bool ReplaceImprovedGTAOShader(reshade::api::command_list* cmd_list) {
  return shader_injection.improved_gtao >= 0.5f
      || shader_injection.disable_game_ao >= 0.5f;
}

bool ReplaceDisableGTAOShader(reshade::api::command_list* cmd_list) {
  return shader_injection.disable_game_ao >= 0.5f;
}

bool UseCloudShadowOffVariant(reshade::api::command_list*) {
  return shader_injection.fake_cloud_shadows < 0.5f;
}

bool SkipShaderInjection(reshade::api::command_list*) {
  return false;
}

void RegisterUiVisibilityBypassShader(uint32_t crc) {
  auto it = custom_shaders.find(crc);
  if (it == custom_shaders.end()) {
    renodx::mods::shader::CustomShader cs{};
    cs.crc32 = crc;
    cs.on_draw = OnUiVisibilityDraw;
    cs.on_replace = KeepOriginalShader;
    custom_shaders.emplace(crc, std::move(cs));
    return;
  }

  it->second.on_draw = OnUiVisibilityDraw;
  it->second.on_replace = KeepOriginalShader;
}

void RegisterUidBypassShader(uint32_t crc) {
  auto it = custom_shaders.find(crc);
  if (it == custom_shaders.end()) {
    renodx::mods::shader::CustomShader cs{};
    cs.crc32 = crc;
    cs.on_draw = OnUidOrUiVisibilityDraw;
    cs.on_replace = KeepOriginalShader;
    custom_shaders.emplace(crc, std::move(cs));
    return;
  }

  it->second.on_draw = OnUidOrUiVisibilityDraw;
  it->second.on_replace = KeepOriginalShader;
}


// Helper function to get key name from virtual key code
std::string GetKeyName(int keycode) {
  if (keycode == 0 || keycode >= 256) return "";

  static const char* keyboard_keys[256] = {
    "", "Left Mouse", "Right Mouse", "Cancel", "Middle Mouse", "X1 Mouse", "X2 Mouse", "", "Backspace", "Tab", "", "", "Clear", "Enter", "", "",
    "Shift", "Control", "Alt", "Pause", "Caps Lock", "", "", "", "", "", "", "Escape", "", "", "", "",
    "Space", "Page Up", "Page Down", "End", "Home", "Left Arrow", "Up Arrow", "Right Arrow", "Down Arrow", "Select", "", "", "Print Screen", "Insert", "Delete", "Help",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "", "", "", "", "", "",
    "", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O",
    "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "Left Windows", "Right Windows", "Apps", "", "Sleep",
    "Numpad 0", "Numpad 1", "Numpad 2", "Numpad 3", "Numpad 4", "Numpad 5", "Numpad 6", "Numpad 7", "Numpad 8", "Numpad 9", "Numpad *", "Numpad +", "", "Numpad -", "Numpad Decimal", "Numpad /",
    "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12", "F13", "F14", "F15", "F16",
    "F17", "F18", "F19", "F20", "F21", "F22", "F23", "F24", "", "", "", "", "", "", "", "",
    "Num Lock", "Scroll Lock", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "Left Shift", "Right Shift", "Left Control", "Right Control", "Left Menu", "Right Menu", "Browser Back", "Browser Forward", "Browser Refresh", "Browser Stop", "Browser Search", "Browser Favorites", "Browser Home", "Volume Mute", "Volume Down", "Volume Up",
    "Next Track", "Previous Track", "Media Stop", "Media Play/Pause", "Mail", "Media Select", "Launch App 1", "Launch App 2", "", "", "OEM ;", "OEM +", "OEM ,", "OEM -", "OEM .", "OEM /",
    "OEM ~", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "", "", "", "", "", "OEM [", "OEM \\", "OEM ]", "OEM '", "OEM 8",
    "", "", "OEM <", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "Attn", "CrSel", "ExSel", "Erase EOF", "Play", "Zoom", "", "PA1", "OEM Clear", ""
  };

  return keyboard_keys[keycode];
}

int GetLastKeyPressedImGui() {

  struct KeyMapping {
    ImGuiKey imgui_key;
    int vk_code;
  };

  static const KeyMapping kKeyMappings[] = {
    // Function keys
    {ImGuiKey_F1, VK_F1}, {ImGuiKey_F2, VK_F2}, {ImGuiKey_F3, VK_F3}, {ImGuiKey_F4, VK_F4},
    {ImGuiKey_F5, VK_F5}, {ImGuiKey_F6, VK_F6}, {ImGuiKey_F7, VK_F7}, {ImGuiKey_F8, VK_F8},
    {ImGuiKey_F9, VK_F9}, {ImGuiKey_F10, VK_F10}, {ImGuiKey_F11, VK_F11}, {ImGuiKey_F12, VK_F12},
    // Navigation keys
    {ImGuiKey_Insert, VK_INSERT}, {ImGuiKey_Delete, VK_DELETE}, {ImGuiKey_Home, VK_HOME}, {ImGuiKey_End, VK_END},
    {ImGuiKey_PageUp, VK_PRIOR}, {ImGuiKey_PageDown, VK_NEXT},
    // Arrow keys
    {ImGuiKey_LeftArrow, VK_LEFT}, {ImGuiKey_RightArrow, VK_RIGHT}, {ImGuiKey_UpArrow, VK_UP}, {ImGuiKey_DownArrow, VK_DOWN},
    // Special keys
    {ImGuiKey_Backspace, VK_BACK}, {ImGuiKey_Space, VK_SPACE}, {ImGuiKey_Enter, VK_RETURN},
    {ImGuiKey_Escape, VK_ESCAPE}, {ImGuiKey_Tab, VK_TAB},
    {ImGuiKey_Pause, VK_PAUSE}, {ImGuiKey_ScrollLock, VK_SCROLL}, {ImGuiKey_PrintScreen, VK_SNAPSHOT},
    // Numpad
    {ImGuiKey_Keypad0, VK_NUMPAD0}, {ImGuiKey_Keypad1, VK_NUMPAD1}, {ImGuiKey_Keypad2, VK_NUMPAD2},
    {ImGuiKey_Keypad3, VK_NUMPAD3}, {ImGuiKey_Keypad4, VK_NUMPAD4}, {ImGuiKey_Keypad5, VK_NUMPAD5},
    {ImGuiKey_Keypad6, VK_NUMPAD6}, {ImGuiKey_Keypad7, VK_NUMPAD7}, {ImGuiKey_Keypad8, VK_NUMPAD8},
    {ImGuiKey_Keypad9, VK_NUMPAD9}, {ImGuiKey_KeypadDecimal, VK_DECIMAL},
    {ImGuiKey_KeypadDivide, VK_DIVIDE}, {ImGuiKey_KeypadMultiply, VK_MULTIPLY},
    {ImGuiKey_KeypadSubtract, VK_SUBTRACT}, {ImGuiKey_KeypadAdd, VK_ADD}, {ImGuiKey_KeypadEnter, VK_RETURN},
    // Letters
    {ImGuiKey_A, 'A'}, {ImGuiKey_B, 'B'}, {ImGuiKey_C, 'C'}, {ImGuiKey_D, 'D'}, {ImGuiKey_E, 'E'},
    {ImGuiKey_F, 'F'}, {ImGuiKey_G, 'G'}, {ImGuiKey_H, 'H'}, {ImGuiKey_I, 'I'}, {ImGuiKey_J, 'J'},
    {ImGuiKey_K, 'K'}, {ImGuiKey_L, 'L'}, {ImGuiKey_M, 'M'}, {ImGuiKey_N, 'N'}, {ImGuiKey_O, 'O'},
    {ImGuiKey_P, 'P'}, {ImGuiKey_Q, 'Q'}, {ImGuiKey_R, 'R'}, {ImGuiKey_S, 'S'}, {ImGuiKey_T, 'T'},
    {ImGuiKey_U, 'U'}, {ImGuiKey_V, 'V'}, {ImGuiKey_W, 'W'}, {ImGuiKey_X, 'X'}, {ImGuiKey_Y, 'Y'}, {ImGuiKey_Z, 'Z'},
    // Numbers
    {ImGuiKey_0, '0'}, {ImGuiKey_1, '1'}, {ImGuiKey_2, '2'}, {ImGuiKey_3, '3'}, {ImGuiKey_4, '4'},
    {ImGuiKey_5, '5'}, {ImGuiKey_6, '6'}, {ImGuiKey_7, '7'}, {ImGuiKey_8, '8'}, {ImGuiKey_9, '9'},
    // Punctuation
    {ImGuiKey_GraveAccent, VK_OEM_3}, {ImGuiKey_Minus, VK_OEM_MINUS}, {ImGuiKey_Equal, VK_OEM_PLUS},
    {ImGuiKey_LeftBracket, VK_OEM_4}, {ImGuiKey_RightBracket, VK_OEM_6}, {ImGuiKey_Backslash, VK_OEM_5},
    {ImGuiKey_Semicolon, VK_OEM_1}, {ImGuiKey_Apostrophe, VK_OEM_7},
    {ImGuiKey_Comma, VK_OEM_COMMA}, {ImGuiKey_Period, VK_OEM_PERIOD}, {ImGuiKey_Slash, VK_OEM_2},
  };

  for (const auto& mapping : kKeyMappings) {
    if (ImGui::IsKeyPressed(mapping.imgui_key, false)) {
      return mapping.vk_code;
    }
  }
  return 0;
}

renodx::utils::settings::Settings settings = {
    new renodx::utils::settings::Setting{
        .key = "SettingsMode",
        .binding = &current_settings_mode,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Settings Mode",
        .labels = {"Simple", "Intermediate", "Advanced"},
        .is_global = true,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapType",
        .binding = &shader_injection.tone_map_type,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .can_reset = false,
        .label = "Tone Mapper",
        .section = "Tone Mapping",
        .tooltip = "Sets the tone mapper type. True Vanilla requires going back to the LOGIN MENU for all the changes to have an effect.",
        .labels = {"Vanilla", "RenoDRT"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapMethod",
        .binding = &shader_injection.reno_drt_tone_map_method,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Tone Map Method",
        .section = "Tone Mapping",
        .tooltip = "Selects the RenoDRT curve",
        .labels = {"Reinhard", "Hermite Spline"},
        .parse = [](float value) { return value + 1.f; },
        .is_visible = []() { return false;},
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapPeakNits",
        .binding = &shader_injection.peak_white_nits,
        .default_value = 1000.f,
        .can_reset = true,
        .label = "Peak Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of peak white in nits",
        .min = 48.f,
        .max = 4000.f,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapGameNits",
        .binding = &shader_injection.diffuse_white_nits,
        .default_value = 203.f,
        .label = "Game Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of 100% white in nits",
        .min = 48.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapUINits",
        .binding = &shader_injection.graphics_white_nits,
        .default_value = 203.f,
        .label = "UI Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the brightness of UI and HUD elements in nits",
        .min = 48.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "GammaCorrection",
        .binding = &shader_injection.gamma_correction,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Scene Gamma Correction",
        .section = "Tone Mapping",
        .tooltip = "Emulates a display EOTF.",
        .labels = {"Off", "2.2", "BT.1886"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainGammaCorrection",
        .binding = &shader_injection.swap_chain_gamma_correction,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "UI Gamma Correction",
        .section = "Tone Mapping",
        .labels = {"None", "2.2", "2.4"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapScaling",
        .binding = &shader_injection.tone_map_per_channel,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Scaling",
        .section = "Tone Mapping",
        .tooltip = "Luminance scales colors consistently while per-channel saturates and blows out sooner",
        .labels = {"Luminance", "Per Channel"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapWorkingColorSpace",
        .binding = &shader_injection.tone_map_working_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Working Color Space",
        .section = "Tone Mapping",
        .labels = {"BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueProcessor",
        .binding = &shader_injection.tone_map_hue_processor,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hue Processor",
        .section = "Tone Mapping",
        .tooltip = "Selects hue processor",
        .labels = {"OKLab", "ICtCp", "darkTable UCS"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueCorrection",
        .binding = &shader_injection.tone_map_hue_correction,
        .default_value = 100.f,
        .label = "Hue Correction",
        .section = "Tone Mapping",
        .tooltip = "Hue retention strength.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return false;},
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueShift",
        .binding = &shader_injection.tone_map_hue_shift,
        .default_value = 85.f,
        .label = "Hue Shift",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapPerChannelBlowout",
        .binding = &shader_injection.tone_map_blowout,
        .default_value = 75.f,
        .label = "Per Channel Blowout",
        .section = "Tone Mapping",
        .tooltip = "Per Channel Blowout strength.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapClampColorSpace",
        .binding = &shader_injection.tone_map_clamp_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Clamp Color Space",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapClampPeak",
        .binding = &shader_injection.tone_map_clamp_peak,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Clamp Peak",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeExposure",
        .binding = &shader_injection.tone_map_exposure,
        .default_value = 1.f,
        .label = "Exposure",
        .section = "Color Grading",
        .max = 2.f,
        .format = "%.2f",
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlights",
        .binding = &shader_injection.tone_map_highlights,
        .default_value = 50.f,
        .label = "Highlights",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeShadows",
        .binding = &shader_injection.tone_map_shadows,
        .default_value = 50.f,
        .label = "Shadows",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeContrast",
        .binding = &shader_injection.tone_map_contrast,
        .default_value = 50.f,
        .label = "Contrast",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeSaturation",
        .binding = &shader_injection.tone_map_saturation,
        .default_value = 50.f,
        .label = "Saturation",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlightSaturation",
        .binding = &shader_injection.tone_map_highlight_saturation,
        .default_value = 50.f,
        .label = "Highlight Saturation",
        .section = "Color Grading",
        .tooltip = "Adds or removes highlight color.",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeBlowout",
        .binding = &shader_injection.tone_map_dechroma,
        .default_value = 0.f,
        .label = "Blowout",
        .section = "Color Grading",
        .tooltip = "Controls highlight desaturation due to overexposure.",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeFlare",
        .binding = &shader_injection.tone_map_flare,
        .default_value = 0.f,
        .label = "Flare",
        .section = "Color Grading",
        .tooltip = "Flare/Glare Compensation",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeScene",
        .binding = &shader_injection.color_grade_strength,
        .default_value = 100.f,
        .label = "Scene Grading",
        .section = "Color Grading",
        .tooltip = "Scene grading as applied by the game",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type > 0; },
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "UIOpacityStatusText",
        .binding = &shader_injection.status_text_opacity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "UID Text",
        .section = "User Interface & Video",
        .tooltip = "Toggle UID text visibility",
        .labels = {"Hidden", "Visible"},
    },
    new renodx::utils::settings::Setting{
        .key = "UIOpacityLatencyText",
        .binding = &shader_injection.latency_text_opacity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Latency Text",
        .section = "User Interface & Video",
        .tooltip = "Toggle latency text visibility",
        .labels = {"Hidden", "Visible"},
    },
    new renodx::utils::settings::Setting{
        .key = "UIOpacityPingText",
        .binding = &shader_injection.ping_text_opacity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Latency Bar",
        .section = "User Interface & Video",
        .tooltip = "Toggle latency bar visibility",
        .labels = {"Hidden", "Visible"},
    },
    new renodx::utils::settings::Setting{
        .key = "UIVisibility",
        .binding = &shader_injection.ui_visibility,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "UI Visibility",
        .section = "User Interface & Video",
        .tooltip = "Toggle UI visibility for screenshots (use hotkey for quick toggle)",
        .labels = {"Hidden", "Visible"},
    },
    new renodx::utils::settings::Setting{
        .key = "UIVisibilityHotkey",
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .default_value = 0.f,
        .label = "UI Toggle Hotkey",
        .section = "User Interface & Video",
        .tooltip = "Click in the field and press any key to set the hotkey, or press Backspace/Delete to clear",
        .on_draw = []() {
          static bool key_was_pressed = false;
          bool changed = false;

          // Get current key name for display
          std::string key_name = ui_toggle_hotkey != 0 ? GetKeyName(ui_toggle_hotkey) : "";
          char buf[64] = {0};
          if (!key_name.empty()) {
            size_t copy_len = (key_name.size() < sizeof(buf) - 1) ? key_name.size() : sizeof(buf) - 1;
            memcpy(buf, key_name.c_str(), copy_len);
          }

          // Create the input text widget
          ImGui::InputTextWithHint(
              "UI Toggle Hotkey",
              "Click to set keyboard shortcut",
              buf,
              sizeof(buf),
              ImGuiInputTextFlags_ReadOnly | ImGuiInputTextFlags_NoUndoRedo | ImGuiInputTextFlags_NoHorizontalScroll
          );

          // Check if widget is active and capture key presses
          if (ImGui::IsItemActive()) {
            hotkey_input_active = true;
            int key_pressed = GetLastKeyPressedImGui();

            if (key_pressed != 0 && !key_was_pressed) {
              if (key_pressed == VK_BACK || key_pressed == VK_DELETE) {
                ui_toggle_hotkey = 0;
                changed = true;
              } else if (key_pressed != VK_ESCAPE) {
                ui_toggle_hotkey = key_pressed;
                changed = true;
              }

              if (changed) {
                reshade::set_config_value(nullptr, renodx::utils::settings::global_name.c_str(), "UIVisibilityHotkey", ui_toggle_hotkey);
              }
              key_was_pressed = true;
            } else if (key_pressed == 0) {
              key_was_pressed = false;
            }
          } else {
            hotkey_input_active = false;
            key_was_pressed = false;
          }

          if (ImGui::IsItemHovered(ImGuiHoveredFlags_ForTooltip)) {
            ImGui::SetTooltip("Click and press any key to set hotkey.\nPress Backspace or Delete to clear.");
          }

          return changed;
        },
        .is_global = true,
    },
    new renodx::utils::settings::Setting{
        .key = "VideoAutoHDR",
        .binding = &shader_injection.tone_map_hdr_video,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 1.f,
        .label = "Video AutoHDR",
        .section = "User Interface & Video",
        .tooltip = "Upgrades SDR videos to HDR.",
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapVideoNits",
        .binding = &shader_injection.tone_map_video_nits,
        .default_value = 500.f,
        .can_reset = true,
        .label = "Video Brightness",
        .section = "User Interface & Video",
        .tooltip = "Sets the peak brightness for video content in nits",
        .min = 48.f,
        .max = 1000.f,
    },
    new renodx::utils::settings::Setting{
        .key = "fxRCASSharpening",
        .binding = &shader_injection.fx_rcas_sharpening,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "FSR RCAS Sharpening",
        .section = "Effects",
        .tooltip = "Enable Robust Contrast Adaptive Sharpening."
                   "\nProvides better image clarity.",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "fxRCASAmount",
        .binding = &shader_injection.fx_rcas_amount,
        .default_value = 50.f,
        .label = "RCAS Sharpening Amount",
        .section = "Effects",
        .tooltip = "Adjusts RCAS sharpening strength.",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.fx_rcas_sharpening >= 1.f; },
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting({
            .key = "FxGrainStrength",
            .binding = &shader_injection.custom_grain_strength,
            .default_value = 0.f,
            .label = "Perceptual Grain Strength",
            .section = "Effects",
            .parse = [](float value) { return value * 0.01f; },
        }),
    new renodx::utils::settings::Setting{
        .key = "VignetteStrength",
        .binding = &shader_injection.vignette_strength,
        .default_value = 50.f,
        .label = "Vignette Strength",
        .section = "Effects",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ChromaticAberrationStrength",
        .binding = &shader_injection.chromatic_aberration_strength,
        .default_value = 50.f,
        .label = "Chromatic Aberration",
        .section = "Effects",
        .tooltip = "Controls the intensity of chromatic aberration effect.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "BloomStrength",
        .binding = &shader_injection.bloom_strength,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 50.f,
        .can_reset = true,
        .label = "Bloom Strength",
        .section = "Effects",
        .tooltip = "Adjusts the intensity of bloom effects.",
        .min = 0.f,
        .max = 100.f,
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .label = std::string("Reshade shader bypass, applies on_drawn after game's deferred lighting pass. Only properly works with DLAA/TAAU 100 scaling atm"),
        .on_draw = []() {
          ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(1.0f, 0.0f, 0.0f, 1.0f));
          ImGui::TextWrapped("Reshade shader bypass, applies on_drawn after game's deferred lighting pass. Only properly works with DLAA/TAAU 100 scaling atm");
          ImGui::PopStyleColor();
          return false;
        },
    },
        new renodx::utils::settings::Setting{
        .key = "RenderReshadeBeforeUI",
        .binding = &current_render_reshade_before_ui,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "ReShade Before UI",
        .section = "Effects",
        .tooltip = "Executes ReShade effects before UI is drawn.",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "DisableGameAO",
        .binding = &shader_injection.disable_game_ao,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Disable Game GTAO",
        .section = "Effects",
        .tooltip = "Disables the game's built-in GTAO (Ground Truth Ambient Occlusion).\nUseful when using ReShade-based AO instead.",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "VFXBoost",
        .binding = &shader_injection.perchannelblowout,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "VFX Boost (Experimental)",
        .section = "Rendering Improvements",
        .tooltip = "Boosts supported VFX highlights.",
        .labels = {"Original", "Enhanced"},
        .on_change_value = [](float, float current) {
          SetVfxBoostTrackingEnabled(IsVisible(current));
        },
    },
    new renodx::utils::settings::Setting{
        .key = "HDRSun",
        .binding = &shader_injection.sun_intensity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "HDR Sun",
        .section = "Rendering Improvements",
        .tooltip = "Reworks the sun to be more HDR-like",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "Godrays",
        .binding = &shader_injection.godrays_intensity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Godrays",
        .section = "Rendering Improvements",
        .tooltip = "Controls godray intensity",
        .labels = {"Off", "Vanilla", "2x", "3x"},
    },
    new renodx::utils::settings::Setting{
        .key = "SHADOW_HARDENING",
        .binding = &shader_injection.shadow_hardening,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Improved Shadows",
        .section = "Rendering Improvements",
        .tooltip = "Toggle improved shadow occlusion for objects and foliage",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FAKE_CLOUD_SHADOWS",
        .binding = &shader_injection.fake_cloud_shadows,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Vanilla Fake Cloud Shadows",
        .section = "Rendering Improvements",
        .tooltip = "Toggles fake cloud shadows",
        .labels = {"Off", "On / Vanilla"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FogModification",
        .binding = &shader_injection.fog_modification,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hue-Preserving Fog",
        .section = "Rendering Improvements",
        .tooltip = "Toggles alternative hue-preserving fog",
        .labels = {"Original", "Alt"},
    },
    new renodx::utils::settings::Setting{
        .key = "CubemapAmbientLink",
        .binding = &shader_injection.cubemap_ambient_link,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Cubemap Ambient Link",
        .section = "Rendering Improvements",
        .tooltip = "Modulates cubemap reflections by ambient luminance",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "GlassTransparency",
        .binding = &shader_injection.glass_transparency,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Glass Transparency",
        .section = "Rendering Improvements",
        .tooltip = "Improves glass rendering to look more transparent and less cloudy/glowing",
        .labels = {"Vanilla", "Improved"},
    },
    new renodx::utils::settings::Setting{
        .key = "ImprovedSSR",
        .binding = &shader_injection.improved_ssr,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "SSR Quality",
        .section = "Rendering Improvements",
        .tooltip = "Controls the game's SSR denoiser behavior.\n"
                   "Vanilla: Original denoiser.\n"
                   "Improved: Sharper reflections on smooth surfaces (metals, glass)\n"
                   "  while retaining proper diffusion on rough surfaces (wood, stone).\n"
                   "  Temporal smoothing is preserved to minimize firefly artifacts.",
        .labels = {"Vanilla", "Improved"},
    },
    new renodx::utils::settings::Setting{
        .key = "ImprovedGTAO",
        .binding = &shader_injection.improved_gtao,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "GTAO + Visibility Bitmask + Deferred AO Modulation",
        .section = "Rendering Improvements",
        .tooltip = "Improves vanilla GTAO with visibility bitmask and AO modulation on direct lights (spotlights, point lights).",
        .labels = {"Original", "Improved"},
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainCustomColorSpace",
        .binding = &shader_injection.swap_chain_custom_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Custom Color Space",
        .section = "Display Output",
        .tooltip = "Selects output color space"
                   "\nUS Modern for BT.709 D65."
                   "\nJPN Modern for BT.709 D93."
                   "\nUS CRT for BT.601 (NTSC-U)."
                   "\nJPN CRT for BT.601 ARIB-TR-B9 D93 (NTSC-J)."
                   "\nDefault: US CRT",
        .labels = {
            "US Modern",
            "JPN Modern",
            "US CRT",
            "JPN CRT",
        },
        .is_visible = []() { return settings[0]->GetValue() >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainEncoding",
        .binding = &shader_injection.swap_chain_encoding,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 4.f,
        .label = "Encoding",
        .section = "Display Output",
        .tooltip = "Selects SDR, HDR10/PQ, or scRGB output. Vulkan surface format changes apply when the game recreates its swapchain (normally on restart).",
        .labels = {"None", "SRGB", "2.2", "2.4", "HDR10", "scRGB"},
        .on_change_value = [](float previous, float current) {
          ApplySwapChainEncodingTarget(current);
        },
        .is_global = true,
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "IntermediateDecoding",
        .binding = &shader_injection.intermediate_encoding,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Intermediate Encoding",
        .section = "Display Output",
        .labels = {"Auto", "None", "SRGB", "2.2", "2.4"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) {
            if (value == 0) return shader_injection.gamma_correction + 1.f;
            return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainDecoding",
        .binding = &shader_injection.swap_chain_decoding,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Swapchain Decoding",
        .section = "Display Output",
        .labels = {"Auto", "None", "SRGB", "2.2", "2.4"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) {
            if (value == 0) return shader_injection.intermediate_encoding;
            return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainClampColorSpace",
        .binding = &shader_injection.swap_chain_clamp_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .label = "Clamp Color Space",
        .section = "Display Output",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "TechTestLook",
        .binding = &shader_injection.tech_test_look,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Tech Test Look",
        .section = "Alternative Grading",
        .tooltip = "Activates visual adjustments to match the 2024 tech test aesthetic",
        .labels = {"Off", "On"},
        .on_change_value = [](float previous, float current) {
          if (current >= 1.f) pending_tech_test_preset = 1;
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Discord",
        .section = "Links",
        .group = "button-line-1",
        .tint = 0x5865F2,
        .on_change = []() {
          renodx::utils::platform::LaunchURL("https://discord.gg/", "5WZXDpmbpP");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "More Mods",
        .section = "Links",
        .group = "button-line-1",
        .tint = 0x2B3137,
        .on_change = []() {
          renodx::utils::platform::LaunchURL("https://github.com/", "clshortfuse/renodx/wiki/Mods");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Addon developed by Spiwar & Forge.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Maintained by Rat for Arknights: Endfield 1.4.4",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = std::string("- Special thanks to both Musa & Miru for helping with the addon"),
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = std::string("- Many thanks to ShortFuse for RenoDX"),
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- This build was compiled on " + build_date + " at " + build_time + ".",
        .section = "About",
    },
};

void OnPresetOff() {
     renodx::utils::settings::UpdateSetting("ToneMapType", 0.f);
     renodx::utils::settings::UpdateSetting("ToneMapPeakNits", 203.f);
     renodx::utils::settings::UpdateSetting("ToneMapGameNits", 203.f);
     renodx::utils::settings::UpdateSetting("ToneMapUINits", 203.f);
     renodx::utils::settings::UpdateSetting("ToneMapGammaCorrection", 1.f);
     renodx::utils::settings::UpdateSetting("GammaCorrection", 1.f);
     renodx::utils::settings::UpdateSetting("SwapChainGammaCorrection", 1.f);
     renodx::utils::settings::UpdateSetting("HDRSun", 0.f);
     renodx::utils::settings::UpdateSetting("Godrays", 1.f);
     renodx::utils::settings::UpdateSetting("SHADOW_HARDENING", 0.f);
     renodx::utils::settings::UpdateSetting("FogModification", 0.f);
     renodx::utils::settings::UpdateSetting("CubemapAmbientLink", 0.f);
      renodx::utils::settings::UpdateSetting("GlassTransparency", 0.f);
      renodx::utils::settings::UpdateSetting("VFXBoost", 0.f);
     SetVfxBoostTrackingEnabled(false);
     renodx::utils::settings::UpdateSetting("ImprovedSSR", 0.f);
     renodx::utils::settings::UpdateSetting("ImprovedGTAO", 0.f);
     renodx::utils::settings::UpdateSetting("TechTestLook", 0.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeShadows", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeContrast", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeSaturation", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeLUTScaling", 0.f);
}

// OnDraw handler to track vertex count from draw calls
bool OnDraw(
    reshade::api::command_list* cmd_list,
    uint32_t vertex_count,
    uint32_t instance_count,
    uint32_t first_vertex,
    uint32_t first_instance) {
  draw_call_vertex_count = vertex_count;
  shader_injection.latency_bar_draw_opacity = 1.f;
  return false;
}

// OnDrawIndexed event handler for heuristic-based ping/UID detection
bool OnDrawIndexed(
    reshade::api::command_list* cmd_list,
    uint32_t index_count,
    uint32_t instance_count,
    uint32_t first_index,
    int32_t vertex_offset,
    uint32_t first_instance) {
  auto* shader_state = renodx::utils::shader::GetCurrentState(cmd_list);
  const uint32_t vertex_shader_hash = shader_state != nullptr
      ? renodx::utils::shader::GetCurrentVertexShaderHash(shader_state)
      : 0u;
  const uint32_t pixel_shader_hash = shader_state != nullptr
      ? renodx::utils::shader::GetCurrentPixelShaderHash(shader_state)
      : 0u;

  if (!IsVisible(shader_injection.ui_visibility)
      && std::ranges::find(kVulkanDirectHidePixelShaderHashes, pixel_shader_hash)
          != kVulkanDirectHidePixelShaderHashes.end()) {
    draw_call_vertex_count = 0;
    return true;
  }

  // Constants for ping/latency bar detection
  constexpr uint32_t PING_INDEX_COUNT = 18;
  constexpr uint32_t PING_FIRST_INDEX = 0;
  constexpr int32_t PING_VERTEX_OFFSET = 0;

  // Detect ping/latency bar
  const bool ping_geometry_candidate = (index_count == PING_INDEX_COUNT) &&
                                       (first_index == PING_FIRST_INDEX) &&
                                       (vertex_offset == PING_VERTEX_OFFSET);
  const bool latency_bar_draw_candidate = ping_geometry_candidate
                                          && vertex_shader_hash == kVulkanPingVertexShaderHash
                                          && pixel_shader_hash == kVulkanPingPixelShaderHash;
  is_ping_input_candidate = latency_bar_draw_candidate && (draw_call_vertex_count == 0);
  shader_injection.latency_bar_draw_opacity = latency_bar_draw_candidate
      ? shader_injection.ping_text_opacity
      : 1.f;

  if (latency_bar_draw_candidate) {
    if (is_ping_input_candidate) {
      is_ping_drawn = true;
    }
    draw_call_vertex_count = 0;
    return !IsVisible(shader_injection.ping_text_opacity);
  }

  // Constants for UID text detection
  constexpr uint32_t UID_FIRST_INDEX = 18;
  constexpr uint32_t UID_MIN_INDEX_COUNT = 100;
  constexpr int32_t UID_VERTEX_OFFSET = 12;

  // Detect UID text after the ping or post-combat shader
  const bool uid_geometry_candidate = (first_index == UID_FIRST_INDEX) &&
                                      (index_count > UID_MIN_INDEX_COUNT) &&
                                      (vertex_offset == UID_VERTEX_OFFSET);
  is_uid_input_candidate = uid_geometry_candidate
                           && (is_ping_drawn || pixel_shader_hash == kVulkanUidPixelShaderHash);

  // Reset vertex count after processing
  draw_call_vertex_count = 0;

  if (!is_uid_input_candidate) {
    return false;
  }
  if (!IsVisible(shader_injection.ui_visibility)) return true;

  const bool show_uid_text = IsVisible(shader_injection.status_text_opacity);
  const bool show_latency_text = IsVisible(shader_injection.latency_text_opacity);
  if (show_uid_text && show_latency_text) return false;
  if (!show_uid_text && !show_latency_text) return true;

  DrawTextRegion(
      cmd_list,
      index_count,
      instance_count,
      first_index,
      vertex_offset,
      first_instance,
      show_latency_text);
  return true;
}

void OnPresent(reshade::api::command_queue* queue,
               reshade::api::swapchain* swapchain,
               const reshade::api::rect* source_rect,
               const reshade::api::rect* dest_rect,
               uint32_t dirty_rect_count,
               const reshade::api::rect* dirty_rects) {
  ProcessPendingVfxTextureReadback(queue);

  auto* device = queue->get_device();
  auto bb = device->get_resource_desc(swapchain->get_current_back_buffer());

  // Vulkan output format changes become native only when the swapchain is
  // recreated. Keep the proxy encoding on the format that is actually active
  // so a live HDR10/scRGB/SDR selection cannot encode into the old surface.
  if (bb.type != reshade::api::resource_type::unknown) {
    const auto format = reshade::api::format_to_default_typed(
        bb.texture.format, 0);
    const auto is_format_compatible = [format](float encoding_value) {
      if (encoding_value == 4.f) {
        return format == reshade::api::format::r10g10b10a2_unorm;
      }
      if (encoding_value == 5.f) {
        return format == reshade::api::format::r16g16b16a16_float;
      }
      return format == reshade::api::format::r8g8b8a8_unorm
          || format == reshade::api::format::r8g8b8a8_unorm_srgb
          || format == reshade::api::format::b8g8r8a8_unorm
          || format == reshade::api::format::b8g8r8a8_unorm_srgb;
    };

    if (is_format_compatible(requested_swap_chain_encoding)) {
      SetActiveSwapChainEncoding(requested_swap_chain_encoding);
      if (swap_chain_target_sync_pending) {
        renodx::utils::swapchain::ChangeColorSpace(
            swapchain, GetSwapChainColorSpace(active_swap_chain_encoding));
        swap_chain_target_sync_pending = false;
      }
    } else {
      if (!swap_chain_output_initialized
          || !is_format_compatible(active_swap_chain_encoding)) {
        if (format == reshade::api::format::r10g10b10a2_unorm) {
          SetActiveSwapChainEncoding(4.f);
        } else if (format == reshade::api::format::r16g16b16a16_float) {
          SetActiveSwapChainEncoding(5.f);
        } else {
          SetActiveSwapChainEncoding(
              requested_swap_chain_encoding < 4.f ? requested_swap_chain_encoding : 1.f);
        }
      } else {
        SetActiveSwapChainEncoding(active_swap_chain_encoding);
      }

      if (swap_chain_target_sync_pending) {
        // On Vulkan this only synchronizes ReShade runtime metadata. The
        // create_swapchain callback applies the requested native format later.
        renodx::utils::swapchain::ChangeColorSpace(
            swapchain, GetSwapChainColorSpace(active_swap_chain_encoding));
      }
    }
    swap_chain_output_initialized = true;
  } else {
    // This callback is registered before the shared swapchain callback, so the
    // compact output payload is current before the proxy pass is submitted.
    SyncSwapChainInjection();
  }

  if (device->get_api() == reshade::api::device_api::opengl) {
    shader_injection.custom_flip_uv_y = 1.f;
  }

  // Compute UI aspect ratio from swapchain for dynamic latency bar detection
  if (bb.type != reshade::api::resource_type::unknown) {
    shader_injection.ui_aspect_ratio = static_cast<float>(bb.texture.height) / static_cast<float>(bb.texture.width);
  }

  // Reset heuristic tracking flags for ping/UID detection
  is_ping_input_candidate = false;
  is_uid_input_candidate = false;
  is_ping_drawn = false;
  draw_call_vertex_count = 0;
  shader_injection.latency_bar_draw_opacity = 1.f;

  // Detect Tech Test state changes from preset loads, game startup, or manual toggle
  float current_tech_test = shader_injection.tech_test_look;
  if (current_tech_test != prev_tech_test_look) {
    if (current_tech_test >= 1.f) pending_tech_test_preset = 1;
    prev_tech_test_look = current_tech_test;
  }

  // Apply deferred Tech Test preset (safe context, outside settings callback)
  if (pending_tech_test_preset == 1) {
    renodx::utils::settings::UpdateSetting("GammaCorrection", 2.f);
    renodx::utils::settings::UpdateSetting("SwapChainGammaCorrection", 2.f);
    renodx::utils::settings::UpdateSetting("ToneMapPerChannelBlowout", 75.f);
    renodx::utils::settings::UpdateSetting("ColorGradeExposure", 0.75f);
    renodx::utils::settings::UpdateSetting("ColorGradeHighlights", 50.f);
    renodx::utils::settings::UpdateSetting("ColorGradeShadows", 80.f);
    renodx::utils::settings::UpdateSetting("ColorGradeContrast", 55.f);
    renodx::utils::settings::UpdateSetting("ColorGradeSaturation", 35.f);
    renodx::utils::settings::UpdateSetting("ColorGradeHighlightSaturation", 100.f);
    renodx::utils::settings::UpdateSetting("ColorGradeBlowout", 30.f);
    pending_tech_test_preset = -1;
  }

  // Check UI visibility hotkey (skip if user is currently setting a new hotkey)
  if (ui_toggle_hotkey != 0 && !hotkey_input_active) {
    bool key_down = (GetAsyncKeyState(ui_toggle_hotkey) & 0x8000) != 0;
    if (key_down && !ui_toggle_key_was_pressed) {
      // Toggle UI visibility
      shader_injection.ui_visibility = (shader_injection.ui_visibility == 0.f) ? 1.f : 0.f;
      // Update the setting value to keep UI in sync
      renodx::utils::settings::UpdateSetting("UIVisibility", shader_injection.ui_visibility);
    }
    ui_toggle_key_was_pressed = key_down;
  }
}

bool initialized = false;

}  // namespace

extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX: Arknights Endfield (Vulkan)";
extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX Vulkan renderer port for Arknights: Endfield";

BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;
      reshade::register_event<reshade::addon_event::init_device>(OnInitVulkanSwapchainHook);

      if (!initialized) {
        InitializeCustomShaders();
        renodx::mods::shader::force_pipeline_cloning = true;
        renodx::mods::shader::use_pipeline_layout_cloning = false;
        renodx::mods::shader::expected_constant_buffer_space = 50;
        renodx::mods::shader::expected_constant_buffer_index = 13;
        renodx::mods::shader::allow_multiple_push_constants = true;
        renodx::mods::shader::minimum_constant_buffer_stages =
            reshade::api::shader_stage::pixel | reshade::api::shader_stage::compute;
        renodx::mods::shader::use_vulkan_descriptor_constant_buffer = true;
        renodx::mods::shader::vulkan_descriptor_constant_buffer_set = 4u;
        renodx::mods::shader::vulkan_descriptor_constant_buffer_binding = 0u;
        renodx::mods::swapchain::expected_constant_buffer_index = 13;
        renodx::mods::swapchain::expected_constant_buffer_space = 50;
        renodx::mods::swapchain::use_resource_cloning = true;
        renodx::mods::swapchain::ignored_device_apis = {
            reshade::api::device_api::d3d9,
            reshade::api::device_api::d3d10,
            reshade::api::device_api::d3d11,
            reshade::api::device_api::d3d12,
            reshade::api::device_api::opengl,
        };
        renodx::mods::swapchain::swap_chain_proxy_shaders = {
            {
                reshade::api::device_api::vulkan,
                {
                    .vertex_shader = __swap_chain_proxy_vertex_shader,
                    .pixel_shader = __swap_chain_proxy_pixel_shader,
                },
            },
        };

        {
          auto* setting = new renodx::utils::settings::Setting{
              .key = "SwapChainForceBorderless",
              .value_type = renodx::utils::settings::SettingValueType::INTEGER,
              .default_value = 1.f,
              .label = "Force Borderless",
              .section = "Display Output",
              .tooltip = "Forces fullscreen to be borderless for proper HDR",
              .labels = {
                  "Disabled",
                  "Enabled",
              },
              .on_change_value = [](float previous, float current) { renodx::mods::swapchain::force_borderless = (current == 1.f); },
              .is_global = true,
              .is_visible = []() { return false; },
          };
          renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
          renodx::mods::swapchain::force_borderless = (setting->GetValue() == 1.f);
          settings.push_back(setting);
        }

        {
          auto* setting = new renodx::utils::settings::Setting{
              .key = "SwapChainPreventFullscreen",
              .value_type = renodx::utils::settings::SettingValueType::INTEGER,
              .default_value = 1.f,
              .label = "Prevent Fullscreen",
              .section = "Display Output",
              .tooltip = "Prevent exclusive fullscreen for proper HDR",
              .labels = {
                  "Disabled",
                  "Enabled",
              },
              .on_change_value = [](float previous, float current) { renodx::mods::swapchain::prevent_full_screen = (current == 1.f); },
              .is_global = true,
              .is_visible = []() { return false; },
          };
          renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
          renodx::mods::swapchain::prevent_full_screen = (setting->GetValue() == 1.f);
          settings.push_back(setting);
        }

        // Initialize SwapChainEncoding-related settings
        {
          float encoding_value = 4.f;  // default
          reshade::get_config_value(nullptr, renodx::utils::settings::global_name.c_str(), "SwapChainEncoding", encoding_value);
          ApplySwapChainEncodingTarget(encoding_value);
        }

        renodx::mods::swapchain::use_device_proxy = false;
        renodx::mods::swapchain::set_color_space = true;
        renodx::mods::swapchain::device_proxy_wait_idle_source = false;
        renodx::mods::swapchain::device_proxy_wait_idle_destination = false;
        shader_injection.custom_flip_uv_y = 0.f;
        reshade::register_event<reshade::addon_event::present>(OnPresent);
        reshade::register_event<reshade::addon_event::reshade_begin_effects>(OnReshadeBeginEffects);
        reshade::register_event<reshade::addon_event::reshade_finish_effects>(OnReshadeFinishEffects);

        // Load UI visibility hotkey from saved config
        {
          int saved_hotkey = 0;
          if (reshade::get_config_value(nullptr, renodx::utils::settings::global_name.c_str(), "UIVisibilityHotkey", saved_hotkey)) {
            ui_toggle_hotkey = saved_hotkey;
          }
        }

        renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
            .old_format = reshade::api::format::r8g8b8a8_unorm,
            .new_format = reshade::api::format::r16g16b16a16_float,
            .ignore_size = false,
            .view_upgrades = renodx::utils::resource::VIEW_UPGRADES_RGBA16F,
            .usage_include = reshade::api::resource_usage::render_target,
            .name = "Endfield full-resolution linear intermediate direct Vulkan upgrade",
        });

        // Current Vulkan equivalents of the eight deferred grass/foliage
        // passes used by the DX11 build to run ReShade before UI composition.
        constexpr std::array<uint32_t, 8> reshade_before_ui_crcs = {
            0x1D89E872u,
            0x93F0C75Cu,
            0x9435BB16u,
            0x8CA65275u,
            0xECD5EC5Au,
            0x8349AD92u,
            0x1CD715AFu,
            0x2DF0BFFAu,
        };
        for (const uint32_t crc : reshade_before_ui_crcs) {
          auto it = custom_shaders.find(crc);
          if (it == custom_shaders.end()) {
            renodx::mods::shader::CustomShader cs{};
            cs.crc32 = crc;
            cs.on_drawn = ExecuteReshadeEffects;
            custom_shaders.emplace(crc, std::move(cs));
          } else {
            it->second.on_drawn = ExecuteReshadeEffects;
          }
        }

        // Improved GTAO shaders
        const uint32_t improved_gtao_crcs[] = {
            0x902C57D5u,  // GTAO main
            0xAC758574u,  // GTAO temporal
        };
        for (uint32_t crc : improved_gtao_crcs) {
          auto it = custom_shaders.find(crc);
          if (it != custom_shaders.end()) {
            it->second.on_replace = ReplaceImprovedGTAOShader;
          }
        }

        {
          auto it = custom_shaders.find(0x85BD40EFu);  // GTAO spatial average
          if (it != custom_shaders.end()) {
            it->second.on_replace = ReplaceDisableGTAOShader;
          }
        }

        for (const uint32_t crc : std::array{0xD1EAE8DEu, 0x973FCE7Bu}) {
          auto& shader = custom_shaders.at(crc);
          shader.on_replace = UseCloudShadowOffVariant;
          shader.on_inject = SkipShaderInjection;
        }

        for (const uint32_t crc : kVulkanUiVisibilityPixelShaderHashes) {
          RegisterUiVisibilityBypassShader(crc);
        }

        for (const auto& match : vfx_boost_matches) {
          auto it = custom_shaders.find(match.shader_crc);
          if (it != custom_shaders.end()) {
            it->second.on_replace = [match](reshade::api::command_list* cmd_list) {
              return ReplaceVFXBoostShader(cmd_list, match);
            };
          }
        }
        reshade::register_event<reshade::addon_event::reset_command_list>(OnResetVfxCommandList);
        reshade::register_event<reshade::addon_event::destroy_device>(OnDestroyVfxDevice);
        reshade::register_event<reshade::addon_event::destroy_resource_view>(OnDestroyVfxResourceView);
        reshade::register_event<reshade::addon_event::update_descriptor_tables>(OnUpdateVfxDescriptorTables);
        reshade::register_event<reshade::addon_event::copy_descriptor_tables>(OnCopyVfxDescriptorTables);
        reshade::register_event<reshade::addon_event::bind_descriptor_tables>(OnBindVfxDescriptorTables);
        reshade::register_event<reshade::addon_event::push_descriptors>(OnPushVfxDescriptors);
        for (const uint32_t crc : kVulkanDirectHidePixelShaderHashes) {
          RegisterUiVisibilityBypassShader(crc);
        }
        RegisterUidBypassShader(kVulkanUidPixelShaderHash);

        {
          auto it = custom_shaders.find(kVulkanPingPixelShaderHash);
          if (it == custom_shaders.end()) {
            renodx::mods::shader::CustomShader cs{};
            cs.crc32 = kVulkanPingPixelShaderHash;
            cs.on_draw = OnPingDraw;
            custom_shaders.emplace(kVulkanPingPixelShaderHash, std::move(cs));
          } else {
            it->second.on_draw = OnPingDraw;
          }
          reshade::register_event<reshade::addon_event::draw>(OnDraw);
          reshade::register_event<reshade::addon_event::draw_indexed>(OnDrawIndexed);
        }

        initialized = true;
      }

      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_event<reshade::addon_event::init_device>(OnInitVulkanSwapchainHook);
      UninstallVulkanSwapchainHook();
      reshade::unregister_event<reshade::addon_event::draw>(OnDraw);
      reshade::unregister_event<reshade::addon_event::draw_indexed>(OnDrawIndexed);
      reshade::unregister_event<reshade::addon_event::reset_command_list>(OnResetVfxCommandList);
      reshade::unregister_event<reshade::addon_event::destroy_device>(OnDestroyVfxDevice);
      reshade::unregister_event<reshade::addon_event::destroy_resource_view>(OnDestroyVfxResourceView);
      reshade::unregister_event<reshade::addon_event::update_descriptor_tables>(OnUpdateVfxDescriptorTables);
      reshade::unregister_event<reshade::addon_event::copy_descriptor_tables>(OnCopyVfxDescriptorTables);
      reshade::unregister_event<reshade::addon_event::bind_descriptor_tables>(OnBindVfxDescriptorTables);
      reshade::unregister_event<reshade::addon_event::push_descriptors>(OnPushVfxDescriptors);
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::reshade_begin_effects>(OnReshadeBeginEffects);
      reshade::unregister_event<reshade::addon_event::reshade_finish_effects>(OnReshadeFinishEffects);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  if (fdw_reason == DLL_PROCESS_ATTACH) {
    SetVfxBoostTrackingEnabled(IsVisible(shader_injection.perchannelblowout));
  }
  SyncSwapChainInjection();
  renodx::mods::swapchain::Use(fdw_reason, &swap_chain_injection);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
  renodx::utils::state::Use(fdw_reason);
  renodx::utils::random::binds.push_back(&shader_injection.custom_random);
  renodx::utils::random::Use(fdw_reason);

  if (fdw_reason == DLL_PROCESS_DETACH) {
    reshade::unregister_addon(h_module);
  }

  return TRUE;
}
