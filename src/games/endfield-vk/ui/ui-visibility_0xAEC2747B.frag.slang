#include "../shared.h"

struct _9
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 2)]]
cbuffer _8_10 : register(b0)
{
    _9 _10_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _13_14 : register(b0)
{
    float4 _14_m0 : packoffset(c0);
    float4 _14_m1 : packoffset(c1);
    float _14_m2 : packoffset(c2);
};

[[vk::binding(1, 3)]] SamplerState _11 : register(s1);
[[vk::binding(3, 3)]] Texture2D<float4> _12 : register(t3);
[[vk::binding(2, 3)]] Texture2D<float4> _16 : register(t2);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0);

static float4 _2 = (float4)0;
static float2 _3 = (float2)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _2 : TEXCOORD0;
    [[vk::location(1)]] float2 _3 : TEXCOORD1;
    [[vk::location(3)]] float4 _4 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _5 : SV_Target0;
};

void frag_main()
{
    _5 = float4(((_12.SampleLevel(_11, _4.xy, 0.0f) * _2) * _14_m2).xyz, ((_16.Sample(_17, _3) + _10_m0[0]._m2) * _2).w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _2 = stage_input._2;
    _3 = stage_input._3;
    _4 = stage_input._4;
    frag_main();
    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _5 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._5 = _5;
    return stage_output;
}
