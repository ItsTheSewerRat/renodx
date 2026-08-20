#include "../shared.h"

[[vk::binding(0, 1)]]
cbuffer _10_11 : register(b0)
{
    float _11_m0 : packoffset(c0);
    float _11_m1 : packoffset(c0.y);
    float4 _11_m2 : packoffset(c1);
    float _11_m3 : packoffset(c2);
    float _11_m4 : packoffset(c2.y);
    float _11_m5 : packoffset(c2.z);
    float _11_m6 : packoffset(c2.w);
    float4 _11_m7 : packoffset(c3);
    float _11_m8 : packoffset(c4);
    float _11_m9 : packoffset(c4.y);
    float _11_m10 : packoffset(c4.z);
    float _11_m11 : packoffset(c4.w);
    float _11_m12 : packoffset(c5);
    float _11_m13 : packoffset(c5.y);
    float _11_m14 : packoffset(c5.z);
    float _11_m15 : packoffset(c5.w);
    float4 _11_m16 : packoffset(c6);
    float4 _11_m17 : packoffset(c7);
    float3 _11_m18 : packoffset(c8);
    column_major float4x4 _11_m19 : packoffset(c9);
    float4 _11_m20 : packoffset(c13);
    float _11_m21 : packoffset(c14);
    float _11_m22 : packoffset(c14.y);
    float _11_m23 : packoffset(c14.z);
    float _11_m24 : packoffset(c14.w);
    float _11_m25 : packoffset(c15);
    float4 _11_m26 : packoffset(c16);
    float _11_m27 : packoffset(c17);
    float _11_m28 : packoffset(c17.y);
    float _11_m29 : packoffset(c17.z);
    float _11_m30 : packoffset(c17.w);
    float4 _11_m31 : packoffset(c18);
    float _11_m32 : packoffset(c19);
    float _11_m33 : packoffset(c19.y);
    float _11_m34 : packoffset(c19.z);
    float _11_m35 : packoffset(c19.w);
    float _11_m36 : packoffset(c20);
    float _11_m37 : packoffset(c20.y);
    float _11_m38 : packoffset(c20.z);
    float _11_m39 : packoffset(c20.w);
    float _11_m40 : packoffset(c21);
    float _11_m41 : packoffset(c21.y);
    float _11_m42 : packoffset(c21.z);
    float _11_m43 : packoffset(c21.w);
    float _11_m44 : packoffset(c22);
    float4 _11_m45 : packoffset(c23);
    float _11_m46 : packoffset(c24);
    float _11_m47 : packoffset(c24.y);
    float _11_m48 : packoffset(c24.z);
    float _11_m49 : packoffset(c24.w);
    float _11_m50 : packoffset(c25);
    float _11_m51 : packoffset(c25.y);
    float _11_m52 : packoffset(c25.z);
    float _11_m53 : packoffset(c25.w);
    float _11_m54 : packoffset(c26);
    float4 _11_m55 : packoffset(c27);
    column_major float4x4 _11_m56 : packoffset(c28);
    float4 _11_m57 : packoffset(c32);
    float4 _11_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _12_13 : register(b0)
{
    column_major float4x4 _13_m0 : packoffset(c0);
    column_major float4x4 _13_m1 : packoffset(c4);
    column_major float4x4 _13_m2 : packoffset(c8);
    column_major float4x4 _13_m3 : packoffset(c12);
    column_major float4x4 _13_m4 : packoffset(c16);
    column_major float4x4 _13_m5 : packoffset(c20);
    column_major float4x4 _13_m6 : packoffset(c24);
    column_major float4x4 _13_m7 : packoffset(c28);
    column_major float4x4 _13_m8 : packoffset(c32);
    column_major float4x4 _13_m9 : packoffset(c36);
    column_major float4x4 _13_m10 : packoffset(c40);
    float4 _13_m11 : packoffset(c44);
    float4 _13_m12 : packoffset(c45);
    float4 _13_m13 : packoffset(c46);
    float4 _13_m14 : packoffset(c47);
    float4 _13_m15 : packoffset(c48);
};

[[vk::binding(3, 1)]] Texture2D<float4> _15 : register(t3);
[[vk::binding(1, 1)]] SamplerState _16 : register(s1);
[[vk::binding(4, 1)]] Texture2D<float4> _17 : register(t4);
[[vk::binding(2, 1)]] SamplerState _18 : register(s2);
[[vk::binding(1, 3)]] Texture2D<float4> _19 : register(t1);
[[vk::binding(0, 3)]] SamplerState _20 : register(s0);

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
    [[vk::location(5)]] float4 _6 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _7 : SV_Target0;
};

void frag_main()
{
    float4 _61 = _19.Sample(_20, _4);
    float _62 = _61.x;
    if ((_62 - _5.x) < 0.0f)
    {
        discard;
    }
    float _74 = (_5.z - _62) * _5.y;
    float _80 = (_11_m8 * _11_m39) * _5.y;
    float _84 = (_11_m4 * _11_m39) * _5.y;
    float3 _91 = _11_m2.xyz * _3.xyz;
    float4 _107 = float4(_91.x, _91.y, _91.z, _11_m2.w) * _17.Sample(_18, _6.xy + (float2(_11_m0, _11_m1) * _13_m12.y));
    float4 _120 = _11_m7 * _15.Sample(_16, _6.zw + (float2(_11_m5, _11_m6) * _13_m12.y));
    float _121 = _80 * 0.5f;
    float3 _136 = _107.xyz * _107.w;
    float3 _140 = _120.xyz * _120.w;
    _7 = (lerp(float4(_136.x, _136.y, _136.z, _107.w), float4(_140.x, _140.y, _140.z, _120.w), (clamp(_74 + _121, 0.0f, 1.0f) * sqrt(min(1.0f, _80))).xxxx) * (1.0f - clamp(((_74 - _121) + (_84 * 0.5f)) / (1.0f + _84), 0.0f, 1.0f))) * _3.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    // RenoDX code start: hide this UI pass when the UI visibility control is disabled.
    if (UI_VISIBILITY < 0.5f)
    {
        _7 = 0.0f;
    }
    // RenoDX code end
    SPIRV_Cross_Output stage_output;
    stage_output._7 = _7;
    return stage_output;
}
