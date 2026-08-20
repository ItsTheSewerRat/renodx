#include "../shared.h"

// Current Vulkan shader mapped from DX11 0xE82F718F.
struct _20
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

struct _49
{
    float4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
};

static float _368 = (float)0;
static float4 _370 = (float4)0;
static uint _371 = (uint)0;

static const float4 _348[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _349[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _350[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _15_16 : register(b12)
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
    column_major float4x4 _16_m12 : packoffset(c45);
    column_major float4x4 _16_m13 : packoffset(c49);
    column_major float4x4 _16_m14 : packoffset(c53);
    column_major float4x4 _16_m15 : packoffset(c57);
    column_major float4x4 _16_m16 : packoffset(c61);
    column_major float4x4 _16_m17 : packoffset(c65);
    column_major float4x4 _16_m18 : packoffset(c69);
    column_major float4x4 _16_m19 : packoffset(c73);
    column_major float4x4 _16_m20 : packoffset(c77);
    float4 _16_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _17_18 : register(b16)
{
    float4 _18_m0 : packoffset(c0);
    float4 _18_m1 : packoffset(c1);
    float4 _18_m2 : packoffset(c2);
    float4 _18_m3 : packoffset(c3);
    float4 _18_m4 : packoffset(c4);
    float4 _18_m5 : packoffset(c5);
    float4 _18_m6[6] : packoffset(c6);
    float4 _18_m7[6] : packoffset(c12);
    float4 _18_m8 : packoffset(c18);
    float4 _18_m9 : packoffset(c19);
    float4 _18_m10 : packoffset(c20);
    float4 _18_m11 : packoffset(c21);
    float4 _18_m12 : packoffset(c22);
    float4 _18_m13 : packoffset(c23);
    float4 _18_m14 : packoffset(c24);
    float4 _18_m15 : packoffset(c25);
    float _18_m16 : packoffset(c26);
    float _18_m17 : packoffset(c26.y);
    float _18_m18 : packoffset(c26.z);
    uint _18_m19 : packoffset(c26.w);
    float4 _18_m20 : packoffset(c27);
    int4 _18_m21 : packoffset(c28);
    float4 _18_m22 : packoffset(c29);
    float4 _18_m23 : packoffset(c30);
    float4 _18_m24 : packoffset(c31);
    float4 _18_m25 : packoffset(c32);
    float4 _18_m26 : packoffset(c33);
    float4 _18_m27 : packoffset(c34);
    float4 _18_m28 : packoffset(c35);
    float4 _18_m29 : packoffset(c36);
    float4 _18_m30 : packoffset(c37);
    float4 _18_m31 : packoffset(c38);
    float4 _18_m32[4] : packoffset(c39);
    float4 _18_m33[4] : packoffset(c43);
    float4 _18_m34[4] : packoffset(c47);
    float4 _18_m35[4] : packoffset(c51);
    float4 _18_m36 : packoffset(c55);
    float4 _18_m37 : packoffset(c56);
    float4 _18_m38[4] : packoffset(c57);
    float4 _18_m39[4] : packoffset(c61);
    float4 _18_m40[4] : packoffset(c65);
    float4 _18_m41 : packoffset(c69);
    float4 _18_m42 : packoffset(c70);
    float4 _18_m43 : packoffset(c71);
    float4 _18_m44 : packoffset(c72);
    float4 _18_m45 : packoffset(c73);
    float4 _18_m46 : packoffset(c74);
    float4 _18_m47 : packoffset(c75);
    float4 _18_m48 : packoffset(c76);
    float4 _18_m49 : packoffset(c77);
    float4 _18_m50 : packoffset(c78);
    float4 _18_m51 : packoffset(c79);
    float4 _18_m52 : packoffset(c80);
    float4 _18_m53 : packoffset(c81);
    float4 _18_m54 : packoffset(c82);
    float4 _18_m55 : packoffset(c83);
    float4 _18_m56 : packoffset(c84);
    float4 _18_m57 : packoffset(c85);
    float4 _18_m58 : packoffset(c86);
    float4 _18_m59 : packoffset(c87);
    float4 _18_m60 : packoffset(c88);
    float4 _18_m61 : packoffset(c89);
    float4 _18_m62 : packoffset(c90);
    float4 _18_m63 : packoffset(c91);
    float4 _18_m64 : packoffset(c92);
    float4 _18_m65 : packoffset(c93);
    float4 _18_m66 : packoffset(c94);
    float4 _18_m67 : packoffset(c95);
    float4 _18_m68 : packoffset(c96);
    float4 _18_m69 : packoffset(c97);
    float4 _18_m70 : packoffset(c98);
    float4 _18_m71 : packoffset(c99);
    float4 _18_m72 : packoffset(c100);
    float4 _18_m73 : packoffset(c101);
    float4 _18_m74 : packoffset(c102);
    float4 _18_m75 : packoffset(c103);
    float4 _18_m76 : packoffset(c104);
    float4 _18_m77 : packoffset(c105);
    float4 _18_m78 : packoffset(c106);
    float4 _18_m79 : packoffset(c107);
    float4 _18_m80 : packoffset(c108);
    float4 _18_m81 : packoffset(c109);
    float4 _18_m82 : packoffset(c110);
    float4 _18_m83 : packoffset(c111);
    float4 _18_m84 : packoffset(c112);
    float4 _18_m85 : packoffset(c113);
    float4 _18_m86 : packoffset(c114);
    float4 _18_m87 : packoffset(c115);
    float4 _18_m88 : packoffset(c116);
    float4 _18_m89 : packoffset(c117);
    float4 _18_m90 : packoffset(c118);
    float4 _18_m91 : packoffset(c119);
    float4 _18_m92 : packoffset(c120);
    float4 _18_m93 : packoffset(c121);
    float4 _18_m94 : packoffset(c122);
    float4 _18_m95 : packoffset(c123);
    float4 _18_m96 : packoffset(c124);
    float4 _18_m97 : packoffset(c125);
    float4 _18_m98 : packoffset(c126);
    float4 _18_m99[2] : packoffset(c127);
    float4 _18_m100[2] : packoffset(c129);
    float _18_m101 : packoffset(c131);
    float _18_m102 : packoffset(c131.y);
    float _18_m103 : packoffset(c131.z);
    float _18_m104 : packoffset(c131.w);
    float4 _18_m105 : packoffset(c132);
    float4 _18_m106 : packoffset(c133);
    float4 _18_m107 : packoffset(c134);
    float4 _18_m108 : packoffset(c135);
    float4 _18_m109 : packoffset(c136);
    float4 _18_m110 : packoffset(c137);
    float4 _18_m111 : packoffset(c138);
    float4 _18_m112 : packoffset(c139);
    float4 _18_m113 : packoffset(c140);
    float4 _18_m114 : packoffset(c141);
    float4 _18_m115 : packoffset(c142);
    float4 _18_m116 : packoffset(c143);
    float4 _18_m117 : packoffset(c144);
    float4 _18_m118 : packoffset(c145);
    float4 _18_m119 : packoffset(c146);
    float4 _18_m120 : packoffset(c147);
    float4 _18_m121 : packoffset(c148);
    float4 _18_m122 : packoffset(c149);
    float4 _18_m123 : packoffset(c150);
    float4 _18_m124 : packoffset(c151);
    float4 _18_m125 : packoffset(c152);
    float4 _18_m126 : packoffset(c153);
    float4 _18_m127 : packoffset(c154);
    float4 _18_m128 : packoffset(c155);
    float4 _18_m129 : packoffset(c156);
    float4 _18_m130 : packoffset(c157);
    float4 _18_m131 : packoffset(c158);
    float4 _18_m132 : packoffset(c159);
    float4 _18_m133 : packoffset(c160);
    float4 _18_m134 : packoffset(c161);
    column_major float4x4 _18_m135 : packoffset(c162);
    float4 _18_m136 : packoffset(c166);
    float4 _18_m137 : packoffset(c167);
    float4 _18_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _19_21 : register(b0)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _35 : register(t50);
[[vk::binding(8, 1)]]
cbuffer _46_47 : register(b8)
{
    float _47_m0 : packoffset(c0);
    float _47_m1 : packoffset(c0.y);
    float _47_m2 : packoffset(c0.z);
    float _47_m3 : packoffset(c0.w);
    float _47_m4 : packoffset(c1);
    float _47_m5 : packoffset(c1.y);
    float _47_m6 : packoffset(c1.z);
    float _47_m7 : packoffset(c1.w);
    float _47_m8 : packoffset(c2);
    float _47_m9 : packoffset(c2.y);
    float _47_m10 : packoffset(c2.z);
    float _47_m11 : packoffset(c2.w);
    float _47_m12 : packoffset(c3);
    float _47_m13 : packoffset(c3.y);
    float _47_m14 : packoffset(c3.z);
    float _47_m15 : packoffset(c3.w);
    float _47_m16 : packoffset(c4);
    float _47_m17 : packoffset(c4.y);
    float _47_m18 : packoffset(c4.z);
    float _47_m19 : packoffset(c4.w);
    float _47_m20 : packoffset(c5);
    float _47_m21 : packoffset(c5.y);
    float _47_m22 : packoffset(c5.z);
    float _47_m23 : packoffset(c5.w);
    float _47_m24 : packoffset(c6);
    float _47_m25 : packoffset(c6.y);
    float _47_m26 : packoffset(c6.z);
    float _47_m27 : packoffset(c6.w);
    float _47_m28 : packoffset(c7);
    float _47_m29 : packoffset(c7.y);
    float _47_m30 : packoffset(c7.z);
    float _47_m31 : packoffset(c7.w);
    float4 _47_m32 : packoffset(c8);
    float4 _47_m33 : packoffset(c9);
    float4 _47_m34 : packoffset(c10);
    float4 _47_m35 : packoffset(c11);
    float4 _47_m36 : packoffset(c12);
    float4 _47_m37 : packoffset(c13);
    float4 _47_m38 : packoffset(c14);
    float4 _47_m39 : packoffset(c15);
    float4 _47_m40 : packoffset(c16);
    float4 _47_m41 : packoffset(c17);
    float4 _47_m42 : packoffset(c18);
    float4 _47_m43 : packoffset(c19);
    float4 _47_m44 : packoffset(c20);
    float4 _47_m45 : packoffset(c21);
    float _47_m46 : packoffset(c22);
    float _47_m47 : packoffset(c22.y);
    float _47_m48 : packoffset(c22.z);
    float _47_m49 : packoffset(c22.w);
    float _47_m50 : packoffset(c23);
    float _47_m51 : packoffset(c23.y);
    float _47_m52 : packoffset(c23.z);
    float _47_m53 : packoffset(c23.w);
    float4 _47_m54 : packoffset(c24);
    float4 _47_m55 : packoffset(c25);
    float _47_m56 : packoffset(c26);
    float _47_m57 : packoffset(c26.y);
    float _47_m58 : packoffset(c26.z);
    float _47_m59 : packoffset(c26.w);
};

[[vk::binding(17, 0)]]
cbuffer _48_50 : register(b17)
{
    float4 _50_m0 : packoffset(c0);
    float4 _50_m1 : packoffset(c1);
    float4 _50_m2 : packoffset(c2);
    float4 _50_m3 : packoffset(c3);
    _49 _50_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _51_52 : register(b47)
{
    int _52_m0 : packoffset(c0);
    int _52_m1 : packoffset(c0.y);
    int _52_m2 : packoffset(c0.z);
    int _52_m3 : packoffset(c0.w);
    float _52_m4 : packoffset(c1);
    float _52_m5 : packoffset(c1.y);
    float _52_m6 : packoffset(c1.z);
    float _52_m7 : packoffset(c1.w);
    float _52_m8 : packoffset(c2);
    float _52_m9 : packoffset(c2.y);
    float _52_m10 : packoffset(c2.z);
    float _52_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _53_54 : register(b14)
{
    float4 _54_m0 : packoffset(c0);
    float4 _54_m1 : packoffset(c1);
    float4 _54_m2 : packoffset(c2);
    float4 _54_m3 : packoffset(c3);
    float4 _54_m4 : packoffset(c4);
    uint4 _54_m5 : packoffset(c5);
    float4 _54_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _55_56 : register(b15)
{
    column_major float4x4 _56_m0[5] : packoffset(c0);
    float4 _56_m1[4] : packoffset(c20);
    float4 _56_m2[4] : packoffset(c24);
    float4 _56_m3[4] : packoffset(c28);
    float4 _56_m4 : packoffset(c32);
    float4 _56_m5 : packoffset(c33);
    float4 _56_m6 : packoffset(c34);
    float4 _56_m7 : packoffset(c35);
    float4 _56_m8 : packoffset(c36);
    float4 _56_m9[27] : packoffset(c37);
    column_major float4x4 _56_m10[56] : packoffset(c64);
    float4 _56_m11[56] : packoffset(c288);
    float4 _56_m12[56] : packoffset(c344);
    float4 _56_m13 : packoffset(c400);
    float4 _56_m14[47] : packoffset(c401);
    column_major float4x4 _56_m15[15] : packoffset(c448);
    float4 _56_m16[15] : packoffset(c508);
    float4 _56_m17[15] : packoffset(c523);
    float4 _56_m18[15] : packoffset(c538);
    float4 _56_m19 : packoffset(c553);
    float4 _56_m20 : packoffset(c554);
    float4 _56_m21[21] : packoffset(c555);
    column_major float4x4 _56_m22 : packoffset(c576);
    column_major float4x4 _56_m23 : packoffset(c580);
    float4 _56_m24 : packoffset(c584);
    float4 _56_m25 : packoffset(c585);
    float4 _56_m26 : packoffset(c586);
    float4 _56_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _73_74 : register(b49)
{
    float4 _74_m0[32] : packoffset(c0);
    column_major float4x4 _74_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _29 : register(t45);
[[vk::binding(23, 0)]] Texture2D<float4> _30 : register(t23);
[[vk::binding(24, 0)]] Texture2D<float4> _31 : register(t24);
[[vk::binding(25, 0)]] Texture2DArray<float4> _33 : register(t25);
[[vk::binding(7, 1)]] Texture2D<float4> _36 : register(t7);
[[vk::binding(3, 1)]] SamplerState _37 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _38 : register(t5);
[[vk::binding(1, 1)]] SamplerState _39 : register(s1);
[[vk::binding(6, 1)]] Texture2D<float4> _40 : register(t6);
[[vk::binding(2, 1)]] SamplerState _41 : register(s2);
[[vk::binding(22, 0)]] Texture2D<float4> _42 : register(t22);
[[vk::binding(4, 1)]] Texture2D<float4> _43 : register(t4);
[[vk::binding(0, 1)]] SamplerState _44 : register(s0);
[[vk::binding(20, 0)]] SamplerState _45 : register(s20);
[[vk::binding(9, 0)]] Texture2D<float4> _57 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _58 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _59 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _60 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _61 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _64 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _65 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _66 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _67 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _68 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _69 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _70 : register(t29);
[[vk::binding(35, 0)]] Texture3D<float4> _71 : register(t35);
[[vk::binding(28, 0)]] Texture2D<float4> _72 : register(t28);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _4 = (float2)0;
static float2 _5 = (float2)0;
static float3 _6 = (float3)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float3 _9 = (float3)0;
static float3 _10 = (float3)0;
static uint _11 = (uint)0;
static float4 _13 = (float4)0;
static float4 _14 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _4 : TEXCOORD0;
    [[vk::location(1)]] float2 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(4)]] float4 _8 : TEXCOORD4;
    [[vk::location(5)]] float3 _9 : TEXCOORD5;
    [[vk::location(6)]] float3 _10 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _11 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _13 : SV_Target0;
    [[vk::location(1)]] float4 _14 : SV_Target1;
};

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    float _395 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _400 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _402 = abs(_400);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _402 : (-_402)), (1.0f - _395) - _400) < 0.0f)
    {
        discard;
    }
    float2 _419 = gl_FragCoord.xy * _18_m0.zw;
    float2 _422 = (_419 * 2.0f) - 1.0f.xx;
    float4 _425 = float4(_422, gl_FragCoord.z, 1.0f);
    _425.y = -_422.y;
    float4 _428 = mul(_16_m6, _425);
    float3 _432 = _428.xyz / _428.w.xxx;
    float4 _436 = float4(_432, 1.0f);
    float _439 = abs(mul(_16_m0, _436).z);
    float _443 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _465;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _465 = _16_m11.xyz - _432;
            break;
        }
        else
        {
            _465 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _466 = dot(_465, _465);
    float _468 = rsqrt(max(_466, 9.9999999392252902907785028219223e-09f));
    float3 _469 = _465 * _468;
    float _470 = _466 * _468;
    float2 _491 = (lerp(_4, _5, _47_m12.xx) * _47_m36.xy) + _47_m36.zw;
    float4 _505 = _36.SampleBias(_37, (lerp(_4, _5, _47_m11.xx) * _47_m35.xy) + _47_m35.zw, _18_m16);
    float4 _509 = _38.SampleBias(_39, _491, _47_m13 + _18_m16);
    _509.w = _509.w * _509.x;
    float2 _517 = ((_509.wy * 2.0f) - 1.0f.xx).xy;
    float2 _523 = _517 * _47_m0;
    float4 _525 = _40.SampleBias(_41, _491, _18_m16);
    float3 _540 = lerp(clamp((_505.xyz * _47_m32.xyz) * _47_m18, 0.0f.xxx, 1.0f.xxx), _47_m32.xyz, _47_m16.xxx);
    float _544 = _505.w * _47_m32.w;
    float _550 = lerp(_544, _544 * _8.x, _47_m56);
    float _555 = lerp(_47_m2, _47_m3, _525.y);
    float _565 = lerp(_525.x, _47_m17, clamp(_47_m15 - 1.0f, 0.0f, 1.0f));
    float3 _580 = normalize(((_7.xyz * _523.x) + ((cross(_6, float4(_7.xyz, _443).xyz) * _443) * _523.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_517, _517), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_47_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _606 = dot(_580, _469);
    float3 _607 = -_469;
    float2 _635 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_607, _580, _47_m48) * lerp(_47_m49, _47_m49 / max(gl_FragCoord.z * _606, 0.5f), _47_m50)).xy, ((_43.SampleBias(_44, (_4 * _47_m55.xy) + _47_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _47_m47, _47_m46.xx).xy;
    float2 _636 = _419 + _635;
    float2 _638 = _419 + (_635 * 0.25f);
    float4 _642 = _29.SampleBias(_23, _636, _18_m16);
    float4 _654 = _29.SampleBias(_23, _638, _18_m16);
    float4 _666 = _42.SampleBias(_45, lerp(lerp(_419, _638, step(_439, 1.0f / ((_18_m2.z * _654.x) + _18_m2.w)).xx), _636, step(_439, 1.0f / ((_18_m2.z * _642.x) + _18_m2.w)).xx), _18_m16);
    float _679 = clamp(float(int(sign(_395 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _692 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _692.y = -_692.y;
    float _718 = 0.07999999821186065673828125f * _47_m1;
    float3 _719 = _540 * _565;
    float3 _720 = _540 - _719;
    float3 _724 = (_718 - (_718 * _565)).xxx + _719;
    float4 _727 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _555) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _728 = _727.x;
    float2 _738 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_728 * _728, exp2((-9.27999973297119140625f) * max(0.0f, _606))) * _728) + _727.y)) + _727.zw;
    uint2 _774;
    float _775;
    if (_18_m24.y == 1.0f)
    {
        float4 _755 = mul(_18_m135, _436);
        float4 _758 = _755;
        _758.y = -_755.y;
        float4 _761 = _758 * (1.0f / _755.w);
        _774 = uint2(clamp(((_761.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _775 = 1.0f / ((_18_m2.z * _761.z) + _18_m2.w);
    }
    else
    {
        _774 = uint2(gl_FragCoord.xy);
        _775 = _439;
    }
    float3 _777 = _432 + (_580 * 0.25f);
    float3 _787 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _796 = _777 - (_18_m105.xyz + (_787 * (-_18_m107.w)));
    float _810 = max(clamp((max(abs(_796.x), abs(_796.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_796.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1112;
    float4 _1113;
    float4 _1114;
    float _1115;
    float _1116;
    if ((_18_m105.w != 0.0f) && (_810 < 1.0f))
    {
        float3 _823 = _777 - (_18_m105.xyz + (_787 * (-_18_m107.y)));
        float _837 = max(clamp((max(abs(_823.x), abs(_823.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_823.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _913;
        float4 _914;
        float4 _915;
        float4 _916;
        if (_837 < 1.0f)
        {
            float3 _846 = ((_777 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _848 = _846 - floor(_846);
            float4 _852 = _65.SampleLevel(_25, _848, 0.0f);
            float _853 = 1.0f - _837;
            float _857 = _18_m106.y * 0.5f;
            float _862 = _848.x;
            float _863 = clamp(_848.y, _857, 1.0f - _857) * 0.3333333432674407958984375f;
            float _864 = _848.z;
            float4 _867 = _66.SampleLevel(_24, float3(_862, _863, _864), 0.0f);
            float _883 = _852.x;
            float3 _884 = ((_867.xyz * 4.0f) - 2.0f.xxx) * _883;
            float _893 = _852.y;
            float3 _894 = ((_66.SampleLevel(_24, float3(_862, _863 + 0.3333333432674407958984375f, _864), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _893;
            float _903 = _852.z;
            float3 _904 = ((_66.SampleLevel(_24, float3(_862, _863 + 0.666666686534881591796875f, _864), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _903;
            _913 = _810 + (_867.w * _853);
            _914 = float4(_904, _903) * _853;
            _915 = float4(_894, _893) * _853;
            _916 = float4(_884, _883) * _853;
        }
        else
        {
            _913 = _810;
            _914 = 0.0f.xxxx;
            _915 = 0.0f.xxxx;
            _916 = 0.0f.xxxx;
        }
        float3 _922 = _777 - (_18_m105.xyz + (_787 * (-_18_m107.z)));
        float _936 = max(clamp((max(abs(_922.x), abs(_922.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_922.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1016;
        float4 _1017;
        float4 _1018;
        float4 _1019;
        if (_936 < 1.0f)
        {
            float3 _945 = ((_777 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _947 = _945 - floor(_945);
            float4 _951 = _67.SampleLevel(_25, _947, 0.0f);
            float _953 = _837 * (1.0f - _936);
            float _957 = _18_m106.y * 0.5f;
            float _962 = _947.x;
            float _963 = clamp(_947.y, _957, 1.0f - _957) * 0.3333333432674407958984375f;
            float _964 = _947.z;
            float4 _967 = _68.SampleLevel(_24, float3(_962, _963, _964), 0.0f);
            float _983 = _951.x;
            float3 _984 = ((_967.xyz * 4.0f) - 2.0f.xxx) * _983;
            float _994 = _951.y;
            float3 _995 = ((_68.SampleLevel(_24, float3(_962, _963 + 0.3333333432674407958984375f, _964), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _994;
            float _1005 = _951.z;
            float3 _1006 = ((_68.SampleLevel(_24, float3(_962, _963 + 0.666666686534881591796875f, _964), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1005;
            _1016 = _913 + (_967.w * _953);
            _1017 = _914 + (float4(_1006, _1005) * _953);
            _1018 = _915 + (float4(_995, _994) * _953);
            _1019 = _916 + (float4(_984, _983) * _953);
        }
        else
        {
            _1016 = _913;
            _1017 = _914;
            _1018 = _915;
            _1019 = _916;
        }
        float4 _1102;
        float4 _1103;
        float4 _1104;
        float _1105;
        if (_936 > 0.0f)
        {
            float3 _1028 = ((_777 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1031 = _18_m106.xyz * 0.5f;
            float3 _1033 = clamp(_1028 - floor(_1028), _1031, 1.0f.xxx - _1031);
            float4 _1037 = _69.SampleLevel(_25, _1033, 0.0f);
            float _1039 = _936 * (1.0f - _810);
            float _1043 = _18_m106.y * 0.5f;
            float _1048 = _1033.x;
            float _1049 = clamp(_1033.y, _1043, 1.0f - _1043) * 0.3333333432674407958984375f;
            float _1050 = _1033.z;
            float4 _1053 = _70.SampleLevel(_24, float3(_1048, _1049, _1050), 0.0f);
            _1102 = _1017 + (float4(((_70.SampleLevel(_24, float3(_1048, _1049 + 0.666666686534881591796875f, _1050), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1037.z, _1037.z) * _1039);
            _1103 = _1018 + (float4(((_70.SampleLevel(_24, float3(_1048, _1049 + 0.3333333432674407958984375f, _1050), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1037.y, _1037.y) * _1039);
            _1104 = _1019 + (float4(((_1053.xyz * 4.0f) - 2.0f.xxx) * _1037.x, _1037.x) * _1039);
            _1105 = _1016 + (_1053.w * _1039);
        }
        else
        {
            _1102 = _1017;
            _1103 = _1018;
            _1104 = _1019;
            _1105 = _1016;
        }
        float _1108 = clamp((_1105 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1112 = _1102;
        _1113 = _1103;
        _1114 = _1104;
        _1115 = _1108 - _810;
        _1116 = (_1108 + _810) * 0.5f;
    }
    else
    {
        _1112 = 0.0f.xxxx;
        _1113 = 0.0f.xxxx;
        _1114 = 0.0f.xxxx;
        _1115 = 0.0f;
        _1116 = 1.0f;
    }
    float4 _1136 = _1114 + float4(_18_m108.x * _1116, (_18_m108.y * _1116) + ((_18_m108.w * _1115) * 0.5f), _18_m108.z * _1116, (_18_m108.w * _1116) + ((_18_m108.y * _1115) * 0.375f));
    float4 _1156 = _1113 + float4(_18_m109.x * _1116, (_18_m109.y * _1116) + ((_18_m109.w * _1115) * 0.5f), _18_m109.z * _1116, (_18_m109.w * _1116) + ((_18_m109.y * _1115) * 0.375f));
    float4 _1176 = _1112 + float4(_18_m110.x * _1116, (_18_m110.y * _1116) + ((_18_m110.w * _1115) * 0.5f), _18_m110.z * _1116, (_18_m110.w * _1116) + ((_18_m110.y * _1115) * 0.375f));
    float _1181 = max(0.0f, dot(_1136.xyz, _580) + _1136.w);
    float _1186 = max(0.0f, dot(_1156.xyz, _580) + _1156.w);
    float _1191 = max(0.0f, dot(_1176.xyz, _580) + _1176.w);
    float3 _1201 = reflect(_607, _580);
    float _1209 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_555, 0.001000000047497451305389404296875f))));
    float2 _1210 = float2(_774);
    float2 _1214 = floor(_1210 * _50_m0.w);
    float _1231 = floor(_775 - _50_m2.y);
    float _1235 = clamp(_1231, 0.0f, _50_m1.x - 1.0f);
    uint _1245 = (_1231 <= _1235) ? (_35.Load(uint(_18_m21.z + int(_1214.x + (_1214.y * _50_m0.x))) * 4 + 0) & _35.Load(uint(_18_m21.w + int(_1235)) * 4 + 0)) : 0u;
    float _1248 = dot(float4(_1181, _1186, _1191, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1250;
    float _1253;
    uint _1255;
    _1250 = 0.0f.xxx;
    _1253 = 1.0f;
    _1255 = _1245;
    uint _1256;
    float3 _1251;
    float _1254;
    bool _1258;
    [loop]
    for (;;)
    {
        _1258 = _1253 > 0.00999999977648258209228515625f;
        if ((_1255 != 0u) && _1258)
        {
            uint _1262 = firstbitlow(_1255);
            _1256 = _1255 ^ (1u << (_1262 & 31u));
            float3 _1282 = float3(dot(_50_m4[_1262]._m2, _436), dot(_50_m4[_1262]._m3, _436), dot(_50_m4[_1262]._m4, _436));
            float3 _1283 = abs(_1282);
            if (all(bool3(_1283.x <= _50_m4[_1262]._m1.xyz.x, _1283.y <= _50_m4[_1262]._m1.xyz.y, _1283.z <= _50_m4[_1262]._m1.xyz.z)))
            {
                float3 _1292 = _50_m4[_1262]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1294 = _1283 * 0.100000001490116119384765625f;
                float3 _1295 = _1294 * _1294;
                float3 _1298 = (_50_m4[_1262]._m1.xyz - _1283) * _50_m4[_1262]._m5.xyz;
                float3 _1346;
                [branch]
                if (_50_m4[_1262]._m6.x == 1.0f)
                {
                    float3 _1331 = float3(dot(_50_m4[_1262]._m2.xyz, _1201), dot(_50_m4[_1262]._m3.xyz, _1201), dot(_50_m4[_1262]._m4.xyz, _1201));
                    float3 _1333 = (_50_m4[_1262]._m1.xyz - _1282) / _1331;
                    float3 _1336 = ((-_50_m4[_1262]._m1.xyz) - _1282) / _1331;
                    bool3 _1337 = bool3(_1331.x > 0.0f.xxx.x, _1331.y > 0.0f.xxx.y, _1331.z > 0.0f.xxx.z);
                    float3 _1338 = float3(_1337.x ? _1333.x : _1336.x, _1337.y ? _1333.y : _1336.y, _1337.z ? _1333.z : _1336.z);
                    _1346 = _1282 + (_1331 * min(min(_1338.x, _1338.y), _1338.z));
                }
                else
                {
                    _1346 = _1201;
                }
                float3 _1347 = normalize(_1346);
                float3 _1350 = float3(int3(sign(_1347)));
                float3 _1353 = _1347 / dot(_1347, _1350).xxx;
                float3 _1367;
                if (_1353.z < 0.0f)
                {
                    float3 _1358 = abs(_1353);
                    float2 _1365 = _1350.xy * float2(1.0f - _1358.y, 1.0f - _1358.x);
                    _1367 = float3(_1365.x, _1365.y, _1353.z);
                }
                else
                {
                    _1367 = _1353;
                }
                float _1392 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_50_m4[_1262]._m0, float4(_580, 1.0f))));
                float _1405 = clamp((min(_1298.x, min(_1298.y, _1298.z)) * _50_m4[_1262]._m6.y) + ((((((_1292 * _1292).x - ((_1295.x + _1295.y) + _1295.z)) * _50_m4[_1262]._m5.x) * _50_m4[_1262]._m5.x) * (1.0f - _50_m4[_1262]._m6.y)) * 100.0f), 0.0f, 1.0f) * _50_m4[_1262]._m6.w;
                _1251 = _1250 + ((((_33.SampleLevel(_26, float3((((_1367.xy * 0.5f) + 0.5f.xx) * _50_m1.w) + _50_m2.w.xx, _50_m4[_1262]._m1.w), _1209).xyz * _50_m4[_1262]._m5.w) * ((((((clamp(abs(_1248 / _1392), 0.0f, 1.0f) * 2.0f) + _1248) / (2.0f + _1392)) - 1.0f) * _18_m23.w) + 1.0f)) * _1405) * _1253);
                _1254 = _1253 * (1.0f - _1405);
            }
            else
            {
                _1251 = _1250;
                _1254 = _1253;
            }
            _1250 = _1251;
            _1253 = _1254;
            _1255 = _1256;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1474;
    if (_1258)
    {
        float3 _1413 = normalize(_1201);
        float3 _1416 = float3(int3(sign(_1413)));
        float3 _1419 = _1413 / dot(_1413, _1416).xxx;
        float3 _1433;
        if (_1419.z < 0.0f)
        {
            float3 _1424 = abs(_1419);
            float2 _1431 = _1416.xy * float2(1.0f - _1424.y, 1.0f - _1424.x);
            _1433 = float3(_1431.x, _1431.y, _1419.z);
        }
        else
        {
            _1433 = _1419;
        }
        float _1460 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_50_m3, float4(_580, 1.0f))));
        _1474 = _1250 + ((_33.SampleLevel(_26, float3((((_1433.xy * 0.5f) + 0.5f.xx) * _50_m1.w) + _50_m2.w.xx, 0.0f), _1209).xyz * ((((((clamp(abs(_1248 / _1460), 0.0f, 1.0f) * 2.0f) + _1248) / (2.0f + _1460)) - 1.0f) * _18_m23.w) + 1.0f)) * _1253);
    }
    else
    {
        _1474 = _1250;
    }
    float3 _1480 = (_1474 * _18_m23.z) * _18_m22.y;
    float3 _1501;
    [branch]
    if (_18_m23.y != 0.0f)
    {
        float4 _1495 = _31.SampleBias(_24, _419, _18_m16);
        float _1496 = _1495.x;
        _1501 = (_30.SampleBias(_24, _419, _18_m16).xyz * _1496) + (_1480 * (1.0f - _1496));
    }
    else
    {
        _1501 = _1480;
    }
    float2 _2016;
    do
    {
        if (_56_m7.w >= 0.9900000095367431640625f)
        {
            _2016 = float2(_56_m7.z, 1.0f);
            break;
        }
        int _1517 = int(_56_m7.x);
        bool3 _1519 = (_1517 == 2).xxx;
        float3 _1527 = _432 - float3(_1519.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1519.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1519.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
        float _1538 = max(clamp((_56_m6.w - dot(_1527, _1527)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
        float _1755;
        bool _1756;
        if (_1538 > 0.0f)
        {
            float _1753;
            bool _1754;
            if (_1517 > 0)
            {
                float3 _1545 = _432 - _56_m1[0].xyz;
                float3 _1549 = _432 - _56_m1[1].xyz;
                float3 _1553 = _432 - _56_m1[2].xyz;
                float3 _1557 = _432 - _56_m1[3].xyz;
                float4 _1562 = float4(dot(_1545, _1545), dot(_1549, _1549), dot(_1553, _1553), dot(_1557, _1557));
                float4 _1571 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
                float4 _1573 = float4(bool4(_1562.x < _1571.x, _1562.y < _1571.y, _1562.z < _1571.z, _1562.w < _1571.w));
                float3 _1577 = clamp(_1573.yzw - _1573.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1581 = clamp(4.0f - dot(float4(_1573.x, _1577.x, _1577.y, _1577.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1583 = clamp(_1581 + 1.0f, 0.0f, 3.0f);
                uint _1584 = uint(_1581);
                uint _1592 = uint(_1583);
                float _1598 = dot(_1562, _348[_1592]) / _56_m1[_1592].w;
                float _1615;
                if (((_1583 > _1581) && (_1598 >= 0.0f)) && (_1598 <= 1.0f))
                {
                    _1615 = _1581 + step(frac(52.98291778564453125f * frac(dot(_1210 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1562, _348[_1584]) / _56_m1[_1584].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1615 = _1581;
                }
                float _1616 = clamp(_1615, 0.0f, 4.0f);
                float4 _1620 = mul(_56_m0[uint(_1616)], _436);
                float _1623 = _1620.z;
                float4 _1624 = float4(_1620.xy, _1623, _1616);
                float3 _1625 = _1624.xyz;
                bool3 _1626 = bool3(_1625.x <= 0.0f.xxx.x, _1625.y <= 0.0f.xxx.y, _1625.z <= 0.0f.xxx.z);
                bool3 _1627 = bool3(_1625.x >= 1.0f.xxx.x, _1625.y >= 1.0f.xxx.y, _1625.z >= 1.0f.xxx.z);
                bool _1633 = any(bool3(_1626.x || _1627.x, _1626.y || _1627.y, _1626.z || _1627.z)) || ((asuint(_1623) & 2147483647u) > 2139095040u);
                int _1634 = int(_1616);
                float2 _1651 = float4(_56_m3[_1634].xy + (_1624.xy * _56_m3[_1634].zw), _1623, _1616).xy * _56_m4.zw;
                float2 _1653 = floor(_1651 + 0.5f.xx);
                float2 _1654 = _1651 - _1653;
                float _1655 = _1654.x;
                float _1656 = _1655 + 0.5f;
                float _1658 = (_1656 * _1656) * 0.5f;
                float _1661 = min(_1655, 0.0f);
                float _1665 = max(_1655, 0.0f);
                float4 _1669 = float4(_1658 - _1655, (1.0f - _1655) - (_1661 * _1661), (_1655 + 1.0f) - (_1665 * _1665), _1658) * 0.44444000720977783203125f;
                float _1670 = _1654.y;
                float _1671 = _1670 + 0.5f;
                float _1673 = (_1671 * _1671) * 0.5f;
                float _1676 = min(_1670, 0.0f);
                float _1680 = max(_1670, 0.0f);
                float4 _1684 = float4(_1673 - _1670, (1.0f - _1670) - (_1676 * _1676), (_1670 + 1.0f) - (_1680 * _1680), _1673) * 0.44444000720977783203125f;
                float2 _1686 = _1669.yw;
                float2 _1687 = _1669.xz + _1686;
                float2 _1689 = _1684.yw;
                float2 _1690 = _1684.xz + _1689;
                float2 _1696 = ((_1686 / _1687) + float2(-1.5f, 0.5f)) * _56_m4.xx;
                float2 _1698 = ((_1689 / _1690) + float2(-1.5f, 0.5f)) * _56_m4.yy;
                float2 _1700 = _1653 * _56_m4.xy;
                float _1701 = _1696.x;
                float _1702 = _1698.x;
                float _1705 = _1696.y;
                float _1708 = _1698.y;
                float _1713 = _1687.x;
                float _1714 = _1690.x;
                float _1716 = _1687.y;
                float _1718 = _1690.y;
                _1753 = _1633 ? 1.0f : (((((_1713 * _1714) * _57.SampleCmpLevelZero(_27, float3(_1700 + float2(_1701, _1702), _368).xy, _1623)) + ((_1716 * _1714) * _57.SampleCmpLevelZero(_27, float3(_1700 + float2(_1705, _1702), _368).xy, _1623))) + ((_1713 * _1718) * _57.SampleCmpLevelZero(_27, float3(_1700 + float2(_1701, _1708), _368).xy, _1623))) + ((_1716 * _1718) * _57.SampleCmpLevelZero(_27, float3(_1700 + float2(_1705, _1708), _368).xy, _1623)));
                _1754 = _1633;
            }
            else
            {
                _1753 = 1.0f;
                _1754 = false;
            }
            _1755 = _1753;
            _1756 = _1754;
        }
        else
        {
            _1755 = 1.0f;
            _1756 = false;
        }
        float _1956;
        float _1957;
        if ((_1538 < 1.0f) || (_56_m8.x > 0.5f))
        {
            float _1767 = 1.0f - clamp(dot(_580, _54_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1778 = (_432 - (_54_m0.xyz * (_1767 * _56_m24.x))) + (_580 * (_1767 * _56_m24.y));
            float4 _1784 = float4(_1778, 1.0f);
            float4 _1785 = mul(_56_m23, _1784);
            float2 _1786 = _1785.xy;
            float _1954;
            if (all(bool2(_1786.x > 0.0f.xx.x, _1786.y > 0.0f.xx.y)) && all(bool2(_1786.x < 1.0f.xx.x, _1786.y < 1.0f.xx.y)))
            {
                uint _1805 = clamp(uint((floor(_1785.y * _56_m25.z) + _1785.x) * _56_m25.y), 0u, 127u);
                uint _1809 = asuint(_56_m27[_1805].x);
                float2 _1810 = spvUnpackHalf2x16(_1809);
                float _1811 = _1810.x;
                float _1953;
                if (_1811 >= 0.0f)
                {
                    float4x4 _1820 = _56_m22;
                    _1820[0].w = _56_m27[_1805].y;
                    _1820[1].w = _56_m27[_1805].z;
                    _1820[2].w = _56_m27[_1805].w;
                    float4 _1827 = mul(_1820, _1784);
                    float3 _1828 = _1827.xyz;
                    float _1952;
                    if (all(bool3(_1828.x > 0.0f.xxx.x, _1828.y > 0.0f.xxx.y, _1828.z > 0.0f.xxx.z)) && all(bool3(_1828.x < 1.0f.xxx.x, _1828.y < 1.0f.xxx.y, _1828.z < 1.0f.xxx.z)))
                    {
                        float _1845 = _1827.z;
                        float2 _1851 = float4((_1827.xy * _56_m24.zw) + float2(_1811, spvUnpackHalf2x16(_1809 >> 16u).x), _1845, 1.0f).xy * _56_m26.zw;
                        float2 _1853 = floor(_1851 + 0.5f.xx);
                        float2 _1854 = _1851 - _1853;
                        float _1855 = _1854.x;
                        float _1856 = _1855 + 0.5f;
                        float _1858 = (_1856 * _1856) * 0.5f;
                        float _1861 = min(_1855, 0.0f);
                        float _1865 = max(_1855, 0.0f);
                        float4 _1869 = float4(_1858 - _1855, (1.0f - _1855) - (_1861 * _1861), (_1855 + 1.0f) - (_1865 * _1865), _1858) * 0.44444000720977783203125f;
                        float _1870 = _1854.y;
                        float _1871 = _1870 + 0.5f;
                        float _1873 = (_1871 * _1871) * 0.5f;
                        float _1876 = min(_1870, 0.0f);
                        float _1880 = max(_1870, 0.0f);
                        float4 _1884 = float4(_1873 - _1870, (1.0f - _1870) - (_1876 * _1876), (_1870 + 1.0f) - (_1880 * _1880), _1873) * 0.44444000720977783203125f;
                        float2 _1886 = _1869.yw;
                        float2 _1887 = _1869.xz + _1886;
                        float2 _1889 = _1884.yw;
                        float2 _1890 = _1884.xz + _1889;
                        float2 _1896 = ((_1886 / _1887) + float2(-1.5f, 0.5f)) * _56_m26.xx;
                        float2 _1898 = ((_1889 / _1890) + float2(-1.5f, 0.5f)) * _56_m26.yy;
                        float2 _1900 = _1853 * _56_m26.xy;
                        float _1901 = _1896.x;
                        float _1902 = _1898.x;
                        float _1905 = _1896.y;
                        float _1908 = _1898.y;
                        float _1913 = _1887.x;
                        float _1914 = _1890.x;
                        float _1916 = _1887.y;
                        float _1918 = _1890.y;
                        _1952 = ((((_1913 * _1914) * _60.SampleCmpLevelZero(_27, float3(_1900 + float2(_1901, _1902), _368).xy, _1845)) + ((_1916 * _1914) * _60.SampleCmpLevelZero(_27, float3(_1900 + float2(_1905, _1902), _368).xy, _1845))) + ((_1913 * _1918) * _60.SampleCmpLevelZero(_27, float3(_1900 + float2(_1901, _1908), _368).xy, _1845))) + ((_1916 * _1918) * _60.SampleCmpLevelZero(_27, float3(_1900 + float2(_1905, _1908), _368).xy, _1845));
                    }
                    else
                    {
                        _1952 = 1.0f;
                    }
                    _1953 = _1952;
                }
                else
                {
                    _1953 = 1.0f;
                }
                _1954 = _1953;
            }
            else
            {
                _1954 = 1.0f;
            }
            _1956 = _1756 ? _1954 : _1755;
            _1957 = _1954;
        }
        else
        {
            _1956 = _1755;
            _1957 = 1.0f;
        }
        float _1960 = lerp(lerp(_1957, _1956, _1538), min(_1957, _1956), _56_m8.x);
        float _2011;
        if (_1960 > 0.001000000047497451305389404296875f)
        {
            float3 _1967 = _432 - _18_m65.xyz;
            float2 _1977 = (_1967 + (_18_m68.xyz * _1967.y)).xz * _18_m66.z;
            float2 _1986 = _18_m67.xy * _18_m75.w;
            _2011 = _1960 * lerp(1.0f, lerp(_59.SampleLevel(_25, _1977 + _1986, 0.0f), _59.SampleLevel(_25, (_1977 * _18_m67.w) + _1986, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1967.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _2011 = _1960;
        }
        _2016 = float2(lerp(_2011, _56_m7.z, _56_m7.w), _2011);
        break;
    } while(false);
    float _2021 = lerp(1.0f, min(1.0f, _2016.x), _56_m6.x);
    float4 _2160;
    if (_2021 > 0.001000000047497451305389404296875f)
    {
        float3 _2031 = -_54_m0.xyz;
        float _2036 = dot(_2031, _1201);
        float3 _2038 = _1201 - (_2031 * _2036);
        bool3 _2040 = (_2036 < _54_m4.z).xxx;
        float3 _2048 = normalize((_2031 * _54_m4.z) + ((_2038 * rsqrt(max(6.103515625e-05f, dot(_2038, _2038)))) * _54_m4.y));
        float3 _2049 = float3(_2040.x ? _2048.x : _1201.x, _2040.y ? _2048.y : _1201.y, _2040.z ? _2048.z : _1201.z);
        float3 _2053 = _2049 + _469;
        float3 _2057 = _2053 * rsqrt(max(6.103515625e-05f, dot(_2053, _2053)));
        float _2058 = clamp(dot(_2049, _580), 0.0f, 1.0f);
        float _2060 = clamp(dot(_580, _2057), 0.0f, 1.0f);
        float _2063 = clamp(_606, 0.0f, 1.0f);
        float _2064 = _555 * _555;
        float _2065 = _2064 * _2064;
        float _2086 = (((_2060 * _2065) - _2060) * _2060) + 1.0f;
        float _2089 = 1.0f - clamp(dot(_469, _2057), 0.0f, 1.0f);
        float _2090 = _2089 * _2089;
        float _2092 = (_2089 * _2090) * _2090;
        float _2116 = 1.0f - _555;
        float _2123 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2116 * (1.04997003078460693359375f + (_2116 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2116))))));
        float _2124 = 1.0f - _2123;
        float3 _2127 = _724 + ((1.0f.xxx - _724) * 0.0476190485060214996337890625f);
        float3 _2146 = (clamp((clamp((min(((_724 * (1.0f - _2092)) + _2092.xxx) * ((_2065 / (_2086 * _2086)) * (0.5f / (((_2058 * sqrt(((((-_2063) * _2065) + _2063) * _2063) + _2065)) + (_2063 * sqrt(((((-_2058) * _2065) + _2058) * _2058) + _2065))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2127 * (((_64.SampleLevel(_24, (float2(_2063, _555) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2058, _555) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2123) / _2124)) * _2127) / (1.0f.xxx - (_2127 * _2124)))) * _54_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_550, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2058) + ((_720 * 1.0f) * _2058);
        float3 _2147 = _2146 * _54_m1.xyz;
        float3 _2158 = lerp(_2147, _2147 * _61.SampleBias(_24, float2(_2021, 0.5f), _18_m16).xyz, (1.0f - _2021).xxx) * 1.0f;
        _2160 = float4(_2158.x, _2158.y, _2158.z, 0.0f.xxxx.w);
    }
    else
    {
        _2160 = 0.0f.xxxx;
    }
    float2 _2162 = floor(_1210 * 0.03125f);
    int _2170 = int((_2162.x + (_2162.y * _52_m5)) * 8.0f);
    float _2177 = floor(_775 - (_18_m3.y * _52_m11));
    float _2181 = clamp(_2177, 0.0f, _52_m7 - 1.0f);
    int _2183 = int(_2181 * 8.0f);
    float3 _2185;
    float _2188;
    _2185 = 0.0f.xxx;
    _2188 = 1.0f;
    float3 _2186;
    float _2189;
    [loop]
    for (int _2190 = 0; _2190 <= 7; _2185 = _2186, _2188 = _2189, _2190++)
    {
        uint _2208 = (_2177 <= _2181) ? (_35.Load(uint(_2170 + _2190) * 4 + 0) & _35.Load(uint((_18_m21.y + _2183) + _2190) * 4 + 0)) : 0u;
        uint _2209 = uint(_2190);
        float3 _2213;
        _2189 = _2188;
        _2213 = 0.0f.xxx;
        uint _2216;
        float _2211;
        float3 _2214;
        [loop]
        for (uint _2215 = _2208; _2215 != 0u; _2189 = _2211, _2213 = _2214, _2215 = _2216)
        {
            uint _2220 = firstbitlow(_2215);
            _2216 = _2215 ^ (1u << (_2220 & 31u));
            int _2226 = int((32u * _2209) + _2220) * 8;
            int _2229 = _2226 + 1;
            int _2232 = _2226 + 2;
            int _2235 = _2226 + 3;
            int _2238 = _2226 + 5;
            int _2241 = _2226 + 6;
            int _2244 = _2226 + 7;
            uint _2248 = uint(_54_m6[_2238].w);
            float _2323;
            if ((_2248 & 1u) == 1u)
            {
                uint _2254 = asuint(_54_m6[_2238].x);
                uint _2261 = asuint(_54_m6[_2238].y);
                uint _2268 = asuint(_54_m6[_2238].z);
                uint _2275 = asuint(_54_m6[_2241].x);
                uint _2282 = asuint(_54_m6[_2241].y);
                uint _2289 = asuint(_54_m6[_2241].z);
                float3 _2308 = abs(mul(float4(_432 - _54_m6[_2229].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2254).x, spvUnpackHalf2x16(_2268).x, spvUnpackHalf2x16(_2282).x, 0.0f), float4(spvUnpackHalf2x16(_2254 >> 16u).x, spvUnpackHalf2x16(_2268 >> 16u).x, spvUnpackHalf2x16(_2282 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2261).x, spvUnpackHalf2x16(_2275).x, spvUnpackHalf2x16(_2289).x, 0.0f), float4(spvUnpackHalf2x16(_2261 >> 16u).x, spvUnpackHalf2x16(_2275 >> 16u).x, spvUnpackHalf2x16(_2289 >> 16u).x, 0.0f))).xyz);
                float _2315 = _54_m6[_2244].x * 0.5f;
                float _2321 = 1.0f - clamp((max(max(_2308.x, _2308.y), _2308.z) - (_2315 + 0.5f)) / (0.5f - _2315), 0.0f, 1.0f);
                _2323 = _2321 * _2321;
            }
            else
            {
                _2323 = 1.0f;
            }
            bool _2327 = _54_m6[_2235].z > 0.5f;
            if ((false || (_2323 < 0.001000000047497451305389404296875f)) || _2327)
            {
                _2211 = _2189;
                _2214 = _2213;
                continue;
            }
            float _3438;
            float3 _3439;
            if (_54_m6[_2226].w < 1.5f)
            {
                float3 _2815 = float3(0.100000001490116119384765625f, _555, 1.0f);
                float _2824 = (0.5f + (0.5f * _54_m6[_2232].y)) - abs(_54_m6[_2232].x);
                float _2825 = _54_m6[_2232].y - _2824;
                float _2832 = abs(max((1.0f - abs(_2824)) - abs(_2825), 0.00048828125f));
                float3 _2836 = normalize(float3(_2824, _2825, (_54_m6[_2232].x >= 0.0f) ? _2832 : (-_2832)));
                float3 _2837 = _54_m6[_2229].xyz - _432;
                float _2838 = dot(_2837, _2837);
                float _2839 = rsqrt(_2838);
                float3 _2840 = _2837 * _2839;
                float _2844 = clamp(_54_m6[_2244].y * _2839, 0.0f, 1.0f);
                int _2849 = int(_54_m6[_2244].w);
                float3 _2850 = _2836 * _54_m6[_2232].z;
                float3 _2851 = _2850 * 0.5f;
                float3 _2852 = _2837 - _2851;
                float3 _2853 = _2837 + _2851;
                bool _2856 = (uint(_54_m6[_2226].w) & 1u) == 0u;
                bool _2859 = _2856 || ((_2248 & 2u) != 0u);
                bool _2862 = (!_2856) && (_54_m6[_2232].z > 0.0f);
                float _2881;
                float _2882;
                if (_2862)
                {
                    float _2866 = length(_2852);
                    float _2867 = length(_2853);
                    _2881 = clamp(0.5f * ((dot(_580, _2852) / _2866) + (dot(_580, _2853) / _2867)), 0.0f, 1.0f);
                    _2882 = 1.0f / ((((_2866 * _2867) + dot(_2852, _2853)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2881 = clamp(dot(_580, _2840), 0.0f, 1.0f);
                    _2882 = 1.0f;
                }
                float _2904;
                if (_54_m6[_2241].w < 0.0f)
                {
                    float _2898 = _2838 * (_54_m6[_2229].w * _54_m6[_2229].w);
                    float _2901 = clamp(1.0f - (_2898 * _2898), 0.0f, 1.0f);
                    _2904 = lerp(1.0f / (_2838 + 1.0f), _2882, float(_2862)) * (_2901 * _2901);
                }
                else
                {
                    float3 _2887 = _2837 * _54_m6[_2229].w;
                    _2904 = _2882 * pow(1.0f - clamp(dot(_2887, _2887), 0.0f, 1.0f), _54_m6[_2241].w);
                }
                float _2910 = clamp((dot(_2840, -_2836) - _54_m6[_2232].z) * _54_m6[_2232].w, 0.0f, 1.0f);
                float _2914 = _2904 * lerp(1.0f, _2910 * _2910, float(_2856));
                float _3014;
                if ((!_2862) && (_2849 >= 0))
                {
                    uint _2920 = uint(_2849);
                    float2 _3007;
                    [branch]
                    if (_2856)
                    {
                        float4 _2997 = mul(_74_m1[_2920], _436);
                        _3007 = _74_m0[_2920].xy + (clamp(_2997.xy / _2997.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_2920].zw);
                    }
                    else
                    {
                        float3 _2934 = mul(float4(-_2837, 0.0f), _74_m1[_2920]).xyz;
                        float3 _375 = _2934;
                        float3 _374 = _2934;
                        float3 _373 = abs(_2934);
                        uint _2943 = uint(int(_373.y > _373.x));
                        uint _2949 = (_373.z > _373[_2943]) ? 2u : _2943;
                        uint _2955 = (_2949 * 2u) + uint(_374[_2949] < 0.0f);
                        float _2959 = abs(_375[_2955 / 2u]);
                        float _2979 = 0.5f - (0.000244140625f / _74_m0[_2920].w);
                        _3007 = _74_m0[_2920].xy + (clamp(float2((float(_2955) + ((((_375[uint(_349[_2955].x)] * _350[_2955].x) / _2959) * _2979) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_349[_2955].y)] * _350[_2955].y) / _2959) * _2979)), 0.0f.xx, 1.0f.xx) * _74_m0[_2920].zw);
                    }
                    _3014 = _2914 * _72.SampleLevel(_24, _3007, 0.0f).x;
                }
                else
                {
                    _3014 = _2914;
                }
                bool _3015 = _3014 > 0.0f;
                float _3303;
                if (_3015)
                {
                    int _3067;
                    if (_2859)
                    {
                        _3067 = int(_54_m6[_2235].x);
                    }
                    else
                    {
                        uint _3022 = asuint(_54_m6[_2232].w);
                        uint _3024 = asuint(_54_m6[_2235].x);
                        float3 _3025 = _432 - _54_m6[_2229].xyz;
                        float3 _3026 = abs(_3025);
                        float _3027 = _3026.x;
                        float _3028 = _3026.y;
                        float _3030 = _3026.z;
                        int _3062;
                        if ((_3027 > _3028) && (_3027 > _3030))
                        {
                            _3062 = int((_3025.x > 0.0f) ? (_3022 >> 24u) : ((_3022 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3054;
                            if (_3028 > _3030)
                            {
                                _3054 = int((_3025.y > 0.0f) ? ((_3022 >> 8u) & 255u) : (_3022 & 255u));
                            }
                            else
                            {
                                _3054 = int((_3025.z > 0.0f) ? ((_3024 >> 8u) & 255u) : (_3024 & 255u));
                            }
                            _3062 = _3054;
                        }
                        _3067 = (_3062 < 80) ? _3062 : (-1);
                    }
                    float3 _3077 = (_432 - ((-_2840) * _56_m11[_3067].x)) + (_580 * (_56_m11[_3067].y * 5.0f));
                    float4 _3084 = mul(_56_m10[_3067], float4(_3077, 1.0f));
                    float _3085 = _3084.w;
                    float3 _3088 = _3084.xyz / _3085.xxx;
                    float2 _3089 = _3088.xy;
                    float3 _3097 = _3088.xyz;
                    bool3 _3098 = bool3(_3097.x <= 0.0f.xxx.x, _3097.y <= 0.0f.xxx.y, _3097.z <= 0.0f.xxx.z);
                    bool3 _3099 = bool3(_3097.x >= 1.0f.xxx.x, _3097.y >= 1.0f.xxx.y, _3097.z >= 1.0f.xxx.z);
                    float _3102 = _3088.z;
                    float2 _3113 = ((_3089 * (_56_m12[_3067].zw - _56_m12[_3067].xy)) + _56_m12[_3067].xy).xy * _56_m13.zw;
                    float2 _3115 = floor(_3113 + 0.5f.xx);
                    float2 _3116 = _3113 - _3115;
                    float _3117 = _3116.x;
                    float _3118 = _3117 + 0.5f;
                    float _3119 = _3118 * _3118;
                    float _3122 = 1.0f - _3117;
                    float _3123 = min(_3117, 0.0f);
                    float _3126 = _3117 + 1.0f;
                    float _3127 = max(_3117, 0.0f);
                    float _3138 = _3116.y;
                    float _3139 = _3138 + 0.5f;
                    float _3140 = _3139 * _3139;
                    float _3143 = 1.0f - _3138;
                    float _3144 = min(_3138, 0.0f);
                    float _3147 = _3138 + 1.0f;
                    float _3148 = max(_3138, 0.0f);
                    float3 _3160 = float3(0.1599999964237213134765625f * _3122, 0.1599999964237213134765625f * ((_3126 - (_3127 * _3127)) + 1.0f), _3119 * 0.07999999821186065673828125f);
                    float3 _3161 = float3(0.1599999964237213134765625f * ((_3119 * 0.5f) - _3117), 0.1599999964237213134765625f * ((_3122 - (_3123 * _3123)) + 1.0f), 0.1599999964237213134765625f * _3126) + _3160;
                    float3 _3163 = float3(0.1599999964237213134765625f * _3143, 0.1599999964237213134765625f * ((_3147 - (_3148 * _3148)) + 1.0f), _3140 * 0.07999999821186065673828125f);
                    float3 _3164 = float3(0.1599999964237213134765625f * ((_3140 * 0.5f) - _3138), 0.1599999964237213134765625f * ((_3143 - (_3144 * _3144)) + 1.0f), 0.1599999964237213134765625f * _3147) + _3163;
                    float3 _3170 = ((_3160 / _3161) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                    float3 _3172 = ((_3163 / _3164) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                    float2 _3174 = _3115 * _56_m13.xy;
                    float _3175 = _3170.x;
                    float _3176 = _3172.x;
                    float _3179 = _3170.y;
                    float _3182 = _3170.z;
                    float _3185 = _3172.y;
                    float _3192 = _3172.z;
                    float _3199 = _3161.x;
                    float _3200 = _3164.x;
                    float _3202 = _3161.y;
                    float _3204 = _3161.z;
                    float _3206 = _3164.y;
                    float _3210 = _3164.z;
                    float _3268 = (((((((_3199 * _3200) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3175, _3176), _368).xy, _3102)) + ((_3202 * _3200) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3179, _3176), _368).xy, _3102))) + ((_3204 * _3200) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3182, _3176), _368).xy, _3102))) + ((_3199 * _3206) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3175, _3185), _368).xy, _3102))) + ((_3202 * _3206) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3179, _3185), _368).xy, _3102))) + ((_3204 * _3206) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3182, _3185), _368).xy, _3102))) + ((_3199 * _3210) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3175, _3192), _368).xy, _3102));
                    float2 _3289 = min(_3089, 1.0f.xx - _3089);
                    _3303 = (_3067 >= 0) ? lerp(1.0f, (any(bool3(_3098.x || _3099.x, _3098.y || _3099.y, _3098.z || _3099.z)) || ((asuint(_3102) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3268 + ((_3202 * _3210) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3179, _3192), _368).xy, _3102))) + ((_3204 * _3210) * _58.SampleCmpLevelZero(_27, float3(_3174 + float2(_3182, _3192), _368).xy, _3102))), _2859 ? min(_56_m11[_3067].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_3067].z - _3085) * 0.25f, min(_3289.x, _3289.y)))) : _56_m11[_3067].w) : 1.0f;
                }
                else
                {
                    _3303 = 1.0f;
                }
                float3 _3326;
                float3 _3327;
                if (_2862)
                {
                    float3 _3306 = _2815 * _2815;
                    float _3315 = dot(_1201, _2850);
                    _3326 = _3306 / clamp(_3306 + (0.5f * clamp(_54_m6[_2232].z * _2839, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3327 = normalize(_2852 + (_2850 * clamp(dot(_2852, (_1201 * _3315) - _2850) / ((_54_m6[_2232].z * _54_m6[_2232].z) - (_3315 * _3315)), 0.0f, 1.0f)));
                }
                else
                {
                    _3326 = 1.0f.xxx;
                    _3327 = _2840;
                }
                float3 _3328 = _3327 + _469;
                float3 _3332 = _3328 * rsqrt(max(6.103515625e-05f, dot(_3328, _3328)));
                float3 _3437;
                if (_3015)
                {
                    float _3335 = clamp(_2881, 0.0f, 1.0f);
                    float _3337 = clamp(dot(_580, _3332), 0.0f, 1.0f);
                    float _3339 = clamp(dot(_469, _3332), 0.0f, 1.0f);
                    float _3340 = clamp(_606, 0.0f, 1.0f);
                    float _3341 = _555 * _555;
                    float _3351;
                    if (_2844 > 0.0f)
                    {
                        _3351 = clamp(_3341 + ((_2844 * _2844) / ((_3339 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3351 = _3341;
                    }
                    float _3352 = _3351 * _3351;
                    float _3373 = (((_3337 * _3352) - _3337) * _3337) + 1.0f;
                    float _3378 = 1.0f - _3339;
                    float _3379 = _3378 * _3378;
                    float _3381 = (_3378 * _3379) * _3379;
                    float _3405 = 1.0f - _555;
                    float _3412 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3405 * (1.04997003078460693359375f + (_3405 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3405))))));
                    float _3413 = 1.0f - _3412;
                    float3 _3416 = _724 + ((1.0f.xxx - _724) * 0.0476190485060214996337890625f);
                    float3 _3436 = ((clamp((min(((_724 * (1.0f - _3381)) + _3381.xxx) * (((_3352 / (_3373 * _3373)) * _3326.y) * (0.5f / (((_3335 * sqrt(((((-_3340) * _3352) + _3340) * _3340) + _3352)) + (_3340 * sqrt(((((-_3335) * _3352) + _3335) * _3335) + _3352))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3416 * (((_64.SampleLevel(_24, (float2(_3340, _555) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_3335, _555) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3412) / _3413)) * _3416) / (1.0f.xxx - (_3416 * _3413)))) * _54_m6[_2244].z, 0.0f.xxx, 1000.0f.xxx) * _2881) + ((_720 * _3326.z) * _2881)) * (((_54_m6[_2226].xyz * _3014) * _3303) * _2323);
                    _3437 = _3436;
                }
                else
                {
                    _3437 = 0.0f.xxx;
                }
                _3438 = _2189;
                _3439 = _3437;
            }
            else
            {
                float _2813;
                do
                {
                    if (_2327)
                    {
                        _2813 = 1.0f;
                        break;
                    }
                    float _2347 = (0.5f + (0.5f * _54_m6[_2232].y)) - abs(_54_m6[_2232].x);
                    float _2348 = _54_m6[_2232].y - _2347;
                    float _2355 = abs(max((1.0f - abs(_2347)) - abs(_2348), 0.00048828125f));
                    float3 _2359 = normalize(float3(_2347, _2348, (_54_m6[_2232].x >= 0.0f) ? _2355 : (-_2355)));
                    float3 _2360 = _54_m6[_2229].xyz - _432;
                    float _2361 = dot(_2360, _2360);
                    float3 _2363 = _2360 * rsqrt(_2361);
                    int _2366 = int(_54_m6[_2244].w);
                    float3 _2368 = (_2359 * _54_m6[_2232].z) * 0.5f;
                    float3 _2369 = _2360 - _2368;
                    float3 _2370 = _2360 + _2368;
                    bool _2373 = (uint(_54_m6[_2226].w) & 1u) == 0u;
                    bool _2376 = _2373 || ((_2248 & 2u) != 0u);
                    bool _2379 = (!_2373) && (_54_m6[_2232].z > 0.0f);
                    float _2391;
                    if (_2379)
                    {
                        _2391 = 1.0f / ((((length(_2369) * length(_2370)) + dot(_2369, _2370)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2391 = 1.0f;
                    }
                    float _2413;
                    if (_54_m6[_2241].w < 0.0f)
                    {
                        float _2407 = _2361 * (_54_m6[_2229].w * _54_m6[_2229].w);
                        float _2410 = clamp(1.0f - (_2407 * _2407), 0.0f, 1.0f);
                        _2413 = lerp(1.0f / (_2361 + 1.0f), _2391, float(_2379)) * (_2410 * _2410);
                    }
                    else
                    {
                        float3 _2396 = _2360 * _54_m6[_2229].w;
                        _2413 = _2391 * pow(1.0f - clamp(dot(_2396, _2396), 0.0f, 1.0f), _54_m6[_2241].w);
                    }
                    float _2419 = clamp((dot(_2363, -_2359) - _54_m6[_2232].z) * _54_m6[_2232].w, 0.0f, 1.0f);
                    float _2423 = _2413 * lerp(1.0f, _2419 * _2419, float(_2373));
                    float _2523;
                    if ((!_2379) && (_2366 >= 0))
                    {
                        uint _2429 = uint(_2366);
                        float2 _2516;
                        [branch]
                        if (_2373)
                        {
                            float4 _2506 = mul(_74_m1[_2429], _436);
                            _2516 = _74_m0[_2429].xy + (clamp(_2506.xy / _2506.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_2429].zw);
                        }
                        else
                        {
                            float3 _2443 = mul(float4(-_2360, 0.0f), _74_m1[_2429]).xyz;
                            float3 _378 = _2443;
                            float3 _377 = _2443;
                            float3 _376 = abs(_2443);
                            uint _2452 = uint(int(_376.y > _376.x));
                            uint _2458 = (_376.z > _376[_2452]) ? 2u : _2452;
                            uint _2464 = (_2458 * 2u) + uint(_377[_2458] < 0.0f);
                            float _2468 = abs(_378[_2464 / 2u]);
                            float _2488 = 0.5f - (0.000244140625f / _74_m0[_2429].w);
                            _2516 = _74_m0[_2429].xy + (clamp(float2((float(_2464) + ((((_378[uint(_349[_2464].x)] * _350[_2464].x) / _2468) * _2488) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_378[uint(_349[_2464].y)] * _350[_2464].y) / _2468) * _2488)), 0.0f.xx, 1.0f.xx) * _74_m0[_2429].zw);
                        }
                        _2523 = _2423 * _72.SampleLevel(_24, _2516, 0.0f).x;
                    }
                    else
                    {
                        _2523 = _2423;
                    }
                    float _2812;
                    if (_2523 > 0.0f)
                    {
                        int _2576;
                        if (_2376)
                        {
                            _2576 = int(_54_m6[_2235].x);
                        }
                        else
                        {
                            uint _2531 = asuint(_54_m6[_2232].w);
                            uint _2533 = asuint(_54_m6[_2235].x);
                            float3 _2534 = _432 - _54_m6[_2229].xyz;
                            float3 _2535 = abs(_2534);
                            float _2536 = _2535.x;
                            float _2537 = _2535.y;
                            float _2539 = _2535.z;
                            int _2571;
                            if ((_2536 > _2537) && (_2536 > _2539))
                            {
                                _2571 = int((_2534.x > 0.0f) ? (_2531 >> 24u) : ((_2531 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2563;
                                if (_2537 > _2539)
                                {
                                    _2563 = int((_2534.y > 0.0f) ? ((_2531 >> 8u) & 255u) : (_2531 & 255u));
                                }
                                else
                                {
                                    _2563 = int((_2534.z > 0.0f) ? ((_2533 >> 8u) & 255u) : (_2533 & 255u));
                                }
                                _2571 = _2563;
                            }
                            _2576 = (_2571 < 80) ? _2571 : (-1);
                        }
                        float3 _2586 = (_432 - ((-_2363) * _56_m11[_2576].x)) + (_580 * (_56_m11[_2576].y * 5.0f));
                        float4 _2593 = mul(_56_m10[_2576], float4(_2586, 1.0f));
                        float _2594 = _2593.w;
                        float3 _2597 = _2593.xyz / _2594.xxx;
                        float2 _2598 = _2597.xy;
                        float3 _2606 = _2597.xyz;
                        bool3 _2607 = bool3(_2606.x <= 0.0f.xxx.x, _2606.y <= 0.0f.xxx.y, _2606.z <= 0.0f.xxx.z);
                        bool3 _2608 = bool3(_2606.x >= 1.0f.xxx.x, _2606.y >= 1.0f.xxx.y, _2606.z >= 1.0f.xxx.z);
                        float _2611 = _2597.z;
                        float2 _2622 = ((_2598 * (_56_m12[_2576].zw - _56_m12[_2576].xy)) + _56_m12[_2576].xy).xy * _56_m13.zw;
                        float2 _2624 = floor(_2622 + 0.5f.xx);
                        float2 _2625 = _2622 - _2624;
                        float _2626 = _2625.x;
                        float _2627 = _2626 + 0.5f;
                        float _2628 = _2627 * _2627;
                        float _2631 = 1.0f - _2626;
                        float _2632 = min(_2626, 0.0f);
                        float _2635 = _2626 + 1.0f;
                        float _2636 = max(_2626, 0.0f);
                        float _2647 = _2625.y;
                        float _2648 = _2647 + 0.5f;
                        float _2649 = _2648 * _2648;
                        float _2652 = 1.0f - _2647;
                        float _2653 = min(_2647, 0.0f);
                        float _2656 = _2647 + 1.0f;
                        float _2657 = max(_2647, 0.0f);
                        float3 _2669 = float3(0.1599999964237213134765625f * _2631, 0.1599999964237213134765625f * ((_2635 - (_2636 * _2636)) + 1.0f), _2628 * 0.07999999821186065673828125f);
                        float3 _2670 = float3(0.1599999964237213134765625f * ((_2628 * 0.5f) - _2626), 0.1599999964237213134765625f * ((_2631 - (_2632 * _2632)) + 1.0f), 0.1599999964237213134765625f * _2635) + _2669;
                        float3 _2672 = float3(0.1599999964237213134765625f * _2652, 0.1599999964237213134765625f * ((_2656 - (_2657 * _2657)) + 1.0f), _2649 * 0.07999999821186065673828125f);
                        float3 _2673 = float3(0.1599999964237213134765625f * ((_2649 * 0.5f) - _2647), 0.1599999964237213134765625f * ((_2652 - (_2653 * _2653)) + 1.0f), 0.1599999964237213134765625f * _2656) + _2672;
                        float3 _2679 = ((_2669 / _2670) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                        float3 _2681 = ((_2672 / _2673) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                        float2 _2683 = _2624 * _56_m13.xy;
                        float _2684 = _2679.x;
                        float _2685 = _2681.x;
                        float _2688 = _2679.y;
                        float _2691 = _2679.z;
                        float _2694 = _2681.y;
                        float _2701 = _2681.z;
                        float _2708 = _2670.x;
                        float _2709 = _2673.x;
                        float _2711 = _2670.y;
                        float _2713 = _2670.z;
                        float _2715 = _2673.y;
                        float _2719 = _2673.z;
                        float _2777 = (((((((_2708 * _2709) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2684, _2685), _368).xy, _2611)) + ((_2711 * _2709) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2688, _2685), _368).xy, _2611))) + ((_2713 * _2709) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2691, _2685), _368).xy, _2611))) + ((_2708 * _2715) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2684, _2694), _368).xy, _2611))) + ((_2711 * _2715) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2688, _2694), _368).xy, _2611))) + ((_2713 * _2715) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2691, _2694), _368).xy, _2611))) + ((_2708 * _2719) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2684, _2701), _368).xy, _2611));
                        float2 _2798 = min(_2598, 1.0f.xx - _2598);
                        _2812 = (_2576 >= 0) ? lerp(1.0f, (any(bool3(_2607.x || _2608.x, _2607.y || _2608.y, _2607.z || _2608.z)) || ((asuint(_2611) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2777 + ((_2711 * _2719) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2688, _2701), _368).xy, _2611))) + ((_2713 * _2719) * _58.SampleCmpLevelZero(_27, float3(_2683 + float2(_2691, _2701), _368).xy, _2611))), _2376 ? min(_56_m11[_2576].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_2576].z - _2594) * 0.25f, min(_2798.x, _2798.y)))) : _56_m11[_2576].w) : 1.0f;
                    }
                    else
                    {
                        _2812 = 1.0f;
                    }
                    _2813 = _2812;
                    break;
                } while(false);
                _3438 = _2189 * _2813;
                _3439 = 0.0f.xxx;
            }
            _2211 = _3438;
            _2214 = _2213 + _3439;
        }
        _2186 = _2185 + _2213;
    }
    float3 _3449 = ((((float3(_1181, _1186, _1191) * (_720 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _525.z, _47_m4)) * _18_m22.x) + (((_1501 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * ((_724 * _738.x) + (clamp(50.0f * _724.y, 0.0f, 1.0f) * _738.y).xxx)) * 1.0f)) + lerp((_2160.xyz + ((_2185 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2188)).xyz, (_666.xyz * (_47_m54.xyz * _47_m52)).xyz, clamp((1.0f - _550) / max(1.0f - _47_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3450 = float4(_3449.x, _3449.y, _3449.z, _370.w);
    _3450.w = _550;
    float _3467 = _432.y * _18_m46.w;
    float _3472 = max(0.00999999977648258209228515625f, _3467 + _18_m47.w);
    float3 _3486 = exp(_18_m45.xyz * ((-max(0.0f, (_470 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3472)) / _3472) * exp(_3467 + _18_m48.w))));
    float _3489 = dot(_607, _18_m44.xyz);
    float _3495 = _18_m45.w * _18_m45.w;
    float _3499 = (1.0f + _3495) - ((2.0f * _18_m45.w) * _3489);
    float3 _3829;
    float _3830;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3657 = (uint3(int3(int(_774.x), int(_774.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3658 = _3657.y;
        uint _3659 = _3657.z;
        uint _3662 = _3657.x + (_3658 * _3659);
        uint _3664 = _3658 + (_3659 * _3662);
        uint _3666 = _3659 + (_3662 * _3664);
        uint _3668 = _3662 + (_3664 * _3666);
        float _3690 = dot(_607, -_16_m0[2].xyz);
        float3 _3700 = _432 - _16_m11.xyz;
        float _3702 = (_18_m55.w * ((_3690 > 5.9604644775390625e-08f) ? (1.0f / _3690) : 0.0f)) * (1.0f / _470);
        float _3703 = _3700.y;
        float _3704 = _3702 * _3703;
        float _3706 = _16_m11.y + _3704;
        float _3707 = _3703 - _3704;
        float _3709 = (1.0f - _3702) * _470;
        float _3723 = max(-127.0f, _18_m49.z * _3707);
        float _3747 = max(-127.0f, _18_m52.x * _3707);
        float _3758 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3706 - _18_m49.x)))) * ((abs(_3723) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3723)) / _3723) : (0.693147182464599609375f - (0.2402265071868896484375f * _3723)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3706 - _18_m52.z)))) * ((abs(_3747) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3747)) / _3747) : (0.693147182464599609375f - (0.2402265071868896484375f * _3747))));
        float _3780 = clamp((_470 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3783 = clamp((max(clamp(exp2(-(_3758 * _3709)), 0.0f, 1.0f), _18_m51.w) + clamp((_470 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3780, 0.0f, 1.0f);
        float4 _3823 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_24, float3((_1210 + ((((float3(uint3(_3668, _3664 + (_3666 * _3668), _371) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_775 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_775 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3829 = _3823.xyz + (((_18_m51.xyz * (1.0f - _3783)) + (((_18_m54.xyz * pow(clamp(dot(_469, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3758 * max(_3709 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3780))) * _3823.w);
        _3830 = _3823.w * _3783;
    }
    else
    {
        float3 _3529 = _432 - _16_m11.xyz;
        float _3531 = _3529.y;
        float _3545 = max(-127.0f, _18_m49.z * _3531);
        float _3569 = max(-127.0f, _18_m52.x * _3531);
        float _3580 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3545) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3545)) / _3545) : (0.693147182464599609375f - (0.2402265071868896484375f * _3545)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3569) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3569)) / _3569) : (0.693147182464599609375f - (0.2402265071868896484375f * _3569))));
        float _3602 = clamp((_470 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3605 = clamp((max(clamp(exp2(-(_3580 * _470)), 0.0f, 1.0f), _18_m51.w) + clamp((_470 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3602, 0.0f, 1.0f);
        _3829 = (_18_m51.xyz * (1.0f - _3605)) + (((_18_m54.xyz * pow(clamp(dot(_469, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3580 * max(_470 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3602));
        _3830 = _3605;
    }
    float3 _3836 = ((_3450.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3486 * _3830)) : (_3486 * _3830))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3489 * _3489)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3495) / max((12.56637096405029296875f * _3499) * sqrt(_3499), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3486)) * _3830 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3829 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    float3 _3846 = lerp(dot(_3836, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3836, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3856 = min(lerp(((sqrt(sqrt(abs(_692 * 0.5f))) * float2(int2(sign(_692)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _679.xx), 1.0f.xx);
    float4 _3857 = float4(_3856.x, _3856.y, _370.z, _370.w);
    _3857.z = float(clamp(max(dot(_3846.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _550, _550) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3857.w = lerp(0.0f, 0.699999988079071044921875f, _679);
    float3 renodx_output_color = float3(_3846.x, _3846.y, _3846.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3450.w);
    _14 = _3857;
    if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    _11 = stage_input._11;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._13 = _13;
    stage_output._14 = _14;
    return stage_output;
}
