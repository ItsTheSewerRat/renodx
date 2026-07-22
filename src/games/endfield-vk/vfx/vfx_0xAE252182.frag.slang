#include "../shared.h"

struct _16
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

static float4 _118;

[[vk::binding(12, 0)]]
cbuffer _11_12 : register(b12, space0)
{
    column_major float4x4 _12_m0 : packoffset(c0);
    column_major float4x4 _12_m1 : packoffset(c4);
    column_major float4x4 _12_m2 : packoffset(c8);
    column_major float4x4 _12_m3 : packoffset(c12);
    column_major float4x4 _12_m4 : packoffset(c16);
    column_major float4x4 _12_m5 : packoffset(c20);
    column_major float4x4 _12_m6 : packoffset(c24);
    column_major float4x4 _12_m7 : packoffset(c28);
    column_major float4x4 _12_m8 : packoffset(c32);
    column_major float4x4 _12_m9 : packoffset(c36);
    column_major float4x4 _12_m10 : packoffset(c40);
    float4 _12_m11 : packoffset(c44);
    column_major float4x4 _12_m12 : packoffset(c45);
    column_major float4x4 _12_m13 : packoffset(c49);
    column_major float4x4 _12_m14 : packoffset(c53);
    column_major float4x4 _12_m15 : packoffset(c57);
    column_major float4x4 _12_m16 : packoffset(c61);
    column_major float4x4 _12_m17 : packoffset(c65);
    column_major float4x4 _12_m18 : packoffset(c69);
    column_major float4x4 _12_m19 : packoffset(c73);
    column_major float4x4 _12_m20 : packoffset(c77);
    float4 _12_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _13_14 : register(b16, space0)
{
    float4 _14_m0 : packoffset(c0);
    float4 _14_m1 : packoffset(c1);
    float4 _14_m2 : packoffset(c2);
    float4 _14_m3 : packoffset(c3);
    float4 _14_m4 : packoffset(c4);
    float4 _14_m5 : packoffset(c5);
    float4 _14_m6[6] : packoffset(c6);
    float4 _14_m7[6] : packoffset(c12);
    float4 _14_m8 : packoffset(c18);
    float4 _14_m9 : packoffset(c19);
    float4 _14_m10 : packoffset(c20);
    float4 _14_m11 : packoffset(c21);
    float4 _14_m12 : packoffset(c22);
    float4 _14_m13 : packoffset(c23);
    float4 _14_m14 : packoffset(c24);
    float4 _14_m15 : packoffset(c25);
    float _14_m16 : packoffset(c26);
    float _14_m17 : packoffset(c26.y);
    float _14_m18 : packoffset(c26.z);
    uint _14_m19 : packoffset(c26.w);
    float4 _14_m20 : packoffset(c27);
    int4 _14_m21 : packoffset(c28);
    float4 _14_m22 : packoffset(c29);
    float4 _14_m23 : packoffset(c30);
    float4 _14_m24 : packoffset(c31);
    float4 _14_m25 : packoffset(c32);
    float4 _14_m26 : packoffset(c33);
    float4 _14_m27 : packoffset(c34);
    float4 _14_m28 : packoffset(c35);
    float4 _14_m29 : packoffset(c36);
    float4 _14_m30 : packoffset(c37);
    float4 _14_m31 : packoffset(c38);
    float4 _14_m32[4] : packoffset(c39);
    float4 _14_m33[4] : packoffset(c43);
    float4 _14_m34[4] : packoffset(c47);
    float4 _14_m35[4] : packoffset(c51);
    float4 _14_m36 : packoffset(c55);
    float4 _14_m37 : packoffset(c56);
    float4 _14_m38[4] : packoffset(c57);
    float4 _14_m39[4] : packoffset(c61);
    float4 _14_m40[4] : packoffset(c65);
    float4 _14_m41 : packoffset(c69);
    float4 _14_m42 : packoffset(c70);
    float4 _14_m43 : packoffset(c71);
    float4 _14_m44 : packoffset(c72);
    float4 _14_m45 : packoffset(c73);
    float4 _14_m46 : packoffset(c74);
    float4 _14_m47 : packoffset(c75);
    float4 _14_m48 : packoffset(c76);
    float4 _14_m49 : packoffset(c77);
    float4 _14_m50 : packoffset(c78);
    float4 _14_m51 : packoffset(c79);
    float4 _14_m52 : packoffset(c80);
    float4 _14_m53 : packoffset(c81);
    float4 _14_m54 : packoffset(c82);
    float4 _14_m55 : packoffset(c83);
    float4 _14_m56 : packoffset(c84);
    float4 _14_m57 : packoffset(c85);
    float4 _14_m58 : packoffset(c86);
    float4 _14_m59 : packoffset(c87);
    float4 _14_m60 : packoffset(c88);
    float4 _14_m61 : packoffset(c89);
    float4 _14_m62 : packoffset(c90);
    float4 _14_m63 : packoffset(c91);
    float4 _14_m64 : packoffset(c92);
    float4 _14_m65 : packoffset(c93);
    float4 _14_m66 : packoffset(c94);
    float4 _14_m67 : packoffset(c95);
    float4 _14_m68 : packoffset(c96);
    float4 _14_m69 : packoffset(c97);
    float4 _14_m70 : packoffset(c98);
    float4 _14_m71 : packoffset(c99);
    float4 _14_m72 : packoffset(c100);
    float4 _14_m73 : packoffset(c101);
    float4 _14_m74 : packoffset(c102);
    float4 _14_m75 : packoffset(c103);
    float4 _14_m76 : packoffset(c104);
    float4 _14_m77 : packoffset(c105);
    float4 _14_m78 : packoffset(c106);
    float4 _14_m79 : packoffset(c107);
    float4 _14_m80 : packoffset(c108);
    float4 _14_m81 : packoffset(c109);
    float4 _14_m82 : packoffset(c110);
    float4 _14_m83 : packoffset(c111);
    float4 _14_m84 : packoffset(c112);
    float4 _14_m85 : packoffset(c113);
    float4 _14_m86 : packoffset(c114);
    float4 _14_m87 : packoffset(c115);
    float4 _14_m88 : packoffset(c116);
    float4 _14_m89 : packoffset(c117);
    float4 _14_m90 : packoffset(c118);
    float4 _14_m91 : packoffset(c119);
    float4 _14_m92 : packoffset(c120);
    float4 _14_m93 : packoffset(c121);
    float4 _14_m94 : packoffset(c122);
    float4 _14_m95 : packoffset(c123);
    float4 _14_m96 : packoffset(c124);
    float4 _14_m97 : packoffset(c125);
    float4 _14_m98 : packoffset(c126);
    float4 _14_m99[2] : packoffset(c127);
    float4 _14_m100[2] : packoffset(c129);
    float _14_m101 : packoffset(c131);
    float _14_m102 : packoffset(c131.y);
    float _14_m103 : packoffset(c131.z);
    float _14_m104 : packoffset(c131.w);
    float4 _14_m105 : packoffset(c132);
    float4 _14_m106 : packoffset(c133);
    float4 _14_m107 : packoffset(c134);
    float4 _14_m108 : packoffset(c135);
    float4 _14_m109 : packoffset(c136);
    float4 _14_m110 : packoffset(c137);
    float4 _14_m111 : packoffset(c138);
    float4 _14_m112 : packoffset(c139);
    float4 _14_m113 : packoffset(c140);
    float4 _14_m114 : packoffset(c141);
    float4 _14_m115 : packoffset(c142);
    float4 _14_m116 : packoffset(c143);
    float4 _14_m117 : packoffset(c144);
    float4 _14_m118 : packoffset(c145);
    float4 _14_m119 : packoffset(c146);
    float4 _14_m120 : packoffset(c147);
    float4 _14_m121 : packoffset(c148);
    float4 _14_m122 : packoffset(c149);
    float4 _14_m123 : packoffset(c150);
    float4 _14_m124 : packoffset(c151);
    float4 _14_m125 : packoffset(c152);
    float4 _14_m126 : packoffset(c153);
    float4 _14_m127 : packoffset(c154);
    float4 _14_m128 : packoffset(c155);
    float4 _14_m129 : packoffset(c156);
    float4 _14_m130 : packoffset(c157);
    float4 _14_m131 : packoffset(c158);
    float4 _14_m132 : packoffset(c159);
    float4 _14_m133 : packoffset(c160);
    float4 _14_m134 : packoffset(c161);
    column_major float4x4 _14_m135 : packoffset(c162);
    float4 _14_m136 : packoffset(c166);
    float4 _14_m137 : packoffset(c167);
    float4 _14_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _15_17 : register(b0, space2)
{
    _16 _17_m0[256] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _22_23 : register(b0, space1)
{
    float _23_m0 : packoffset(c0);
    float _23_m1 : packoffset(c0.y);
    float _23_m2 : packoffset(c0.z);
    float _23_m3 : packoffset(c0.w);
    float _23_m4 : packoffset(c1);
    float _23_m5 : packoffset(c1.y);
    float _23_m6 : packoffset(c1.z);
    float _23_m7 : packoffset(c1.w);
    float _23_m8 : packoffset(c2);
    float _23_m9 : packoffset(c2.y);
    float _23_m10 : packoffset(c2.z);
    float _23_m11 : packoffset(c2.w);
    float _23_m12 : packoffset(c3);
    float _23_m13 : packoffset(c3.y);
    float _23_m14 : packoffset(c3.z);
    float _23_m15 : packoffset(c3.w);
    float4 _23_m16 : packoffset(c4);
    float _23_m17 : packoffset(c5);
    float _23_m18 : packoffset(c5.y);
    float _23_m19 : packoffset(c5.z);
    float _23_m20 : packoffset(c5.w);
    float4 _23_m21 : packoffset(c6);
    float4 _23_m22 : packoffset(c7);
    float4 _23_m23 : packoffset(c8);
    float4 _23_m24 : packoffset(c9);
    float4 _23_m25 : packoffset(c10);
    float _23_m26 : packoffset(c11);
    float _23_m27 : packoffset(c11.y);
    float _23_m28 : packoffset(c11.z);
    float _23_m29 : packoffset(c11.w);
    float _23_m30 : packoffset(c12);
    float _23_m31 : packoffset(c12.y);
    float _23_m32 : packoffset(c12.z);
    float _23_m33 : packoffset(c12.w);
    float _23_m34 : packoffset(c13);
    float _23_m35 : packoffset(c13.y);
    float _23_m36 : packoffset(c13.z);
    float _23_m37 : packoffset(c13.w);
    float _23_m38 : packoffset(c14);
    float _23_m39 : packoffset(c14.y);
    float _23_m40 : packoffset(c14.z);
    float _23_m41 : packoffset(c14.w);
    float _23_m42 : packoffset(c15);
    float _23_m43 : packoffset(c15.y);
    float _23_m44 : packoffset(c15.z);
    float _23_m45 : packoffset(c15.w);
    float _23_m46 : packoffset(c16);
    float _23_m47 : packoffset(c16.y);
    float _23_m48 : packoffset(c16.z);
    float _23_m49 : packoffset(c16.w);
    float _23_m50 : packoffset(c17);
    float _23_m51 : packoffset(c17.y);
    float _23_m52 : packoffset(c17.z);
    float _23_m53 : packoffset(c17.w);
    float _23_m54 : packoffset(c18);
    float4 _23_m55 : packoffset(c19);
    float4 _23_m56 : packoffset(c20);
    float4 _23_m57 : packoffset(c21);
    float4 _23_m58 : packoffset(c22);
    float4 _23_m59 : packoffset(c23);
    float4 _23_m60 : packoffset(c24);
    float4 _23_m61 : packoffset(c25);
    float4 _23_m62 : packoffset(c26);
};

[[vk::binding(2, 1)]]
Texture2D<float4> _20 : register(t2, space1);
[[vk::binding(1, 1)]]
SamplerState _21 : register(s1, space1);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float3 _6;
static float3 _7;
static uint _8;
static float4 _9;
static float4 _10;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(2)]] float4 _5 : TEXCOORD2;
    [[vk::location(3)]] float3 _6 : TEXCOORD3;
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] nointerpolation uint _8 : TEXCOORD5;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _9 : SV_Target0;
    [[vk::location(1)]] float4 _10 : SV_Target1;
};

void frag_main()
{
    float2 _137 = ((gl_FragCoord.xy * _14_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _140 = float4(_137, gl_FragCoord.z, 1.0f);
    _140.y = -_137.y;
    float4 _143 = mul(_12_m6, _140);
    float _154 = abs(mul(_12_m0, float4(_143.xyz / _143.w.xxx, 1.0f)).z);
    bool4 _163 = (_23_m5 != 0.0f).xxxx;
    float4 _165 = _23_m16 * float4(_163.x ? 1.0f.xxxx.x : _5.x, _163.y ? 1.0f.xxxx.y : _5.y, _163.z ? 1.0f.xxxx.z : _5.z, _163.w ? 1.0f.xxxx.w : _5.w);
    float3 _169 = _165.xyz * _23_m6;
    float4 _170 = float4(_169.x, _169.y, _169.z, _165.w);
    _170.w = _165.w * _23_m7;
    float4 _195 = _20.SampleBias(_21, _4.xy, float(int(_23_m19)) + _14_m16);
    float4 _201 = (_170 * lerp(_195, float4(1.0f, 1.0f, 1.0f, _195.x), _23_m18.xxxx)) * (1.0f - _23_m37).xxxx;
    float _206 = _23_m49 * _23_m53;
    bool4 _213 = (_23_m39 != 0.0f).xxxx;
    float _226 = -lerp(-1.0f, ((_23_m51 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _206) + ((1.0f - _23_m36) * _206));
    float _228 = clamp(_226 * _23_m50, 0.0f, 1.0f);
    float _231 = clamp((_23_m52 - _226) * _23_m50, 0.0f, 1.0f);
    float4 _238;
    _238.w = _201.w * lerp(_228, _228, _23_m56.w);
    float3 _242 = lerp(_201.xyz, (_23_m56.xyz * _231) * _23_m6, _231.xxx);
    float4 _243 = float4(_242.x, _242.y, _242.z, _238.w);
    float4 _244 = float4(_213.x ? _243.x : _201.x, _213.y ? _243.y : _201.y, _213.z ? _243.z : _201.z, _213.w ? _243.w : _201.w);
    float _301 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _310 = (clamp(_244.w * ((_23_m26 != 0.0f) ? (clamp((_154 - _23_m27) / (_23_m28 - _23_m27), 0.0f, 1.0f) * clamp((_154 - _23_m29) / (_23_m30 - _23_m29), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _17_m0[_8]._m1.y)) * (((_17_m0[_8]._m1.x - ((_17_m0[_8]._m1.x >= 0.0f) ? _301 : (-_301))) > 0.0f) ? 1.0f : (1.0f - _23_m0));
    float3 _317 = clamp(((_244.xyz + (max(_244.xyz - _23_m9.xxx, 0.0f.xxx) * _23_m10)).xyz * ((1.0f - _23_m12) + (_14_m20.y * _23_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float _321 = _310 * (1.0f - _23_m1);
    float2 _362;
    if (clamp((_23_m3 + 1.0f) - _23_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _348 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
        _348.y = -_348.y;
        _362 = ((sqrt(sqrt(abs(_348 * 0.5f))) * float2(int2(sign(_348)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _362 = 0.0f.xx;
    }
    bool3 _364 = (_23_m1 == 2.0f).xxx;
    float3 _367 = ApplyVFXBoost(_317 * _310);
    float3 _368 = (1.0f - _310).xxx + _367;
    float3 _369 = float3(_364.x ? _368.x : _367.x, _364.y ? _368.y : _367.y, _364.z ? _368.z : _367.z);
    float4 _370 = float4(_369.x, _369.y, _369.z, 0.0f.xxxx.w);
    _370.w = _321;
    float3 _388 = ((lerp(dot(_370.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _370.xyz, _14_m76.w.xxx) * _14_m76.xyz) * _23_m11) + (_370.xyz * (1.0f - _23_m11));
    float2 _390 = min(_362, 1.0f.xx);
    float4 _391 = float4(_390.x, _390.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _391.z = 1.0f;
    _391.w = (_23_m2 * _23_m0) * float(clamp(max(dot(_317, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _310, _321) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _9 = float4(_388.x, _388.y, _388.z, _370.w);
    _10 = _391;
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
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._9 = _9;
    stage_output._10 = _10;
    return stage_output;
}
