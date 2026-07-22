
[[vk::binding(2, 0)]] Texture2D<float4> t1 : register(t1);

[[vk::binding(1, 0)]] Texture2D<float4> t0 : register(t0);

[[vk::binding(3, 0)]] SamplerState s0_s : register(s0);

[[vk::binding(0, 1)]] cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}

[[vk::binding(0, 0)]] [[vk::image_format("r11f_g11f_b10f")]] RWTexture2D<float3> u0 : register(u0);

#define cmp -

[numthreads(8, 8, 1)]
void main(uint3 vThreadID : SV_DispatchThreadID)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[2].zw * r0.zw;
  r0.zw = r0.zw * cb0[1].xy + float2(0.5,0.5);
  r1.xy = frac(r0.zw);
  r0.zw = floor(r0.zw);


  r2.xyzw = -r1.xyxy * float4(0.5,0.5,0.166666672,0.166666672) + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = r1.xyxy * r2.xyzw + float4(0.5,0.5,-0.5,-0.5);
  r2.xyzw = r1.xyxy * r2.xyzw + float4(0.166666672,0.166666672,0.166666672,0.166666672);
  r1.zw = r1.xy * float2(0.5,0.5) + float2(-1,-1);
  r1.xy = r1.xy * r1.xy;                  // f²
  r3.xy = -r1.xy * r1.zw + float2(0.333333313,0.333333313);   // ~1/3
  r1.xy = r1.xy * r1.zw + float2(0.666666687,0.666666687);    // ~2/3
  r1.zw = r3.xy + -r2.xy;
  r1.zw = r1.zw + -r2.zw;
  r2.xyzw = r2.xyzw + r1.zwxy;            // Final combined weights
  r3.xy = float2(1,1) / r2.xy;
  r3.xy = r1.zw * r3.xy + float2(1,1);    // Offset for samples 0,1
  r1.zw = float2(1,1) / r2.zw;
  r3.zw = r1.xy * r1.zw + float2(-1,-1);  // Offset for samples 2,3

  r1.xyzw = r3.zyxy + r0.zwzw;            // Sample positions (2 coords)
  r3.xyzw = r3.zwxw + r0.zwzw;            // Sample positions (2 more coords)

  r3.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r3.xyzw;
  r3.xyzw = cb0[1].zwzw * r3.xyzw;        // Scale by source texel size
  r1.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r1.xyzw;
  r1.xyzw = cb0[1].zwzw * r1.xyzw;

  r0.zw = -cb0[2].zw + float2(1,1);       // Max UV (1 - texel_size)
  r1.xyzw = min(r1.xyzw, r0.zwzw);
  r3.xyzw = min(r3.xyzw, r0.zwzw);

  r4.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;   // Sample 1
  r1.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;   // Sample 2

  r4.xyzw = r4.xyzx * r2.xxxx;            // Weight sample 1
  r1.xyzw = r1.xyzx * r2.zzzz + r4.xyzw;  // Weight sample 2 and add
  r1.xyzw = r1.xyzw * r2.yyyy;            // Apply Y weight

  r4.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;   // Sample 3
  r3.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;   // Sample 4

  r4.xyzw = r4.xyzx * r2.xxxx;
  r3.xyzw = r3.xyzx * r2.zzzz + r4.xyzw;
  r1.xyzw = r3.xyzw * r2.wwww + r1.xyzw;  // Final bicubic result

  r0.zw = cb0[2].xy + float2(-1,-1);      // Max valid pixel coordinate
  r0.xy = min(r0.xy, r0.zw);              // Clamp to bounds
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);                    // Mip level 0
  r0.xyz = t1.Load(r0.xyz).xyz;           // Load current mip pixel
  r1.xyzw = r1.xyzw + -r0.xyzx;           // (upsampled - current)
  r0.xyzw = cb0[0].xxxx * r1.xyzw + r0.xyzx;  // Apply blend factor

  r1.xy = (uint2)cb0[2].xy;
  r1.xy = cmp((uint2)r1.xy >= (uint2)vThreadID.xy);
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.x ? 1.000000 : 0;             // 1 if within bounds
  r0.xyzw = r1.xxxx * r0.xyzw;            // Zero out-of-bounds pixels
  u0[vThreadID.xy] = r0.xyz;
  return;
}
