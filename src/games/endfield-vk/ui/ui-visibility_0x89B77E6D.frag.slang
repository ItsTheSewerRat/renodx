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
cbuffer _11_12 : register(b0)
{
    float4 _12_m0 : packoffset(c0);
    column_major float4x4 _12_m1 : packoffset(c1);
    float4 _12_m2 : packoffset(c5);
    float4 _12_m3 : packoffset(c6);
    float _12_m4 : packoffset(c7);
    float4 _12_m5 : packoffset(c8);
    float4 _12_m6 : packoffset(c9);
    float4 _12_m7 : packoffset(c10);
    float _12_m8 : packoffset(c11);
    float _12_m9 : packoffset(c11.y);
    float _12_m10 : packoffset(c11.z);
    float _12_m11 : packoffset(c11.w);
    float _12_m12 : packoffset(c12);
    float _12_m13 : packoffset(c12.y);
    float _12_m14 : packoffset(c12.z);
    float _12_m15 : packoffset(c12.w);
    float _12_m16 : packoffset(c13);
    float _12_m17 : packoffset(c13.y);
    float _12_m18 : packoffset(c13.z);
    float _12_m19 : packoffset(c13.w);
    float _12_m20 : packoffset(c14);
    float _12_m21 : packoffset(c14.y);
    float _12_m22 : packoffset(c14.z);
    float _12_m23 : packoffset(c14.w);
    float _12_m24 : packoffset(c15);
    float4 _12_m25 : packoffset(c16);
    float4 _12_m26 : packoffset(c17);
    float4 _12_m27 : packoffset(c18);
    float4 _12_m28 : packoffset(c19);
    float4 _12_m29 : packoffset(c20);
};

[[vk::binding(1, 3)]] Texture2D<float4> _14 : register(t1);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);

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
    float4 _46 = _3;
    _46.w = round(_46.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _56 = _14.Sample(_15, _4);
    _56.w = (_12_m12 != 0.0f) ? 1.0f : _56.w;
    float4 _66 = _46 * (_56 + _10_m0[0]._m2);
    float _67 = _66.w;
    float3 _69 = _66.xyz * _67;
    float4 _70 = float4(_69.x, _69.y, _69.z, _66.w);
    _70.w = lerp(_67, 0.0f, _12_m8);
    _5 = _70;
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
