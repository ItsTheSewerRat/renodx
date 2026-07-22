#include "../shared.h"

[[vk::binding(0, 0)]]
cbuffer _8_9 : register(b0)
{
    column_major float4x4 _9_m0 : packoffset(c0);
    column_major float4x4 _9_m1 : packoffset(c4);
    column_major float4x4 _9_m2 : packoffset(c8);
    column_major float4x4 _9_m3 : packoffset(c12);
    column_major float4x4 _9_m4 : packoffset(c16);
    column_major float4x4 _9_m5 : packoffset(c20);
    column_major float4x4 _9_m6 : packoffset(c24);
    column_major float4x4 _9_m7 : packoffset(c28);
    column_major float4x4 _9_m8 : packoffset(c32);
    column_major float4x4 _9_m9 : packoffset(c36);
    column_major float4x4 _9_m10 : packoffset(c40);
    float4 _9_m11 : packoffset(c44);
    float4 _9_m12 : packoffset(c45);
    float4 _9_m13 : packoffset(c46);
    float4 _9_m14 : packoffset(c47);
    float4 _9_m15 : packoffset(c48);
};

[[vk::binding(0, 1)]]
cbuffer _10_11 : register(b0)
{
    float4 _11_m0 : packoffset(c0);
    column_major float4x4 _11_m1 : packoffset(c1);
    float4 _11_m2 : packoffset(c5);
    float4 _11_m3 : packoffset(c6);
    float _11_m4 : packoffset(c7);
    float4 _11_m5 : packoffset(c8);
    float4 _11_m6 : packoffset(c9);
    float4 _11_m7 : packoffset(c10);
    float _11_m8 : packoffset(c11);
    float _11_m9 : packoffset(c11.y);
    float _11_m10 : packoffset(c11.z);
    float _11_m11 : packoffset(c11.w);
    float _11_m12 : packoffset(c12);
    float _11_m13 : packoffset(c12.y);
    float _11_m14 : packoffset(c12.z);
    float _11_m15 : packoffset(c12.w);
    float4 _11_m16 : packoffset(c13);
    float4 _11_m17 : packoffset(c14);
    float4 _11_m18 : packoffset(c15);
};

[[vk::binding(2, 1)]] Texture2D<float4> _13 : register(t2);
[[vk::binding(1, 1)]] SamplerState _14 : register(s1);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _5 : SV_Target0;
};

void frag_main()
{
    float4 _49 = _3;
    _49.w = round(_49.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _91 = _13.Sample(_14, ((mul((lerp(_4, _4, _11_m15.xx) + (_11_m16.xy * fmod(_9_m12.y, 1024.0f))) - 0.5f.xx, float2x2(float2(_11_m17.xy), float2(_11_m17.zw))) + 0.5f.xx) * _11_m18.xy) + _11_m18.zw);
    float4 _96 = _49 * lerp(_91, float4(1.0f, 1.0f, 1.0f, _91.x), _11_m14.xxxx);
    float _97 = _96.w;
    float3 _99 = _96.xyz * _97;
    float4 _100 = float4(_99.x, _99.y, _99.z, _96.w);
    _100.w = lerp(_97, 0.0f, _11_m8);
    _5 = _100;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _5 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._5 = _5;
    return stage_output;
}
