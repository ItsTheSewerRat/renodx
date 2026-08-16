// DLSS-G HDR10 output is already display-ready PQ. Preserve its code values
// when copying it into the real RGB10A2 swapchain back buffer.
[[vk::binding(0, 0)]] Texture2D<float4> t0;

float4 main(float4 vpos: SV_POSITION) : SV_TARGET {
  return t0.Load(int3(int2(vpos.xy), 0));
}
