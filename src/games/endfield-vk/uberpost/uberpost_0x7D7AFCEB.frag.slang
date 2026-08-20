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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r6.xy = -cb1[1].xy + v1.xy;
  r3.w = -cb1[2].x + 1;
  r3.w = cb1[1].w * r3.w + cb1[2].x;
  r6.xy = abs(r6.xy) * r3.ww;
  r3.w = saturate(cb1[2].x * 1.04999995);
  r3.w = r3.w * 1.5 + -1;
  r3.w = cb1[1].w * r3.w + 1;
  r3.w = r6.x * r3.w;
  r4.w = cb1[2].x * 2 + -1;
  r4.w = cb1[1].w * r4.w + 1;
  r6.x = saturate(cb1[2].x + -2.79999995);
  r6.x = 5 * r6.x;
  r6.y = saturate(r6.y * r4.w + r6.x);
  r4.w = cb0[27].z + -1;
  r4.w = cb1[2].w * r4.w + 1;
  r6.z = cb0[27].z * 0.5625 + -r4.w;
  r4.w = cb1[1].w * r6.z + r4.w;
  r6.x = saturate(r4.w * r3.w);
  r6.xy = log2(r6.xy);
  r6.xy = cb1[2].zz * r6.xy;
  r6.xy = exp2(r6.xy);
  r2.w = r2.w * r2.w;
  r2.w = cb1[10].w * r2.w;
  r2.w = max(r2.w, r5.y);
  r0.w = max(9.99999975e-005, r0.w);
  r0.w = r2.w / r0.w;
  r7.xyz = r0.xyz * r0.www;
  r7.xyz = -r7.xyz * cb1[9].zzz + r0.xyz;
  r1.xyz = r3.xyz ? r4.xyz : r1.zxy;
  r1.xyz = r1.xyz * cb1[11].zxy + r7.xyz;
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
  r0.w = dot(r6.xy, r6.xy);
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
  Vanilla shader code from 0x7D7AFCEB:
    float3 _398 = (((lerp(_276, (_276 - ((_276 * (max((_16_m10.w * _303) * _303, _299 - _16_m10.x) / max(_299, 9.9999997473787516355514526367188e-05f))) * _16_m9.z)) + (float3(_286.x ? _289.x : _281.x, _286.y ? _289.y : _281.y, _286.z ? _289.z : _281.z) * _16_m11.xyz), _16_m9.x.xxx) * lerp(1.0f.xxx, _326.xyz, lerp(_16_m3.x, clamp((_16_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_326.x, _326.y), _326.z) - 0.20000000298023223876953125f)).xxx)) * lerp(_16_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_386, _386), 0.0f, 1.0f), _16_m2.y).xxx)) * _16_m7.w) * 5.555555820465087890625f;
    float3 _405 = clamp(((log2(max(_398 + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _411 = _405.z * _16_m7.z;
    float _412 = floor(_411);
    float2 _418 = ((_405.xy * _16_m7.z) * _16_m7.xy) + (_16_m7.xy * 0.5f);
    float3 _419 = float3(_418.x, _418.y, _405.z);
    _419.x = _418.x + (_412 * _16_m7.y);
    float3 _436 = lerp(_11.SampleLevel(_14, _419.xy, 0.0f).xyz, _11.SampleLevel(_14, _419.xy + float2(_16_m7.y, 0.0f), 0.0f).xyz, (_411 - _412).xxx);
    float3 _437 = _436 * 12.9200000762939453125f;
    float3 _441 = (pow(abs(_436), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _442 = bool3(_436.x <= 0.003130800090730190277099609375f.xxx.x, _436.y <= 0.003130800090730190277099609375f.xxx.y, _436.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_442.x ? _437.x : _441.x, _442.y ? _437.y : _441.y, _442.z ? _437.z : _441.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_133.w, 1.0f));
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.
  LUTSampleResult lut_sample = LUTSAMPLE(s1_s, cb1[7].xyz, t2, r0.yzx);
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