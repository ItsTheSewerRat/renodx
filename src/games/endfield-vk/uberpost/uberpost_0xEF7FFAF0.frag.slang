// ---- Created with 3Dmigoto v1.3.16 on Tue Jan 20 19:03:57 2026
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




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.SampleLevel(s1_s, v1.xy, 0).xyzw;
  r1.x = r0.x * 0.5 + r0.y;
  r1.x = r0.z * 0.5 + r1.x;
  r2.xw = float2(0,0);
  r2.yz = cb0[0].wz;
  r3.xyzw = v1.xyxy + -r2.zwxy;
  r2.xyzw = v1.xyxy + r2.xyzw;
  r1.yzw = t0.SampleLevel(s1_s, r3.xy, 0).xyz;
  r3.xyz = t0.SampleLevel(s1_s, r3.zw, 0).xyz;
  r3.w = r1.y * 0.5 + r1.z;
  r3.w = r1.w * 0.5 + r3.w;
  r4.x = max(r3.w, r1.x);
  r4.yzw = t0.SampleLevel(s1_s, r2.xy, 0).xyz;
  r2.xyz = t0.SampleLevel(s1_s, r2.zw, 0).xyz;
  r2.w = r4.y * 0.5 + r4.z;
  r2.w = r4.w * 0.5 + r2.w;
  r4.x = max(r2.w, r4.x);
  r5.x = r2.x * 0.5 + r2.y;
  r5.x = r2.z * 0.5 + r5.x;
  r5.y = r3.x * 0.5 + r3.y;
  r5.y = r3.z * 0.5 + r5.y;
  r5.z = max(r5.x, r5.y);
  r4.x = max(r5.z, r4.x);
  r5.z = min(r3.w, r1.x);
  r3.w = r2.w + r3.w;
  r2.w = min(r5.z, r2.w);
  r3.w = r3.w + r5.x;
  r5.x = min(r5.x, r5.y);
  r3.w = r3.w + r5.y;
  r1.x = r3.w * 0.25 + -r1.x;
  r2.w = min(r5.x, r2.w);
  r2.w = r4.x + -r2.w;
  r2.w = 1 / r2.w;
  r1.x = saturate(r2.w * abs(r1.x));
  r1.x = r1.x * -0.5 + 1;
  r5.xyz = max(r2.xyz, r1.yzw);
  r5.xyz = max(r5.xyz, r4.yzw);
  r5.xyz = max(r5.xyz, r3.xyz);
  r6.xyz = float3(0.25,0.25,0.25) / r5.xyz;
  r5.xyz = float3(1,1,1) + -r5.xyz;
  r7.xyz = min(r2.xyz, r1.yzw);
  r1.yzw = r4.wyz + r1.wyz;
  r4.xyz = min(r7.xyz, r4.yzw);
  r4.xyz = min(r4.xyz, r3.xyz);
  r1.yzw = r1.yzw + r3.zxy;
  r1.yzw = r1.yzw + r2.zxy;
  r2.xyz = r4.xyz * r6.xyz;
  r3.xyz = r4.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r3.xyz = float3(1,1,1) / r3.xyz;
  r3.xyz = r5.xyz * r3.xyz;
  r2.xyz = max(r3.xyz, -r2.xyz);
  r2.y = max(r2.y, r2.z);
  r2.x = max(r2.x, r2.y);
  r2.x = min(0, r2.x);
  r2.x = max(-0.1875, r2.x);
  r2.x = cb1[24].x * r2.x;
  r1.x = r2.x * r1.x;
  r0.xyz = r1.xxx * r1.yzw + r0.zxy;
  r1.x = r1.x * 4 + 1;
  r1.x = 1 / r1.x;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = cb0[27].xxx * r0.xyz;
  o0.w = min(1, r0.w);
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
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = cb0[27].z + -1;
  r0.w = cb1[2].w * r0.w + 1;
  r1.x = cb0[27].z * 0.5625 + -r0.w;
  r0.w = cb1[1].w * r1.x + r0.w;
  r1.x = saturate(cb1[2].x * 1.04999995);
  r1.x = r1.x * 1.5 + -1;
  r1.x = cb1[1].w * r1.x + 1;
  r1.y = -cb1[2].x + 1;
  r1.y = cb1[1].w * r1.y + cb1[2].x;
  r1.zw = -cb1[1].xy + v1.xy;
  r1.yz = abs(r1.zw) * r1.yy;
  r1.x = r1.y * r1.x;
  r1.x = saturate(r1.x * r0.w);
  r0.w = cb1[2].x * 2 + -1;
  r0.w = cb1[1].w * r0.w + 1;
  r1.w = saturate(cb1[2].x + -2.79999995);
  r1.w = 5 * r1.w;
  r1.y = saturate(r1.z * r0.w + r1.w);
  r1.xy = log2(r1.xy);
  r1.xy = cb1[2].zz * r1.xy;
  r1.xy = exp2(r1.xy);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb1[2].y * r0.w;
  r0.w = exp2(r0.w);
  // RenoDX code: interpolate between no vignette and the game vignette using the user setting.
  float vignette_value = lerp(1.0, r0.w, VIGNETTE_STRENGTH);
  // RenoDX code: defer the game vignette until after tonemapping.
  r0.w = 1.0;
  r1.xyz = -cb1[4].zxy + float3(1,1,1);
  r1.xyz = r0.www * r1.xyz + cb1[4].zxy;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0xEF7FFAF0:
    float3 _350 = clamp(((log2(max((_342 * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _356 = _350.z * _15_m7.z;
    float _357 = floor(_356);
    float2 _363 = ((_350.xy * _15_m7.z) * _15_m7.xy) + (_15_m7.xy * 0.5f);
    float3 _364 = float3(_363.x, _363.y, _350.z);
    _364.x = _363.x + (_357 * _15_m7.y);
    float3 _381 = lerp(_10.SampleLevel(_13, _364.xy, 0.0f).xyz, _10.SampleLevel(_13, _364.xy + float2(_15_m7.y, 0.0f), 0.0f).xyz, (_356 - _357).xxx);
    float3 _382 = _381 * 12.9200000762939453125f;
    float3 _386 = (pow(abs(_381), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _387 = bool3(_381.x <= 0.003130800090730190277099609375f.xxx.x, _381.y <= 0.003130800090730190277099609375f.xxx.y, _381.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _399 = float3(_387.x ? _382.x : _386.x, _387.y ? _382.y : _386.y, _387.z ? _382.z : _386.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f);
    _4 = float4(_399, min(_105.w, 1.0f));
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