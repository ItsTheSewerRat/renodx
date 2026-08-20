// ---- Created with 3Dmigoto v1.3.16 on Thu Jul 16 20:38:41 2026
#include "../common.hlsl"
[[vk::binding(6, 3)]] Texture2D<float4> t3 : register(t3);

[[vk::binding(3, 3)]] Texture2D<float4> t2 : register(t2);

[[vk::binding(5, 3)]] Texture2D<float4> t1 : register(t1);

[[vk::binding(4, 3)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(1, 3)]] SamplerState s1_s : register(s1);

[[vk::binding(2, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(7, 3)]] cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

[[vk::binding(8, 3)]] cbuffer cb0 : register(b0)
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r1.xyzw = t0.SampleLevel(s1_s, v1.xy, 0).xyzw;
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
    r4.xyz = t0.SampleLevel(s1_s, r4.xy, 0).xyz;
    r4.xyz = r4.xyz * float3(1,0,0) + r1.xyz;
    r0.z = r0.z + r0.z;
    r5.xy = -r2.xy * r0.zz + v1.xy;
    r5.xyz = t0.SampleLevel(s1_s, r5.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(1,0,0) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r5.xy = -r2.xy * cb1[25].yy * ca_strength + v1.xy;
    r5.xyz = t0.SampleLevel(s1_s, r5.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(0,1,0) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 2 + ca_base_offset;
    r5.xy = -r2.xy * r0.zz + v1.xy;
    r5.xyz = t0.SampleLevel(s1_s, r5.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(0,1,0) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r3.xyzw = ca_base_offset.xxxx * float4(2,2,2,2) + r3.xyzw;
    r3.xyzw = -r2.xyxy * r3.xyzw + v1.xyxy;
    r5.xyz = t0.SampleLevel(s1_s, r3.xy, 0).xyz;
    r4.xyz = r5.xyz * float3(0,1,0) + r4.xyz;
    r2.zw = -r2.xy * r2.zz + v1.xy;
    r5.xyz = t0.SampleLevel(s1_s, r2.zw, 0).xyz;
    r4.xyz = r5.xyz * float3(0,0,1) + r4.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 3 + ca_base_offset;
    r2.xy = -r2.xy * r0.zz + v1.xy;
    r2.xyz = t0.SampleLevel(s1_s, r2.xy, 0).xyz;
    r2.xyz = r2.xyz * float3(0,0,1) + r4.xyz;
    r3.xyz = t0.SampleLevel(s1_s, r3.zw, 0).xyz;
    r2.xyz = r3.xyz * float3(0,0,1) + r2.xyz;
    r2.xyz = float3(0.333333403,0.333333403,0.333333403) * r2.xyz;
  } else {
    r0.z = cmp(0.000000 != cb1[25].w);
    r3.xy = r0.xy * r0.ww;
    r0.xy = r0.zz ? r3.xy : r0.xy;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 2 + ca_base_offset;
    r0.zw = -r0.xy * r0.zz + v1.xy;
    r3.xyz = t0.SampleLevel(s1_s, r0.zw, 0).xyz;
    r1.xyz = r3.xyz * float3(0,1,0) + r1.xyz;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = ca_base_offset + ca_base_offset;
    // RenoDX code: apply the user-controlled chromatic-aberration scale to this vanilla offset.
    r0.z = cb1[25].y * ca_strength * 3 + r0.z;
    r0.xy = -r0.xy * r0.zz + v1.xy;
    r0.xyz = t0.SampleLevel(s1_s, r0.xy, 0).xyz;
    r2.xyz = r0.xyz * float3(0,0,1) + r1.xyz;
  }
  r0.xyz = cb0[27].xxx * r2.zxy;
  r1.xyz = t1.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.w = -cb1[9].z + 1;
  r3.xyz = r1.zxy * r0.www;
  r3.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r3.xyz);
  r4.xyz = log2(r1.zxy);
  r4.xyz = float3(0.330000013,0.330000013,0.330000013) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r4.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.w, r0.x);
  r5.xy = -cb1[10].yx + r0.ww;
  r2.w = max(0, r5.x);
  r2.w = min(cb1[10].z, r2.w);
  r5.xzw = t3.SampleLevel(s1_s, v1.xy, 0).xyz;
  r2.w = r2.w * r2.w;
  r2.w = cb1[10].w * r2.w;
  r2.w = max(r2.w, r5.y);
  r0.w = max(9.99999975e-005, r0.w);
  r0.w = r2.w / r0.w;
  r6.xyz = r0.xyz * r0.www;
  r6.xyz = -r6.xyz * cb1[9].zzz + r0.xyz;
  r1.xyz = r3.xyz ? r4.xyz : r1.zxy;
  r1.xyz = r1.xyz * cb1[11].zxy + r6.xyz;
  r1.xyz = -r2.zxy * cb0[27].xxx + r1.xyz;
  r0.xyz = cb1[9].xxx * r1.xyz + r0.xyz;
  r0.w = saturate(cb1[3].x * 3 + -2);
  r1.x = min(r5.x, r5.z);
  r1.x = min(r1.x, r5.w);
  r1.x = -0.200000003 + r1.x;
  r1.x = cmp(r1.x >= 0);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = -cb1[3].x + r0.w;
  r0.w = r1.x * r0.w + cb1[3].x;
  r1.xyz = float3(-1,-1,-1) + r5.wxz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0xE87BBC9E:
    float3 _347 = clamp(((log2(max((((lerp(_268, (_268 - ((_268 * (max((_16_m10.w * _295) * _295, _291 - _16_m10.x) / max(_291, 9.9999997473787516355514526367188e-05f))) * _16_m9.z)) + (float3(_278.x ? _281.x : _273.x, _278.y ? _281.y : _273.y, _278.z ? _281.z : _273.z) * _16_m11.xyz), _16_m9.x.xxx) * lerp(1.0f.xxx, _318.xyz, lerp(_16_m3.x, clamp((_16_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_318.x, _318.y), _318.z) - 0.20000000298023223876953125f)).xxx)) * _16_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _353 = _347.z * _16_m7.z;
    float _354 = floor(_353);
    float2 _360 = ((_347.xy * _16_m7.z) * _16_m7.xy) + (_16_m7.xy * 0.5f);
    float3 _361 = float3(_360.x, _360.y, _347.z);
    _361.x = _360.x + (_354 * _16_m7.y);
    float3 _378 = lerp(_11.SampleLevel(_14, _361.xy, 0.0f).xyz, _11.SampleLevel(_14, _361.xy + float2(_16_m7.y, 0.0f), 0.0f).xyz, (_353 - _354).xxx);
    float3 _379 = _378 * 12.9200000762939453125f;
    float3 _383 = (pow(abs(_378), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _384 = bool3(_378.x <= 0.003130800090730190277099609375f.xxx.x, _378.y <= 0.003130800090730190277099609375f.xxx.y, _378.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_384.x ? _379.x : _383.x, _384.y ? _379.y : _383.y, _384.z ? _379.z : _383.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_125.w, 1.0f));
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.
  LUTSampleResult lut_sample = LUTSAMPLE(s1_s, cb1[7].xyz, t2, r0.yzx);
  [branch]
  if (shader_injection.tone_map_type == 0.f) {
    o0.xyz = SDRGRADE(lut_sample);
  } else {
    o0.xyz = HDRGRADE(lut_sample);
  }
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