#include "../shared.h"

struct _12
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 0)]]
cbuffer _9_10 : register(b0)
{
    column_major float4x4 _10_m0 : packoffset(c0);
    column_major float4x4 _10_m1 : packoffset(c4);
    column_major float4x4 _10_m2 : packoffset(c8);
    column_major float4x4 _10_m3 : packoffset(c12);
    column_major float4x4 _10_m4 : packoffset(c16);
    column_major float4x4 _10_m5 : packoffset(c20);
    column_major float4x4 _10_m6 : packoffset(c24);
    column_major float4x4 _10_m7 : packoffset(c28);
    column_major float4x4 _10_m8 : packoffset(c32);
    column_major float4x4 _10_m9 : packoffset(c36);
    column_major float4x4 _10_m10 : packoffset(c40);
    float4 _10_m11 : packoffset(c44);
    float4 _10_m12 : packoffset(c45);
    float4 _10_m13 : packoffset(c46);
    float4 _10_m14 : packoffset(c47);
    float4 _10_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _11_13 : register(b0)
{
    _12 _13_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _14_15 : register(b0)
{
    float4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c1);
    float4 _15_m2 : packoffset(c5);
    float4 _15_m3 : packoffset(c6);
    float _15_m4 : packoffset(c7);
    float4 _15_m5 : packoffset(c8);
    float4 _15_m6 : packoffset(c9);
    float4 _15_m7 : packoffset(c10);
    float _15_m8 : packoffset(c11);
    float _15_m9 : packoffset(c11.y);
    float _15_m10 : packoffset(c11.z);
    float _15_m11 : packoffset(c11.w);
    float _15_m12 : packoffset(c12);
    float _15_m13 : packoffset(c12.y);
    float _15_m14 : packoffset(c12.z);
    float _15_m15 : packoffset(c12.w);
    float4 _15_m16 : packoffset(c13);
    float4 _15_m17 : packoffset(c14);
    float4 _15_m18 : packoffset(c15);
    float _15_m19 : packoffset(c16);
    float _15_m20 : packoffset(c16.y);
    float _15_m21 : packoffset(c16.z);
    float _15_m22 : packoffset(c16.w);
    float _15_m23 : packoffset(c17);
    float _15_m24 : packoffset(c17.y);
    float _15_m25 : packoffset(c17.z);
    float _15_m26 : packoffset(c17.w);
    float _15_m27 : packoffset(c18);
    float _15_m28 : packoffset(c18.y);
    float _15_m29 : packoffset(c18.z);
    float _15_m30 : packoffset(c18.w);
    float4 _15_m31 : packoffset(c19);
    float4 _15_m32 : packoffset(c20);
    float4 _15_m33 : packoffset(c21);
    float4 _15_m34 : packoffset(c22);
    float4 _15_m35 : packoffset(c23);
    float _15_m36 : packoffset(c24);
    float _15_m37 : packoffset(c24.y);
    float _15_m38 : packoffset(c24.z);
    float4 _15_m39 : packoffset(c25);
    float4 _15_m40 : packoffset(c26);
    float4 _15_m41 : packoffset(c27);
};

[[vk::binding(5, 1)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(1, 1)]] SamplerState _18 : register(s1);
[[vk::binding(8, 1)]] Texture2D<float4> _19 : register(t8);
[[vk::binding(4, 1)]] SamplerState _20 : register(s4);
[[vk::binding(7, 1)]] Texture2D<float4> _21 : register(t7);
[[vk::binding(3, 1)]] SamplerState _22 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _23 : register(t6);
[[vk::binding(2, 1)]] SamplerState _24 : register(s2);

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
    float4 _101 = _3;
    _101.w = round(_101.w * 255.0f) * 0.0039215688593685626983642578125f;
    float _120 = fmod(_10_m12.y, 1024.0f);
    float4 _165 = float4(((mul((lerp(_4, _4, _15_m19.xx) + (_15_m34.xy * _120)) - 0.5f.xx, float2x2(float2(_15_m31.xy), float2(_15_m31.zw))) + 0.5f.xx) * _15_m32.xy) + _15_m32.zw, ((mul((lerp(_4, _4, _15_m20.xx) + (_15_m35.xy * _120)) - 0.5f.xx, float2x2(float2(1.0f, 0.0f), float2(0.0f, 1.0f))) + 0.5f.xx) * _15_m33.xy) + _15_m33.zw);
    float4 _180 = _19.Sample(_20, _165.xy);
    float _182 = _15_m22 + 1.0f;
    float _184 = (_180.x * _182) - _15_m22;
    float2 _187 = float2(_184 * _15_m24, _184 * _15_m25);
    float2 _192 = ((_180.wy * 2.0f) - 1.0f.xx).xy * _15_m24;
    bool2 _194 = (_15_m23 != 0.0f).xx;
    float4 _200 = _21.Sample(_22, _165.zw);
    float _203 = (_200.x * _182) - _15_m22;
    float2 _206 = float2(_203 * _15_m28, _203 * _15_m29);
    float2 _211 = ((_200.wy * 2.0f) - 1.0f.xx).xy * _15_m28;
    bool2 _213 = (_15_m27 != 0.0f).xx;
    float2 _215 = float2(_194.x ? _192.x : _187.x, _194.y ? _192.y : _187.y) + float2(_213.x ? _211.x : _206.x, _213.y ? _211.y : _206.y);
    float4 _252 = _17.Sample(_18, (((mul((lerp(_4, _4, _15_m15.xx) + (_15_m16.xy * _120)) - 0.5f.xx, float2x2(float2(_15_m17.xy), float2(_15_m17.zw))) + 0.5f.xx) * _15_m18.xy) + _15_m18.zw) + (_215 * _15_m13));
    float4 _294 = _23.Sample(_24, (((mul((lerp(_4, _4, _15_m38.xx) + (_15_m40.xy * _120)) - 0.5f.xx, float2x2(float2(_15_m41.xy), float2(_15_m41.zw))) + 0.5f.xx) * _15_m39.xy) + _15_m39.zw) + (_215 * _15_m36));
    float4 _299 = (_101 * lerp(_252, float4(1.0f, 1.0f, 1.0f, _252.x), _15_m14.xxxx)) * lerp(_294, float4(1.0f, 1.0f, 1.0f, _294.x), _15_m37.xxxx);
    float2 _310 = clamp(((_13_m0[0]._m3.zw - _13_m0[0]._m3.xy) - abs(_5.xy)) * _5.zw, 0.0f.xx, 1.0f.xx);
    float4 _316 = clamp(_13_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _321 = ((_5.xy + _316.xy) + _316.zw) * 0.5f;
    float _322 = _321.x;
    float _327 = _321.y;
    float _347 = (_299.w * (_310.x * _310.y)) * (((smoothstep(0.0f, _13_m0[0]._m4.x, _322 - _316.x) * smoothstep(0.0f, _13_m0[0]._m4.z, _316.z - _322)) * smoothstep(0.0f, _13_m0[0]._m4.y, _327 - _316.y)) * smoothstep(0.0f, _13_m0[0]._m4.w, _316.w - _327));
    float3 _349 = _299.xyz * _347;
    float4 _350 = float4(_349.x, _349.y, _349.z, _299.w);
    _350.w = lerp(_347, 0.0f, _15_m8);
    _6 = _350;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    frag_main();
    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _6 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._6 = _6;
    return stage_output;
}
