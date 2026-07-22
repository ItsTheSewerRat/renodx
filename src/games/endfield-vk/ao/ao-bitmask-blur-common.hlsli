#ifndef SRC_ENDFIELD_VK_AO_BITMASK_BLUR_COMMON_HLSLI_
#define SRC_ENDFIELD_VK_AO_BITMASK_BLUR_COMMON_HLSLI_

#include "../shared.h"

// Visibility-bitmask AO denoiser. The game evaluates two horizontal pixels per
// invocation; the two known variants differ only in center and output weights.

[[vk::binding(1, 0)]] Texture2D<float4> ao_texture : register(t0);
[[vk::binding(2, 0)]] Texture2D<float4> visibility_texture : register(t1);
[[vk::binding(3, 0)]] SamplerState linear_sampler : register(s0);

[[vk::binding(0, 1)]] cbuffer cb0 : register(b0) {
  float4 cb0[5];
}

[[vk::binding(0, 0)]]
[[vk::image_format("r8")]]
RWTexture2D<unorm float> ao_output : register(u0);

float DecodeVisibility(uint packed, uint shift) {
  return float((packed >> shift) & 3u) * (1.0f / 3.0f);
}

float4 DecodeVisibility(uint packed) {
  return float4(
      DecodeVisibility(packed, 6u),
      DecodeVisibility(packed, 4u),
      DecodeVisibility(packed, 2u),
      DecodeVisibility(packed, 0u));
}

[numthreads(8, 8, 1)]
void main(uint3 dispatch_thread_id : SV_DispatchThreadID) {
  uint2 output_pixel = dispatch_thread_id.xy * uint2(2u, 1u);
  float2 uv = float2(output_pixel) * cb0[4].zw;

  float4 visibility_00 = visibility_texture.GatherRed(linear_sampler, uv, int2(0, 0));
  float4 visibility_20 = visibility_texture.GatherRed(linear_sampler, uv, int2(2, 0));
  float4 visibility_12 = visibility_texture.GatherRed(linear_sampler, uv, int2(1, 2));

  float4 ao_00 = ao_texture.GatherRed(linear_sampler, uv, int2(0, 0));
  float4 ao_20 = ao_texture.GatherRed(linear_sampler, uv, int2(2, 0));
  float4 ao_02 = ao_texture.GatherRed(linear_sampler, uv, int2(0, 2));
  float4 ao_22 = ao_texture.GatherRed(linear_sampler, uv, int2(2, 2));

  [unroll]
  for (uint pixel_offset = 0u; pixel_offset < 2u; pixel_offset++) {
    bool first_pixel = pixel_offset == 0u;

    uint packed_northwest = uint((first_pixel ? visibility_00.x : visibility_00.y) * 255.5f);
    uint packed_southwest = uint((first_pixel ? visibility_00.z : visibility_20.w) * 255.5f);
    uint packed_southeast = uint((first_pixel ? visibility_20.x : visibility_20.y) * 255.5f);
    uint packed_northeast = uint((first_pixel ? visibility_12.w : visibility_12.z) * 255.5f);
    uint packed_center = uint((first_pixel ? visibility_00.y : visibility_20.x) * 255.5f);

    float4 northwest = saturate(float4(
        0.0f,
        DecodeVisibility(packed_northwest, 4u),
        DecodeVisibility(packed_northwest, 2u),
        DecodeVisibility(packed_northwest, 0u)));
    float4 southwest = saturate(float4(
        DecodeVisibility(packed_southwest, 6u),
        DecodeVisibility(packed_southwest, 4u),
        0.0f,
        DecodeVisibility(packed_southwest, 0u)));
    float4 southeast = saturate(float4(
        DecodeVisibility(packed_southeast, 6u),
        0.0f,
        DecodeVisibility(packed_southeast, 2u),
        DecodeVisibility(packed_southeast, 0u)));
    float4 northeast = saturate(float4(
        DecodeVisibility(packed_northeast, 6u),
        DecodeVisibility(packed_northeast, 4u),
        DecodeVisibility(packed_northeast, 2u),
        0.0f));

    float4 cardinal = saturate(DecodeVisibility(packed_center));
    cardinal *= float4(northwest.y, southeast.x, southwest.w, northeast.z);
    cardinal = saturate(cardinal + saturate(1.5f - dot(cardinal, 1.0f.xxxx)) * (1.0f / 3.0f));

    float edge_0 = 0.425f * (cardinal.x * northwest.z + cardinal.z * southwest.x);
    float edge_1 = 0.425f * (cardinal.z * southwest.y + cardinal.y * southeast.z);
    float edge_2 = 0.425f * (cardinal.w * northeast.x + cardinal.x * northwest.w);
    float edge_3 = 0.425f * (cardinal.y * southeast.w + cardinal.w * northeast.y);
    float center_weight = cb0[2].x * AO_CENTER_WEIGHT_SCALE;

    float weighted_ao =
        (first_pixel ? ao_00.y : ao_20.x) * center_weight
        + cardinal.x * (first_pixel ? ao_00.x : ao_00.y)
        + cardinal.y * (first_pixel ? ao_20.x : ao_20.y)
        + cardinal.z * (first_pixel ? ao_00.z : ao_20.w)
        + cardinal.w * (first_pixel ? ao_02.z : ao_22.w)
        + edge_0 * (first_pixel ? ao_00.w : ao_00.z)
        + edge_1 * (first_pixel ? ao_20.w : ao_20.z)
        + edge_2 * (first_pixel ? ao_02.w : ao_02.z)
        + edge_3 * (first_pixel ? ao_22.w : ao_22.z);
    float weight = center_weight
        + dot(cardinal, 1.0f.xxxx)
        + edge_0 + edge_1 + edge_2 + edge_3;
    float result = weighted_ao / weight * AO_RESULT_SCALE;

    ao_output[output_pixel + uint2(pixel_offset, 0u)] =
        shader_injection.disable_game_ao >= 0.5f ? 1.0f : result;
  }
}

#endif  // SRC_ENDFIELD_VK_AO_BITMASK_BLUR_COMMON_HLSLI_
