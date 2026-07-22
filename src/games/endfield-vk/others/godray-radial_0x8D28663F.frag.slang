#include "../shared.h"

[[vk::binding(2, 3)]]
cbuffer cb0 : register(b0) {
  float4 cb0[7];
}

void main(
    float4 position : SV_Position,
    float2 uv : TEXCOORD0,
    float opacity : TEXCOORD1,
    out float4 output : SV_Target0) {
  float2 centered_uv = (uv - 0.5f) * 2.f;
  float radial = saturate((length(centered_uv) - 1.f) / (cb0[3].y - 1.f));
  float4 color = cb0[6] * pow(radial, cb0[3].z);

  if (GODRAYS_INTENSITY == 0.f) {
    color = 0.f;
  } else if (GODRAYS_INTENSITY == 2.f) {
    color *= 2.f;
  } else if (GODRAYS_INTENSITY == 3.f) {
    color *= 3.f;
  }

  output = opacity * color;
}
