// ---- Created with 3Dmigoto v1.3.16 on Thu Jul 16 20:38:41 2026
#include "../common.hlsl"
[[vk::binding(2, 3)]] Texture2D<float4> t1 : register(t1);

[[vk::binding(3, 3)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(1, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(4, 3)]] cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

[[vk::binding(5, 3)]] cbuffer cb0 : register(b0)
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[0].xy + v1.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.z);
  r0.w = max(0.00999999978, r0.w);
  r0.w = 1 / r0.w;
  r1.x = cb1[0].w * 0.5;
  r0.z = log2(r0.z);
  r0.z = r1.x * r0.z;
  r0.z = exp2(r0.z);
  r0.xy = r0.xy * r0.zz;
  r1.xyzw = t0.SampleLevel(s0_s, v1.xy, 0).xyzw;
  r1.xyz = float3(1,0,0) * r1.xyz;
  // RenoDX code start: scale the game's chromatic-aberration offsets with the user setting.
  float ca_strength = CHROMATIC_ABERRATION_STRENGTH;
  float ca_base_offset = cb1[0].z * ca_strength;
  // RenoDX code end
  r0.z = cmp(3 < cb1[25].x);
  if (r0.z != 0) {
    r2.xy = cmp(float2(0,0) != cb1[25].wz);
    r0.z = (int)r2.y | (int)r2.x;
    r2.xy = r0.xy * r0.ww;
    r2.xy = r0.zz ? r2.xy : r0.xy;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength + ca_base_offset;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r2.z = cb1[25].y * ca_strength + cb1[25].y * ca_strength;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r3.xyzw = cb1[25].yyyy * ca_strength * float4(3,3,4,4);
    r4.xy = -r2.xy * r0.zz + v1.xy;
    r4.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
    r4.xyz = r4.xyz * float3(1,0,0) + r1.xyz;
    r0.z = r0.z + r0.z;
    r5.xy = -r2.xy * r0.zz + v1.xy;
    r5.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(1,0,0) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r5.xy = -r2.xy * cb1[25].yy * ca_strength + v1.xy;
    r5.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(0,1,0) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 2 + ca_base_offset;
    r5.xy = -r2.xy * r0.zz + v1.xy;
    r5.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(0,1,0) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r3.xyzw = ca_base_offset.xxxx * float4(2,2,2,2) + r3.xyzw;
    r3.xyzw = -r2.xyxy * r3.xyzw + v1.xyxy;
    r5.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(0,1,0) + r4.xyz;
    r2.zw = -r2.xy * r2.zz + v1.xy;
    r5.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
    r4.xyz = r5.xyz * float3(0,0,1) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 3 + ca_base_offset;
    r2.xy = -r2.xy * r0.zz + v1.xy;
    r2.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
    r2.xyz = r2.xyz * float3(0,0,1) + r4.xyz;
    r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
    r2.xyz = r3.xyz * float3(0,0,1) + r2.xyz;
    r2.xyz = float3(0.333333403,0.333333403,0.333333403) * r2.xyz;
  } else {
    r0.z = cmp(0.000000 != cb1[25].w);
    r3.xy = r0.xy * r0.ww;
    r0.xy = r0.zz ? r3.xy : r0.xy;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 2 + ca_base_offset;
    r0.zw = -r0.xy * r0.zz + v1.xy;
    r3.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
    r1.xyz = r3.xyz * float3(0,1,0) + r1.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = ca_base_offset + ca_base_offset;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 3 + r0.z;
    r0.xy = -r0.xy * r0.zz + v1.xy;
    r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
    r2.xyz = r0.xyz * float3(0,0,1) + r1.xyz;
  }
  r0.xy = -cb1[1].xy + v1.xy;
  r0.z = -cb1[2].x + 1;
  r0.z = cb1[1].w * r0.z + cb1[2].x;
  r0.xy = abs(r0.xy) * r0.zz;
  r0.z = saturate(cb1[2].x * 1.04999995);
  r0.z = r0.z * 1.5 + -1;
  r0.z = cb1[1].w * r0.z + 1;
  r0.x = r0.x * r0.z;
  r0.z = cb1[2].x * 2 + -1;
  r0.z = cb1[1].w * r0.z + 1;
  r0.w = saturate(cb1[2].x + -2.79999995);
  r0.w = 5 * r0.w;
  r1.y = saturate(r0.y * r0.z + r0.w);
  r0.y = cb0[27].z + -1;
  r0.y = cb1[2].w * r0.y + 1;
  r0.z = cb0[27].z * 0.5625 + -r0.y;
  r0.y = cb1[1].w * r0.z + r0.y;
  r1.x = saturate(r0.x * r0.y);
  r0.xy = log2(r1.xy);
  r0.xy = cb1[2].zz * r0.xy;
  r0.xy = exp2(r0.xy);
  r1.xyz = cb0[27].xxx * r2.zxy;
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
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0xB1925280:
    float3 _323 = clamp(((log2(max(((((_258 * _6_m20.x) * lerp(_13_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_304, _304), 0.0f, 1.0f), _13_m2.y).xxx)) * _13_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _329 = _323.z * _13_m7.z;
    float _330 = floor(_329);
    float2 _336 = ((_323.xy * _13_m7.z) * _13_m7.xy) + (_13_m7.xy * 0.5f);
    float3 _337 = float3(_336.x, _336.y, _323.z);
    _337.x = _336.x + (_330 * _13_m7.y);
    float3 _354 = lerp(_10.SampleLevel(_11, _337.xy, 0.0f).xyz, _10.SampleLevel(_11, _337.xy + float2(_13_m7.y, 0.0f), 0.0f).xyz, (_329 - _330).xxx);
    float3 _355 = _354 * 12.9200000762939453125f;
    float3 _359 = (pow(abs(_354), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _360 = bool3(_354.x <= 0.003130800090730190277099609375f.xxx.x, _354.y <= 0.003130800090730190277099609375f.xxx.y, _354.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _373 = float3(_360.x ? _355.x : _359.x, _360.y ? _355.y : _359.y, _360.z ? _355.z : _359.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f);
    _4 = float4(_373, min(_118.w, 1.0f));
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.
  LUTSampleResult lut_sample = LUTSAMPLE(s0_s, cb1[7].xyz, t1, r0.yzx);
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
  o0.w = min(1, r1.w);
  return;
}