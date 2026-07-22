#include "../shared.h"

struct _17
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    column_major float4x4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
    float4 _m8;
    float4 _m9;
};

static float4 _138;

[[vk::binding(12, 0)]]
cbuffer _12_13 : register(b12, space0)
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
    column_major float4x4 _13_m12 : packoffset(c45);
    column_major float4x4 _13_m13 : packoffset(c49);
    column_major float4x4 _13_m14 : packoffset(c53);
    column_major float4x4 _13_m15 : packoffset(c57);
    column_major float4x4 _13_m16 : packoffset(c61);
    column_major float4x4 _13_m17 : packoffset(c65);
    column_major float4x4 _13_m18 : packoffset(c69);
    column_major float4x4 _13_m19 : packoffset(c73);
    column_major float4x4 _13_m20 : packoffset(c77);
    float4 _13_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _14_15 : register(b16, space0)
{
    float4 _15_m0 : packoffset(c0);
    float4 _15_m1 : packoffset(c1);
    float4 _15_m2 : packoffset(c2);
    float4 _15_m3 : packoffset(c3);
    float4 _15_m4 : packoffset(c4);
    float4 _15_m5 : packoffset(c5);
    float4 _15_m6[6] : packoffset(c6);
    float4 _15_m7[6] : packoffset(c12);
    float4 _15_m8 : packoffset(c18);
    float4 _15_m9 : packoffset(c19);
    float4 _15_m10 : packoffset(c20);
    float4 _15_m11 : packoffset(c21);
    float4 _15_m12 : packoffset(c22);
    float4 _15_m13 : packoffset(c23);
    float4 _15_m14 : packoffset(c24);
    float4 _15_m15 : packoffset(c25);
    float _15_m16 : packoffset(c26);
    float _15_m17 : packoffset(c26.y);
    float _15_m18 : packoffset(c26.z);
    uint _15_m19 : packoffset(c26.w);
    float4 _15_m20 : packoffset(c27);
    int4 _15_m21 : packoffset(c28);
    float4 _15_m22 : packoffset(c29);
    float4 _15_m23 : packoffset(c30);
    float4 _15_m24 : packoffset(c31);
    float4 _15_m25 : packoffset(c32);
    float4 _15_m26 : packoffset(c33);
    float4 _15_m27 : packoffset(c34);
    float4 _15_m28 : packoffset(c35);
    float4 _15_m29 : packoffset(c36);
    float4 _15_m30 : packoffset(c37);
    float4 _15_m31 : packoffset(c38);
    float4 _15_m32[4] : packoffset(c39);
    float4 _15_m33[4] : packoffset(c43);
    float4 _15_m34[4] : packoffset(c47);
    float4 _15_m35[4] : packoffset(c51);
    float4 _15_m36 : packoffset(c55);
    float4 _15_m37 : packoffset(c56);
    float4 _15_m38[4] : packoffset(c57);
    float4 _15_m39[4] : packoffset(c61);
    float4 _15_m40[4] : packoffset(c65);
    float4 _15_m41 : packoffset(c69);
    float4 _15_m42 : packoffset(c70);
    float4 _15_m43 : packoffset(c71);
    float4 _15_m44 : packoffset(c72);
    float4 _15_m45 : packoffset(c73);
    float4 _15_m46 : packoffset(c74);
    float4 _15_m47 : packoffset(c75);
    float4 _15_m48 : packoffset(c76);
    float4 _15_m49 : packoffset(c77);
    float4 _15_m50 : packoffset(c78);
    float4 _15_m51 : packoffset(c79);
    float4 _15_m52 : packoffset(c80);
    float4 _15_m53 : packoffset(c81);
    float4 _15_m54 : packoffset(c82);
    float4 _15_m55 : packoffset(c83);
    float4 _15_m56 : packoffset(c84);
    float4 _15_m57 : packoffset(c85);
    float4 _15_m58 : packoffset(c86);
    float4 _15_m59 : packoffset(c87);
    float4 _15_m60 : packoffset(c88);
    float4 _15_m61 : packoffset(c89);
    float4 _15_m62 : packoffset(c90);
    float4 _15_m63 : packoffset(c91);
    float4 _15_m64 : packoffset(c92);
    float4 _15_m65 : packoffset(c93);
    float4 _15_m66 : packoffset(c94);
    float4 _15_m67 : packoffset(c95);
    float4 _15_m68 : packoffset(c96);
    float4 _15_m69 : packoffset(c97);
    float4 _15_m70 : packoffset(c98);
    float4 _15_m71 : packoffset(c99);
    float4 _15_m72 : packoffset(c100);
    float4 _15_m73 : packoffset(c101);
    float4 _15_m74 : packoffset(c102);
    float4 _15_m75 : packoffset(c103);
    float4 _15_m76 : packoffset(c104);
    float4 _15_m77 : packoffset(c105);
    float4 _15_m78 : packoffset(c106);
    float4 _15_m79 : packoffset(c107);
    float4 _15_m80 : packoffset(c108);
    float4 _15_m81 : packoffset(c109);
    float4 _15_m82 : packoffset(c110);
    float4 _15_m83 : packoffset(c111);
    float4 _15_m84 : packoffset(c112);
    float4 _15_m85 : packoffset(c113);
    float4 _15_m86 : packoffset(c114);
    float4 _15_m87 : packoffset(c115);
    float4 _15_m88 : packoffset(c116);
    float4 _15_m89 : packoffset(c117);
    float4 _15_m90 : packoffset(c118);
    float4 _15_m91 : packoffset(c119);
    float4 _15_m92 : packoffset(c120);
    float4 _15_m93 : packoffset(c121);
    float4 _15_m94 : packoffset(c122);
    float4 _15_m95 : packoffset(c123);
    float4 _15_m96 : packoffset(c124);
    float4 _15_m97 : packoffset(c125);
    float4 _15_m98 : packoffset(c126);
    float4 _15_m99[2] : packoffset(c127);
    float4 _15_m100[2] : packoffset(c129);
    float _15_m101 : packoffset(c131);
    float _15_m102 : packoffset(c131.y);
    float _15_m103 : packoffset(c131.z);
    float _15_m104 : packoffset(c131.w);
    float4 _15_m105 : packoffset(c132);
    float4 _15_m106 : packoffset(c133);
    float4 _15_m107 : packoffset(c134);
    float4 _15_m108 : packoffset(c135);
    float4 _15_m109 : packoffset(c136);
    float4 _15_m110 : packoffset(c137);
    float4 _15_m111 : packoffset(c138);
    float4 _15_m112 : packoffset(c139);
    float4 _15_m113 : packoffset(c140);
    float4 _15_m114 : packoffset(c141);
    float4 _15_m115 : packoffset(c142);
    float4 _15_m116 : packoffset(c143);
    float4 _15_m117 : packoffset(c144);
    float4 _15_m118 : packoffset(c145);
    float4 _15_m119 : packoffset(c146);
    float4 _15_m120 : packoffset(c147);
    float4 _15_m121 : packoffset(c148);
    float4 _15_m122 : packoffset(c149);
    float4 _15_m123 : packoffset(c150);
    float4 _15_m124 : packoffset(c151);
    float4 _15_m125 : packoffset(c152);
    float4 _15_m126 : packoffset(c153);
    float4 _15_m127 : packoffset(c154);
    float4 _15_m128 : packoffset(c155);
    float4 _15_m129 : packoffset(c156);
    float4 _15_m130 : packoffset(c157);
    float4 _15_m131 : packoffset(c158);
    float4 _15_m132 : packoffset(c159);
    float4 _15_m133 : packoffset(c160);
    float4 _15_m134 : packoffset(c161);
    column_major float4x4 _15_m135 : packoffset(c162);
    float4 _15_m136 : packoffset(c166);
    float4 _15_m137 : packoffset(c167);
    float4 _15_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _16_18 : register(b0, space2)
{
    _17 _18_m0[256] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _25_26 : register(b0, space1)
{
    float _26_m0 : packoffset(c0);
    float _26_m1 : packoffset(c0.y);
    float _26_m2 : packoffset(c0.z);
    float _26_m3 : packoffset(c0.w);
    float _26_m4 : packoffset(c1);
    float _26_m5 : packoffset(c1.y);
    float _26_m6 : packoffset(c1.z);
    float _26_m7 : packoffset(c1.w);
    float _26_m8 : packoffset(c2);
    float _26_m9 : packoffset(c2.y);
    float _26_m10 : packoffset(c2.z);
    float _26_m11 : packoffset(c2.w);
    float _26_m12 : packoffset(c3);
    float _26_m13 : packoffset(c3.y);
    float _26_m14 : packoffset(c3.z);
    float _26_m15 : packoffset(c3.w);
    float4 _26_m16 : packoffset(c4);
    float _26_m17 : packoffset(c5);
    float _26_m18 : packoffset(c5.y);
    float _26_m19 : packoffset(c5.z);
    float _26_m20 : packoffset(c5.w);
    float4 _26_m21 : packoffset(c6);
    float4 _26_m22 : packoffset(c7);
    float4 _26_m23 : packoffset(c8);
    float4 _26_m24 : packoffset(c9);
    float4 _26_m25 : packoffset(c10);
    float _26_m26 : packoffset(c11);
    float _26_m27 : packoffset(c11.y);
    float _26_m28 : packoffset(c11.z);
    float _26_m29 : packoffset(c11.w);
    float _26_m30 : packoffset(c12);
    float _26_m31 : packoffset(c12.y);
    float _26_m32 : packoffset(c12.z);
    float _26_m33 : packoffset(c12.w);
    float _26_m34 : packoffset(c13);
    float _26_m35 : packoffset(c13.y);
    float _26_m36 : packoffset(c13.z);
    float _26_m37 : packoffset(c13.w);
    float4 _26_m38 : packoffset(c14);
    float4 _26_m39 : packoffset(c15);
    float4 _26_m40 : packoffset(c16);
    float _26_m41 : packoffset(c17);
    float _26_m42 : packoffset(c17.y);
    float _26_m43 : packoffset(c17.z);
    float _26_m44 : packoffset(c17.w);
    float _26_m45 : packoffset(c18);
    float _26_m46 : packoffset(c18.y);
    float _26_m47 : packoffset(c18.z);
    float _26_m48 : packoffset(c18.w);
    float _26_m49 : packoffset(c19);
    float _26_m50 : packoffset(c19.y);
    float _26_m51 : packoffset(c19.z);
    float _26_m52 : packoffset(c19.w);
    float _26_m53 : packoffset(c20);
    float _26_m54 : packoffset(c20.y);
    float _26_m55 : packoffset(c20.z);
    float _26_m56 : packoffset(c20.w);
    float _26_m57 : packoffset(c21);
    float _26_m58 : packoffset(c21.y);
    float _26_m59 : packoffset(c21.z);
    float _26_m60 : packoffset(c21.w);
    float _26_m61 : packoffset(c22);
    float _26_m62 : packoffset(c22.y);
    float _26_m63 : packoffset(c22.z);
    float _26_m64 : packoffset(c22.w);
    float _26_m65 : packoffset(c23);
    float _26_m66 : packoffset(c23.y);
    float _26_m67 : packoffset(c23.z);
    float _26_m68 : packoffset(c23.w);
    float _26_m69 : packoffset(c24);
    float4 _26_m70 : packoffset(c25);
    float4 _26_m71 : packoffset(c26);
    float4 _26_m72 : packoffset(c27);
    float4 _26_m73 : packoffset(c28);
    float4 _26_m74 : packoffset(c29);
    float4 _26_m75 : packoffset(c30);
    float4 _26_m76 : packoffset(c31);
    float4 _26_m77 : packoffset(c32);
};

[[vk::binding(4, 1)]]
Texture2D<float4> _21 : register(t4, space1);
[[vk::binding(2, 1)]]
SamplerState _22 : register(s2, space1);
[[vk::binding(3, 1)]]
Texture2D<float4> _23 : register(t3, space1);
[[vk::binding(1, 1)]]
SamplerState _24 : register(s1, space1);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static uint _9;
static float4 _10;
static float4 _11;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(3)]] float3 _7 : TEXCOORD3;
    [[vk::location(4)]] float3 _8 : TEXCOORD4;
    [[vk::location(5)]] nointerpolation uint _9 : TEXCOORD5;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _10 : SV_Target0;
    [[vk::location(1)]] float4 _11 : SV_Target1;
};

void frag_main()
{
    float2 _158 = ((gl_FragCoord.xy * _15_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _161 = float4(_158, gl_FragCoord.z, 1.0f);
    _161.y = -_158.y;
    float4 _164 = mul(_13_m6, _161);
    float _175 = abs(mul(_13_m0, float4(_164.xyz / _164.w.xxx, 1.0f)).z);
    bool4 _187 = (_26_m5 != 0.0f).xxxx;
    float4 _189 = _26_m16 * float4(_187.x ? 1.0f.xxxx.x : _6.x, _187.y ? 1.0f.xxxx.y : _6.y, _187.z ? 1.0f.xxxx.z : _6.z, _187.w ? 1.0f.xxxx.w : _6.w);
    float3 _193 = _189.xyz * _26_m6;
    float4 _194 = float4(_193.x, _193.y, _193.z, _189.w);
    _194.w = _189.w * _26_m7;
    float _215 = (_26_m55 != 0.0f) ? _4.w : 1.0f;
    float4 _228 = _23.SampleBias(_24, _5.xy, float(int(_26_m26)) + _15_m16);
    float4 _232 = lerp(_228, float4(1.0f, 1.0f, 1.0f, _228.x), _26_m28.xxxx);
    float4 _244 = (1.0f - _26_m49).xxxx + (_232 * _26_m30);
    float4 _249 = _232 * _26_m33;
    float2 _283;
    if (_26_m30 != 0.0f)
    {
        float _265 = (_244.x * (_26_m56 + 1.0f)) - _26_m56;
        float4 _271 = _244;
        _271.w = _244.w * _265;
        bool2 _279 = (_26_m61 != 0.0f).xx;
        float2 _280 = (((_271.wy * 2.0f) - 1.0f.xx).xy * _26_m57).xy * _215;
        float2 _281 = float2(_265 * _26_m57, _265 * _26_m58) * _215;
        _283 = float2(_279.x ? _280.x : _281.x, _279.y ? _280.y : _281.y);
    }
    else
    {
        _283 = 0.0f.xx;
    }
    float4 _298 = _21.SampleBias(_22, _4.xy + (_283 * _26_m17), float(int(_26_m19)) + _15_m16);
    float4 _304 = (_194 * lerp(_298, float4(1.0f, 1.0f, 1.0f, _298.x), _26_m18.xxxx)) * ((1.0f - _26_m52).xxxx + (_232 * _26_m32));
    float _307 = _304.w;
    float4 _315 = ((_249 * clamp((_307 + _249.w) * _26_m70.w, 0.0f, 1.0f)) * _26_m70) + _304;
    float4 _316 = float4(_315.x, _315.y, _315.z, _304.w);
    float _322 = _26_m64 * _26_m68;
    bool4 _329 = (_26_m54 != 0.0f).xxxx;
    float _343 = (_232 * _26_m34).x - lerp(-1.0f, ((_26_m66 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _322) + (((1.0f - _26_m51).xxxx + (_232 * _26_m31)).x * _322));
    float _345 = clamp(_343 * _26_m65, 0.0f, 1.0f);
    float _348 = clamp((_26_m67 - _343) * _26_m65, 0.0f, 1.0f);
    float4 _354;
    _354.w = _307 * lerp(_345, _345, _26_m71.w);
    float3 _358 = lerp(_315.xyz, (_26_m71.xyz * _348) * _26_m6, _348.xxx);
    float4 _360 = float4(_329.x ? float4(_358.x, _358.y, _358.z, _354.w).x : _316.x, _329.y ? float4(_358.x, _358.y, _358.z, _354.w).y : _316.y, _329.z ? float4(_358.x, _358.y, _358.z, _354.w).z : _316.z, _329.w ? float4(_358.x, _358.y, _358.z, _354.w).w : _316.w);
    float _417 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _426 = (clamp(_360.w * ((_26_m41 != 0.0f) ? (clamp((_175 - _26_m42) / (_26_m43 - _26_m42), 0.0f, 1.0f) * clamp((_175 - _26_m44) / (_26_m45 - _26_m44), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _18_m0[_9]._m1.y)) * (((_18_m0[_9]._m1.x - ((_18_m0[_9]._m1.x >= 0.0f) ? _417 : (-_417))) > 0.0f) ? 1.0f : (1.0f - _26_m0));
    float3 _433 = clamp(((_360.xyz + (max(_360.xyz - _26_m9.xxx, 0.0f.xxx) * _26_m10)).xyz * ((1.0f - _26_m12) + (_15_m20.y * _26_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float _437 = _426 * (1.0f - _26_m1);
    float2 _478;
    if (clamp((_26_m3 + 1.0f) - _26_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _464 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
        _464.y = -_464.y;
        _478 = ((sqrt(sqrt(abs(_464 * 0.5f))) * float2(int2(sign(_464)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _478 = 0.0f.xx;
    }
    bool3 _480 = (_26_m1 == 2.0f).xxx;
    float3 _483 = ApplyVFXBoost(_433 * _426);
    float3 _484 = (1.0f - _426).xxx + _483;
    float3 _485 = float3(_480.x ? _484.x : _483.x, _480.y ? _484.y : _483.y, _480.z ? _484.z : _483.z);
    float4 _486 = float4(_485.x, _485.y, _485.z, 0.0f.xxxx.w);
    _486.w = _437;
    float3 _504 = ((lerp(dot(_486.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _486.xyz, _15_m76.w.xxx) * _15_m76.xyz) * _26_m11) + (_486.xyz * (1.0f - _26_m11));
    float2 _506 = min(_478, 1.0f.xx);
    float4 _507 = float4(_506.x, _506.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _507.z = 1.0f;
    _507.w = (_26_m2 * _26_m0) * float(clamp(max(dot(_433, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _426, _437) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_504.x, _504.y, _504.z, _486.w);
    _11 = _507;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._10 = _10;
    stage_output._11 = _11;
    return stage_output;
}
