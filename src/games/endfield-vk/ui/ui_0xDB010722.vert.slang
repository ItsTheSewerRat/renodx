#include "../shared.h"

struct _19
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

static float _70;

[[vk::binding(2, 0)]]
cbuffer _12_13 : register(b2, space0)
{
    float4 _13_m0 : packoffset(c0);
    float4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c2);
    float4 _13_m3 : packoffset(c3);
    float4 _13_m4 : packoffset(c4);
    column_major float4x4 _13_m5 : packoffset(c5);
    column_major float4x4 _13_m6 : packoffset(c9);
    column_major float4x4 _13_m7 : packoffset(c13);
    column_major float4x4 _13_m8 : packoffset(c17);
    int _13_m9 : packoffset(c21);
    float4 _13_m10 : packoffset(c22);
};

[[vk::binding(1, 0)]]
cbuffer _14_15 : register(b1, space0)
{
    float _15_m0 : packoffset(c0);
    float _15_m1 : packoffset(c0.y);
    float _15_m2 : packoffset(c0.z);
    float _15_m3 : packoffset(c0.w);
};

[[vk::binding(0, 0)]]
cbuffer _16_17 : register(b0, space0)
{
    column_major float4x4 _17_m0 : packoffset(c0);
    column_major float4x4 _17_m1 : packoffset(c4);
    column_major float4x4 _17_m2 : packoffset(c8);
    column_major float4x4 _17_m3 : packoffset(c12);
    column_major float4x4 _17_m4 : packoffset(c16);
    column_major float4x4 _17_m5 : packoffset(c20);
    column_major float4x4 _17_m6 : packoffset(c24);
    column_major float4x4 _17_m7 : packoffset(c28);
    column_major float4x4 _17_m8 : packoffset(c32);
    column_major float4x4 _17_m9 : packoffset(c36);
    column_major float4x4 _17_m10 : packoffset(c40);
    float4 _17_m11 : packoffset(c44);
    float4 _17_m12 : packoffset(c45);
    float4 _17_m13 : packoffset(c46);
    float4 _17_m14 : packoffset(c47);
    float4 _17_m15 : packoffset(c48);
};

[[vk::binding(0, 2)]]
cbuffer _18_20 : register(b0, space2)
{
    _19 _20_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _21_22 : register(b0, space1)
{
    float4 _22_m0 : packoffset(c0);
    column_major float4x4 _22_m1 : packoffset(c1);
    float4 _22_m2 : packoffset(c5);
    float4 _22_m3 : packoffset(c6);
    float _22_m4 : packoffset(c7);
    float4 _22_m5 : packoffset(c8);
    float4 _22_m6 : packoffset(c9);
    float4 _22_m7 : packoffset(c10);
    float _22_m8 : packoffset(c11);
    float _22_m9 : packoffset(c11.y);
    float _22_m10 : packoffset(c11.z);
    float _22_m11 : packoffset(c11.w);
    float _22_m12 : packoffset(c12);
};

static float4 gl_Position;
static float4 _3;
static float4 _4;
static float2 _5;
static float4 _7;
static float2 _8;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float4 _4 : TEXCOORD1;
    [[vk::location(2)]] float2 _5 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _7 : TEXCOORD0;
    [[vk::location(1)]] float2 _8 : TEXCOORD1;
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    bool _93 = _15_m0 > 0.0f;
    float4 _169;
    float4 _170;
    float4 _171;
    float4 _172;
    if (_93)
    {
        _169 = float4(_17_m8[3].x, _17_m8[3].y, _17_m8[3].z, _17_m8[3].w);
        _170 = float4(_17_m8[2].x, _17_m8[2].y, _17_m8[2].z, _17_m8[2].w);
        _171 = float4(_17_m8[1].x, _17_m8[1].y, _17_m8[1].z, _17_m8[1].w);
        _172 = float4(_17_m8[0].x, _17_m8[0].y, _17_m8[0].z, _17_m8[0].w);
    }
    else
    {
        _169 = float4(_13_m8[3].x, _13_m8[3].y, _13_m8[3].z, _13_m8[3].w);
        _170 = float4(_13_m8[2].x, _13_m8[2].y, _13_m8[2].z, _13_m8[2].w);
        _171 = float4(_13_m8[1].x, _13_m8[1].y, _13_m8[1].z, _13_m8[1].w);
        _172 = float4(_13_m8[0].x, _13_m8[0].y, _13_m8[0].z, _13_m8[0].w);
    }
    float4 _178 = mul(float4x4(_172, _171, _170, _169), float4(float3(mul(_20_m0[0]._m0, float4(_3.xyz, 1.0f)).xyz) - (_17_m11.xyz * _15_m0), 1.0f));
    float4 _195;
    if (_93)
    {
        float4 _187 = _178;
        _187.x = _178.x * (1.0f - (_15_m1 * 2.0f));
        _187.y = _178.y * (1.0f - (_15_m2 * 2.0f));
        _195 = _187;
    }
    else
    {
        _195 = _178;
    }
    float4 _196 = _195 * 0.5f;
    float2 _205 = float2(_196.x, _196.y * _17_m13.x) + _196.w.xx;
    float4 _232;
    float4 _233;
    if (_93)
    {
        _232 = float4(_17_m2[1].x, _17_m2[1].y, _70, _70);
        _233 = float4(_17_m2[0].x, _17_m2[0].y, _70, _70);
    }
    else
    {
        _232 = float4(_13_m5[1].x, _13_m5[1].y, _70, _70);
        _233 = float4(_13_m5[0].x, _13_m5[0].y, _70, _70);
    }
    float4 _245 = clamp(_20_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float4 _274 = _4 * _22_m5;
    bool _277 = _22_m9 != 0.0f;
    float3 _282 = _274.xyz * (_277 ? _22_m10 : 1.0f);
    float4 _283 = float4(_282.x, _282.y, _282.z, _274.w);
    _283.w = _274.w * (_277 ? _22_m11 : 1.0f);
    float4 _292 = _195;
    _292.y = -_195.y;
    gl_Position = _292;
    _7 = _283;
    _8 = (_5 * _22_m6.xy) + _22_m6.zw;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    vert_main();
    if (LATENCY_BAR_DRAW_OPACITY < 0.5f)
    {
        float2 d3d_ndc = float2(gl_Position.x, -gl_Position.y) / max(abs(gl_Position.w), 0.00001f);
        if ((d3d_ndc.x >= -0.99f && d3d_ndc.x <= -0.93f)
            && (d3d_ndc.y >= -0.99f && d3d_ndc.y <= -0.90f))
        {
            gl_Position = float4(2.0f, 2.0f, 0.0f, 1.0f);
        }
    }
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output._7 = _7;
    stage_output._8 = _8;
    return stage_output;
}
