#include "../shared.h"

[[vk::binding(1, 3)]] Texture2D<float4> t0 : register(t0);
[[vk::binding(0, 3)]] SamplerState s0_s : register(s0);

void main(
    float4 position : SV_Position,
    float2 uv : TEXCOORD0,
    out float4 output : SV_Target0) {
  float3 color = t0.SampleLevel(s0_s, uv, 0.f).rgb;

  if (GODRAYS_INTENSITY == 0.f) {
    color = 0.f;
  } else if (GODRAYS_INTENSITY == 2.f) {
    color *= 2.f;
  } else if (GODRAYS_INTENSITY == 3.f) {
    color *= 3.f;
  }

  output = float4(color, 1.f);
}
