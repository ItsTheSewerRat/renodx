#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x93A1901D.
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

static float _387 = (float)0;
static float4 _389 = (float4)0;
static uint _390 = (uint)0;

static const float4 _367[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _368[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _369[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _33 : register(t50);
[[vk::binding(8, 1)]]
cbuffer _44_45 : register(b8)
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

[[vk::binding(17, 0)]]
cbuffer _46_48 : register(b17)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    _47 _48_m4[32] : packoffset(c4);
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
cbuffer _71_72 : register(b49)
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
    float _414 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _419 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _421 = abs(_419);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _421 : (-_421)), (1.0f - _414) - _419) < 0.0f)
    {
        discard;
    }
    float2 _438 = gl_FragCoord.xy * _18_m0.zw;
    float2 _441 = (_438 * 2.0f) - 1.0f.xx;
    float4 _444 = float4(_441, gl_FragCoord.z, 1.0f);
    _444.y = -_441.y;
    float4 _447 = mul(_16_m6, _444);
    float3 _451 = _447.xyz / _447.w.xxx;
    float4 _455 = float4(_451, 1.0f);
    float _458 = abs(mul(_16_m0, _455).z);
    float _462 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _484;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _484 = _16_m11.xyz - _451;
            break;
        }
        else
        {
            _484 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _485 = dot(_484, _484);
    float _487 = rsqrt(max(_485, 9.9999999392252902907785028219223e-09f));
    float3 _488 = _484 * _487;
    float _489 = _485 * _487;
    bool _490 = gl_FrontFacing ? true : false;
    float4 _522 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
    float _524 = _522.w;
    float4 _527 = _36.SampleBias(_37, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
    float2 _530 = (_527.xy * 2.0f.xx) - 1.0f.xx;
    float2 _531 = abs(_530);
    bool2 _532 = bool2(_531.x < 0.01200000010430812835693359375f.xx.x, _531.y < 0.01200000010430812835693359375f.xx.y);
    float2 _533 = float2(_532.x ? 0.0f.xx.x : _530.x, _532.y ? 0.0f.xx.y : _530.y);
    float2 _534 = _533 * _45_m0;
    float _541 = _527.z;
    float _542 = _527.w;
    float _560 = lerp(_524, _542, _45_m6) * _45_m32.w;
    float _571 = lerp(_45_m2, _45_m3, _541);
    float _581 = lerp(_524, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
    float4 _633 = _38.SampleBias(_39, ((lerp(_4, _5, _45_m55.xx) * _45_m63.xy) + _45_m63.zw) + (_45_m62.xy * _18_m75.w), _18_m16);
    float _643 = _633.x;
    float _650 = (_21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _643)) * _45_m48;
    float3 _655 = lerp(clamp((_522.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx) * ((1.0f - _650).xxx + (_21_m0[_11]._m9.xyz * _650));
    float3 _678 = normalize(((_7.xyz * _534.x) + ((cross(_6, float4(_7.xyz, _462).xyz) * _462) * _534.y)) + (_6 * (sqrt(clamp(1.0f - dot(_533, _533), 0.0f, 1.0f)) * (_490 ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _695 = clamp((1.0f - lerp(lerp(_524, _541, clamp(_45_m79, 0.0f, 1.0f)), _542, clamp(_45_m79 - 1.0f, 0.0f, 1.0f))) + _45_m80, 0.0f, 1.0f);
    float3 _699 = lerp(_678, _6, _45_m82.xxx);
    bool3 _714 = _490.xxx;
    float3 _715 = -_699;
    float _720 = pow(clamp(dot(_488, float3(_714.x ? _699.x : _715.x, _714.y ? _699.y : _715.y, _714.z ? _699.z : _715.z)) + _45_m74, 0.0f, 1.0f), _45_m77);
    float _722 = lerp(1.0f - _720, _720, _45_m78);
    float _741 = lerp(_560, _560 * _8.x, _45_m87) * ((1.0f - _45_m75) + (_722 * _45_m75));
    float _765 = dot(_678, _488);
    float3 _766 = -_488;
    float4 _786 = _41.SampleBias(_42, (_4 * _45_m73.xy) + _45_m73.zw, _18_m16);
    float2 _794 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_766, _678, _45_m66) * lerp(_45_m67, _45_m67 / max(gl_FragCoord.z * _765, 0.5f), _45_m68)).xy, ((_786 * 2.0f) - 1.0f.xxxx).xy * _45_m65, _45_m64.xx).xy;
    float2 _795 = _438 + _794;
    float2 _797 = _438 + (_794 * 0.25f);
    float4 _825 = _40.SampleBias(_43, lerp(lerp(_438, _797, step(_458, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _797, _18_m16).x) + _18_m2.w)).xx), _795, step(_458, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _795, _18_m16).x) + _18_m2.w)).xx), _18_m16);
    float _838 = clamp(float(int(sign(_414 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _851 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _851.y = -_851.y;
    float _877 = 0.07999999821186065673828125f * _45_m1;
    float3 _878 = _655 * _581;
    float3 _879 = _655 - _878;
    float3 _883 = (_877 - (_877 * _581)).xxx + _878;
    float4 _886 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _571) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _887 = _886.x;
    float2 _897 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_887 * _887, exp2((-9.27999973297119140625f) * max(0.0f, _765))) * _887) + _886.y)) + _886.zw;
    uint2 _933;
    float _934;
    if (_18_m24.y == 1.0f)
    {
        float4 _914 = mul(_18_m135, _455);
        float4 _917 = _914;
        _917.y = -_914.y;
        float4 _920 = _917 * (1.0f / _914.w);
        _933 = uint2(clamp(((_920.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _934 = 1.0f / ((_18_m2.z * _920.z) + _18_m2.w);
    }
    else
    {
        _933 = uint2(gl_FragCoord.xy);
        _934 = _458;
    }
    float3 _936 = _451 + (_678 * 0.25f);
    float3 _946 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _955 = _936 - (_18_m105.xyz + (_946 * (-_18_m107.w)));
    float _969 = max(clamp((max(abs(_955.x), abs(_955.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_955.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1271;
    float4 _1272;
    float4 _1273;
    float _1274;
    float _1275;
    if ((_18_m105.w != 0.0f) && (_969 < 1.0f))
    {
        float3 _982 = _936 - (_18_m105.xyz + (_946 * (-_18_m107.y)));
        float _996 = max(clamp((max(abs(_982.x), abs(_982.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_982.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1072;
        float4 _1073;
        float4 _1074;
        float4 _1075;
        if (_996 < 1.0f)
        {
            float3 _1005 = ((_936 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1007 = _1005 - floor(_1005);
            float4 _1011 = _64.SampleLevel(_25, _1007, 0.0f);
            float _1012 = 1.0f - _996;
            float _1016 = _18_m106.y * 0.5f;
            float _1021 = _1007.x;
            float _1022 = clamp(_1007.y, _1016, 1.0f - _1016) * 0.3333333432674407958984375f;
            float _1023 = _1007.z;
            float4 _1026 = _65.SampleLevel(_24, float3(_1021, _1022, _1023), 0.0f);
            float _1042 = _1011.x;
            float _1052 = _1011.y;
            float _1062 = _1011.z;
            _1072 = _969 + (_1026.w * _1012);
            _1073 = float4(((_65.SampleLevel(_24, float3(_1021, _1022 + 0.666666686534881591796875f, _1023), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1062, _1062) * _1012;
            _1074 = float4(((_65.SampleLevel(_24, float3(_1021, _1022 + 0.3333333432674407958984375f, _1023), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1052, _1052) * _1012;
            _1075 = float4(((_1026.xyz * 4.0f) - 2.0f.xxx) * _1042, _1042) * _1012;
        }
        else
        {
            _1072 = _969;
            _1073 = 0.0f.xxxx;
            _1074 = 0.0f.xxxx;
            _1075 = 0.0f.xxxx;
        }
        float3 _1081 = _936 - (_18_m105.xyz + (_946 * (-_18_m107.z)));
        float _1095 = max(clamp((max(abs(_1081.x), abs(_1081.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1081.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1175;
        float4 _1176;
        float4 _1177;
        float4 _1178;
        if (_1095 < 1.0f)
        {
            float3 _1104 = ((_936 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1106 = _1104 - floor(_1104);
            float4 _1110 = _66.SampleLevel(_25, _1106, 0.0f);
            float _1112 = _996 * (1.0f - _1095);
            float _1116 = _18_m106.y * 0.5f;
            float _1121 = _1106.x;
            float _1122 = clamp(_1106.y, _1116, 1.0f - _1116) * 0.3333333432674407958984375f;
            float _1123 = _1106.z;
            float4 _1126 = _67.SampleLevel(_24, float3(_1121, _1122, _1123), 0.0f);
            float _1142 = _1110.x;
            float _1153 = _1110.y;
            float _1164 = _1110.z;
            _1175 = _1072 + (_1126.w * _1112);
            _1176 = _1073 + (float4(((_67.SampleLevel(_24, float3(_1121, _1122 + 0.666666686534881591796875f, _1123), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1164, _1164) * _1112);
            _1177 = _1074 + (float4(((_67.SampleLevel(_24, float3(_1121, _1122 + 0.3333333432674407958984375f, _1123), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1153, _1153) * _1112);
            _1178 = _1075 + (float4(((_1126.xyz * 4.0f) - 2.0f.xxx) * _1142, _1142) * _1112);
        }
        else
        {
            _1175 = _1072;
            _1176 = _1073;
            _1177 = _1074;
            _1178 = _1075;
        }
        float4 _1261;
        float4 _1262;
        float4 _1263;
        float _1264;
        if (_1095 > 0.0f)
        {
            float3 _1187 = ((_936 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1190 = _18_m106.xyz * 0.5f;
            float3 _1192 = clamp(_1187 - floor(_1187), _1190, 1.0f.xxx - _1190);
            float4 _1196 = _68.SampleLevel(_25, _1192, 0.0f);
            float _1198 = _1095 * (1.0f - _969);
            float _1202 = _18_m106.y * 0.5f;
            float _1207 = _1192.x;
            float _1208 = clamp(_1192.y, _1202, 1.0f - _1202) * 0.3333333432674407958984375f;
            float _1209 = _1192.z;
            float4 _1212 = _69.SampleLevel(_24, float3(_1207, _1208, _1209), 0.0f);
            float _1228 = _1196.x;
            float _1239 = _1196.y;
            float _1250 = _1196.z;
            _1261 = _1176 + (float4(((_69.SampleLevel(_24, float3(_1207, _1208 + 0.666666686534881591796875f, _1209), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1250, _1250) * _1198);
            _1262 = _1177 + (float4(((_69.SampleLevel(_24, float3(_1207, _1208 + 0.3333333432674407958984375f, _1209), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1239, _1239) * _1198);
            _1263 = _1178 + (float4(((_1212.xyz * 4.0f) - 2.0f.xxx) * _1228, _1228) * _1198);
            _1264 = _1175 + (_1212.w * _1198);
        }
        else
        {
            _1261 = _1176;
            _1262 = _1177;
            _1263 = _1178;
            _1264 = _1175;
        }
        float _1267 = clamp((_1264 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1271 = _1261;
        _1272 = _1262;
        _1273 = _1263;
        _1274 = _1267 - _969;
        _1275 = (_1267 + _969) * 0.5f;
    }
    else
    {
        _1271 = 0.0f.xxxx;
        _1272 = 0.0f.xxxx;
        _1273 = 0.0f.xxxx;
        _1274 = 0.0f;
        _1275 = 1.0f;
    }
    float4 _1295 = _1273 + float4(_18_m108.x * _1275, (_18_m108.y * _1275) + ((_18_m108.w * _1274) * 0.5f), _18_m108.z * _1275, (_18_m108.w * _1275) + ((_18_m108.y * _1274) * 0.375f));
    float4 _1315 = _1272 + float4(_18_m109.x * _1275, (_18_m109.y * _1275) + ((_18_m109.w * _1274) * 0.5f), _18_m109.z * _1275, (_18_m109.w * _1275) + ((_18_m109.y * _1274) * 0.375f));
    float4 _1335 = _1271 + float4(_18_m110.x * _1275, (_18_m110.y * _1275) + ((_18_m110.w * _1274) * 0.5f), _18_m110.z * _1275, (_18_m110.w * _1275) + ((_18_m110.y * _1274) * 0.375f));
    float _1340 = max(0.0f, dot(_1295.xyz, _678) + _1295.w);
    float _1345 = max(0.0f, dot(_1315.xyz, _678) + _1315.w);
    float _1350 = max(0.0f, dot(_1335.xyz, _678) + _1335.w);
    float3 _1360 = reflect(_766, _678);
    float _1368 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_571, 0.001000000047497451305389404296875f))));
    float2 _1369 = float2(_933);
    float2 _1373 = floor(_1369 * _48_m0.w);
    float _1390 = floor(_934 - _48_m2.y);
    float _1394 = clamp(_1390, 0.0f, _48_m1.x - 1.0f);
    uint _1404 = (_1390 <= _1394) ? (_33.Load(uint(_18_m21.z + int(_1373.x + (_1373.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1394)) * 4 + 0)) : 0u;
    float _1407 = dot(float4(_1340, _1345, _1350, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1409;
    float _1412;
    uint _1414;
    _1409 = 0.0f.xxx;
    _1412 = 1.0f;
    _1414 = _1404;
    uint _1415;
    float3 _1410;
    float _1413;
    bool _1417;
    [loop]
    for (;;)
    {
        _1417 = _1412 > 0.00999999977648258209228515625f;
        if ((_1414 != 0u) && _1417)
        {
            uint _1421 = firstbitlow(_1414);
            _1415 = _1414 ^ (1u << (_1421 & 31u));
            float3 _1441 = float3(dot(_48_m4[_1421]._m2, _455), dot(_48_m4[_1421]._m3, _455), dot(_48_m4[_1421]._m4, _455));
            float3 _1442 = abs(_1441);
            if (all(bool3(_1442.x <= _48_m4[_1421]._m1.xyz.x, _1442.y <= _48_m4[_1421]._m1.xyz.y, _1442.z <= _48_m4[_1421]._m1.xyz.z)))
            {
                float3 _1451 = _48_m4[_1421]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1453 = _1442 * 0.100000001490116119384765625f;
                float3 _1454 = _1453 * _1453;
                float3 _1457 = (_48_m4[_1421]._m1.xyz - _1442) * _48_m4[_1421]._m5.xyz;
                float3 _1505;
                [branch]
                if (_48_m4[_1421]._m6.x == 1.0f)
                {
                    float3 _1490 = float3(dot(_48_m4[_1421]._m2.xyz, _1360), dot(_48_m4[_1421]._m3.xyz, _1360), dot(_48_m4[_1421]._m4.xyz, _1360));
                    float3 _1492 = (_48_m4[_1421]._m1.xyz - _1441) / _1490;
                    float3 _1495 = ((-_48_m4[_1421]._m1.xyz) - _1441) / _1490;
                    bool3 _1496 = bool3(_1490.x > 0.0f.xxx.x, _1490.y > 0.0f.xxx.y, _1490.z > 0.0f.xxx.z);
                    float3 _1497 = float3(_1496.x ? _1492.x : _1495.x, _1496.y ? _1492.y : _1495.y, _1496.z ? _1492.z : _1495.z);
                    _1505 = _1441 + (_1490 * min(min(_1497.x, _1497.y), _1497.z));
                }
                else
                {
                    _1505 = _1360;
                }
                float3 _1506 = normalize(_1505);
                float3 _1509 = float3(int3(sign(_1506)));
                float3 _1512 = _1506 / dot(_1506, _1509).xxx;
                float3 _1526;
                if (_1512.z < 0.0f)
                {
                    float3 _1517 = abs(_1512);
                    float2 _1524 = _1509.xy * float2(1.0f - _1517.y, 1.0f - _1517.x);
                    _1526 = float3(_1524.x, _1524.y, _1512.z);
                }
                else
                {
                    _1526 = _1512;
                }
                float _1551 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1421]._m0, float4(_678, 1.0f))));
                float _1564 = clamp((min(_1457.x, min(_1457.y, _1457.z)) * _48_m4[_1421]._m6.y) + ((((((_1451 * _1451).x - ((_1454.x + _1454.y) + _1454.z)) * _48_m4[_1421]._m5.x) * _48_m4[_1421]._m5.x) * (1.0f - _48_m4[_1421]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1421]._m6.w;
                _1410 = _1409 + ((((_31.SampleLevel(_26, float3((((_1526.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1421]._m1.w), _1368).xyz * _48_m4[_1421]._m5.w) * ((((((clamp(abs(_1407 / _1551), 0.0f, 1.0f) * 2.0f) + _1407) / (2.0f + _1551)) - 1.0f) * _18_m23.w) + 1.0f)) * _1564) * _1412);
                _1413 = _1412 * (1.0f - _1564);
            }
            else
            {
                _1410 = _1409;
                _1413 = _1412;
            }
            _1409 = _1410;
            _1412 = _1413;
            _1414 = _1415;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1633;
    if (_1417)
    {
        float3 _1572 = normalize(_1360);
        float3 _1575 = float3(int3(sign(_1572)));
        float3 _1578 = _1572 / dot(_1572, _1575).xxx;
        float3 _1592;
        if (_1578.z < 0.0f)
        {
            float3 _1583 = abs(_1578);
            float2 _1590 = _1575.xy * float2(1.0f - _1583.y, 1.0f - _1583.x);
            _1592 = float3(_1590.x, _1590.y, _1578.z);
        }
        else
        {
            _1592 = _1578;
        }
        float _1619 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_678, 1.0f))));
        _1633 = _1409 + ((_31.SampleLevel(_26, float3((((_1592.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1368).xyz * ((((((clamp(abs(_1407 / _1619), 0.0f, 1.0f) * 2.0f) + _1407) / (2.0f + _1619)) - 1.0f) * _18_m23.w) + 1.0f)) * _1412);
    }
    else
    {
        _1633 = _1409;
    }
    float2 _2152;
    do
    {
        if (_56_m7.w >= 0.9900000095367431640625f)
        {
            _2152 = float2(_56_m7.z, 1.0f);
            break;
        }
        int _1655 = int(_56_m7.x);
        bool3 _1657 = (_1655 == 2).xxx;
        float3 _1665 = _451 - float3(_1657.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1657.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1657.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
        float _1676 = max(clamp((_56_m6.w - dot(_1665, _1665)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
        float _1893;
        bool _1894;
        if (_1676 > 0.0f)
        {
            float _1891;
            bool _1892;
            if (_1655 > 0)
            {
                float3 _1683 = _451 - _56_m1[0].xyz;
                float3 _1687 = _451 - _56_m1[1].xyz;
                float3 _1691 = _451 - _56_m1[2].xyz;
                float3 _1695 = _451 - _56_m1[3].xyz;
                float4 _1700 = float4(dot(_1683, _1683), dot(_1687, _1687), dot(_1691, _1691), dot(_1695, _1695));
                float4 _1709 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
                float4 _1711 = float4(bool4(_1700.x < _1709.x, _1700.y < _1709.y, _1700.z < _1709.z, _1700.w < _1709.w));
                float3 _1715 = clamp(_1711.yzw - _1711.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1719 = clamp(4.0f - dot(float4(_1711.x, _1715.x, _1715.y, _1715.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1721 = clamp(_1719 + 1.0f, 0.0f, 3.0f);
                uint _1722 = uint(_1719);
                uint _1730 = uint(_1721);
                float _1736 = dot(_1700, _367[_1730]) / _56_m1[_1730].w;
                float _1753;
                if (((_1721 > _1719) && (_1736 >= 0.0f)) && (_1736 <= 1.0f))
                {
                    _1753 = _1719 + step(frac(52.98291778564453125f * frac(dot(_1369 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1700, _367[_1722]) / _56_m1[_1722].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1753 = _1719;
                }
                float _1754 = clamp(_1753, 0.0f, 4.0f);
                float4 _1758 = mul(_56_m0[uint(_1754)], _455);
                float _1761 = _1758.z;
                float4 _1762 = float4(_1758.xy, _1761, _1754);
                float3 _1763 = _1762.xyz;
                bool3 _1764 = bool3(_1763.x <= 0.0f.xxx.x, _1763.y <= 0.0f.xxx.y, _1763.z <= 0.0f.xxx.z);
                bool3 _1765 = bool3(_1763.x >= 1.0f.xxx.x, _1763.y >= 1.0f.xxx.y, _1763.z >= 1.0f.xxx.z);
                bool _1771 = any(bool3(_1764.x || _1765.x, _1764.y || _1765.y, _1764.z || _1765.z)) || ((asuint(_1761) & 2147483647u) > 2139095040u);
                int _1772 = int(_1754);
                float2 _1789 = float4(_56_m3[_1772].xy + (_1762.xy * _56_m3[_1772].zw), _1761, _1754).xy * _56_m4.zw;
                float2 _1791 = floor(_1789 + 0.5f.xx);
                float2 _1792 = _1789 - _1791;
                float _1793 = _1792.x;
                float _1794 = _1793 + 0.5f;
                float _1796 = (_1794 * _1794) * 0.5f;
                float _1799 = min(_1793, 0.0f);
                float _1803 = max(_1793, 0.0f);
                float4 _1807 = float4(_1796 - _1793, (1.0f - _1793) - (_1799 * _1799), (_1793 + 1.0f) - (_1803 * _1803), _1796) * 0.44444000720977783203125f;
                float _1808 = _1792.y;
                float _1809 = _1808 + 0.5f;
                float _1811 = (_1809 * _1809) * 0.5f;
                float _1814 = min(_1808, 0.0f);
                float _1818 = max(_1808, 0.0f);
                float4 _1822 = float4(_1811 - _1808, (1.0f - _1808) - (_1814 * _1814), (_1808 + 1.0f) - (_1818 * _1818), _1811) * 0.44444000720977783203125f;
                float2 _1824 = _1807.yw;
                float2 _1825 = _1807.xz + _1824;
                float2 _1827 = _1822.yw;
                float2 _1828 = _1822.xz + _1827;
                float2 _1834 = ((_1824 / _1825) + float2(-1.5f, 0.5f)) * _56_m4.xx;
                float2 _1836 = ((_1827 / _1828) + float2(-1.5f, 0.5f)) * _56_m4.yy;
                float2 _1838 = _1791 * _56_m4.xy;
                float _1839 = _1834.x;
                float _1840 = _1836.x;
                float _1843 = _1834.y;
                float _1846 = _1836.y;
                float _1851 = _1825.x;
                float _1852 = _1828.x;
                float _1854 = _1825.y;
                float _1856 = _1828.y;
                _1891 = _1771 ? 1.0f : (((((_1851 * _1852) * _57.SampleCmpLevelZero(_27, float3(_1838 + float2(_1839, _1840), _387).xy, _1761)) + ((_1854 * _1852) * _57.SampleCmpLevelZero(_27, float3(_1838 + float2(_1843, _1840), _387).xy, _1761))) + ((_1851 * _1856) * _57.SampleCmpLevelZero(_27, float3(_1838 + float2(_1839, _1846), _387).xy, _1761))) + ((_1854 * _1856) * _57.SampleCmpLevelZero(_27, float3(_1838 + float2(_1843, _1846), _387).xy, _1761)));
                _1892 = _1771;
            }
            else
            {
                _1891 = 1.0f;
                _1892 = false;
            }
            _1893 = _1891;
            _1894 = _1892;
        }
        else
        {
            _1893 = 1.0f;
            _1894 = false;
        }
        float _2094;
        float _2095;
        if ((_1676 < 1.0f) || (_56_m8.x > 0.5f))
        {
            float _1905 = 1.0f - clamp(dot(_678, _54_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1922 = float4((_451 - (_54_m0.xyz * (_1905 * _56_m24.x))) + (_678 * (_1905 * _56_m24.y)), 1.0f);
            float4 _1923 = mul(_56_m23, _1922);
            float2 _1924 = _1923.xy;
            float _2092;
            if (all(bool2(_1924.x > 0.0f.xx.x, _1924.y > 0.0f.xx.y)) && all(bool2(_1924.x < 1.0f.xx.x, _1924.y < 1.0f.xx.y)))
            {
                uint _1943 = clamp(uint((floor(_1923.y * _56_m25.z) + _1923.x) * _56_m25.y), 0u, 127u);
                uint _1947 = asuint(_56_m27[_1943].x);
                float2 _1948 = spvUnpackHalf2x16(_1947);
                float _1949 = _1948.x;
                float _2091;
                if (_1949 >= 0.0f)
                {
                    float4x4 _1958 = _56_m22;
                    _1958[0].w = _56_m27[_1943].y;
                    _1958[1].w = _56_m27[_1943].z;
                    _1958[2].w = _56_m27[_1943].w;
                    float4 _1965 = mul(_1958, _1922);
                    float3 _1966 = _1965.xyz;
                    float _2090;
                    if (all(bool3(_1966.x > 0.0f.xxx.x, _1966.y > 0.0f.xxx.y, _1966.z > 0.0f.xxx.z)) && all(bool3(_1966.x < 1.0f.xxx.x, _1966.y < 1.0f.xxx.y, _1966.z < 1.0f.xxx.z)))
                    {
                        float _1983 = _1965.z;
                        float2 _1989 = float4((_1965.xy * _56_m24.zw) + float2(_1949, spvUnpackHalf2x16(_1947 >> 16u).x), _1983, 1.0f).xy * _56_m26.zw;
                        float2 _1991 = floor(_1989 + 0.5f.xx);
                        float2 _1992 = _1989 - _1991;
                        float _1993 = _1992.x;
                        float _1994 = _1993 + 0.5f;
                        float _1996 = (_1994 * _1994) * 0.5f;
                        float _1999 = min(_1993, 0.0f);
                        float _2003 = max(_1993, 0.0f);
                        float4 _2007 = float4(_1996 - _1993, (1.0f - _1993) - (_1999 * _1999), (_1993 + 1.0f) - (_2003 * _2003), _1996) * 0.44444000720977783203125f;
                        float _2008 = _1992.y;
                        float _2009 = _2008 + 0.5f;
                        float _2011 = (_2009 * _2009) * 0.5f;
                        float _2014 = min(_2008, 0.0f);
                        float _2018 = max(_2008, 0.0f);
                        float4 _2022 = float4(_2011 - _2008, (1.0f - _2008) - (_2014 * _2014), (_2008 + 1.0f) - (_2018 * _2018), _2011) * 0.44444000720977783203125f;
                        float2 _2025 = _2007.xz + _2007.yw;
                        float2 _2028 = _2022.xz + _2022.yw;
                        float2 _2034 = ((_2007.yw / _2025) + float2(-1.5f, 0.5f)) * _56_m26.xx;
                        float2 _2036 = ((_2022.yw / _2028) + float2(-1.5f, 0.5f)) * _56_m26.yy;
                        float2 _2038 = _1991 * _56_m26.xy;
                        float _2039 = _2034.x;
                        float _2040 = _2036.x;
                        float2 _2042 = _2038 + float2(_2039, _2040);
                        float _2043 = _2034.y;
                        float2 _2045 = _2038 + float2(_2043, _2040);
                        float _2046 = _2036.y;
                        float2 _2048 = _2038 + float2(_2039, _2046);
                        float2 _2050 = _2038 + float2(_2043, _2046);
                        float _2051 = _2025.x;
                        float _2052 = _2028.x;
                        float _2054 = _2025.y;
                        float _2056 = _2028.y;
                        _2090 = ((((_2051 * _2052) * _60.SampleCmpLevelZero(_27, float3(_2042, _387).xy, _1983)) + ((_2054 * _2052) * _60.SampleCmpLevelZero(_27, float3(_2045, _387).xy, _1983))) + ((_2051 * _2056) * _60.SampleCmpLevelZero(_27, float3(_2048, _387).xy, _1983))) + ((_2054 * _2056) * _60.SampleCmpLevelZero(_27, float3(_2050, _387).xy, _1983));
                    }
                    else
                    {
                        _2090 = 1.0f;
                    }
                    _2091 = _2090;
                }
                else
                {
                    _2091 = 1.0f;
                }
                _2092 = _2091;
            }
            else
            {
                _2092 = 1.0f;
            }
            _2094 = _1894 ? _2092 : _1893;
            _2095 = _2092;
        }
        else
        {
            _2094 = _1893;
            _2095 = 1.0f;
        }
        float _2098 = lerp(lerp(_2095, _2094, _1676), min(_2095, _2094), _56_m8.x);
        float _2147;
        if (_2098 > 0.001000000047497451305389404296875f)
        {
            float3 _2105 = _451 - _18_m65.xyz;
            float2 _2115 = (_2105 + (_18_m68.xyz * _2105.y)).xz * _18_m66.z;
            float2 _2122 = _18_m67.xy * _18_m75.w;
            _2147 = _2098 * lerp(1.0f, lerp(_59.SampleLevel(_25, _2115 + _2122, 0.0f), _59.SampleLevel(_25, (_2115 * _18_m67.w) + _2122, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_2105.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _2147 = _2098;
        }
        _2152 = float2(lerp(_2147, _56_m7.z, _56_m7.w), _2147);
        break;
    } while(false);
    float _2157 = lerp(1.0f, min(1.0f, _2152.x), _56_m6.x);
    float4 _2296;
    if (_2157 > 0.001000000047497451305389404296875f)
    {
        float3 _2167 = -_54_m0.xyz;
        float _2172 = dot(_2167, _1360);
        float3 _2174 = _1360 - (_2167 * _2172);
        bool3 _2176 = (_2172 < _54_m4.z).xxx;
        float3 _2184 = normalize((_2167 * _54_m4.z) + ((_2174 * rsqrt(max(6.103515625e-05f, dot(_2174, _2174)))) * _54_m4.y));
        float3 _2185 = float3(_2176.x ? _2184.x : _1360.x, _2176.y ? _2184.y : _1360.y, _2176.z ? _2184.z : _1360.z);
        float3 _2189 = _2185 + _488;
        float3 _2193 = _2189 * rsqrt(max(6.103515625e-05f, dot(_2189, _2189)));
        float _2194 = clamp(dot(_2185, _678), 0.0f, 1.0f);
        float _2196 = clamp(dot(_678, _2193), 0.0f, 1.0f);
        float _2199 = clamp(_765, 0.0f, 1.0f);
        float _2200 = _571 * _571;
        float _2201 = _2200 * _2200;
        float _2222 = (((_2196 * _2201) - _2196) * _2196) + 1.0f;
        float _2225 = 1.0f - clamp(dot(_488, _2193), 0.0f, 1.0f);
        float _2226 = _2225 * _2225;
        float _2228 = (_2225 * _2226) * _2226;
        float _2252 = 1.0f - _571;
        float _2259 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2252 * (1.04997003078460693359375f + (_2252 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2252))))));
        float _2260 = 1.0f - _2259;
        float3 _2263 = _883 + ((1.0f.xxx - _883) * 0.0476190485060214996337890625f);
        float3 _2282 = (clamp((clamp((min(((_883 * (1.0f - _2228)) + _2228.xxx) * ((_2201 / (_2222 * _2222)) * (0.5f / (((_2194 * sqrt(((((-_2199) * _2201) + _2199) * _2199) + _2201)) + (_2199 * sqrt(((((-_2194) * _2201) + _2194) * _2194) + _2201))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2263 * (((_63.SampleLevel(_24, (float2(_2199, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_2194, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2259) / _2260)) * _2263) / (1.0f.xxx - (_2263 * _2260)))) * _54_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_741, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2194) + ((_879 * 1.0f) * _2194);
        float3 _2283 = _2282 * _54_m1.xyz;
        float3 _2294 = lerp(_2283, _2283 * _61.SampleBias(_24, float2(_2157, 0.5f), _18_m16).xyz, (1.0f - _2157).xxx) * 1.0f;
        _2296 = float4(_2294.x, _2294.y, _2294.z, 0.0f.xxxx.w);
    }
    else
    {
        _2296 = 0.0f.xxxx;
    }
    float2 _2298 = floor(_1369 * 0.03125f);
    int _2306 = int((_2298.x + (_2298.y * _52_m5)) * 8.0f);
    float _2313 = floor(_934 - (_18_m3.y * _52_m11));
    float _2317 = clamp(_2313, 0.0f, _52_m7 - 1.0f);
    int _2319 = int(_2317 * 8.0f);
    float3 _2321;
    float _2324;
    _2321 = 0.0f.xxx;
    _2324 = 1.0f;
    float3 _2322;
    float _2325;
    [loop]
    for (int _2326 = 0; _2326 <= 7; _2321 = _2322, _2324 = _2325, _2326++)
    {
        uint _2344 = (_2313 <= _2317) ? (_33.Load(uint(_2306 + _2326) * 4 + 0) & _33.Load(uint((_18_m21.y + _2319) + _2326) * 4 + 0)) : 0u;
        uint _2345 = uint(_2326);
        float3 _2349;
        _2325 = _2324;
        _2349 = 0.0f.xxx;
        uint _2352;
        float _2347;
        float3 _2350;
        [loop]
        for (uint _2351 = _2344; _2351 != 0u; _2325 = _2347, _2349 = _2350, _2351 = _2352)
        {
            uint _2356 = firstbitlow(_2351);
            _2352 = _2351 ^ (1u << (_2356 & 31u));
            int _2362 = int((32u * _2345) + _2356) * 8;
            int _2365 = _2362 + 1;
            int _2368 = _2362 + 2;
            int _2371 = _2362 + 3;
            int _2374 = _2362 + 5;
            int _2377 = _2362 + 6;
            int _2380 = _2362 + 7;
            uint _2384 = uint(_54_m6[_2374].w);
            float _2459;
            if ((_2384 & 1u) == 1u)
            {
                uint _2390 = asuint(_54_m6[_2374].x);
                uint _2397 = asuint(_54_m6[_2374].y);
                uint _2404 = asuint(_54_m6[_2374].z);
                uint _2411 = asuint(_54_m6[_2377].x);
                uint _2418 = asuint(_54_m6[_2377].y);
                uint _2425 = asuint(_54_m6[_2377].z);
                float3 _2444 = abs(mul(float4(_451 - _54_m6[_2365].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2390).x, spvUnpackHalf2x16(_2404).x, spvUnpackHalf2x16(_2418).x, 0.0f), float4(spvUnpackHalf2x16(_2390 >> 16u).x, spvUnpackHalf2x16(_2404 >> 16u).x, spvUnpackHalf2x16(_2418 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2397).x, spvUnpackHalf2x16(_2411).x, spvUnpackHalf2x16(_2425).x, 0.0f), float4(spvUnpackHalf2x16(_2397 >> 16u).x, spvUnpackHalf2x16(_2411 >> 16u).x, spvUnpackHalf2x16(_2425 >> 16u).x, 0.0f))).xyz);
                float _2451 = _54_m6[_2380].x * 0.5f;
                float _2457 = 1.0f - clamp((max(max(_2444.x, _2444.y), _2444.z) - (_2451 + 0.5f)) / (0.5f - _2451), 0.0f, 1.0f);
                _2459 = _2457 * _2457;
            }
            else
            {
                _2459 = 1.0f;
            }
            bool _2463 = _54_m6[_2371].z > 0.5f;
            if ((false || (_2459 < 0.001000000047497451305389404296875f)) || _2463)
            {
                _2347 = _2325;
                _2350 = _2349;
                continue;
            }
            float _3574;
            float3 _3575;
            if (_54_m6[_2362].w < 1.5f)
            {
                float3 _2951 = float3(0.100000001490116119384765625f, _571, 1.0f);
                float _2960 = (0.5f + (0.5f * _54_m6[_2368].y)) - abs(_54_m6[_2368].x);
                float _2961 = _54_m6[_2368].y - _2960;
                float _2968 = abs(max((1.0f - abs(_2960)) - abs(_2961), 0.00048828125f));
                float3 _2972 = normalize(float3(_2960, _2961, (_54_m6[_2368].x >= 0.0f) ? _2968 : (-_2968)));
                float3 _2973 = _54_m6[_2365].xyz - _451;
                float _2974 = dot(_2973, _2973);
                float _2975 = rsqrt(_2974);
                float3 _2976 = _2973 * _2975;
                float _2980 = clamp(_54_m6[_2380].y * _2975, 0.0f, 1.0f);
                int _2985 = int(_54_m6[_2380].w);
                float3 _2986 = _2972 * _54_m6[_2368].z;
                float3 _2987 = _2986 * 0.5f;
                float3 _2988 = _2973 - _2987;
                float3 _2989 = _2973 + _2987;
                bool _2992 = (uint(_54_m6[_2362].w) & 1u) == 0u;
                bool _2995 = _2992 || ((_2384 & 2u) != 0u);
                bool _2998 = (!_2992) && (_54_m6[_2368].z > 0.0f);
                float _3017;
                float _3018;
                if (_2998)
                {
                    float _3002 = length(_2988);
                    float _3003 = length(_2989);
                    _3017 = clamp(0.5f * ((dot(_678, _2988) / _3002) + (dot(_678, _2989) / _3003)), 0.0f, 1.0f);
                    _3018 = 1.0f / ((((_3002 * _3003) + dot(_2988, _2989)) * 0.5f) + 1.0f);
                }
                else
                {
                    _3017 = clamp(dot(_678, _2976), 0.0f, 1.0f);
                    _3018 = 1.0f;
                }
                float _3040;
                if (_54_m6[_2377].w < 0.0f)
                {
                    float _3034 = _2974 * (_54_m6[_2365].w * _54_m6[_2365].w);
                    float _3037 = clamp(1.0f - (_3034 * _3034), 0.0f, 1.0f);
                    _3040 = lerp(1.0f / (_2974 + 1.0f), _3018, float(_2998)) * (_3037 * _3037);
                }
                else
                {
                    float3 _3023 = _2973 * _54_m6[_2365].w;
                    _3040 = _3018 * pow(1.0f - clamp(dot(_3023, _3023), 0.0f, 1.0f), _54_m6[_2377].w);
                }
                float _3046 = clamp((dot(_2976, -_2972) - _54_m6[_2368].z) * _54_m6[_2368].w, 0.0f, 1.0f);
                float _3050 = _3040 * lerp(1.0f, _3046 * _3046, float(_2992));
                float _3150;
                if ((!_2998) && (_2985 >= 0))
                {
                    uint _3056 = uint(_2985);
                    float2 _3143;
                    [branch]
                    if (_2992)
                    {
                        float4 _3133 = mul(_72_m1[_3056], _455);
                        _3143 = _72_m0[_3056].xy + (clamp(_3133.xy / _3133.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_3056].zw);
                    }
                    else
                    {
                        float3 _3070 = mul(float4(-_2973, 0.0f), _72_m1[_3056]).xyz;
                        float3 _394 = _3070;
                        float3 _393 = _3070;
                        float3 _392 = abs(_3070);
                        uint _3079 = uint(int(_392.y > _392.x));
                        uint _3085 = (_392.z > _392[_3079]) ? 2u : _3079;
                        uint _3091 = (_3085 * 2u) + uint(_393[_3085] < 0.0f);
                        float _3095 = abs(_394[_3091 / 2u]);
                        float _3115 = 0.5f - (0.000244140625f / _72_m0[_3056].w);
                        _3143 = _72_m0[_3056].xy + (clamp(float2((float(_3091) + ((((_394[uint(_368[_3091].x)] * _369[_3091].x) / _3095) * _3115) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_368[_3091].y)] * _369[_3091].y) / _3095) * _3115)), 0.0f.xx, 1.0f.xx) * _72_m0[_3056].zw);
                    }
                    _3150 = _3050 * _70.SampleLevel(_24, _3143, 0.0f).x;
                }
                else
                {
                    _3150 = _3050;
                }
                bool _3151 = _3150 > 0.0f;
                float _3439;
                if (_3151)
                {
                    int _3203;
                    if (_2995)
                    {
                        _3203 = int(_54_m6[_2371].x);
                    }
                    else
                    {
                        uint _3158 = asuint(_54_m6[_2368].w);
                        uint _3160 = asuint(_54_m6[_2371].x);
                        float3 _3161 = _451 - _54_m6[_2365].xyz;
                        float3 _3162 = abs(_3161);
                        float _3163 = _3162.x;
                        float _3164 = _3162.y;
                        float _3166 = _3162.z;
                        int _3198;
                        if ((_3163 > _3164) && (_3163 > _3166))
                        {
                            _3198 = int((_3161.x > 0.0f) ? (_3158 >> 24u) : ((_3158 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3190;
                            if (_3164 > _3166)
                            {
                                _3190 = int((_3161.y > 0.0f) ? ((_3158 >> 8u) & 255u) : (_3158 & 255u));
                            }
                            else
                            {
                                _3190 = int((_3161.z > 0.0f) ? ((_3160 >> 8u) & 255u) : (_3160 & 255u));
                            }
                            _3198 = _3190;
                        }
                        _3203 = (_3198 < 80) ? _3198 : (-1);
                    }
                    float4 _3220 = mul(_56_m10[_3203], float4((_451 - ((-_2976) * _56_m11[_3203].x)) + (_678 * (_56_m11[_3203].y * 5.0f)), 1.0f));
                    float _3221 = _3220.w;
                    float3 _3224 = _3220.xyz / _3221.xxx;
                    float2 _3225 = _3224.xy;
                    float3 _3233 = _3224.xyz;
                    bool3 _3234 = bool3(_3233.x <= 0.0f.xxx.x, _3233.y <= 0.0f.xxx.y, _3233.z <= 0.0f.xxx.z);
                    bool3 _3235 = bool3(_3233.x >= 1.0f.xxx.x, _3233.y >= 1.0f.xxx.y, _3233.z >= 1.0f.xxx.z);
                    float _3238 = _3224.z;
                    float2 _3249 = ((_3225 * (_56_m12[_3203].zw - _56_m12[_3203].xy)) + _56_m12[_3203].xy).xy * _56_m13.zw;
                    float2 _3251 = floor(_3249 + 0.5f.xx);
                    float2 _3252 = _3249 - _3251;
                    float _3253 = _3252.x;
                    float _3254 = _3253 + 0.5f;
                    float _3255 = _3254 * _3254;
                    float _3258 = 1.0f - _3253;
                    float _3259 = min(_3253, 0.0f);
                    float _3262 = _3253 + 1.0f;
                    float _3263 = max(_3253, 0.0f);
                    float _3274 = _3252.y;
                    float _3275 = _3274 + 0.5f;
                    float _3276 = _3275 * _3275;
                    float _3279 = 1.0f - _3274;
                    float _3280 = min(_3274, 0.0f);
                    float _3283 = _3274 + 1.0f;
                    float _3284 = max(_3274, 0.0f);
                    float3 _3296 = float3(0.1599999964237213134765625f * _3258, 0.1599999964237213134765625f * ((_3262 - (_3263 * _3263)) + 1.0f), _3255 * 0.07999999821186065673828125f);
                    float3 _3297 = float3(0.1599999964237213134765625f * ((_3255 * 0.5f) - _3253), 0.1599999964237213134765625f * ((_3258 - (_3259 * _3259)) + 1.0f), 0.1599999964237213134765625f * _3262) + _3296;
                    float3 _3299 = float3(0.1599999964237213134765625f * _3279, 0.1599999964237213134765625f * ((_3283 - (_3284 * _3284)) + 1.0f), _3276 * 0.07999999821186065673828125f);
                    float3 _3300 = float3(0.1599999964237213134765625f * ((_3276 * 0.5f) - _3274), 0.1599999964237213134765625f * ((_3279 - (_3280 * _3280)) + 1.0f), 0.1599999964237213134765625f * _3283) + _3299;
                    float3 _3306 = ((_3296 / _3297) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                    float3 _3308 = ((_3299 / _3300) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                    float2 _3310 = _3251 * _56_m13.xy;
                    float _3311 = _3306.x;
                    float _3312 = _3308.x;
                    float _3315 = _3306.y;
                    float _3318 = _3306.z;
                    float _3321 = _3308.y;
                    float _3328 = _3308.z;
                    float _3335 = _3297.x;
                    float _3336 = _3300.x;
                    float _3338 = _3297.y;
                    float _3340 = _3297.z;
                    float _3342 = _3300.y;
                    float _3346 = _3300.z;
                    float _3404 = (((((((_3335 * _3336) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3311, _3312), _387).xy, _3238)) + ((_3338 * _3336) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3315, _3312), _387).xy, _3238))) + ((_3340 * _3336) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3318, _3312), _387).xy, _3238))) + ((_3335 * _3342) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3311, _3321), _387).xy, _3238))) + ((_3338 * _3342) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3315, _3321), _387).xy, _3238))) + ((_3340 * _3342) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3318, _3321), _387).xy, _3238))) + ((_3335 * _3346) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3311, _3328), _387).xy, _3238));
                    float2 _3425 = min(_3225, 1.0f.xx - _3225);
                    _3439 = (_3203 >= 0) ? lerp(1.0f, (any(bool3(_3234.x || _3235.x, _3234.y || _3235.y, _3234.z || _3235.z)) || ((asuint(_3238) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3404 + ((_3338 * _3346) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3315, _3328), _387).xy, _3238))) + ((_3340 * _3346) * _58.SampleCmpLevelZero(_27, float3(_3310 + float2(_3318, _3328), _387).xy, _3238))), _2995 ? min(_56_m11[_3203].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_3203].z - _3221) * 0.25f, min(_3425.x, _3425.y)))) : _56_m11[_3203].w) : 1.0f;
                }
                else
                {
                    _3439 = 1.0f;
                }
                float3 _3462;
                float3 _3463;
                if (_2998)
                {
                    float3 _3442 = _2951 * _2951;
                    float _3451 = dot(_1360, _2986);
                    _3462 = _3442 / clamp(_3442 + (0.5f * clamp(_54_m6[_2368].z * _2975, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3463 = normalize(_2988 + (_2986 * clamp(dot(_2988, (_1360 * _3451) - _2986) / ((_54_m6[_2368].z * _54_m6[_2368].z) - (_3451 * _3451)), 0.0f, 1.0f)));
                }
                else
                {
                    _3462 = 1.0f.xxx;
                    _3463 = _2976;
                }
                float3 _3464 = _3463 + _488;
                float3 _3468 = _3464 * rsqrt(max(6.103515625e-05f, dot(_3464, _3464)));
                float3 _3573;
                if (_3151)
                {
                    float _3471 = clamp(_3017, 0.0f, 1.0f);
                    float _3473 = clamp(dot(_678, _3468), 0.0f, 1.0f);
                    float _3475 = clamp(dot(_488, _3468), 0.0f, 1.0f);
                    float _3476 = clamp(_765, 0.0f, 1.0f);
                    float _3477 = _571 * _571;
                    float _3487;
                    if (_2980 > 0.0f)
                    {
                        _3487 = clamp(_3477 + ((_2980 * _2980) / ((_3475 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3487 = _3477;
                    }
                    float _3488 = _3487 * _3487;
                    float _3509 = (((_3473 * _3488) - _3473) * _3473) + 1.0f;
                    float _3514 = 1.0f - _3475;
                    float _3515 = _3514 * _3514;
                    float _3517 = (_3514 * _3515) * _3515;
                    float _3541 = 1.0f - _571;
                    float _3548 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3541 * (1.04997003078460693359375f + (_3541 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3541))))));
                    float _3549 = 1.0f - _3548;
                    float3 _3552 = _883 + ((1.0f.xxx - _883) * 0.0476190485060214996337890625f);
                    float3 _3572 = ((clamp((min(((_883 * (1.0f - _3517)) + _3517.xxx) * (((_3488 / (_3509 * _3509)) * _3462.y) * (0.5f / (((_3471 * sqrt(((((-_3476) * _3488) + _3476) * _3476) + _3488)) + (_3476 * sqrt(((((-_3471) * _3488) + _3471) * _3471) + _3488))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3552 * (((_63.SampleLevel(_24, (float2(_3476, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x * _63.SampleLevel(_24, (float2(_3471, _571) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3548) / _3549)) * _3552) / (1.0f.xxx - (_3552 * _3549)))) * _54_m6[_2380].z, 0.0f.xxx, 1000.0f.xxx) * _3017) + ((_879 * _3462.z) * _3017)) * (((_54_m6[_2362].xyz * _3150) * _3439) * _2459);
                    _3573 = _3572;
                }
                else
                {
                    _3573 = 0.0f.xxx;
                }
                _3574 = _2325;
                _3575 = _3573;
            }
            else
            {
                float _2949;
                do
                {
                    if (_2463)
                    {
                        _2949 = 1.0f;
                        break;
                    }
                    float _2483 = (0.5f + (0.5f * _54_m6[_2368].y)) - abs(_54_m6[_2368].x);
                    float _2484 = _54_m6[_2368].y - _2483;
                    float _2491 = abs(max((1.0f - abs(_2483)) - abs(_2484), 0.00048828125f));
                    float3 _2495 = normalize(float3(_2483, _2484, (_54_m6[_2368].x >= 0.0f) ? _2491 : (-_2491)));
                    float3 _2496 = _54_m6[_2365].xyz - _451;
                    float _2497 = dot(_2496, _2496);
                    float3 _2499 = _2496 * rsqrt(_2497);
                    int _2502 = int(_54_m6[_2380].w);
                    float3 _2504 = (_2495 * _54_m6[_2368].z) * 0.5f;
                    float3 _2505 = _2496 - _2504;
                    float3 _2506 = _2496 + _2504;
                    bool _2509 = (uint(_54_m6[_2362].w) & 1u) == 0u;
                    bool _2512 = _2509 || ((_2384 & 2u) != 0u);
                    bool _2515 = (!_2509) && (_54_m6[_2368].z > 0.0f);
                    float _2527;
                    if (_2515)
                    {
                        _2527 = 1.0f / ((((length(_2505) * length(_2506)) + dot(_2505, _2506)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2527 = 1.0f;
                    }
                    float _2549;
                    if (_54_m6[_2377].w < 0.0f)
                    {
                        float _2543 = _2497 * (_54_m6[_2365].w * _54_m6[_2365].w);
                        float _2546 = clamp(1.0f - (_2543 * _2543), 0.0f, 1.0f);
                        _2549 = lerp(1.0f / (_2497 + 1.0f), _2527, float(_2515)) * (_2546 * _2546);
                    }
                    else
                    {
                        float3 _2532 = _2496 * _54_m6[_2365].w;
                        _2549 = _2527 * pow(1.0f - clamp(dot(_2532, _2532), 0.0f, 1.0f), _54_m6[_2377].w);
                    }
                    float _2555 = clamp((dot(_2499, -_2495) - _54_m6[_2368].z) * _54_m6[_2368].w, 0.0f, 1.0f);
                    float _2559 = _2549 * lerp(1.0f, _2555 * _2555, float(_2509));
                    float _2659;
                    if ((!_2515) && (_2502 >= 0))
                    {
                        uint _2565 = uint(_2502);
                        float2 _2652;
                        [branch]
                        if (_2509)
                        {
                            float4 _2642 = mul(_72_m1[_2565], _455);
                            _2652 = _72_m0[_2565].xy + (clamp(_2642.xy / _2642.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2565].zw);
                        }
                        else
                        {
                            float3 _2579 = mul(float4(-_2496, 0.0f), _72_m1[_2565]).xyz;
                            float3 _397 = _2579;
                            float3 _396 = _2579;
                            float3 _395 = abs(_2579);
                            uint _2588 = uint(int(_395.y > _395.x));
                            uint _2594 = (_395.z > _395[_2588]) ? 2u : _2588;
                            uint _2600 = (_2594 * 2u) + uint(_396[_2594] < 0.0f);
                            float _2604 = abs(_397[_2600 / 2u]);
                            float _2624 = 0.5f - (0.000244140625f / _72_m0[_2565].w);
                            _2652 = _72_m0[_2565].xy + (clamp(float2((float(_2600) + ((((_397[uint(_368[_2600].x)] * _369[_2600].x) / _2604) * _2624) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_397[uint(_368[_2600].y)] * _369[_2600].y) / _2604) * _2624)), 0.0f.xx, 1.0f.xx) * _72_m0[_2565].zw);
                        }
                        _2659 = _2559 * _70.SampleLevel(_24, _2652, 0.0f).x;
                    }
                    else
                    {
                        _2659 = _2559;
                    }
                    float _2948;
                    if (_2659 > 0.0f)
                    {
                        int _2712;
                        if (_2512)
                        {
                            _2712 = int(_54_m6[_2371].x);
                        }
                        else
                        {
                            uint _2667 = asuint(_54_m6[_2368].w);
                            uint _2669 = asuint(_54_m6[_2371].x);
                            float3 _2670 = _451 - _54_m6[_2365].xyz;
                            float3 _2671 = abs(_2670);
                            float _2672 = _2671.x;
                            float _2673 = _2671.y;
                            float _2675 = _2671.z;
                            int _2707;
                            if ((_2672 > _2673) && (_2672 > _2675))
                            {
                                _2707 = int((_2670.x > 0.0f) ? (_2667 >> 24u) : ((_2667 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2699;
                                if (_2673 > _2675)
                                {
                                    _2699 = int((_2670.y > 0.0f) ? ((_2667 >> 8u) & 255u) : (_2667 & 255u));
                                }
                                else
                                {
                                    _2699 = int((_2670.z > 0.0f) ? ((_2669 >> 8u) & 255u) : (_2669 & 255u));
                                }
                                _2707 = _2699;
                            }
                            _2712 = (_2707 < 80) ? _2707 : (-1);
                        }
                        float4 _2729 = mul(_56_m10[_2712], float4((_451 - ((-_2499) * _56_m11[_2712].x)) + (_678 * (_56_m11[_2712].y * 5.0f)), 1.0f));
                        float _2730 = _2729.w;
                        float3 _2733 = _2729.xyz / _2730.xxx;
                        float2 _2734 = _2733.xy;
                        float3 _2742 = _2733.xyz;
                        bool3 _2743 = bool3(_2742.x <= 0.0f.xxx.x, _2742.y <= 0.0f.xxx.y, _2742.z <= 0.0f.xxx.z);
                        bool3 _2744 = bool3(_2742.x >= 1.0f.xxx.x, _2742.y >= 1.0f.xxx.y, _2742.z >= 1.0f.xxx.z);
                        float _2747 = _2733.z;
                        float2 _2758 = ((_2734 * (_56_m12[_2712].zw - _56_m12[_2712].xy)) + _56_m12[_2712].xy).xy * _56_m13.zw;
                        float2 _2760 = floor(_2758 + 0.5f.xx);
                        float2 _2761 = _2758 - _2760;
                        float _2762 = _2761.x;
                        float _2763 = _2762 + 0.5f;
                        float _2764 = _2763 * _2763;
                        float _2767 = 1.0f - _2762;
                        float _2768 = min(_2762, 0.0f);
                        float _2771 = _2762 + 1.0f;
                        float _2772 = max(_2762, 0.0f);
                        float _2783 = _2761.y;
                        float _2784 = _2783 + 0.5f;
                        float _2785 = _2784 * _2784;
                        float _2788 = 1.0f - _2783;
                        float _2789 = min(_2783, 0.0f);
                        float _2792 = _2783 + 1.0f;
                        float _2793 = max(_2783, 0.0f);
                        float3 _2805 = float3(0.1599999964237213134765625f * _2767, 0.1599999964237213134765625f * ((_2771 - (_2772 * _2772)) + 1.0f), _2764 * 0.07999999821186065673828125f);
                        float3 _2806 = float3(0.1599999964237213134765625f * ((_2764 * 0.5f) - _2762), 0.1599999964237213134765625f * ((_2767 - (_2768 * _2768)) + 1.0f), 0.1599999964237213134765625f * _2771) + _2805;
                        float3 _2808 = float3(0.1599999964237213134765625f * _2788, 0.1599999964237213134765625f * ((_2792 - (_2793 * _2793)) + 1.0f), _2785 * 0.07999999821186065673828125f);
                        float3 _2809 = float3(0.1599999964237213134765625f * ((_2785 * 0.5f) - _2783), 0.1599999964237213134765625f * ((_2788 - (_2789 * _2789)) + 1.0f), 0.1599999964237213134765625f * _2792) + _2808;
                        float3 _2815 = ((_2805 / _2806) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                        float3 _2817 = ((_2808 / _2809) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                        float2 _2819 = _2760 * _56_m13.xy;
                        float _2820 = _2815.x;
                        float _2821 = _2817.x;
                        float _2824 = _2815.y;
                        float _2827 = _2815.z;
                        float _2830 = _2817.y;
                        float _2837 = _2817.z;
                        float _2844 = _2806.x;
                        float _2845 = _2809.x;
                        float _2847 = _2806.y;
                        float _2849 = _2806.z;
                        float _2851 = _2809.y;
                        float _2855 = _2809.z;
                        float _2913 = (((((((_2844 * _2845) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2820, _2821), _387).xy, _2747)) + ((_2847 * _2845) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2824, _2821), _387).xy, _2747))) + ((_2849 * _2845) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2827, _2821), _387).xy, _2747))) + ((_2844 * _2851) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2820, _2830), _387).xy, _2747))) + ((_2847 * _2851) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2824, _2830), _387).xy, _2747))) + ((_2849 * _2851) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2827, _2830), _387).xy, _2747))) + ((_2844 * _2855) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2820, _2837), _387).xy, _2747));
                        float2 _2934 = min(_2734, 1.0f.xx - _2734);
                        _2948 = (_2712 >= 0) ? lerp(1.0f, (any(bool3(_2743.x || _2744.x, _2743.y || _2744.y, _2743.z || _2744.z)) || ((asuint(_2747) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2913 + ((_2847 * _2855) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2824, _2837), _387).xy, _2747))) + ((_2849 * _2855) * _58.SampleCmpLevelZero(_27, float3(_2819 + float2(_2827, _2837), _387).xy, _2747))), _2512 ? min(_56_m11[_2712].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_2712].z - _2730) * 0.25f, min(_2934.x, _2934.y)))) : _56_m11[_2712].w) : 1.0f;
                    }
                    else
                    {
                        _2948 = 1.0f;
                    }
                    _2949 = _2948;
                    break;
                } while(false);
                _3574 = _2325 * _2949;
                _3575 = 0.0f.xxx;
            }
            _2347 = _3574;
            _2350 = _2349 + _3575;
        }
        _2322 = _2321 + _2349;
    }
    float3 _3580 = ((((float3(_1340, _1345, _1350) * (_879 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _542, _45_m4)) * _18_m22.x) + (((((_1633 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_883 * _897.x) + (clamp(50.0f * _883.y, 0.0f, 1.0f) * _897.y).xxx)) * 1.0f)) + (((((((lerp(_45_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _643) + ((((_45_m59.xyz * _633.y) + (_45_m60.xyz * _633.z)) + (_45_m61.xyz * _633.w)) * _45_m56)) * lerp(_655, 1.0f.xxx, _45_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _45_m46) + (_18_m20.y * _45_m46))) * _45_m57) + (lerp(float4(_655, 1.0f).xyz, _45_m86.xyz, (_45_m86.w * _722).xxx).xyz * lerp(_695, _695 * _8.y, _45_m81)));
    float3 _3586 = _3580 + lerp((_2296.xyz + ((_2321 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2324)).xyz, (_825.xyz * (_45_m72.xyz * _45_m70)).xyz, clamp((1.0f - _741) / max(1.0f - _45_m69, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3587 = float4(_3586.x, _3586.y, _3586.z, _389.w);
    _3587.w = _741;
    float _3604 = _451.y * _18_m46.w;
    float _3609 = max(0.00999999977648258209228515625f, _3604 + _18_m47.w);
    float3 _3623 = exp(_18_m45.xyz * ((-max(0.0f, (_489 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3609)) / _3609) * exp(_3604 + _18_m48.w))));
    float _3626 = dot(_766, _18_m44.xyz);
    float _3632 = _18_m45.w * _18_m45.w;
    float _3636 = (1.0f + _3632) - ((2.0f * _18_m45.w) * _3626);
    float3 _3966;
    float _3967;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3794 = (uint3(int3(int(_933.x), int(_933.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3795 = _3794.y;
        uint _3796 = _3794.z;
        uint _3799 = _3794.x + (_3795 * _3796);
        uint _3801 = _3795 + (_3796 * _3799);
        uint _3803 = _3796 + (_3799 * _3801);
        uint _3805 = _3799 + (_3801 * _3803);
        float _3827 = dot(_766, -_16_m0[2].xyz);
        float3 _3837 = _451 - _16_m11.xyz;
        float _3839 = (_18_m55.w * ((_3827 > 5.9604644775390625e-08f) ? (1.0f / _3827) : 0.0f)) * (1.0f / _489);
        float _3840 = _3837.y;
        float _3841 = _3839 * _3840;
        float _3843 = _16_m11.y + _3841;
        float _3844 = _3840 - _3841;
        float _3846 = (1.0f - _3839) * _489;
        float _3860 = max(-127.0f, _18_m49.z * _3844);
        float _3884 = max(-127.0f, _18_m52.x * _3844);
        float _3895 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3843 - _18_m49.x)))) * ((abs(_3860) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3860)) / _3860) : (0.693147182464599609375f - (0.2402265071868896484375f * _3860)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3843 - _18_m52.z)))) * ((abs(_3884) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3884)) / _3884) : (0.693147182464599609375f - (0.2402265071868896484375f * _3884))));
        float _3917 = clamp((_489 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3920 = clamp((max(clamp(exp2(-(_3895 * _3846)), 0.0f, 1.0f), _18_m51.w) + clamp((_489 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3917, 0.0f, 1.0f);
        float4 _3960 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_24, float3((_1369 + ((((float3(uint3(_3805, _3801 + (_3803 * _3805), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_934 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_934 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3966 = _3960.xyz + (((_18_m51.xyz * (1.0f - _3920)) + (((_18_m54.xyz * pow(clamp(dot(_488, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3895 * max(_3846 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3917))) * _3960.w);
        _3967 = _3960.w * _3920;
    }
    else
    {
        float3 _3666 = _451 - _16_m11.xyz;
        float _3668 = _3666.y;
        float _3682 = max(-127.0f, _18_m49.z * _3668);
        float _3706 = max(-127.0f, _18_m52.x * _3668);
        float _3717 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3682) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3682)) / _3682) : (0.693147182464599609375f - (0.2402265071868896484375f * _3682)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3706) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3706)) / _3706) : (0.693147182464599609375f - (0.2402265071868896484375f * _3706))));
        float _3739 = clamp((_489 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3742 = clamp((max(clamp(exp2(-(_3717 * _489)), 0.0f, 1.0f), _18_m51.w) + clamp((_489 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3739, 0.0f, 1.0f);
        _3966 = (_18_m51.xyz * (1.0f - _3742)) + (((_18_m54.xyz * pow(clamp(dot(_488, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3717 * max(_489 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3739));
        _3967 = _3742;
    }
    float3 _3973 = ((_3587.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3623 * _3967)) : (_3623 * _3967))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3626 * _3626)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3632) / max((12.56637096405029296875f * _3636) * sqrt(_3636), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3623)) * _3967 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3966 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
    float3 _3983 = lerp(dot(_3973, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3973, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3993 = min(lerp(((sqrt(sqrt(abs(_851 * 0.5f))) * float2(int2(sign(_851)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _838.xx), 1.0f.xx);
    float4 _3994 = float4(_3993.x, _3993.y, _389.z, _389.w);
    _3994.z = float(clamp(max(dot(_3983.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _741, _741) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3994.w = lerp(0.0f, 0.699999988079071044921875f, _838);
    float3 renodx_output_color = float3(_3983.x, _3983.y, _3983.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3587.w);
    _14 = _3994;
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
