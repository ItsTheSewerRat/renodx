#include "../shared.h"

struct _18
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

static float4 _159;

[[vk::binding(12, 0)]]
cbuffer _13_14 : register(b12, space0)
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
    column_major float4x4 _14_m12 : packoffset(c45);
    column_major float4x4 _14_m13 : packoffset(c49);
    column_major float4x4 _14_m14 : packoffset(c53);
    column_major float4x4 _14_m15 : packoffset(c57);
    column_major float4x4 _14_m16 : packoffset(c61);
    column_major float4x4 _14_m17 : packoffset(c65);
    column_major float4x4 _14_m18 : packoffset(c69);
    column_major float4x4 _14_m19 : packoffset(c73);
    column_major float4x4 _14_m20 : packoffset(c77);
    float4 _14_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _15_16 : register(b16, space0)
{
    float4 _16_m0 : packoffset(c0);
    float4 _16_m1 : packoffset(c1);
    float4 _16_m2 : packoffset(c2);
    float4 _16_m3 : packoffset(c3);
    float4 _16_m4 : packoffset(c4);
    float4 _16_m5 : packoffset(c5);
    float4 _16_m6[6] : packoffset(c6);
    float4 _16_m7[6] : packoffset(c12);
    float4 _16_m8 : packoffset(c18);
    float4 _16_m9 : packoffset(c19);
    float4 _16_m10 : packoffset(c20);
    float4 _16_m11 : packoffset(c21);
    float4 _16_m12 : packoffset(c22);
    float4 _16_m13 : packoffset(c23);
    float4 _16_m14 : packoffset(c24);
    float4 _16_m15 : packoffset(c25);
    float _16_m16 : packoffset(c26);
    float _16_m17 : packoffset(c26.y);
    float _16_m18 : packoffset(c26.z);
    uint _16_m19 : packoffset(c26.w);
    float4 _16_m20 : packoffset(c27);
    int4 _16_m21 : packoffset(c28);
    float4 _16_m22 : packoffset(c29);
    float4 _16_m23 : packoffset(c30);
    float4 _16_m24 : packoffset(c31);
    float4 _16_m25 : packoffset(c32);
    float4 _16_m26 : packoffset(c33);
    float4 _16_m27 : packoffset(c34);
    float4 _16_m28 : packoffset(c35);
    float4 _16_m29 : packoffset(c36);
    float4 _16_m30 : packoffset(c37);
    float4 _16_m31 : packoffset(c38);
    float4 _16_m32[4] : packoffset(c39);
    float4 _16_m33[4] : packoffset(c43);
    float4 _16_m34[4] : packoffset(c47);
    float4 _16_m35[4] : packoffset(c51);
    float4 _16_m36 : packoffset(c55);
    float4 _16_m37 : packoffset(c56);
    float4 _16_m38[4] : packoffset(c57);
    float4 _16_m39[4] : packoffset(c61);
    float4 _16_m40[4] : packoffset(c65);
    float4 _16_m41 : packoffset(c69);
    float4 _16_m42 : packoffset(c70);
    float4 _16_m43 : packoffset(c71);
    float4 _16_m44 : packoffset(c72);
    float4 _16_m45 : packoffset(c73);
    float4 _16_m46 : packoffset(c74);
    float4 _16_m47 : packoffset(c75);
    float4 _16_m48 : packoffset(c76);
    float4 _16_m49 : packoffset(c77);
    float4 _16_m50 : packoffset(c78);
    float4 _16_m51 : packoffset(c79);
    float4 _16_m52 : packoffset(c80);
    float4 _16_m53 : packoffset(c81);
    float4 _16_m54 : packoffset(c82);
    float4 _16_m55 : packoffset(c83);
    float4 _16_m56 : packoffset(c84);
    float4 _16_m57 : packoffset(c85);
    float4 _16_m58 : packoffset(c86);
    float4 _16_m59 : packoffset(c87);
    float4 _16_m60 : packoffset(c88);
    float4 _16_m61 : packoffset(c89);
    float4 _16_m62 : packoffset(c90);
    float4 _16_m63 : packoffset(c91);
    float4 _16_m64 : packoffset(c92);
    float4 _16_m65 : packoffset(c93);
    float4 _16_m66 : packoffset(c94);
    float4 _16_m67 : packoffset(c95);
    float4 _16_m68 : packoffset(c96);
    float4 _16_m69 : packoffset(c97);
    float4 _16_m70 : packoffset(c98);
    float4 _16_m71 : packoffset(c99);
    float4 _16_m72 : packoffset(c100);
    float4 _16_m73 : packoffset(c101);
    float4 _16_m74 : packoffset(c102);
    float4 _16_m75 : packoffset(c103);
    float4 _16_m76 : packoffset(c104);
    float4 _16_m77 : packoffset(c105);
    float4 _16_m78 : packoffset(c106);
    float4 _16_m79 : packoffset(c107);
    float4 _16_m80 : packoffset(c108);
    float4 _16_m81 : packoffset(c109);
    float4 _16_m82 : packoffset(c110);
    float4 _16_m83 : packoffset(c111);
    float4 _16_m84 : packoffset(c112);
    float4 _16_m85 : packoffset(c113);
    float4 _16_m86 : packoffset(c114);
    float4 _16_m87 : packoffset(c115);
    float4 _16_m88 : packoffset(c116);
    float4 _16_m89 : packoffset(c117);
    float4 _16_m90 : packoffset(c118);
    float4 _16_m91 : packoffset(c119);
    float4 _16_m92 : packoffset(c120);
    float4 _16_m93 : packoffset(c121);
    float4 _16_m94 : packoffset(c122);
    float4 _16_m95 : packoffset(c123);
    float4 _16_m96 : packoffset(c124);
    float4 _16_m97 : packoffset(c125);
    float4 _16_m98 : packoffset(c126);
    float4 _16_m99[2] : packoffset(c127);
    float4 _16_m100[2] : packoffset(c129);
    float _16_m101 : packoffset(c131);
    float _16_m102 : packoffset(c131.y);
    float _16_m103 : packoffset(c131.z);
    float _16_m104 : packoffset(c131.w);
    float4 _16_m105 : packoffset(c132);
    float4 _16_m106 : packoffset(c133);
    float4 _16_m107 : packoffset(c134);
    float4 _16_m108 : packoffset(c135);
    float4 _16_m109 : packoffset(c136);
    float4 _16_m110 : packoffset(c137);
    float4 _16_m111 : packoffset(c138);
    float4 _16_m112 : packoffset(c139);
    float4 _16_m113 : packoffset(c140);
    float4 _16_m114 : packoffset(c141);
    float4 _16_m115 : packoffset(c142);
    float4 _16_m116 : packoffset(c143);
    float4 _16_m117 : packoffset(c144);
    float4 _16_m118 : packoffset(c145);
    float4 _16_m119 : packoffset(c146);
    float4 _16_m120 : packoffset(c147);
    float4 _16_m121 : packoffset(c148);
    float4 _16_m122 : packoffset(c149);
    float4 _16_m123 : packoffset(c150);
    float4 _16_m124 : packoffset(c151);
    float4 _16_m125 : packoffset(c152);
    float4 _16_m126 : packoffset(c153);
    float4 _16_m127 : packoffset(c154);
    float4 _16_m128 : packoffset(c155);
    float4 _16_m129 : packoffset(c156);
    float4 _16_m130 : packoffset(c157);
    float4 _16_m131 : packoffset(c158);
    float4 _16_m132 : packoffset(c159);
    float4 _16_m133 : packoffset(c160);
    float4 _16_m134 : packoffset(c161);
    column_major float4x4 _16_m135 : packoffset(c162);
    float4 _16_m136 : packoffset(c166);
    float4 _16_m137 : packoffset(c167);
    float4 _16_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _17_19 : register(b0, space2)
{
    _18 _19_m0[256] : packoffset(c0);
};

[[vk::binding(0, 1)]]
cbuffer _30_31 : register(b0, space1)
{
    float _31_m0 : packoffset(c0);
    float _31_m1 : packoffset(c0.y);
    float _31_m2 : packoffset(c0.z);
    float _31_m3 : packoffset(c0.w);
    float _31_m4 : packoffset(c1);
    float _31_m5 : packoffset(c1.y);
    float _31_m6 : packoffset(c1.z);
    float _31_m7 : packoffset(c1.w);
    float _31_m8 : packoffset(c2);
    float _31_m9 : packoffset(c2.y);
    float _31_m10 : packoffset(c2.z);
    float _31_m11 : packoffset(c2.w);
    float _31_m12 : packoffset(c3);
    float _31_m13 : packoffset(c3.y);
    float _31_m14 : packoffset(c3.z);
    float _31_m15 : packoffset(c3.w);
    float4 _31_m16 : packoffset(c4);
    float _31_m17 : packoffset(c5);
    float _31_m18 : packoffset(c5.y);
    float _31_m19 : packoffset(c5.z);
    float _31_m20 : packoffset(c5.w);
    float4 _31_m21 : packoffset(c6);
    float4 _31_m22 : packoffset(c7);
    float4 _31_m23 : packoffset(c8);
    float4 _31_m24 : packoffset(c9);
    float4 _31_m25 : packoffset(c10);
    float _31_m26 : packoffset(c11);
    float _31_m27 : packoffset(c11.y);
    float _31_m28 : packoffset(c11.z);
    float _31_m29 : packoffset(c11.w);
    float _31_m30 : packoffset(c12);
    float _31_m31 : packoffset(c12.y);
    float _31_m32 : packoffset(c12.z);
    float _31_m33 : packoffset(c12.w);
    float _31_m34 : packoffset(c13);
    float _31_m35 : packoffset(c13.y);
    float _31_m36 : packoffset(c13.z);
    float _31_m37 : packoffset(c13.w);
    float4 _31_m38 : packoffset(c14);
    float4 _31_m39 : packoffset(c15);
    float4 _31_m40 : packoffset(c16);
    float _31_m41 : packoffset(c17);
    float _31_m42 : packoffset(c17.y);
    float _31_m43 : packoffset(c17.z);
    float _31_m44 : packoffset(c17.w);
    float _31_m45 : packoffset(c18);
    float _31_m46 : packoffset(c18.y);
    float _31_m47 : packoffset(c18.z);
    float _31_m48 : packoffset(c18.w);
    float _31_m49 : packoffset(c19);
    float _31_m50 : packoffset(c19.y);
    float _31_m51 : packoffset(c19.z);
    float _31_m52 : packoffset(c19.w);
    float4 _31_m53 : packoffset(c20);
    float4 _31_m54 : packoffset(c21);
    float4 _31_m55 : packoffset(c22);
    float _31_m56 : packoffset(c23);
    float _31_m57 : packoffset(c23.y);
    float _31_m58 : packoffset(c23.z);
    float _31_m59 : packoffset(c23.w);
    float _31_m60 : packoffset(c24);
    float _31_m61 : packoffset(c24.y);
    float _31_m62 : packoffset(c24.z);
    float _31_m63 : packoffset(c24.w);
    float4 _31_m64 : packoffset(c25);
    float4 _31_m65 : packoffset(c26);
    float4 _31_m66 : packoffset(c27);
    float _31_m67 : packoffset(c28);
    float _31_m68 : packoffset(c28.y);
    float _31_m69 : packoffset(c28.z);
    float _31_m70 : packoffset(c28.w);
    float _31_m71 : packoffset(c29);
    float _31_m72 : packoffset(c29.y);
    float _31_m73 : packoffset(c29.z);
    float _31_m74 : packoffset(c29.w);
    float _31_m75 : packoffset(c30);
    float _31_m76 : packoffset(c30.y);
    float _31_m77 : packoffset(c30.z);
    float _31_m78 : packoffset(c30.w);
    float _31_m79 : packoffset(c31);
    float _31_m80 : packoffset(c31.y);
    float _31_m81 : packoffset(c31.z);
    float _31_m82 : packoffset(c31.w);
    float _31_m83 : packoffset(c32);
    float _31_m84 : packoffset(c32.y);
    float _31_m85 : packoffset(c32.z);
    float _31_m86 : packoffset(c32.w);
    float _31_m87 : packoffset(c33);
    float _31_m88 : packoffset(c33.y);
    float _31_m89 : packoffset(c33.z);
    float _31_m90 : packoffset(c33.w);
    float _31_m91 : packoffset(c34);
    float _31_m92 : packoffset(c34.y);
    float _31_m93 : packoffset(c34.z);
    float _31_m94 : packoffset(c34.w);
    float _31_m95 : packoffset(c35);
    float4 _31_m96 : packoffset(c36);
    float4 _31_m97 : packoffset(c37);
    float4 _31_m98 : packoffset(c38);
    float4 _31_m99 : packoffset(c39);
    float4 _31_m100 : packoffset(c40);
    float4 _31_m101 : packoffset(c41);
    float4 _31_m102 : packoffset(c42);
    float4 _31_m103 : packoffset(c43);
};

[[vk::binding(8, 1)]]
Texture2D<float4> _22 : register(t8, space1);
[[vk::binding(4, 1)]]
SamplerState _23 : register(s4, space1);
[[vk::binding(7, 1)]]
Texture2D<float4> _24 : register(t7, space1);
[[vk::binding(3, 1)]]
SamplerState _25 : register(s3, space1);
[[vk::binding(6, 1)]]
Texture2D<float4> _26 : register(t6, space1);
[[vk::binding(2, 1)]]
SamplerState _27 : register(s2, space1);
[[vk::binding(5, 1)]]
Texture2D<float4> _28 : register(t5, space1);
[[vk::binding(1, 1)]]
SamplerState _29 : register(s1, space1);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float4 _7;
static float3 _8;
static float3 _9;
static uint _10;
static float4 _11;
static float4 _12;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(4)]] float3 _8 : TEXCOORD4;
    [[vk::location(5)]] float3 _9 : TEXCOORD5;
    [[vk::location(6)]] nointerpolation uint _10 : TEXCOORD6;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _11 : SV_Target0;
    [[vk::location(1)]] float4 _12 : SV_Target1;
};

void frag_main()
{
    float2 _180 = ((gl_FragCoord.xy * _16_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _183 = float4(_180, gl_FragCoord.z, 1.0f);
    _183.y = -_180.y;
    float4 _186 = mul(_14_m6, _183);
    float _197 = abs(mul(_14_m0, float4(_186.xyz / _186.w.xxx, 1.0f)).z);
    bool4 _211 = (_31_m5 != 0.0f).xxxx;
    float4 _213 = _31_m16 * float4(_211.x ? 1.0f.xxxx.x : _7.x, _211.y ? 1.0f.xxxx.y : _7.y, _211.z ? 1.0f.xxxx.z : _7.z, _211.w ? 1.0f.xxxx.w : _7.w);
    float3 _217 = _213.xyz * _31_m6;
    float4 _218 = float4(_217.x, _217.y, _217.z, _213.w);
    _218.w = _213.w * _31_m7;
    float _244 = (_31_m81 != 0.0f) ? _4.w : 1.0f;
    float4 _257 = _24.SampleBias(_25, _5.xy, float(int(_31_m26)) + _16_m16);
    float4 _261 = lerp(_257, float4(1.0f, 1.0f, 1.0f, _257.x), _31_m28.xxxx);
    float4 _269 = (1.0f - _31_m75).xxxx + (_261 * _31_m30);
    float2 _306;
    if (_31_m30 != 0.0f)
    {
        float _288 = (_269.x * (_31_m82 + 1.0f)) - _31_m82;
        float4 _294 = _269;
        _294.w = _269.w * _288;
        bool2 _302 = (_31_m87 != 0.0f).xx;
        float2 _303 = (((_294.wy * 2.0f) - 1.0f.xx).xy * _31_m83).xy * _244;
        float2 _304 = float2(_288 * _31_m83, _288 * _31_m84) * _244;
        _306 = float2(_302.x ? _303.x : _304.x, _302.y ? _303.y : _304.y);
    }
    else
    {
        _306 = 0.0f.xx;
    }
    float4 _321 = _26.SampleBias(_27, _5.zw + (_306 * _31_m42), float(int(_31_m41)) + _16_m16);
    float4 _325 = lerp(_321, float4(1.0f, 1.0f, 1.0f, _321.x), _31_m43.xxxx);
    float4 _335 = (1.0f - (_31_m75 * _31_m76)).xxxx + (_325 * _31_m45);
    float4 _337 = ((1.0f - _31_m77).xxxx + (_261 * _31_m31)) + (_325 * _31_m46);
    float2 _375;
    if (_31_m45 != 0.0f)
    {
        float _355 = (_335.x * (_31_m82 + 1.0f)) - _31_m82;
        float4 _361 = _335;
        _361.w = _335.w * _355;
        bool2 _369 = (_31_m88 != 0.0f).xx;
        float2 _371 = _306 + ((((_361.wy * 2.0f) - 1.0f.xx).xy * _31_m85).xy * _244);
        float2 _373 = _306 + (float2(_355 * _31_m85, _355 * _31_m86) * _244);
        _375 = float2(_369.x ? _371.x : _373.x, _369.y ? _371.y : _373.y);
    }
    else
    {
        _375 = _306;
    }
    float _382 = (_31_m90 * _31_m46) * _31_m89;
    float2 _386 = _375 * ((1.0f - _382) + (_337.x * _382));
    float4 _401 = _28.SampleBias(_29, _6.xy + (_386 * _31_m57), float(int(_31_m56)) + _16_m16);
    float4 _405 = lerp(_401, float4(1.0f, 1.0f, 1.0f, _401.x), _31_m58.xxxx);
    float4 _415 = _337 + (_405 * _31_m60);
    float4 _419 = (_325 * _31_m48) + (_405 * _31_m62);
    float _421 = _415.x;
    float _423 = (_31_m90 * _31_m60) * _31_m89;
    float4 _442 = _22.SampleBias(_23, _4.xy + ((_386 * ((1.0f - _423) + (_421 * _423))) * _31_m17), float(int(_31_m19)) + _16_m16);
    float4 _448 = (_218 * lerp(_442, float4(1.0f, 1.0f, 1.0f, _442.x), _31_m18.xxxx)) * ((((1.0f - _31_m78).xxxx + (_261 * _31_m32)) + (_325 * _31_m47)) + (_405 * _31_m61));
    float4 _459 = ((_419 * clamp((_448.w + _419.w) * _31_m96.w, 0.0f, 1.0f)) * _31_m96) + _448;
    float4 _460 = float4(_459.x, _459.y, _459.z, _448.w);
    float _463 = _31_m90 * _31_m94;
    bool4 _470 = (_31_m80 != 0.0f).xxxx;
    float _484 = (_405 * _31_m63).x - lerp(-1.0f, ((_31_m92 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _463) + (_421 * _463));
    float _486 = clamp(_484 * _31_m91, 0.0f, 1.0f);
    float _489 = clamp((_31_m93 - _484) * _31_m91, 0.0f, 1.0f);
    float4 _495;
    _495.w = _448.w * lerp(_486, _486, _31_m97.w);
    float3 _499 = lerp(_459.xyz, (_31_m97.xyz * _489) * _31_m6, _489.xxx);
    float4 _500 = float4(_499.x, _499.y, _499.z, _495.w);
    float4 _501 = float4(_470.x ? _500.x : _460.x, _470.y ? _500.y : _460.y, _470.z ? _500.z : _460.z, _470.w ? _500.w : _460.w);
    float3 _525 = _501.xyz;
    float _558 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _567 = (clamp(_501.w * ((_31_m67 != 0.0f) ? (clamp((_197 - _31_m68) / (_31_m69 - _31_m68), 0.0f, 1.0f) * clamp((_197 - _31_m70) / (_31_m71 - _31_m70), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _19_m0[_10]._m1.y)) * (((_19_m0[_10]._m1.x - ((_19_m0[_10]._m1.x >= 0.0f) ? _558 : (-_558))) > 0.0f) ? 1.0f : (1.0f - _31_m0));
    float3 _574 = clamp(((_525 + (max(_525 - _31_m9.xxx, 0.0f.xxx) * _31_m10)).xyz * ((1.0f - _31_m12) + (_16_m20.y * _31_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float _578 = _567 * (1.0f - _31_m1);
    float2 _619;
    if (clamp((_31_m3 + 1.0f) - _31_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _605 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _605.y = -_605.y;
        _619 = ((sqrt(sqrt(abs(_605 * 0.5f))) * float2(int2(sign(_605)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _619 = 0.0f.xx;
    }
    bool3 _621 = (_31_m1 == 2.0f).xxx;
    /*
    Vanilla shader code from 0x333B85CC:
    float3 _624 = _574 * _567;
    */
    // RenoDX code: apply the user-controlled HDR VFX boost to the vanilla VFX color.
    float3 _624 = ApplyVFXBoost(_574 * _567);
    float3 _625 = (1.0f - _567).xxx + _624;
    float3 _626 = float3(_621.x ? _625.x : _624.x, _621.y ? _625.y : _624.y, _621.z ? _625.z : _624.z);
    float4 _627 = float4(_626.x, _626.y, _626.z, 0.0f.xxxx.w);
    _627.w = _578;
    float3 _645 = ((lerp(dot(_627.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _627.xyz, _16_m76.w.xxx) * _16_m76.xyz) * _31_m11) + (_627.xyz * (1.0f - _31_m11));
    float2 _647 = min(_619, 1.0f.xx);
    float4 _648 = float4(_647.x, _647.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _648.z = 1.0f;
    _648.w = (_31_m2 * _31_m0) * float(clamp(max(dot(_574, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _567, _578) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _11 = float4(_645.x, _645.y, _645.z, _627.w);
    _12 = _648;
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
    _10 = stage_input._10;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._11 = _11;
    stage_output._12 = _12;
    return stage_output;
}
