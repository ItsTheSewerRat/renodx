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

[[vk::binding(0, 2)]]
cbuffer _10_12 : register(b0)
{
    _11 _12_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _13_14 : register(b0)
{
    float4 _14_m0 : packoffset(c0);
    column_major float4x4 _14_m1 : packoffset(c1);
    float4 _14_m2 : packoffset(c5);
    float4 _14_m3 : packoffset(c6);
    float _14_m4 : packoffset(c7);
    float4 _14_m5 : packoffset(c8);
    float4 _14_m6 : packoffset(c9);
    float4 _14_m7 : packoffset(c10);
    float _14_m8 : packoffset(c11);
    float _14_m9 : packoffset(c11.y);
    float _14_m10 : packoffset(c11.z);
    float _14_m11 : packoffset(c11.w);
    float _14_m12 : packoffset(c12);
    float _14_m13 : packoffset(c12.y);
    float _14_m14 : packoffset(c12.z);
    float _14_m15 : packoffset(c12.w);
    float4 _14_m16 : packoffset(c13);
    float4 _14_m17 : packoffset(c14);
    float4 _14_m18 : packoffset(c15);
    float4 _14_m19 : packoffset(c16);
};

[[vk::binding(1, 3)]] Texture2D<float4> _16 : register(t1);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0);
[[vk::binding(3, 1)]] Texture2D<float4> _18 : register(t3);
[[vk::binding(1, 1)]] SamplerState _19 : register(s1);
[[vk::binding(4, 1)]] Texture2D<float4> _20 : register(t4);
[[vk::binding(2, 1)]] SamplerState _21 : register(s2);

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
    float4 _66 = _3;
    _66.w = round(_66.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _77 = _16.Sample(_17, _4.xy);
    _77.w = (_14_m12 != 0.0f) ? 1.0f : _77.w;
    float4 _87 = _66 * (_77 + _12_m0[0]._m2);
    float4 _123 = _20.Sample(_21, ((mul((lerp(_4.xy, _4.xy, _14_m14.xx) + (_14_m19.xy * fmod(_9_m12.y, 1024.0f))) - 0.5f.xx, float2x2(float2(_14_m16.xy), float2(_14_m16.zw))) + 0.5f.xx) * _14_m17.xy) + _14_m17.zw);
    float _124 = _87.w;
    bool2 _202 = (_14_m4 != 0.0f).xx;
    float2 _203 = float2((_4.z < 0.0f) ? _4.z : (((_4.z >= 0.0f) && (_4.z <= _14_m2.x)) ? ((_4.z * _14_m3.x) / _14_m2.x) : ((_4.z <= _14_m2.y) ? ((((_4.z - _14_m2.x) * (_14_m3.y - _14_m3.x)) / (_14_m2.y - _14_m2.x)) + _14_m3.x) : ((_4.z <= 1.0f) ? ((((_4.z - _14_m2.y) * (1.0f - _14_m3.y)) / (1.0f - _14_m2.y)) + _14_m3.y) : _4.z))), (_4.w < 0.0f) ? _4.w : (((_4.w >= 0.0f) && (_4.w <= _14_m2.z)) ? ((_4.w * _14_m3.z) / _14_m2.z) : ((_4.w <= _14_m2.w) ? ((((_4.w - _14_m2.z) * (_14_m3.w - _14_m3.z)) / (_14_m2.w - _14_m2.z)) + _14_m3.z) : ((_4.w <= 1.0f) ? ((((_4.w - _14_m2.w) * (1.0f - _14_m3.w)) / (1.0f - _14_m2.w)) + _14_m3.w) : _4.w))));
    float2 _205 = float2(_202.x ? _203.x : _4.zw.x, _202.y ? _203.y : _4.zw.y);
    float _217 = _205.x;
    float _224 = _205.y;
    float _230 = _124 * ((_18.Sample(_19, (_205.xy * _14_m0.xy) + _14_m0.zw).w * (step(_217, 1.0f) * step(-_217, 0.0f))) * (step(_224, 1.0f) * step(-_224, 0.0f)));
    float3 _232 = lerp(_87, _123 * _14_m18, clamp((_124 + _123.w) * _14_m18.w, 0.0f, 1.0f).xxxx).xyz * _230;
    float4 _233 = float4(_232.x, _232.y, _232.z, _87.w);
    _233.w = lerp(_230, 0.0f, _14_m8);
    _5 = _233;
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
