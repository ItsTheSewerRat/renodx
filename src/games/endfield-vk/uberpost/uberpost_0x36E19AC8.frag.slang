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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t1.SampleLevel(s0_s, v1.xy, 0).xyz;
  r1.xyz = log2(r0.zxy);
  r1.xyz = float3(0.330000013,0.330000013,0.330000013) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r0.w = -cb1[9].z + 1;
  r2.xyz = r0.zxy * r0.www;
  r2.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r2.xyz);
  r0.xyz = r2.xyz ? r1.xyz : r0.zxy;
  r1.xyzw = t0.SampleLevel(s0_s, v1.xy, 0).xyzw;
  r2.xyz = cb0[27].xxx * r1.zxy;
  r0.w = max(r2.y, r2.z);
  r0.w = max(r0.w, r2.x);
  r3.xy = -cb1[10].yx + r0.ww;
  r0.w = max(9.99999975e-005, r0.w);
  r2.w = max(0, r3.x);
  r2.w = min(cb1[10].z, r2.w);
  r2.w = r2.w * r2.w;
  r2.w = cb1[10].w * r2.w;
  r2.w = max(r2.w, r3.y);
  r0.w = r2.w / r0.w;
  r3.xyz = r2.xyz * r0.www;
  r3.xyz = -r3.xyz * cb1[9].zzz + r2.xyz;
  r0.xyz = r0.xyz * cb1[11].zxy + r3.xyz;
  r0.xyz = -r1.zxy * cb0[27].xxx + r0.xyz;
  o0.w = min(1, r1.w);
  r0.xyz = cb1[9].xxx * r0.xyz + r2.xyz;
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0x36E19AC8:
    float3 _160 = clamp(((log2(max(((lerp(_102, (_102 - ((_102 * (max((_14_m10.w * _129) * _129, _125 - _14_m10.x) / max(_125, 9.9999997473787516355514526367188e-05f))) * _14_m9.z)) + (float3(_112.x ? _115.x : _107.x, _112.y ? _115.y : _107.y, _112.z ? _115.z : _107.z) * _14_m11.xyz), _14_m9.x.xxx) * _14_m7.w) * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _166 = _160.z * _14_m7.z;
    float _167 = floor(_166);
    float2 _173 = ((_160.xy * _14_m7.z) * _14_m7.xy) + (_14_m7.xy * 0.5f);
    float3 _174 = float3(_173.x, _173.y, _160.z);
    _174.x = _173.x + (_167 * _14_m7.y);
    float3 _191 = lerp(_11.SampleLevel(_12, _174.xy, 0.0f).xyz, _11.SampleLevel(_12, _174.xy + float2(_14_m7.y, 0.0f), 0.0f).xyz, (_166 - _167).xxx);
    float3 _192 = _191 * 12.9200000762939453125f;
    float3 _196 = (pow(abs(_191), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _197 = bool3(_191.x <= 0.003130800090730190277099609375f.xxx.x, _191.y <= 0.003130800090730190277099609375f.xxx.y, _191.z <= 0.003130800090730190277099609375f.xxx.z);
    _4 = float4(float3(_197.x ? _192.x : _196.x, _197.y ? _192.y : _196.y, _197.z ? _192.z : _196.z) + (((frac(dot(float2(171.0f, 231.0f), _3 * _6_m0.xy).xxx * float3(0.00970873795449733734130859375f, 0.0140845067799091339111328125f, 0.010309278033673763275146484375f)) - 0.5f.xxx) * 0.0039215688593685626983642578125f.xxx) * 0.3499999940395355224609375f), min(_97.w, 1.0f));
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.
  LUTSampleResult lut_sample = LUTSAMPLE(s0_s, cb1[7].xyz, t2, r0.yzx);
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
  return;
}