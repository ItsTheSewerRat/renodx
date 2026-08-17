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
#include <sstream>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include <Windows.h>

#include <deps/imgui/imgui.h>
#include <include/reshade.hpp>

static_assert(RESHADE_API_VERSION >= 20, "Endfield Vulkan requires ReShade API 20 or newer");

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
#include "./streamline_bridge.hpp"

namespace {

std::atomic_bool vfx_boost_tracking_enabled = false;
std::atomic_bool vfx_discovery_cache_active = false;
std::atomic_bool vfx_readback_work_pending = false;
std::once_flag vfx_readback_failure_log_once;

constexpr size_t kVfxTextureBindingCount = 3u;
using VfxTextureViews = std::array<uint64_t, kVfxTextureBindingCount>;

std::shared_mutex vulkan_descriptor_mutex;
std::unordered_map<uint64_t, VfxTextureViews> vulkan_descriptor_images;
std::unordered_map<uint64_t, uint64_t> vulkan_graphics_descriptor_set_1;
std::unordered_map<uint64_t, VfxTextureViews> vulkan_graphics_push_images_set_1;

size_t GetTrackedVfxTextureBindingIndex(uint32_t binding) {
  switch (binding) {
    case 2u: return 0u;
    case 4u: return 1u;
    case 8u: return 2u;
    default: return kVfxTextureBindingCount;
  }
}

bool IsTrackedVfxTextureBinding(uint32_t binding) {
  return GetTrackedVfxTextureBindingIndex(binding) != kVfxTextureBindingCount;
}

void UpdateTrackedVfxTextureView(
    std::unordered_map<uint64_t, VfxTextureViews>* texture_views,
    uint64_t owner,
    size_t binding_index,
    uint64_t image_view) {
  if (image_view != 0u) {
    (*texture_views)[owner][binding_index] = image_view;
    return;
  }

  const auto owner_views = texture_views->find(owner);
  if (owner_views == texture_views->end()) return;
  owner_views->second[binding_index] = 0u;
  if (std::ranges::all_of(
          owner_views->second,
          [](uint64_t view) { return view == 0u; })) {
    texture_views->erase(owner_views);
  }
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

uint64_t GetCommandListKey(const reshade::api::command_list* cmd_list) {
  return reinterpret_cast<uintptr_t>(cmd_list);
}

void OnBindVfxDescriptorTables(
    reshade::api::command_list* cmd_list,
    reshade::api::shader_stage stages,
    reshade::api::pipeline_layout,
    uint32_t first,
    uint32_t count,
    const reshade::api::descriptor_table* tables,
    uint32_t dynamic_offset_count,
    const uint32_t* dynamic_offsets) {
  (void)dynamic_offset_count;
  (void)dynamic_offsets;
  if (stages != reshade::api::shader_stage::all_graphics
      || first > 1u
      || first + count <= 1u) {
    return;
  }

  const uint64_t command_buffer = GetCommandListKey(cmd_list);
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

  const uint64_t command_buffer = GetCommandListKey(cmd_list);
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_graphics_descriptor_set_1.erase(command_buffer);
  auto& images = vulkan_graphics_push_images_set_1[command_buffer];
  const uint64_t image_view = update.type
          == reshade::api::descriptor_type::texture_shader_resource_view
      ? static_cast<const reshade::api::resource_view*>(update.descriptors)[0].handle
      : static_cast<const reshade::api::sampler_with_resource_view*>(
            update.descriptors)[0]
            .view.handle;
  images[GetTrackedVfxTextureBindingIndex(update.binding)] = image_view;
  if (image_view == 0u
      && std::ranges::all_of(images, [](uint64_t view) { return view == 0u; })) {
    vulkan_graphics_push_images_set_1.erase(command_buffer);
  }
}

// Cache bindings while disabled because Vulkan cannot query them later.
bool OnUpdateVfxDescriptorTables(
    reshade::api::device*,
    uint32_t count,
    const reshade::api::descriptor_table_update* updates) {
  std::unique_lock lock(vulkan_descriptor_mutex, std::defer_lock);
  for (uint32_t i = 0u; i < count; ++i) {
    const auto& update = updates[i];
    const size_t binding_index =
        GetTrackedVfxTextureBindingIndex(update.binding);
    if (update.table.handle == 0u
        || update.descriptors == nullptr
        || binding_index == kVfxTextureBindingCount
        || update.array_offset != 0u
        || update.count == 0u
        || (update.type != reshade::api::descriptor_type::texture_shader_resource_view
            && update.type != reshade::api::descriptor_type::sampler_with_resource_view)) {
      continue;
    }

    if (!lock.owns_lock()) lock.lock();
    const uint64_t image_view = update.type
            == reshade::api::descriptor_type::texture_shader_resource_view
        ? static_cast<const reshade::api::resource_view*>(update.descriptors)[0].handle
        : static_cast<const reshade::api::sampler_with_resource_view*>(
              update.descriptors)[0]
              .view.handle;
    UpdateTrackedVfxTextureView(
        &vulkan_descriptor_images,
        update.table.handle,
        binding_index,
        image_view);
  }
  return false;
}

bool OnCopyVfxDescriptorTables(
    reshade::api::device*,
    uint32_t count,
    const reshade::api::descriptor_table_copy* copies) {
  std::unique_lock lock(vulkan_descriptor_mutex, std::defer_lock);
  for (uint32_t i = 0u; i < count; ++i) {
    const auto& copy = copies[i];
    const size_t dest_binding_index =
        GetTrackedVfxTextureBindingIndex(copy.dest_binding);
    if (dest_binding_index == kVfxTextureBindingCount
        || copy.dest_array_offset != 0u
        || copy.count == 0u
        || copy.source_table.handle == 0u
        || copy.dest_table.handle == 0u) {
      continue;
    }

    if (!lock.owns_lock()) lock.lock();
    uint64_t copied_view = 0u;
    const size_t source_binding_index =
        GetTrackedVfxTextureBindingIndex(copy.source_binding);
    const auto source_set = vulkan_descriptor_images.find(copy.source_table.handle);
    if (source_set != vulkan_descriptor_images.end()
        && source_binding_index != kVfxTextureBindingCount
        && copy.source_array_offset == 0u) {
      copied_view = source_set->second[source_binding_index];
    }

    UpdateTrackedVfxTextureView(
        &vulkan_descriptor_images,
        copy.dest_table.handle,
        dest_binding_index,
        copied_view);
  }
  return false;
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

// Keep the fullscreen output pass on a compact push-constant payload while
// game shader injection uses RenoDX's official Vulkan push-constant path.
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

  // Official RenoDX/ReShade Vulkan support applies the requested surface
  // format and color space during swapchain creation and initialization.
  renodx::mods::swapchain::use_resize_buffer = false;
  renodx::utils::device_proxy::SetTargetFormat(renodx::mods::swapchain::target_format);
  renodx::utils::device_proxy::SetTargetColorSpace(renodx::mods::swapchain::target_color_space);
  SetActiveSwapChainEncoding(
      swap_chain_output_initialized ? active_swap_chain_encoding : encoding_value);
  swap_chain_target_sync_pending = true;
}

enum class ResolutionUniformSource : uint8_t {
  WIDTH,
  HEIGHT,
  RECIPROCAL_WIDTH,
  RECIPROCAL_HEIGHT,
  PIXEL_SIZE,
  SCREEN_SIZE,
};

struct ResolutionUniformBinding {
  reshade::api::effect_uniform_variable variable = {0u};
  ResolutionUniformSource source = ResolutionUniformSource::WIDTH;
};

struct ResolutionUniformCache {
  std::vector<ResolutionUniformBinding> bindings;
  uint32_t width = 0u;
  uint32_t height = 0u;
  bool initialized = false;
};

std::mutex resolution_uniform_cache_mutex;
std::unordered_map<reshade::api::effect_runtime*, ResolutionUniformCache>
    resolution_uniform_caches;

void InvalidateReshadeResolutionUniformCache(
    reshade::api::effect_runtime* runtime) {
  const std::lock_guard lock(resolution_uniform_cache_mutex);
  resolution_uniform_caches.erase(runtime);
}

void UpdateReshadeResolutionUniforms(
    reshade::api::effect_runtime* runtime,
    uint32_t width,
    uint32_t height) {
  if (width == 0u || height == 0u) return;

  const std::lock_guard lock(resolution_uniform_cache_mutex);
  auto& cache = resolution_uniform_caches[runtime];
  if (!cache.initialized) {
    runtime->enumerate_uniform_variables(
        nullptr,
        [&cache](
            reshade::api::effect_runtime* rt,
            reshade::api::effect_uniform_variable variable) {
          char source[64] = {};
          if (!rt->get_annotation_string_from_uniform_variable(
                  variable, "source", source)) {
            return;
          }

          ResolutionUniformSource uniform_source;
          if (std::strcmp(source, "bufwidth") == 0) {
            uniform_source = ResolutionUniformSource::WIDTH;
          } else if (std::strcmp(source, "bufheight") == 0) {
            uniform_source = ResolutionUniformSource::HEIGHT;
          } else if (std::strcmp(source, "rcpwidth") == 0
                     || std::strcmp(source, "bufwidth_rcp") == 0
                     || std::strcmp(source, "buffer_rcp_width") == 0) {
            uniform_source = ResolutionUniformSource::RECIPROCAL_WIDTH;
          } else if (std::strcmp(source, "rcpheight") == 0
                     || std::strcmp(source, "bufheight_rcp") == 0
                     || std::strcmp(source, "buffer_rcp_height") == 0) {
            uniform_source = ResolutionUniformSource::RECIPROCAL_HEIGHT;
          } else if (std::strcmp(source, "pixelsize") == 0) {
            uniform_source = ResolutionUniformSource::PIXEL_SIZE;
          } else if (std::strcmp(source, "screensize") == 0) {
            uniform_source = ResolutionUniformSource::SCREEN_SIZE;
          } else {
            return;
          }
          cache.bindings.push_back({
              .variable = variable,
              .source = uniform_source,
          });
        });
    cache.initialized = true;
  }

  if (cache.width == width && cache.height == height) return;
  cache.width = width;
  cache.height = height;

  const float dimensions[2] = {
      static_cast<float>(width),
      static_cast<float>(height),
  };
  const float reciprocals[2] = {
      1.f / dimensions[0],
      1.f / dimensions[1],
  };
  for (const auto& binding : cache.bindings) {
    switch (binding.source) {
      case ResolutionUniformSource::WIDTH:
        runtime->set_uniform_value_float(binding.variable, dimensions[0]);
        break;
      case ResolutionUniformSource::HEIGHT:
        runtime->set_uniform_value_float(binding.variable, dimensions[1]);
        break;
      case ResolutionUniformSource::RECIPROCAL_WIDTH:
        runtime->set_uniform_value_float(binding.variable, reciprocals[0]);
        break;
      case ResolutionUniformSource::RECIPROCAL_HEIGHT:
        runtime->set_uniform_value_float(binding.variable, reciprocals[1]);
        break;
      case ResolutionUniformSource::PIXEL_SIZE:
        runtime->set_uniform_value_float(binding.variable, reciprocals, 2u);
        break;
      case ResolutionUniformSource::SCREEN_SIZE:
        runtime->set_uniform_value_float(binding.variable, dimensions, 2u);
        break;
    }
  }
}

static bool bypass_render_active = false;

static int pending_tech_test_preset = -1;
static float prev_tech_test_look = -1.f;

void OnReshadeBeginEffects(reshade::api::effect_runtime* runtime,
                           reshade::api::command_list* cmd_list,
                           reshade::api::resource_view rtv,
                           reshade::api::resource_view rtv_srgb) {
  if (current_render_reshade_before_ui != 0.f && !bypass_render_active) {
    runtime->set_effects_state(false);
  }
}

void OnReshadeFinishEffects(reshade::api::effect_runtime* runtime,
                            reshade::api::command_list* cmd_list,
                            reshade::api::resource_view rtv,
                            reshade::api::resource_view rtv_srgb) {
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

  // Render effects at the original pre-upscale target.
  auto rtv0 = cmd_list_data->current_render_targets[0];
  if (rtv0.handle == 0) return true;
  auto* device = cmd_list->get_device();
  auto* data = renodx::utils::data::Get<renodx::utils::swapchain::DeviceData>(device);
  if (data == nullptr) return true;

  auto resource = device->get_resource_from_view(rtv0);
  auto resource_desc = device->get_resource_desc(resource);
  uint32_t rtv_width = resource_desc.texture.width;
  uint32_t rtv_height = resource_desc.texture.height;

  const std::shared_lock lock(data->mutex);
  for (auto* runtime : data->effect_runtimes) {
    UpdateReshadeResolutionUniforms(runtime, rtv_width, rtv_height);
    runtime->set_effects_state(true);
    runtime->enumerate_techniques(
        nullptr,
        [cmd_list, rtv0](
            reshade::api::effect_runtime* rt,
            reshade::api::effect_technique technique) {
          if (!rt->get_technique_state(technique)) return;
          bypass_render_active = true;
          rt->render_technique(technique, cmd_list, rtv0, rtv0);
          bypass_render_active = false;
        });
  }

  return true;
}

bool ui_toggle_key_was_pressed = false;
int ui_toggle_hotkey = 0;
bool hotkey_input_active = false;

bool is_ping_input_candidate = false;
bool is_ping_drawn = false;
bool is_uid_input_candidate = false;
bool is_latency_bar_draw_candidate = false;
uint32_t draw_call_vertex_count = 0;

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
std::unordered_map<uint64_t, uint32_t> vfx_resource_crcs;
std::unordered_map<uint64_t, uint64_t> vfx_view_resources;
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
  reshade::api::resource resource = {0u};
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
    if (vfx_readback_state.image_view == 0u) {
      vfx_readback_work_pending.store(false, std::memory_order_relaxed);
    }
  }
}

void ClearVfxCommandListDescriptors(reshade::api::command_list* cmd_list) {
  const uint64_t command_buffer = GetCommandListKey(cmd_list);
  const std::lock_guard lock(vulkan_descriptor_mutex);
  vulkan_graphics_descriptor_set_1.erase(command_buffer);
  vulkan_graphics_push_images_set_1.erase(command_buffer);
}

bool IsVfxTextureDesc(const reshade::api::resource_desc& desc) {
  return desc.type == reshade::api::resource_type::texture_2d
      && (desc.texture.format == reshade::api::format::bc7_unorm
          || desc.texture.format == reshade::api::format::bc7_unorm_srgb)
      && desc.texture.width == 256u
      && desc.texture.height == 256u
      && desc.texture.depth_or_layers == 1u;
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

void CacheVfxTextureCrc(
    reshade::api::resource_view view,
    reshade::api::resource resource,
    uint32_t texture_crc) {
  if (view.handle == 0u || resource.handle == 0u) return;

  vfx_discovery_cache_active.store(true, std::memory_order_relaxed);
  const std::lock_guard lock(vfx_texture_mutex);
  if (vfx_texture_crcs.contains(view.handle)) return;
  vfx_resource_crcs.try_emplace(resource.handle, texture_crc);
  vfx_view_resources[view.handle] = resource.handle;
  vfx_texture_crcs.emplace(view.handle, texture_crc);
  for (size_t i = 0u; i < vfx_boost_matches.size(); ++i) {
    if (texture_crc == vfx_boost_matches[i].texture_crc) {
      ++vfx_match_view_counts[i];
      break;
    }
  }
}

void RemoveCachedVfxTextureViewLocked(uint64_t image_view) {
  const auto cached_crc = vfx_texture_crcs.find(image_view);
  if (cached_crc != vfx_texture_crcs.end()) {
    for (size_t i = 0u; i < vfx_boost_matches.size(); ++i) {
      if (cached_crc->second == vfx_boost_matches[i].texture_crc) {
        if (vfx_match_view_counts[i] != 0u) --vfx_match_view_counts[i];
        break;
      }
    }
    vfx_texture_crcs.erase(cached_crc);
  }
  vfx_view_resources.erase(image_view);
}

bool TryCacheVfxTextureCrc(
    reshade::api::device* device,
    reshade::api::resource_view view) {
  const auto resource = device->get_resource_from_view(view);
  if (resource.handle == 0u) return false;
  const auto desc = device->get_resource_desc(resource);
  const auto view_desc = device->get_resource_view_desc(view);
  if (!IsVfxTextureDesc(desc)
      || view_desc.texture.first_level != 0u
      || view_desc.texture.first_layer != 0u) {
    return false;
  }

  uint32_t cached_resource_crc = 0u;
  bool has_cached_resource_crc = false;
  {
    const std::shared_lock lock(vfx_texture_mutex);
    if (vfx_texture_crcs.contains(view.handle)) return true;
    const auto cached_resource = vfx_resource_crcs.find(resource.handle);
    if (cached_resource != vfx_resource_crcs.end()) {
      cached_resource_crc = cached_resource->second;
      has_cached_resource_crc = true;
    }
  }
  if (has_cached_resource_crc) {
    CacheVfxTextureCrc(view, resource, cached_resource_crc);
    return true;
  }

  auto upload =
      renodx::utils::resource::GetInitialUploadSignature(resource);
  if (!upload.has_value()) {
    upload = renodx::utils::resource::GetLatestUploadSignature(resource);
  }
  if (!upload.has_value()
      || upload->subresource != 0u
      || upload->width != 256u
      || upload->height != 256u
      || (upload->format != reshade::api::format::bc7_unorm
          && upload->format != reshade::api::format::bc7_unorm_srgb)) {
    return false;
  }
  const uint32_t expected_row_pitch =
      reshade::api::format_row_pitch(upload->format, upload->width);
  const uint32_t expected_slice_pitch = reshade::api::format_slice_pitch(
      upload->format, expected_row_pitch, upload->height);
  if (upload->row_pitch != expected_row_pitch
      || upload->slice_pitch != expected_slice_pitch) {
    return false;
  }

  CacheVfxTextureCrc(view, resource, upload->crc32);
  return true;
}

void OnDestroyVfxResourceView(
    reshade::api::device*,
    reshade::api::resource_view view) {
  if (!vfx_discovery_cache_active.load(std::memory_order_relaxed)
      && !vfx_readback_work_pending.load(std::memory_order_relaxed)) {
    return;
  }

  {
    const std::lock_guard lock(vfx_readback_mutex);
    vfx_readback_seen.erase(view.handle);
    std::erase(vfx_pending_readbacks, view.handle);
    if (vfx_readback_state.image_view == view.handle) {
      vfx_readback_state.canceled = true;
    }
    if (vfx_pending_readbacks.empty()
        && vfx_readback_state.image_view == 0u) {
      vfx_readback_work_pending.store(false, std::memory_order_relaxed);
    }
  }

  const std::lock_guard lock(vfx_texture_mutex);
  RemoveCachedVfxTextureViewLocked(view.handle);
}

void OnDestroyVfxResource(
    reshade::api::device*,
    reshade::api::resource resource) {
  if (!vfx_discovery_cache_active.load(std::memory_order_relaxed)
      && !vfx_readback_work_pending.load(std::memory_order_relaxed)) {
    return;
  }

  {
    const std::lock_guard lock(vfx_readback_mutex);
    if (vfx_readback_state.resource.handle == resource.handle) {
      vfx_readback_state.canceled = true;
    }
  }

  const std::lock_guard lock(vfx_texture_mutex);
  std::vector<uint64_t> destroyed_views;
  for (const auto& [image_view, cached_resource] : vfx_view_resources) {
    if (cached_resource == resource.handle) {
      destroyed_views.push_back(image_view);
    }
  }
  for (const uint64_t image_view : destroyed_views) {
    RemoveCachedVfxTextureViewLocked(image_view);
  }
  vfx_resource_crcs.erase(resource.handle);
  if (vfx_texture_crcs.empty()
      && vfx_resource_crcs.empty()
      && vfx_view_resources.empty()) {
    vfx_discovery_cache_active.store(false, std::memory_order_relaxed);
  }
}

reshade::api::resource_view GetBoundVfxTextureView(
    reshade::api::command_list* cmd_list,
    uint32_t binding) {
  const size_t binding_index = GetTrackedVfxTextureBindingIndex(binding);
  if (binding_index == kVfxTextureBindingCount) return {0u};

  const uint64_t command_buffer = GetCommandListKey(cmd_list);
  const std::shared_lock lock(vulkan_descriptor_mutex);

  const auto pushed = vulkan_graphics_push_images_set_1.find(command_buffer);
  if (pushed != vulkan_graphics_push_images_set_1.end()
      && pushed->second[binding_index] != 0u) {
    return {pushed->second[binding_index]};
  }

  const auto bound_set = vulkan_graphics_descriptor_set_1.find(command_buffer);
  if (bound_set == vulkan_graphics_descriptor_set_1.end()) return {0u};
  const auto descriptors = vulkan_descriptor_images.find(bound_set->second);
  if (descriptors == vulkan_descriptor_images.end()) return {0u};
  return {descriptors->second[binding_index]};
}

bool AreAllVfxBoostTexturesResolved() {
  const std::shared_lock lock(vfx_texture_mutex);
  return std::all_of(
      vfx_match_view_counts.begin(),
      vfx_match_view_counts.end(),
      [](uint32_t count) { return count != 0u; });
}

void QueueVfxTextureReadback(
    reshade::api::device* device,
    reshade::api::resource_view view) {
  if (view.handle == 0u
      || !vfx_boost_tracking_enabled.load(std::memory_order_relaxed)) {
    return;
  }
  if (TryCacheVfxTextureCrc(device, view)
      || AreAllVfxBoostTexturesResolved()) {
    return;
  }

  const std::lock_guard lock(vfx_readback_mutex);
  constexpr size_t kMaxPendingReadbacks = 64u;
  if (vfx_pending_readbacks.size() >= kMaxPendingReadbacks) return;
  if (!vfx_readback_seen.emplace(view.handle).second) return;
  vfx_pending_readbacks.push_back(view.handle);
  vfx_readback_work_pending.store(true, std::memory_order_relaxed);
}

void ProcessPendingVfxTextureReadback(reshade::api::command_queue* queue) {
  if (!vfx_readback_work_pending.load(std::memory_order_relaxed)) return;

  auto* device = queue->get_device();
  const std::lock_guard lock(vfx_readback_mutex);
  if (vfx_readback_state.device != nullptr
      && vfx_readback_state.device != device) {
    return;
  }
  if (vfx_readback_state.failed) {
    vfx_readback_work_pending.store(false, std::memory_order_relaxed);
    return;
  }

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
          CacheVfxTextureCrc(
              {vfx_readback_state.image_view},
              vfx_readback_state.resource,
              texture_crc);
        }
      }
    }

    vfx_readback_state.image_view = 0u;
    vfx_readback_state.resource = {0u};
    vfx_readback_state.canceled = false;
  }

  if (!vfx_boost_tracking_enabled.load(std::memory_order_relaxed)) {
    vfx_readback_work_pending.store(false, std::memory_order_relaxed);
    return;
  }
  if (AreAllVfxBoostTexturesResolved()) {
    for (const uint64_t image_view : vfx_pending_readbacks) {
      vfx_readback_seen.erase(image_view);
    }
    vfx_pending_readbacks.clear();
    vfx_readback_work_pending.store(false, std::memory_order_relaxed);
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
        vfx_readback_state.failed = true;
        vfx_readback_work_pending.store(false, std::memory_order_relaxed);
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
      vfx_readback_state.failed = true;
      vfx_readback_work_pending.store(false, std::memory_order_relaxed);
      return;
    }

    auto* cmd_list = queue->get_immediate_command_list();
    if (cmd_list == nullptr) {
      vfx_readback_seen.erase(image_view);
      vfx_readback_work_pending.store(false, std::memory_order_relaxed);
      return;
    }
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
    vfx_readback_state.resource = resource;
    vfx_readback_state.desc = desc;
    vfx_readback_state.row_pitch = row_pitch;
    vfx_readback_state.slice_pitch = slice_pitch;
    vfx_readback_state.canceled = false;
    ++vfx_readback_state.fence_value;
    if (!queue->signal(
            vfx_readback_state.fence,
            vfx_readback_state.fence_value)) {
      vfx_readback_state.image_view = 0u;
      vfx_readback_state.resource = {0u};
      vfx_readback_state.failed = true;
      vfx_readback_work_pending.store(false, std::memory_order_relaxed);
      std::call_once(vfx_readback_failure_log_once, []() {
        reshade::log::message(
            reshade::log::level::error,
            "[Endfield-VK] Failed to signal the asynchronous VFX texture readback; texture discovery is disabled for this device.");
      });
    }
    return;
  }
  vfx_readback_work_pending.store(false, std::memory_order_relaxed);
}

void OnDestroyVfxDevice(reshade::api::device* device) {
  reshade::api::resource intermediate = {0u};
  reshade::api::fence fence = {0u};
  {
    const std::lock_guard lock(vfx_readback_mutex);
    if (vfx_readback_state.device == device) {
      intermediate = vfx_readback_state.intermediate;
      fence = vfx_readback_state.fence;
      vfx_readback_state = {};
    }
    vfx_readback_seen.clear();
    vfx_pending_readbacks.clear();
    vfx_readback_work_pending.store(false, std::memory_order_relaxed);
  }
  if (intermediate.handle != 0u) {
    device->destroy_resource(intermediate);
  }
  if (fence.handle != 0u) {
    device->destroy_fence(fence);
  }
  {
    const std::lock_guard lock(vfx_texture_mutex);
    vfx_texture_crcs.clear();
    vfx_resource_crcs.clear();
    vfx_view_resources.clear();
    vfx_match_view_counts.fill(0u);
    vfx_discovery_cache_active.store(false, std::memory_order_relaxed);
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
  const auto* state = renodx::utils::state::GetCurrentState(cmd_list);
  if (state == nullptr || state->scissor_rects.empty()) return false;

  const auto restore_rects = state->scissor_rects;
  const auto& render_rect = restore_rects.front();
  if (render_rect.right <= render_rect.left
      || render_rect.bottom <= render_rect.top) {
    return false;
  }

  const uint32_t height = static_cast<uint32_t>(render_rect.bottom - render_rect.top);
  constexpr float kTextSplitFromHeight = 192.f / 2160.f;
  const int32_t split_x = std::min(
      render_rect.right,
      render_rect.left
          + static_cast<int32_t>(height * kTextSplitFromHeight + 0.5f));
  const reshade::api::rect clip_rect = keep_latency_text
      ? reshade::api::rect{
            .left = render_rect.left,
            .top = render_rect.top,
            .right = split_x,
            .bottom = render_rect.bottom,
        }
      : reshade::api::rect{
            .left = split_x,
            .top = render_rect.top,
            .right = render_rect.right,
            .bottom = render_rect.bottom,
        };

  cmd_list->bind_scissor_rects(0u, 1u, &clip_rect);
  cmd_list->draw_indexed(
      index_count,
      instance_count,
      first_index,
      vertex_offset,
      first_instance);
  cmd_list->bind_scissor_rects(
      0u,
      static_cast<uint32_t>(restore_rects.size()),
      restore_rects.data());
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

bool InjectLatencyBarDrawOpacity(reshade::api::command_list* cmd_list) {
  shader_injection.latency_bar_draw_opacity =
      is_latency_bar_draw_candidate
      ? shader_injection.ping_text_opacity
      : 1.f;
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
    QueueVfxTextureReadback(cmd_list->get_device(), texture_view);
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

          std::string key_name = ui_toggle_hotkey != 0 ? GetKeyName(ui_toggle_hotkey) : "";
          char buf[64] = {0};
          if (!key_name.empty()) {
            size_t copy_len = (key_name.size() < sizeof(buf) - 1) ? key_name.size() : sizeof(buf) - 1;
            memcpy(buf, key_name.c_str(), copy_len);
          }

          ImGui::InputTextWithHint(
              "UI Toggle Hotkey",
              "Click to set keyboard shortcut",
              buf,
              sizeof(buf),
              ImGuiInputTextFlags_ReadOnly | ImGuiInputTextFlags_NoUndoRedo | ImGuiInputTextFlags_NoHorizontalScroll
          );

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
}

bool OnDraw(
    reshade::api::command_list* cmd_list,
    uint32_t vertex_count,
    uint32_t instance_count,
    uint32_t first_vertex,
    uint32_t first_instance) {
  draw_call_vertex_count = vertex_count;
  is_latency_bar_draw_candidate = false;
  shader_injection.latency_bar_draw_opacity = 1.f;
  return false;
}

bool OnDrawIndexed(
    reshade::api::command_list* cmd_list,
    uint32_t index_count,
    uint32_t instance_count,
    uint32_t first_index,
    int32_t vertex_offset,
    uint32_t first_instance) {
  is_latency_bar_draw_candidate = false;
  shader_injection.latency_bar_draw_opacity = 1.f;

  constexpr uint32_t PING_INDEX_COUNT = 18;
  constexpr uint32_t PING_FIRST_INDEX = 0;
  constexpr int32_t PING_VERTEX_OFFSET = 0;
  constexpr uint32_t UID_FIRST_INDEX = 18;
  constexpr uint32_t UID_MIN_INDEX_COUNT = 100;
  constexpr int32_t UID_VERTEX_OFFSET = 12;

  const bool ui_hidden = !IsVisible(shader_injection.ui_visibility);
  const bool ping_geometry_candidate =
      index_count == PING_INDEX_COUNT
      && first_index == PING_FIRST_INDEX
      && vertex_offset == PING_VERTEX_OFFSET;
  const bool uid_geometry_candidate =
      first_index == UID_FIRST_INDEX
      && index_count > UID_MIN_INDEX_COUNT
      && vertex_offset == UID_VERTEX_OFFSET;
  if (!ui_hidden
      && !ping_geometry_candidate
      && !uid_geometry_candidate) {
    is_ping_input_candidate = false;
    is_uid_input_candidate = false;
    draw_call_vertex_count = 0;
    return false;
  }

  auto* shader_state = renodx::utils::shader::GetCurrentState(cmd_list);
  const uint32_t vertex_shader_hash =
      shader_state != nullptr && ping_geometry_candidate
      ? renodx::utils::shader::GetCurrentVertexShaderHash(shader_state)
      : 0u;
  const uint32_t pixel_shader_hash = shader_state != nullptr
      ? renodx::utils::shader::GetCurrentPixelShaderHash(shader_state)
      : 0u;

  if (ui_hidden
      && std::ranges::find(kVulkanDirectHidePixelShaderHashes, pixel_shader_hash)
          != kVulkanDirectHidePixelShaderHashes.end()) {
    draw_call_vertex_count = 0;
    return true;
  }

  is_latency_bar_draw_candidate = ping_geometry_candidate
                                  && vertex_shader_hash == kVulkanPingVertexShaderHash
                                  && pixel_shader_hash == kVulkanPingPixelShaderHash;
  is_ping_input_candidate = is_latency_bar_draw_candidate && (draw_call_vertex_count == 0);

  if (is_latency_bar_draw_candidate) {
    if (is_ping_input_candidate) {
      is_ping_drawn = true;
    }
    draw_call_vertex_count = 0;
    return false;
  }

  is_uid_input_candidate = uid_geometry_candidate
                           && (is_ping_drawn || pixel_shader_hash == kVulkanUidPixelShaderHash);

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

  // Keep proxy encoding matched to the active native surface format.
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
    }

    if (swap_chain_target_sync_pending) {
      renodx::utils::swapchain::ChangeColorSpace(
          swapchain, GetSwapChainColorSpace(active_swap_chain_encoding));
      swap_chain_target_sync_pending = false;
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

  if (bb.type != reshade::api::resource_type::unknown) {
    shader_injection.ui_aspect_ratio = static_cast<float>(bb.texture.height) / static_cast<float>(bb.texture.width);
  }

  is_ping_input_candidate = false;
  is_uid_input_candidate = false;
  is_ping_drawn = false;
  is_latency_bar_draw_candidate = false;
  draw_call_vertex_count = 0;
  shader_injection.latency_bar_draw_opacity = 1.f;

  float current_tech_test = shader_injection.tech_test_look;
  if (current_tech_test != prev_tech_test_look) {
    if (current_tech_test >= 1.f) pending_tech_test_preset = 1;
    prev_tech_test_look = current_tech_test;
  }

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

  if (ui_toggle_hotkey != 0 && !hotkey_input_active) {
    bool key_down = (GetAsyncKeyState(ui_toggle_hotkey) & 0x8000) != 0;
    if (key_down && !ui_toggle_key_was_pressed) {
      shader_injection.ui_visibility = (shader_injection.ui_visibility == 0.f) ? 1.f : 0.f;
      renodx::utils::settings::UpdateSetting("UIVisibility", shader_injection.ui_visibility);
    }
    ui_toggle_key_was_pressed = key_down;
  }
}

bool initialized = false;

}  // namespace

extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX: Arknights Endfield (Vulkan)";
extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX Vulkan renderer port for Arknights: Endfield";

extern "C" __declspec(dllexport) uint32_t __cdecl
RenoDX_Streamline_IsHDR10EnabledV1() noexcept {
  return renodx::games::endfield::streamline::IsHDR10Enabled() ? 1u : 0u;
}

extern "C" __declspec(dllexport) uint32_t __cdecl
RenoDX_Streamline_GetVulkanOutputFormatV1() noexcept {
  return renodx::games::endfield::streamline::GetVulkanOutputFormat();
}

extern "C" __declspec(dllexport) uint32_t __cdecl
RenoDX_Streamline_ConvertVulkanTaggedResourceV1(
    uint32_t abi_version,
    uint64_t command_buffer,
    uint64_t source_image_view,
    uint64_t target_image_view,
    uint32_t width,
    uint32_t height) noexcept {
  if (abi_version != renodx::streamline_bridge::kAbiVersion) return 0u;
  try {
    return renodx::games::endfield::streamline::ConvertTaggedResource(
        command_buffer,
        source_image_view,
        target_image_view,
        width,
        height)
        ? 1u
        : 0u;
  } catch (...) {
    return 0u;
  }
}

extern "C" __declspec(dllexport) uint32_t __cdecl
RenoDX_Streamline_ManageVulkanClientImageV1(
    uint32_t abi_version,
    uint32_t operation,
    uint64_t command_buffer,
    uint64_t image,
    uint32_t width,
    uint32_t height,
    uint32_t native_format) noexcept {
  if (abi_version != renodx::streamline_bridge::kAbiVersion) return 0u;
  try {
    return renodx::games::endfield::streamline::ManageClientImage(
        operation,
        command_buffer,
        image,
        width,
        height,
        native_format)
        ? 1u
        : 0u;
  } catch (...) {
    return 0u;
  }
}

extern "C" __declspec(dllexport) uint32_t __cdecl
RenoDX_Streamline_SetVulkanDisplayReadyPQPresentV1(
    uint32_t abi_version,
    uint32_t active) noexcept {
  if (abi_version != renodx::streamline_bridge::kAbiVersion) return 0u;
  renodx::games::endfield::streamline::SetDisplayReadyPQPresent(active != 0u);
  return 1u;
}

extern "C" __declspec(dllexport) uint32_t __cdecl
RenoDX_Streamline_SetVulkanDLSSGActiveV1(
    uint32_t abi_version,
    uint32_t active) noexcept {
  if (abi_version != renodx::streamline_bridge::kAbiVersion) return 0u;
  renodx::games::endfield::streamline::SetDLSSGActive(active != 0u);
  return 1u;
}

BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  if (!IsEndfieldProcess()) return TRUE;

  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;

      if (!initialized) {
        InitializeCustomShaders();
        renodx::mods::shader::allow_multiple_push_constants = true;
        renodx::mods::shader::minimum_constant_buffer_stages =
            reshade::api::shader_stage::vertex
            | reshade::api::shader_stage::pixel
            | reshade::api::shader_stage::compute;
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
        reshade::register_event<reshade::addon_event::reshade_reloaded_effects>(
            InvalidateReshadeResolutionUniformCache);
        reshade::register_event<reshade::addon_event::destroy_effect_runtime>(
            InvalidateReshadeResolutionUniformCache);

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
        reshade::register_event<reshade::addon_event::reset_command_list>(
            ClearVfxCommandListDescriptors);
        reshade::register_event<reshade::addon_event::destroy_command_list>(
            ClearVfxCommandListDescriptors);
        reshade::register_event<reshade::addon_event::destroy_device>(OnDestroyVfxDevice);
        reshade::register_event<reshade::addon_event::destroy_resource>(OnDestroyVfxResource);
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
          auto it = custom_shaders.find(kVulkanPingVertexShaderHash);
          if (it != custom_shaders.end()) {
            it->second.on_inject = InjectLatencyBarDrawOpacity;
          }
        }

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
      reshade::unregister_event<reshade::addon_event::draw>(OnDraw);
      reshade::unregister_event<reshade::addon_event::draw_indexed>(OnDrawIndexed);
      reshade::unregister_event<reshade::addon_event::reset_command_list>(
          ClearVfxCommandListDescriptors);
      reshade::unregister_event<reshade::addon_event::destroy_command_list>(
          ClearVfxCommandListDescriptors);
      reshade::unregister_event<reshade::addon_event::destroy_device>(OnDestroyVfxDevice);
      reshade::unregister_event<reshade::addon_event::destroy_resource>(OnDestroyVfxResource);
      reshade::unregister_event<reshade::addon_event::destroy_resource_view>(OnDestroyVfxResourceView);
      reshade::unregister_event<reshade::addon_event::update_descriptor_tables>(OnUpdateVfxDescriptorTables);
      reshade::unregister_event<reshade::addon_event::copy_descriptor_tables>(OnCopyVfxDescriptorTables);
      reshade::unregister_event<reshade::addon_event::bind_descriptor_tables>(OnBindVfxDescriptorTables);
      reshade::unregister_event<reshade::addon_event::push_descriptors>(OnPushVfxDescriptors);
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::reshade_begin_effects>(OnReshadeBeginEffects);
      reshade::unregister_event<reshade::addon_event::reshade_finish_effects>(OnReshadeFinishEffects);
      reshade::unregister_event<reshade::addon_event::reshade_reloaded_effects>(
          InvalidateReshadeResolutionUniformCache);
      reshade::unregister_event<reshade::addon_event::destroy_effect_runtime>(
          InvalidateReshadeResolutionUniformCache);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  if (fdw_reason == DLL_PROCESS_ATTACH) {
    SetVfxBoostTrackingEnabled(IsVisible(shader_injection.perchannelblowout));
    renodx::games::endfield::streamline::Configure(
        __swap_chain_proxy_vertex_shader,
        __streamline_linear_to_pq_pixel_shader,
        __streamline_pq_copy_pixel_shader,
        reinterpret_cast<const float*>(&swap_chain_injection),
        sizeof(swap_chain_injection) / sizeof(float),
        &active_swap_chain_encoding);
  }
  SyncSwapChainInjection();
  renodx::mods::swapchain::Use(fdw_reason, &swap_chain_injection);
  renodx::games::endfield::streamline::UseEvents(fdw_reason);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
  renodx::utils::state::Use(fdw_reason);
  renodx::utils::random::binds.push_back(&shader_injection.custom_random);
  renodx::utils::random::Use(fdw_reason);

  if (fdw_reason == DLL_PROCESS_DETACH) {
    reshade::unregister_addon(h_module);
  }

  return TRUE;
}
