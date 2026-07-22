#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x4DEFF5F5.
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

static float _363 = (float)0;
static float4 _364 = (float4)0;
static float3 _365 = (float3)0;
static uint _368 = (uint)0;

static const float4 _342[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _343[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _344[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _30 : register(t50);
[[vk::binding(0, 1)]]
cbuffer _36_37 : register(b0)
{
    float _37_m0 : packoffset(c0);
    float _37_m1 : packoffset(c0.y);
    float _37_m2 : packoffset(c0.z);
    float _37_m3 : packoffset(c0.w);
    float _37_m4 : packoffset(c1);
    float _37_m5 : packoffset(c1.y);
    float _37_m6 : packoffset(c1.z);
    float _37_m7 : packoffset(c1.w);
    float _37_m8 : packoffset(c2);
    float _37_m9 : packoffset(c2.y);
    float _37_m10 : packoffset(c2.z);
    float _37_m11 : packoffset(c2.w);
    float _37_m12 : packoffset(c3);
    float _37_m13 : packoffset(c3.y);
    float _37_m14 : packoffset(c3.z);
    float _37_m15 : packoffset(c3.w);
    float4 _37_m16 : packoffset(c4);
    float _37_m17 : packoffset(c5);
    float _37_m18 : packoffset(c5.y);
    float _37_m19 : packoffset(c5.z);
    float _37_m20 : packoffset(c5.w);
    float4 _37_m21 : packoffset(c6);
    float4 _37_m22 : packoffset(c7);
    float4 _37_m23 : packoffset(c8);
    float4 _37_m24 : packoffset(c9);
    float4 _37_m25 : packoffset(c10);
    float _37_m26 : packoffset(c11);
    float _37_m27 : packoffset(c11.y);
    float _37_m28 : packoffset(c11.z);
    float _37_m29 : packoffset(c11.w);
    float _37_m30 : packoffset(c12);
    float _37_m31 : packoffset(c12.y);
    float _37_m32 : packoffset(c12.z);
    float _37_m33 : packoffset(c12.w);
    float _37_m34 : packoffset(c13);
    float _37_m35 : packoffset(c13.y);
    float _37_m36 : packoffset(c13.z);
    float _37_m37 : packoffset(c13.w);
    float _37_m38 : packoffset(c14);
    float _37_m39 : packoffset(c14.y);
    float _37_m40 : packoffset(c14.z);
    float _37_m41 : packoffset(c14.w);
    float _37_m42 : packoffset(c15);
    float _37_m43 : packoffset(c15.y);
    float _37_m44 : packoffset(c15.z);
    float _37_m45 : packoffset(c15.w);
    float4 _37_m46 : packoffset(c16);
    float4 _37_m47 : packoffset(c17);
    float4 _37_m48 : packoffset(c18);
    float4 _37_m49 : packoffset(c19);
    float4 _37_m50 : packoffset(c20);
    float _37_m51 : packoffset(c21);
    float _37_m52 : packoffset(c21.y);
    float _37_m53 : packoffset(c21.z);
    float _37_m54 : packoffset(c21.w);
    float _37_m55 : packoffset(c22);
    float _37_m56 : packoffset(c22.y);
    float _37_m57 : packoffset(c22.z);
    float _37_m58 : packoffset(c22.w);
    float _37_m59 : packoffset(c23);
    float _37_m60 : packoffset(c23.y);
    float _37_m61 : packoffset(c23.z);
    float4 _37_m62 : packoffset(c24);
    float4 _37_m63 : packoffset(c25);
    float4 _37_m64 : packoffset(c26);
    float4 _37_m65 : packoffset(c27);
    float4 _37_m66 : packoffset(c28);
    float4 _37_m67 : packoffset(c29);
    float4 _37_m68 : packoffset(c30);
    float4 _37_m69 : packoffset(c31);
    float4 _37_m70 : packoffset(c32);
    float4 _37_m71 : packoffset(c33);
    float4 _37_m72 : packoffset(c34);
    float4 _37_m73 : packoffset(c35);
    float4 _37_m74 : packoffset(c36);
    float4 _37_m75 : packoffset(c37);
    float _37_m76 : packoffset(c38);
    float _37_m77 : packoffset(c38.y);
    float _37_m78 : packoffset(c38.z);
    float _37_m79 : packoffset(c38.w);
    float _37_m80 : packoffset(c39);
    float _37_m81 : packoffset(c39.y);
    float _37_m82 : packoffset(c39.z);
    float _37_m83 : packoffset(c39.w);
    float _37_m84 : packoffset(c40);
    float _37_m85 : packoffset(c40.y);
    float _37_m86 : packoffset(c40.z);
    float _37_m87 : packoffset(c40.w);
    float _37_m88 : packoffset(c41);
    float _37_m89 : packoffset(c41.y);
    float _37_m90 : packoffset(c41.z);
    float _37_m91 : packoffset(c41.w);
    float _37_m92 : packoffset(c42);
    float _37_m93 : packoffset(c42.y);
    float _37_m94 : packoffset(c42.z);
    float _37_m95 : packoffset(c42.w);
    float4 _37_m96 : packoffset(c43);
    float4 _37_m97 : packoffset(c44);
    float _37_m98 : packoffset(c45);
    float _37_m99 : packoffset(c45.y);
    float _37_m100 : packoffset(c45.z);
    float _37_m101 : packoffset(c45.w);
    float4 _37_m102 : packoffset(c46);
};

[[vk::binding(47, 0)]]
cbuffer _46_47 : register(b47)
{
    int _47_m0 : packoffset(c0);
    int _47_m1 : packoffset(c0.y);
    int _47_m2 : packoffset(c0.z);
    int _47_m3 : packoffset(c0.w);
    float _47_m4 : packoffset(c1);
    float _47_m5 : packoffset(c1.y);
    float _47_m6 : packoffset(c1.z);
    float _47_m7 : packoffset(c1.w);
    float _47_m8 : packoffset(c2);
    float _47_m9 : packoffset(c2.y);
    float _47_m10 : packoffset(c2.z);
    float _47_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _48_49 : register(b14)
{
    float4 _49_m0 : packoffset(c0);
    float4 _49_m1 : packoffset(c1);
    float4 _49_m2 : packoffset(c2);
    float4 _49_m3 : packoffset(c3);
    float4 _49_m4 : packoffset(c4);
    uint4 _49_m5 : packoffset(c5);
    float4 _49_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _50_51 : register(b15)
{
    column_major float4x4 _51_m0[5] : packoffset(c0);
    float4 _51_m1[4] : packoffset(c20);
    float4 _51_m2[4] : packoffset(c24);
    float4 _51_m3[4] : packoffset(c28);
    float4 _51_m4 : packoffset(c32);
    float4 _51_m5 : packoffset(c33);
    float4 _51_m6 : packoffset(c34);
    float4 _51_m7 : packoffset(c35);
    float4 _51_m8 : packoffset(c36);
    float4 _51_m9[27] : packoffset(c37);
    column_major float4x4 _51_m10[56] : packoffset(c64);
    float4 _51_m11[56] : packoffset(c288);
    float4 _51_m12[56] : packoffset(c344);
    float4 _51_m13 : packoffset(c400);
    float4 _51_m14[47] : packoffset(c401);
    column_major float4x4 _51_m15[15] : packoffset(c448);
    float4 _51_m16[15] : packoffset(c508);
    float4 _51_m17[15] : packoffset(c523);
    float4 _51_m18[15] : packoffset(c538);
    float4 _51_m19 : packoffset(c553);
    float4 _51_m20 : packoffset(c554);
    float4 _51_m21[21] : packoffset(c555);
    column_major float4x4 _51_m22 : packoffset(c576);
    column_major float4x4 _51_m23 : packoffset(c580);
    float4 _51_m24 : packoffset(c584);
    float4 _51_m25 : packoffset(c585);
    float4 _51_m26 : packoffset(c586);
    float4 _51_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _60_61 : register(b49)
{
    float4 _61_m0[32] : packoffset(c0);
    column_major float4x4 _61_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _28 : register(t45);
[[vk::binding(4, 1)]] Texture2D<float4> _31 : register(t4);
[[vk::binding(1, 1)]] SamplerState _32 : register(s1);
[[vk::binding(2, 1)]] Texture2D<float4> _33 : register(t2);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3);
[[vk::binding(22, 0)]] Texture2D<float4> _35 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _39 : register(t35);
[[vk::binding(34, 0)]] Texture3D<float4> _40 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _41 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _42 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _43 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _44 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _45 : register(t29);
[[vk::binding(9, 0)]] Texture2D<float4> _52 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _53 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _54 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _55 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _56 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27);
[[vk::binding(28, 0)]] Texture2D<float4> _59 : register(t28);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
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
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
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
    float2 _395 = gl_FragCoord.xy * _18_m0.zw;
    uint2 _396 = uint2(gl_FragCoord.xy);
    float2 _398 = (_395 * 2.0f) - 1.0f.xx;
    float4 _401 = float4(_398, gl_FragCoord.z, 1.0f);
    _401.y = -_398.y;
    float4 _404 = mul(_16_m6, _401);
    float3 _408 = _404.xyz / _404.w.xxx;
    float4 _412 = float4(_408, 1.0f);
    float _415 = abs(mul(_16_m0, _412).z);
    float _419 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _424 = float4(_7.xyz, _419).xyz;
    float3 _445;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _445 = _16_m11.xyz - _408;
            break;
        }
        else
        {
            _445 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _446 = dot(_445, _445);
    float _448 = rsqrt(max(_446, 9.9999999392252902907785028219223e-09f));
    float3 _449 = _445 * _448;
    float _450 = _446 * _448;
    float2 _510 = ((mul(((((_4.xy * _37_m23.x) + ((((_4.zw * _37_m4) - (_5.xy * _37_m4)) + _5.xy) * _37_m23.y)) + (_37_m21.xy * _18_m75.w)) + (_37_m21.zw * (_5 * _37_m4).x)) - 0.5f.xx, float2x2(float2(_37_m22.xy), float2(_37_m22.zw))) + 0.5f.xx) * _37_m24.xy) + _37_m24.zw;
    float _518 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
    float _521 = lerp(0.0f, _518, _37_m90);
    _510.y = _510.y * (1.0f + min(_521, 0.5f));
    float4 _536 = _31.SampleBias(_32, _510 + _521.xx, _18_m16);
    float4 _541 = ((_37_m16 * lerp(_8, 1.0f.xxxx, _37_m5.xxxx)) * float4(_37_m6, _37_m6, _37_m6, _37_m7)) * lerp(_536, float4(1.0f, 1.0f, 1.0f, _536.x), _37_m18.xxxx);
    float2 _550 = ((float2(_396) * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _553 = float4(_550, _28.SampleLevel(_23, _395, 0.0f).x, 1.0f);
    _553.y = -_550.y;
    float4 _556 = mul(_16_m6, _553);
    float _614 = fmod(floor((_18_m75.w + lerp(0.0f, _518, _37_m43)) * _37_m40), _37_m47.y * _37_m47.x);
    float _617 = _37_m47.y - floor(_614 / _37_m47.x);
    float _620 = 1.0f / _37_m47.x;
    float _621 = 1.0f / _37_m47.y;
    float4 _624 = float4(_620, _621, (_614 - (_617 * _37_m47.x)) * _620, _617 * _621);
    float2 _628 = (_4.xy * _624.xy) + _624.zw;
    float4 _631 = _34.SampleBias(_25, _628, _18_m16);
    float4 _634 = clamp(_631 - _37_m45.xxxx, 0.0f.xxxx, 1.0f.xxxx);
    float _638 = _634.w;
    float _642 = _638 * _37_m41;
    float4 _646 = _33.SampleBias(_25, _628, _18_m16);
    _646.w = _646.w * _646.x;
    float2 _653 = (_646.wy * 2.0f) - 1.0f.xx;
    float3 _654 = float3(_653.x, _653.y, _365.z);
    float2 _655 = _653.xy;
    _654.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_655, _655), 0.0f, 1.0f)));
    float2 _663 = _654.xy * _37_m38;
    float3 _665 = mul(float3(_663.x, _663.y, _654.z), float3x3(_424 * 1.0f, (cross(_6, _424) * _419) * 1.0f, _6 * 1.0f));
    float3 _669 = _665 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_665, _665)));
    bool3 _675 = (gl_FrontFacing ? true : false).xxx;
    float3 _676 = -_669;
    float3 _677 = float3(_675.x ? _669.x : _676.x, _675.y ? _669.y : _676.y, _675.z ? _669.z : _676.z);
    float _712 = ((((clamp(((_541.w * ((_37_m26 != 0.0f) ? (clamp((_415 - _37_m27) / (_37_m28 - _37_m27), 0.0f, 1.0f) * clamp((_415 - _37_m29) / (_37_m30 - _37_m29), 0.0f, 1.0f)) : 1.0f)) * _642) - _37_m44, 0.0f, 1.0f) * _37_m41) * clamp(((abs(mul(_16_m0, float4(_556.xyz / _556.w.xxx, 1.0f)).z) - _415) + _37_m35) / _37_m34, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _37_m88)) * lerp(1.0f, pow(abs(dot(_6, _449)), _37_m81), _37_m83)) * (1.0f - _21_m0[_11]._m1.y);
    float _724 = clamp(_712, 0.0f, 1.0f);
    float3 _725 = clamp(((_541.xyz + ((_634.xyz * _37_m46.xyz) * _638)).xyz * ((1.0f - _37_m12) + (_18_m20.y * _37_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _728 = _725 * _37_m84;
    float _741 = (_37_m53 * (_642 * lerp(1.0f, _8.x, _37_m88))) * _728.x;
    float3 _755 = -_449;
    float4 _770 = _35.SampleBias(_25, _395 + mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_755, _677, _37_m99) * (_37_m95 * _724)).xy, _18_m16);
    float3 _772 = _724.xxx;
    float2 _824;
    if (clamp((_37_m3 + 1.0f) - _37_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _810 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
        _810.y = -_810.y;
        _824 = ((sqrt(sqrt(abs(_810 * 0.5f))) * float2(int2(sign(_810)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _824 = 0.0f.xx;
    }
    float3 _826 = (0.07999999821186065673828125f * _37_m87).xxx;
    uint2 _857;
    float _858;
    if (_18_m24.y == 1.0f)
    {
        float4 _834 = mul(_18_m135, _412);
        float4 _837 = _834;
        _837.y = -_834.y;
        float4 _840 = _837 * (1.0f / _834.w);
        _857 = uint2(clamp(((_840.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _858 = 1.0f / ((_18_m2.z * _840.z) + _18_m2.w);
    }
    else
    {
        _857 = _396;
        _858 = _415;
    }
    float3 _860 = _408 + (_677 * 0.25f);
    float3 _870 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _879 = _860 - (_18_m105.xyz + (_870 * (-_18_m107.w)));
    float _893 = max(clamp((max(abs(_879.x), abs(_879.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_879.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1195;
    float4 _1196;
    float4 _1197;
    float _1198;
    float _1199;
    if ((_18_m105.w != 0.0f) && (_893 < 1.0f))
    {
        float3 _906 = _860 - (_18_m105.xyz + (_870 * (-_18_m107.y)));
        float _920 = max(clamp((max(abs(_906.x), abs(_906.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_906.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _996;
        float4 _997;
        float4 _998;
        float4 _999;
        if (_920 < 1.0f)
        {
            float3 _929 = ((_860 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _931 = _929 - floor(_929);
            float4 _935 = _40.SampleLevel(_25, _931, 0.0f);
            float _936 = 1.0f - _920;
            float _940 = _18_m106.y * 0.5f;
            float _945 = _931.x;
            float _946 = clamp(_931.y, _940, 1.0f - _940) * 0.3333333432674407958984375f;
            float _947 = _931.z;
            float4 _950 = _41.SampleLevel(_24, float3(_945, _946, _947), 0.0f);
            float _966 = _935.x;
            float _976 = _935.y;
            float _986 = _935.z;
            _996 = _893 + (_950.w * _936);
            _997 = float4(((_41.SampleLevel(_24, float3(_945, _946 + 0.666666686534881591796875f, _947), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _986, _986) * _936;
            _998 = float4(((_41.SampleLevel(_24, float3(_945, _946 + 0.3333333432674407958984375f, _947), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _976, _976) * _936;
            _999 = float4(((_950.xyz * 4.0f) - 2.0f.xxx) * _966, _966) * _936;
        }
        else
        {
            _996 = _893;
            _997 = 0.0f.xxxx;
            _998 = 0.0f.xxxx;
            _999 = 0.0f.xxxx;
        }
        float3 _1005 = _860 - (_18_m105.xyz + (_870 * (-_18_m107.z)));
        float _1019 = max(clamp((max(abs(_1005.x), abs(_1005.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1005.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1099;
        float4 _1100;
        float4 _1101;
        float4 _1102;
        if (_1019 < 1.0f)
        {
            float3 _1028 = ((_860 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1030 = _1028 - floor(_1028);
            float4 _1034 = _42.SampleLevel(_25, _1030, 0.0f);
            float _1036 = _920 * (1.0f - _1019);
            float _1040 = _18_m106.y * 0.5f;
            float _1045 = _1030.x;
            float _1046 = clamp(_1030.y, _1040, 1.0f - _1040) * 0.3333333432674407958984375f;
            float _1047 = _1030.z;
            float4 _1050 = _43.SampleLevel(_24, float3(_1045, _1046, _1047), 0.0f);
            float _1066 = _1034.x;
            float _1077 = _1034.y;
            float _1088 = _1034.z;
            _1099 = _996 + (_1050.w * _1036);
            _1100 = _997 + (float4(((_43.SampleLevel(_24, float3(_1045, _1046 + 0.666666686534881591796875f, _1047), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1088, _1088) * _1036);
            _1101 = _998 + (float4(((_43.SampleLevel(_24, float3(_1045, _1046 + 0.3333333432674407958984375f, _1047), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1077, _1077) * _1036);
            _1102 = _999 + (float4(((_1050.xyz * 4.0f) - 2.0f.xxx) * _1066, _1066) * _1036);
        }
        else
        {
            _1099 = _996;
            _1100 = _997;
            _1101 = _998;
            _1102 = _999;
        }
        float4 _1185;
        float4 _1186;
        float4 _1187;
        float _1188;
        if (_1019 > 0.0f)
        {
            float3 _1111 = ((_860 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1114 = _18_m106.xyz * 0.5f;
            float3 _1116 = clamp(_1111 - floor(_1111), _1114, 1.0f.xxx - _1114);
            float4 _1120 = _44.SampleLevel(_25, _1116, 0.0f);
            float _1122 = _1019 * (1.0f - _893);
            float _1126 = _18_m106.y * 0.5f;
            float _1131 = _1116.x;
            float _1132 = clamp(_1116.y, _1126, 1.0f - _1126) * 0.3333333432674407958984375f;
            float _1133 = _1116.z;
            float4 _1136 = _45.SampleLevel(_24, float3(_1131, _1132, _1133), 0.0f);
            float _1152 = _1120.x;
            float _1163 = _1120.y;
            float _1174 = _1120.z;
            _1185 = _1100 + (float4(((_45.SampleLevel(_24, float3(_1131, _1132 + 0.666666686534881591796875f, _1133), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1174, _1174) * _1122);
            _1186 = _1101 + (float4(((_45.SampleLevel(_24, float3(_1131, _1132 + 0.3333333432674407958984375f, _1133), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1163, _1163) * _1122);
            _1187 = _1102 + (float4(((_1136.xyz * 4.0f) - 2.0f.xxx) * _1152, _1152) * _1122);
            _1188 = _1099 + (_1136.w * _1122);
        }
        else
        {
            _1185 = _1100;
            _1186 = _1101;
            _1187 = _1102;
            _1188 = _1099;
        }
        float _1191 = clamp((_1188 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1195 = _1185;
        _1196 = _1186;
        _1197 = _1187;
        _1198 = _1191 - _893;
        _1199 = (_1191 + _893) * 0.5f;
    }
    else
    {
        _1195 = 0.0f.xxxx;
        _1196 = 0.0f.xxxx;
        _1197 = 0.0f.xxxx;
        _1198 = 0.0f;
        _1199 = 1.0f;
    }
    float4 _1219 = _1197 + float4(_18_m108.x * _1199, (_18_m108.y * _1199) + ((_18_m108.w * _1198) * 0.5f), _18_m108.z * _1199, (_18_m108.w * _1199) + ((_18_m108.y * _1198) * 0.375f));
    float4 _1239 = _1196 + float4(_18_m109.x * _1199, (_18_m109.y * _1199) + ((_18_m109.w * _1198) * 0.5f), _18_m109.z * _1199, (_18_m109.w * _1199) + ((_18_m109.y * _1198) * 0.375f));
    float4 _1259 = _1195 + float4(_18_m110.x * _1199, (_18_m110.y * _1199) + ((_18_m110.w * _1198) * 0.5f), _18_m110.z * _1199, (_18_m110.w * _1199) + ((_18_m110.y * _1198) * 0.375f));
    float3 _1287 = lerp(1.0f.xxx, clamp(abs((frac(float3(_37_m51, _37_m52, _741).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _37_m52.xxx) * _741;
    float3 _1294 = ((float3(max(0.0f, dot(_1219.xyz, _677) + _1219.w), max(0.0f, dot(_1239.xyz, _677) + _1239.w), max(0.0f, dot(_1259.xyz, _677) + _1259.w)) * (_728 + (_1287 * _37_m54))) * 1.0f) * _18_m22.x;
    float3 _1303 = (((_1294.x + _1294.y) + _1294.z) * 0.3333333432674407958984375f).xxx;
    float3 _1308 = (_1303 + ((_1294 - _1303) * _37_m82)) + ((-0.0f).xxx * _37_m82);
    float3 _1314 = _18_m76.w.xxx;
    float _1322 = 1.0f - _37_m11;
    float3 _1325 = _408 + (_677 * 0.5f);
    float2 _1775;
    do
    {
        if (_51_m7.w >= 0.9900000095367431640625f)
        {
            _1775 = float2(_51_m7.z, 1.0f);
            break;
        }
        int _1338 = int(_51_m7.x);
        bool3 _1340 = (_1338 == 2).xxx;
        float3 _1348 = _1325 - float3(_1340.x ? _51_m1[0].xyz.x : _16_m11.xyz.x, _1340.y ? _51_m1[0].xyz.y : _16_m11.xyz.y, _1340.z ? _51_m1[0].xyz.z : _16_m11.xyz.z);
        float _1359 = max(clamp((_51_m6.w - dot(_1348, _1348)) * _51_m6.z, 0.0f, 1.0f), _51_m8.x);
        float _1516;
        bool _1517;
        if (_1359 > 0.0f)
        {
            float _1514;
            bool _1515;
            if (_1338 > 0)
            {
                float3 _1366 = _1325 - _51_m1[0].xyz;
                float3 _1370 = _1325 - _51_m1[1].xyz;
                float3 _1374 = _1325 - _51_m1[2].xyz;
                float3 _1378 = _1325 - _51_m1[3].xyz;
                float4 _1383 = float4(dot(_1366, _1366), dot(_1370, _1370), dot(_1374, _1374), dot(_1378, _1378));
                float4 _1392 = float4(_51_m1[0].w, _51_m1[1].w, _51_m1[2].w, _51_m1[3].w);
                float4 _1394 = float4(bool4(_1383.x < _1392.x, _1383.y < _1392.y, _1383.z < _1392.z, _1383.w < _1392.w));
                float3 _1398 = clamp(_1394.yzw - _1394.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1402 = clamp(4.0f - dot(float4(_1394.x, _1398.x, _1398.y, _1398.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1404 = clamp(_1402 + 1.0f, 0.0f, 3.0f);
                uint _1405 = uint(_1402);
                uint _1413 = uint(_1404);
                float _1419 = dot(_1383, _342[_1413]) / _51_m1[_1413].w;
                float _1437;
                if (((_1404 > _1402) && (_1419 >= 0.0f)) && (_1419 <= 1.0f))
                {
                    _1437 = _1402 + step(frac(52.98291778564453125f * frac(dot(float2(_857) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1383, _342[_1405]) / _51_m1[_1405].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1437 = _1402;
                }
                float _1438 = clamp(_1437, 0.0f, 4.0f);
                float4 _1446 = mul(_51_m0[uint(_1438)], float4(_1325, 1.0f));
                float _1449 = _1446.z;
                float4 _1450 = float4(_1446.xy, _1449, _1438);
                float3 _1451 = _1450.xyz;
                bool3 _1452 = bool3(_1451.x <= 0.0f.xxx.x, _1451.y <= 0.0f.xxx.y, _1451.z <= 0.0f.xxx.z);
                bool3 _1453 = bool3(_1451.x >= 1.0f.xxx.x, _1451.y >= 1.0f.xxx.y, _1451.z >= 1.0f.xxx.z);
                bool _1459 = any(bool3(_1452.x || _1453.x, _1452.y || _1453.y, _1452.z || _1453.z)) || ((asuint(_1449) & 2147483647u) > 2139095040u);
                int _1460 = int(_1438);
                float2 _1475 = float4(_51_m3[_1460].xy + (_1450.xy * _51_m3[_1460].zw), _1449, _1438).xy;
                _1514 = _1459 ? 1.0f : (0.25f * (((_52.SampleCmpLevelZero(_26, float3(_1475 + (_51_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _363).xy, _1449) + _52.SampleCmpLevelZero(_26, float3(_1475 + (_51_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _363).xy, _1449)) + _52.SampleCmpLevelZero(_26, float3(_1475 + (_51_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _363).xy, _1449)) + _52.SampleCmpLevelZero(_26, float3(_1475 + (_51_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _363).xy, _1449)));
                _1515 = _1459;
            }
            else
            {
                _1514 = 1.0f;
                _1515 = false;
            }
            _1516 = _1514;
            _1517 = _1515;
        }
        else
        {
            _1516 = 1.0f;
            _1517 = false;
        }
        float _1717;
        float _1718;
        if ((_1359 < 1.0f) || (_51_m8.x > 0.5f))
        {
            float _1528 = 1.0f - clamp(dot(_677, _49_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1545 = float4((_1325 - (_49_m0.xyz * (_1528 * _51_m24.x))) + (_677 * (_1528 * _51_m24.y)), 1.0f);
            float4 _1546 = mul(_51_m23, _1545);
            float _1715;
            if (all(bool2(_1546.xy.x > 0.0f.xx.x, _1546.xy.y > 0.0f.xx.y)) && all(bool2(_1546.xy.x < 1.0f.xx.x, _1546.xy.y < 1.0f.xx.y)))
            {
                uint _1566 = clamp(uint((floor(_1546.y * _51_m25.z) + _1546.x) * _51_m25.y), 0u, 127u);
                uint _1570 = asuint(_51_m27[_1566].x);
                float2 _1571 = spvUnpackHalf2x16(_1570);
                float _1572 = _1571.x;
                float _1714;
                if (_1572 >= 0.0f)
                {
                    float4x4 _1581 = _51_m22;
                    _1581[0].w = _51_m27[_1566].y;
                    _1581[1].w = _51_m27[_1566].z;
                    _1581[2].w = _51_m27[_1566].w;
                    float4 _1588 = mul(_1581, _1545);
                    float _1713;
                    if (all(bool3(_1588.xyz.x > 0.0f.xxx.x, _1588.xyz.y > 0.0f.xxx.y, _1588.xyz.z > 0.0f.xxx.z)) && all(bool3(_1588.xyz.x < 1.0f.xxx.x, _1588.xyz.y < 1.0f.xxx.y, _1588.xyz.z < 1.0f.xxx.z)))
                    {
                        float2 _1612 = float4((_1588.xy * _51_m24.zw) + float2(_1572, spvUnpackHalf2x16(_1570 >> 16u).x), _1588.z, 1.0f).xy * _51_m26.zw;
                        float2 _1614 = floor(_1612 + 0.5f.xx);
                        float2 _1615 = _1612 - _1614;
                        float _1616 = _1615.x;
                        float _1617 = _1616 + 0.5f;
                        float _1619 = (_1617 * _1617) * 0.5f;
                        float _1622 = min(_1616, 0.0f);
                        float _1626 = max(_1616, 0.0f);
                        float4 _1630 = float4(_1619 - _1616, (1.0f - _1616) - (_1622 * _1622), (_1616 + 1.0f) - (_1626 * _1626), _1619) * 0.44444000720977783203125f;
                        float _1631 = _1615.y;
                        float _1632 = _1631 + 0.5f;
                        float _1634 = (_1632 * _1632) * 0.5f;
                        float _1637 = min(_1631, 0.0f);
                        float _1641 = max(_1631, 0.0f);
                        float4 _1645 = float4(_1634 - _1631, (1.0f - _1631) - (_1637 * _1637), (_1631 + 1.0f) - (_1641 * _1641), _1634) * 0.44444000720977783203125f;
                        float2 _1647 = _1630.yw;
                        float2 _1648 = _1630.xz + _1647;
                        float2 _1650 = _1645.yw;
                        float2 _1651 = _1645.xz + _1650;
                        float2 _1657 = ((_1647 / _1648) + float2(-1.5f, 0.5f)) * _51_m26.xx;
                        float2 _1659 = ((_1650 / _1651) + float2(-1.5f, 0.5f)) * _51_m26.yy;
                        float2 _1661 = _1614 * _51_m26.xy;
                        float _1662 = _1657.x;
                        float _1663 = _1659.x;
                        float _1666 = _1657.y;
                        float _1669 = _1659.y;
                        float _1674 = _1648.x;
                        float _1675 = _1651.x;
                        float _1677 = _1648.y;
                        float _1679 = _1651.y;
                        _1713 = ((((_1674 * _1675) * _55.SampleCmpLevelZero(_26, float3(_1661 + float2(_1662, _1663), _363).xy, _1588.z)) + ((_1677 * _1675) * _55.SampleCmpLevelZero(_26, float3(_1661 + float2(_1666, _1663), _363).xy, _1588.z))) + ((_1674 * _1679) * _55.SampleCmpLevelZero(_26, float3(_1661 + float2(_1662, _1669), _363).xy, _1588.z))) + ((_1677 * _1679) * _55.SampleCmpLevelZero(_26, float3(_1661 + float2(_1666, _1669), _363).xy, _1588.z));
                    }
                    else
                    {
                        _1713 = 1.0f;
                    }
                    _1714 = _1713;
                }
                else
                {
                    _1714 = 1.0f;
                }
                _1715 = _1714;
            }
            else
            {
                _1715 = 1.0f;
            }
            _1717 = _1517 ? _1715 : _1516;
            _1718 = _1715;
        }
        else
        {
            _1717 = _1516;
            _1718 = 1.0f;
        }
        float _1721 = lerp(lerp(_1718, _1717, _1359), min(_1718, _1717), _51_m8.x);
        float _1770;
        if (_1721 > 0.001000000047497451305389404296875f)
        {
            float3 _1728 = _1325 - _18_m65.xyz;
            float2 _1738 = (_1728 + (_18_m68.xyz * _1728.y)).xz * _18_m66.z;
            float2 _1745 = _18_m67.xy * _18_m75.w;
            _1770 = _1721 * lerp(1.0f, lerp(_54.SampleLevel(_25, _1738 + _1745, 0.0f), _54.SampleLevel(_25, (_1738 * _18_m67.w) + _1745, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1728.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1770 = _1721;
        }
        _1775 = float2(lerp(_1770, _51_m7.z, _51_m7.w), _1770);
        break;
    } while(false);
    float _1780 = lerp(1.0f, min(1.0f, _1775.x), _51_m6.x);
    float4 _1944;
    if (_1780 > 0.001000000047497451305389404296875f)
    {
        float3 _1790 = reflect(_755, _677);
        float3 _1791 = -_49_m0.xyz;
        float _1796 = dot(_1791, _1790);
        float3 _1798 = _1790 - (_1791 * _1796);
        bool3 _1800 = (_1796 < _49_m4.z).xxx;
        float3 _1808 = normalize((_1791 * _49_m4.z) + ((_1798 * rsqrt(max(6.103515625e-05f, dot(_1798, _1798)))) * _49_m4.y));
        float3 _1809 = float3(_1800.x ? _1808.x : _1790.x, _1800.y ? _1808.y : _1790.y, _1800.z ? _1808.z : _1790.z);
        float3 _1813 = _1809 + _449;
        float3 _1817 = _1813 * rsqrt(max(6.103515625e-05f, dot(_1813, _1813)));
        float _1819 = clamp(dot(_1809, _677), 0.0f, 1.0f);
        float _1821 = clamp(dot(_677, _1817), 0.0f, 1.0f);
        float _1826 = clamp(dot(_677, _449), 0.0f, 1.0f);
        float _1827 = _37_m86 * _37_m86;
        float _1828 = _1827 * _1827;
        float _1849 = (((_1821 * _1828) - _1821) * _1821) + 1.0f;
        float _1852 = 1.0f - clamp(dot(_449, _1817), 0.0f, 1.0f);
        float _1853 = _1852 * _1852;
        float _1855 = (_1852 * _1853) * _1853;
        float _1879 = 1.0f - _37_m86;
        float _1886 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1879 * (1.04997003078460693359375f + (_1879 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1879))))));
        float _1887 = 1.0f - _1886;
        float3 _1890 = _826 + ((1.0f.xxx - _826) * 0.0476190485060214996337890625f);
        float _1901 = clamp(1.0f - _741, 0.0f, 1.0f);
        float _1909 = clamp((dot(_677, _1809) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1926 = clamp((clamp((min(((_826 * (1.0f - _1855)) + _1855.xxx) * ((_1828 / (_1849 * _1849)) * (0.5f / (((_1819 * sqrt(((((-_1826) * _1828) + _1826) * _1826) + _1828)) + (_1826 * sqrt(((((-_1819) * _1828) + _1819) * _1819) + _1828))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1890 * (((_58.SampleLevel(_24, (float2(_1826, _37_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_24, (float2(_1819, _37_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1886) / _1887)) * _1890) / (1.0f.xxx - (_1890 * _1887)))) * _49_m4.x, 0.0f.xxx, 1000.0f.xxx) * (FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f)) / max(_724, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _37_m80;
        float3 _1931 = (((_1926 * _1819) + (_1287 * lerp(lerp(1.0f, (_1909 * sqrt(_1909)) * 1.66666662693023681640625f, _1901) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_449, _1809), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1901)))) + ((_728 * 1.0f) * _1819)) * _49_m1.xyz;
        float3 _1942 = lerp(_1931, _1931 * _56.SampleBias(_24, float2(_1780, 0.5f), _18_m16).xyz, (1.0f - _1780).xxx) * 1.0f;
        _1944 = float4(_1942.x, _1942.y, _1942.z, 0.0f.xxxx.w);
    }
    else
    {
        _1944 = 0.0f.xxxx;
    }
    float2 _1945 = float2(_857);
    float2 _1947 = floor(_1945 * 0.03125f);
    int _1955 = int((_1947.x + (_1947.y * _47_m5)) * 8.0f);
    float _1962 = floor(_858 - (_18_m3.y * _47_m11));
    float _1966 = clamp(_1962, 0.0f, _47_m7 - 1.0f);
    int _1968 = int(_1966 * 8.0f);
    float3 _1970;
    float _1973;
    _1970 = 0.0f.xxx;
    _1973 = 1.0f;
    float3 _1971;
    float _1974;
    [loop]
    for (int _1975 = 0; _1975 <= 7; _1970 = _1971, _1973 = _1974, _1975++)
    {
        uint _1993 = (_1962 <= _1966) ? (_30.Load(uint(_1955 + _1975) * 4 + 0) & _30.Load(uint((_18_m21.y + _1968) + _1975) * 4 + 0)) : 0u;
        uint _1994 = uint(_1975);
        float3 _1998;
        _1974 = _1973;
        _1998 = 0.0f.xxx;
        uint _2001;
        float _1996;
        float3 _1999;
        [loop]
        for (uint _2000 = _1993; _2000 != 0u; _1974 = _1996, _1998 = _1999, _2000 = _2001)
        {
            uint _2005 = firstbitlow(_2000);
            _2001 = _2000 ^ (1u << (_2005 & 31u));
            int _2011 = int((32u * _1994) + _2005) * 8;
            int _2014 = _2011 + 1;
            int _2017 = _2011 + 2;
            int _2020 = _2011 + 3;
            int _2023 = _2011 + 5;
            int _2026 = _2011 + 6;
            int _2029 = _2011 + 7;
            uint _2033 = uint(_49_m6[_2023].w);
            float _2108;
            if ((_2033 & 1u) == 1u)
            {
                uint _2039 = asuint(_49_m6[_2023].x);
                uint _2046 = asuint(_49_m6[_2023].y);
                uint _2053 = asuint(_49_m6[_2023].z);
                uint _2060 = asuint(_49_m6[_2026].x);
                uint _2067 = asuint(_49_m6[_2026].y);
                uint _2074 = asuint(_49_m6[_2026].z);
                float3 _2093 = abs(mul(float4(_408 - _49_m6[_2014].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2039).x, spvUnpackHalf2x16(_2053).x, spvUnpackHalf2x16(_2067).x, 0.0f), float4(spvUnpackHalf2x16(_2039 >> 16u).x, spvUnpackHalf2x16(_2053 >> 16u).x, spvUnpackHalf2x16(_2067 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2046).x, spvUnpackHalf2x16(_2060).x, spvUnpackHalf2x16(_2074).x, 0.0f), float4(spvUnpackHalf2x16(_2046 >> 16u).x, spvUnpackHalf2x16(_2060 >> 16u).x, spvUnpackHalf2x16(_2074 >> 16u).x, 0.0f))).xyz);
                float _2100 = _49_m6[_2029].x * 0.5f;
                float _2106 = 1.0f - clamp((max(max(_2093.x, _2093.y), _2093.z) - (_2100 + 0.5f)) / (0.5f - _2100), 0.0f, 1.0f);
                _2108 = _2106 * _2106;
            }
            else
            {
                _2108 = 1.0f;
            }
            bool _2112 = _49_m6[_2020].z > 0.5f;
            if ((false || (_2108 < 0.001000000047497451305389404296875f)) || _2112)
            {
                _1996 = _1974;
                _1999 = _1998;
                continue;
            }
            float _3245;
            float3 _3246;
            if (_49_m6[_2011].w < 1.5f)
            {
                float3 _2600 = float3(0.100000001490116119384765625f, _37_m86, 1.0f);
                float _2609 = (0.5f + (0.5f * _49_m6[_2017].y)) - abs(_49_m6[_2017].x);
                float _2610 = _49_m6[_2017].y - _2609;
                float _2617 = abs(max((1.0f - abs(_2609)) - abs(_2610), 0.00048828125f));
                float3 _2621 = normalize(float3(_2609, _2610, (_49_m6[_2017].x >= 0.0f) ? _2617 : (-_2617)));
                float3 _2622 = _49_m6[_2014].xyz - _408;
                float _2623 = dot(_2622, _2622);
                float _2624 = rsqrt(_2623);
                float3 _2625 = _2622 * _2624;
                float _2629 = clamp(_49_m6[_2029].y * _2624, 0.0f, 1.0f);
                int _2634 = int(_49_m6[_2029].w);
                float3 _2635 = _2621 * _49_m6[_2017].z;
                float3 _2636 = _2635 * 0.5f;
                float3 _2637 = _2622 - _2636;
                float3 _2638 = _2622 + _2636;
                bool _2641 = (uint(_49_m6[_2011].w) & 1u) == 0u;
                bool _2644 = _2641 || ((_2033 & 2u) != 0u);
                bool _2647 = (!_2641) && (_49_m6[_2017].z > 0.0f);
                float _2666;
                float _2667;
                if (_2647)
                {
                    float _2651 = length(_2637);
                    float _2652 = length(_2638);
                    _2666 = clamp(0.5f * ((dot(_677, _2637) / _2651) + (dot(_677, _2638) / _2652)), 0.0f, 1.0f);
                    _2667 = 1.0f / ((((_2651 * _2652) + dot(_2637, _2638)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2666 = clamp(dot(_677, _2625), 0.0f, 1.0f);
                    _2667 = 1.0f;
                }
                float _2689;
                if (_49_m6[_2026].w < 0.0f)
                {
                    float _2683 = _2623 * (_49_m6[_2014].w * _49_m6[_2014].w);
                    float _2686 = clamp(1.0f - (_2683 * _2683), 0.0f, 1.0f);
                    _2689 = lerp(1.0f / (_2623 + 1.0f), _2667, float(_2647)) * (_2686 * _2686);
                }
                else
                {
                    float3 _2672 = _2622 * _49_m6[_2014].w;
                    _2689 = _2667 * pow(1.0f - clamp(dot(_2672, _2672), 0.0f, 1.0f), _49_m6[_2026].w);
                }
                float _2695 = clamp((dot(_2625, -_2621) - _49_m6[_2017].z) * _49_m6[_2017].w, 0.0f, 1.0f);
                float _2699 = _2689 * lerp(1.0f, _2695 * _2695, float(_2641));
                float _2799;
                if ((!_2647) && (_2634 >= 0))
                {
                    uint _2705 = uint(_2634);
                    float2 _2792;
                    [branch]
                    if (_2641)
                    {
                        float4 _2782 = mul(_61_m1[_2705], _412);
                        _2792 = _61_m0[_2705].xy + (clamp(_2782.xy / _2782.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2705].zw);
                    }
                    else
                    {
                        float3 _2719 = mul(float4(-_2622, 0.0f), _61_m1[_2705]).xyz;
                        float3 _372 = _2719;
                        float3 _371 = _2719;
                        float3 _370 = abs(_2719);
                        uint _2728 = uint(int(_370.y > _370.x));
                        uint _2734 = (_370.z > _370[_2728]) ? 2u : _2728;
                        uint _2740 = (_2734 * 2u) + uint(_371[_2734] < 0.0f);
                        float _2744 = abs(_372[_2740 / 2u]);
                        float _2764 = 0.5f - (0.000244140625f / _61_m0[_2705].w);
                        _2792 = _61_m0[_2705].xy + (clamp(float2((float(_2740) + ((((_372[uint(_343[_2740].x)] * _344[_2740].x) / _2744) * _2764) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_372[uint(_343[_2740].y)] * _344[_2740].y) / _2744) * _2764)), 0.0f.xx, 1.0f.xx) * _61_m0[_2705].zw);
                    }
                    _2799 = _2699 * _59.SampleLevel(_24, _2792, 0.0f).x;
                }
                else
                {
                    _2799 = _2699;
                }
                bool _2800 = _2799 > 0.0f;
                float _3088;
                if (_2800)
                {
                    int _2852;
                    if (_2644)
                    {
                        _2852 = int(_49_m6[_2020].x);
                    }
                    else
                    {
                        uint _2807 = asuint(_49_m6[_2017].w);
                        uint _2809 = asuint(_49_m6[_2020].x);
                        float3 _2810 = _408 - _49_m6[_2014].xyz;
                        float3 _2811 = abs(_2810);
                        float _2812 = _2811.x;
                        float _2813 = _2811.y;
                        float _2815 = _2811.z;
                        int _2847;
                        if ((_2812 > _2813) && (_2812 > _2815))
                        {
                            _2847 = int((_2810.x > 0.0f) ? (_2807 >> 24u) : ((_2807 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2839;
                            if (_2813 > _2815)
                            {
                                _2839 = int((_2810.y > 0.0f) ? ((_2807 >> 8u) & 255u) : (_2807 & 255u));
                            }
                            else
                            {
                                _2839 = int((_2810.z > 0.0f) ? ((_2809 >> 8u) & 255u) : (_2809 & 255u));
                            }
                            _2847 = _2839;
                        }
                        _2852 = (_2847 < 80) ? _2847 : (-1);
                    }
                    float3 _2862 = (_408 - ((-_2625) * _51_m11[_2852].x)) + (_677 * (_51_m11[_2852].y * 5.0f));
                    float4 _2869 = mul(_51_m10[_2852], float4(_2862, 1.0f));
                    float _2870 = _2869.w;
                    float3 _2873 = _2869.xyz / _2870.xxx;
                    float2 _2874 = _2873.xy;
                    float3 _2882 = _2873.xyz;
                    bool3 _2883 = bool3(_2882.x <= 0.0f.xxx.x, _2882.y <= 0.0f.xxx.y, _2882.z <= 0.0f.xxx.z);
                    bool3 _2884 = bool3(_2882.x >= 1.0f.xxx.x, _2882.y >= 1.0f.xxx.y, _2882.z >= 1.0f.xxx.z);
                    float _2887 = _2873.z;
                    float2 _2898 = ((_2874 * (_51_m12[_2852].zw - _51_m12[_2852].xy)) + _51_m12[_2852].xy).xy * _51_m13.zw;
                    float2 _2900 = floor(_2898 + 0.5f.xx);
                    float2 _2901 = _2898 - _2900;
                    float _2902 = _2901.x;
                    float _2903 = _2902 + 0.5f;
                    float _2904 = _2903 * _2903;
                    float _2907 = 1.0f - _2902;
                    float _2908 = min(_2902, 0.0f);
                    float _2911 = _2902 + 1.0f;
                    float _2912 = max(_2902, 0.0f);
                    float _2923 = _2901.y;
                    float _2924 = _2923 + 0.5f;
                    float _2925 = _2924 * _2924;
                    float _2928 = 1.0f - _2923;
                    float _2929 = min(_2923, 0.0f);
                    float _2932 = _2923 + 1.0f;
                    float _2933 = max(_2923, 0.0f);
                    float3 _2945 = float3(0.1599999964237213134765625f * _2907, 0.1599999964237213134765625f * ((_2911 - (_2912 * _2912)) + 1.0f), _2904 * 0.07999999821186065673828125f);
                    float3 _2946 = float3(0.1599999964237213134765625f * ((_2904 * 0.5f) - _2902), 0.1599999964237213134765625f * ((_2907 - (_2908 * _2908)) + 1.0f), 0.1599999964237213134765625f * _2911) + _2945;
                    float3 _2948 = float3(0.1599999964237213134765625f * _2928, 0.1599999964237213134765625f * ((_2932 - (_2933 * _2933)) + 1.0f), _2925 * 0.07999999821186065673828125f);
                    float3 _2949 = float3(0.1599999964237213134765625f * ((_2925 * 0.5f) - _2923), 0.1599999964237213134765625f * ((_2928 - (_2929 * _2929)) + 1.0f), 0.1599999964237213134765625f * _2932) + _2948;
                    float3 _2955 = ((_2945 / _2946) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                    float3 _2957 = ((_2948 / _2949) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                    float2 _2959 = _2900 * _51_m13.xy;
                    float _2960 = _2955.x;
                    float _2961 = _2957.x;
                    float _2964 = _2955.y;
                    float _2967 = _2955.z;
                    float _2970 = _2957.y;
                    float _2977 = _2957.z;
                    float _2984 = _2946.x;
                    float _2985 = _2949.x;
                    float _2987 = _2946.y;
                    float _2989 = _2946.z;
                    float _2991 = _2949.y;
                    float _2995 = _2949.z;
                    float _3053 = (((((((_2984 * _2985) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2960, _2961), _363).xy, _2887)) + ((_2987 * _2985) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2964, _2961), _363).xy, _2887))) + ((_2989 * _2985) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2967, _2961), _363).xy, _2887))) + ((_2984 * _2991) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2960, _2970), _363).xy, _2887))) + ((_2987 * _2991) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2964, _2970), _363).xy, _2887))) + ((_2989 * _2991) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2967, _2970), _363).xy, _2887))) + ((_2984 * _2995) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2960, _2977), _363).xy, _2887));
                    float2 _3074 = min(_2874, 1.0f.xx - _2874);
                    _3088 = (_2852 >= 0) ? lerp(1.0f, (any(bool3(_2883.x || _2884.x, _2883.y || _2884.y, _2883.z || _2884.z)) || ((asuint(_2887) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3053 + ((_2987 * _2995) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2964, _2977), _363).xy, _2887))) + ((_2989 * _2995) * _53.SampleCmpLevelZero(_26, float3(_2959 + float2(_2967, _2977), _363).xy, _2887))), _2644 ? min(_51_m11[_2852].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2852].z - _2870) * 0.25f, min(_3074.x, _3074.y)))) : _51_m11[_2852].w) : 1.0f;
                }
                else
                {
                    _3088 = 1.0f;
                }
                float3 _3112;
                float3 _3113;
                if (_2647)
                {
                    float3 _3091 = _2600 * _2600;
                    float3 _3092 = reflect(_755, _677);
                    float _3101 = dot(_3092, _2635);
                    _3112 = _3091 / clamp(_3091 + (0.5f * clamp(_49_m6[_2017].z * _2624, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3113 = normalize(_2637 + (_2635 * clamp(dot(_2637, (_3092 * _3101) - _2635) / ((_49_m6[_2017].z * _49_m6[_2017].z) - (_3101 * _3101)), 0.0f, 1.0f)));
                }
                else
                {
                    _3112 = 1.0f.xxx;
                    _3113 = _2625;
                }
                float3 _3114 = _3113 + _449;
                float3 _3118 = _3114 * rsqrt(max(6.103515625e-05f, dot(_3114, _3114)));
                float3 _3244;
                if (_2800)
                {
                    float _3122 = clamp(_2666, 0.0f, 1.0f);
                    float _3124 = clamp(dot(_677, _3118), 0.0f, 1.0f);
                    float _3126 = clamp(dot(_449, _3118), 0.0f, 1.0f);
                    float _3129 = clamp(dot(_677, _449), 0.0f, 1.0f);
                    float _3130 = _37_m86 * _37_m86;
                    float _3140;
                    if (_2629 > 0.0f)
                    {
                        _3140 = clamp(_3130 + ((_2629 * _2629) / ((_3126 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3140 = _3130;
                    }
                    float _3141 = _3140 * _3140;
                    float _3162 = (((_3124 * _3141) - _3124) * _3124) + 1.0f;
                    float _3167 = 1.0f - _3126;
                    float _3168 = _3167 * _3167;
                    float _3170 = (_3167 * _3168) * _3168;
                    float _3194 = 1.0f - _37_m86;
                    float _3201 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3194 * (1.04997003078460693359375f + (_3194 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3194))))));
                    float _3202 = 1.0f - _3201;
                    float3 _3205 = _826 + ((1.0f.xxx - _826) * 0.0476190485060214996337890625f);
                    float _3216 = clamp(1.0f - _741, 0.0f, 1.0f);
                    float _3224 = clamp((dot(_677, _3113) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3240 = (clamp((min(((_826 * (1.0f - _3170)) + _3170.xxx) * (((_3141 / (_3162 * _3162)) * _3112.y) * (0.5f / (((_3122 * sqrt(((((-_3129) * _3141) + _3129) * _3129) + _3141)) + (_3129 * sqrt(((((-_3122) * _3141) + _3122) * _3122) + _3141))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3205 * (((_58.SampleLevel(_24, (float2(_3129, _37_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_24, (float2(_3122, _37_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3201) / _3202)) * _3205) / (1.0f.xxx - (_3205 * _3202)))) * _49_m6[_2029].z, 0.0f.xxx, 1000.0f.xxx) * _2666) + (_1287 * lerp(lerp(1.0f, (_3224 * sqrt(_3224)) * 1.66666662693023681640625f, _3216) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_449, _3113), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3216)));
                    _3244 = (_3240 + ((_728 * _3112.z) * _2666)) * (((_49_m6[_2011].xyz * _2799) * _3088) * _2108);
                }
                else
                {
                    _3244 = 0.0f.xxx;
                }
                _3245 = _1974;
                _3246 = _3244;
            }
            else
            {
                float _2598;
                do
                {
                    if (_2112)
                    {
                        _2598 = 1.0f;
                        break;
                    }
                    float _2132 = (0.5f + (0.5f * _49_m6[_2017].y)) - abs(_49_m6[_2017].x);
                    float _2133 = _49_m6[_2017].y - _2132;
                    float _2140 = abs(max((1.0f - abs(_2132)) - abs(_2133), 0.00048828125f));
                    float3 _2144 = normalize(float3(_2132, _2133, (_49_m6[_2017].x >= 0.0f) ? _2140 : (-_2140)));
                    float3 _2145 = _49_m6[_2014].xyz - _408;
                    float _2146 = dot(_2145, _2145);
                    float3 _2148 = _2145 * rsqrt(_2146);
                    int _2151 = int(_49_m6[_2029].w);
                    float3 _2153 = (_2144 * _49_m6[_2017].z) * 0.5f;
                    float3 _2154 = _2145 - _2153;
                    float3 _2155 = _2145 + _2153;
                    bool _2158 = (uint(_49_m6[_2011].w) & 1u) == 0u;
                    bool _2161 = _2158 || ((_2033 & 2u) != 0u);
                    bool _2164 = (!_2158) && (_49_m6[_2017].z > 0.0f);
                    float _2176;
                    if (_2164)
                    {
                        _2176 = 1.0f / ((((length(_2154) * length(_2155)) + dot(_2154, _2155)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2176 = 1.0f;
                    }
                    float _2198;
                    if (_49_m6[_2026].w < 0.0f)
                    {
                        float _2192 = _2146 * (_49_m6[_2014].w * _49_m6[_2014].w);
                        float _2195 = clamp(1.0f - (_2192 * _2192), 0.0f, 1.0f);
                        _2198 = lerp(1.0f / (_2146 + 1.0f), _2176, float(_2164)) * (_2195 * _2195);
                    }
                    else
                    {
                        float3 _2181 = _2145 * _49_m6[_2014].w;
                        _2198 = _2176 * pow(1.0f - clamp(dot(_2181, _2181), 0.0f, 1.0f), _49_m6[_2026].w);
                    }
                    float _2204 = clamp((dot(_2148, -_2144) - _49_m6[_2017].z) * _49_m6[_2017].w, 0.0f, 1.0f);
                    float _2208 = _2198 * lerp(1.0f, _2204 * _2204, float(_2158));
                    float _2308;
                    if ((!_2164) && (_2151 >= 0))
                    {
                        uint _2214 = uint(_2151);
                        float2 _2301;
                        [branch]
                        if (_2158)
                        {
                            float4 _2291 = mul(_61_m1[_2214], _412);
                            _2301 = _61_m0[_2214].xy + (clamp(_2291.xy / _2291.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2214].zw);
                        }
                        else
                        {
                            float3 _2228 = mul(float4(-_2145, 0.0f), _61_m1[_2214]).xyz;
                            float3 _375 = _2228;
                            float3 _374 = _2228;
                            float3 _373 = abs(_2228);
                            uint _2237 = uint(int(_373.y > _373.x));
                            uint _2243 = (_373.z > _373[_2237]) ? 2u : _2237;
                            uint _2249 = (_2243 * 2u) + uint(_374[_2243] < 0.0f);
                            float _2253 = abs(_375[_2249 / 2u]);
                            float _2273 = 0.5f - (0.000244140625f / _61_m0[_2214].w);
                            _2301 = _61_m0[_2214].xy + (clamp(float2((float(_2249) + ((((_375[uint(_343[_2249].x)] * _344[_2249].x) / _2253) * _2273) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_343[_2249].y)] * _344[_2249].y) / _2253) * _2273)), 0.0f.xx, 1.0f.xx) * _61_m0[_2214].zw);
                        }
                        _2308 = _2208 * _59.SampleLevel(_24, _2301, 0.0f).x;
                    }
                    else
                    {
                        _2308 = _2208;
                    }
                    float _2597;
                    if (_2308 > 0.0f)
                    {
                        int _2361;
                        if (_2161)
                        {
                            _2361 = int(_49_m6[_2020].x);
                        }
                        else
                        {
                            uint _2316 = asuint(_49_m6[_2017].w);
                            uint _2318 = asuint(_49_m6[_2020].x);
                            float3 _2319 = _408 - _49_m6[_2014].xyz;
                            float3 _2320 = abs(_2319);
                            float _2321 = _2320.x;
                            float _2322 = _2320.y;
                            float _2324 = _2320.z;
                            int _2356;
                            if ((_2321 > _2322) && (_2321 > _2324))
                            {
                                _2356 = int((_2319.x > 0.0f) ? (_2316 >> 24u) : ((_2316 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2348;
                                if (_2322 > _2324)
                                {
                                    _2348 = int((_2319.y > 0.0f) ? ((_2316 >> 8u) & 255u) : (_2316 & 255u));
                                }
                                else
                                {
                                    _2348 = int((_2319.z > 0.0f) ? ((_2318 >> 8u) & 255u) : (_2318 & 255u));
                                }
                                _2356 = _2348;
                            }
                            _2361 = (_2356 < 80) ? _2356 : (-1);
                        }
                        float3 _2371 = (_408 - ((-_2148) * _51_m11[_2361].x)) + (_677 * (_51_m11[_2361].y * 5.0f));
                        float4 _2378 = mul(_51_m10[_2361], float4(_2371, 1.0f));
                        float _2379 = _2378.w;
                        float3 _2382 = _2378.xyz / _2379.xxx;
                        float2 _2383 = _2382.xy;
                        float3 _2391 = _2382.xyz;
                        bool3 _2392 = bool3(_2391.x <= 0.0f.xxx.x, _2391.y <= 0.0f.xxx.y, _2391.z <= 0.0f.xxx.z);
                        bool3 _2393 = bool3(_2391.x >= 1.0f.xxx.x, _2391.y >= 1.0f.xxx.y, _2391.z >= 1.0f.xxx.z);
                        float _2396 = _2382.z;
                        float2 _2407 = ((_2383 * (_51_m12[_2361].zw - _51_m12[_2361].xy)) + _51_m12[_2361].xy).xy * _51_m13.zw;
                        float2 _2409 = floor(_2407 + 0.5f.xx);
                        float2 _2410 = _2407 - _2409;
                        float _2411 = _2410.x;
                        float _2412 = _2411 + 0.5f;
                        float _2413 = _2412 * _2412;
                        float _2416 = 1.0f - _2411;
                        float _2417 = min(_2411, 0.0f);
                        float _2420 = _2411 + 1.0f;
                        float _2421 = max(_2411, 0.0f);
                        float _2432 = _2410.y;
                        float _2433 = _2432 + 0.5f;
                        float _2434 = _2433 * _2433;
                        float _2437 = 1.0f - _2432;
                        float _2438 = min(_2432, 0.0f);
                        float _2441 = _2432 + 1.0f;
                        float _2442 = max(_2432, 0.0f);
                        float3 _2454 = float3(0.1599999964237213134765625f * _2416, 0.1599999964237213134765625f * ((_2420 - (_2421 * _2421)) + 1.0f), _2413 * 0.07999999821186065673828125f);
                        float3 _2455 = float3(0.1599999964237213134765625f * ((_2413 * 0.5f) - _2411), 0.1599999964237213134765625f * ((_2416 - (_2417 * _2417)) + 1.0f), 0.1599999964237213134765625f * _2420) + _2454;
                        float3 _2457 = float3(0.1599999964237213134765625f * _2437, 0.1599999964237213134765625f * ((_2441 - (_2442 * _2442)) + 1.0f), _2434 * 0.07999999821186065673828125f);
                        float3 _2458 = float3(0.1599999964237213134765625f * ((_2434 * 0.5f) - _2432), 0.1599999964237213134765625f * ((_2437 - (_2438 * _2438)) + 1.0f), 0.1599999964237213134765625f * _2441) + _2457;
                        float3 _2464 = ((_2454 / _2455) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                        float3 _2466 = ((_2457 / _2458) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                        float2 _2468 = _2409 * _51_m13.xy;
                        float _2469 = _2464.x;
                        float _2470 = _2466.x;
                        float _2473 = _2464.y;
                        float _2476 = _2464.z;
                        float _2479 = _2466.y;
                        float _2486 = _2466.z;
                        float _2493 = _2455.x;
                        float _2494 = _2458.x;
                        float _2496 = _2455.y;
                        float _2498 = _2455.z;
                        float _2500 = _2458.y;
                        float _2504 = _2458.z;
                        float _2562 = (((((((_2493 * _2494) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2469, _2470), _363).xy, _2396)) + ((_2496 * _2494) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2473, _2470), _363).xy, _2396))) + ((_2498 * _2494) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2476, _2470), _363).xy, _2396))) + ((_2493 * _2500) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2469, _2479), _363).xy, _2396))) + ((_2496 * _2500) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2473, _2479), _363).xy, _2396))) + ((_2498 * _2500) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2476, _2479), _363).xy, _2396))) + ((_2493 * _2504) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2469, _2486), _363).xy, _2396));
                        float2 _2583 = min(_2383, 1.0f.xx - _2383);
                        _2597 = (_2361 >= 0) ? lerp(1.0f, (any(bool3(_2392.x || _2393.x, _2392.y || _2393.y, _2392.z || _2393.z)) || ((asuint(_2396) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2562 + ((_2496 * _2504) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2473, _2486), _363).xy, _2396))) + ((_2498 * _2504) * _53.SampleCmpLevelZero(_26, float3(_2468 + float2(_2476, _2486), _363).xy, _2396))), _2161 ? min(_51_m11[_2361].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2361].z - _2379) * 0.25f, min(_2583.x, _2583.y)))) : _51_m11[_2361].w) : 1.0f;
                    }
                    else
                    {
                        _2597 = 1.0f;
                    }
                    _2598 = _2597;
                    break;
                } while(false);
                _3245 = _1974 * _2598;
                _3246 = 0.0f.xxx;
            }
            _1996 = _3245;
            _1999 = _1998 + _3246;
        }
        _1971 = _1970 + _1998;
    }
    float _3271 = _408.y * _18_m46.w;
    float _3276 = max(0.00999999977648258209228515625f, _3271 + _18_m47.w);
    float3 _3290 = exp(_18_m45.xyz * ((-max(0.0f, (_450 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3276)) / _3276) * exp(_3271 + _18_m48.w))));
    float _3293 = dot(_755, _18_m44.xyz);
    float _3299 = _18_m45.w * _18_m45.w;
    float _3303 = (1.0f + _3299) - ((2.0f * _18_m45.w) * _3293);
    float3 _3633;
    float _3634;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3461 = (uint3(int3(int(_857.x), int(_857.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3462 = _3461.y;
        uint _3463 = _3461.z;
        uint _3466 = _3461.x + (_3462 * _3463);
        uint _3468 = _3462 + (_3463 * _3466);
        uint _3470 = _3463 + (_3466 * _3468);
        uint _3472 = _3466 + (_3468 * _3470);
        float _3494 = dot(_755, -_16_m0[2].xyz);
        float3 _3504 = _408 - _16_m11.xyz;
        float _3506 = (_18_m55.w * ((_3494 > 5.9604644775390625e-08f) ? (1.0f / _3494) : 0.0f)) * (1.0f / _450);
        float _3507 = _3504.y;
        float _3508 = _3506 * _3507;
        float _3510 = _16_m11.y + _3508;
        float _3511 = _3507 - _3508;
        float _3513 = (1.0f - _3506) * _450;
        float _3527 = max(-127.0f, _18_m49.z * _3511);
        float _3551 = max(-127.0f, _18_m52.x * _3511);
        float _3562 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3510 - _18_m49.x)))) * ((abs(_3527) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3527)) / _3527) : (0.693147182464599609375f - (0.2402265071868896484375f * _3527)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3510 - _18_m52.z)))) * ((abs(_3551) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3551)) / _3551) : (0.693147182464599609375f - (0.2402265071868896484375f * _3551))));
        float _3584 = clamp((_450 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3587 = clamp((max(clamp(exp2(-(_3562 * _3513)), 0.0f, 1.0f), _18_m51.w) + clamp((_450 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3584, 0.0f, 1.0f);
        float4 _3627 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _39.SampleLevel(_24, float3((_1945 + ((((float3(uint3(_3472, _3468 + (_3470 * _3472), _368) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_858 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_858 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3633 = _3627.xyz + (((_18_m51.xyz * (1.0f - _3587)) + (((_18_m54.xyz * pow(clamp(dot(_449, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3562 * max(_3513 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3584))) * _3627.w);
        _3634 = _3627.w * _3587;
    }
    else
    {
        float3 _3333 = _408 - _16_m11.xyz;
        float _3335 = _3333.y;
        float _3349 = max(-127.0f, _18_m49.z * _3335);
        float _3373 = max(-127.0f, _18_m52.x * _3335);
        float _3384 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3349) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3349)) / _3349) : (0.693147182464599609375f - (0.2402265071868896484375f * _3349)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3373) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3373)) / _3373) : (0.693147182464599609375f - (0.2402265071868896484375f * _3373))));
        float _3406 = clamp((_450 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3409 = clamp((max(clamp(exp2(-(_3384 * _450)), 0.0f, 1.0f), _18_m51.w) + clamp((_450 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3406, 0.0f, 1.0f);
        _3633 = (_18_m51.xyz * (1.0f - _3409)) + (((_18_m54.xyz * pow(clamp(dot(_449, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3384 * max(_450 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3406));
        _3634 = _3409;
    }
    float3 _3642 = (((((((lerp(dot((_1308 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, (_1308 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)), _1314) * _18_m76.xyz) * _37_m11) + ((_1308 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) * _1322)) + ((_725 * (FOG_MODIFICATION > 0.5f ? 0.4f : 1.0f)) * (1.0f - _37_m84))) + (_1944.xyz + ((_1970 * (FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f)) * _1973)).xyz).xyz * (FOG_MODIFICATION > 0.5f ? (0.5f + 0.5f * (_3290 * _3634)) : (_3290 * _3634))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3293 * _3293)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3299) / max((12.56637096405029296875f * _3303) * sqrt(_3303), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3290)) * _3634 * (FOG_MODIFICATION > 0.5f ? 0.349999994f : 1.0f)) + (_3633 * (FOG_MODIFICATION > 0.5f ? 0.349999994f : 1.0f))) * (1.0f - _37_m1))).xyz;
    float3 _3646 = lerp((_770.xyz * lerp(1.0f.xxx, _37_m102.xyz * _37_m100, _772)).xyz, (_3642 * _724).xyz, _772);
    float4 _3647 = float4(_3646.x, _3646.y, _3646.z, _364.w);
    _3647.w = 1.0f;
    float3 _3656 = ((lerp(dot(_3647.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3647.xyz, _1314) * _18_m76.xyz) * _37_m11) + (_3647.xyz * _1322);
    float2 _3665 = min(_824, 1.0f.xx);
    float4 _3666 = float4(_3665.x, _3665.y, _364.z, _364.w);
    _3666.z = float(clamp(max(dot(_3656.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 1.0f) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3666.w = (_37_m2 * _37_m0) * float(clamp(max(dot(_725, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _724, _724) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3656.x, _3656.y, _3656.z);
    if (FOG_MODIFICATION > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3647.w);
    _14 = _3666;
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
