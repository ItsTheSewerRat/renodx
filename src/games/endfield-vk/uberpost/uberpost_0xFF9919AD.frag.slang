// ---- Created with 3Dmigoto v1.3.16 on Tue Jan 20 19:04:13 2026
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
  const float4 icb[] = { { 0.500000, 0, 0, 0},
                              { 1.000000, 0, 0, 0},
                              { 1.500000, 0, 0, 0},
                              { 2.000000, 0, 0, 0},
                              { 2.500000, 0, 0, 0} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[0].xy + v1.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = sqrt(r0.z);
  r0.w = log2(r0.z);
  r0.w = cb1[0].w * r0.w;
  r0.w = exp2(r0.w);
  r0.xy = r0.xy * r0.ww;
  r0.z = max(0.00999999978, r0.z);
  r0.z = 1 / r0.z;
  r0.z = -1 + r0.z;
  r0.z = cb1[25].z * r0.z + 1;
  r0.xy = r0.xy * r0.zz;
  r1.xyzw = t0.SampleLevel(s0_s, v1.xy, 0).xyzw;
  r2.xyz = r1.xyz;
  r0.z = 0;
  while (true) {
    r0.w = cmp((int)r0.z >= 5);
    if (r0.w != 0) break;
    r0.w = icb[r0.z+0].x * cb1[0].z;
    r3.xy = -r0.xy * r0.ww + v1.xy;
    r3.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
    r3.xyz = r3.xyz + r2.xyz;
    r0.w = (int)r0.z + 1;
    r2.xyz = r3.xyz;
    r0.z = r0.w;
    continue;
  }
  r0.xyzw = r2.xyzz;
  r2.xw = float2(0,0);
  r2.yz = cb0[0].wz;
  r3.xyzw = v1.xyxy + r2.xyzw;
  r1.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyzw = v1.xyxy + -r2.zwxy;
  r4.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
  r2.w = r1.x * 0.5 + r1.y;
  r2.w = r1.z * 0.5 + r2.w;
  r3.w = r4.x * 0.5 + r4.y;
  r3.w = r4.z * 0.5 + r3.w;
  r5.xyz = float3(0.166666672,0.166666672,0.166666672) * r0.xyz;
  r0.x = r0.x * 0.0833333358 + r5.y;
  r0.x = r0.w * 0.0833333358 + r0.x;
  r0.y = r3.x * 0.5 + r3.y;
  r0.y = r3.z * 0.5 + r0.y;
  r0.z = r2.x * 0.5 + r2.y;
  r0.z = r2.z * 0.5 + r0.z;
  r6.xyz = min(r4.xyz, r3.xyz);
  r6.xyz = min(r6.xyz, r1.xyz);
  r6.xyz = min(r6.xyz, r2.xyz);
  r7.xyz = max(r4.xyz, r3.xyz);
  r7.xyz = max(r7.xyz, r1.xyz);
  r7.xyz = max(r7.xyz, r2.xyz);
  r8.xyz = float3(0.25,0.25,0.25) / r7.xyz;
  r8.xyz = r8.xyz * r6.xyz;
  r7.xyz = float3(1,1,1) + -r7.xyz;
  r6.xyz = r6.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r6.xyz = float3(1,1,1) / r6.xyz;
  r6.xyz = r7.xyz * r6.xyz;
  r6.xyz = max(-r8.xyz, r6.xyz);
  r0.w = max(r6.y, r6.z);
  r0.w = max(r6.x, r0.w);
  r0.w = min(0, r0.w);
  r0.w = max(-0.1875, r0.w);
  r0.w = cb1[24].x * r0.w;
  r4.w = r3.w + r2.w;
  r4.w = r4.w + r0.y;
  r4.w = r4.w + r0.z;
  r4.w = r4.w * 0.25 + -r0.x;
  r5.w = max(r3.w, r0.x);
  r5.w = max(r5.w, r2.w);
  r6.x = max(r0.y, r0.z);
  r5.w = max(r6.x, r5.w);
  r0.x = min(r3.w, r0.x);
  r0.x = min(r2.w, r0.x);
  r0.y = min(r0.y, r0.z);
  r0.x = min(r0.x, r0.y);
  r0.x = r5.w + -r0.x;
  r0.x = 1 / r0.x;
  r0.x = saturate(abs(r4.w) * r0.x);
  r0.x = r0.x * -0.5 + 1;
  r0.x = r0.w * r0.x;
  r0.y = r0.x * 4 + 1;
  r0.y = 1 / r0.y;
  r1.xyz = r4.zxy + r1.zxy;
  r1.xyz = r1.xyz + r2.zxy;
  r1.xyz = r1.xyz + r3.zxy;
  r0.xzw = r0.xxx * r1.xyz + r5.zxy;
  r0.xyz = r0.xzw * r0.yyy;
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
  Vanilla shader code from 0xFF9919AD:
    float3 _433 = clamp(((log2(max((((lerp(_325, (_325 - ((_325 * (max((_14_m10.w * _352) * _352, _348 - _14_m10.x) / max(_348, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_335.x ? _338.x : _330.x, _335.y ? _338.y : _330.y, _335.z ? _338.z : _330.z) * _14_m11.xyz), _14_m9.x.xxx) * lerp(_14_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_414, _414), 0.0f, 1.0f), _14_m2.y).xxx)) * _14_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _439 = _433.z * _14_m7.z;
    float _440 = floor(_439);
    float2 _446 = ((_433.xy * _14_m7.z) * _14_m7.xy) + (_14_m7.xy * 0.5f);
    float3 _447 = float3(_446.x, _446.y, _433.z);
    _447.x = _446.x + (_440 * _14_m7.y);
    float3 _464 = lerp(_11.SampleLevel(_12, _447.xy, 0.0f).xyz, _11.SampleLevel(_12, _447.xy + float2(_14_m7.y, 0.0f), 0.0f).xyz, (_439 - _440).xxx);
    float3 _465 = _464 * 12.9200000762939453125f;
    float3 _469 = (pow(abs(_464), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _470 = bool3(_464.x <= 0.003130800090730190277099609375f.xxx.x, _464.y <= 0.003130800090730190277099609375f.xxx.y, _464.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _482 = float3(_470.x ? _465.x : _469.x, _470.y ? _465.y : _469.y, _470.z ? _465.z : _469.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f);
    _4 = float4(_482, min(_141.w, 1.0f));
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