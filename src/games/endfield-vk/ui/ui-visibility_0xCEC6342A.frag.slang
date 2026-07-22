#include "../shared.h"

[[vk::binding(0, 1)]]
cbuffer _12_13 : register(b0)
{
    float _13_m0 : packoffset(c0);
    float _13_m1 : packoffset(c0.y);
    float4 _13_m2 : packoffset(c1);
    float _13_m3 : packoffset(c2);
    float _13_m4 : packoffset(c2.y);
    float _13_m5 : packoffset(c2.z);
    float _13_m6 : packoffset(c2.w);
    float4 _13_m7 : packoffset(c3);
    float _13_m8 : packoffset(c4);
    float _13_m9 : packoffset(c4.y);
    float _13_m10 : packoffset(c4.z);
    float _13_m11 : packoffset(c4.w);
    float _13_m12 : packoffset(c5);
    float _13_m13 : packoffset(c5.y);
    float _13_m14 : packoffset(c5.z);
    float _13_m15 : packoffset(c5.w);
    float4 _13_m16 : packoffset(c6);
    float4 _13_m17 : packoffset(c7);
    float3 _13_m18 : packoffset(c8);
    column_major float4x4 _13_m19 : packoffset(c9);
    float4 _13_m20 : packoffset(c13);
    float _13_m21 : packoffset(c14);
    float _13_m22 : packoffset(c14.y);
    float _13_m23 : packoffset(c14.z);
    float _13_m24 : packoffset(c14.w);
    float _13_m25 : packoffset(c15);
    float4 _13_m26 : packoffset(c16);
    float _13_m27 : packoffset(c17);
    float _13_m28 : packoffset(c17.y);
    float _13_m29 : packoffset(c17.z);
    float _13_m30 : packoffset(c17.w);
    float4 _13_m31 : packoffset(c18);
    float _13_m32 : packoffset(c19);
    float _13_m33 : packoffset(c19.y);
    float _13_m34 : packoffset(c19.z);
    float _13_m35 : packoffset(c19.w);
    float _13_m36 : packoffset(c20);
    float _13_m37 : packoffset(c20.y);
    float _13_m38 : packoffset(c20.z);
    float _13_m39 : packoffset(c20.w);
    float _13_m40 : packoffset(c21);
    float _13_m41 : packoffset(c21.y);
    float _13_m42 : packoffset(c21.z);
    float _13_m43 : packoffset(c21.w);
    float _13_m44 : packoffset(c22);
    float4 _13_m45 : packoffset(c23);
    float _13_m46 : packoffset(c24);
    float _13_m47 : packoffset(c24.y);
    float _13_m48 : packoffset(c24.z);
    float _13_m49 : packoffset(c24.w);
    float _13_m50 : packoffset(c25);
    float _13_m51 : packoffset(c25.y);
    float _13_m52 : packoffset(c25.z);
    float _13_m53 : packoffset(c25.w);
    float _13_m54 : packoffset(c26);
    float4 _13_m55 : packoffset(c27);
    column_major float4x4 _13_m56 : packoffset(c28);
    float4 _13_m57 : packoffset(c32);
    float4 _13_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _14_15 : register(b0)
{
    column_major float4x4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c4);
    column_major float4x4 _15_m2 : packoffset(c8);
    column_major float4x4 _15_m3 : packoffset(c12);
    column_major float4x4 _15_m4 : packoffset(c16);
    column_major float4x4 _15_m5 : packoffset(c20);
    column_major float4x4 _15_m6 : packoffset(c24);
    column_major float4x4 _15_m7 : packoffset(c28);
    column_major float4x4 _15_m8 : packoffset(c32);
    column_major float4x4 _15_m9 : packoffset(c36);
    column_major float4x4 _15_m10 : packoffset(c40);
    float4 _15_m11 : packoffset(c44);
    float4 _15_m12 : packoffset(c45);
    float4 _15_m13 : packoffset(c46);
    float4 _15_m14 : packoffset(c47);
    float4 _15_m15 : packoffset(c48);
};

[[vk::binding(3, 1)]] Texture2D<float4> _17 : register(t3);
[[vk::binding(1, 1)]] SamplerState _18 : register(s1);
[[vk::binding(4, 1)]] Texture2D<float4> _19 : register(t4);
[[vk::binding(2, 1)]] SamplerState _20 : register(s2);
[[vk::binding(1, 3)]] Texture2D<float4> _21 : register(t1);
[[vk::binding(0, 3)]] SamplerState _22 : register(s0);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float4 _9 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(5)]] float4 _6 : TEXCOORD5;
    [[vk::location(6)]] float4 _7 : TEXCOORD6;
    [[vk::location(7)]] float4 _8 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _9 : SV_Target0;
};

void frag_main()
{
    float _71 = (_5.z - _21.Sample(_22, _4).x) * _5.y;
    float _77 = (_13_m8 * _13_m39) * _5.y;
    float _81 = (_13_m4 * _13_m39) * _5.y;
    float3 _88 = _13_m2.xyz * _3.xyz;
    float4 _104 = float4(_88.x, _88.y, _88.z, _13_m2.w) * _19.Sample(_20, _8.xy + (float2(_13_m0, _13_m1) * _15_m12.y));
    float4 _117 = _13_m7 * _17.Sample(_18, _8.zw + (float2(_13_m5, _13_m6) * _15_m12.y));
    float _118 = _77 * 0.5f;
    float3 _133 = _104.xyz * _104.w;
    float3 _137 = _117.xyz * _117.w;
    float4 _141 = lerp(float4(_133.x, _133.y, _133.z, _104.w), float4(_137.x, _137.y, _137.z, _117.w), (clamp(_71 + _118, 0.0f, 1.0f) * sqrt(min(1.0f, _77))).xxxx) * (1.0f - clamp(((_71 - _118) + (_81 * 0.5f)) / (1.0f + _81), 0.0f, 1.0f));
    _9 = (_141 + ((_7 * clamp((_21.Sample(_22, _6.xy).x * _6.z) - _6.w, 0.0f, 1.0f)) * (1.0f - _141.w))) * _3.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _9 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._9 = _9;
    return stage_output;
}
