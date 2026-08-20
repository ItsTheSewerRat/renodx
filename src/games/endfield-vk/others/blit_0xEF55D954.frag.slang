#include "../shared.h"

[[vk::binding(3, 3)]] Texture2D<float4> t0 : register(t0);
[[vk::binding(2, 3)]] SamplerState s0_s : register(s0);

// The current native Vulkan layout carries four trailing scalar fields after
// the three DX vectors. Only m2.x is consumed by this pass, but retaining the
// final scalar preserves the native 52-byte descriptor interface.
[[vk::binding(1, 3)]]
cbuffer cb0 : register(b0) {
  float4 cb0[3];
  float cb0_tail;
}

// RenoDX code start: implement the optional linear-light RCAS pass.
float3 ApplyRCAS(float3 center_color, float2 uv) {
  if (shader_injection.fx_rcas_amount == 0.f) return center_color;

  uint width;
  uint height;
  t0.GetDimensions(width, height);
  const float2 texel_size = rcp(float2(width, height));

  float3 b = t0.SampleLevel(s0_s, uv + float2(0.f, -1.f) * texel_size, 0.f).rgb;
  float3 d = t0.SampleLevel(s0_s, uv + float2(-1.f, 0.f) * texel_size, 0.f).rgb;
  float3 e = center_color;
  float3 f = t0.SampleLevel(s0_s, uv + float2(1.f, 0.f) * texel_size, 0.f).rgb;
  float3 h = t0.SampleLevel(s0_s, uv + float2(0.f, 1.f) * texel_size, 0.f).rgb;

  const float normalization = 125.f;
  b /= normalization;
  d /= normalization;
  e /= normalization;
  f /= normalization;
  h /= normalization;

  const float b_luma = renodx::color::y::from::BT709(b);
  const float d_luma = renodx::color::y::from::BT709(d);
  const float e_luma = renodx::color::y::from::BT709(e);
  const float f_luma = renodx::color::y::from::BT709(f);
  const float h_luma = renodx::color::y::from::BT709(h);

  const float min_ring = renodx::math::Min(b_luma, d_luma, f_luma, h_luma);
  const float max_ring = min(renodx::math::Max(b_luma, d_luma, f_luma, h_luma), 0.99f);
  const float hit_min = min_ring * rcp(4.f * max_ring);
  const float hit_max = (1.f - max_ring) * rcp(4.f * min_ring - 4.f);
  const float local_lobe = max(-hit_min, hit_max);
  float lobe = max(-0.1875f, min(local_lobe, 0.f)) * shader_injection.fx_rcas_amount;

  const float b_luma_2x = b_luma * 2.f;
  const float d_luma_2x = d_luma * 2.f;
  const float e_luma_2x = e_luma * 2.f;
  const float f_luma_2x = f_luma * 2.f;
  const float h_luma_2x = h_luma * 2.f;
  float noise = 0.25f * (b_luma_2x + d_luma_2x + f_luma_2x + h_luma_2x) - e_luma_2x;
  const float max_luma_2x = renodx::math::Max(
      renodx::math::Max(b_luma_2x, d_luma_2x, e_luma_2x), f_luma_2x, h_luma_2x);
  const float min_luma_2x = renodx::math::Min(
      renodx::math::Min(b_luma_2x, d_luma_2x, e_luma_2x), f_luma_2x, h_luma_2x);
  noise = saturate(abs(noise) * rcp(max_luma_2x - min_luma_2x));
  lobe *= 1.f - 0.5f * noise;

  const float resolved_luma =
      ((b_luma + d_luma + h_luma + f_luma) * lobe + e_luma)
      * rcp(4.f * lobe + 1.f);
  return clamp(resolved_luma / e_luma, 0.f, 4.f) * e * normalization;
}
// RenoDX code end

// RenoDX code start: implement the optional technical-test color calibration.
float3 ApplyColorCalibration(float3 color) {
  float3 adapted;
  adapted.r = dot(color, float3(1.00113f, -0.00212f, -0.01555f));
  adapted.g = dot(color, float3(-0.00031f, 1.00047f, 0.00113f));
  adapted.b = dot(color, float3(-0.00018f, 0.00445f, 1.03436f));

  float3 lms;
  lms.x = dot(adapted, float3(0.4122214708f, 0.5363325363f, 0.0514459929f));
  lms.y = dot(adapted, float3(0.2119034982f, 0.6806995451f, 0.1073969566f));
  lms.z = dot(adapted, float3(0.0883024619f, 0.2817188376f, 0.6299787005f));
  lms = sign(lms) * pow(abs(lms), 1.f / 3.f);

  float3 lab;
  lab.x = dot(lms, float3(0.2104542553f, 0.7936177850f, -0.0040720468f));
  lab.y = dot(lms, float3(1.9779984951f, -2.4285922050f, 0.4505937099f));
  lab.z = dot(lms, float3(0.0259040371f, 0.7827717662f, -0.8086757660f));
  lab.y += 0.0015f;

  lms.x = lab.x + 0.3963377774f * lab.y + 0.2158037573f * lab.z;
  lms.y = lab.x - 0.1055613458f * lab.y - 0.0638541728f * lab.z;
  lms.z = lab.x - 0.0894841775f * lab.y - 1.2914855480f * lab.z;
  lms = lms * lms * lms;

  float3 calibrated;
  calibrated.r = dot(lms, float3(4.0767416621f, -3.3077115913f, 0.2309699292f));
  calibrated.g = dot(lms, float3(-1.2684380046f, 2.6097574011f, -0.3413193965f));
  calibrated.b = dot(lms, float3(-0.0041960863f, -0.7034186147f, 1.7076147010f));
  return calibrated;
}
// RenoDX code end

void main(
    float4 position : SV_Position,
    float2 uv : TEXCOORD0,
    out float4 output : SV_Target0) {
  float3 color = t0.SampleLevel(s0_s, uv, cb0[2].x).rgb;
  // RenoDX code start: apply the selected optional post-processing passes.
  if (shader_injection.fx_rcas_sharpening >= 1.f) {
    color = ApplyRCAS(color, uv);
  }
  if (TECH_TEST_LOOK > 0.5f) {
    color = ApplyColorCalibration(color);
  }
  // RenoDX code end
  output = float4(color, 0.f);
}
