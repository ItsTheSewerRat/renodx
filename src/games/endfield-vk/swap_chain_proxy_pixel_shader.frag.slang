// Keep this push-constant payload below Vulkan's guaranteed 128-byte limit.
struct SwapChainInjectData {
  float peak_white_nits;
  float graphics_white_nits;
  float swap_chain_decoding;
  float swap_chain_gamma_correction;
  float swap_chain_custom_color_space;
  float swap_chain_clamp_color_space;
  float swap_chain_encoding;
  float swap_chain_encoding_color_space;
};

struct PushData {
  [[vk::offset(0)]]
  SwapChainInjectData swap_chain_injection;
};

[[vk::push_constant]]
PushData gPush;

#define RENODX_PEAK_WHITE_NITS                 gPush.swap_chain_injection.peak_white_nits
#define RENODX_GRAPHICS_WHITE_NITS             gPush.swap_chain_injection.graphics_white_nits
#define RENODX_SWAP_CHAIN_DECODING             gPush.swap_chain_injection.swap_chain_decoding
#define RENODX_SWAP_CHAIN_GAMMA_CORRECTION     gPush.swap_chain_injection.swap_chain_gamma_correction
#define RENODX_SWAP_CHAIN_CUSTOM_COLOR_SPACE   gPush.swap_chain_injection.swap_chain_custom_color_space
#define RENODX_SWAP_CHAIN_SCALING_NITS         (gPush.swap_chain_injection.swap_chain_encoding < 4.f ? 1.f : gPush.swap_chain_injection.graphics_white_nits)
#define RENODX_SWAP_CHAIN_CLAMP_NITS           (gPush.swap_chain_injection.swap_chain_encoding < 4.f ? 1.f : gPush.swap_chain_injection.peak_white_nits)
#define RENODX_SWAP_CHAIN_CLAMP_COLOR_SPACE    gPush.swap_chain_injection.swap_chain_clamp_color_space
#define RENODX_SWAP_CHAIN_ENCODING             gPush.swap_chain_injection.swap_chain_encoding
#define RENODX_SWAP_CHAIN_ENCODING_COLOR_SPACE gPush.swap_chain_injection.swap_chain_encoding_color_space

#include "../../shaders/renodx.hlsl"

[[vk::binding(0, 0)]] Texture2D t0;
[[vk::binding(1, 0)]] SamplerState s0;
float4 main(float4 vpos: SV_POSITION, float2 uv: TEXCOORD0)
    : SV_TARGET {
  return float4(renodx::draw::SwapChainPass(t0.Sample(s0, uv).rgb, vpos.xy), 1.f);
}
