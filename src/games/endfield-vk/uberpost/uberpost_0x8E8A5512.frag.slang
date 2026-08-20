// ---- Created with 3Dmigoto v1.3.16 on Tue Jan 20 19:04:00 2026
#include "../common.hlsl"
[[vk::binding(2, 3)]] Texture2D<float4> t2 : register(t2);

[[vk::binding(4, 3)]] Texture2D<float4> t1 : register(t1);

[[vk::binding(3, 3)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(1, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(5, 3)]] cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

[[vk::binding(6, 3)]] cbuffer cb0 : register(b0)
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
  r0.xw = float2(0,0);
  r0.yz = cb0[0].wz;
  r3.xyzw = v1.xyxy + r0.xyzw;
  r1.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r0.xyzw = v1.xyxy + -r0.zwxy;
  r4.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.w = r1.x * 0.5 + r1.y;
  r0.w = r1.z * 0.5 + r0.w;
  r2.w = r4.x * 0.5 + r4.y;
  r2.w = r4.z * 0.5 + r2.w;
  r3.w = r2.x * 0.5 + r2.y;
  r3.w = r2.z * 0.5 + r3.w;
  r4.w = r3.x * 0.5 + r3.y;
  r4.w = r3.z * 0.5 + r4.w;
  r5.x = r0.x * 0.5 + r0.y;
  r5.x = r0.z * 0.5 + r5.x;
  r5.yzw = min(r4.xyz, r3.xyz);
  r5.yzw = min(r5.yzw, r1.xyz);
  r5.yzw = min(r5.yzw, r0.xyz);
  r6.xyz = max(r4.xyz, r3.xyz);
  r6.xyz = max(r6.xyz, r1.xyz);
  r6.xyz = max(r6.xyz, r0.xyz);
  r7.xyz = float3(0.25,0.25,0.25) / r6.xyz;
  r7.xyz = r7.xyz * r5.yzw;
  r6.xyz = float3(1,1,1) + -r6.xyz;
  r5.yzw = r5.yzw * float3(4,4,4) + float3(-4,-4,-4);
  r5.yzw = float3(1,1,1) / r5.yzw;
  r5.yzw = r6.xyz * r5.yzw;
  r5.yzw = max(-r7.xyz, r5.yzw);
  r5.z = max(r5.z, r5.w);
  r5.y = max(r5.y, r5.z);
  r5.y = min(0, r5.y);
  r5.y = max(-0.1875, r5.y);
  r5.y = cb1[24].x * r5.y;
  r5.z = r2.w + r0.w;
  r5.z = r5.z + r4.w;
  r5.z = r5.z + r5.x;
  r5.z = r5.z * 0.25 + -r3.w;
  r5.w = max(r3.w, r2.w);
  r5.w = max(r5.w, r0.w);
  r6.x = max(r5.x, r4.w);
  r5.w = max(r6.x, r5.w);
  r2.w = min(r3.w, r2.w);
  r0.w = min(r2.w, r0.w);
  r2.w = min(r5.x, r4.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r5.w + -r0.w;
  r0.w = 1 / r0.w;
  r0.w = saturate(abs(r5.z) * r0.w);
  r0.w = r0.w * -0.5 + 1;
  r0.w = r5.y * r0.w;
  r2.w = r0.w * 4 + 1;
  r2.w = 1 / r2.w;
  r1.xyz = r4.zxy + r1.zxy;
  r0.xyz = r1.xyz + r0.zxy;
  r0.xyz = r0.xyz + r3.zxy;
  r0.xyz = r0.www * r0.xyz + r2.zxy;
  r0.xyz = r0.xyz * r2.www;
  r1.xyz = cb0[27].xxx * r0.xyz;
  r2.xyz = t1.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.w = -cb1[9].z + 1;
  r3.xyz = r2.zxy * r0.www;
  r3.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r3.xyz);
  r4.xyz = log2(r2.zxy);
  r4.xyz = float3(0.330000013,0.330000013,0.330000013) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r4.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r0.w = max(r1.y, r1.z);
  r0.w = max(r0.w, r1.x);
  r5.xy = -cb1[10].yx + r0.ww;
  r2.w = max(0, r5.x);
  r2.w = min(cb1[10].z, r2.w);
  r5.xz = -cb1[1].xy + v1.xy;
  r3.w = -cb1[2].x + 1;
  r3.w = cb1[1].w * r3.w + cb1[2].x;
  r5.xz = abs(r5.xz) * r3.ww;
  r3.w = saturate(cb1[2].x * 1.04999995);
  r3.w = r3.w * 1.5 + -1;
  r3.w = cb1[1].w * r3.w + 1;
  r3.w = r5.x * r3.w;
  r4.w = cb1[2].x * 2 + -1;
  r4.w = cb1[1].w * r4.w + 1;
  r5.x = saturate(cb1[2].x + -2.79999995);
  r5.x = 5 * r5.x;
  r6.y = saturate(r5.z * r4.w + r5.x);
  r4.w = cb0[27].z + -1;
  r4.w = cb1[2].w * r4.w + 1;
  r5.x = cb0[27].z * 0.5625 + -r4.w;
  r4.w = cb1[1].w * r5.x + r4.w;
  r6.x = saturate(r4.w * r3.w);
  r5.xz = log2(r6.xy);
  r5.xz = cb1[2].zz * r5.xz;
  r5.xz = exp2(r5.xz);
  r2.w = r2.w * r2.w;
  r2.w = cb1[10].w * r2.w;
  r2.w = max(r2.w, r5.y);
  r0.w = max(9.99999975e-005, r0.w);
  r0.w = r2.w / r0.w;
  r6.xyz = r1.xyz * r0.www;
  r6.xyz = -r6.xyz * cb1[9].zzz + r1.xyz;
  r2.xyz = r3.xyz ? r4.xyz : r2.zxy;
  r2.xyz = r2.xyz * cb1[11].zxy + r6.xyz;
  r0.xyz = -r0.xyz * cb0[27].xxx + r2.xyz;
  r0.xyz = cb1[9].xxx * r0.xyz + r1.xyz;
  r0.w = dot(r5.xz, r5.xz);
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
  Vanilla shader code from 0x8E8A5512:
    float3 _544 = clamp(((log2(max((((lerp(_436, (_436 - ((_436 * (max((_14_m10.w * _463) * _463, _459 - _14_m10.x) / max(_459, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_446.x ? _449.x : _441.x, _446.y ? _449.y : _441.y, _446.z ? _449.z : _441.z) * _14_m11.xyz), _14_m9.x.xxx) * lerp(_14_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_525, _525), 0.0f, 1.0f), _14_m2.y).xxx)) * _14_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _550 = _544.z * _14_m7.z;
    float _551 = floor(_550);
    float2 _557 = ((_544.xy * _14_m7.z) * _14_m7.xy) + (_14_m7.xy * 0.5f);
    float3 _558 = float3(_557.x, _557.y, _544.z);
    _558.x = _557.x + (_551 * _14_m7.y);
    float3 _575 = lerp(_11.SampleLevel(_12, _558.xy, 0.0f).xyz, _11.SampleLevel(_12, _558.xy + float2(_14_m7.y, 0.0f), 0.0f).xyz, (_550 - _551).xxx);
    float3 _576 = _575 * 12.9200000762939453125f;
    float3 _580 = (pow(abs(_575), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _581 = bool3(_575.x <= 0.003130800090730190277099609375f.xxx.x, _575.y <= 0.003130800090730190277099609375f.xxx.y, _575.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _593 = float3(_581.x ? _576.x : _580.x, _581.y ? _576.y : _580.y, _581.z ? _576.z : _580.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f);
    _4 = float4(_593, min(_135.w, 1.0f));
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.
  LUTSampleResult lut_sample = LUTSAMPLE(s0_s, cb1[7].xyz, t2, r0.yzx);
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