#pragma once

#include <cstddef>
#include <cstdint>
#include <array>
#include <chrono>
#include <format>
#include <memory>
#include <mutex>
#include <span>
#include <unordered_map>
#include <vector>

#include <Windows.h>
#include <include/reshade.hpp>
#include "../../mods/swapchain.hpp"
#include "../../utils/draw.hpp"
#include "../../utils/render.hpp"
#include "../../utils/resource_upgrade.hpp"
#include "../../../external/Streamline/source/core/sl.interposer/renodx_streamline_bridge.h"

namespace renodx::games::endfield::streamline {

inline constexpr uint32_t kVkFormatA2B10G10R10UnormPack32 = 64u;
inline constexpr uint32_t kRestoreQuarantineMilliseconds = 500u;
inline constexpr uint32_t kRestoreQuarantinePassThroughPresentCount = 3u;

inline std::mutex mutex;
inline std::unordered_map<uint64_t, reshade::api::command_list*> command_lists;
inline reshade::api::device* render_device = nullptr;
inline renodx::utils::render::RenderPass render_pass;
inline bool render_pass_initialized = false;
inline std::span<const uint8_t> vertex_shader;
inline std::span<const uint8_t> pixel_shader;
inline std::span<const uint8_t> pq_copy_pixel_shader;
inline const float* push_constants = nullptr;
inline size_t push_constant_count = 0u;
inline const float* output_encoding = nullptr;
inline thread_local uint32_t display_ready_pq_present_depth = 0u;
inline std::mutex present_mutex;
inline std::unordered_map<
    uint64_t,
    std::unique_ptr<renodx::utils::draw::SwapchainProxyPass>>
    present_passes;

struct PresentWindowState {
  bool background = false;
  bool restore_pending = false;
  uint64_t epoch = 0u;
  std::chrono::steady_clock::time_point foreground_since{};
  uint32_t pass_through_present_count = 0u;
};

inline std::mutex present_window_mutex;
inline std::unordered_map<HWND, PresentWindowState> present_window_states;

inline renodx::utils::resource::ResourceUpgradeInfo client_upgrade_target = {
    .old_format = reshade::api::format::r10g10b10a2_unorm,
    .new_format = reshade::api::format::r16g16b16a16_float,
    .ignore_size = true,
    .usage_set = static_cast<uint32_t>(
        reshade::api::resource_usage::shader_resource
        | reshade::api::resource_usage::render_target),
    .view_upgrades = renodx::utils::resource::VIEW_UPGRADES_RGBA16F,
    .use_resource_view_cloning_and_upgrade = true,
    .name = "Endfield Streamline client FP16 clone",
};

struct ClientImageState {
  reshade::api::device* device = nullptr;
  reshade::api::resource original = {0u};
  reshade::api::resource clone = {0u};
  uint32_t width = 0u;
  uint32_t height = 0u;
  bool clone_active = false;
  bool pass_initialized = false;
  renodx::utils::render::RenderPass pq_pass;
};

inline std::unordered_map<uint64_t, std::unique_ptr<ClientImageState>>
    client_images;
inline void Configure(
    std::span<const uint8_t> new_vertex_shader,
    std::span<const uint8_t> new_pixel_shader,
    std::span<const uint8_t> new_pq_copy_pixel_shader,
    const float* new_push_constants,
    size_t new_push_constant_count,
    const float* new_output_encoding) {
  vertex_shader = new_vertex_shader;
  pixel_shader = new_pixel_shader;
  pq_copy_pixel_shader = new_pq_copy_pixel_shader;
  push_constants = new_push_constants;
  push_constant_count = new_push_constant_count;
  output_encoding = new_output_encoding;
}

inline bool IsHDR10Enabled() {
  return output_encoding != nullptr && *output_encoding == 4.f;
}

inline void SetDisplayReadyPQPresent(bool active) {
  if (active) {
    ++display_ready_pq_present_depth;
  } else if (display_ready_pq_present_depth != 0u) {
    --display_ready_pq_present_depth;
  }
}

inline void OnInitSwapchain(
    reshade::api::swapchain* swapchain,
    bool resize) {
  (void)resize;
  if (swapchain == nullptr) return;

  const uint32_t back_buffer_count = swapchain->get_back_buffer_count();
  for (uint32_t index = 0u; index < back_buffer_count; ++index) {
    renodx::utils::resource::upgrade::GetResourceClone(
        swapchain->get_back_buffer(index));
  }
}

inline uint32_t DeactivateClientImagesForPresentBoundary();

inline void OnPresent(
    reshade::api::command_queue* queue,
    reshade::api::swapchain* swapchain,
    const reshade::api::rect* source_rect,
    const reshade::api::rect* dest_rect,
    uint32_t dirty_rect_count,
    const reshade::api::rect* dirty_rects) {
  if (queue == nullptr || swapchain == nullptr) return;

  const bool display_ready_present = display_ready_pq_present_depth != 0u;
  const auto hwnd = static_cast<HWND>(swapchain->get_hwnd());
  const bool foreground = hwnd == nullptr
      || (IsWindowVisible(hwnd) != FALSE && IsIconic(hwnd) == FALSE
          && GetForegroundWindow() == hwnd);
  bool background_started = false;
  bool foreground_restored = false;
  bool restore_pending = false;
  uint64_t boundary_epoch = 0u;
  if (hwnd != nullptr) {
    std::lock_guard lock(present_window_mutex);
    auto& state = present_window_states[hwnd];
    if (!foreground) {
      if (!state.background) {
        state.background = true;
        state.restore_pending = true;
        ++state.epoch;
        state.foreground_since = {};
        state.pass_through_present_count = 0u;
        background_started = true;
      }
    } else if (state.background) {
      state.background = false;
      state.foreground_since = std::chrono::steady_clock::now();
      state.pass_through_present_count = 0u;
      foreground_restored = true;
    }
    restore_pending = state.restore_pending;
    boundary_epoch = state.epoch;
  }

  if (background_started) {
    const uint32_t deactivated = DeactivateClientImagesForPresentBoundary();
    reshade::log::message(
        reshade::log::level::info,
        std::format(
            "[Endfield restore boundary] Background epoch {} started for window {}; invalidated {} client-image activation(s) and suspended RenoDX present work.",
            boundary_epoch,
            static_cast<void*>(hwnd),
            deactivated)
            .c_str());
  }
  if (foreground_restored) {
    reshade::log::message(
        reshade::log::level::info,
        std::format(
            "[Endfield restore boundary] Window {} returned to the foreground in epoch {}; generated present work remains quarantined for at least {} ms and {} pass-through presents.",
            static_cast<void*>(hwnd),
            boundary_epoch,
            kRestoreQuarantineMilliseconds,
            kRestoreQuarantinePassThroughPresentCount)
            .c_str());
  }

  if (!foreground || (restore_pending && display_ready_present)) return;

  if (!display_ready_present
      || queue->get_device()->get_api()
          != reshade::api::device_api::vulkan) {
    renodx::mods::swapchain::v2::OnPresent(
        queue,
        swapchain,
        source_rect,
        dest_rect,
        dirty_rect_count,
        dirty_rects);

    if (restore_pending && hwnd != nullptr
        && GetForegroundWindow() == hwnd) {
      bool completed = false;
      uint32_t completed_present_count = 0u;
      int64_t completed_elapsed_ms = 0;
      {
        std::lock_guard lock(present_window_mutex);
        const auto found = present_window_states.find(hwnd);
        if (found != present_window_states.end()
            && found->second.restore_pending
            && !found->second.background
            && found->second.epoch == boundary_epoch) {
          ++found->second.pass_through_present_count;
          const auto elapsed = std::chrono::steady_clock::now()
              - found->second.foreground_since;
          if (found->second.pass_through_present_count
                  >= kRestoreQuarantinePassThroughPresentCount
              && elapsed >= std::chrono::milliseconds(
                  kRestoreQuarantineMilliseconds)) {
            found->second.restore_pending = false;
            completed = true;
            completed_present_count =
                found->second.pass_through_present_count;
            completed_elapsed_ms =
                std::chrono::duration_cast<std::chrono::milliseconds>(elapsed)
                    .count();
          }
        }
      }
      if (completed) {
        reshade::log::message(
            reshade::log::level::info,
            std::format(
                "[Endfield restore boundary] Foreground quarantine completed for window {} in epoch {} after {} pass-through presents and {} ms; generated RenoDX present work resumed.",
                static_cast<void*>(hwnd),
                boundary_epoch,
                completed_present_count,
                completed_elapsed_ms)
                .c_str());
      }
    }
    return;
  }

  std::lock_guard lock(present_mutex);
  const auto back_buffer = swapchain->get_current_back_buffer();
  auto& pass = present_passes[back_buffer.handle];
  if (pass == nullptr) {
    pass = std::make_unique<renodx::utils::draw::SwapchainProxyPass>();
    pass->vertex_shader = vertex_shader;
    pass->pixel_shader = pq_copy_pixel_shader;
    pass->revert_state = false;
    pass->use_compatibility_mode = false;
    pass->proxy_format = reshade::api::format::r10g10b10a2_unorm;
  }
  if (!pass->Render(swapchain, queue)) {
    pass->Destroy(queue->get_device());
    present_passes.erase(back_buffer.handle);
  }
}

inline bool SetClientCloneActive(ClientImageState* state, bool active) {
  if (state == nullptr || state->original.handle == 0u) return false;

  std::vector<uint64_t> view_handles;
  bool updated = false;
  const bool found = renodx::utils::resource::UpdateResourceInfo(
      state->original,
      [active, &view_handles, &updated](
          renodx::utils::resource::ResourceInfo* info) {
        if (info->destroyed || info->clone.handle == 0u) return;
        info->clone_target = &client_upgrade_target;
        info->clone_enabled = active;
        info->clone_can_deactivate = false;
        view_handles.assign(
            info->resource_view_handles.begin(),
            info->resource_view_handles.end());
        updated = true;
      });
  if (!found || !updated) return false;

  renodx::utils::resource::upgrade::UpdateResourceViewsCloneState(
      view_handles, active, false, &client_upgrade_target);
  state->clone_active = active;
  return true;
}

inline uint32_t DeactivateClientImagesForPresentBoundary() {
  std::lock_guard lock(mutex);
  uint32_t deactivated = 0u;
  for (auto& [image, state] : client_images) {
    (void)image;
    if (state != nullptr && state->clone_active
        && SetClientCloneActive(state.get(), false)) {
      ++deactivated;
    }
  }
  return deactivated;
}

inline bool RegisterClientImage(
    uint64_t image,
    uint32_t width,
    uint32_t height,
    uint32_t native_format) {
  if (!IsHDR10Enabled() || image == 0u || width == 0u || height == 0u
      || native_format != kVkFormatA2B10G10R10UnormPack32) {
    return false;
  }

  const reshade::api::resource original{image};
  reshade::api::device* device = nullptr;
  std::vector<uint64_t> view_handles;
  bool compatible = false;
  renodx::utils::resource::UpdateResourceInfo(
      original,
      [width, height, &device, &view_handles, &compatible](
          renodx::utils::resource::ResourceInfo* info) {
        if (info->destroyed
            || info->desc.type != reshade::api::resource_type::texture_2d
            || reshade::api::format_to_default_typed(
                   info->desc.texture.format, 0)
                != reshade::api::format::r10g10b10a2_unorm
            || info->desc.texture.width != width
            || info->desc.texture.height != height) {
          return;
        }
        device = info->device;
        info->clone_target = &client_upgrade_target;
        info->clone_enabled = true;
        info->clone_can_deactivate = false;
        view_handles.assign(
            info->resource_view_handles.begin(),
            info->resource_view_handles.end());
        compatible = device != nullptr;
      });
  if (!compatible) return false;

  renodx::utils::resource::upgrade::UpdateResourceViewsCloneState(
      view_handles, true, false, &client_upgrade_target);
  const reshade::api::resource clone =
      renodx::utils::resource::upgrade::GetResourceClone(
          original,
          {
              .require_enabled = false,
              .allow_create = true,
              .activate = true,
          });
  if (clone.handle == 0u) return false;

  bool clone_is_fp16 = false;
  renodx::utils::resource::GetResourceInfo(
      clone,
      [&clone_is_fp16](const renodx::utils::resource::ResourceInfo& info) {
        clone_is_fp16 = reshade::api::format_to_default_typed(
                            info.desc.texture.format, 0)
            == reshade::api::format::r16g16b16a16_float;
      });
  if (!clone_is_fp16) return false;

  auto& state = client_images[image];
  if (state == nullptr) state = std::make_unique<ClientImageState>();
  if (state->pass_initialized
      && (state->device != device || state->clone.handle != clone.handle
          || state->width != width || state->height != height)) {
    state->pq_pass.DestroyAll(state->device);
    state->pq_pass = {};
    state->pass_initialized = false;
  }
  state->device = device;
  state->original = original;
  state->clone = clone;
  state->width = width;
  state->height = height;
  state->clone_active = true;
  return true;
}

inline bool ConvertClientImage(
    reshade::api::command_list* cmd_list,
    ClientImageState* state) {
  if (cmd_list == nullptr || state == nullptr
      || state->device != cmd_list->get_device()
      || state->original.handle == 0u || state->clone.handle == 0u
      || state->width == 0u || state->height == 0u
      || !state->clone_active || push_constants == nullptr) {
    return false;
  }
  if (!SetClientCloneActive(state, false)) return false;

  auto& pass = state->pq_pass;
  if (!state->pass_initialized) {
    pass.render_target_slots.resources = {state->original};
    pass.shader_resource_slots.resources = {state->clone};
    pass.pipeline_subobjects.vertex_shader = vertex_shader;
    pass.pipeline_subobjects.pixel_shader = pixel_shader;
    pass.pipeline_subobjects.render_target_formats = {
        reshade::api::format::r10g10b10a2_unorm};
    pass.auto_generate_render_target_formats = false;
    pass.auto_generate_viewport = false;
    pass.viewports.resize(1u);
    pass.auto_generate_scissors = false;
    pass.scissors.resize(1u);
    pass.render_target_load_op = reshade::api::render_pass_load_op::discard;
    pass.render_target_store_op = reshade::api::render_pass_store_op::store;
    pass.revert_state_after_render = false;
    pass.flush_after_render = false;
    pass.use_render_pass = true;
    state->pass_initialized = true;
  }

  pass.viewports[0] = {
      .x = 0.f,
      .y = 0.f,
      .width = static_cast<float>(state->width),
      .height = static_cast<float>(state->height),
      .min_depth = 0.f,
      .max_depth = 1.f,
  };
  pass.scissors[0] = {
      .left = 0,
      .top = 0,
      .right = static_cast<int32_t>(state->width),
      .bottom = static_cast<int32_t>(state->height),
  };
  pass.push_constants.clear();
  pass.push_constants[{.slot = 0u, .space = 0u}] =
      std::span<const float>(push_constants, push_constant_count);

  const std::array resources = {state->clone, state->original};
  constexpr std::array old_states = {
      reshade::api::resource_usage::present,
      reshade::api::resource_usage::present,
  };
  constexpr std::array render_states = {
      reshade::api::resource_usage::shader_resource,
      reshade::api::resource_usage::render_target,
  };
  cmd_list->barrier(
      static_cast<uint32_t>(resources.size()),
      resources.data(), old_states.data(), render_states.data());
  if (!pass.Render(cmd_list)) {
    SetClientCloneActive(state, true);
    return false;
  }
  cmd_list->barrier(
      static_cast<uint32_t>(resources.size()),
      resources.data(), render_states.data(), old_states.data());
  return true;
}

inline bool ManageClientImage(
    uint32_t operation,
    uint64_t command_buffer,
    uint64_t image,
    uint32_t width,
    uint32_t height,
    uint32_t native_format) {
  std::lock_guard lock(mutex);
  if (operation == renodx::streamline_bridge::kClientImageOperationRegister) {
    return command_buffer == 0u
        && RegisterClientImage(image, width, height, native_format);
  }

  const auto found = client_images.find(image);
  if (found == client_images.end()) return false;
  if (operation == renodx::streamline_bridge::kClientImageOperationActivate) {
    return command_buffer == 0u
        && SetClientCloneActive(found->second.get(), true);
  }
  if (operation != renodx::streamline_bridge::kClientImageOperationConvert
      || command_buffer == 0u) {
    return false;
  }
  const auto command_list = command_lists.find(command_buffer);
  return command_list != command_lists.end()
      && ConvertClientImage(command_list->second, found->second.get());
}

inline bool ConvertTaggedResource(
    uint64_t command_buffer,
    uint64_t source_image_view,
    uint64_t target_image_view,
    uint32_t width,
    uint32_t height) {
  if (!IsHDR10Enabled() || command_buffer == 0u
      || source_image_view == 0u || target_image_view == 0u
      || width == 0u || height == 0u || push_constants == nullptr
      || vertex_shader.empty() || pixel_shader.empty()) {
    return false;
  }

  std::lock_guard lock(mutex);
  const auto command_list = command_lists.find(command_buffer);
  if (command_list == command_lists.end()) return false;

  auto* cmd_list = command_list->second;
  auto* device = cmd_list->get_device();
  const reshade::api::resource_view source_view{source_image_view};
  const reshade::api::resource_view target_view{target_image_view};
  const auto source = device->get_resource_from_view(source_view);
  const auto target = device->get_resource_from_view(target_view);
  if (source.handle == 0u || target.handle == 0u) return false;

  const auto source_desc = device->get_resource_desc(source);
  const auto target_desc = device->get_resource_desc(target);
  if (source_desc.type != reshade::api::resource_type::texture_2d
      || target_desc.type != reshade::api::resource_type::texture_2d
      || source_desc.texture.width != width
      || source_desc.texture.height != height
      || target_desc.texture.width != width
      || target_desc.texture.height != height
      || reshade::api::format_to_default_typed(
             source_desc.texture.format, 0)
          != reshade::api::format::r16g16b16a16_float
      || reshade::api::format_to_default_typed(
             target_desc.texture.format, 0)
          != reshade::api::format::r10g10b10a2_unorm) {
    return false;
  }

  if (render_device != nullptr && render_device != device) return false;
  render_device = device;
  if (!render_pass_initialized) {
    render_pass.render_target_slots.views.resize(1u);
    render_pass.shader_resource_slots.views.resize(1u);
    render_pass.pipeline_subobjects.vertex_shader = vertex_shader;
    render_pass.pipeline_subobjects.pixel_shader = pixel_shader;
    render_pass.pipeline_subobjects.render_target_formats = {
        reshade::api::format::r10g10b10a2_unorm};
    render_pass.auto_generate_render_target_formats = false;
    render_pass.auto_generate_viewport = false;
    render_pass.viewports.resize(1u);
    render_pass.auto_generate_scissors = false;
    render_pass.scissors.resize(1u);
    render_pass.render_target_load_op =
        reshade::api::render_pass_load_op::discard;
    render_pass.render_target_store_op =
        reshade::api::render_pass_store_op::store;
    render_pass.revert_state_after_render = false;
    render_pass.flush_after_render = false;
    render_pass.use_render_pass = true;
    render_pass_initialized = true;
  }

  render_pass.render_target_slots.views[0] = target_view;
  render_pass.shader_resource_slots.views[0] = source_view;
  if (!render_pass.render_target_slots.render_pass_descs.empty()) {
    render_pass.render_target_slots.render_pass_descs[0].view = target_view;
  }
  render_pass.viewports[0] = {
      .x = 0.f,
      .y = 0.f,
      .width = static_cast<float>(width),
      .height = static_cast<float>(height),
      .min_depth = 0.f,
      .max_depth = 1.f,
  };
  render_pass.scissors[0] = {
      .left = 0,
      .top = 0,
      .right = static_cast<int32_t>(width),
      .bottom = static_cast<int32_t>(height),
  };
  render_pass.push_constants.clear();
  render_pass.push_constants[{.slot = 0u, .space = 0u}] =
      std::span<const float>(push_constants, push_constant_count);
  return render_pass.Render(cmd_list);
}

inline void OnInitCommandList(reshade::api::command_list* cmd_list) {
  if (cmd_list->get_device()->get_api()
      != reshade::api::device_api::vulkan) {
    return;
  }
  const auto command_buffer =
      cmd_list->get_native();
  if (command_buffer == 0u) return;
  std::lock_guard lock(mutex);
  command_lists[command_buffer] = cmd_list;
}

inline void OnDestroyCommandList(reshade::api::command_list* cmd_list) {
  const auto command_buffer =
      cmd_list->get_native();
  std::lock_guard lock(mutex);
  const auto found = command_lists.find(command_buffer);
  if (found != command_lists.end() && found->second == cmd_list) {
    command_lists.erase(found);
  }
}

inline void OnDestroyDevice(reshade::api::device* device) {
  {
    std::lock_guard lock(present_mutex);
    for (auto& [handle, pass] : present_passes) {
      pass->Destroy(device);
    }
    present_passes.clear();
  }
  {
    std::lock_guard lock(present_window_mutex);
    present_window_states.clear();
  }
  std::lock_guard lock(mutex);
  command_lists.clear();
  if (render_device == device) {
    render_pass.DestroyAll(device);
    render_pass = {};
    render_device = nullptr;
    render_pass_initialized = false;
  }
  for (auto it = client_images.begin(); it != client_images.end();) {
    if (it->second->device != device) {
      ++it;
      continue;
    }
    it->second->pq_pass.DestroyAll(device);
    it = client_images.erase(it);
  }
}

inline void OnDestroyResource(
    reshade::api::device* device,
    reshade::api::resource resource) {
  std::lock_guard lock(mutex);
  const auto found = client_images.find(resource.handle);
  if (found == client_images.end()) return;
  found->second->pq_pass.DestroyAll(device);
  client_images.erase(found);
}

inline void UseEvents(DWORD reason) {
  if (reason == DLL_PROCESS_ATTACH) {
    reshade::unregister_event<reshade::addon_event::present>(
        renodx::mods::swapchain::v2::OnPresent);
    reshade::register_event<reshade::addon_event::present>(OnPresent);
    reshade::register_event<reshade::addon_event::init_swapchain>(
        OnInitSwapchain);
    reshade::register_event<reshade::addon_event::init_command_list>(
        OnInitCommandList);
    reshade::register_event<reshade::addon_event::reset_command_list>(
        OnInitCommandList);
    reshade::register_event<reshade::addon_event::destroy_command_list>(
        OnDestroyCommandList);
    reshade::register_event<reshade::addon_event::destroy_device>(
        OnDestroyDevice);
    reshade::register_event<reshade::addon_event::destroy_resource>(
        OnDestroyResource);
  } else if (reason == DLL_PROCESS_DETACH) {
    reshade::unregister_event<reshade::addon_event::present>(OnPresent);
    reshade::unregister_event<reshade::addon_event::init_swapchain>(
        OnInitSwapchain);
    reshade::unregister_event<reshade::addon_event::init_command_list>(
        OnInitCommandList);
    reshade::unregister_event<reshade::addon_event::reset_command_list>(
        OnInitCommandList);
    reshade::unregister_event<reshade::addon_event::destroy_command_list>(
        OnDestroyCommandList);
    reshade::unregister_event<reshade::addon_event::destroy_device>(
        OnDestroyDevice);
    reshade::unregister_event<reshade::addon_event::destroy_resource>(
        OnDestroyResource);
  }
}

}  // namespace renodx::games::endfield::streamline
