#include "../shared.h"

static float _69 = (float)0;

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
    float _11_m19 : packoffset(c16);
    float _11_m20 : packoffset(c16.y);
    float _11_m21 : packoffset(c16.z);
    float _11_m22 : packoffset(c16.w);
    float _11_m23 : packoffset(c17);
    float _11_m24 : packoffset(c17.y);
    float _11_m25 : packoffset(c17.z);
    float _11_m26 : packoffset(c17.w);
    float _11_m27 : packoffset(c18);
    float _11_m28 : packoffset(c18.y);
    float _11_m29 : packoffset(c18.z);
    float _11_m30 : packoffset(c18.w);
    float4 _11_m31 : packoffset(c19);
    float4 _11_m32 : packoffset(c20);
    float4 _11_m33 : packoffset(c21);
    float4 _11_m34 : packoffset(c22);
    float4 _11_m35 : packoffset(c23);
    float _11_m36 : packoffset(c24);
    float _11_m37 : packoffset(c24.y);
    float _11_m38 : packoffset(c24.z);
    float4 _11_m39 : packoffset(c25);
    float4 _11_m40 : packoffset(c26);
    float4 _11_m41 : packoffset(c27);
};

[[vk::binding(4, 1)]] Texture2D<float4> _13 : register(t4);
[[vk::binding(1, 1)]] SamplerState _14 : register(s1);
[[vk::binding(6, 1)]] Texture2D<float4> _15 : register(t6);
[[vk::binding(3, 1)]] SamplerState _16 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(2, 1)]] SamplerState _18 : register(s2);

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
    float4 _74 = _3;
    _74.w = round(_74.w * 255.0f) * 0.0039215688593685626983642578125f;
    float _92 = fmod(_9_m12.y, 1024.0f);
    float4 _126 = _15.Sample(_16, float4(((mul((lerp(_4, _4, _11_m19.xx) + (_11_m34.xy * _92)) - 0.5f.xx, float2x2(float2(_11_m31.xy), float2(_11_m31.zw))) + 0.5f.xx) * _11_m32.xy) + _11_m32.zw, _69, _69).xy);
    float _130 = (_126.x * (_11_m22 + 1.0f)) - _11_m22;
    float2 _133 = float2(_130 * _11_m24, _130 * _11_m25);
    float2 _138 = ((_126.wy * 2.0f) - 1.0f.xx).xy * _11_m24;
    bool2 _140 = (_11_m23 != 0.0f).xx;
    float2 _141 = float2(_140.x ? _138.x : _133.x, _140.y ? _138.y : _133.y);
    float4 _178 = _13.Sample(_14, (((mul((lerp(_4, _4, _11_m15.xx) + (_11_m16.xy * _92)) - 0.5f.xx, float2x2(float2(_11_m17.xy), float2(_11_m17.zw))) + 0.5f.xx) * _11_m18.xy) + _11_m18.zw) + (_141 * _11_m13));
    float4 _220 = _17.Sample(_18, (((mul((lerp(_4, _4, _11_m38.xx) + (_11_m40.xy * _92)) - 0.5f.xx, float2x2(float2(_11_m41.xy), float2(_11_m41.zw))) + 0.5f.xx) * _11_m39.xy) + _11_m39.zw) + (_141 * _11_m36));
    float4 _225 = (_74 * lerp(_178, float4(1.0f, 1.0f, 1.0f, _178.x), _11_m14.xxxx)) * lerp(_220, float4(1.0f, 1.0f, 1.0f, _220.x), _11_m37.xxxx);
    float _226 = _225.w;
    float3 _228 = _225.xyz * _226;
    float4 _229 = float4(_228.x, _228.y, _228.z, _225.w);
    _229.w = lerp(_226, 0.0f, _11_m8);
    _5 = _229;
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
