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

static float4 _139;

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
cbuffer _23_24 : register(b0, space1)
{
    float _24_m0 : packoffset(c0);
    float _24_m1 : packoffset(c0.y);
    float _24_m2 : packoffset(c0.z);
    float _24_m3 : packoffset(c0.w);
    float _24_m4 : packoffset(c1);
    float _24_m5 : packoffset(c1.y);
    float _24_m6 : packoffset(c1.z);
    float _24_m7 : packoffset(c1.w);
    float _24_m8 : packoffset(c2);
    float _24_m9 : packoffset(c2.y);
    float _24_m10 : packoffset(c2.z);
    float _24_m11 : packoffset(c2.w);
    float _24_m12 : packoffset(c3);
    float _24_m13 : packoffset(c3.y);
    float _24_m14 : packoffset(c3.z);
    float _24_m15 : packoffset(c3.w);
    float4 _24_m16 : packoffset(c4);
    float _24_m17 : packoffset(c5);
    float _24_m18 : packoffset(c5.y);
    float _24_m19 : packoffset(c5.z);
    float _24_m20 : packoffset(c5.w);
    float4 _24_m21 : packoffset(c6);
    float4 _24_m22 : packoffset(c7);
    float4 _24_m23 : packoffset(c8);
    float4 _24_m24 : packoffset(c9);
    float4 _24_m25 : packoffset(c10);
    float _24_m26 : packoffset(c11);
    float _24_m27 : packoffset(c11.y);
    float _24_m28 : packoffset(c11.z);
    float _24_m29 : packoffset(c11.w);
    float _24_m30 : packoffset(c12);
    float _24_m31 : packoffset(c12.y);
    float _24_m32 : packoffset(c12.z);
    float _24_m33 : packoffset(c12.w);
    float _24_m34 : packoffset(c13);
    float _24_m35 : packoffset(c13.y);
    float _24_m36 : packoffset(c13.z);
    float _24_m37 : packoffset(c13.w);
    float _24_m38 : packoffset(c14);
    float _24_m39 : packoffset(c14.y);
    float _24_m40 : packoffset(c14.z);
    float _24_m41 : packoffset(c14.w);
    float _24_m42 : packoffset(c15);
    float _24_m43 : packoffset(c15.y);
    float _24_m44 : packoffset(c15.z);
    float _24_m45 : packoffset(c15.w);
    float _24_m46 : packoffset(c16);
    float _24_m47 : packoffset(c16.y);
    float _24_m48 : packoffset(c16.z);
    float _24_m49 : packoffset(c16.w);
    float _24_m50 : packoffset(c17);
    float _24_m51 : packoffset(c17.y);
    float _24_m52 : packoffset(c17.z);
    float _24_m53 : packoffset(c17.w);
    float _24_m54 : packoffset(c18);
    float _24_m55 : packoffset(c18.y);
    float _24_m56 : packoffset(c18.z);
    float _24_m57 : packoffset(c18.w);
    float _24_m58 : packoffset(c19);
    float4 _24_m59 : packoffset(c20);
    float4 _24_m60 : packoffset(c21);
    float4 _24_m61 : packoffset(c22);
    float4 _24_m62 : packoffset(c23);
    float4 _24_m63 : packoffset(c24);
    float4 _24_m64 : packoffset(c25);
    float4 _24_m65 : packoffset(c26);
    float4 _24_m66 : packoffset(c27);
};

[[vk::binding(2, 1)]]
Texture2D<float4> _21 : register(t2, space1);
[[vk::binding(1, 1)]]
SamplerState _22 : register(s1, space1);

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
    float2 _160 = ((gl_FragCoord.xy * _15_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _163 = float4(_160, gl_FragCoord.z, 1.0f);
    _163.y = -_160.y;
    float4 _166 = mul(_13_m6, _163);
    float3 _170 = _166.xyz / _166.w.xxx;
    float _177 = abs(mul(_13_m0, float4(_170, 1.0f)).z);
    float4 _187 = _5 * _24_m4;
    float2 _195 = ((float2(uint2(gl_FragCoord.xy)) / _15_m5.xy) * 2.0f) - 1.0f.xx;
    float4 _207 = mul(_18_m0[_9]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f));
    float2 _222 = lerp(float2(_195.x, (_195.y / _15_m5.x) * _15_m5.y), mul(float3x3(_13_m0[0].xyz, _13_m0[1].xyz, _13_m0[2].xyz), _170 - _207.xyz).xy, _24_m36.xx);
    _222.y = (_24_m34 != 0.0f) ? _170.y : _222.y;
    float2 _246 = _4.xy - 0.5f.xx;
    float _249 = _246.x;
    float _250 = _246.y;
    float _251 = _249 / _250;
    float _252 = abs(_251);
    bool _253 = _252 < 1.0f;
    float _255 = _253 ? _252 : (1.0f / _252);
    float _256 = _255 * _255;
    float _261 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _256)) * _256)) * _255;
    float _263 = _253 ? _261 : (1.57079637050628662109375f - _261);
    float2 _303 = (((((_4.xy * _24_m23.x) + ((((_4.zw * _24_m4) - (_5.xy * _24_m4)) + _5.xy) * _24_m23.y)) + (float2(((((_251 < 0.0f) ? (-_263) : _263) + (((_249 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_250 < 0.0f))) - (-3.1415927410125732421875f)) * 0.15915493667125701904296875f, length(_246) * 2.0f) * _24_m23.z)) + ((_222 * ((1.0f - _24_m35) + (max(1.0f, (-mul(_13_m0, float4(_207.xyz, 1.0f)).z) - _15_m3.y) * _24_m35))) * _24_m23.w)) + (_24_m21.xy * _15_m75.w)) + (_24_m21.zw * _187.x);
    bool4 _323 = (_24_m5 != 0.0f).xxxx;
    float4 _325 = _24_m16 * float4(_323.x ? 1.0f.xxxx.x : _6.x, _323.y ? 1.0f.xxxx.y : _6.y, _323.z ? 1.0f.xxxx.z : _6.z, _323.w ? 1.0f.xxxx.w : _6.w);
    float3 _329 = _325.xyz * _24_m6;
    float4 _330 = float4(_329.x, _329.y, _329.z, _325.w);
    _330.w = _325.w * _24_m7;
    float4 _355 = _21.SampleBias(_22, ((mul(_303 - 0.5f.xx, float2x2(float2(_24_m22.xy), float2(_24_m22.zw))) + 0.5f.xx) * _24_m24.xy) + _24_m24.zw, float(int(_24_m19)) + _15_m16);
    float4 _361 = (_330 * lerp(_355, float4(1.0f, 1.0f, 1.0f, _355.x), _24_m18.xxxx)) * (1.0f - _24_m41).xxxx;
    float _366 = _24_m53 * _24_m57;
    bool4 _373 = (_24_m43 != 0.0f).xxxx;
    float _386 = -lerp(-1.0f, ((_24_m55 + _187.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _366) + ((1.0f - _24_m40) * _366));
    float _388 = clamp(_386 * _24_m54, 0.0f, 1.0f);
    float _391 = clamp((_24_m56 - _386) * _24_m54, 0.0f, 1.0f);
    float4 _398;
    _398.w = _361.w * lerp(_388, _388, _24_m60.w);
    float3 _402 = lerp(_361.xyz, (_24_m60.xyz * _391) * _24_m6, _391.xxx);
    float4 _404 = float4(_373.x ? float4(_402.x, _402.y, _402.z, _398.w).x : _361.x, _373.y ? float4(_402.x, _402.y, _402.z, _398.w).y : _361.y, _373.z ? float4(_402.x, _402.y, _402.z, _398.w).z : _361.z, _373.w ? float4(_402.x, _402.y, _402.z, _398.w).w : _361.w);
    float3 _428 = _404.xyz;
    float _461 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _470 = (clamp(_404.w * ((_24_m26 != 0.0f) ? (clamp((_177 - _24_m27) / (_24_m28 - _24_m27), 0.0f, 1.0f) * clamp((_177 - _24_m29) / (_24_m30 - _24_m29), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _18_m0[_9]._m1.y)) * (((_18_m0[_9]._m1.x - ((_18_m0[_9]._m1.x >= 0.0f) ? _461 : (-_461))) > 0.0f) ? 1.0f : (1.0f - _24_m0));
    float3 _477 = clamp(((_428 + (max(_428 - _24_m9.xxx, 0.0f.xxx) * _24_m10)).xyz * ((1.0f - _24_m12) + (_15_m20.y * _24_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float _481 = _470 * (1.0f - _24_m1);
    float2 _522;
    if (clamp((_24_m3 + 1.0f) - _24_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _508 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
        _508.y = -_508.y;
        _522 = ((sqrt(sqrt(abs(_508 * 0.5f))) * float2(int2(sign(_508)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _522 = 0.0f.xx;
    }
    bool3 _524 = (_24_m1 == 2.0f).xxx;
    /*
    Vanilla shader code from 0xD1547742:
    float3 _527 = _477 * _470;
    */
    // RenoDX code: apply the user-controlled HDR VFX boost to the vanilla VFX color.
    float3 _527 = ApplyVFXBoost(_477 * _470);
    float3 _528 = (1.0f - _470).xxx + _527;
    float3 _529 = float3(_524.x ? _528.x : _527.x, _524.y ? _528.y : _527.y, _524.z ? _528.z : _527.z);
    float4 _530 = float4(_529.x, _529.y, _529.z, 0.0f.xxxx.w);
    _530.w = _481;
    float3 _548 = ((lerp(dot(_530.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _530.xyz, _15_m76.w.xxx) * _15_m76.xyz) * _24_m11) + (_530.xyz * (1.0f - _24_m11));
    float2 _550 = min(_522, 1.0f.xx);
    float4 _551 = float4(_550.x, _550.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _551.z = 1.0f;
    _551.w = (_24_m2 * _24_m0) * float(clamp(max(dot(_477, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _470, _481) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_548.x, _548.y, _548.z, _530.w);
    _11 = _551;
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
