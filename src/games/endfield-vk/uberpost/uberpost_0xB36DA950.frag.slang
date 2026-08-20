// ---- Created with 3Dmigoto v1.3.16 on Thu Jul 16 20:38:41 2026
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r2.xyz = r1.zxy;
  r0.z = 0;
  while (true) {
    r0.w = cmp((int)r0.z >= 5);
    if (r0.w != 0) break;
    r0.w = icb[r0.z+0].x * cb1[0].z;
    r3.xy = -r0.xy * r0.ww + v1.xy;
    r3.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
    r3.xyz = r3.xyz + r2.yzx;
    r0.w = (int)r0.z + 1;
    r2.xyz = r3.zxy;
    r0.z = r0.w;
    continue;
  }
  r0.xyz = cb0[27].xxx * r2.xyz;
  r1.xyz = float3(0.166666672,0.166666672,0.166666672) * r0.xyz;
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
  r0.xyz = -r0.xyz * float3(0.166666672,0.166666672,0.166666672) + r2.xyz;
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
  Vanilla shader code from 0xB36DA950:
    float3 _269 = clamp(((log2(max((((lerp(_161, (_161 - ((_161 * (max((_14_m10.w * _188) * _188, _184 - _14_m10.x) / max(_184, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_171.x ? _174.x : _166.x, _171.y ? _174.y : _166.y, _171.z ? _174.z : _166.z) * _14_m11.xyz), _14_m9.x.xxx) * lerp(_14_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_250, _250), 0.0f, 1.0f), _14_m2.y).xxx)) * _14_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _275 = _269.z * _14_m7.z;
    float _276 = floor(_275);
    float2 _282 = ((_269.xy * _14_m7.z) * _14_m7.xy) + (_14_m7.xy * 0.5f);
    float3 _283 = float3(_282.x, _282.y, _269.z);
    _283.x = _282.x + (_276 * _14_m7.y);
    float3 _300 = lerp(_11.SampleLevel(_12, _283.xy, 0.0f).xyz, _11.SampleLevel(_12, _283.xy + float2(_14_m7.y, 0.0f), 0.0f).xyz, (_275 - _276).xxx);
    float3 _301 = _300 * 12.9200000762939453125f;
    float3 _305 = (pow(abs(_300), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _306 = bool3(_300.x <= 0.003130800090730190277099609375f.xxx.x, _300.y <= 0.003130800090730190277099609375f.xxx.y, _300.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_306.x ? _301.x : _305.x, _306.y ? _301.y : _305.y, _306.z ? _301.z : _305.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_135.w, 1.0f));
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