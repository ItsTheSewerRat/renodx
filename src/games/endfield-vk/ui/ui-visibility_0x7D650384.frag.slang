#include "../shared.h"

struct _10
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 2)]]
cbuffer _9_11 : register(b0)
{
    _10 _11_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _12_13 : register(b0)
{
    float4 _13_m0 : packoffset(c0);
    column_major float4x4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c5);
    float4 _13_m3 : packoffset(c6);
    float _13_m4 : packoffset(c7);
    float4 _13_m5 : packoffset(c8);
    float4 _13_m6 : packoffset(c9);
    float4 _13_m7 : packoffset(c10);
    float _13_m8 : packoffset(c11);
    float _13_m9 : packoffset(c11.y);
    float _13_m10 : packoffset(c11.z);
    float _13_m11 : packoffset(c11.w);
    float _13_m12 : packoffset(c12);
};

[[vk::binding(1, 3)]] Texture2D<float4> _15 : register(t1);
[[vk::binding(0, 3)]] SamplerState _16 : register(s0);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(3)]] float4 _5 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _6 : SV_Target0;
};

void frag_main()
{
    float4 _57 = _3;
    _57.w = round(_57.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _68 = _15.Sample(_16, _4);
    _68.w = (_13_m12 != 0.0f) ? 1.0f : _68.w;
    float4 _78 = _57 * (_68 + _11_m0[0]._m2);
    float2 _89 = clamp(((_11_m0[0]._m3.zw - _11_m0[0]._m3.xy) - abs(_5.xy)) * _5.zw, 0.0f.xx, 1.0f.xx);
    float4 _95 = clamp(_11_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _100 = ((_5.xy + _95.xy) + _95.zw) * 0.5f;
    float _101 = _100.x;
    float _106 = _100.y;
    float _126 = (_78.w * (_89.x * _89.y)) * (((smoothstep(0.0f, _11_m0[0]._m4.x, _101 - _95.x) * smoothstep(0.0f, _11_m0[0]._m4.z, _95.z - _101)) * smoothstep(0.0f, _11_m0[0]._m4.y, _106 - _95.y)) * smoothstep(0.0f, _11_m0[0]._m4.w, _95.w - _106));
    float3 _128 = _78.xyz * _126;
    float4 _129 = float4(_128.x, _128.y, _128.z, _78.w);
    _129.w = lerp(_126, 0.0f, _13_m8);
    _6 = _129;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _6 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._6 = _6;
    return stage_output;
}
