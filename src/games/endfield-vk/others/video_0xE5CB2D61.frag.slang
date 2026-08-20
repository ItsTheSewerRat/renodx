#include "../common.hlsl"

struct _13
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(4, 3)]] cbuffer _10_11 : register(b4, space3)
{
    float4 _11_m0 : packoffset(c0);
    float4 _11_m1 : packoffset(c1);
    float4 _11_m2 : packoffset(c2);
    float4 _11_m3 : packoffset(c3);
    float4 _11_m4 : packoffset(c4);
    float _11_m5 : packoffset(c5);
    float _11_m6 : packoffset(c5.y);
    float _11_m7 : packoffset(c5.z);
};

[[vk::binding(0, 2)]] cbuffer _12_14 : register(b0, space2)
{
    _13 _14_m0[1] : packoffset(c0);
};

[[vk::binding(3, 1)]] Texture2D<float4> _16 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _17 : register(s0, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _18 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _19 : register(s2, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _20 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _21 : register(s1, space1);

static float2 _3;
static float2 _4;
static float4 _5;
static float4 _6;
static float4 _7;

struct SPIRV_Cross_Input
{
    float2 _3 : TEXCOORD0;
    float2 _4 : TEXCOORD1;
    float4 _5 : TEXCOORD2;
    float4 _6 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 _7 : SV_Target0;
};

void frag_main()
{
    float3 _85 = mul(float3x3(float3(1.16437995433807373046875f, 0.0f, 1.5960299968719482421875f), float3(1.16437995433807373046875f, -0.39175999164581298828125f, -0.812969982624053955078125f), float3(1.16437995433807373046875f, 2.01723003387451171875f, 0.0f)), float3(_16.Sample(_17, _3).w, _18.Sample(_19, _4).w, _20.Sample(_21, _4).w) + float3(-0.06274999678134918212890625f, -0.501959979534149169921875f, -0.501959979534149169921875f));
    /*
    Vanilla shader code from 0xE5CB2D61:
    float4 _86 = float4(_85.x, _85.y, _85.z, _63.w);
    */
    // RenoDX code: Clear the sampled video alpha before applying the shader's calculated opacity.
    float4 _86 = float4(_85.x, _85.y, _85.z, 0.0f);
    float2 _103 = clamp(((_14_m0[0]._m3.zw - _14_m0[0]._m3.xy) - abs(_6.xy)) * _6.zw, 0.0f.xx, 1.0f.xx);
    _86.w = (_5.w * (1.0f - _11_m7)) * (_103.x * _103.y);
    _7 = _86;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    // RenoDX code: Expand SDR video luminance into the configured HDR output range.
    _7.xyz = AutoHDRVideo(_7.xyz);
    SPIRV_Cross_Output stage_output;
    stage_output._7 = _7;
    return stage_output;
}
