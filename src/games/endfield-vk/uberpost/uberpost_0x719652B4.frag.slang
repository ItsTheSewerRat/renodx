#include "../common.hlsl"

[[vk::binding(5, 3)]] Texture2D<float4> t2 : register(t2);
[[vk::binding(3, 3)]] Texture2D<float4> t1 : register(t1);
[[vk::binding(4, 3)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(1, 3)]] SamplerState s1_s : register(s1);
[[vk::binding(2, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(6, 3)]] cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

[[vk::binding(7, 3)]] cbuffer cb0 : register(b0)
{
  float4 cb0[200];
}

#define cmp -

void main(
  float4 v0 : SV_Position0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[27].z + -1;
  r0.x = cb1[2].w * r0.x + 1;
  r0.y = cb0[27].z * 0.5625 + -r0.x;
  r0.x = cb1[1].w * r0.y + r0.x;
  r0.y = saturate(cb1[2].x * 1.04999995);
  r0.y = r0.y * 1.5 + -1;
  r0.y = cb1[1].w * r0.y + 1;
  r0.z = -cb1[2].x + 1;
  r0.z = cb1[1].w * r0.z + cb1[2].x;
  r1.xy = -cb1[1].xy + v1.xy;
  r0.zw = abs(r1.xy) * r0.zz;
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.z = cb1[2].x * 2 + -1;
  r0.z = cb1[1].w * r0.z + 1;
  r1.x = saturate(cb1[2].x + -2.79999995);
  r1.x = 5 * r1.x;
  r0.y = saturate(r0.w * r0.z + r1.x);
  r0.xy = log2(r0.xy);
  r0.xy = cb1[2].zz * r0.xy;
  r0.xy = exp2(r0.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb1[2].y * r0.x;
  r0.x = exp2(r0.x);
  // RenoDX code: interpolate between no vignette and the game vignette using the user setting.
  float vignette_value = lerp(1.0, r0.x, VIGNETTE_STRENGTH);
  // RenoDX code: defer the game vignette until after tonemapping.
  r0.x = 1.0;
  r0.yzw = -cb1[4].zxy + float3(1,1,1);
  r0.xyz = r0.xxx * r0.yzw + cb1[4].zxy;
  r1.xyz = t2.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.w = min(r1.x, r1.y);
  r0.w = min(r0.w, r1.z);
  r1.xyz = float3(-1,-1,-1) + r1.zxy;
  r0.w = -0.200000003 + r0.w;
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? 1.000000 : 0;
  r1.w = saturate(cb1[3].x * 3 + -2);
  r1.w = -cb1[3].x + r1.w;
  r0.w = r0.w * r1.w + cb1[3].x;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r2.xyzw = t0.SampleLevel(s1_s, v1.xy, 0).xyzw;
  r2.xyz = cb0[27].xxx * r2.zxy;
  o0.w = min(1, r2.w);
  r1.xyz = r2.xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0x719652B4:
    float3 _187 = clamp(((log2(max((((((_99.xyz * _6_m20.x) * lerp(1.0f.xxx, _108.xyz, lerp(_15_m3.x, clamp((_15_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_108.x, _108.y), _108.z) - 0.20000000298023223876953125f)).xxx)) * lerp(_15_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_168, _168), 0.0f, 1.0f), _15_m2.y).xxx)) * _15_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _193 = _187.z * _15_m7.z;
    float _194 = floor(_193);
    float2 _200 = ((_187.xy * _15_m7.z) * _15_m7.xy) + (_15_m7.xy * 0.5f);
    float3 _201 = float3(_200.x, _200.y, _187.z);
    _201.x = _200.x + (_194 * _15_m7.y);
    float3 _218 = lerp(_10.SampleLevel(_13, _201.xy, 0.0f).xyz, _10.SampleLevel(_13, _201.xy + float2(_15_m7.y, 0.0f), 0.0f).xyz, (_193 - _194).xxx);
    float3 _219 = _218 * 12.9200000762939453125f;
    float3 _223 = (pow(abs(_218), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _224 = bool3(_218.x <= 0.003130800090730190277099609375f.xxx.x, _218.y <= 0.003130800090730190277099609375f.xxx.y, _218.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_224.x ? _219.x : _223.x, _224.y ? _219.y : _223.y, _224.z ? _219.z : _223.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_99.w, 1.0f));
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.

  LUTSampleResult lut_sample = LUTSAMPLE(s1_s, cb1[7].xyz, t1, r0.yzx);
  [branch]
  if (shader_injection.tone_map_type == 0.f) {
    o0.xyz = SDRGRADE(lut_sample);
  } else {
    o0.xyz = HDRGRADE(lut_sample);
  }
  // RenoDX code: apply the user-controlled vignette after tonemapping.
  o0.xyz *= vignette_value;
  if (CUSTOM_GRAIN_STRENGTH > 0) {
    o0.xyz = renodx::effects::ApplyFilmGrain(
        o0.xyz,
        v1.xy,
        CUSTOM_RANDOM,
        CUSTOM_GRAIN_STRENGTH * 0.03f);
  }
  o0.xyz = renodx::draw::RenderIntermediatePass(o0.xyz);
  // RenoDX code end
  return;
}