#include "../shared.h"

struct _16
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 1)]]
cbuffer _11_12 : register(b0)
{
    float _12_m0 : packoffset(c0);
    float _12_m1 : packoffset(c0.y);
    float4 _12_m2 : packoffset(c1);
    float _12_m3 : packoffset(c2);
    float _12_m4 : packoffset(c2.y);
    float _12_m5 : packoffset(c2.z);
    float _12_m6 : packoffset(c2.w);
    float4 _12_m7 : packoffset(c3);
    float _12_m8 : packoffset(c4);
    float _12_m9 : packoffset(c4.y);
    float _12_m10 : packoffset(c4.z);
    float _12_m11 : packoffset(c4.w);
    float _12_m12 : packoffset(c5);
    float _12_m13 : packoffset(c5.y);
    float _12_m14 : packoffset(c5.z);
    float _12_m15 : packoffset(c5.w);
    float4 _12_m16 : packoffset(c6);
    float4 _12_m17 : packoffset(c7);
    float3 _12_m18 : packoffset(c8);
    column_major float4x4 _12_m19 : packoffset(c9);
    float4 _12_m20 : packoffset(c13);
    float _12_m21 : packoffset(c14);
    float _12_m22 : packoffset(c14.y);
    float _12_m23 : packoffset(c14.z);
    float _12_m24 : packoffset(c14.w);
    float _12_m25 : packoffset(c15);
    float4 _12_m26 : packoffset(c16);
    float _12_m27 : packoffset(c17);
    float _12_m28 : packoffset(c17.y);
    float _12_m29 : packoffset(c17.z);
    float _12_m30 : packoffset(c17.w);
    float4 _12_m31 : packoffset(c18);
    float _12_m32 : packoffset(c19);
    float _12_m33 : packoffset(c19.y);
    float _12_m34 : packoffset(c19.z);
    float _12_m35 : packoffset(c19.w);
    float _12_m36 : packoffset(c20);
    float _12_m37 : packoffset(c20.y);
    float _12_m38 : packoffset(c20.z);
    float _12_m39 : packoffset(c20.w);
    float _12_m40 : packoffset(c21);
    float _12_m41 : packoffset(c21.y);
    float _12_m42 : packoffset(c21.z);
    float _12_m43 : packoffset(c21.w);
    float _12_m44 : packoffset(c22);
    float4 _12_m45 : packoffset(c23);
    float _12_m46 : packoffset(c24);
    float _12_m47 : packoffset(c24.y);
    float _12_m48 : packoffset(c24.z);
    float _12_m49 : packoffset(c24.w);
    float _12_m50 : packoffset(c25);
    float _12_m51 : packoffset(c25.y);
    float _12_m52 : packoffset(c25.z);
    float _12_m53 : packoffset(c25.w);
    float _12_m54 : packoffset(c26);
    float4 _12_m55 : packoffset(c27);
    column_major float4x4 _12_m56 : packoffset(c28);
    float4 _12_m57 : packoffset(c32);
    float4 _12_m58 : packoffset(c33);
};

[[vk::binding(0, 0)]]
cbuffer _13_14 : register(b0)
{
    column_major float4x4 _14_m0 : packoffset(c0);
    column_major float4x4 _14_m1 : packoffset(c4);
    column_major float4x4 _14_m2 : packoffset(c8);
    column_major float4x4 _14_m3 : packoffset(c12);
    column_major float4x4 _14_m4 : packoffset(c16);
    column_major float4x4 _14_m5 : packoffset(c20);
    column_major float4x4 _14_m6 : packoffset(c24);
    column_major float4x4 _14_m7 : packoffset(c28);
    column_major float4x4 _14_m8 : packoffset(c32);
    column_major float4x4 _14_m9 : packoffset(c36);
    column_major float4x4 _14_m10 : packoffset(c40);
    float4 _14_m11 : packoffset(c44);
    float4 _14_m12 : packoffset(c45);
    float4 _14_m13 : packoffset(c46);
    float4 _14_m14 : packoffset(c47);
    float4 _14_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _15_17 : register(b0)
{
    _16 _17_m0[1] : packoffset(c0);
};

[[vk::binding(3, 1)]] Texture2D<float4> _19 : register(t3);
[[vk::binding(1, 1)]] SamplerState _20 : register(s1);
[[vk::binding(4, 1)]] Texture2D<float4> _21 : register(t4);
[[vk::binding(2, 1)]] SamplerState _22 : register(s2);
[[vk::binding(1, 3)]] Texture2D<float4> _23 : register(t1);
[[vk::binding(0, 3)]] SamplerState _24 : register(s0);

static float4 _3 = (float4)0;
static float2 _4 = (float2)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(5)]] float4 _7 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _8 : SV_Target0;
};

void frag_main()
{
    float4 _76 = _23.Sample(_24, _4);
    float _77 = _76.x;
    if ((_77 - _5.x) < 0.0f)
    {
        discard;
    }
    float _89 = (_5.z - _77) * _5.y;
    float _95 = (_12_m8 * _12_m39) * _5.y;
    float _99 = (_12_m4 * _12_m39) * _5.y;
    float3 _106 = _12_m2.xyz * _3.xyz;
    float4 _122 = float4(_106.x, _106.y, _106.z, _12_m2.w) * _21.Sample(_22, _7.xy + (float2(_12_m0, _12_m1) * _14_m12.y));
    float4 _135 = _12_m7 * _19.Sample(_20, _7.zw + (float2(_12_m5, _12_m6) * _14_m12.y));
    float _136 = _95 * 0.5f;
    float3 _151 = _122.xyz * _122.w;
    float3 _155 = _135.xyz * _135.w;
    float2 _170 = clamp(((_17_m0[0]._m3.zw - _17_m0[0]._m3.xy) - abs(_6.xy)) * _6.zw, 0.0f.xx, 1.0f.xx);
    float4 _175 = clamp(_17_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _180 = ((_6.xy + _175.xy) + _175.zw) * 0.5f;
    float _181 = _180.x;
    float _186 = _180.y;
    _8 = (((lerp(float4(_151.x, _151.y, _151.z, _122.w), float4(_155.x, _155.y, _155.z, _135.w), (clamp(_89 + _136, 0.0f, 1.0f) * sqrt(min(1.0f, _95))).xxxx) * (1.0f - clamp(((_89 - _136) + (_99 * 0.5f)) / (1.0f + _99), 0.0f, 1.0f))) * (_170.x * _170.y)) * (((smoothstep(0.0f, _17_m0[0]._m4.x, _181 - _175.x) * smoothstep(0.0f, _17_m0[0]._m4.z, _175.z - _181)) * smoothstep(0.0f, _17_m0[0]._m4.y, _186 - _175.y)) * smoothstep(0.0f, _17_m0[0]._m4.w, _175.w - _186))) * _3.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _8 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._8 = _8;
    return stage_output;
}
