#include "../common.hlsl"

[[vk::binding(4, 3)]]
cbuffer _8_9 : register(b4, space3)
{
    float4 _9_m0 : packoffset(c0);
    float4 _9_m1 : packoffset(c1);
    float4 _9_m2 : packoffset(c2);
    float4 _9_m3 : packoffset(c3);
    float4 _9_m4 : packoffset(c4);
    float _9_m5 : packoffset(c5);
    float _9_m6 : packoffset(c5.y);
    float _9_m7 : packoffset(c5.z);
};

[[vk::binding(3, 1)]] Texture2D<float4> _11 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _12 : register(s0, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _13 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _14 : register(s2, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _15 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _16 : register(s1, space1);

static float2 _2;
static float2 _3;
static float4 _4;
static float4 _5;

struct SPIRV_Cross_Input
{
    float2 _2 : TEXCOORD0;
    float2 _3 : TEXCOORD1;
    float4 _4 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 _5 : SV_Target0;
};

void frag_main()
{
    float3 _70 = mul(float3x3(float3(1.16437995433807373046875f, 0.0f, 1.5960299968719482421875f), float3(1.16437995433807373046875f, -0.39175999164581298828125f, -0.812969982624053955078125f), float3(1.16437995433807373046875f, 2.01723003387451171875f, 0.0f)), float3(_11.Sample(_12, _2).w, _13.Sample(_14, _3).w, _15.Sample(_16, _3).w) + float3(-0.06274999678134918212890625f, -0.501959979534149169921875f, -0.501959979534149169921875f));
    float4 _71 = float4(_70.x, _70.y, _70.z, 0.0f);
    _71.w = _4.w * (1.0f - _9_m7);
    _5 = _71;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _2 = stage_input._2;
    _3 = stage_input._3;
    _4 = stage_input._4;
    frag_main();
    _5.xyz = AutoHDRVideo(_5.xyz);
    SPIRV_Cross_Output stage_output;
    stage_output._5 = _5;
    return stage_output;
}
