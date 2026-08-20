#include "../common.hlsl"

[[vk::binding(4, 3)]]
cbuffer _7_8 : register(b4, space3)
{
    float4 _8_m0 : packoffset(c0);
    float4 _8_m1 : packoffset(c1);
    float4 _8_m2 : packoffset(c2);
    float4 _8_m3 : packoffset(c3);
    float4 _8_m4 : packoffset(c4);
    float _8_m5 : packoffset(c5);
    float _8_m6 : packoffset(c5.y);
    float _8_m7 : packoffset(c5.z);
};

[[vk::binding(3, 1)]] Texture2D<float4> _10 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _11 : register(s0, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _12 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _13 : register(s2, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _14 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _15 : register(s1, space1);

static float2 _2;
static float2 _3;
static float4 _4;

struct SPIRV_Cross_Input
{
    float2 _2 : TEXCOORD0;
    float2 _3 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 _4 : SV_Target0;
};

void frag_main()
{
    float3 _66 = mul(float3x3(float3(1.16437995433807373046875f, 0.0f, 1.5960299968719482421875f), float3(1.16437995433807373046875f, -0.39175999164581298828125f, -0.812969982624053955078125f), float3(1.16437995433807373046875f, 2.01723003387451171875f, 0.0f)), float3(_10.Sample(_11, _2).w, _12.Sample(_13, _3).w, _14.Sample(_15, _3).w) + float3(-0.06274999678134918212890625f, -0.501959979534149169921875f, -0.501959979534149169921875f));
    /*
    Vanilla shader code from 0x4CB44B80:
    float4 _67 = float4(_66.x, _66.y, _66.z, _45.w);
    */
    // RenoDX code: Clear the sampled video alpha before applying the shader's calculated opacity.
    float4 _67 = float4(_66.x, _66.y, _66.z, 0.0f);
    _67.w = 1.0f - _8_m7;
    _4 = _67;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _2 = stage_input._2;
    _3 = stage_input._3;
    frag_main();
    // RenoDX code: Expand SDR video luminance into the configured HDR output range.
    _4.xyz = AutoHDRVideo(_4.xyz);
    SPIRV_Cross_Output stage_output;
    stage_output._4 = _4;
    return stage_output;
}
