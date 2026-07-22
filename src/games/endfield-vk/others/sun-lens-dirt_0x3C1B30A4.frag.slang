[[vk::binding(4, 3)]] Texture2D<float4> t0 : register(t0);
[[vk::binding(3, 3)]] SamplerState s0_s : register(s0);

[[vk::binding(1, 3)]]
cbuffer cb1 : register(b1) {
  float4 cb1[7];
}

[[vk::binding(2, 3)]]
cbuffer cb0 : register(b0) {
  float4 cb0[200];
}

void main(
    float4 position : SV_Position,
    float2 uv : TEXCOORD0,
    float opacity : TEXCOORD1,
    out float4 output : SV_Target0) {
  output = opacity * cb1[6] * t0.SampleBias(s0_s, uv, cb0[26].x) * 0.25f;
}
