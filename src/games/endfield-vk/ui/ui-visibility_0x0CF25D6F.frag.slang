#include "../shared.h"

struct _11
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 2)]]
cbuffer _10_12 : register(b0)
{
    _11 _12_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _15_16 : register(b0)
{
    float4 _16_m0 : packoffset(c0);
    float4 _16_m1 : packoffset(c1);
    float _16_m2 : packoffset(c2);
};

[[vk::binding(1, 3)]] SamplerState _13 : register(s1);
[[vk::binding(3, 3)]] Texture2D<float4> _14 : register(t3);
[[vk::binding(2, 3)]] Texture2D<float4> _18 : register(t2);
[[vk::binding(0, 3)]] SamplerState _19 : register(s0);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _7 : SV_Target0;
};

void frag_main()
{
    float2 _72 = step(_12_m0[0]._m3.xy, _5.xy) * step(_5.xy, _12_m0[0]._m3.zw);
    _7 = float4(((_14.SampleLevel(_13, _6.xy, 0.0f) * _3) * _16_m2).xyz, ((_18.Sample(_19, _4) + _12_m0[0]._m2) * _3).w * (_72.x * _72.y));
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _7 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._7 = _7;
    return stage_output;
}
