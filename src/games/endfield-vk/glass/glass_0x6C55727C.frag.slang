#include "../shared.h"

// Vulkan shader 0x6C55727C, decompiled from the matching game shader dump.

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

struct _47
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

static float _387 = 0.0f;
static float4 _389 = 0.0f.xxxx;
static uint _390 = 0u;

static const float4 _367[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _368[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _369[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]] cbuffer _15_16 : register(b12)
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

[[vk::binding(16, 0)]] cbuffer _17_18 : register(b16)
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

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _33 : register(t50);
[[vk::binding(8, 1)]] cbuffer _44_45 : register(b8)
{
    float _45_m0 : packoffset(c0);
    float _45_m1 : packoffset(c0.y);
    float _45_m2 : packoffset(c0.z);
    float _45_m3 : packoffset(c0.w);
    float _45_m4 : packoffset(c1);
    float _45_m5 : packoffset(c1.y);
    float _45_m6 : packoffset(c1.z);
    float _45_m7 : packoffset(c1.w);
    float _45_m8 : packoffset(c2);
    float _45_m9 : packoffset(c2.y);
    float _45_m10 : packoffset(c2.z);
    float _45_m11 : packoffset(c2.w);
    float _45_m12 : packoffset(c3);
    float _45_m13 : packoffset(c3.y);
    float _45_m14 : packoffset(c3.z);
    float _45_m15 : packoffset(c3.w);
    float _45_m16 : packoffset(c4);
    float _45_m17 : packoffset(c4.y);
    float _45_m18 : packoffset(c4.z);
    float _45_m19 : packoffset(c4.w);
    float _45_m20 : packoffset(c5);
    float _45_m21 : packoffset(c5.y);
    float _45_m22 : packoffset(c5.z);
    float _45_m23 : packoffset(c5.w);
    float _45_m24 : packoffset(c6);
    float _45_m25 : packoffset(c6.y);
    float _45_m26 : packoffset(c6.z);
    float _45_m27 : packoffset(c6.w);
    float _45_m28 : packoffset(c7);
    float _45_m29 : packoffset(c7.y);
    float _45_m30 : packoffset(c7.z);
    float _45_m31 : packoffset(c7.w);
    float4 _45_m32 : packoffset(c8);
    float4 _45_m33 : packoffset(c9);
    float4 _45_m34 : packoffset(c10);
    float4 _45_m35 : packoffset(c11);
    float4 _45_m36 : packoffset(c12);
    float4 _45_m37 : packoffset(c13);
    float4 _45_m38 : packoffset(c14);
    float4 _45_m39 : packoffset(c15);
    float4 _45_m40 : packoffset(c16);
    float4 _45_m41 : packoffset(c17);
    float4 _45_m42 : packoffset(c18);
    float4 _45_m43 : packoffset(c19);
    float4 _45_m44 : packoffset(c20);
    float4 _45_m45 : packoffset(c21);
    float _45_m46 : packoffset(c22);
    float _45_m47 : packoffset(c22.y);
    float _45_m48 : packoffset(c22.z);
    float _45_m49 : packoffset(c22.w);
    float _45_m50 : packoffset(c23);
    float _45_m51 : packoffset(c23.y);
    float _45_m52 : packoffset(c23.z);
    float _45_m53 : packoffset(c23.w);
    float4 _45_m54 : packoffset(c24);
    float _45_m55 : packoffset(c25);
    float _45_m56 : packoffset(c25.y);
    float _45_m57 : packoffset(c25.z);
    float _45_m58 : packoffset(c25.w);
    float4 _45_m59 : packoffset(c26);
    float4 _45_m60 : packoffset(c27);
    float4 _45_m61 : packoffset(c28);
    float4 _45_m62 : packoffset(c29);
    float4 _45_m63 : packoffset(c30);
    float _45_m64 : packoffset(c31);
    float _45_m65 : packoffset(c31.y);
    float _45_m66 : packoffset(c31.z);
    float _45_m67 : packoffset(c31.w);
    float _45_m68 : packoffset(c32);
    float _45_m69 : packoffset(c32.y);
    float _45_m70 : packoffset(c32.z);
    float _45_m71 : packoffset(c32.w);
    float4 _45_m72 : packoffset(c33);
    float4 _45_m73 : packoffset(c34);
    float _45_m74 : packoffset(c35);
    float _45_m75 : packoffset(c35.y);
    float _45_m76 : packoffset(c35.z);
    float _45_m77 : packoffset(c35.w);
    float _45_m78 : packoffset(c36);
    float _45_m79 : packoffset(c36.y);
    float _45_m80 : packoffset(c36.z);
    float _45_m81 : packoffset(c36.w);
    float _45_m82 : packoffset(c37);
    float _45_m83 : packoffset(c37.y);
    float _45_m84 : packoffset(c37.z);
    float _45_m85 : packoffset(c37.w);
    float4 _45_m86 : packoffset(c38);
    float _45_m87 : packoffset(c39);
    float _45_m88 : packoffset(c39.y);
    float _45_m89 : packoffset(c39.z);
    float _45_m90 : packoffset(c39.w);
};

[[vk::binding(17, 0)]] cbuffer _46_48 : register(b17)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    _47 _48_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]] cbuffer _51_52 : register(b47)
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

[[vk::binding(14, 0)]] cbuffer _53_54 : register(b14)
{
    float4 _54_m0 : packoffset(c0);
    float4 _54_m1 : packoffset(c1);
    float4 _54_m2 : packoffset(c2);
    float4 _54_m3 : packoffset(c3);
    float4 _54_m4 : packoffset(c4);
    uint4 _54_m5 : packoffset(c5);
    float4 _54_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]] cbuffer _55_56 : register(b15)
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

[[vk::binding(49, 0)]] cbuffer _71_72 : register(b49)
{
    float4 _72_m0[32] : packoffset(c0);
    column_major float4x4 _72_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _29 : register(t45);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25);
[[vk::binding(7, 1)]] Texture2D<float4> _34 : register(t7);
[[vk::binding(3, 1)]] SamplerState _35 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _36 : register(t5);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1);
[[vk::binding(6, 1)]] Texture2D<float4> _38 : register(t6);
[[vk::binding(2, 1)]] SamplerState _39 : register(s2);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22);
[[vk::binding(4, 1)]] Texture2D<float4> _41 : register(t4);
[[vk::binding(0, 1)]] SamplerState _42 : register(s0);
[[vk::binding(20, 0)]] SamplerState _43 : register(s20);
[[vk::binding(35, 0)]] Texture3D<float4> _50 : register(t35);
[[vk::binding(9, 0)]] Texture2D<float4> _57 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _58 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _59 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _60 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _61 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _63 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _64 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _65 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _66 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _67 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _68 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _69 : register(t29);
[[vk::binding(28, 0)]] Texture2D<float4> _70 : register(t28);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _4;
static float2 _5;
static float3 _6;
static float4 _7;
static float4 _8;
static float3 _9;
static float3 _10;
static uint _11;
static float4 _13;
static float4 _14;

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
    float2 _416 = gl_FragCoord.xy * _18_m0.zw;
    float2 _419 = (_416 * 2.0f) - 1.0f.xx;
    float4 _422 = float4(_419, gl_FragCoord.z, 1.0f);
    _422.y = -_419.y;
    float4 _425 = mul(_16_m6, _422);
    float3 _429 = _425.xyz / _425.w.xxx;
    float4 _433 = float4(_429, 1.0f);
    float _436 = abs(mul(_16_m0, _433).z);
    float _440 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _462 = 0.0f.xxx;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _462 = _16_m11.xyz - _429;
            break;
        }
        else
        {
            _462 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _463 = dot(_462, _462);
    float _465 = rsqrt(max(_463, 9.9999999392252902907785028219223e-09f));
    float3 _466 = _462 * _465;
    float _467 = _463 * _465;
    bool _468 = gl_FrontFacing ? true : false;
    float4 _500 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
    float _502 = _500.w;
    float4 _505 = _36.SampleBias(_37, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
    float2 _508 = (_505.xy * 2.0f.xx) - 1.0f.xx;
    float2 _509 = abs(_508);
    bool2 _510 = bool2(_509.x < 0.01200000010430812835693359375f.xx.x, _509.y < 0.01200000010430812835693359375f.xx.y);
    float2 _511 = float2(_510.x ? 0.0f.xx.x : _508.x, _510.y ? 0.0f.xx.y : _508.y);
    float2 _512 = _511 * _45_m0;
    float _519 = _505.z;
    float _520 = _505.w;
    float _538 = lerp(_502, _520, _45_m6) * _45_m32.w;
    float _549 = lerp(_45_m2, _45_m3, _519);
    float _559 = lerp(_502, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
    float4 _611 = _38.SampleBias(_39, ((lerp(_4, _5, _45_m55.xx) * _45_m63.xy) + _45_m63.zw) + (_45_m62.xy * _18_m75.w), _18_m16);
    float _621 = _611.x;
    float _628 = (_21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _621)) * _45_m48;
    float3 _633 = lerp(clamp((_500.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx) * ((1.0f - _628).xxx + (_21_m0[_11]._m9.xyz * _628));
    float3 _656 = normalize(((_7.xyz * _512.x) + ((cross(_6, float4(_7.xyz, _440).xyz) * _440) * _512.y)) + (_6 * (sqrt(clamp(1.0f - dot(_511, _511), 0.0f, 1.0f)) * (_468 ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _673 = clamp((1.0f - lerp(lerp(_502, _519, clamp(_45_m79, 0.0f, 1.0f)), _520, clamp(_45_m79 - 1.0f, 0.0f, 1.0f))) + _45_m80, 0.0f, 1.0f);
    float3 _677 = lerp(_656, _6, _45_m82.xxx);
    bool3 _692 = _468.xxx;
    float3 _693 = -_677;
    float _698 = pow(clamp(dot(_466, float3(_692.x ? _677.x : _693.x, _692.y ? _677.y : _693.y, _692.z ? _677.z : _693.z)) + _45_m74, 0.0f, 1.0f), _45_m77);
    float _700 = lerp(1.0f - _698, _698, _45_m78);
    float _719 = lerp(_538, _538 * _8.x, _45_m87) * ((1.0f - _45_m75) + (_700 * _45_m75));
    float _743 = dot(_656, _466);
    float3 _744 = -_466;
    float4 _764 = _41.SampleBias(_42, (_4 * _45_m73.xy) + _45_m73.zw, _18_m16);
    float2 _772 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_744, _656, _45_m66) * lerp(_45_m67, _45_m67 / max(gl_FragCoord.z * _743, 0.5f), _45_m68)).xy, ((_764 * 2.0f) - 1.0f.xxxx).xy * _45_m65, _45_m64.xx).xy;
    float2 _773 = _416 + _772;
    float2 _775 = _416 + (_772 * 0.25f);
    float4 _803 = _40.SampleBias(_43, lerp(lerp(_416, _775, step(_436, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _775, _18_m16).x) + _18_m2.w)).xx), _773, step(_436, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _773, _18_m16).x) + _18_m2.w)).xx), _18_m16);
    float _821 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _834 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _834.y = -_834.y;
    float _860 = 0.07999999821186065673828125f * _45_m1;
    float3 _861 = _633 * _559;
    float3 _862 = _633 - _861;
    float3 _866 = (_860 - (_860 * _559)).xxx + _861;
    float4 _869 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _549) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _870 = _869.x;
    float2 _880 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_870 * _870, exp2((-9.27999973297119140625f) * max(0.0f, _743))) * _870) + _869.y)) + _869.zw;
    uint2 _916 = uint2(0u, 0u);
    float _917 = 0.0f;
    if (_18_m24.y == 1.0f)
    {
        float4 _897 = mul(_18_m135, _433);
        float4 _900 = _897;
        _900.y = -_897.y;
        float4 _903 = _900 * (1.0f / _897.w);
        _916 = uint2(clamp(((_903.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _917 = 1.0f / ((_18_m2.z * _903.z) + _18_m2.w);
    }
    else
    {
        _916 = uint2(gl_FragCoord.xy);
        _917 = _436;
    }
    float3 _919 = _429 + (_656 * 0.25f);
    float3 _929 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _938 = _919 - (_18_m105.xyz + (_929 * (-_18_m107.w)));
    float _952 = max(clamp((max(abs(_938.x), abs(_938.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_938.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1254 = 0.0f.xxxx;
    float4 _1255 = 0.0f.xxxx;
    float4 _1256 = 0.0f.xxxx;
    float _1257 = 0.0f;
    float _1258 = 0.0f;
    if ((_18_m105.w != 0.0f) && (_952 < 1.0f))
    {
        float3 _965 = _919 - (_18_m105.xyz + (_929 * (-_18_m107.y)));
        float _979 = max(clamp((max(abs(_965.x), abs(_965.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_965.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1055 = 0.0f;
        float4 _1056 = 0.0f.xxxx;
        float4 _1057 = 0.0f.xxxx;
        float4 _1058 = 0.0f.xxxx;
        if (_979 < 1.0f)
        {
            float3 _988 = ((_919 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _990 = _988 - floor(_988);
            float4 _994 = _64.SampleLevel(_25, _990, 0.0f);
            float _995 = 1.0f - _979;
            float _999 = _18_m106.y * 0.5f;
            float _1004 = _990.x;
            float _1005 = clamp(_990.y, _999, 1.0f - _999) * 0.3333333432674407958984375f;
            float _1006 = _990.z;
            float4 _1009 = _65.SampleLevel(_24, float3(_1004, _1005, _1006), 0.0f);
            float _1025 = _994.x;
            float _1035 = _994.y;
            float _1045 = _994.z;
            _1055 = _952 + (_1009.w * _995);
            _1056 = float4(((_65.SampleLevel(_24, float3(_1004, _1005 + 0.666666686534881591796875f, _1006), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1045, _1045) * _995;
            _1057 = float4(((_65.SampleLevel(_24, float3(_1004, _1005 + 0.3333333432674407958984375f, _1006), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1035, _1035) * _995;
            _1058 = float4(((_1009.xyz * 4.0f) - 2.0f.xxx) * _1025, _1025) * _995;
        }
        else
        {
            _1055 = _952;
            _1056 = 0.0f.xxxx;
            _1057 = 0.0f.xxxx;
            _1058 = 0.0f.xxxx;
        }
        float3 _1064 = _919 - (_18_m105.xyz + (_929 * (-_18_m107.z)));
        float _1078 = max(clamp((max(abs(_1064.x), abs(_1064.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1064.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1158 = 0.0f;
        float4 _1159 = 0.0f.xxxx;
        float4 _1160 = 0.0f.xxxx;
        float4 _1161 = 0.0f.xxxx;
        if (_1078 < 1.0f)
        {
            float3 _1087 = ((_919 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1089 = _1087 - floor(_1087);
            float4 _1093 = _66.SampleLevel(_25, _1089, 0.0f);
            float _1095 = _979 * (1.0f - _1078);
            float _1099 = _18_m106.y * 0.5f;
            float _1104 = _1089.x;
            float _1105 = clamp(_1089.y, _1099, 1.0f - _1099) * 0.3333333432674407958984375f;
            float _1106 = _1089.z;
            float4 _1109 = _67.SampleLevel(_24, float3(_1104, _1105, _1106), 0.0f);
            float _1125 = _1093.x;
            float _1136 = _1093.y;
            float _1147 = _1093.z;
            _1158 = _1055 + (_1109.w * _1095);
            _1159 = _1056 + (float4(((_67.SampleLevel(_24, float3(_1104, _1105 + 0.666666686534881591796875f, _1106), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1147, _1147) * _1095);
            _1160 = _1057 + (float4(((_67.SampleLevel(_24, float3(_1104, _1105 + 0.3333333432674407958984375f, _1106), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1136, _1136) * _1095);
            _1161 = _1058 + (float4(((_1109.xyz * 4.0f) - 2.0f.xxx) * _1125, _1125) * _1095);
        }
        else
        {
            _1158 = _1055;
            _1159 = _1056;
            _1160 = _1057;
            _1161 = _1058;
        }
        float4 _1244 = 0.0f.xxxx;
        float4 _1245 = 0.0f.xxxx;
        float4 _1246 = 0.0f.xxxx;
        float _1247 = 0.0f;
        if (_1078 > 0.0f)
        {
            float3 _1170 = ((_919 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1173 = _18_m106.xyz * 0.5f;
            float3 _1175 = clamp(_1170 - floor(_1170), _1173, 1.0f.xxx - _1173);
            float4 _1179 = _68.SampleLevel(_25, _1175, 0.0f);
            float _1181 = _1078 * (1.0f - _952);
            float _1185 = _18_m106.y * 0.5f;
            float _1190 = _1175.x;
            float _1191 = clamp(_1175.y, _1185, 1.0f - _1185) * 0.3333333432674407958984375f;
            float _1192 = _1175.z;
            float4 _1195 = _69.SampleLevel(_24, float3(_1190, _1191, _1192), 0.0f);
            float _1211 = _1179.x;
            float _1222 = _1179.y;
            float _1233 = _1179.z;
            _1244 = _1159 + (float4(((_69.SampleLevel(_24, float3(_1190, _1191 + 0.666666686534881591796875f, _1192), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1233, _1233) * _1181);
            _1245 = _1160 + (float4(((_69.SampleLevel(_24, float3(_1190, _1191 + 0.3333333432674407958984375f, _1192), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1222, _1222) * _1181);
            _1246 = _1161 + (float4(((_1195.xyz * 4.0f) - 2.0f.xxx) * _1211, _1211) * _1181);
            _1247 = _1158 + (_1195.w * _1181);
        }
        else
        {
            _1244 = _1159;
            _1245 = _1160;
            _1246 = _1161;
            _1247 = _1158;
        }
        float _1250 = clamp((_1247 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1254 = _1244;
        _1255 = _1245;
        _1256 = _1246;
        _1257 = _1250 - _952;
        _1258 = (_1250 + _952) * 0.5f;
    }
    else
    {
        _1254 = 0.0f.xxxx;
        _1255 = 0.0f.xxxx;
        _1256 = 0.0f.xxxx;
        _1257 = 0.0f;
        _1258 = 1.0f;
    }
    float4 _1278 = _1256 + float4(_18_m108.x * _1258, (_18_m108.y * _1258) + ((_18_m108.w * _1257) * 0.5f), _18_m108.z * _1258, (_18_m108.w * _1258) + ((_18_m108.y * _1257) * 0.375f));
    float4 _1298 = _1255 + float4(_18_m109.x * _1258, (_18_m109.y * _1258) + ((_18_m109.w * _1257) * 0.5f), _18_m109.z * _1258, (_18_m109.w * _1258) + ((_18_m109.y * _1257) * 0.375f));
    float4 _1318 = _1254 + float4(_18_m110.x * _1258, (_18_m110.y * _1258) + ((_18_m110.w * _1257) * 0.5f), _18_m110.z * _1258, (_18_m110.w * _1258) + ((_18_m110.y * _1257) * 0.375f));
    float _1323 = max(0.0f, dot(_1278.xyz, _656) + _1278.w);
    float _1328 = max(0.0f, dot(_1298.xyz, _656) + _1298.w);
    float _1333 = max(0.0f, dot(_1318.xyz, _656) + _1318.w);
    float3 _1343 = reflect(_744, _656);
    float _1351 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_549, 0.001000000047497451305389404296875f))));
    float2 _1352 = float2(_916);
    float2 _1356 = floor(_1352 * _48_m0.w);
    float _1373 = floor(_917 - _48_m2.y);
    float _1377 = clamp(_1373, 0.0f, _48_m1.x - 1.0f);
    uint _1387 = (_1373 <= _1377) ? (_33.Load(uint(_18_m21.z + int(_1356.x + (_1356.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1377)) * 4 + 0)) : 0u;
    float _1390 = dot(float4(_1323, _1328, _1333, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1392 = 0.0f.xxx;
    float _1395 = 0.0f;
    uint _1397 = 0u;
    _1392 = 0.0f.xxx;
    _1395 = 1.0f;
    _1397 = _1387;
    uint _1398 = 0u;
    float3 _1393 = 0.0f.xxx;
    float _1396 = 0.0f;
    bool _1400 = false;
    [loop]
    for (;;)
    {
        _1400 = _1395 > 0.00999999977648258209228515625f;
        if ((_1397 != 0u) && _1400)
        {
            uint _1404 = firstbitlow(_1397);
            _1398 = _1397 ^ (1u << (_1404 & 31u));
            float3 _1424 = float3(dot(_48_m4[_1404]._m2, _433), dot(_48_m4[_1404]._m3, _433), dot(_48_m4[_1404]._m4, _433));
            float3 _1425 = abs(_1424);
            if (all(bool3(_1425.x <= _48_m4[_1404]._m1.xyz.x, _1425.y <= _48_m4[_1404]._m1.xyz.y, _1425.z <= _48_m4[_1404]._m1.xyz.z)))
            {
                float3 _1434 = _48_m4[_1404]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1436 = _1425 * 0.100000001490116119384765625f;
                float3 _1437 = _1436 * _1436;
                float3 _1440 = (_48_m4[_1404]._m1.xyz - _1425) * _48_m4[_1404]._m5.xyz;
                float3 _1488 = 0.0f.xxx;
                [branch]
                if (_48_m4[_1404]._m6.x == 1.0f)
                {
                    float3 _1473 = float3(dot(_48_m4[_1404]._m2.xyz, _1343), dot(_48_m4[_1404]._m3.xyz, _1343), dot(_48_m4[_1404]._m4.xyz, _1343));
                    float3 _1475 = (_48_m4[_1404]._m1.xyz - _1424) / _1473;
                    float3 _1478 = ((-_48_m4[_1404]._m1.xyz) - _1424) / _1473;
                    bool3 _1479 = bool3(_1473.x > 0.0f.xxx.x, _1473.y > 0.0f.xxx.y, _1473.z > 0.0f.xxx.z);
                    float3 _1480 = float3(_1479.x ? _1475.x : _1478.x, _1479.y ? _1475.y : _1478.y, _1479.z ? _1475.z : _1478.z);
                    _1488 = _1424 + (_1473 * min(min(_1480.x, _1480.y), _1480.z));
                }
                else
                {
                    _1488 = _1343;
                }
                float3 _1489 = normalize(_1488);
                float3 _1492 = float3(int3(sign(_1489)));
                float3 _1495 = _1489 / dot(_1489, _1492).xxx;
                float3 _1509 = 0.0f.xxx;
                if (_1495.z < 0.0f)
                {
                    float3 _1500 = abs(_1495);
                    float2 _1507 = _1492.xy * float2(1.0f - _1500.y, 1.0f - _1500.x);
                    _1509 = float3(_1507.x, _1507.y, _1495.z);
                }
                else
                {
                    _1509 = _1495;
                }
                float _1534 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1404]._m0, float4(_656, 1.0f))));
                float _1547 = clamp((min(_1440.x, min(_1440.y, _1440.z)) * _48_m4[_1404]._m6.y) + ((((((_1434 * _1434).x - ((_1437.x + _1437.y) + _1437.z)) * _48_m4[_1404]._m5.x) * _48_m4[_1404]._m5.x) * (1.0f - _48_m4[_1404]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1404]._m6.w;
                _1393 = _1392 + ((((_31.SampleLevel(_26, float3((((_1509.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1404]._m1.w), _1351).xyz * _48_m4[_1404]._m5.w) * ((((((clamp(abs(_1390 / _1534), 0.0f, 1.0f) * 2.0f) + _1390) / (2.0f + _1534)) - 1.0f) * _18_m23.w) + 1.0f)) * _1547) * _1395);
                _1396 = _1395 * (1.0f - _1547);
            }
            else
            {
                _1393 = _1392;
                _1396 = _1395;
            }
            _1392 = _1393;
            _1395 = _1396;
            _1397 = _1398;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1616 = 0.0f.xxx;
    if (_1400)
    {
        float3 _1555 = normalize(_1343);
        float3 _1558 = float3(int3(sign(_1555)));
        float3 _1561 = _1555 / dot(_1555, _1558).xxx;
        float3 _1575 = 0.0f.xxx;
        if (_1561.z < 0.0f)
        {
            float3 _1566 = abs(_1561);
            float2 _1573 = _1558.xy * float2(1.0f - _1566.y, 1.0f - _1566.x);
            _1575 = float3(_1573.x, _1573.y, _1561.z);
        }
        else
        {
            _1575 = _1561;
        }
        float _1602 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_656, 1.0f))));
        _1616 = _1392 + ((_31.SampleLevel(_26, float3((((_1575.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1351).xyz * ((((((clamp(abs(_1390 / _1602), 0.0f, 1.0f) * 2.0f) + _1390) / (2.0f + _1602)) - 1.0f) * _18_m23.w) + 1.0f)) * _1395);
    }
    else
    {
        _1616 = _1392;
    }
    float2 _2135 = 0.0f.xx;
    do
    {
        if (_56_m7.w >= 0.9900000095367431640625f)
        {
            _2135 = float2(_56_m7.z, 1.0f);
            break;
        }
        int _1638 = int(_56_m7.x);
        bool3 _1640 = (_1638 == 2).xxx;
        float3 _1648 = _429 - float3(_1640.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1640.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1640.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
        float _1659 = max(clamp((_56_m6.w - dot(_1648, _1648)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
        float _1876 = 0.0f;
        bool _1877 = false;
        if (_1659 > 0.0f)
        {
            float _1874 = 0.0f;
            bool _1875 = false;
            if (_1638 > 0)
            {
                float3 _1666 = _429 - _56_m1[0].xyz;
                float3 _1670 = _429 - _56_m1[1].xyz;
                float3 _1674 = _429 - _56_m1[2].xyz;
                float3 _1678 = _429 - _56_m1[3].xyz;
                float4 _1683 = float4(dot(_1666, _1666), dot(_1670, _1670), dot(_1674, _1674), dot(_1678, _1678));
                float4 _1692 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
                float4 _1694 = float4(bool4(_1683.x < _1692.x, _1683.y < _1692.y, _1683.z < _1692.z, _1683.w < _1692.w));
                float3 _1698 = clamp(_1694.yzw - _1694.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1702 = clamp(4.0f - dot(float4(_1694.x, _1698.x, _1698.y, _1698.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1704 = clamp(_1702 + 1.0f, 0.0f, 3.0f);
                uint _1705 = uint(_1702);
                uint _1713 = uint(_1704);
                float _1719 = dot(_1683, _367[_1713]) / _56_m1[_1713].w;
                float _1736 = 0.0f;
                if (((_1704 > _1702) && (_1719 >= 0.0f)) && (_1719 <= 1.0f))
                {
                    _1736 = _1702 + step(frac(52.98291778564453125f * frac(dot(_1352 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1683, _367[_1705]) / _56_m1[_1705].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1736 = _1702;
                }
                float _1737 = clamp(_1736, 0.0f, 4.0f);
                float4 _1741 = mul(_56_m0[uint(_1737)], _433);
                float _1744 = _1741.z;
                float4 _1745 = float4(_1741.xy, _1744, _1737);
                float3 _1746 = _1745.xyz;
                bool3 _1747 = bool3(_1746.x <= 0.0f.xxx.x, _1746.y <= 0.0f.xxx.y, _1746.z <= 0.0f.xxx.z);
                bool3 _1748 = bool3(_1746.x >= 1.0f.xxx.x, _1746.y >= 1.0f.xxx.y, _1746.z >= 1.0f.xxx.z);
                bool _1754 = any(bool3(_1747.x || _1748.x, _1747.y || _1748.y, _1747.z || _1748.z)) || ((asuint(_1744) & 2147483647u) > 2139095040u);
                int _1755 = int(_1737);
                float2 _1772 = float4(_56_m3[_1755].xy + (_1745.xy * _56_m3[_1755].zw), _1744, _1737).xy * _56_m4.zw;
                float2 _1774 = floor(_1772 + 0.5f.xx);
                float2 _1775 = _1772 - _1774;
                float _1776 = _1775.x;
                float _1777 = _1776 + 0.5f;
                float _1779 = (_1777 * _1777) * 0.5f;
                float _1782 = min(_1776, 0.0f);
                float _1786 = max(_1776, 0.0f);
                float4 _1790 = float4(_1779 - _1776, (1.0f - _1776) - (_1782 * _1782), (_1776 + 1.0f) - (_1786 * _1786), _1779) * 0.44444000720977783203125f;
                float _1791 = _1775.y;
                float _1792 = _1791 + 0.5f;
                float _1794 = (_1792 * _1792) * 0.5f;
                float _1797 = min(_1791, 0.0f);
                float _1801 = max(_1791, 0.0f);
                float4 _1805 = float4(_1794 - _1791, (1.0f - _1791) - (_1797 * _1797), (_1791 + 1.0f) - (_1801 * _1801), _1794) * 0.44444000720977783203125f;
                float2 _1807 = _1790.yw;
                float2 _1808 = _1790.xz + _1807;
                float2 _1810 = _1805.yw;
                float2 _1811 = _1805.xz + _1810;
                float2 _1817 = ((_1807 / _1808) + float2(-1.5f, 0.5f)) * _56_m4.xx;
                float2 _1819 = ((_1810 / _1811) + float2(-1.5f, 0.5f)) * _56_m4.yy;
                float2 _1821 = _1774 * _56_m4.xy;
                float _1822 = _1817.x;
                float _1823 = _1819.x;
                float _1826 = _1817.y;
                float _1829 = _1819.y;
                float _1834 = _1808.x;
                float _1835 = _1811.x;
                float _1837 = _1808.y;
                float _1839 = _1811.y;
                _1874 = _1754 ? 1.0f : (((((_1834 * _1835) * _57.SampleCmpLevelZero(_27, float3(_1821 + float2(_1822, _1823), _387).xy, _1744)) + ((_1837 * _1835) * _57.SampleCmpLevelZero(_27, float3(_1821 + float2(_1826, _1823), _387).xy, _1744))) + ((_1834 * _1839) * _57.SampleCmpLevelZero(_27, float3(_1821 + float2(_1822, _1829), _387).xy, _1744))) + ((_1837 * _1839) * _57.SampleCmpLevelZero(_27, float3(_1821 + float2(_1826, _1829), _387).xy, _1744)));
                _1875 = _1754;
            }
            else
            {
                _1874 = 1.0f;
                _1875 = false;
            }
            _1876 = _1874;
            _1877 = _1875;
        }
        else
        {
            _1876 = 1.0f;
            _1877 = false;
        }
        float _2077 = 0.0f;
        float _2078 = 0.0f;
        if ((_1659 < 1.0f) || (_56_m8.x > 0.5f))
        {
            float _1888 = 1.0f - clamp(dot(_656, _54_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1905 = float4((_429 - (_54_m0.xyz * (_1888 * _56_m24.x))) + (_656 * (_1888 * _56_m24.y)), 1.0f);
            float4 _1906 = mul(_56_m23, _1905);
            float2 _1907 = _1906.xy;
            float _2075 = 0.0f;
            if (all(bool2(_1907.x > 0.0f.xx.x, _1907.y > 0.0f.xx.y)) && all(bool2(_1907.x < 1.0f.xx.x, _1907.y < 1.0f.xx.y)))
            {
                uint _1926 = clamp(uint((floor(_1906.y * _56_m25.z) + _1906.x) * _56_m25.y), 0u, 127u);
                uint _1930 = asuint(_56_m27[_1926].x);
                float2 _1931 = spvUnpackHalf2x16(_1930);
                float _1932 = _1931.x;
                float _2074 = 0.0f;
                if (_1932 >= 0.0f)
                {
                    float4x4 _1941 = _56_m22;
                    _1941[0].w = _56_m27[_1926].y;
                    _1941[1].w = _56_m27[_1926].z;
                    _1941[2].w = _56_m27[_1926].w;
                    float4 _1948 = mul(_1941, _1905);
                    float3 _1949 = _1948.xyz;
                    float _2073 = 0.0f;
                    if (all(bool3(_1949.x > 0.0f.xxx.x, _1949.y > 0.0f.xxx.y, _1949.z > 0.0f.xxx.z)) && all(bool3(_1949.x < 1.0f.xxx.x, _1949.y < 1.0f.xxx.y, _1949.z < 1.0f.xxx.z)))
                    {
                        float _1966 = _1948.z;
                        float2 _1972 = float4((_1948.xy * _56_m24.zw) + float2(_1932, spvUnpackHalf2x16(_1930 >> 16u).x), _1966, 1.0f).xy * _56_m26.zw;
                        float2 _1974 = floor(_1972 + 0.5f.xx);
                        float2 _1975 = _1972 - _1974;
                        float _1976 = _1975.x;
                        float _1977 = _1976 + 0.5f;
                        float _1979 = (_1977 * _1977) * 0.5f;
                        float _1982 = min(_1976, 0.0f);
                        float _1986 = max(_1976, 0.0f);
                        float4 _1990 = float4(_1979 - _1976, (1.0f - _1976) - (_1982 * _1982), (_1976 + 1.0f) - (_1986 * _1986), _1979) * 0.44444000720977783203125f;
                        float _1991 = _1975.y;
                        float _1992 = _1991 + 0.5f;
                        float _1994 = (_1992 * _1992) * 0.5f;
                        float _1997 = min(_1991, 0.0f);
                        float _2001 = max(_1991, 0.0f);
                        float4 _2005 = float4(_1994 - _1991, (1.0f - _1991) - (_1997 * _1997), (_1991 + 1.0f) - (_2001 * _2001), _1994) * 0.44444000720977783203125f;
                        float2 _2008 = _1990.xz + _1990.yw;
                        float2 _2011 = _2005.xz + _2005.yw;
                        float2 _2017 = ((_1990.yw / _2008) + float2(-1.5f, 0.5f)) * _56_m26.xx;
                        float2 _2019 = ((_2005.yw / _2011) + float2(-1.5f, 0.5f)) * _56_m26.yy;
                        float2 _2021 = _1974 * _56_m26.xy;
                        float _2022 = _2017.x;
                        float _2023 = _2019.x;
                        float2 _2025 = _2021 + float2(_2022, _2023);
                        float _2026 = _2017.y;
                        float2 _2028 = _2021 + float2(_2026, _2023);
                        float _2029 = _2019.y;
                        float2 _2031 = _2021 + float2(_2022, _2029);
                        float2 _2033 = _2021 + float2(_2026, _2029);
                        float _2034 = _2008.x;
                        float _2035 = _2011.x;
                        float _2037 = _2008.y;
                        float _2039 = _2011.y;
                        _2073 = ((((_2034 * _2035) * _60.SampleCmpLevelZero(_27, float3(_2025, _387).xy, _1966)) + ((_2037 * _2035) * _60.SampleCmpLevelZero(_27, float3(_2028, _387).xy, _1966))) + ((_2034 * _2039) * _60.SampleCmpLevelZero(_27, float3(_2031, _387).xy, _1966))) + ((_2037 * _2039) * _60.SampleCmpLevelZero(_27, float3(_2033, _387).xy, _1966));
                    }
                    else
                    {
                        _2073 = 1.0f;
                    }
                    _2074 = _2073;
                }
                else
                {
                    _2074 = 1.0f;
                }
                _2075 = _2074;
            }
            else
            {
                _2075 = 1.0f;
            }
            _2077 = _1877 ? _2075 : _1876;
            _2078 = _2075;
        }
        else
        {
            _2077 = _1876;
            _2078 = 1.0f;
        }
        float _2081 = lerp(lerp(_2078, _2077, _1659), min(_2078, _2077), _56_m8.x);
        float _2130 = 0.0f;
        if (_2081 > 0.001000000047497451305389404296875f)
        {
            float3 _2088 = _429 - _18_m65.xyz;
            float2 _2098 = (_2088 + (_18_m68.xyz * _2088.y)).xz * _18_m66.z;
            float2 _2105 = _18_m67.xy * _18_m75.w;
            _2130 = _2081 * lerp(1.0f, lerp(_59.SampleLevel(_25, _2098 + _2105, 0.0f), _59.SampleLevel(_25, (_2098 * _18_m67.w) + _2105, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_2088.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _2130 = _2081;
        }
        _2135 = float2(lerp(_2130, _56_m7.z, _56_m7.w), _2130);
        break;
    } while(false);
    float _2140 = lerp(1.0f, min(1.0f, _2135.x), _56_m6.x);
    float4 _2279 = 0.0f.xxxx;
    if (_2140 > 0.001000000047497451305389404296875f)
    {
        float3 _2150 = -_54_m0.xyz;
        float _2155 = dot(_2150, _1343);
        float3 _2157 = _1343 - (_2150 * _2155);
        bool3 _2159 = (_2155 < _54_m4.z).xxx;
        float3 _2167 = normalize((_2150 * _54_m4.z) + ((_2157 * rsqrt(max(6.103515625e-05f, dot(_2157, _2157)))) * _54_m4.y));
        float3 _2168 = float3(_2159.x ? _2167.x : _1343.x, _2159.y ? _2167.y : _1343.y, _2159.z ? _2167.z : _1343.z);
        float3 _2172 = _2168 + _466;
        float3 _2176 = _2172 * rsqrt(max(6.103515625e-05f, dot(_2172, _2172)));
        float _2177 = clamp(dot(_2168, _656), 0.0f, 1.0f);
        float _2179 = clamp(dot(_656, _2176), 0.0f, 1.0f);
        float _2182 = clamp(_743, 0.0f, 1.0f);
        float _2183 = _549 * _549;
        float _2184 = _2183 * _2183;
        float _2205 = (((_2179 * _2184) - _2179) * _2179) + 1.0f;
        float _2208 = 1.0f - clamp(dot(_466, _2176), 0.0f, 1.0f);
        float _2209 = _2208 * _2208;
        float _2211 = (_2208 * _2209) * _2209;
        float _2235 = 1.0f - _549;
        float _2242 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2235 * (1.04997003078460693359375f + (_2235 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2235))))));
        float _2243 = 1.0f - _2242;
        float3 _2246 = _866 + ((1.0f.xxx - _866) * 0.0476190485060214996337890625f);
        /*
        Vanilla shader code from 0x6C55727C:
        float3 _2265 = (clamp(clamp((min(((_866 * (1.0f - _2211)) + _2211.xxx) * ((_2184 / (_2205 * _2205)) * (0.5f / (((_2177 * sqrt(((((-_2182) * _2184) + _2182) * _2182) + _2184)) + (_2182 * sqrt(((((-_2177) * _2184) + _2177) * _2177) + _2184))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2246 * (((_63.SampleLevel(_24, (float2(_2182, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_2177, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2242) / _2243)) * _2246) / (1.0f.xxx - (_2246 * _2243)))) * _54_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_719, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2177) + ((_862 * 1.0f) * _2177);
        */
        // RenoDX code: Reduce opaque glass lighting while the glass transparency improvement is enabled.
        float3 _2265 = (clamp((clamp((min(((_866 * (1.0f - _2211)) + _2211.xxx) * ((_2184 / (_2205 * _2205)) * (0.5f / (((_2177 * sqrt(((((-_2182) * _2184) + _2182) * _2182) + _2184)) + (_2182 * sqrt(((((-_2177) * _2184) + _2177) * _2177) + _2184))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2246 * (((_63.SampleLevel(_24, (float2(_2182, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_2177, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2242) / _2243)) * _2246) / (1.0f.xxx - (_2246 * _2243)))) * _54_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_719, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2177) + ((_862 * 1.0f) * _2177);
        float3 _2266 = _2265 * _54_m1.xyz;
        float3 _2277 = lerp(_2266, _2266 * _61.SampleBias(_24, float2(_2140, 0.5f), _18_m16).xyz, (1.0f - _2140).xxx) * 1.0f;
        _2279 = float4(_2277.x, _2277.y, _2277.z, 0.0f.xxxx.w);
    }
    else
    {
        _2279 = 0.0f.xxxx;
    }
    float2 _2281 = floor(_1352 * 0.03125f);
    int _2289 = int((_2281.x + (_2281.y * _52_m5)) * 8.0f);
    float _2296 = floor(_917 - (_18_m3.y * _52_m11));
    float _2300 = clamp(_2296, 0.0f, _52_m7 - 1.0f);
    int _2302 = int(_2300 * 8.0f);
    float3 _2304 = 0.0f.xxx;
    float _2307 = 0.0f;
    _2304 = 0.0f.xxx;
    _2307 = 1.0f;
    float3 _2305 = 0.0f.xxx;
    float _2308 = 0.0f;
    [loop]
    for (int _2309 = 0; _2309 <= 7; _2304 = _2305, _2307 = _2308, _2309++)
    {
        uint _2327 = (_2296 <= _2300) ? (_33.Load(uint(_2289 + _2309) * 4 + 0) & _33.Load(uint((_18_m21.y + _2302) + _2309) * 4 + 0)) : 0u;
        uint _2328 = uint(_2309);
        float3 _2332 = 0.0f.xxx;
        _2308 = _2307;
        _2332 = 0.0f.xxx;
        uint _2335 = 0u;
        float _2330 = 0.0f;
        float3 _2333 = 0.0f.xxx;
        [loop]
        for (uint _2334 = _2327; _2334 != 0u; _2308 = _2330, _2332 = _2333, _2334 = _2335)
        {
            uint _2339 = firstbitlow(_2334);
            _2335 = _2334 ^ (1u << (_2339 & 31u));
            int _2345 = int((32u * _2328) + _2339) * 8;
            int _2348 = _2345 + 1;
            int _2351 = _2345 + 2;
            int _2354 = _2345 + 3;
            int _2357 = _2345 + 5;
            int _2360 = _2345 + 6;
            int _2363 = _2345 + 7;
            uint _2367 = uint(_54_m6[_2357].w);
            float _2442 = 0.0f;
            if ((_2367 & 1u) == 1u)
            {
                uint _2373 = asuint(_54_m6[_2357].x);
                uint _2380 = asuint(_54_m6[_2357].y);
                uint _2387 = asuint(_54_m6[_2357].z);
                uint _2394 = asuint(_54_m6[_2360].x);
                uint _2401 = asuint(_54_m6[_2360].y);
                uint _2408 = asuint(_54_m6[_2360].z);
                float3 _2427 = abs(mul(float4(_429 - _54_m6[_2348].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2373).x, spvUnpackHalf2x16(_2387).x, spvUnpackHalf2x16(_2401).x, 0.0f), float4(spvUnpackHalf2x16(_2373 >> 16u).x, spvUnpackHalf2x16(_2387 >> 16u).x, spvUnpackHalf2x16(_2401 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2380).x, spvUnpackHalf2x16(_2394).x, spvUnpackHalf2x16(_2408).x, 0.0f), float4(spvUnpackHalf2x16(_2380 >> 16u).x, spvUnpackHalf2x16(_2394 >> 16u).x, spvUnpackHalf2x16(_2408 >> 16u).x, 0.0f))).xyz);
                float _2434 = _54_m6[_2363].x * 0.5f;
                float _2440 = 1.0f - clamp((max(max(_2427.x, _2427.y), _2427.z) - (_2434 + 0.5f)) / (0.5f - _2434), 0.0f, 1.0f);
                _2442 = _2440 * _2440;
            }
            else
            {
                _2442 = 1.0f;
            }
            bool _2446 = _54_m6[_2354].z > 0.5f;
            if ((false || (_2442 < 0.001000000047497451305389404296875f)) || _2446)
            {
                _2330 = _2308;
                _2333 = _2332;
                continue;
            }
            float _3557 = 0.0f;
            float3 _3558 = 0.0f.xxx;
            if (_54_m6[_2345].w < 1.5f)
            {
                float3 _2934 = float3(0.100000001490116119384765625f, _549, 1.0f);
                float _2943 = (0.5f + (0.5f * _54_m6[_2351].y)) - abs(_54_m6[_2351].x);
                float _2944 = _54_m6[_2351].y - _2943;
                float _2951 = abs(max((1.0f - abs(_2943)) - abs(_2944), 0.00048828125f));
                float3 _2955 = normalize(float3(_2943, _2944, (_54_m6[_2351].x >= 0.0f) ? _2951 : (-_2951)));
                float3 _2956 = _54_m6[_2348].xyz - _429;
                float _2957 = dot(_2956, _2956);
                float _2958 = rsqrt(_2957);
                float3 _2959 = _2956 * _2958;
                float _2963 = clamp(_54_m6[_2363].y * _2958, 0.0f, 1.0f);
                int _2968 = int(_54_m6[_2363].w);
                float3 _2969 = _2955 * _54_m6[_2351].z;
                float3 _2970 = _2969 * 0.5f;
                float3 _2971 = _2956 - _2970;
                float3 _2972 = _2956 + _2970;
                bool _2975 = (uint(_54_m6[_2345].w) & 1u) == 0u;
                bool _2978 = _2975 || ((_2367 & 2u) != 0u);
                bool _2981 = (!_2975) && (_54_m6[_2351].z > 0.0f);
                float _3000 = 0.0f;
                float _3001 = 0.0f;
                if (_2981)
                {
                    float _2985 = length(_2971);
                    float _2986 = length(_2972);
                    _3000 = clamp(0.5f * ((dot(_656, _2971) / _2985) + (dot(_656, _2972) / _2986)), 0.0f, 1.0f);
                    _3001 = 1.0f / ((((_2985 * _2986) + dot(_2971, _2972)) * 0.5f) + 1.0f);
                }
                else
                {
                    _3000 = clamp(dot(_656, _2959), 0.0f, 1.0f);
                    _3001 = 1.0f;
                }
                float _3023 = 0.0f;
                if (_54_m6[_2360].w < 0.0f)
                {
                    float _3017 = _2957 * (_54_m6[_2348].w * _54_m6[_2348].w);
                    float _3020 = clamp(1.0f - (_3017 * _3017), 0.0f, 1.0f);
                    _3023 = lerp(1.0f / (_2957 + 1.0f), _3001, float(_2981)) * (_3020 * _3020);
                }
                else
                {
                    float3 _3006 = _2956 * _54_m6[_2348].w;
                    _3023 = _3001 * pow(1.0f - clamp(dot(_3006, _3006), 0.0f, 1.0f), _54_m6[_2360].w);
                }
                float _3029 = clamp((dot(_2959, -_2955) - _54_m6[_2351].z) * _54_m6[_2351].w, 0.0f, 1.0f);
                float _3033 = _3023 * lerp(1.0f, _3029 * _3029, float(_2975));
                float _3133 = 0.0f;
                if ((!_2981) && (_2968 >= 0))
                {
                    uint _3039 = uint(_2968);
                    float2 _3126 = 0.0f.xx;
                    [branch]
                    if (_2975)
                    {
                        float4 _3116 = mul(_72_m1[_3039], _433);
                        _3126 = _72_m0[_3039].xy + (clamp(_3116.xy / _3116.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_3039].zw);
                    }
                    else
                    {
                        float3 _3053 = mul(float4(-_2956, 0.0f), _72_m1[_3039]).xyz;
                        float3 _394 = _3053;
                        float3 _393 = _3053;
                        float3 _392 = abs(_3053);
                        uint _3062 = uint(int(_392.y > _392.x));
                        uint _3068 = (_392.z > _392[_3062]) ? 2u : _3062;
                        uint _3074 = (_3068 * 2u) + uint(_393[_3068] < 0.0f);
                        float _3078 = abs(_394[_3074 / 2u]);
                        float _3098 = 0.5f - (0.000244140625f / _72_m0[_3039].w);
                        _3126 = _72_m0[_3039].xy + (clamp(float2((float(_3074) + ((((_394[uint(_368[_3074].x)] * _369[_3074].x) / _3078) * _3098) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_368[_3074].y)] * _369[_3074].y) / _3078) * _3098)), 0.0f.xx, 1.0f.xx) * _72_m0[_3039].zw);
                    }
                    _3133 = _3033 * _70.SampleLevel(_24, _3126, 0.0f).x;
                }
                else
                {
                    _3133 = _3033;
                }
                bool _3134 = _3133 > 0.0f;
                float _3422 = 0.0f;
                if (_3134)
                {
                    int _3186 = 0;
                    if (_2978)
                    {
                        _3186 = int(_54_m6[_2354].x);
                    }
                    else
                    {
                        uint _3141 = asuint(_54_m6[_2351].w);
                        uint _3143 = asuint(_54_m6[_2354].x);
                        float3 _3144 = _429 - _54_m6[_2348].xyz;
                        float3 _3145 = abs(_3144);
                        float _3146 = _3145.x;
                        float _3147 = _3145.y;
                        float _3149 = _3145.z;
                        int _3181 = 0;
                        if ((_3146 > _3147) && (_3146 > _3149))
                        {
                            _3181 = int((_3144.x > 0.0f) ? (_3141 >> 24u) : ((_3141 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3173 = 0;
                            if (_3147 > _3149)
                            {
                                _3173 = int((_3144.y > 0.0f) ? ((_3141 >> 8u) & 255u) : (_3141 & 255u));
                            }
                            else
                            {
                                _3173 = int((_3144.z > 0.0f) ? ((_3143 >> 8u) & 255u) : (_3143 & 255u));
                            }
                            _3181 = _3173;
                        }
                        _3186 = (_3181 < 80) ? _3181 : (-1);
                    }
                    float4 _3203 = mul(_56_m10[_3186], float4((_429 - ((-_2959) * _56_m11[_3186].x)) + (_656 * (_56_m11[_3186].y * 5.0f)), 1.0f));
                    float _3204 = _3203.w;
                    float3 _3207 = _3203.xyz / _3204.xxx;
                    float2 _3208 = _3207.xy;
                    float3 _3216 = _3207.xyz;
                    bool3 _3217 = bool3(_3216.x <= 0.0f.xxx.x, _3216.y <= 0.0f.xxx.y, _3216.z <= 0.0f.xxx.z);
                    bool3 _3218 = bool3(_3216.x >= 1.0f.xxx.x, _3216.y >= 1.0f.xxx.y, _3216.z >= 1.0f.xxx.z);
                    float _3221 = _3207.z;
                    float2 _3232 = ((_3208 * (_56_m12[_3186].zw - _56_m12[_3186].xy)) + _56_m12[_3186].xy).xy * _56_m13.zw;
                    float2 _3234 = floor(_3232 + 0.5f.xx);
                    float2 _3235 = _3232 - _3234;
                    float _3236 = _3235.x;
                    float _3237 = _3236 + 0.5f;
                    float _3238 = _3237 * _3237;
                    float _3241 = 1.0f - _3236;
                    float _3242 = min(_3236, 0.0f);
                    float _3245 = _3236 + 1.0f;
                    float _3246 = max(_3236, 0.0f);
                    float _3257 = _3235.y;
                    float _3258 = _3257 + 0.5f;
                    float _3259 = _3258 * _3258;
                    float _3262 = 1.0f - _3257;
                    float _3263 = min(_3257, 0.0f);
                    float _3266 = _3257 + 1.0f;
                    float _3267 = max(_3257, 0.0f);
                    float3 _3279 = float3(0.1599999964237213134765625f * _3241, 0.1599999964237213134765625f * ((_3245 - (_3246 * _3246)) + 1.0f), _3238 * 0.07999999821186065673828125f);
                    float3 _3280 = float3(0.1599999964237213134765625f * ((_3238 * 0.5f) - _3236), 0.1599999964237213134765625f * ((_3241 - (_3242 * _3242)) + 1.0f), 0.1599999964237213134765625f * _3245) + _3279;
                    float3 _3282 = float3(0.1599999964237213134765625f * _3262, 0.1599999964237213134765625f * ((_3266 - (_3267 * _3267)) + 1.0f), _3259 * 0.07999999821186065673828125f);
                    float3 _3283 = float3(0.1599999964237213134765625f * ((_3259 * 0.5f) - _3257), 0.1599999964237213134765625f * ((_3262 - (_3263 * _3263)) + 1.0f), 0.1599999964237213134765625f * _3266) + _3282;
                    float3 _3289 = ((_3279 / _3280) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                    float3 _3291 = ((_3282 / _3283) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                    float2 _3293 = _3234 * _56_m13.xy;
                    float _3294 = _3289.x;
                    float _3295 = _3291.x;
                    float _3298 = _3289.y;
                    float _3301 = _3289.z;
                    float _3304 = _3291.y;
                    float _3311 = _3291.z;
                    float _3318 = _3280.x;
                    float _3319 = _3283.x;
                    float _3321 = _3280.y;
                    float _3323 = _3280.z;
                    float _3325 = _3283.y;
                    float _3329 = _3283.z;
                    float _3387 = (((((((_3318 * _3319) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3294, _3295), _387).xy, _3221)) + ((_3321 * _3319) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3298, _3295), _387).xy, _3221))) + ((_3323 * _3319) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3301, _3295), _387).xy, _3221))) + ((_3318 * _3325) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3294, _3304), _387).xy, _3221))) + ((_3321 * _3325) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3298, _3304), _387).xy, _3221))) + ((_3323 * _3325) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3301, _3304), _387).xy, _3221))) + ((_3318 * _3329) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3294, _3311), _387).xy, _3221));
                    float2 _3408 = min(_3208, 1.0f.xx - _3208);
                    _3422 = (_3186 >= 0) ? lerp(1.0f, (any(bool3(_3217.x || _3218.x, _3217.y || _3218.y, _3217.z || _3218.z)) || ((asuint(_3221) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3387 + ((_3321 * _3329) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3298, _3311), _387).xy, _3221))) + ((_3323 * _3329) * _58.SampleCmpLevelZero(_27, float3(_3293 + float2(_3301, _3311), _387).xy, _3221))), _2978 ? min(_56_m11[_3186].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_3186].z - _3204) * 0.25f, min(_3408.x, _3408.y)))) : _56_m11[_3186].w) : 1.0f;
                }
                else
                {
                    _3422 = 1.0f;
                }
                float3 _3445 = 0.0f.xxx;
                float3 _3446 = 0.0f.xxx;
                if (_2981)
                {
                    float3 _3425 = _2934 * _2934;
                    float _3434 = dot(_1343, _2969);
                    _3445 = _3425 / clamp(_3425 + (0.5f * clamp(_54_m6[_2351].z * _2958, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3446 = normalize(_2971 + (_2969 * clamp(dot(_2971, (_1343 * _3434) - _2969) / ((_54_m6[_2351].z * _54_m6[_2351].z) - (_3434 * _3434)), 0.0f, 1.0f)));
                }
                else
                {
                    _3445 = 1.0f.xxx;
                    _3446 = _2959;
                }
                float3 _3447 = _3446 + _466;
                float3 _3451 = _3447 * rsqrt(max(6.103515625e-05f, dot(_3447, _3447)));
                float3 _3556 = 0.0f.xxx;
                if (_3134)
                {
                    float _3454 = clamp(_3000, 0.0f, 1.0f);
                    float _3456 = clamp(dot(_656, _3451), 0.0f, 1.0f);
                    float _3458 = clamp(dot(_466, _3451), 0.0f, 1.0f);
                    float _3459 = clamp(_743, 0.0f, 1.0f);
                    float _3460 = _549 * _549;
                    float _3470 = 0.0f;
                    if (_2963 > 0.0f)
                    {
                        _3470 = clamp(_3460 + ((_2963 * _2963) / ((_3458 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3470 = _3460;
                    }
                    float _3471 = _3470 * _3470;
                    float _3492 = (((_3456 * _3471) - _3456) * _3456) + 1.0f;
                    float _3497 = 1.0f - _3458;
                    float _3498 = _3497 * _3497;
                    float _3500 = (_3497 * _3498) * _3498;
                    float _3524 = 1.0f - _549;
                    float _3531 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3524 * (1.04997003078460693359375f + (_3524 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3524))))));
                    float _3532 = 1.0f - _3531;
                    float3 _3535 = _866 + ((1.0f.xxx - _866) * 0.0476190485060214996337890625f);
                    float3 _3555 = ((clamp((min(((_866 * (1.0f - _3500)) + _3500.xxx) * (((_3471 / (_3492 * _3492)) * _3445.y) * (0.5f / (((_3454 * sqrt(((((-_3459) * _3471) + _3459) * _3459) + _3471)) + (_3459 * sqrt(((((-_3454) * _3471) + _3454) * _3454) + _3471))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3535 * (((_63.SampleLevel(_24, (float2(_3459, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_3454, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3531) / _3532)) * _3535) / (1.0f.xxx - (_3535 * _3532)))) * _54_m6[_2363].z, 0.0f.xxx, 1000.0f.xxx) * _3000) + ((_862 * _3445.z) * _3000)) * (((_54_m6[_2345].xyz * _3133) * _3422) * _2442);
                    _3556 = _3555;
                }
                else
                {
                    _3556 = 0.0f.xxx;
                }
                _3557 = _2308;
                _3558 = _3556;
            }
            else
            {
                float _2932 = 0.0f;
                do
                {
                    if (_2446)
                    {
                        _2932 = 1.0f;
                        break;
                    }
                    float _2466 = (0.5f + (0.5f * _54_m6[_2351].y)) - abs(_54_m6[_2351].x);
                    float _2467 = _54_m6[_2351].y - _2466;
                    float _2474 = abs(max((1.0f - abs(_2466)) - abs(_2467), 0.00048828125f));
                    float3 _2478 = normalize(float3(_2466, _2467, (_54_m6[_2351].x >= 0.0f) ? _2474 : (-_2474)));
                    float3 _2479 = _54_m6[_2348].xyz - _429;
                    float _2480 = dot(_2479, _2479);
                    float3 _2482 = _2479 * rsqrt(_2480);
                    int _2485 = int(_54_m6[_2363].w);
                    float3 _2487 = (_2478 * _54_m6[_2351].z) * 0.5f;
                    float3 _2488 = _2479 - _2487;
                    float3 _2489 = _2479 + _2487;
                    bool _2492 = (uint(_54_m6[_2345].w) & 1u) == 0u;
                    bool _2495 = _2492 || ((_2367 & 2u) != 0u);
                    bool _2498 = (!_2492) && (_54_m6[_2351].z > 0.0f);
                    float _2510 = 0.0f;
                    if (_2498)
                    {
                        _2510 = 1.0f / ((((length(_2488) * length(_2489)) + dot(_2488, _2489)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2510 = 1.0f;
                    }
                    float _2532 = 0.0f;
                    if (_54_m6[_2360].w < 0.0f)
                    {
                        float _2526 = _2480 * (_54_m6[_2348].w * _54_m6[_2348].w);
                        float _2529 = clamp(1.0f - (_2526 * _2526), 0.0f, 1.0f);
                        _2532 = lerp(1.0f / (_2480 + 1.0f), _2510, float(_2498)) * (_2529 * _2529);
                    }
                    else
                    {
                        float3 _2515 = _2479 * _54_m6[_2348].w;
                        _2532 = _2510 * pow(1.0f - clamp(dot(_2515, _2515), 0.0f, 1.0f), _54_m6[_2360].w);
                    }
                    float _2538 = clamp((dot(_2482, -_2478) - _54_m6[_2351].z) * _54_m6[_2351].w, 0.0f, 1.0f);
                    float _2542 = _2532 * lerp(1.0f, _2538 * _2538, float(_2492));
                    float _2642 = 0.0f;
                    if ((!_2498) && (_2485 >= 0))
                    {
                        uint _2548 = uint(_2485);
                        float2 _2635 = 0.0f.xx;
                        [branch]
                        if (_2492)
                        {
                            float4 _2625 = mul(_72_m1[_2548], _433);
                            _2635 = _72_m0[_2548].xy + (clamp(_2625.xy / _2625.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2548].zw);
                        }
                        else
                        {
                            float3 _2562 = mul(float4(-_2479, 0.0f), _72_m1[_2548]).xyz;
                            float3 _397 = _2562;
                            float3 _396 = _2562;
                            float3 _395 = abs(_2562);
                            uint _2571 = uint(int(_395.y > _395.x));
                            uint _2577 = (_395.z > _395[_2571]) ? 2u : _2571;
                            uint _2583 = (_2577 * 2u) + uint(_396[_2577] < 0.0f);
                            float _2587 = abs(_397[_2583 / 2u]);
                            float _2607 = 0.5f - (0.000244140625f / _72_m0[_2548].w);
                            _2635 = _72_m0[_2548].xy + (clamp(float2((float(_2583) + ((((_397[uint(_368[_2583].x)] * _369[_2583].x) / _2587) * _2607) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_397[uint(_368[_2583].y)] * _369[_2583].y) / _2587) * _2607)), 0.0f.xx, 1.0f.xx) * _72_m0[_2548].zw);
                        }
                        _2642 = _2542 * _70.SampleLevel(_24, _2635, 0.0f).x;
                    }
                    else
                    {
                        _2642 = _2542;
                    }
                    float _2931 = 0.0f;
                    if (_2642 > 0.0f)
                    {
                        int _2695 = 0;
                        if (_2495)
                        {
                            _2695 = int(_54_m6[_2354].x);
                        }
                        else
                        {
                            uint _2650 = asuint(_54_m6[_2351].w);
                            uint _2652 = asuint(_54_m6[_2354].x);
                            float3 _2653 = _429 - _54_m6[_2348].xyz;
                            float3 _2654 = abs(_2653);
                            float _2655 = _2654.x;
                            float _2656 = _2654.y;
                            float _2658 = _2654.z;
                            int _2690 = 0;
                            if ((_2655 > _2656) && (_2655 > _2658))
                            {
                                _2690 = int((_2653.x > 0.0f) ? (_2650 >> 24u) : ((_2650 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2682 = 0;
                                if (_2656 > _2658)
                                {
                                    _2682 = int((_2653.y > 0.0f) ? ((_2650 >> 8u) & 255u) : (_2650 & 255u));
                                }
                                else
                                {
                                    _2682 = int((_2653.z > 0.0f) ? ((_2652 >> 8u) & 255u) : (_2652 & 255u));
                                }
                                _2690 = _2682;
                            }
                            _2695 = (_2690 < 80) ? _2690 : (-1);
                        }
                        float4 _2712 = mul(_56_m10[_2695], float4((_429 - ((-_2482) * _56_m11[_2695].x)) + (_656 * (_56_m11[_2695].y * 5.0f)), 1.0f));
                        float _2713 = _2712.w;
                        float3 _2716 = _2712.xyz / _2713.xxx;
                        float2 _2717 = _2716.xy;
                        float3 _2725 = _2716.xyz;
                        bool3 _2726 = bool3(_2725.x <= 0.0f.xxx.x, _2725.y <= 0.0f.xxx.y, _2725.z <= 0.0f.xxx.z);
                        bool3 _2727 = bool3(_2725.x >= 1.0f.xxx.x, _2725.y >= 1.0f.xxx.y, _2725.z >= 1.0f.xxx.z);
                        float _2730 = _2716.z;
                        float2 _2741 = ((_2717 * (_56_m12[_2695].zw - _56_m12[_2695].xy)) + _56_m12[_2695].xy).xy * _56_m13.zw;
                        float2 _2743 = floor(_2741 + 0.5f.xx);
                        float2 _2744 = _2741 - _2743;
                        float _2745 = _2744.x;
                        float _2746 = _2745 + 0.5f;
                        float _2747 = _2746 * _2746;
                        float _2750 = 1.0f - _2745;
                        float _2751 = min(_2745, 0.0f);
                        float _2754 = _2745 + 1.0f;
                        float _2755 = max(_2745, 0.0f);
                        float _2766 = _2744.y;
                        float _2767 = _2766 + 0.5f;
                        float _2768 = _2767 * _2767;
                        float _2771 = 1.0f - _2766;
                        float _2772 = min(_2766, 0.0f);
                        float _2775 = _2766 + 1.0f;
                        float _2776 = max(_2766, 0.0f);
                        float3 _2788 = float3(0.1599999964237213134765625f * _2750, 0.1599999964237213134765625f * ((_2754 - (_2755 * _2755)) + 1.0f), _2747 * 0.07999999821186065673828125f);
                        float3 _2789 = float3(0.1599999964237213134765625f * ((_2747 * 0.5f) - _2745), 0.1599999964237213134765625f * ((_2750 - (_2751 * _2751)) + 1.0f), 0.1599999964237213134765625f * _2754) + _2788;
                        float3 _2791 = float3(0.1599999964237213134765625f * _2771, 0.1599999964237213134765625f * ((_2775 - (_2776 * _2776)) + 1.0f), _2768 * 0.07999999821186065673828125f);
                        float3 _2792 = float3(0.1599999964237213134765625f * ((_2768 * 0.5f) - _2766), 0.1599999964237213134765625f * ((_2771 - (_2772 * _2772)) + 1.0f), 0.1599999964237213134765625f * _2775) + _2791;
                        float3 _2798 = ((_2788 / _2789) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                        float3 _2800 = ((_2791 / _2792) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                        float2 _2802 = _2743 * _56_m13.xy;
                        float _2803 = _2798.x;
                        float _2804 = _2800.x;
                        float _2807 = _2798.y;
                        float _2810 = _2798.z;
                        float _2813 = _2800.y;
                        float _2820 = _2800.z;
                        float _2827 = _2789.x;
                        float _2828 = _2792.x;
                        float _2830 = _2789.y;
                        float _2832 = _2789.z;
                        float _2834 = _2792.y;
                        float _2838 = _2792.z;
                        float _2896 = (((((((_2827 * _2828) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2803, _2804), _387).xy, _2730)) + ((_2830 * _2828) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2807, _2804), _387).xy, _2730))) + ((_2832 * _2828) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2810, _2804), _387).xy, _2730))) + ((_2827 * _2834) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2803, _2813), _387).xy, _2730))) + ((_2830 * _2834) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2807, _2813), _387).xy, _2730))) + ((_2832 * _2834) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2810, _2813), _387).xy, _2730))) + ((_2827 * _2838) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2803, _2820), _387).xy, _2730));
                        float2 _2917 = min(_2717, 1.0f.xx - _2717);
                        _2931 = (_2695 >= 0) ? lerp(1.0f, (any(bool3(_2726.x || _2727.x, _2726.y || _2727.y, _2726.z || _2727.z)) || ((asuint(_2730) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2896 + ((_2830 * _2838) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2807, _2820), _387).xy, _2730))) + ((_2832 * _2838) * _58.SampleCmpLevelZero(_27, float3(_2802 + float2(_2810, _2820), _387).xy, _2730))), _2495 ? min(_56_m11[_2695].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_2695].z - _2713) * 0.25f, min(_2917.x, _2917.y)))) : _56_m11[_2695].w) : 1.0f;
                    }
                    else
                    {
                        _2931 = 1.0f;
                    }
                    _2932 = _2931;
                    break;
                } while(false);
                _3557 = _2308 * _2932;
                _3558 = 0.0f.xxx;
            }
            _2330 = _3557;
            _2333 = _2332 + _3558;
        }
        _2305 = _2304 + _2332;
    }
    float3 _3563 = ((((float3(_1323, _1328, _1333) * _862) * lerp(1.0f, _520, _45_m4)) * _18_m22.x) + ((((_1616 * _18_m23.z) * _18_m22.y) * ((_866 * _880.x) + (clamp(50.0f * _866.y, 0.0f, 1.0f) * _880.y).xxx)) * 1.0f)) + (((((((lerp(_45_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _621) + ((((_45_m59.xyz * _611.y) + (_45_m60.xyz * _611.z)) + (_45_m61.xyz * _611.w)) * _45_m56)) * lerp(_633, 1.0f.xxx, _45_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _45_m46) + (_18_m20.y * _45_m46))) * _45_m57) + (lerp(float4(_633, 1.0f).xyz, _45_m86.xyz, (_45_m86.w * _700).xxx).xyz * lerp(_673, _673 * _8.y, _45_m81)));
    float3 _3569 = _3563 + lerp((_2279.xyz + (_2304 * _2307)).xyz, (_803.xyz * (_45_m72.xyz * _45_m70)).xyz, clamp((1.0f - _719) / max(1.0f - _45_m69, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3570 = float4(_3569.x, _3569.y, _3569.z, _389.w);
    _3570.w = _719;
    float _3587 = _429.y * _18_m46.w;
    float _3592 = max(0.00999999977648258209228515625f, _3587 + _18_m47.w);
    float3 _3606 = exp(_18_m45.xyz * ((-max(0.0f, (_467 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3592)) / _3592) * exp(_3587 + _18_m48.w))));
    float _3609 = dot(_744, _18_m44.xyz);
    float _3615 = _18_m45.w * _18_m45.w;
    float _3619 = (1.0f + _3615) - ((2.0f * _18_m45.w) * _3609);
    float3 _3949 = 0.0f.xxx;
    float _3950 = 0.0f;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3777 = (uint3(int3(int(_916.x), int(_916.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3778 = _3777.y;
        uint _3779 = _3777.z;
        uint _3782 = _3777.x + (_3778 * _3779);
        uint _3784 = _3778 + (_3779 * _3782);
        uint _3786 = _3779 + (_3782 * _3784);
        uint _3788 = _3782 + (_3784 * _3786);
        float _3810 = dot(_744, -_16_m0[2].xyz);
        float3 _3820 = _429 - _16_m11.xyz;
        float _3822 = (_18_m55.w * ((_3810 > 5.9604644775390625e-08f) ? (1.0f / _3810) : 0.0f)) * (1.0f / _467);
        float _3823 = _3820.y;
        float _3824 = _3822 * _3823;
        float _3826 = _16_m11.y + _3824;
        float _3827 = _3823 - _3824;
        float _3829 = (1.0f - _3822) * _467;
        float _3843 = max(-127.0f, _18_m49.z * _3827);
        float _3867 = max(-127.0f, _18_m52.x * _3827);
        float _3878 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3826 - _18_m49.x)))) * ((abs(_3843) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3843)) / _3843) : (0.693147182464599609375f - (0.2402265071868896484375f * _3843)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3826 - _18_m52.z)))) * ((abs(_3867) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3867)) / _3867) : (0.693147182464599609375f - (0.2402265071868896484375f * _3867))));
        float _3900 = clamp((_467 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3903 = clamp((max(clamp(exp2(-(_3878 * _3829)), 0.0f, 1.0f), _18_m51.w) + clamp((_467 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3900, 0.0f, 1.0f);
        float4 _3943 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_24, float3((_1352 + ((((float3(uint3(_3788, _3784 + (_3786 * _3788), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_917 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_917 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3949 = _3943.xyz + (((_18_m51.xyz * (1.0f - _3903)) + (((_18_m54.xyz * pow(clamp(dot(_466, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3878 * max(_3829 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3900))) * _3943.w);
        _3950 = _3943.w * _3903;
    }
    else
    {
        float3 _3649 = _429 - _16_m11.xyz;
        float _3651 = _3649.y;
        float _3665 = max(-127.0f, _18_m49.z * _3651);
        float _3689 = max(-127.0f, _18_m52.x * _3651);
        float _3700 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3665) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3665)) / _3665) : (0.693147182464599609375f - (0.2402265071868896484375f * _3665)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3689) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3689)) / _3689) : (0.693147182464599609375f - (0.2402265071868896484375f * _3689))));
        float _3722 = clamp((_467 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3725 = clamp((max(clamp(exp2(-(_3700 * _467)), 0.0f, 1.0f), _18_m51.w) + clamp((_467 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3722, 0.0f, 1.0f);
        _3949 = (_18_m51.xyz * (1.0f - _3725)) + (((_18_m54.xyz * pow(clamp(dot(_466, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3700 * max(_467 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3722));
        _3950 = _3725;
    }
    /*
    Vanilla shader code from 0x6C55727C:
    float3 _3956 = ((_3570.xyz * (_3606 * _3950)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3609 * _3609)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3615) / max((12.56637096405029296875f * _3619) * sqrt(_3619), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3606)) * _3950) + _3949)).xyz;
    */
    // RenoDX code start: Apply the selected hue-preserving fog balance to transparent glass.
    float3 _3956 = ((_3570.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3606 * _3950)) : (_3606 * _3950))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3609 * _3609)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3615) / max((12.56637096405029296875f * _3619) * sqrt(_3619), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3606)) * _3950 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3949 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    // RenoDX code end
    float3 _3966 = lerp(dot(_3956, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3956, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3976 = min(lerp(((sqrt(sqrt(abs(_834 * 0.5f))) * float2(int2(sign(_834)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _821.xx), 1.0f.xx);
    float4 _3977 = float4(_3976.x, _3976.y, _389.z, _389.w);
    _3977.z = float(clamp(max(dot(_3966.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _719, _719) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3977.w = lerp(0.0f, 0.699999988079071044921875f, _821);
    /*
    Vanilla shader code from 0x6C55727C:
    _13 = float4(_3966.x, _3966.y, _3966.z, _3570.w);
    */
    // RenoDX code start: Compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3966.x, _3966.y, _3966.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3570.w);
    _14 = _3977;
    if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
    // RenoDX code end
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
