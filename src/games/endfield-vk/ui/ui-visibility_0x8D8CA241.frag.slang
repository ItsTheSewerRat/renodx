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
};

[[vk::binding(1, 3)]] Texture2D<float4> _14 : register(t1);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(2, 1)]] Texture2D<float4> _16 : register(t2);
[[vk::binding(1, 1)]] SamplerState _17 : register(s1);

static float4 _3 = (float4)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float4 _4 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _5 : SV_Target0;
};

void frag_main()
{
    float4 _52 = _3;
    _52.w = round(_52.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _63 = _14.Sample(_15, _4.xy);
    _63.w = (_12_m12 != 0.0f) ? 1.0f : _63.w;
    float4 _73 = _52 * (_63 + _10_m0[0]._m2);
    bool2 _143 = (_12_m4 != 0.0f).xx;
    float2 _144 = float2((_4.z < 0.0f) ? _4.z : (((_4.z >= 0.0f) && (_4.z <= _12_m2.x)) ? ((_4.z * _12_m3.x) / _12_m2.x) : ((_4.z <= _12_m2.y) ? ((((_4.z - _12_m2.x) * (_12_m3.y - _12_m3.x)) / (_12_m2.y - _12_m2.x)) + _12_m3.x) : ((_4.z <= 1.0f) ? ((((_4.z - _12_m2.y) * (1.0f - _12_m3.y)) / (1.0f - _12_m2.y)) + _12_m3.y) : _4.z))), (_4.w < 0.0f) ? _4.w : (((_4.w >= 0.0f) && (_4.w <= _12_m2.z)) ? ((_4.w * _12_m3.z) / _12_m2.z) : ((_4.w <= _12_m2.w) ? ((((_4.w - _12_m2.z) * (_12_m3.w - _12_m3.z)) / (_12_m2.w - _12_m2.z)) + _12_m3.z) : ((_4.w <= 1.0f) ? ((((_4.w - _12_m2.w) * (1.0f - _12_m3.w)) / (1.0f - _12_m2.w)) + _12_m3.w) : _4.w))));
    float2 _146 = float2(_143.x ? _144.x : _4.zw.x, _143.y ? _144.y : _4.zw.y);
    float _158 = _146.x;
    float _165 = _146.y;
    float _172 = _73.w * ((_16.Sample(_17, (_146.xy * _12_m0.xy) + _12_m0.zw).w * (step(_158, 1.0f) * step(-_158, 0.0f))) * (step(_165, 1.0f) * step(-_165, 0.0f)));
    float3 _174 = _73.xyz * _172;
    float4 _175 = float4(_174.x, _174.y, _174.z, _73.w);
    _175.w = lerp(_172, 0.0f, _12_m8);
    _5 = _175;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
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
