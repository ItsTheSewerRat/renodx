#include "../shared.h"

struct _18
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 1)]]
cbuffer _13_14 : register(b0)
{
    float _14_m0 : packoffset(c0);
    float _14_m1 : packoffset(c0.y);
    float4 _14_m2 : packoffset(c1);
    float _14_m3 : packoffset(c2);
    float _14_m4 : packoffset(c2.y);
    float _14_m5 : packoffset(c2.z);
    float _14_m6 : packoffset(c2.w);
    float4 _14_m7 : packoffset(c3);
    float _14_m8 : packoffset(c4);
    float _14_m9 : packoffset(c4.y);
    float _14_m10 : packoffset(c4.z);
    float _14_m11 : packoffset(c4.w);
    float _14_m12 : packoffset(c5);
    float _14_m13 : packoffset(c5.y);
    float _14_m14 : packoffset(c5.z);
    float _14_m15 : packoffset(c5.w);
    float4 _14_m16 : packoffset(c6);
    float4 _14_m17 : packoffset(c7);
    float3 _14_m18 : packoffset(c8);
    column_major float4x4 _14_m19 : packoffset(c9);
    float4 _14_m20 : packoffset(c13);
    float _14_m21 : packoffset(c14);
    float _14_m22 : packoffset(c14.y);
    float _14_m23 : packoffset(c14.z);
    float _14_m24 : packoffset(c14.w);
    float _14_m25 : packoffset(c15);
    float4 _14_m26 : packoffset(c16);
    float _14_m27 : packoffset(c17);
    float _14_m28 : packoffset(c17.y);
    float _14_m29 : packoffset(c17.z);
    float _14_m30 : packoffset(c17.w);
    float4 _14_m31 : packoffset(c18);
    float _14_m32 : packoffset(c19);
    float _14_m33 : packoffset(c19.y);
    float _14_m34 : packoffset(c19.z);
    float _14_m35 : packoffset(c19.w);
    float _14_m36 : packoffset(c20);
    float _14_m37 : packoffset(c20.y);
    float _14_m38 : packoffset(c20.z);
    float _14_m39 : packoffset(c20.w);
    float _14_m40 : packoffset(c21);
    float _14_m41 : packoffset(c21.y);
    float _14_m42 : packoffset(c21.z);
    float _14_m43 : packoffset(c21.w);
    float _14_m44 : packoffset(c22);
    float4 _14_m45 : packoffset(c23);
    float _14_m46 : packoffset(c24);
    float _14_m47 : packoffset(c24.y);
    float _14_m48 : packoffset(c24.z);
    float _14_m49 : packoffset(c24.w);
    float _14_m50 : packoffset(c25);
    float _14_m51 : packoffset(c25.y);
    float _14_m52 : packoffset(c25.z);
    float _14_m53 : packoffset(c25.w);
    float _14_m54 : packoffset(c26);
    float4 _14_m55 : packoffset(c27);
    column_major float4x4 _14_m56 : packoffset(c28);
    float4 _14_m57 : packoffset(c32);
    float4 _14_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _15_16 : register(b0)
{
    column_major float4x4 _16_m0 : packoffset(c0);
    column_major float4x4 _16_m1 : packoffset(c4);
    column_major float4x4 _16_m2 : packoffset(c8);
    column_major float4x4 _16_m3 : packoffset(c12);
    column_major float4x4 _16_m4 : packoffset(c16);
    column_major float4x4 _16_m5 : packoffset(c20);
    column_major float4x4 _16_m6 : packoffset(c24);
    column_major float4x4 _16_m7 : packoffset(c28);
    column_major float4x4 _16_m8 : packoffset(c32);
    column_major float4x4 _16_m9 : packoffset(c36);
    column_major float4x4 _16_m10 : packoffset(c40);
    float4 _16_m11 : packoffset(c44);
    float4 _16_m12 : packoffset(c45);
    float4 _16_m13 : packoffset(c46);
    float4 _16_m14 : packoffset(c47);
    float4 _16_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _17_19 : register(b0)
{
    _18 _19_m0[1] : packoffset(c0);
};

[[vk::binding(3, 1)]] Texture2D<float4> _21 : register(t3);
[[vk::binding(1, 1)]] SamplerState _22 : register(s1);
[[vk::binding(4, 1)]] Texture2D<float4> _23 : register(t4);
[[vk::binding(2, 1)]] SamplerState _24 : register(s2);
[[vk::binding(1, 3)]] Texture2D<float4> _25 : register(t1);
[[vk::binding(0, 3)]] SamplerState _26 : register(s0);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float4 _9 = (float4)0;
static float4 _10 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(5)]] float4 _7 : TEXCOORD5;
    [[vk::location(6)]] float4 _8 : TEXCOORD6;
    [[vk::location(7)]] float4 _9 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _10 : SV_Target0;
};

void frag_main()
{
    float _86 = (_5.z - _25.Sample(_26, _4).x) * _5.y;
    float _92 = (_14_m8 * _14_m39) * _5.y;
    float _96 = (_14_m4 * _14_m39) * _5.y;
    float3 _103 = _14_m2.xyz * _3.xyz;
    float4 _119 = float4(_103.x, _103.y, _103.z, _14_m2.w) * _23.Sample(_24, _9.xy + (float2(_14_m0, _14_m1) * _16_m12.y));
    float4 _132 = _14_m7 * _21.Sample(_22, _9.zw + (float2(_14_m5, _14_m6) * _16_m12.y));
    float _133 = _92 * 0.5f;
    float3 _148 = _119.xyz * _119.w;
    float3 _152 = _132.xyz * _132.w;
    float4 _156 = lerp(float4(_148.x, _148.y, _148.z, _119.w), float4(_152.x, _152.y, _152.z, _132.w), (clamp(_86 + _133, 0.0f, 1.0f) * sqrt(min(1.0f, _92))).xxxx) * (1.0f - clamp(((_86 - _133) + (_96 * 0.5f)) / (1.0f + _96), 0.0f, 1.0f));
    float2 _185 = clamp(((_19_m0[0]._m3.zw - _19_m0[0]._m3.xy) - abs(_6.xy)) * _6.zw, 0.0f.xx, 1.0f.xx);
    float4 _190 = clamp(_19_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _195 = ((_6.xy + _190.xy) + _190.zw) * 0.5f;
    float _196 = _195.x;
    float _201 = _195.y;
    _10 = (((_156 + ((_8 * clamp((_25.Sample(_26, _7.xy).x * _7.z) - _7.w, 0.0f, 1.0f)) * (1.0f - _156.w))) * (_185.x * _185.y)) * (((smoothstep(0.0f, _19_m0[0]._m4.x, _196 - _190.x) * smoothstep(0.0f, _19_m0[0]._m4.z, _190.z - _196)) * smoothstep(0.0f, _19_m0[0]._m4.y, _201 - _190.y)) * smoothstep(0.0f, _19_m0[0]._m4.w, _190.w - _201))) * _3.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _10 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._10 = _10;
    return stage_output;
}
