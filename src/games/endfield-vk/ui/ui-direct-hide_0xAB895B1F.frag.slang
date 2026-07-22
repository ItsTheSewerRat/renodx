#include "../shared.h"

[[vk::binding(2, 1)]]
cbuffer _12_13 : register(b2)
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

[[vk::binding(6, 1)]] Texture2D<float4> _15 : register(t6);
[[vk::binding(4, 1)]] SamplerState _16 : register(s4);
[[vk::binding(5, 1)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(3, 1)]] SamplerState _18 : register(s3);

static float4 _3 = (float4)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;
static float4 _7 = (float4)0;
static float2 _8 = (float2)0;
static float4 _9 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(2)]] float4 _4 : TEXCOORD2;
    [[vk::location(3)]] float4 _5 : TEXCOORD3;
    [[vk::location(5)]] float4 _6 : TEXCOORD5;
    [[vk::location(6)]] float4 _7 : TEXCOORD6;
    [[vk::location(7)]] float2 _8 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _9 : SV_Target0;
};

void frag_main()
{
    float4 _66 = _17.Sample(_18, _4.xy) * _3;
    float _67 = _66.w;
    float3 _69 = _66.xyz * _67;
    float4 _70 = float4(_69.x, _69.y, _69.z, _66.w);
    _70.w = lerp(_67, 0.0f, _6.y);
    int _79 = int(floor(_6.x + 0.5f));
    int _80 = _79 & 7;
    int _81 = _80 - 2;
    if (_80 >= 3)
    {
        float _153;
        do
        {
            int _96 = _81 * min(max(_81, 0), 1);
            int _98 = (_79 >> 3) & 3;
            float _101 = clamp(_6.z, 0.0f, 1.0f);
            float _103 = 1.0f - step(_101, 9.9999997473787516355514526367188e-06f);
            float _104 = step(0.999989986419677734375f, _101);
            if (_96 != 3)
            {
                float _112 = lerp(_4.z, _4.w, step(1.5f, float(_96)));
                _153 = lerp(step(lerp(1.0f - _112, _112, step(0.5f, float(_98))), _101) * _103, 1.0f, _104);
                break;
            }
            float2 _120 = _4.zw - 0.5f.xx;
            float _122 = float(_98);
            float2 _135 = normalize(float2(clamp(1.0f - (abs(_122 - 1.0f) * 0.5f), 0.0f, 1.0f), clamp(1.0f - (abs(_122 - 2.0f) * 0.5f), 0.0f, 1.0f)) - 0.5f.xx);
            _153 = lerp(lerp(1.0f, step(frac(((atan2(_120.y, _120.x) - atan2(_135.y, _135.x)) * lerp(1.0f, -1.0f, float((_79 >> 5) & 1))) * 0.15915493667125701904296875f), _101), step(9.9999999747524270787835121154785e-07f, dot(_120, _120))) * _103, 1.0f, _104);
            break;
        } while(false);
        if ((_153 - 0.5f) < 0.0f)
        {
            discard;
        }
    }
    float4 _170 = _3 * clamp((_15.Sample(_16, _4.xy).x * _5.x) - _5.w, 0.0f, 1.0f);
    _9 = lerp(_70, (_170 + ((float4(_13_m26.xyz * _13_m26.w, _13_m26.w) * clamp((_15.Sample(_16, _7.xy).x * _8.x) - _8.y, 0.0f, 1.0f)) * (1.0f - _170.w))) * _7.z, (1.0f - clamp(abs(float(_81)), 0.0f, 1.0f)).xxxx);
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
