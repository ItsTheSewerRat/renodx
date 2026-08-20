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
  float4 r0,r1,r2,r3,r4;
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
  r1.xyz = t1.SampleLevel(s0_s, v1.xy, 0).xyz;
  r2.xyz = log2(r1.zxy);
  r2.xyz = float3(0.330000013,0.330000013,0.330000013) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r0.w = -cb1[9].z + 1;
  r3.xyz = r1.zxy * r0.www;
  r3.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r3.xyz);
  r1.xyz = r3.xyz ? r2.xyz : r1.zxy;
  r2.xyzw = t0.SampleLevel(s1_s, v1.xy, 0).xyzw;
  r3.xyz = cb0[27].xxx * r2.zxy;
  r0.w = max(r3.y, r3.z);
  r0.w = max(r0.w, r3.x);
  r4.xy = -cb1[10].yx + r0.ww;
  r0.w = max(9.99999975e-005, r0.w);
  r1.w = max(0, r4.x);
  r1.w = min(cb1[10].z, r1.w);
  r1.w = r1.w * r1.w;
  r1.w = cb1[10].w * r1.w;
  r1.w = max(r1.w, r4.y);
  r0.w = r1.w / r0.w;
  r4.xyz = r3.xyz * r0.www;
  r4.xyz = -r4.xyz * cb1[9].zzz + r3.xyz;
  r1.xyz = r1.xyz * cb1[11].zxy + r4.xyz;
  r1.xyz = -r2.zxy * cb0[27].xxx + r1.xyz;
  o0.w = min(1, r2.w);
  r1.xyz = cb1[9].xxx * r1.xyz + r3.xyz;
  r2.xyz = t3.SampleLevel(s1_s, v1.xy, 0).xyz;
  r0.w = min(r2.x, r2.y);
  r0.w = min(r0.w, r2.z);
  r2.xyz = float3(-1,-1,-1) + r2.zxy;
  r0.w = -0.200000003 + r0.w;
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? 1.000000 : 0;
  r1.w = saturate(cb1[3].x * 3 + -2);
  r1.w = -cb1[3].x + r1.w;
  r0.w = r0.w * r1.w + cb1[3].x;
  r2.xyz = r0.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0x56850F7A:
    float3 _238 = (((lerp(_116, (_116 - ((_116 * (max((_16_m10.w * _143) * _143, _139 - _16_m10.x) / max(_139, 9.9999997473787516355514526367188e-05f))) * _16_m9.z)) + (float3(_126.x ? _129.x : _121.x, _126.y ? _129.y : _121.y, _126.z ? _129.z : _121.z) * _16_m11.xyz), _16_m9.x.xxx) * lerp(1.0f.xxx, _166.xyz, lerp(_16_m3.x, clamp((_16_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_166.x, _166.y), _166.z) - 0.20000000298023223876953125f)).xxx)) * lerp(_16_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_226, _226), 0.0f, 1.0f), _16_m2.y).xxx)) * _16_m7.w) * 5.555555820465087890625f;
    float3 _245 = clamp(((log2(max(_238 + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _251 = _245.z * _16_m7.z;
    float _252 = floor(_251);
    float2 _258 = ((_245.xy * _16_m7.z) * _16_m7.xy) + (_16_m7.xy * 0.5f);
    float3 _259 = float3(_258.x, _258.y, _245.z);
    _259.x = _258.x + (_252 * _16_m7.y);
    float3 _276 = lerp(_11.SampleLevel(_14, _259.xy, 0.0f).xyz, _11.SampleLevel(_14, _259.xy + float2(_16_m7.y, 0.0f), 0.0f).xyz, (_251 - _252).xxx);
    float3 _277 = _276 * 12.9200000762939453125f;
    float3 _281 = (pow(abs(_276), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _282 = bool3(_276.x <= 0.003130800090730190277099609375f.xxx.x, _276.y <= 0.003130800090730190277099609375f.xxx.y, _276.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_282.x ? _277.x : _281.x, _282.y ? _277.y : _281.y, _282.z ? _277.z : _281.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_111.w, 1.0f));
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
  return;
}