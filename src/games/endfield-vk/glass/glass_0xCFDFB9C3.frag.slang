#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x6CC74479.
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

static float _358 = (float)0;
static float4 _359 = (float4)0;
static float3 _360 = (float3)0;
static uint _363 = (uint)0;

static const float4 _337[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _338[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _339[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _35_36 : register(b0)
{
    float _36_m0 : packoffset(c0);
    float _36_m1 : packoffset(c0.y);
    float _36_m2 : packoffset(c0.z);
    float _36_m3 : packoffset(c0.w);
    float _36_m4 : packoffset(c1);
    float _36_m5 : packoffset(c1.y);
    float _36_m6 : packoffset(c1.z);
    float _36_m7 : packoffset(c1.w);
    float _36_m8 : packoffset(c2);
    float _36_m9 : packoffset(c2.y);
    float _36_m10 : packoffset(c2.z);
    float _36_m11 : packoffset(c2.w);
    float _36_m12 : packoffset(c3);
    float _36_m13 : packoffset(c3.y);
    float _36_m14 : packoffset(c3.z);
    float _36_m15 : packoffset(c3.w);
    float4 _36_m16 : packoffset(c4);
    float _36_m17 : packoffset(c5);
    float _36_m18 : packoffset(c5.y);
    float _36_m19 : packoffset(c5.z);
    float _36_m20 : packoffset(c5.w);
    float4 _36_m21 : packoffset(c6);
    float4 _36_m22 : packoffset(c7);
    float4 _36_m23 : packoffset(c8);
    float4 _36_m24 : packoffset(c9);
    float4 _36_m25 : packoffset(c10);
    float _36_m26 : packoffset(c11);
    float _36_m27 : packoffset(c11.y);
    float _36_m28 : packoffset(c11.z);
    float _36_m29 : packoffset(c11.w);
    float _36_m30 : packoffset(c12);
    float _36_m31 : packoffset(c12.y);
    float _36_m32 : packoffset(c12.z);
    float _36_m33 : packoffset(c12.w);
    float _36_m34 : packoffset(c13);
    float _36_m35 : packoffset(c13.y);
    float _36_m36 : packoffset(c13.z);
    float _36_m37 : packoffset(c13.w);
    float _36_m38 : packoffset(c14);
    float _36_m39 : packoffset(c14.y);
    float _36_m40 : packoffset(c14.z);
    float _36_m41 : packoffset(c14.w);
    float _36_m42 : packoffset(c15);
    float _36_m43 : packoffset(c15.y);
    float _36_m44 : packoffset(c15.z);
    float _36_m45 : packoffset(c15.w);
    float4 _36_m46 : packoffset(c16);
    float4 _36_m47 : packoffset(c17);
    float4 _36_m48 : packoffset(c18);
    float4 _36_m49 : packoffset(c19);
    float4 _36_m50 : packoffset(c20);
    float _36_m51 : packoffset(c21);
    float _36_m52 : packoffset(c21.y);
    float _36_m53 : packoffset(c21.z);
    float _36_m54 : packoffset(c21.w);
    float _36_m55 : packoffset(c22);
    float _36_m56 : packoffset(c22.y);
    float _36_m57 : packoffset(c22.z);
    float _36_m58 : packoffset(c22.w);
    float _36_m59 : packoffset(c23);
    float _36_m60 : packoffset(c23.y);
    float _36_m61 : packoffset(c23.z);
    float4 _36_m62 : packoffset(c24);
    float4 _36_m63 : packoffset(c25);
    float4 _36_m64 : packoffset(c26);
    float4 _36_m65 : packoffset(c27);
    float4 _36_m66 : packoffset(c28);
    float4 _36_m67 : packoffset(c29);
    float4 _36_m68 : packoffset(c30);
    float4 _36_m69 : packoffset(c31);
    float4 _36_m70 : packoffset(c32);
    float4 _36_m71 : packoffset(c33);
    float4 _36_m72 : packoffset(c34);
    float4 _36_m73 : packoffset(c35);
    float4 _36_m74 : packoffset(c36);
    float4 _36_m75 : packoffset(c37);
    float _36_m76 : packoffset(c38);
    float _36_m77 : packoffset(c38.y);
    float _36_m78 : packoffset(c38.z);
    float _36_m79 : packoffset(c38.w);
    float _36_m80 : packoffset(c39);
    float _36_m81 : packoffset(c39.y);
    float _36_m82 : packoffset(c39.z);
    float _36_m83 : packoffset(c39.w);
    float _36_m84 : packoffset(c40);
    float _36_m85 : packoffset(c40.y);
    float _36_m86 : packoffset(c40.z);
    float _36_m87 : packoffset(c40.w);
    float _36_m88 : packoffset(c41);
    float _36_m89 : packoffset(c41.y);
    float _36_m90 : packoffset(c41.z);
    float _36_m91 : packoffset(c41.w);
    float _36_m92 : packoffset(c42);
    float _36_m93 : packoffset(c42.y);
    float _36_m94 : packoffset(c42.z);
    float _36_m95 : packoffset(c42.w);
    float4 _36_m96 : packoffset(c43);
    float4 _36_m97 : packoffset(c44);
};

[[vk::binding(47, 0)]]
cbuffer _45_46 : register(b47)
{
    int _46_m0 : packoffset(c0);
    int _46_m1 : packoffset(c0.y);
    int _46_m2 : packoffset(c0.z);
    int _46_m3 : packoffset(c0.w);
    float _46_m4 : packoffset(c1);
    float _46_m5 : packoffset(c1.y);
    float _46_m6 : packoffset(c1.z);
    float _46_m7 : packoffset(c1.w);
    float _46_m8 : packoffset(c2);
    float _46_m9 : packoffset(c2.y);
    float _46_m10 : packoffset(c2.z);
    float _46_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _47_48 : register(b14)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    float4 _48_m4 : packoffset(c4);
    uint4 _48_m5 : packoffset(c5);
    float4 _48_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _49_50 : register(b15)
{
    column_major float4x4 _50_m0[5] : packoffset(c0);
    float4 _50_m1[4] : packoffset(c20);
    float4 _50_m2[4] : packoffset(c24);
    float4 _50_m3[4] : packoffset(c28);
    float4 _50_m4 : packoffset(c32);
    float4 _50_m5 : packoffset(c33);
    float4 _50_m6 : packoffset(c34);
    float4 _50_m7 : packoffset(c35);
    float4 _50_m8 : packoffset(c36);
    float4 _50_m9[27] : packoffset(c37);
    column_major float4x4 _50_m10[56] : packoffset(c64);
    float4 _50_m11[56] : packoffset(c288);
    float4 _50_m12[56] : packoffset(c344);
    float4 _50_m13 : packoffset(c400);
    float4 _50_m14[47] : packoffset(c401);
    column_major float4x4 _50_m15[15] : packoffset(c448);
    float4 _50_m16[15] : packoffset(c508);
    float4 _50_m17[15] : packoffset(c523);
    float4 _50_m18[15] : packoffset(c538);
    float4 _50_m19 : packoffset(c553);
    float4 _50_m20 : packoffset(c554);
    float4 _50_m21[21] : packoffset(c555);
    column_major float4x4 _50_m22 : packoffset(c576);
    column_major float4x4 _50_m23 : packoffset(c580);
    float4 _50_m24 : packoffset(c584);
    float4 _50_m25 : packoffset(c585);
    float4 _50_m26 : packoffset(c586);
    float4 _50_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _59_60 : register(b49)
{
    float4 _60_m0[32] : packoffset(c0);
    column_major float4x4 _60_m1[32] : packoffset(c32);
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
[[vk::binding(35, 0)]] Texture3D<float4> _38 : register(t35);
[[vk::binding(34, 0)]] Texture3D<float4> _39 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _40 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _41 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _42 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _43 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _44 : register(t29);
[[vk::binding(9, 0)]] Texture2D<float4> _51 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _52 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _53 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _54 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _55 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _57 : register(t27);
[[vk::binding(28, 0)]] Texture2D<float4> _58 : register(t28);

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
    float2 _390 = gl_FragCoord.xy * _18_m0.zw;
    uint2 _391 = uint2(gl_FragCoord.xy);
    float2 _393 = (_390 * 2.0f) - 1.0f.xx;
    float4 _396 = float4(_393, gl_FragCoord.z, 1.0f);
    _396.y = -_393.y;
    float4 _399 = mul(_16_m6, _396);
    float3 _403 = _399.xyz / _399.w.xxx;
    float4 _407 = float4(_403, 1.0f);
    float _410 = abs(mul(_16_m0, _407).z);
    float _414 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _419 = float4(_7.xyz, _414).xyz;
    float3 _440;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _440 = _16_m11.xyz - _403;
            break;
        }
        else
        {
            _440 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _441 = dot(_440, _440);
    float _443 = rsqrt(max(_441, 9.9999999392252902907785028219223e-09f));
    float3 _444 = _440 * _443;
    float _445 = _441 * _443;
    float2 _505 = ((mul(((((_4.xy * _36_m23.x) + ((((_4.zw * _36_m4) - (_5.xy * _36_m4)) + _5.xy) * _36_m23.y)) + (_36_m21.xy * _18_m75.w)) + (_36_m21.zw * (_5 * _36_m4).x)) - 0.5f.xx, float2x2(float2(_36_m22.xy), float2(_36_m22.zw))) + 0.5f.xx) * _36_m24.xy) + _36_m24.zw;
    float _513 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
    float _516 = lerp(0.0f, _513, _36_m90);
    _505.y = _505.y * (1.0f + min(_516, 0.5f));
    float4 _531 = _31.SampleBias(_32, _505 + _516.xx, _18_m16);
    float4 _536 = ((_36_m16 * lerp(_8, 1.0f.xxxx, _36_m5.xxxx)) * float4(_36_m6, _36_m6, _36_m6, _36_m7)) * lerp(_531, float4(1.0f, 1.0f, 1.0f, _531.x), _36_m18.xxxx);
    float2 _545 = ((float2(_391) * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _548 = float4(_545, _28.SampleLevel(_23, _390, 0.0f).x, 1.0f);
    _548.y = -_545.y;
    float4 _551 = mul(_16_m6, _548);
    float _609 = fmod(floor((_18_m75.w + lerp(0.0f, _513, _36_m43)) * _36_m40), _36_m47.y * _36_m47.x);
    float _612 = _36_m47.y - floor(_609 / _36_m47.x);
    float _615 = 1.0f / _36_m47.x;
    float _616 = 1.0f / _36_m47.y;
    float4 _619 = float4(_615, _616, (_609 - (_612 * _36_m47.x)) * _615, _612 * _616);
    float2 _623 = (_4.xy * _619.xy) + _619.zw;
    float4 _626 = _34.SampleBias(_25, _623, _18_m16);
    float4 _629 = clamp(_626 - _36_m45.xxxx, 0.0f.xxxx, 1.0f.xxxx);
    float _633 = _629.w;
    float _637 = _633 * _36_m41;
    float4 _641 = _33.SampleBias(_25, _623, _18_m16);
    _641.w = _641.w * _641.x;
    float2 _648 = (_641.wy * 2.0f) - 1.0f.xx;
    float3 _649 = float3(_648.x, _648.y, _360.z);
    float2 _650 = _648.xy;
    _649.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_650, _650), 0.0f, 1.0f)));
    float2 _658 = _649.xy * _36_m38;
    float3 _660 = mul(float3(_658.x, _658.y, _649.z), float3x3(_419 * 1.0f, (cross(_6, _419) * _414) * 1.0f, _6 * 1.0f));
    float3 _664 = _660 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_660, _660)));
    bool3 _670 = (gl_FrontFacing ? true : false).xxx;
    float3 _671 = -_664;
    float3 _672 = float3(_670.x ? _664.x : _671.x, _670.y ? _664.y : _671.y, _670.z ? _664.z : _671.z);
    float _707 = ((((clamp(((_536.w * ((_36_m26 != 0.0f) ? (clamp((_410 - _36_m27) / (_36_m28 - _36_m27), 0.0f, 1.0f) * clamp((_410 - _36_m29) / (_36_m30 - _36_m29), 0.0f, 1.0f)) : 1.0f)) * _637) - _36_m44, 0.0f, 1.0f) * _36_m41) * clamp(((abs(mul(_16_m0, float4(_551.xyz / _551.w.xxx, 1.0f)).z) - _410) + _36_m35) / _36_m34, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _36_m88)) * lerp(1.0f, pow(abs(dot(_6, _444)), _36_m81), _36_m83)) * (1.0f - _21_m0[_11]._m1.y);
    float _719 = clamp(_707, 0.0f, 1.0f);
    float3 _720 = clamp(((_536.xyz + ((_629.xyz * _36_m46.xyz) * _633)).xyz * ((1.0f - _36_m12) + (_18_m20.y * _36_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _723 = _720 * _36_m84;
    float _736 = (_36_m53 * (_637 * lerp(1.0f, _8.x, _36_m88))) * _723.x;
    float2 _787;
    if (clamp((_36_m3 + 1.0f) - _36_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _773 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
        _773.y = -_773.y;
        _787 = ((sqrt(sqrt(abs(_773 * 0.5f))) * float2(int2(sign(_773)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _787 = 0.0f.xx;
    }
    float3 _789 = (0.07999999821186065673828125f * _36_m87).xxx;
    uint2 _820;
    float _821;
    if (_18_m24.y == 1.0f)
    {
        float4 _797 = mul(_18_m135, _407);
        float4 _800 = _797;
        _800.y = -_797.y;
        float4 _803 = _800 * (1.0f / _797.w);
        _820 = uint2(clamp(((_803.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _821 = 1.0f / ((_18_m2.z * _803.z) + _18_m2.w);
    }
    else
    {
        _820 = _391;
        _821 = _410;
    }
    float3 _823 = _403 + (_672 * 0.25f);
    float3 _833 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _842 = _823 - (_18_m105.xyz + (_833 * (-_18_m107.w)));
    float _856 = max(clamp((max(abs(_842.x), abs(_842.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_842.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1158;
    float4 _1159;
    float4 _1160;
    float _1161;
    float _1162;
    if ((_18_m105.w != 0.0f) && (_856 < 1.0f))
    {
        float3 _869 = _823 - (_18_m105.xyz + (_833 * (-_18_m107.y)));
        float _883 = max(clamp((max(abs(_869.x), abs(_869.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_869.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _959;
        float4 _960;
        float4 _961;
        float4 _962;
        if (_883 < 1.0f)
        {
            float3 _892 = ((_823 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _894 = _892 - floor(_892);
            float4 _898 = _39.SampleLevel(_25, _894, 0.0f);
            float _899 = 1.0f - _883;
            float _903 = _18_m106.y * 0.5f;
            float _908 = _894.x;
            float _909 = clamp(_894.y, _903, 1.0f - _903) * 0.3333333432674407958984375f;
            float _910 = _894.z;
            float4 _913 = _40.SampleLevel(_24, float3(_908, _909, _910), 0.0f);
            float _929 = _898.x;
            float _939 = _898.y;
            float _949 = _898.z;
            _959 = _856 + (_913.w * _899);
            _960 = float4(((_40.SampleLevel(_24, float3(_908, _909 + 0.666666686534881591796875f, _910), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _949, _949) * _899;
            _961 = float4(((_40.SampleLevel(_24, float3(_908, _909 + 0.3333333432674407958984375f, _910), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _939, _939) * _899;
            _962 = float4(((_913.xyz * 4.0f) - 2.0f.xxx) * _929, _929) * _899;
        }
        else
        {
            _959 = _856;
            _960 = 0.0f.xxxx;
            _961 = 0.0f.xxxx;
            _962 = 0.0f.xxxx;
        }
        float3 _968 = _823 - (_18_m105.xyz + (_833 * (-_18_m107.z)));
        float _982 = max(clamp((max(abs(_968.x), abs(_968.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_968.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1062;
        float4 _1063;
        float4 _1064;
        float4 _1065;
        if (_982 < 1.0f)
        {
            float3 _991 = ((_823 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _993 = _991 - floor(_991);
            float4 _997 = _41.SampleLevel(_25, _993, 0.0f);
            float _999 = _883 * (1.0f - _982);
            float _1003 = _18_m106.y * 0.5f;
            float _1008 = _993.x;
            float _1009 = clamp(_993.y, _1003, 1.0f - _1003) * 0.3333333432674407958984375f;
            float _1010 = _993.z;
            float4 _1013 = _42.SampleLevel(_24, float3(_1008, _1009, _1010), 0.0f);
            float _1029 = _997.x;
            float _1040 = _997.y;
            float _1051 = _997.z;
            _1062 = _959 + (_1013.w * _999);
            _1063 = _960 + (float4(((_42.SampleLevel(_24, float3(_1008, _1009 + 0.666666686534881591796875f, _1010), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1051, _1051) * _999);
            _1064 = _961 + (float4(((_42.SampleLevel(_24, float3(_1008, _1009 + 0.3333333432674407958984375f, _1010), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1040, _1040) * _999);
            _1065 = _962 + (float4(((_1013.xyz * 4.0f) - 2.0f.xxx) * _1029, _1029) * _999);
        }
        else
        {
            _1062 = _959;
            _1063 = _960;
            _1064 = _961;
            _1065 = _962;
        }
        float4 _1148;
        float4 _1149;
        float4 _1150;
        float _1151;
        if (_982 > 0.0f)
        {
            float3 _1074 = ((_823 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1077 = _18_m106.xyz * 0.5f;
            float3 _1079 = clamp(_1074 - floor(_1074), _1077, 1.0f.xxx - _1077);
            float4 _1083 = _43.SampleLevel(_25, _1079, 0.0f);
            float _1085 = _982 * (1.0f - _856);
            float _1089 = _18_m106.y * 0.5f;
            float _1094 = _1079.x;
            float _1095 = clamp(_1079.y, _1089, 1.0f - _1089) * 0.3333333432674407958984375f;
            float _1096 = _1079.z;
            float4 _1099 = _44.SampleLevel(_24, float3(_1094, _1095, _1096), 0.0f);
            float _1115 = _1083.x;
            float _1126 = _1083.y;
            float _1137 = _1083.z;
            _1148 = _1063 + (float4(((_44.SampleLevel(_24, float3(_1094, _1095 + 0.666666686534881591796875f, _1096), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1137, _1137) * _1085);
            _1149 = _1064 + (float4(((_44.SampleLevel(_24, float3(_1094, _1095 + 0.3333333432674407958984375f, _1096), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1126, _1126) * _1085);
            _1150 = _1065 + (float4(((_1099.xyz * 4.0f) - 2.0f.xxx) * _1115, _1115) * _1085);
            _1151 = _1062 + (_1099.w * _1085);
        }
        else
        {
            _1148 = _1063;
            _1149 = _1064;
            _1150 = _1065;
            _1151 = _1062;
        }
        float _1154 = clamp((_1151 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1158 = _1148;
        _1159 = _1149;
        _1160 = _1150;
        _1161 = _1154 - _856;
        _1162 = (_1154 + _856) * 0.5f;
    }
    else
    {
        _1158 = 0.0f.xxxx;
        _1159 = 0.0f.xxxx;
        _1160 = 0.0f.xxxx;
        _1161 = 0.0f;
        _1162 = 1.0f;
    }
    float4 _1182 = _1160 + float4(_18_m108.x * _1162, (_18_m108.y * _1162) + ((_18_m108.w * _1161) * 0.5f), _18_m108.z * _1162, (_18_m108.w * _1162) + ((_18_m108.y * _1161) * 0.375f));
    float4 _1202 = _1159 + float4(_18_m109.x * _1162, (_18_m109.y * _1162) + ((_18_m109.w * _1161) * 0.5f), _18_m109.z * _1162, (_18_m109.w * _1162) + ((_18_m109.y * _1161) * 0.375f));
    float4 _1222 = _1158 + float4(_18_m110.x * _1162, (_18_m110.y * _1162) + ((_18_m110.w * _1161) * 0.5f), _18_m110.z * _1162, (_18_m110.w * _1162) + ((_18_m110.y * _1161) * 0.375f));
    float3 _1250 = lerp(1.0f.xxx, clamp(abs((frac(float3(_36_m51, _36_m52, _736).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _36_m52.xxx) * _736;
    float3 _1257 = ((float3(max(0.0f, dot(_1182.xyz, _672) + _1182.w), max(0.0f, dot(_1202.xyz, _672) + _1202.w), max(0.0f, dot(_1222.xyz, _672) + _1222.w)) * (_723 + (_1250 * _36_m54))) * 1.0f) * _18_m22.x;
    float3 _1266 = (((_1257.x + _1257.y) + _1257.z) * 0.3333333432674407958984375f).xxx;
    float3 _1271 = (_1266 + ((_1257 - _1266) * _36_m82)) + ((-0.0f).xxx * _36_m82);
    float3 _1277 = _18_m76.w.xxx;
    float _1285 = 1.0f - _36_m11;
    float3 _1288 = _403 + (_672 * 0.5f);
    float2 _1738;
    do
    {
        if (_50_m7.w >= 0.9900000095367431640625f)
        {
            _1738 = float2(_50_m7.z, 1.0f);
            break;
        }
        int _1301 = int(_50_m7.x);
        bool3 _1303 = (_1301 == 2).xxx;
        float3 _1311 = _1288 - float3(_1303.x ? _50_m1[0].xyz.x : _16_m11.xyz.x, _1303.y ? _50_m1[0].xyz.y : _16_m11.xyz.y, _1303.z ? _50_m1[0].xyz.z : _16_m11.xyz.z);
        float _1322 = max(clamp((_50_m6.w - dot(_1311, _1311)) * _50_m6.z, 0.0f, 1.0f), _50_m8.x);
        float _1479;
        bool _1480;
        if (_1322 > 0.0f)
        {
            float _1477;
            bool _1478;
            if (_1301 > 0)
            {
                float3 _1329 = _1288 - _50_m1[0].xyz;
                float3 _1333 = _1288 - _50_m1[1].xyz;
                float3 _1337 = _1288 - _50_m1[2].xyz;
                float3 _1341 = _1288 - _50_m1[3].xyz;
                float4 _1346 = float4(dot(_1329, _1329), dot(_1333, _1333), dot(_1337, _1337), dot(_1341, _1341));
                float4 _1355 = float4(_50_m1[0].w, _50_m1[1].w, _50_m1[2].w, _50_m1[3].w);
                float4 _1357 = float4(bool4(_1346.x < _1355.x, _1346.y < _1355.y, _1346.z < _1355.z, _1346.w < _1355.w));
                float3 _1361 = clamp(_1357.yzw - _1357.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1365 = clamp(4.0f - dot(float4(_1357.x, _1361.x, _1361.y, _1361.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1367 = clamp(_1365 + 1.0f, 0.0f, 3.0f);
                uint _1368 = uint(_1365);
                uint _1376 = uint(_1367);
                float _1382 = dot(_1346, _337[_1376]) / _50_m1[_1376].w;
                float _1400;
                if (((_1367 > _1365) && (_1382 >= 0.0f)) && (_1382 <= 1.0f))
                {
                    _1400 = _1365 + step(frac(52.98291778564453125f * frac(dot(float2(_820) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1346, _337[_1368]) / _50_m1[_1368].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1400 = _1365;
                }
                float _1401 = clamp(_1400, 0.0f, 4.0f);
                float4 _1409 = mul(_50_m0[uint(_1401)], float4(_1288, 1.0f));
                float _1412 = _1409.z;
                float4 _1413 = float4(_1409.xy, _1412, _1401);
                float3 _1414 = _1413.xyz;
                bool3 _1415 = bool3(_1414.x <= 0.0f.xxx.x, _1414.y <= 0.0f.xxx.y, _1414.z <= 0.0f.xxx.z);
                bool3 _1416 = bool3(_1414.x >= 1.0f.xxx.x, _1414.y >= 1.0f.xxx.y, _1414.z >= 1.0f.xxx.z);
                bool _1422 = any(bool3(_1415.x || _1416.x, _1415.y || _1416.y, _1415.z || _1416.z)) || ((asuint(_1412) & 2147483647u) > 2139095040u);
                int _1423 = int(_1401);
                float2 _1438 = float4(_50_m3[_1423].xy + (_1413.xy * _50_m3[_1423].zw), _1412, _1401).xy;
                _1477 = _1422 ? 1.0f : (0.25f * (((_51.SampleCmpLevelZero(_26, float3(_1438 + (_50_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _358).xy, _1412) + _51.SampleCmpLevelZero(_26, float3(_1438 + (_50_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _358).xy, _1412)) + _51.SampleCmpLevelZero(_26, float3(_1438 + (_50_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _358).xy, _1412)) + _51.SampleCmpLevelZero(_26, float3(_1438 + (_50_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _358).xy, _1412)));
                _1478 = _1422;
            }
            else
            {
                _1477 = 1.0f;
                _1478 = false;
            }
            _1479 = _1477;
            _1480 = _1478;
        }
        else
        {
            _1479 = 1.0f;
            _1480 = false;
        }
        float _1680;
        float _1681;
        if ((_1322 < 1.0f) || (_50_m8.x > 0.5f))
        {
            float _1491 = 1.0f - clamp(dot(_672, _48_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1508 = float4((_1288 - (_48_m0.xyz * (_1491 * _50_m24.x))) + (_672 * (_1491 * _50_m24.y)), 1.0f);
            float4 _1509 = mul(_50_m23, _1508);
            float _1678;
            if (all(bool2(_1509.xy.x > 0.0f.xx.x, _1509.xy.y > 0.0f.xx.y)) && all(bool2(_1509.xy.x < 1.0f.xx.x, _1509.xy.y < 1.0f.xx.y)))
            {
                uint _1529 = clamp(uint((floor(_1509.y * _50_m25.z) + _1509.x) * _50_m25.y), 0u, 127u);
                uint _1533 = asuint(_50_m27[_1529].x);
                float2 _1534 = spvUnpackHalf2x16(_1533);
                float _1535 = _1534.x;
                float _1677;
                if (_1535 >= 0.0f)
                {
                    float4x4 _1544 = _50_m22;
                    _1544[0].w = _50_m27[_1529].y;
                    _1544[1].w = _50_m27[_1529].z;
                    _1544[2].w = _50_m27[_1529].w;
                    float4 _1551 = mul(_1544, _1508);
                    float _1676;
                    if (all(bool3(_1551.xyz.x > 0.0f.xxx.x, _1551.xyz.y > 0.0f.xxx.y, _1551.xyz.z > 0.0f.xxx.z)) && all(bool3(_1551.xyz.x < 1.0f.xxx.x, _1551.xyz.y < 1.0f.xxx.y, _1551.xyz.z < 1.0f.xxx.z)))
                    {
                        float2 _1575 = float4((_1551.xy * _50_m24.zw) + float2(_1535, spvUnpackHalf2x16(_1533 >> 16u).x), _1551.z, 1.0f).xy * _50_m26.zw;
                        float2 _1577 = floor(_1575 + 0.5f.xx);
                        float2 _1578 = _1575 - _1577;
                        float _1579 = _1578.x;
                        float _1580 = _1579 + 0.5f;
                        float _1582 = (_1580 * _1580) * 0.5f;
                        float _1585 = min(_1579, 0.0f);
                        float _1589 = max(_1579, 0.0f);
                        float4 _1593 = float4(_1582 - _1579, (1.0f - _1579) - (_1585 * _1585), (_1579 + 1.0f) - (_1589 * _1589), _1582) * 0.44444000720977783203125f;
                        float _1594 = _1578.y;
                        float _1595 = _1594 + 0.5f;
                        float _1597 = (_1595 * _1595) * 0.5f;
                        float _1600 = min(_1594, 0.0f);
                        float _1604 = max(_1594, 0.0f);
                        float4 _1608 = float4(_1597 - _1594, (1.0f - _1594) - (_1600 * _1600), (_1594 + 1.0f) - (_1604 * _1604), _1597) * 0.44444000720977783203125f;
                        float2 _1610 = _1593.yw;
                        float2 _1611 = _1593.xz + _1610;
                        float2 _1613 = _1608.yw;
                        float2 _1614 = _1608.xz + _1613;
                        float2 _1620 = ((_1610 / _1611) + float2(-1.5f, 0.5f)) * _50_m26.xx;
                        float2 _1622 = ((_1613 / _1614) + float2(-1.5f, 0.5f)) * _50_m26.yy;
                        float2 _1624 = _1577 * _50_m26.xy;
                        float _1625 = _1620.x;
                        float _1626 = _1622.x;
                        float _1629 = _1620.y;
                        float _1632 = _1622.y;
                        float _1637 = _1611.x;
                        float _1638 = _1614.x;
                        float _1640 = _1611.y;
                        float _1642 = _1614.y;
                        _1676 = ((((_1637 * _1638) * _54.SampleCmpLevelZero(_26, float3(_1624 + float2(_1625, _1626), _358).xy, _1551.z)) + ((_1640 * _1638) * _54.SampleCmpLevelZero(_26, float3(_1624 + float2(_1629, _1626), _358).xy, _1551.z))) + ((_1637 * _1642) * _54.SampleCmpLevelZero(_26, float3(_1624 + float2(_1625, _1632), _358).xy, _1551.z))) + ((_1640 * _1642) * _54.SampleCmpLevelZero(_26, float3(_1624 + float2(_1629, _1632), _358).xy, _1551.z));
                    }
                    else
                    {
                        _1676 = 1.0f;
                    }
                    _1677 = _1676;
                }
                else
                {
                    _1677 = 1.0f;
                }
                _1678 = _1677;
            }
            else
            {
                _1678 = 1.0f;
            }
            _1680 = _1480 ? _1678 : _1479;
            _1681 = _1678;
        }
        else
        {
            _1680 = _1479;
            _1681 = 1.0f;
        }
        float _1684 = lerp(lerp(_1681, _1680, _1322), min(_1681, _1680), _50_m8.x);
        float _1733;
        if (_1684 > 0.001000000047497451305389404296875f)
        {
            float3 _1691 = _1288 - _18_m65.xyz;
            float2 _1701 = (_1691 + (_18_m68.xyz * _1691.y)).xz * _18_m66.z;
            float2 _1708 = _18_m67.xy * _18_m75.w;
            _1733 = _1684 * lerp(1.0f, lerp(_53.SampleLevel(_25, _1701 + _1708, 0.0f), _53.SampleLevel(_25, (_1701 * _18_m67.w) + _1708, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1691.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1733 = _1684;
        }
        _1738 = float2(lerp(_1733, _50_m7.z, _50_m7.w), _1733);
        break;
    } while(false);
    float _1743 = lerp(1.0f, min(1.0f, _1738.x), _50_m6.x);
    float4 _1908;
    if (_1743 > 0.001000000047497451305389404296875f)
    {
        float3 _1754 = reflect(-_444, _672);
        float3 _1755 = -_48_m0.xyz;
        float _1760 = dot(_1755, _1754);
        float3 _1762 = _1754 - (_1755 * _1760);
        bool3 _1764 = (_1760 < _48_m4.z).xxx;
        float3 _1772 = normalize((_1755 * _48_m4.z) + ((_1762 * rsqrt(max(6.103515625e-05f, dot(_1762, _1762)))) * _48_m4.y));
        float3 _1773 = float3(_1764.x ? _1772.x : _1754.x, _1764.y ? _1772.y : _1754.y, _1764.z ? _1772.z : _1754.z);
        float3 _1777 = _1773 + _444;
        float3 _1781 = _1777 * rsqrt(max(6.103515625e-05f, dot(_1777, _1777)));
        float _1783 = clamp(dot(_1773, _672), 0.0f, 1.0f);
        float _1785 = clamp(dot(_672, _1781), 0.0f, 1.0f);
        float _1790 = clamp(dot(_672, _444), 0.0f, 1.0f);
        float _1791 = _36_m86 * _36_m86;
        float _1792 = _1791 * _1791;
        float _1813 = (((_1785 * _1792) - _1785) * _1785) + 1.0f;
        float _1816 = 1.0f - clamp(dot(_444, _1781), 0.0f, 1.0f);
        float _1817 = _1816 * _1816;
        float _1819 = (_1816 * _1817) * _1817;
        float _1843 = 1.0f - _36_m86;
        float _1850 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1843 * (1.04997003078460693359375f + (_1843 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1843))))));
        float _1851 = 1.0f - _1850;
        float3 _1854 = _789 + ((1.0f.xxx - _789) * 0.0476190485060214996337890625f);
        float _1865 = clamp(1.0f - _736, 0.0f, 1.0f);
        float _1873 = clamp((dot(_672, _1773) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1890 = clamp(clamp((min(((_789 * (1.0f - _1819)) + _1819.xxx) * ((_1792 / (_1813 * _1813)) * (0.5f / (((_1783 * sqrt(((((-_1790) * _1792) + _1790) * _1790) + _1792)) + (_1790 * sqrt(((((-_1783) * _1792) + _1783) * _1783) + _1792))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1854 * (((_57.SampleLevel(_24, (float2(_1790, _36_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x * _57.SampleLevel(_24, (float2(_1783, _36_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1850) / _1851)) * _1854) / (1.0f.xxx - (_1854 * _1851)))) * _48_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_719, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _36_m80;
        float3 _1895 = (((_1890 * _1783) + (_1250 * lerp(lerp(1.0f, (_1873 * sqrt(_1873)) * 1.66666662693023681640625f, _1865) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_444, _1773), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1865)))) + ((_723 * 1.0f) * _1783)) * _48_m1.xyz;
        float3 _1906 = lerp(_1895, _1895 * _55.SampleBias(_24, float2(_1743, 0.5f), _18_m16).xyz, (1.0f - _1743).xxx) * 1.0f;
        _1908 = float4(_1906.x, _1906.y, _1906.z, 0.0f.xxxx.w);
    }
    else
    {
        _1908 = 0.0f.xxxx;
    }
    float2 _1909 = float2(_820);
    float2 _1911 = floor(_1909 * 0.03125f);
    int _1919 = int((_1911.x + (_1911.y * _46_m5)) * 8.0f);
    float _1926 = floor(_821 - (_18_m3.y * _46_m11));
    float _1930 = clamp(_1926, 0.0f, _46_m7 - 1.0f);
    int _1932 = int(_1930 * 8.0f);
    float3 _1934;
    float _1937;
    _1934 = 0.0f.xxx;
    _1937 = 1.0f;
    float3 _1935;
    float _1938;
    [loop]
    for (int _1939 = 0; _1939 <= 7; _1934 = _1935, _1937 = _1938, _1939++)
    {
        uint _1957 = (_1926 <= _1930) ? (_30.Load(uint(_1919 + _1939) * 4 + 0) & _30.Load(uint((_18_m21.y + _1932) + _1939) * 4 + 0)) : 0u;
        uint _1958 = uint(_1939);
        float3 _1962;
        _1938 = _1937;
        _1962 = 0.0f.xxx;
        uint _1965;
        float _1960;
        float3 _1963;
        [loop]
        for (uint _1964 = _1957; _1964 != 0u; _1938 = _1960, _1962 = _1963, _1964 = _1965)
        {
            uint _1969 = firstbitlow(_1964);
            _1965 = _1964 ^ (1u << (_1969 & 31u));
            int _1975 = int((32u * _1958) + _1969) * 8;
            int _1978 = _1975 + 1;
            int _1981 = _1975 + 2;
            int _1984 = _1975 + 3;
            int _1987 = _1975 + 5;
            int _1990 = _1975 + 6;
            int _1993 = _1975 + 7;
            uint _1997 = uint(_48_m6[_1987].w);
            float _2072;
            if ((_1997 & 1u) == 1u)
            {
                uint _2003 = asuint(_48_m6[_1987].x);
                uint _2010 = asuint(_48_m6[_1987].y);
                uint _2017 = asuint(_48_m6[_1987].z);
                uint _2024 = asuint(_48_m6[_1990].x);
                uint _2031 = asuint(_48_m6[_1990].y);
                uint _2038 = asuint(_48_m6[_1990].z);
                float3 _2057 = abs(mul(float4(_403 - _48_m6[_1978].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2003).x, spvUnpackHalf2x16(_2017).x, spvUnpackHalf2x16(_2031).x, 0.0f), float4(spvUnpackHalf2x16(_2003 >> 16u).x, spvUnpackHalf2x16(_2017 >> 16u).x, spvUnpackHalf2x16(_2031 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2010).x, spvUnpackHalf2x16(_2024).x, spvUnpackHalf2x16(_2038).x, 0.0f), float4(spvUnpackHalf2x16(_2010 >> 16u).x, spvUnpackHalf2x16(_2024 >> 16u).x, spvUnpackHalf2x16(_2038 >> 16u).x, 0.0f))).xyz);
                float _2064 = _48_m6[_1993].x * 0.5f;
                float _2070 = 1.0f - clamp((max(max(_2057.x, _2057.y), _2057.z) - (_2064 + 0.5f)) / (0.5f - _2064), 0.0f, 1.0f);
                _2072 = _2070 * _2070;
            }
            else
            {
                _2072 = 1.0f;
            }
            bool _2076 = _48_m6[_1984].z > 0.5f;
            if ((false || (_2072 < 0.001000000047497451305389404296875f)) || _2076)
            {
                _1960 = _1938;
                _1963 = _1962;
                continue;
            }
            float _3210;
            float3 _3211;
            if (_48_m6[_1975].w < 1.5f)
            {
                float3 _2564 = float3(0.100000001490116119384765625f, _36_m86, 1.0f);
                float _2573 = (0.5f + (0.5f * _48_m6[_1981].y)) - abs(_48_m6[_1981].x);
                float _2574 = _48_m6[_1981].y - _2573;
                float _2581 = abs(max((1.0f - abs(_2573)) - abs(_2574), 0.00048828125f));
                float3 _2585 = normalize(float3(_2573, _2574, (_48_m6[_1981].x >= 0.0f) ? _2581 : (-_2581)));
                float3 _2586 = _48_m6[_1978].xyz - _403;
                float _2587 = dot(_2586, _2586);
                float _2588 = rsqrt(_2587);
                float3 _2589 = _2586 * _2588;
                float _2593 = clamp(_48_m6[_1993].y * _2588, 0.0f, 1.0f);
                int _2598 = int(_48_m6[_1993].w);
                float3 _2599 = _2585 * _48_m6[_1981].z;
                float3 _2600 = _2599 * 0.5f;
                float3 _2601 = _2586 - _2600;
                float3 _2602 = _2586 + _2600;
                bool _2605 = (uint(_48_m6[_1975].w) & 1u) == 0u;
                bool _2608 = _2605 || ((_1997 & 2u) != 0u);
                bool _2611 = (!_2605) && (_48_m6[_1981].z > 0.0f);
                float _2630;
                float _2631;
                if (_2611)
                {
                    float _2615 = length(_2601);
                    float _2616 = length(_2602);
                    _2630 = clamp(0.5f * ((dot(_672, _2601) / _2615) + (dot(_672, _2602) / _2616)), 0.0f, 1.0f);
                    _2631 = 1.0f / ((((_2615 * _2616) + dot(_2601, _2602)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2630 = clamp(dot(_672, _2589), 0.0f, 1.0f);
                    _2631 = 1.0f;
                }
                float _2653;
                if (_48_m6[_1990].w < 0.0f)
                {
                    float _2647 = _2587 * (_48_m6[_1978].w * _48_m6[_1978].w);
                    float _2650 = clamp(1.0f - (_2647 * _2647), 0.0f, 1.0f);
                    _2653 = lerp(1.0f / (_2587 + 1.0f), _2631, float(_2611)) * (_2650 * _2650);
                }
                else
                {
                    float3 _2636 = _2586 * _48_m6[_1978].w;
                    _2653 = _2631 * pow(1.0f - clamp(dot(_2636, _2636), 0.0f, 1.0f), _48_m6[_1990].w);
                }
                float _2659 = clamp((dot(_2589, -_2585) - _48_m6[_1981].z) * _48_m6[_1981].w, 0.0f, 1.0f);
                float _2663 = _2653 * lerp(1.0f, _2659 * _2659, float(_2605));
                float _2763;
                if ((!_2611) && (_2598 >= 0))
                {
                    uint _2669 = uint(_2598);
                    float2 _2756;
                    [branch]
                    if (_2605)
                    {
                        float4 _2746 = mul(_60_m1[_2669], _407);
                        _2756 = _60_m0[_2669].xy + (clamp(_2746.xy / _2746.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2669].zw);
                    }
                    else
                    {
                        float3 _2683 = mul(float4(-_2586, 0.0f), _60_m1[_2669]).xyz;
                        float3 _367 = _2683;
                        float3 _366 = _2683;
                        float3 _365 = abs(_2683);
                        uint _2692 = uint(int(_365.y > _365.x));
                        uint _2698 = (_365.z > _365[_2692]) ? 2u : _2692;
                        uint _2704 = (_2698 * 2u) + uint(_366[_2698] < 0.0f);
                        float _2708 = abs(_367[_2704 / 2u]);
                        float _2728 = 0.5f - (0.000244140625f / _60_m0[_2669].w);
                        _2756 = _60_m0[_2669].xy + (clamp(float2((float(_2704) + ((((_367[uint(_338[_2704].x)] * _339[_2704].x) / _2708) * _2728) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_367[uint(_338[_2704].y)] * _339[_2704].y) / _2708) * _2728)), 0.0f.xx, 1.0f.xx) * _60_m0[_2669].zw);
                    }
                    _2763 = _2663 * _58.SampleLevel(_24, _2756, 0.0f).x;
                }
                else
                {
                    _2763 = _2663;
                }
                bool _2764 = _2763 > 0.0f;
                float _3052;
                if (_2764)
                {
                    int _2816;
                    if (_2608)
                    {
                        _2816 = int(_48_m6[_1984].x);
                    }
                    else
                    {
                        uint _2771 = asuint(_48_m6[_1981].w);
                        uint _2773 = asuint(_48_m6[_1984].x);
                        float3 _2774 = _403 - _48_m6[_1978].xyz;
                        float3 _2775 = abs(_2774);
                        float _2776 = _2775.x;
                        float _2777 = _2775.y;
                        float _2779 = _2775.z;
                        int _2811;
                        if ((_2776 > _2777) && (_2776 > _2779))
                        {
                            _2811 = int((_2774.x > 0.0f) ? (_2771 >> 24u) : ((_2771 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2803;
                            if (_2777 > _2779)
                            {
                                _2803 = int((_2774.y > 0.0f) ? ((_2771 >> 8u) & 255u) : (_2771 & 255u));
                            }
                            else
                            {
                                _2803 = int((_2774.z > 0.0f) ? ((_2773 >> 8u) & 255u) : (_2773 & 255u));
                            }
                            _2811 = _2803;
                        }
                        _2816 = (_2811 < 80) ? _2811 : (-1);
                    }
                    float3 _2826 = (_403 - ((-_2589) * _50_m11[_2816].x)) + (_672 * (_50_m11[_2816].y * 5.0f));
                    float4 _2833 = mul(_50_m10[_2816], float4(_2826, 1.0f));
                    float _2834 = _2833.w;
                    float3 _2837 = _2833.xyz / _2834.xxx;
                    float2 _2838 = _2837.xy;
                    float3 _2846 = _2837.xyz;
                    bool3 _2847 = bool3(_2846.x <= 0.0f.xxx.x, _2846.y <= 0.0f.xxx.y, _2846.z <= 0.0f.xxx.z);
                    bool3 _2848 = bool3(_2846.x >= 1.0f.xxx.x, _2846.y >= 1.0f.xxx.y, _2846.z >= 1.0f.xxx.z);
                    float _2851 = _2837.z;
                    float2 _2862 = ((_2838 * (_50_m12[_2816].zw - _50_m12[_2816].xy)) + _50_m12[_2816].xy).xy * _50_m13.zw;
                    float2 _2864 = floor(_2862 + 0.5f.xx);
                    float2 _2865 = _2862 - _2864;
                    float _2866 = _2865.x;
                    float _2867 = _2866 + 0.5f;
                    float _2868 = _2867 * _2867;
                    float _2871 = 1.0f - _2866;
                    float _2872 = min(_2866, 0.0f);
                    float _2875 = _2866 + 1.0f;
                    float _2876 = max(_2866, 0.0f);
                    float _2887 = _2865.y;
                    float _2888 = _2887 + 0.5f;
                    float _2889 = _2888 * _2888;
                    float _2892 = 1.0f - _2887;
                    float _2893 = min(_2887, 0.0f);
                    float _2896 = _2887 + 1.0f;
                    float _2897 = max(_2887, 0.0f);
                    float3 _2909 = float3(0.1599999964237213134765625f * _2871, 0.1599999964237213134765625f * ((_2875 - (_2876 * _2876)) + 1.0f), _2868 * 0.07999999821186065673828125f);
                    float3 _2910 = float3(0.1599999964237213134765625f * ((_2868 * 0.5f) - _2866), 0.1599999964237213134765625f * ((_2871 - (_2872 * _2872)) + 1.0f), 0.1599999964237213134765625f * _2875) + _2909;
                    float3 _2912 = float3(0.1599999964237213134765625f * _2892, 0.1599999964237213134765625f * ((_2896 - (_2897 * _2897)) + 1.0f), _2889 * 0.07999999821186065673828125f);
                    float3 _2913 = float3(0.1599999964237213134765625f * ((_2889 * 0.5f) - _2887), 0.1599999964237213134765625f * ((_2892 - (_2893 * _2893)) + 1.0f), 0.1599999964237213134765625f * _2896) + _2912;
                    float3 _2919 = ((_2909 / _2910) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                    float3 _2921 = ((_2912 / _2913) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                    float2 _2923 = _2864 * _50_m13.xy;
                    float _2924 = _2919.x;
                    float _2925 = _2921.x;
                    float _2928 = _2919.y;
                    float _2931 = _2919.z;
                    float _2934 = _2921.y;
                    float _2941 = _2921.z;
                    float _2948 = _2910.x;
                    float _2949 = _2913.x;
                    float _2951 = _2910.y;
                    float _2953 = _2910.z;
                    float _2955 = _2913.y;
                    float _2959 = _2913.z;
                    float _3017 = (((((((_2948 * _2949) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2924, _2925), _358).xy, _2851)) + ((_2951 * _2949) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2928, _2925), _358).xy, _2851))) + ((_2953 * _2949) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2931, _2925), _358).xy, _2851))) + ((_2948 * _2955) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2924, _2934), _358).xy, _2851))) + ((_2951 * _2955) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2928, _2934), _358).xy, _2851))) + ((_2953 * _2955) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2931, _2934), _358).xy, _2851))) + ((_2948 * _2959) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2924, _2941), _358).xy, _2851));
                    float2 _3038 = min(_2838, 1.0f.xx - _2838);
                    _3052 = (_2816 >= 0) ? lerp(1.0f, (any(bool3(_2847.x || _2848.x, _2847.y || _2848.y, _2847.z || _2848.z)) || ((asuint(_2851) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3017 + ((_2951 * _2959) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2928, _2941), _358).xy, _2851))) + ((_2953 * _2959) * _52.SampleCmpLevelZero(_26, float3(_2923 + float2(_2931, _2941), _358).xy, _2851))), _2608 ? min(_50_m11[_2816].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2816].z - _2834) * 0.25f, min(_3038.x, _3038.y)))) : _50_m11[_2816].w) : 1.0f;
                }
                else
                {
                    _3052 = 1.0f;
                }
                float3 _3077;
                float3 _3078;
                if (_2611)
                {
                    float3 _3055 = _2564 * _2564;
                    float3 _3057 = reflect(-_444, _672);
                    float _3066 = dot(_3057, _2599);
                    _3077 = _3055 / clamp(_3055 + (0.5f * clamp(_48_m6[_1981].z * _2588, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3078 = normalize(_2601 + (_2599 * clamp(dot(_2601, (_3057 * _3066) - _2599) / ((_48_m6[_1981].z * _48_m6[_1981].z) - (_3066 * _3066)), 0.0f, 1.0f)));
                }
                else
                {
                    _3077 = 1.0f.xxx;
                    _3078 = _2589;
                }
                float3 _3079 = _3078 + _444;
                float3 _3083 = _3079 * rsqrt(max(6.103515625e-05f, dot(_3079, _3079)));
                float3 _3209;
                if (_2764)
                {
                    float _3087 = clamp(_2630, 0.0f, 1.0f);
                    float _3089 = clamp(dot(_672, _3083), 0.0f, 1.0f);
                    float _3091 = clamp(dot(_444, _3083), 0.0f, 1.0f);
                    float _3094 = clamp(dot(_672, _444), 0.0f, 1.0f);
                    float _3095 = _36_m86 * _36_m86;
                    float _3105;
                    if (_2593 > 0.0f)
                    {
                        _3105 = clamp(_3095 + ((_2593 * _2593) / ((_3091 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3105 = _3095;
                    }
                    float _3106 = _3105 * _3105;
                    float _3127 = (((_3089 * _3106) - _3089) * _3089) + 1.0f;
                    float _3132 = 1.0f - _3091;
                    float _3133 = _3132 * _3132;
                    float _3135 = (_3132 * _3133) * _3133;
                    float _3159 = 1.0f - _36_m86;
                    float _3166 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3159 * (1.04997003078460693359375f + (_3159 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3159))))));
                    float _3167 = 1.0f - _3166;
                    float3 _3170 = _789 + ((1.0f.xxx - _789) * 0.0476190485060214996337890625f);
                    float _3181 = clamp(1.0f - _736, 0.0f, 1.0f);
                    float _3189 = clamp((dot(_672, _3078) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3205 = (clamp((min(((_789 * (1.0f - _3135)) + _3135.xxx) * (((_3106 / (_3127 * _3127)) * _3077.y) * (0.5f / (((_3087 * sqrt(((((-_3094) * _3106) + _3094) * _3094) + _3106)) + (_3094 * sqrt(((((-_3087) * _3106) + _3087) * _3087) + _3106))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3170 * (((_57.SampleLevel(_24, (float2(_3094, _36_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x * _57.SampleLevel(_24, (float2(_3087, _36_m86) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3166) / _3167)) * _3170) / (1.0f.xxx - (_3170 * _3167)))) * _48_m6[_1993].z, 0.0f.xxx, 1000.0f.xxx) * _2630) + (_1250 * lerp(lerp(1.0f, (_3189 * sqrt(_3189)) * 1.66666662693023681640625f, _3181) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_444, _3078), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3181)));
                    _3209 = (_3205 + ((_723 * _3077.z) * _2630)) * (((_48_m6[_1975].xyz * _2763) * _3052) * _2072);
                }
                else
                {
                    _3209 = 0.0f.xxx;
                }
                _3210 = _1938;
                _3211 = _3209;
            }
            else
            {
                float _2562;
                do
                {
                    if (_2076)
                    {
                        _2562 = 1.0f;
                        break;
                    }
                    float _2096 = (0.5f + (0.5f * _48_m6[_1981].y)) - abs(_48_m6[_1981].x);
                    float _2097 = _48_m6[_1981].y - _2096;
                    float _2104 = abs(max((1.0f - abs(_2096)) - abs(_2097), 0.00048828125f));
                    float3 _2108 = normalize(float3(_2096, _2097, (_48_m6[_1981].x >= 0.0f) ? _2104 : (-_2104)));
                    float3 _2109 = _48_m6[_1978].xyz - _403;
                    float _2110 = dot(_2109, _2109);
                    float3 _2112 = _2109 * rsqrt(_2110);
                    int _2115 = int(_48_m6[_1993].w);
                    float3 _2117 = (_2108 * _48_m6[_1981].z) * 0.5f;
                    float3 _2118 = _2109 - _2117;
                    float3 _2119 = _2109 + _2117;
                    bool _2122 = (uint(_48_m6[_1975].w) & 1u) == 0u;
                    bool _2125 = _2122 || ((_1997 & 2u) != 0u);
                    bool _2128 = (!_2122) && (_48_m6[_1981].z > 0.0f);
                    float _2140;
                    if (_2128)
                    {
                        _2140 = 1.0f / ((((length(_2118) * length(_2119)) + dot(_2118, _2119)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2140 = 1.0f;
                    }
                    float _2162;
                    if (_48_m6[_1990].w < 0.0f)
                    {
                        float _2156 = _2110 * (_48_m6[_1978].w * _48_m6[_1978].w);
                        float _2159 = clamp(1.0f - (_2156 * _2156), 0.0f, 1.0f);
                        _2162 = lerp(1.0f / (_2110 + 1.0f), _2140, float(_2128)) * (_2159 * _2159);
                    }
                    else
                    {
                        float3 _2145 = _2109 * _48_m6[_1978].w;
                        _2162 = _2140 * pow(1.0f - clamp(dot(_2145, _2145), 0.0f, 1.0f), _48_m6[_1990].w);
                    }
                    float _2168 = clamp((dot(_2112, -_2108) - _48_m6[_1981].z) * _48_m6[_1981].w, 0.0f, 1.0f);
                    float _2172 = _2162 * lerp(1.0f, _2168 * _2168, float(_2122));
                    float _2272;
                    if ((!_2128) && (_2115 >= 0))
                    {
                        uint _2178 = uint(_2115);
                        float2 _2265;
                        [branch]
                        if (_2122)
                        {
                            float4 _2255 = mul(_60_m1[_2178], _407);
                            _2265 = _60_m0[_2178].xy + (clamp(_2255.xy / _2255.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2178].zw);
                        }
                        else
                        {
                            float3 _2192 = mul(float4(-_2109, 0.0f), _60_m1[_2178]).xyz;
                            float3 _370 = _2192;
                            float3 _369 = _2192;
                            float3 _368 = abs(_2192);
                            uint _2201 = uint(int(_368.y > _368.x));
                            uint _2207 = (_368.z > _368[_2201]) ? 2u : _2201;
                            uint _2213 = (_2207 * 2u) + uint(_369[_2207] < 0.0f);
                            float _2217 = abs(_370[_2213 / 2u]);
                            float _2237 = 0.5f - (0.000244140625f / _60_m0[_2178].w);
                            _2265 = _60_m0[_2178].xy + (clamp(float2((float(_2213) + ((((_370[uint(_338[_2213].x)] * _339[_2213].x) / _2217) * _2237) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_370[uint(_338[_2213].y)] * _339[_2213].y) / _2217) * _2237)), 0.0f.xx, 1.0f.xx) * _60_m0[_2178].zw);
                        }
                        _2272 = _2172 * _58.SampleLevel(_24, _2265, 0.0f).x;
                    }
                    else
                    {
                        _2272 = _2172;
                    }
                    float _2561;
                    if (_2272 > 0.0f)
                    {
                        int _2325;
                        if (_2125)
                        {
                            _2325 = int(_48_m6[_1984].x);
                        }
                        else
                        {
                            uint _2280 = asuint(_48_m6[_1981].w);
                            uint _2282 = asuint(_48_m6[_1984].x);
                            float3 _2283 = _403 - _48_m6[_1978].xyz;
                            float3 _2284 = abs(_2283);
                            float _2285 = _2284.x;
                            float _2286 = _2284.y;
                            float _2288 = _2284.z;
                            int _2320;
                            if ((_2285 > _2286) && (_2285 > _2288))
                            {
                                _2320 = int((_2283.x > 0.0f) ? (_2280 >> 24u) : ((_2280 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2312;
                                if (_2286 > _2288)
                                {
                                    _2312 = int((_2283.y > 0.0f) ? ((_2280 >> 8u) & 255u) : (_2280 & 255u));
                                }
                                else
                                {
                                    _2312 = int((_2283.z > 0.0f) ? ((_2282 >> 8u) & 255u) : (_2282 & 255u));
                                }
                                _2320 = _2312;
                            }
                            _2325 = (_2320 < 80) ? _2320 : (-1);
                        }
                        float3 _2335 = (_403 - ((-_2112) * _50_m11[_2325].x)) + (_672 * (_50_m11[_2325].y * 5.0f));
                        float4 _2342 = mul(_50_m10[_2325], float4(_2335, 1.0f));
                        float _2343 = _2342.w;
                        float3 _2346 = _2342.xyz / _2343.xxx;
                        float2 _2347 = _2346.xy;
                        float3 _2355 = _2346.xyz;
                        bool3 _2356 = bool3(_2355.x <= 0.0f.xxx.x, _2355.y <= 0.0f.xxx.y, _2355.z <= 0.0f.xxx.z);
                        bool3 _2357 = bool3(_2355.x >= 1.0f.xxx.x, _2355.y >= 1.0f.xxx.y, _2355.z >= 1.0f.xxx.z);
                        float _2360 = _2346.z;
                        float2 _2371 = ((_2347 * (_50_m12[_2325].zw - _50_m12[_2325].xy)) + _50_m12[_2325].xy).xy * _50_m13.zw;
                        float2 _2373 = floor(_2371 + 0.5f.xx);
                        float2 _2374 = _2371 - _2373;
                        float _2375 = _2374.x;
                        float _2376 = _2375 + 0.5f;
                        float _2377 = _2376 * _2376;
                        float _2380 = 1.0f - _2375;
                        float _2381 = min(_2375, 0.0f);
                        float _2384 = _2375 + 1.0f;
                        float _2385 = max(_2375, 0.0f);
                        float _2396 = _2374.y;
                        float _2397 = _2396 + 0.5f;
                        float _2398 = _2397 * _2397;
                        float _2401 = 1.0f - _2396;
                        float _2402 = min(_2396, 0.0f);
                        float _2405 = _2396 + 1.0f;
                        float _2406 = max(_2396, 0.0f);
                        float3 _2418 = float3(0.1599999964237213134765625f * _2380, 0.1599999964237213134765625f * ((_2384 - (_2385 * _2385)) + 1.0f), _2377 * 0.07999999821186065673828125f);
                        float3 _2419 = float3(0.1599999964237213134765625f * ((_2377 * 0.5f) - _2375), 0.1599999964237213134765625f * ((_2380 - (_2381 * _2381)) + 1.0f), 0.1599999964237213134765625f * _2384) + _2418;
                        float3 _2421 = float3(0.1599999964237213134765625f * _2401, 0.1599999964237213134765625f * ((_2405 - (_2406 * _2406)) + 1.0f), _2398 * 0.07999999821186065673828125f);
                        float3 _2422 = float3(0.1599999964237213134765625f * ((_2398 * 0.5f) - _2396), 0.1599999964237213134765625f * ((_2401 - (_2402 * _2402)) + 1.0f), 0.1599999964237213134765625f * _2405) + _2421;
                        float3 _2428 = ((_2418 / _2419) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                        float3 _2430 = ((_2421 / _2422) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                        float2 _2432 = _2373 * _50_m13.xy;
                        float _2433 = _2428.x;
                        float _2434 = _2430.x;
                        float _2437 = _2428.y;
                        float _2440 = _2428.z;
                        float _2443 = _2430.y;
                        float _2450 = _2430.z;
                        float _2457 = _2419.x;
                        float _2458 = _2422.x;
                        float _2460 = _2419.y;
                        float _2462 = _2419.z;
                        float _2464 = _2422.y;
                        float _2468 = _2422.z;
                        float _2526 = (((((((_2457 * _2458) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2433, _2434), _358).xy, _2360)) + ((_2460 * _2458) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2437, _2434), _358).xy, _2360))) + ((_2462 * _2458) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2440, _2434), _358).xy, _2360))) + ((_2457 * _2464) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2433, _2443), _358).xy, _2360))) + ((_2460 * _2464) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2437, _2443), _358).xy, _2360))) + ((_2462 * _2464) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2440, _2443), _358).xy, _2360))) + ((_2457 * _2468) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2433, _2450), _358).xy, _2360));
                        float2 _2547 = min(_2347, 1.0f.xx - _2347);
                        _2561 = (_2325 >= 0) ? lerp(1.0f, (any(bool3(_2356.x || _2357.x, _2356.y || _2357.y, _2356.z || _2357.z)) || ((asuint(_2360) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2526 + ((_2460 * _2468) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2437, _2450), _358).xy, _2360))) + ((_2462 * _2468) * _52.SampleCmpLevelZero(_26, float3(_2432 + float2(_2440, _2450), _358).xy, _2360))), _2125 ? min(_50_m11[_2325].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2325].z - _2343) * 0.25f, min(_2547.x, _2547.y)))) : _50_m11[_2325].w) : 1.0f;
                    }
                    else
                    {
                        _2561 = 1.0f;
                    }
                    _2562 = _2561;
                    break;
                } while(false);
                _3210 = _1938 * _2562;
                _3211 = 0.0f.xxx;
            }
            _1960 = _3210;
            _1963 = _1962 + _3211;
        }
        _1935 = _1934 + _1962;
    }
    float3 _3221 = -_444;
    float _3222 = 1.0f - _36_m1;
    float _3237 = _403.y * _18_m46.w;
    float _3242 = max(0.00999999977648258209228515625f, _3237 + _18_m47.w);
    float3 _3256 = exp(_18_m45.xyz * ((-max(0.0f, (_445 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3242)) / _3242) * exp(_3237 + _18_m48.w))));
    float _3259 = dot(_3221, _18_m44.xyz);
    float _3265 = _18_m45.w * _18_m45.w;
    float _3269 = (1.0f + _3265) - ((2.0f * _18_m45.w) * _3259);
    float3 _3601;
    float _3602;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3427 = (uint3(int3(int(_820.x), int(_820.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3428 = _3427.y;
        uint _3429 = _3427.z;
        uint _3432 = _3427.x + (_3428 * _3429);
        uint _3434 = _3428 + (_3429 * _3432);
        uint _3436 = _3429 + (_3432 * _3434);
        uint _3438 = _3432 + (_3434 * _3436);
        float _3462 = dot(_3221, -_16_m0[2].xyz);
        float3 _3472 = _403 - _16_m11.xyz;
        float _3474 = (_18_m55.w * ((_3462 > 5.9604644775390625e-08f) ? (1.0f / _3462) : 0.0f)) * (1.0f / _445);
        float _3475 = _3472.y;
        float _3476 = _3474 * _3475;
        float _3478 = _16_m11.y + _3476;
        float _3479 = _3475 - _3476;
        float _3481 = (1.0f - _3474) * _445;
        float _3495 = max(-127.0f, _18_m49.z * _3479);
        float _3519 = max(-127.0f, _18_m52.x * _3479);
        float _3530 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3478 - _18_m49.x)))) * ((abs(_3495) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3495)) / _3495) : (0.693147182464599609375f - (0.2402265071868896484375f * _3495)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3478 - _18_m52.z)))) * ((abs(_3519) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3519)) / _3519) : (0.693147182464599609375f - (0.2402265071868896484375f * _3519))));
        float _3552 = clamp((_445 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3555 = clamp((max(clamp(exp2(-(_3530 * _3481)), 0.0f, 1.0f), _18_m51.w) + clamp((_445 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3552, 0.0f, 1.0f);
        float4 _3595 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _38.SampleLevel(_24, float3((_1909 + ((((float3(uint3(_3438, _3434 + (_3436 * _3438), _363) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_821 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_821 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3601 = _3595.xyz + (((_18_m51.xyz * (1.0f - _3555)) + (((_18_m54.xyz * pow(clamp(dot(_444, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3530 * max(_3481 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3552))) * _3595.w);
        _3602 = _3595.w * _3555;
    }
    else
    {
        float3 _3299 = _403 - _16_m11.xyz;
        float _3301 = _3299.y;
        float _3315 = max(-127.0f, _18_m49.z * _3301);
        float _3339 = max(-127.0f, _18_m52.x * _3301);
        float _3350 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3315) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3315)) / _3315) : (0.693147182464599609375f - (0.2402265071868896484375f * _3315)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3339) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3339)) / _3339) : (0.693147182464599609375f - (0.2402265071868896484375f * _3339))));
        float _3372 = clamp((_445 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3375 = clamp((max(clamp(exp2(-(_3350 * _445)), 0.0f, 1.0f), _18_m51.w) + clamp((_445 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3372, 0.0f, 1.0f);
        _3601 = (_18_m51.xyz * (1.0f - _3375)) + (((_18_m54.xyz * pow(clamp(dot(_444, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3350 * max(_445 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3372));
        _3602 = _3375;
    }
    float3 _3611 = (((((((lerp(dot(_1271, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1271, _1277) * _18_m76.xyz) * _36_m11) + (_1271 * _1285)) + (_720 * (1.0f - _36_m84))) + (_1908.xyz + (_1934 * _1937)).xyz).xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3256 * _3602)) : (_3256 * _3602))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3259 * _3259)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3265) / max((12.56637096405029296875f * _3269) * sqrt(_3269), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3256)) * _3602 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3601 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f))) * _3222)).xyz * _719;
    float4 _3612 = float4(_3611.x, _3611.y, _3611.z, _359.w);
    float _3613 = _719 * _3222;
    _3612.w = _3613;
    float3 _3622 = ((lerp(dot(_3612.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3612.xyz, _1277) * _18_m76.xyz) * _36_m11) + (_3612.xyz * _1285);
    float2 _3632 = min(_787, 1.0f.xx);
    float4 _3633 = float4(_3632.x, _3632.y, _359.z, _359.w);
    _3633.z = float(clamp(max(dot(_3622.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3613, _3613) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3633.w = (_36_m2 * _36_m0) * float(clamp(max(dot(_720, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _719, _719) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3622.x, _3622.y, _3622.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3612.w);
    _14 = _3633;
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
