#include "../shared.h"

struct _10
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
};

[[vk::binding(0, 2)]]
cbuffer _9_11 : register(b0)
{
    _10 _11_m0[1] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _12_13 : register(b0)
{
    float4 _13_m0 : packoffset(c0);
    column_major float4x4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c5);
    float4 _13_m3 : packoffset(c6);
    float _13_m4 : packoffset(c7);
    float4 _13_m5 : packoffset(c8);
    float4 _13_m6 : packoffset(c9);
    float4 _13_m7 : packoffset(c10);
    float _13_m8 : packoffset(c11);
    float _13_m9 : packoffset(c11.y);
    float _13_m10 : packoffset(c11.z);
    float _13_m11 : packoffset(c11.w);
    float _13_m12 : packoffset(c12);
};

[[vk::binding(1, 3)]] Texture2D<float4> _15 : register(t1);
[[vk::binding(0, 3)]] SamplerState _16 : register(s0);
[[vk::binding(2, 1)]] Texture2D<float4> _17 : register(t2);
[[vk::binding(1, 1)]] SamplerState _18 : register(s1);

static float4 _3 = (float4)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
static float4 _6 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _3 : TEXCOORD0;
    [[vk::location(1)]] float4 _4 : TEXCOORD1;
    [[vk::location(3)]] float4 _5 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _6 : SV_Target0;
};

void frag_main()
{
    float4 _60 = _3;
    _60.w = round(_60.w * 255.0f) * 0.0039215688593685626983642578125f;
    float4 _72 = _15.Sample(_16, _4.xy);
    _72.w = (_13_m12 != 0.0f) ? 1.0f : _72.w;
    float4 _82 = _60 * (_72 + _11_m0[0]._m2);
    bool2 _152 = (_13_m4 != 0.0f).xx;
    float2 _153 = float2((_4.z < 0.0f) ? _4.z : (((_4.z >= 0.0f) && (_4.z <= _13_m2.x)) ? ((_4.z * _13_m3.x) / _13_m2.x) : ((_4.z <= _13_m2.y) ? ((((_4.z - _13_m2.x) * (_13_m3.y - _13_m3.x)) / (_13_m2.y - _13_m2.x)) + _13_m3.x) : ((_4.z <= 1.0f) ? ((((_4.z - _13_m2.y) * (1.0f - _13_m3.y)) / (1.0f - _13_m2.y)) + _13_m3.y) : _4.z))), (_4.w < 0.0f) ? _4.w : (((_4.w >= 0.0f) && (_4.w <= _13_m2.z)) ? ((_4.w * _13_m3.z) / _13_m2.z) : ((_4.w <= _13_m2.w) ? ((((_4.w - _13_m2.z) * (_13_m3.w - _13_m3.z)) / (_13_m2.w - _13_m2.z)) + _13_m3.z) : ((_4.w <= 1.0f) ? ((((_4.w - _13_m2.w) * (1.0f - _13_m3.w)) / (1.0f - _13_m2.w)) + _13_m3.w) : _4.w))));
    float2 _155 = float2(_152.x ? _153.x : _4.zw.x, _152.y ? _153.y : _4.zw.y);
    float _167 = _155.x;
    float _174 = _155.y;
    float2 _192 = clamp(((_11_m0[0]._m3.zw - _11_m0[0]._m3.xy) - abs(_5.xy)) * _5.zw, 0.0f.xx, 1.0f.xx);
    float4 _197 = clamp(_11_m0[0]._m3, (-20000000000.0f).xxxx, 20000000000.0f.xxxx);
    float2 _202 = ((_5.xy + _197.xy) + _197.zw) * 0.5f;
    float _203 = _202.x;
    float _208 = _202.y;
    float _228 = ((_82.w * ((_17.Sample(_18, (_155.xy * _13_m0.xy) + _13_m0.zw).w * (step(_167, 1.0f) * step(-_167, 0.0f))) * (step(_174, 1.0f) * step(-_174, 0.0f)))) * (_192.x * _192.y)) * (((smoothstep(0.0f, _11_m0[0]._m4.x, _203 - _197.x) * smoothstep(0.0f, _11_m0[0]._m4.z, _197.z - _203)) * smoothstep(0.0f, _11_m0[0]._m4.y, _208 - _197.y)) * smoothstep(0.0f, _11_m0[0]._m4.w, _197.w - _208));
    float3 _230 = _82.xyz * _228;
    float4 _231 = float4(_230.x, _230.y, _230.z, _82.w);
    _231.w = lerp(_228, 0.0f, _13_m8);
    _6 = _231;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    frag_main();
    if (UI_VISIBILITY < 0.5f)
    {
        _6 = 0.0f;
    }
    SPIRV_Cross_Output stage_output;
    stage_output._6 = _6;
    return stage_output;
}
