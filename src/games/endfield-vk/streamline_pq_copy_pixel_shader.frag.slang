// DLSS-G output is already display-ready HDR10/PQ. Preserve its code values
// when RenoDX copies the proxy image into the real swapchain back buffer.
[[vk::binding(0, 0)]] Texture2D<float4> t0;

float4 main(float4 vpos: SV_POSITION) : SV_TARGET {
  return t0.Load(int3(int2(vpos.xy), 0));
}
