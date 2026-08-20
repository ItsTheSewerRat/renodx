#include "../common.hlsl"

[[vk::binding(3, 3)]] cbuffer _8_9 : register(b3, space3)
{
    float4 _9_m0 : packoffset(c0);
    float4 _9_m1 : packoffset(c1);
    float4 _9_m2 : packoffset(c2);
    float4 _9_m3 : packoffset(c3);
    float4 _9_m4 : packoffset(c4);
    float4 _9_m5 : packoffset(c5);
    float4 _9_m6 : packoffset(c6);
    float4 _9_m7 : packoffset(c7);
    float4 _9_m8 : packoffset(c8);
};

[[vk::binding(4, 3)]] cbuffer _12_13 : register(b4, space3)
{
    float4 _13_m0 : packoffset(c0);
    float4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c2);
    float4 _13_m3 : packoffset(c3);
    float4 _13_m4 : packoffset(c4);
    float _13_m5 : packoffset(c5);
    float _13_m6 : packoffset(c5.y);
    float _13_m7 : packoffset(c5.z);
};

[[vk::binding(3, 1)]] Texture2D<float4> _15 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _16 : register(s0, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _17 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _18 : register(s2, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _19 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _20 : register(s1, space1);

static float2 _3;
static float2 _4;
static float4 _5;
static float2 _6;
static float4 _7;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float2 _4 : TEXCOORD1;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(4)]] float2 _6 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 _7 : SV_Target0;
};

void frag_main()
{
    float _95 = _9_m6.x / _9_m6.y;
    float _101 = 0.5f - ((_13_m5 * ((_95 > 1.0f) ? (1.0f / _95) : _95)) * 0.5f);
    float _113 = (_5.w * (1.0f - _13_m7)) * (smoothstep(0.5f, _101, abs(_6.x - 0.5f)) * smoothstep(0.5f, _101, abs(_6.y - 0.5f)));
    /*
    Vanilla shader code from 0xE18EC64F:
    float3 _117 = mul(float3x3(float3(1.16437995433807373046875f, 0.0f, 1.5960299968719482421875f), float3(1.16437995433807373046875f, -0.39175999164581298828125f, -0.812969982624053955078125f), float3(1.16437995433807373046875f, 2.01723003387451171875f, 0.0f)), float3(_15.Sample(_16, _3).w, _17.Sample(_18, _4).w, _19.Sample(_20, _4).w) + float3(-0.06274999678134918212890625f, -0.501959979534149169921875f, -0.501959979534149169921875f)).xyz * _113;
    float4 _118 = float4(_117.x, _117.y, _117.z, _60.w);
    */
    // RenoDX code start: Expand SDR video luminance into HDR and clear sampled alpha before calculated opacity.
    float3 _117 = AutoHDRVideo(mul(float3x3(float3(1.16437995433807373046875f, 0.0f, 1.5960299968719482421875f), float3(1.16437995433807373046875f, -0.39175999164581298828125f, -0.812969982624053955078125f), float3(1.16437995433807373046875f, 2.01723003387451171875f, 0.0f)), float3(_15.Sample(_16, _3).w, _17.Sample(_18, _4).w, _19.Sample(_20, _4).w) + float3(-0.06274999678134918212890625f, -0.501959979534149169921875f, -0.501959979534149169921875f)).xyz) * _113;
    float4 _118 = float4(_117.x, _117.y, _117.z, 0.0f);
    // RenoDX code end
    _118.w = lerp(1.0f - _113, 1.0f, _13_m6);
    _7 = _118;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._7 = _7;
    return stage_output;
}
