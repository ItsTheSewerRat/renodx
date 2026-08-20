// ---- Created with 3Dmigoto v1.3.16 on Thu Jul 16 20:38:41 2026
#include "../common.hlsl"
[[vk::binding(7, 3)]] Texture2D<float4> t4 : register(t4);

[[vk::binding(8, 3)]] Texture2D<float4> t3 : register(t3);

[[vk::binding(4, 3)]] Texture2D<float4> t2 : register(t2);

[[vk::binding(6, 3)]] Texture2D<float4> t1 : register(t1);

[[vk::binding(5, 3)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(1, 3)]] SamplerState s2_s : register(s2);

[[vk::binding(2, 3)]] SamplerState s1_s : register(s1);

[[vk::binding(3, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(9, 3)]] cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

[[vk::binding(10, 3)]] cbuffer cb0 : register(b0)
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.SampleLevel(s2_s, v1.xy, 0).xyzw;
  r1.xy = -cb1[0].xy + v1.xy;
  r1.z = dot(r1.xy, r1.xy);
  r1.z = sqrt(r1.z);
  r1.w = log2(r1.z);
  r1.w = cb1[0].w * r1.w;
  r1.w = exp2(r1.w);
  r1.xy = r1.xy * r1.ww;
  r1.z = max(0.00999999978, r1.z);
  r1.z = 1 / r1.z;
  r1.z = -1 + r1.z;
  r1.z = cb1[25].z * r1.z + 1;
  r1.xy = r1.xy * r1.zz;
  r2.xyz = r0.zxy;
  r1.z = 0;
  while (true) {
    r1.w = cmp((int)r1.z >= 5);
    if (r1.w != 0) break;
    r1.w = icb[r1.z+0].x * cb1[0].z;
    r3.xy = -r1.xy * r1.ww + v1.xy;
    r3.xyz = t0.SampleLevel(s2_s, r3.xy, 0).xyz;
    r3.xyz = r3.xyz + r2.yzx;
    r1.w = (int)r1.z + 1;
    r2.xyz = r3.zxy;
    r1.z = r1.w;
    continue;
  }
  r0.xyz = float3(0.166666672,0.166666672,0.166666672) * r2.xyz;
  r1.xyzw = t1.SampleLevel(s2_s, v1.xy, 0).xyzw;
  r2.w = -cb1[9].z + 1;
  r3.xyz = r2.www * r1.zxy;
  r3.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r3.xyz);
  r4.xyz = log2(r1.zxy);
  r4.xyz = float3(0.330000013,0.330000013,0.330000013) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r4.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r2.w = max(r0.y, r0.z);
  r2.w = max(r2.w, r0.x);
  r5.xy = -cb1[10].yx + r2.ww;
  r3.w = max(0, r5.x);
  r3.w = min(cb1[10].z, r3.w);
  r3.w = r3.w * r3.w;
  r3.w = cb1[10].w * r3.w;
  r3.w = max(r3.w, r5.y);
  r2.w = max(9.99999975e-005, r2.w);
  r2.w = r3.w / r2.w;
  r5.xyz = r2.www * r0.xyz;
  r5.xyz = -r5.xyz * cb1[9].zzz + r0.xyz;
  r1.xyz = r3.xyz ? r4.xyz : r1.zxy;
  r1.xyz = r1.xyz * cb1[11].zxy + r5.xyz;
  r1.xyz = -r2.xyz * float3(0.166666672,0.166666672,0.166666672) + r1.xyz;
  r0.xyz = cb1[9].xxx * r1.xyz + r0.xyz;
  o0.w = saturate(r1.w + r0.w);
  r0.w = cb1[16].z + cb1[16].x;
  r1.x = dot(cb1[16].xx, cb1[16].zz);
  r0.w = -r1.x + r0.w;
  r1.xy = -cb1[17].xy + v1.xy;
  r1.zw = float2(-0.5,-0.5) + r1.xy;
  r2.x = r1.z / r1.w;
  r2.y = cmp(abs(r2.x) < 1);
  r2.z = 1 / abs(r2.x);
  r2.z = r2.y ? abs(r2.x) : r2.z;
  r2.w = r2.z * r2.z;
  r3.x = r2.w * 0.0872929022 + -0.301894993;
  r2.w = r3.x * r2.w + 1;
  r3.x = r2.w * r2.z;
  r2.z = -r2.w * r2.z + 1.57079637;
  r2.y = r2.y ? r3.x : r2.z;
  r2.x = cmp(r2.x < 0);
  r2.x = r2.x ? -r2.y : r2.y;
  r2.y = cmp(r1.z >= 0);
  r2.y = r2.y ? 3.1415925 : -3.1415925;
  r2.z = cmp(r1.w < 0);
  r2.z = r2.z ? 1.000000 : 0;
  r2.x = r2.y * r2.z + r2.x;
  r2.x = 3.14159274 + r2.x;
  r2.x = 0.159154937 * r2.x;
  r1.z = dot(r1.zw, r1.zw);
  r1.z = sqrt(r1.z);
  r2.y = r1.z + r1.z;
  r1.zw = r2.xy * cb1[18].xy + cb1[18].zw;
  r1.zw = cb1[17].zw * cb0[20].yy + r1.zw;
  r1.z = t3.SampleBias(s0_s, r1.zw, cb0[26].x).x;
  r1.z = r1.z * r0.y;
  r1.w = cb1[20].y * r0.y;
  r1.z = saturate(r1.z * cb1[20].x + r1.w);
  r0.xyz = cb1[7].www * r0.xyz;
  /*
  Vanilla shader code from 0xFE6983A2:
    float3 _321 = clamp(((log2(max(((_214.xyz * _18_m7.w).xyz * 5.555555820465087890625f) + 0.04799599945545196533203125f.xxx, 0.0f.xxx)) * 0.3010300099849700927734375f) * 0.24416099488735198974609375f) + 0.3860360085964202880859375f.xxx, 0.0f.xxx, 1.0f.xxx);
    float _327 = _321.z * _18_m7.z;
    float _328 = floor(_327);
    float2 _334 = ((_321.xy * _18_m7.z) * _18_m7.xy) + (_18_m7.xy * 0.5f);
    float3 _335 = float3(_334.x, _334.y, _321.z);
    _335.x = _334.x + (_328 * _18_m7.y);
    float3 _353 = lerp(_11.SampleLevel(_16, _335.xy, 0.0f).xyz, _11.SampleLevel(_16, _335.xy + float2(_18_m7.y, 0.0f), 0.0f).xyz, (_327 - _328).xxx).xyz;
    float3 _354 = _353 * 12.9200000762939453125f;
    float3 _358 = (pow(abs(_353), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _359 = bool3(_353.x <= 0.003130800090730190277099609375f.xxx.x, _353.y <= 0.003130800090730190277099609375f.xxx.y, _353.z <= 0.003130800090730190277099609375f.xxx.z);
  */
  // RenoDX code start: apply the selected SDR/HDR grade using the preserved linear scene color.
  LUTSampleResult lut_sample = LUTSAMPLE(s2_s, cb1[7].xyz, t2, r0.yzx);
  float3 graded_linear;
  [branch]
  if (shader_injection.tone_map_type == 0.f) {
    graded_linear = SDRGRADE(lut_sample);
  } else {
    graded_linear = HDRGRADE(lut_sample);
  }
  float3 graded_encoded = renodx::color::srgb::EncodeSafe(graded_linear);
  // RenoDX code end
  r1.w = 1 + -r0.w;
  r1.w = -cb1[16].y + r1.w;
  r0.w = -cb1[16].y + r0.w;
  r2.z = -r1.z * cb1[20].z + r1.z;
  r2.w = -cb1[16].w + 1;
  r1.xy = r2.ww * r1.xy;
  r1.xy = r2.xy * cb1[16].ww + r1.xy;
  r1.xy = r1.xy * cb1[19].xy + cb1[19].zw;
  r1.x = t4.SampleBias(s1_s, r1.xy, cb0[26].x).x;
  r1.x = r1.z * r1.x;
  r1.x = r1.x * cb1[20].z + r2.z;
  r0.w = r0.w + -r1.w;
  r1.x = r1.x + -r1.w;
  r0.w = 1 / r0.w;
  r0.w = saturate(r1.x * r0.w);
  r1.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r1.y = r1.x * r0.w;
  r0.xyz = graded_encoded;
  r0.w = -r1.x * r0.w + 1;
  r1.xzw = cb1[22].xyz * r0.www;
  r1.xyz = cb1[21].xyz * r1.yyy + r1.xzw;
  r1.xyz = r1.xyz + -r0.xyz;
  o0.xyz = cb1[20].www * r1.xyz + r0.xyz;
  // RenoDX code start: return the vanilla composite to linear, then apply optional grain and output encoding.
  o0.xyz = renodx::color::srgb::DecodeSafe(o0.xyz);
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