#ifndef SRC_ENDFIELD_VK_BLOOM_DOWNSAMPLE_COMMON_HLSLI_
#define SRC_ENDFIELD_VK_BLOOM_DOWNSAMPLE_COMMON_HLSLI_

// The game stores two horizontally adjacent half-float samples per lane while
// performing a separable 9-tap Gaussian blur in an 8x8 workgroup.

[[vk::binding(1, 0)]] Texture2D<float4> t0 : register(t0);
[[vk::binding(2, 0)]] SamplerState s0_s : register(s0);

[[vk::binding(0, 1)]] cbuffer cb0 : register(b0) {
  float4 cb0[BLOOM_CONSTANT_COUNT];
}

[[vk::binding(0, 0)]]
[[vk::image_format("r11f_g11f_b10f")]]
RWTexture2D<float3> u0 : register(u0);

groupshared uint shared_r[128];
groupshared uint shared_g[128];
groupshared uint shared_b[128];

uint PackHalf2(float2 value) {
  uint2 packed = f32tof16(value);
  return packed.x | (packed.y << 16u);
}

float2 UnpackHalf2(uint value) {
  return f16tof32(uint2(value & 0xffffu, value >> 16u));
}

float3 PrepareSample(float3 color) {
#if BLOOM_LIMIT_HDR_SAMPLES
  // Match the game's HDR-safe variant: preserve hue while limiting the largest
  // component before values are packed to half precision in shared memory.
  float scale = max(max(max(color.r, color.g), color.b), cb0[1].x) / cb0[1].x;
  return color / scale;
#else
  return color;
#endif
}

[numthreads(8, 8, 1)]
void main(
    uint3 dispatch_thread_id : SV_DispatchThreadID,
    uint3 group_id : SV_GroupID,
    uint3 group_thread_id : SV_GroupThreadID) {
  int2 source_pixel = int2(
      (group_id.xy << uint2(3u, 3u))
      + (group_thread_id.xy << uint2(1u, 1u))
      - uint2(4u, 4u));

  float2 texel_size = cb0[0].zw;
  float3 sample_00 = PrepareSample(t0.SampleLevel(s0_s, (float2(source_pixel) + 0.5f.xx) * texel_size, 0.0f).rgb);
  float3 sample_10 = PrepareSample(t0.SampleLevel(s0_s, (float2(source_pixel) + float2(1.5f, 0.5f)) * texel_size, 0.0f).rgb);
  float3 sample_01 = PrepareSample(t0.SampleLevel(s0_s, (float2(source_pixel) + float2(0.5f, 1.5f)) * texel_size, 0.0f).rgb);
  float3 sample_11 = PrepareSample(t0.SampleLevel(s0_s, (float2(source_pixel) + 1.5f.xx) * texel_size, 0.0f).rgb);

  uint packed_row = group_thread_id.y * 16u + group_thread_id.x;
  shared_r[packed_row] = PackHalf2(float2(sample_00.r, sample_10.r));
  shared_g[packed_row] = PackHalf2(float2(sample_00.g, sample_10.g));
  shared_b[packed_row] = PackHalf2(float2(sample_00.b, sample_10.b));

  packed_row += 8u;
  shared_r[packed_row] = PackHalf2(float2(sample_01.r, sample_11.r));
  shared_g[packed_row] = PackHalf2(float2(sample_01.g, sample_11.g));
  shared_b[packed_row] = PackHalf2(float2(sample_01.b, sample_11.b));

  GroupMemoryBarrierWithGroupSync();

  uint horizontal_source = group_thread_id.y * 16u
      + group_thread_id.x
      + (group_thread_id.x & 4u);
  float3 horizontal_taps[10];

  [unroll]
  for (uint i = 0u; i < 5u; i++) {
    float2 red = UnpackHalf2(shared_r[horizontal_source + i]);
    float2 green = UnpackHalf2(shared_g[horizontal_source + i]);
    float2 blue = UnpackHalf2(shared_b[horizontal_source + i]);
    horizontal_taps[i * 2u] = float3(red.x, green.x, blue.x);
    horizontal_taps[i * 2u + 1u] = float3(red.y, green.y, blue.y);
  }

  float3 horizontal_0 =
      horizontal_taps[4] * 0.2734375f
      + (horizontal_taps[3] + horizontal_taps[5]) * 0.21875f
      + (horizontal_taps[2] + horizontal_taps[6]) * 0.109375f
      + (horizontal_taps[1] + horizontal_taps[7]) * 0.03125f
      + (horizontal_taps[0] + horizontal_taps[8]) * 0.00390625f;
  float3 horizontal_1 =
      horizontal_taps[5] * 0.2734375f
      + (horizontal_taps[4] + horizontal_taps[6]) * 0.21875f
      + (horizontal_taps[3] + horizontal_taps[7]) * 0.109375f
      + (horizontal_taps[2] + horizontal_taps[8]) * 0.03125f
      + (horizontal_taps[1] + horizontal_taps[9]) * 0.00390625f;

  uint horizontal_output = group_thread_id.y * 16u + group_thread_id.x * 2u;
  shared_r[horizontal_output] = asuint(horizontal_0.r);
  shared_g[horizontal_output] = asuint(horizontal_0.g);
  shared_b[horizontal_output] = asuint(horizontal_0.b);
  shared_r[horizontal_output + 1u] = asuint(horizontal_1.r);
  shared_g[horizontal_output + 1u] = asuint(horizontal_1.g);
  shared_b[horizontal_output + 1u] = asuint(horizontal_1.b);

  GroupMemoryBarrierWithGroupSync();

  uint vertical_source = group_thread_id.y * 8u + group_thread_id.x;
  float3 vertical_result =
      asfloat(uint3(shared_r[vertical_source + 32u], shared_g[vertical_source + 32u], shared_b[vertical_source + 32u])) * 0.2734375f
      + (asfloat(uint3(shared_r[vertical_source + 24u], shared_g[vertical_source + 24u], shared_b[vertical_source + 24u]))
          + asfloat(uint3(shared_r[vertical_source + 40u], shared_g[vertical_source + 40u], shared_b[vertical_source + 40u]))) * 0.21875f
      + (asfloat(uint3(shared_r[vertical_source + 16u], shared_g[vertical_source + 16u], shared_b[vertical_source + 16u]))
          + asfloat(uint3(shared_r[vertical_source + 48u], shared_g[vertical_source + 48u], shared_b[vertical_source + 48u]))) * 0.109375f
      + (asfloat(uint3(shared_r[vertical_source + 8u], shared_g[vertical_source + 8u], shared_b[vertical_source + 8u]))
          + asfloat(uint3(shared_r[vertical_source + 56u], shared_g[vertical_source + 56u], shared_b[vertical_source + 56u]))) * 0.03125f
      + (asfloat(uint3(shared_r[vertical_source], shared_g[vertical_source], shared_b[vertical_source]))
          + asfloat(uint3(shared_r[vertical_source + 64u], shared_g[vertical_source + 64u], shared_b[vertical_source + 64u]))) * 0.00390625f;

  bool2 in_bounds = dispatch_thread_id.xy < uint2(cb0[0].xy);
  u0[dispatch_thread_id.xy] = (in_bounds.x && in_bounds.y) ? vertical_result : 0.0f;
}

#endif  // SRC_ENDFIELD_VK_BLOOM_DOWNSAMPLE_COMMON_HLSLI_
