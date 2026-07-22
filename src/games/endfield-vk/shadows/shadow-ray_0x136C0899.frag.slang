// ---- Created with 3Dmigoto v1.3.16 on Sun Jul 19 21:15:57 2026
#include "../shared.h"

[[vk::binding(7, 3)]] Texture2D<float4> t2 : register(t2);

[[vk::binding(6, 3)]] Texture2D<float4> t1 : register(t1);

[[vk::binding(8, 3)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(5, 3)]] SamplerState s1_s : register(s1);

[[vk::binding(4, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(3, 3)]]
cbuffer cb2 : register(b2)
{
  float4 cb2[385];
}

[[vk::binding(2, 3)]]
cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

[[vk::binding(1, 3)]]
cbuffer cb0 : register(b0)
{
  float4 cb0[82];
}




// 3Dmigoto declarations
#define cmp -


[earlydepthstencil]
void main(
  float4 v0 : SV_Position0,
  [[vk::location(2)]] nointerpolation uint v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[4].zw * v0.xy;
  r0.zw = r0.xy * float2(2,2) + float2(-1,-1);
  r1.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.xyzw = cb0[25].xyzw * -r0.wwww;
  r2.xyzw = cb0[24].xyzw * r0.zzzz + r2.xyzw;
  r1.xyzw = cb0[26].xyzw * r1.xxxx + r2.xyzw;
  r1.xyzw = cb0[27].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.z = cb1[4].y * 0.5;
  r0.w = (int)v3.x * 3;
  r0.z = cb2[r0.w+2].w * r0.z;
  r2.xyz = cb2[r0.w+2].xyz + cb2[r0.w+1].xyz;
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r2.x = cmp(r0.z >= r1.w);
  if (r2.x != 0) {
    r0.xy = t2.SampleLevel(s1_s, r0.xy, 0).xy;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r2.x = dot(float2(1,1), abs(r0.xy));
    r2.y = 1 + -r2.x;
    r2.w = cmp(r2.y < 0);
    r3.xy = cmp(r0.xy >= float2(0,0));
    r3.zw = float2(1,1) + -abs(r0.yx);
    r3.xy = r3.xy ? float2(1,1) : float2(-1,-1);
    r3.xy = r3.zw * r3.xy;
    r2.xz = r2.ww ? r3.xy : r0.xy;
    r0.x = dot(r2.xyz, r2.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r0.x = cb1[4].x * 1.20000005;
    r0.y = cb2[r0.w+1].w * r0.x;
    r2.w = cb2[r0.w+2].w / r0.y;
    r2.w = ceil(r2.w);
    r2.w = (uint)r2.w;
    r2.w = min(8, (uint)r2.w);
    r0.x = r0.x * cb2[r0.w+1].w + -cb2[r0.w+1].w;
    r3.xyz = cb2[r0.w+3].xyz * r0.xxx + cb2[r0.w+1].xyz;
    r0.x = cb2[r0.w+1].w + 9.99999975e-006;
    r4.y = 0.5;
    r5.xyzw = float4(0,0,0,0);
    r6.xyz = r3.xyz;
    r3.w = 1;
    while (true) {
      r4.z = cmp((uint)r3.w >= (uint)r2.w);
      if (r4.z != 0) break;
      r7.xyz = r6.xyz + -r1.xyz;
      r4.z = dot(r7.xyz, r7.xyz);
      r4.z = sqrt(r4.z);
      r4.w = dot(r7.xyz, r2.xyz);
      r6.w = cb2[r0.w+1].w + r4.w;
      r7.w = cmp(0 >= r4.w);
      r8.x = cmp(0 >= r6.w);
      r8.y = cmp(r4.z < r0.x);
      r8.y = r7.w ? r8.y : 0;
      r8.x = (int)r8.y | (int)r8.x;
      if (r8.x == 0) {
        r8.x = cmp(cb2[r0.w+1].w >= abs(r4.w));
        if (r8.x != 0) {
          r8.xyz = -r2.xyz * r4.www + r6.xyz;
          r9.xyz = r2.xyz * cb2[r0.w+1].www + r6.xyz;
          r9.xyz = r9.xyz + r8.xyz;
          r7.xyz = r9.xyz * float3(0.5,0.5,0.5) + -r1.xyz;
          if (r7.w != 0) {
            r4.w = abs(r4.w) * abs(r4.w);
            r4.w = cb2[r0.w+1].w * cb2[r0.w+1].w + -r4.w;
            r4.w = sqrt(r4.w);
            r8.xyz = -r8.xyz + r1.xyz;
            r7.w = dot(r8.xyz, r8.xyz);
            r7.w = sqrt(r7.w);
            r7.w = r7.w + -r4.w;
            r4.w = r7.w / r4.w;
            r4.w = min(1, r4.w);
          } else {
            r4.w = 1;
          }
          r4.w = r4.w * r6.w;
          r4.w = 0.5 * r4.w;
          r6.w = dot(r7.xyz, r7.xyz);
          r4.z = sqrt(r6.w);
        } else {
          r4.w = cb2[r0.w+1].w;
        }
        r6.w = dot(r7.xyz, r7.xyz);
        r6.w = rsqrt(r6.w);
        r7.xyz = r7.yzx * r6.www;
        r4.w = r4.w * r4.w;
        r4.w = r4.z * r4.z + -r4.w;
        r4.w = sqrt(r4.w);
        r4.z = r4.w / r4.z;
        r4.z = r4.z * 255 + 0.5;
        r4.x = 0.00390625 * r4.z;
        r4.xz = t1.SampleLevel(s1_s, r4.xy, 0).zw;
        r8.xy = r4.xz * cb1[1].xy + cb1[1].zw;
        r8.yzw = r8.yyy * r7.xyz;
        r7.xyzw = float4(0.282094806,-0.488602489,0.488602489,-0.488602489) * r8.xyzw;
      } else {
        r7.xyzw = float4(0,0,0,0);
      }
      r5.xyzw = r7.xyzw + r5.xyzw;
      r6.xyz = cb2[r0.w+3].xyz * r0.yyy + r6.xyz;
      r3.w = (int)r3.w + 1;
    }
    r0.x = saturate(r1.w / r0.z);
    r0.x = -0.300000012 + r0.x;
    r0.x = 1.42857146 * r0.x;
    r0.x = max(0, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = cb2[r0.w+3].w * r0.x;
    o0.xyzw = r5.xyzw * r0.xxxx;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}
