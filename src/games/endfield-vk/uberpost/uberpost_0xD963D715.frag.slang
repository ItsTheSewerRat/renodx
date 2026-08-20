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
  o0.w = min(1, r0.w);
  r1.xyz = cb0[27].xxx * r0.xyz;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r0.w, r1.x);
  r2.xy = -cb1[10].yx + r0.ww;
  r0.w = max(9.99999975e-005, r0.w);
  r1.w = max(0, r2.x);
  r1.w = min(cb1[10].z, r1.w);
  r1.w = r1.w * r1.w;
  r1.w = cb1[10].w * r1.w;
  r1.w = max(r1.w, r2.y);
  r0.w = r1.w / r0.w;
  r2.xyz = r1.xyz * r0.www;
  r2.xyz = -r2.xyz * cb1[9].zzz + r1.xyz;
  r3.xyz = t1.SampleLevel(s0_s, v1.xy, 0).xyz;
  r4.xyz = log2(r3.zxy);
  r4.xyz = float3(0.330000013,0.330000013,0.330000013) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r4.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r0.w = -cb1[9].z + 1;
  r5.xyz = r3.zxy * r0.www;
  r5.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r5.xyz);
  r3.xyz = r5.xyz ? r4.xyz : r3.zxy;
  r2.xyz = r3.xyz * cb1[11].zxy + r2.xyz;
  r0.xyz = -r0.xyz * cb0[27].xxx + r2.xyz;
  r0.xyz = cb1[9].xxx * r0.xyz + r1.xyz;
  r1.xyz = t3.SampleLevel(s1_s, v1.xy, 0).xyz;
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
  Vanilla shader code from 0xD963D715:
    float3 _401 = (((lerp(_279, (_279 - ((_279 * (max((_16_m10.w * _306) * _306, _302 - _16_m10.x) / max(_302, 9.9999997473787516355514526367188e-05f))) * _16_m9.z)) + (float3(_289.x ? _292.x : _284.x, _289.y ? _292.y : _284.y, _289.z ? _292.z : _284.z) * _16_m11.xyz), _16_m9.x.xxx) * lerp(1.0f.xxx, _329.xyz, lerp(_16_m3.x, clamp((_16_m3.x * 3.0f) - 2.0f, 0.0f, 1.0f), step(0.0f, min(min(_329.x, _329.y), _329.z) - 0.20000000298023223876953125f)).xxx)) * lerp(_16_m4.xyz, 1.0f.xxx, pow(clamp(1.0f - dot(_389, _389), 0.0f, 1.0f), _16_m2.y).xxx)) * _16_m7.w) * 5.555555820465087890625f;
    float3 _408 = clamp(((log2(max(_401 + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _414 = _408.z * _16_m7.z;
    float _415 = floor(_414);
    float2 _421 = ((_408.xy * _16_m7.z) * _16_m7.xy) + (_16_m7.xy * 0.5f);
    float3 _422 = float3(_421.x, _421.y, _408.z);
    _422.x = _421.x + (_415 * _16_m7.y);
    float3 _439 = lerp(_11.SampleLevel(_14, _422.xy, 0.0f).xyz, _11.SampleLevel(_14, _422.xy + float2(_16_m7.y, 0.0f), 0.0f).xyz, (_414 - _415).xxx);
    float3 _440 = _439 * 12.9200000762939453125f;
    float3 _444 = (pow(abs(_439), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _445 = bool3(_439.x <= 0.003130800090730190277099609375f.xxx.x, _439.y <= 0.003130800090730190277099609375f.xxx.y, _439.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_445.x ? _440.x : _444.x, _445.y ? _440.y : _444.y, _445.z ? _440.z : _444.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_117.w, 1.0f));
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