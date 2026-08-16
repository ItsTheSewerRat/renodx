#pragma once

#include <cstddef>
#include <cstdint>
#include <array>
#include <memory>
#include <mutex>
#include <span>
#include <unordered_map>
#include <vector>

#include <Windows.h>
#include <include/reshade.hpp>
#include "../../mods/swapchain.hpp"
#include "../../utils/render.hpp"
#include "../../utils/resource_upgrade.hpp"
#include "../../../external/Streamline/source/core/sl.interposer/renodx_streamline_bridge.h"

namespace renodx::games::endfield::streamline {

inline constexpr uint32_t kVkFormatR8G8B8A8Unorm = 37u;
inline constexpr uint32_t kVkFormatA2B10G10R10UnormPack32 = 64u;

inline std::mutex mutex;
inline std::unordered_map<uint64_t, reshade::api::command_list*> command_lists;
inline reshade::api::device* render_device = nullptr;
inline renodx::utils::render::RenderPass render_pass;
inline bool render_pass_initialized = false;
inline reshade::api::format render_target_format =
    reshade::api::format::unknown;
inline std::span<const uint8_t> vertex_shader;
inline std::span<const uint8_t> pixel_shader;
inline const float* push_constants = nullptr;
inline size_t push_constant_count = 0u;
inline const float* output_encoding = nullptr;
inline thread_local uint32_t display_ready_pq_present_depth = 0u;
inline thread_local bool outer_conversion_in_progress = false;

inline renodx::utils::resource::ResourceUpgradeInfo client_sdr_upgrade_target = {
    .old_format = reshade::api::format::r8g8b8a8_unorm,
    .new_format = reshade::api::format::r16g16b16a16_float,
    .ignore_size = true,
    .usage_set = static_cast<uint32_t>(
        reshade::api::resource_usage::shader_resource
        | reshade::api::resource_usage::render_target),
    .view_upgrades = renodx::utils::resource::VIEW_UPGRADES_RGBA16F,
    .use_resource_view_cloning_and_upgrade = true,
    .name = "Endfield Streamline SDR client FP16 clone",
};

inline renodx::utils::resource::ResourceUpgradeInfo client_hdr10_upgrade_target = {
    .old_format = reshade::api::format::r10g10b10a2_unorm,
    .new_format = reshade::api::format::r16g16b16a16_float,
    .ignore_size = true,
    .usage_set = static_cast<uint32_t>(
        reshade::api::resource_usage::shader_resource
        | reshade::api::resource_usage::render_target),
    .view_upgrades = renodx::utils::resource::VIEW_UPGRADES_RGBA16F,
    .use_resource_view_cloning_and_upgrade = true,
    .name = "Endfield Streamline HDR10 client FP16 clone",
};

struct ClientImageState {
  reshade::api::device* device = nullptr;
  reshade::api::resource original = {0u};
  reshade::api::resource clone = {0u};
  reshade::api::format original_format = reshade::api::format::unknown;
  renodx::utils::resource::ResourceUpgradeInfo* upgrade_target = nullptr;
  uint32_t width = 0u;
  uint32_t height = 0u;
  bool clone_active = false;
  bool pass_initialized = false;
  bool display_pass_initialized = false;
  bool pq_render_target_exempt = false;
  bool display_render_target_exempt = false;
  renodx::utils::render::RenderPass pq_pass;
  renodx::utils::render::RenderPass display_pass;
};

inline std::unordered_map<uint64_t, std::unique_ptr<ClientImageState>>
    client_images;
inline void Configure(
    std::span<const uint8_t> new_vertex_shader,
    std::span<const uint8_t> new_pixel_shader,
    const float* new_push_constants,
    size_t new_push_constant_count,
    const float* new_output_encoding) {
  vertex_shader = new_vertex_shader;
  pixel_shader = new_pixel_shader;
  push_constants = new_push_constants;
  push_constant_count = new_push_constant_count;
  output_encoding = new_output_encoding;
}

inline bool IsHDR10Enabled() {
  return output_encoding != nullptr && *output_encoding == 4.f;
}

inline uint32_t GetVulkanOutputFormat() {
  if (output_encoding == nullptr) return 0u;
  if (*output_encoding == 4.f) {
    return kVkFormatA2B10G10R10UnormPack32;
  }
  if (*output_encoding >= 0.f && *output_encoding < 4.f) {
    return kVkFormatR8G8B8A8Unorm;
  }
  return 0u;
}

inline reshade::api::format GetOutputFormat(uint32_t native_format) {
  if (native_format == kVkFormatR8G8B8A8Unorm) {
    return reshade::api::format::r8g8b8a8_unorm;
  }
  if (native_format == kVkFormatA2B10G10R10UnormPack32) {
    return reshade::api::format::r10g10b10a2_unorm;
  }
  return reshade::api::format::unknown;
}

inline renodx::utils::resource::ResourceUpgradeInfo* GetClientUpgradeTarget(
    uint32_t native_format) {
  if (native_format == kVkFormatR8G8B8A8Unorm) {
    return &client_sdr_upgrade_target;
  }
  if (native_format == kVkFormatA2B10G10R10UnormPack32) {
    return &client_hdr10_upgrade_target;
  }
  return nullptr;
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

inline void OnPresent(
    reshade::api::command_queue* queue,
    reshade::api::swapchain* swapchain,
    const reshade::api::rect* source_rect,
    const reshade::api::rect* dest_rect,
    uint32_t dirty_rect_count,
    const reshade::api::rect* dirty_rects) {
  if (queue == nullptr || swapchain == nullptr) return;
  if (display_ready_pq_present_depth != 0u
      && queue->get_device()->get_api() == reshade::api::device_api::vulkan) {
    return;
  }
  {
    std::lock_guard lock(mutex);
    const auto found = client_images.find(
        swapchain->get_current_back_buffer().handle);
    if (found != client_images.end()
        && found->second->original_format
            == reshade::api::format::r10g10b10a2_unorm
        && !found->second->clone_active) {
      return;
    }
  }
  renodx::mods::swapchain::v2::OnPresent(
      queue,
      swapchain,
      source_rect,
      dest_rect,
      dirty_rect_count,
      dirty_rects);
}

inline bool SetClientCloneActive(ClientImageState* state, bool active) {
  if (state == nullptr || state->original.handle == 0u
      || state->upgrade_target == nullptr) {
    return false;
  }

  auto* upgrade_target = state->upgrade_target;
  std::vector<uint64_t> view_handles;
  bool updated = false;
  const bool found = renodx::utils::resource::UpdateResourceInfo(
      state->original,
      [active, upgrade_target, &view_handles, &updated](
          renodx::utils::resource::ResourceInfo* info) {
        if (info->destroyed || info->clone.handle == 0u) return;
        info->clone_target = upgrade_target;
        info->clone_enabled = active;
        info->clone_can_deactivate = false;
        view_handles.assign(
            info->resource_view_handles.begin(),
            info->resource_view_handles.end());
        updated = true;
      });
  if (!found || !updated) return false;

  renodx::utils::resource::upgrade::UpdateResourceViewsCloneState(
      view_handles, active, false, upgrade_target);
  state->clone_active = active;
  return true;
}

inline bool RegisterClientImage(
    uint64_t image,
    uint32_t width,
    uint32_t height,
    uint32_t native_format) {
  auto* upgrade_target = GetClientUpgradeTarget(native_format);
  const reshade::api::format original_format = GetOutputFormat(native_format);
  if (native_format != GetVulkanOutputFormat() || upgrade_target == nullptr
      || original_format == reshade::api::format::unknown
      || image == 0u || width == 0u || height == 0u) {
    return false;
  }

  const reshade::api::resource original{image};
  reshade::api::device* device = nullptr;
  std::vector<uint64_t> view_handles;
  bool compatible = false;
  renodx::utils::resource::UpdateResourceInfo(
      original,
      [width,
       height,
       original_format,
       upgrade_target,
       &device,
       &view_handles,
       &compatible](
          renodx::utils::resource::ResourceInfo* info) {
        if (info->destroyed
            || info->desc.type != reshade::api::resource_type::texture_2d
            || reshade::api::format_to_default_typed(
                   info->desc.texture.format, 0)
                != original_format
            || info->desc.texture.width != width
            || info->desc.texture.height != height) {
          return;
        }
        device = info->device;
        info->clone_target = upgrade_target;
        info->clone_enabled = true;
        info->clone_can_deactivate = false;
        view_handles.assign(
            info->resource_view_handles.begin(),
            info->resource_view_handles.end());
        compatible = device != nullptr;
      });
  if (!compatible) return false;

  renodx::utils::resource::upgrade::UpdateResourceViewsCloneState(
      view_handles, true, false, upgrade_target);
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
  if ((state->pass_initialized || state->display_pass_initialized)
      && (state->device != device || state->clone.handle != clone.handle
          || state->original_format != original_format
          || state->width != width || state->height != height)) {
    state->pq_pass.DestroyAll(state->device);
    state->display_pass.DestroyAll(state->device);
    state->pq_pass = {};
    state->display_pass = {};
    state->pass_initialized = false;
    state->display_pass_initialized = false;
    state->pq_render_target_exempt = false;
    state->display_render_target_exempt = false;
  }
  state->device = device;
  state->original = original;
  state->clone = clone;
  state->original_format = original_format;
  state->upgrade_target = upgrade_target;
  state->width = width;
  state->height = height;
  state->clone_active = true;
  return true;
}

inline bool RenderClientImage(
    reshade::api::command_list* cmd_list,
    ClientImageState* state,
    renodx::utils::render::RenderPass* pass,
    bool* pass_initialized,
    bool* render_target_exempt,
    std::span<const uint8_t> conversion_shader,
    bool bind_push_constants) {
  if (cmd_list == nullptr || state == nullptr
      || state->device != cmd_list->get_device()
      || state->original.handle == 0u || state->clone.handle == 0u
      || state->original_format == reshade::api::format::unknown
      || state->width == 0u || state->height == 0u
      || pass == nullptr || pass_initialized == nullptr
      || render_target_exempt == nullptr
      || conversion_shader.empty()
      || (bind_push_constants && push_constants == nullptr)) {
    return false;
  }

  if (!*pass_initialized) {
    pass->render_target_slots.resources = {state->original};
    pass->shader_resource_slots.resources = {state->clone};
    pass->pipeline_subobjects.vertex_shader = vertex_shader;
    pass->pipeline_subobjects.pixel_shader = conversion_shader;
    pass->pipeline_subobjects.render_target_formats = {
        state->original_format};
    pass->auto_generate_render_target_formats = false;
    pass->auto_generate_viewport = false;
    pass->viewports.resize(1u);
    pass->auto_generate_scissors = false;
    pass->scissors.resize(1u);
    pass->render_target_load_op = reshade::api::render_pass_load_op::discard;
    pass->render_target_store_op = reshade::api::render_pass_store_op::store;
    pass->revert_state_after_render = false;
    pass->flush_after_render = false;
    pass->use_render_pass = true;
    *pass_initialized = true;
  }

  pass->viewports[0] = {
      .x = 0.f,
      .y = 0.f,
      .width = static_cast<float>(state->width),
      .height = static_cast<float>(state->height),
      .min_depth = 0.f,
      .max_depth = 1.f,
  };
  pass->scissors[0] = {
      .left = 0,
      .top = 0,
      .right = static_cast<int32_t>(state->width),
      .bottom = static_cast<int32_t>(state->height),
  };
  pass->push_constants.clear();
  if (bind_push_constants) {
    pass->push_constants[{.slot = 0u, .space = 0u}] =
        std::span<const float>(push_constants, push_constant_count);
  }

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
  const bool rendered = pass->Render(cmd_list);
  if (rendered && !*render_target_exempt
      && !pass->render_target_slots.views.empty()) {
    bool exempted = true;
    for (const auto view : pass->render_target_slots.views) {
      exempted = renodx::utils::resource::UpdateResourceViewInfo(
                     view,
                     [](renodx::utils::resource::ResourceViewInfo* info) {
                       if (info->destroyed) return;
                       info->clone_target = nullptr;
                       info->clone_enabled = false;
                       info->clone_can_deactivate = false;
                     })
          && exempted;
      exempted = renodx::utils::resource::UpdateResourceInfo(
                     state->original,
                     [view](renodx::utils::resource::ResourceInfo* info) {
                       info->resource_view_handles.erase(view.handle);
                     })
          && exempted;
    }
    *render_target_exempt = exempted;
  }
  cmd_list->barrier(
      static_cast<uint32_t>(resources.size()),
      resources.data(), render_states.data(), old_states.data());
  return rendered;
}

inline bool ConvertClientImage(
    reshade::api::command_list* cmd_list,
    ClientImageState* state) {
  if (state == nullptr) return false;
  const bool is_sdr =
      state->original_format == reshade::api::format::r8g8b8a8_unorm;
  if (!is_sdr) return !state->clone_active;
  if (!state->clone_active || !SetClientCloneActive(state, false)) return false;
  const bool converted = RenderClientImage(
      cmd_list,
      state,
      &state->pq_pass,
      &state->pass_initialized,
      &state->pq_render_target_exempt,
      pixel_shader,
      true);
  if (!converted) SetClientCloneActive(state, true);
  return converted;
}

inline bool ConvertDisplayImage(
    reshade::api::command_list* cmd_list,
    ClientImageState* state) {
  if (state == nullptr) return false;
  const bool is_sdr =
      state->original_format == reshade::api::format::r8g8b8a8_unorm;
  if (!is_sdr) return !state->clone_active;
  if (!state->clone_active && !SetClientCloneActive(state, true)) return false;
  if (!SetClientCloneActive(state, false)) return false;
  const bool converted = RenderClientImage(
      cmd_list,
      state,
      &state->display_pass,
      &state->display_pass_initialized,
      &state->display_render_target_exempt,
      pixel_shader,
      true);
  const bool reactivated = SetClientCloneActive(state, true);
  return converted && reactivated;
}

inline void OnBarrier(
    reshade::api::command_list* cmd_list,
    uint32_t count,
    const reshade::api::resource* resources,
    const reshade::api::resource_usage* old_states,
    const reshade::api::resource_usage* new_states) {
  if (outer_conversion_in_progress || cmd_list == nullptr || count == 0u
      || resources == nullptr || old_states == nullptr || new_states == nullptr
      || cmd_list->get_device()->get_api()
          != reshade::api::device_api::vulkan) {
    return;
  }

  std::lock_guard lock(mutex);
  for (uint32_t index = 0u; index < count; ++index) {
    if (resources[index].handle == 0u
        || old_states[index] == reshade::api::resource_usage::undefined
        || old_states[index] == reshade::api::resource_usage::present
        || new_states[index] != reshade::api::resource_usage::present) {
      continue;
    }

    const auto found = client_images.find(resources[index].handle);
    if (found == client_images.end()) continue;
    auto* state = found->second.get();
    if (state->original_format != reshade::api::format::r10g10b10a2_unorm) {
      continue;
    }

    if (!state->clone_active || !SetClientCloneActive(state, false)) continue;
    outer_conversion_in_progress = true;
    const bool converted = RenderClientImage(
        cmd_list,
        state,
        &state->pq_pass,
        &state->pass_initialized,
        &state->pq_render_target_exempt,
        pixel_shader,
        true);
    outer_conversion_in_progress = false;

    if (converted) {
      static std::once_flag logged;
      std::call_once(logged, [] {
        reshade::log::message(
            reshade::log::level::info,
            "[RenoDX][client-fp16] Encoded HDR10 on the game's graphics command buffer before DLSS-G");
      });
    } else {
      SetClientCloneActive(state, true);
      static std::once_flag logged;
      std::call_once(logged, [] {
        reshade::log::message(
            reshade::log::level::error,
            "[RenoDX][client-fp16] Failed to encode HDR10 before DLSS-G");
      });
    }
  }
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

  if (operation
      == renodx::streamline_bridge::kClientImageOperationConvertDisplay) {
    if (command_buffer == 0u) return false;
    const auto command_list = command_lists.find(command_buffer);
    if (command_list == command_lists.end()) return false;

    auto found = client_images.find(image);
    if (found == client_images.end()) {
      uint32_t display_width = 0u;
      uint32_t display_height = 0u;
      uint32_t display_format = 0u;
      const bool compatible = renodx::utils::resource::GetResourceInfo(
          reshade::api::resource{image},
          [&display_width, &display_height, &display_format](
              const renodx::utils::resource::ResourceInfo& info) {
            const reshade::api::format original_format =
                reshade::api::format_to_default_typed(
                    info.desc.texture.format, 0);
            if (info.destroyed || !info.is_swap_chain
                || info.desc.type != reshade::api::resource_type::texture_2d
                || info.clone.handle == 0u
                || info.clone_desc.type
                    != reshade::api::resource_type::texture_2d
                || (original_format != reshade::api::format::r8g8b8a8_unorm
                    && original_format
                        != reshade::api::format::r10g10b10a2_unorm)
                || reshade::api::format_to_default_typed(
                       info.clone_desc.texture.format, 0)
                    != reshade::api::format::r16g16b16a16_float) {
              return;
            }
            display_width = info.desc.texture.width;
            display_height = info.desc.texture.height;
            display_format = original_format
                    == reshade::api::format::r8g8b8a8_unorm
                ? kVkFormatR8G8B8A8Unorm
                : kVkFormatA2B10G10R10UnormPack32;
          });
      if (!compatible || display_width == 0u || display_height == 0u
          || !RegisterClientImage(
              image,
              display_width,
              display_height,
              display_format)) {
        return false;
      }
      found = client_images.find(image);
      if (found == client_images.end()) return false;
    }
    return ConvertDisplayImage(command_list->second, found->second.get());
  }

  const auto found = client_images.find(image);
  if (found == client_images.end()) return false;
  if (operation == renodx::streamline_bridge::kClientImageOperationActivate) {
    if (command_buffer != 0u
        || !SetClientCloneActive(found->second.get(), true)) {
      return false;
    }
    return true;
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
  const reshade::api::format expected_target_format =
      GetOutputFormat(GetVulkanOutputFormat());
  if (expected_target_format == reshade::api::format::unknown
      || command_buffer == 0u
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
          != expected_target_format) {
    return false;
  }

  if (render_device != nullptr && render_device != device) return false;
  render_device = device;
  if (render_pass_initialized
      && render_target_format != expected_target_format) {
    render_pass.DestroyAll(device);
    render_pass = {};
    render_pass_initialized = false;
  }
  if (!render_pass_initialized) {
    render_pass.render_target_slots.views.resize(1u);
    render_pass.shader_resource_slots.views.resize(1u);
    render_pass.pipeline_subobjects.vertex_shader = vertex_shader;
    render_pass.pipeline_subobjects.pixel_shader = pixel_shader;
    render_pass.pipeline_subobjects.render_target_formats = {
        expected_target_format};
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
    render_target_format = expected_target_format;
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
  std::lock_guard lock(mutex);
  command_lists.clear();
  if (render_device == device) {
    render_pass.DestroyAll(device);
    render_pass = {};
    render_device = nullptr;
    render_pass_initialized = false;
    render_target_format = reshade::api::format::unknown;
  }
  for (auto it = client_images.begin(); it != client_images.end();) {
    if (it->second->device != device) {
      ++it;
      continue;
    }
    it->second->pq_pass.DestroyAll(device);
    it->second->display_pass.DestroyAll(device);
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
  found->second->display_pass.DestroyAll(device);
  client_images.erase(found);
}

inline void UseEvents(DWORD reason) {
  if (reason == DLL_PROCESS_ATTACH) {
    reshade::unregister_event<reshade::addon_event::present>(
        renodx::mods::swapchain::v2::OnPresent);
    reshade::register_event<reshade::addon_event::present>(OnPresent);
    reshade::register_event<reshade::addon_event::init_swapchain>(
        OnInitSwapchain);
    reshade::register_event<reshade::addon_event::barrier>(OnBarrier);
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
    reshade::unregister_event<reshade::addon_event::barrier>(OnBarrier);
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
