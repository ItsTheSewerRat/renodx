// DX11 0x27B5CC3B -> Vulkan 0xDCA4B353
struct _22
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

static float3 _424;
static float _425 = 0.0f;
static float3 _426 = 0.0f;
static float _428 = 0.0f;
static uint _429 = 0u;

static const int2 _382[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _383[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

[[vk::binding(12, 0)]]
cbuffer _17_18 : register(b12)
{
    column_major float4x4 _18_m0 : packoffset(c0);
    column_major float4x4 _18_m1 : packoffset(c4);
    column_major float4x4 _18_m2 : packoffset(c8);
    column_major float4x4 _18_m3 : packoffset(c12);
    column_major float4x4 _18_m4 : packoffset(c16);
    column_major float4x4 _18_m5 : packoffset(c20);
    column_major float4x4 _18_m6 : packoffset(c24);
    column_major float4x4 _18_m7 : packoffset(c28);
    column_major float4x4 _18_m8 : packoffset(c32);
    column_major float4x4 _18_m9 : packoffset(c36);
    column_major float4x4 _18_m10 : packoffset(c40);
    float4 _18_m11 : packoffset(c44);
    column_major float4x4 _18_m12 : packoffset(c45);
    column_major float4x4 _18_m13 : packoffset(c49);
    column_major float4x4 _18_m14 : packoffset(c53);
    column_major float4x4 _18_m15 : packoffset(c57);
    column_major float4x4 _18_m16 : packoffset(c61);
    column_major float4x4 _18_m17 : packoffset(c65);
    column_major float4x4 _18_m18 : packoffset(c69);
    column_major float4x4 _18_m19 : packoffset(c73);
    column_major float4x4 _18_m20 : packoffset(c77);
    float4 _18_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _19_20 : register(b16)
{
    float4 _20_m0 : packoffset(c0);
    float4 _20_m1 : packoffset(c1);
    float4 _20_m2 : packoffset(c2);
    float4 _20_m3 : packoffset(c3);
    float4 _20_m4 : packoffset(c4);
    float4 _20_m5 : packoffset(c5);
    float4 _20_m6[6] : packoffset(c6);
    float4 _20_m7[6] : packoffset(c12);
    float4 _20_m8 : packoffset(c18);
    float4 _20_m9 : packoffset(c19);
    float4 _20_m10 : packoffset(c20);
    float4 _20_m11 : packoffset(c21);
    float4 _20_m12 : packoffset(c22);
    float4 _20_m13 : packoffset(c23);
    float4 _20_m14 : packoffset(c24);
    float4 _20_m15 : packoffset(c25);
    float _20_m16 : packoffset(c26);
    float _20_m17 : packoffset(c26.y);
    float _20_m18 : packoffset(c26.z);
    uint _20_m19 : packoffset(c26.w);
    float4 _20_m20 : packoffset(c27);
    int4 _20_m21 : packoffset(c28);
    float4 _20_m22 : packoffset(c29);
    float4 _20_m23 : packoffset(c30);
    float4 _20_m24 : packoffset(c31);
    float4 _20_m25 : packoffset(c32);
    float4 _20_m26 : packoffset(c33);
    float4 _20_m27 : packoffset(c34);
    float4 _20_m28 : packoffset(c35);
    float4 _20_m29 : packoffset(c36);
    float4 _20_m30 : packoffset(c37);
    float4 _20_m31 : packoffset(c38);
    float4 _20_m32[4] : packoffset(c39);
    float4 _20_m33[4] : packoffset(c43);
    float4 _20_m34[4] : packoffset(c47);
    float4 _20_m35[4] : packoffset(c51);
    float4 _20_m36 : packoffset(c55);
    float4 _20_m37 : packoffset(c56);
    float4 _20_m38[4] : packoffset(c57);
    float4 _20_m39[4] : packoffset(c61);
    float4 _20_m40[4] : packoffset(c65);
    float4 _20_m41 : packoffset(c69);
    float4 _20_m42 : packoffset(c70);
    float4 _20_m43 : packoffset(c71);
    float4 _20_m44 : packoffset(c72);
    float4 _20_m45 : packoffset(c73);
    float4 _20_m46 : packoffset(c74);
    float4 _20_m47 : packoffset(c75);
    float4 _20_m48 : packoffset(c76);
    float4 _20_m49 : packoffset(c77);
    float4 _20_m50 : packoffset(c78);
    float4 _20_m51 : packoffset(c79);
    float4 _20_m52 : packoffset(c80);
    float4 _20_m53 : packoffset(c81);
    float4 _20_m54 : packoffset(c82);
    float4 _20_m55 : packoffset(c83);
    float4 _20_m56 : packoffset(c84);
    float4 _20_m57 : packoffset(c85);
    float4 _20_m58 : packoffset(c86);
    float4 _20_m59 : packoffset(c87);
    float4 _20_m60 : packoffset(c88);
    float4 _20_m61 : packoffset(c89);
    float4 _20_m62 : packoffset(c90);
    float4 _20_m63 : packoffset(c91);
    float4 _20_m64 : packoffset(c92);
    float4 _20_m65 : packoffset(c93);
    float4 _20_m66 : packoffset(c94);
    float4 _20_m67 : packoffset(c95);
    float4 _20_m68 : packoffset(c96);
    float4 _20_m69 : packoffset(c97);
    float4 _20_m70 : packoffset(c98);
    float4 _20_m71 : packoffset(c99);
    float4 _20_m72 : packoffset(c100);
    float4 _20_m73 : packoffset(c101);
    float4 _20_m74 : packoffset(c102);
    float4 _20_m75 : packoffset(c103);
    float4 _20_m76 : packoffset(c104);
    float4 _20_m77 : packoffset(c105);
    float4 _20_m78 : packoffset(c106);
    float4 _20_m79 : packoffset(c107);
    float4 _20_m80 : packoffset(c108);
    float4 _20_m81 : packoffset(c109);
    float4 _20_m82 : packoffset(c110);
    float4 _20_m83 : packoffset(c111);
    float4 _20_m84 : packoffset(c112);
    float4 _20_m85 : packoffset(c113);
    float4 _20_m86 : packoffset(c114);
    float4 _20_m87 : packoffset(c115);
    float4 _20_m88 : packoffset(c116);
    float4 _20_m89 : packoffset(c117);
    float4 _20_m90 : packoffset(c118);
    float4 _20_m91 : packoffset(c119);
    float4 _20_m92 : packoffset(c120);
    float4 _20_m93 : packoffset(c121);
    float4 _20_m94 : packoffset(c122);
    float4 _20_m95 : packoffset(c123);
    float4 _20_m96 : packoffset(c124);
    float4 _20_m97 : packoffset(c125);
    float4 _20_m98 : packoffset(c126);
    float4 _20_m99[2] : packoffset(c127);
    float4 _20_m100[2] : packoffset(c129);
    float _20_m101 : packoffset(c131);
    float _20_m102 : packoffset(c131.y);
    float _20_m103 : packoffset(c131.z);
    float _20_m104 : packoffset(c131.w);
    float4 _20_m105 : packoffset(c132);
    float4 _20_m106 : packoffset(c133);
    float4 _20_m107 : packoffset(c134);
    float4 _20_m108 : packoffset(c135);
    float4 _20_m109 : packoffset(c136);
    float4 _20_m110 : packoffset(c137);
    float4 _20_m111 : packoffset(c138);
    float4 _20_m112 : packoffset(c139);
    float4 _20_m113 : packoffset(c140);
    float4 _20_m114 : packoffset(c141);
    float4 _20_m115 : packoffset(c142);
    float4 _20_m116 : packoffset(c143);
    float4 _20_m117 : packoffset(c144);
    float4 _20_m118 : packoffset(c145);
    float4 _20_m119 : packoffset(c146);
    float4 _20_m120 : packoffset(c147);
    float4 _20_m121 : packoffset(c148);
    float4 _20_m122 : packoffset(c149);
    float4 _20_m123 : packoffset(c150);
    float4 _20_m124 : packoffset(c151);
    float4 _20_m125 : packoffset(c152);
    float4 _20_m126 : packoffset(c153);
    float4 _20_m127 : packoffset(c154);
    float4 _20_m128 : packoffset(c155);
    float4 _20_m129 : packoffset(c156);
    float4 _20_m130 : packoffset(c157);
    float4 _20_m131 : packoffset(c158);
    float4 _20_m132 : packoffset(c159);
    float4 _20_m133 : packoffset(c160);
    float4 _20_m134 : packoffset(c161);
    column_major float4x4 _20_m135 : packoffset(c162);
    float4 _20_m136 : packoffset(c166);
    float4 _20_m137 : packoffset(c167);
    float4 _20_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _21_23 : register(b0)
{
    _22 _23_m0[256] : packoffset(c0);
};

[[vk::binding(51, 0)]] ByteAddressBuffer _31 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _33 : register(t18);

uint4 _33_Load4(uint byte_offset)
{
    return asuint(_33[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _34_35 : register(b48)
{
    int _35_m0 : packoffset(c0);
    int _35_m1 : packoffset(c0.y);
    int _35_m2 : packoffset(c0.z);
    int _35_m3 : packoffset(c0.w);
    float _35_m4 : packoffset(c1);
    float _35_m5 : packoffset(c1.y);
    float _35_m6 : packoffset(c1.z);
    float _35_m7 : packoffset(c1.w);
    float _35_m8 : packoffset(c2);
    float _35_m9 : packoffset(c2.y);
    float _35_m10 : packoffset(c2.z);
    float _35_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _36_37 : register(b14)
{
    float4 _37_m0 : packoffset(c0);
    float4 _37_m1 : packoffset(c1);
    float4 _37_m2 : packoffset(c2);
    float4 _37_m3 : packoffset(c3);
    float4 _37_m4 : packoffset(c4);
    uint4 _37_m5 : packoffset(c5);
    float4 _37_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _38_39 : register(b15)
{
    column_major float4x4 _39_m0[5] : packoffset(c0);
    float4 _39_m1[4] : packoffset(c20);
    float4 _39_m2[4] : packoffset(c24);
    float4 _39_m3[4] : packoffset(c28);
    float4 _39_m4 : packoffset(c32);
    float4 _39_m5 : packoffset(c33);
    float4 _39_m6 : packoffset(c34);
    float4 _39_m7 : packoffset(c35);
    float4 _39_m8 : packoffset(c36);
    float4 _39_m9[27] : packoffset(c37);
    column_major float4x4 _39_m10[56] : packoffset(c64);
    float4 _39_m11[56] : packoffset(c288);
    float4 _39_m12[56] : packoffset(c344);
    float4 _39_m13 : packoffset(c400);
    float4 _39_m14[47] : packoffset(c401);
    column_major float4x4 _39_m15[15] : packoffset(c448);
    float4 _39_m16[15] : packoffset(c508);
    float4 _39_m17[15] : packoffset(c523);
    float4 _39_m18[15] : packoffset(c538);
    float4 _39_m19 : packoffset(c553);
    float4 _39_m20 : packoffset(c554);
    float4 _39_m21[21] : packoffset(c555);
    column_major float4x4 _39_m22 : packoffset(c576);
    column_major float4x4 _39_m23 : packoffset(c580);
    float4 _39_m24 : packoffset(c584);
    float4 _39_m25 : packoffset(c585);
    float4 _39_m26 : packoffset(c586);
    float4 _39_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _49_50 : register(b0)
{
    float _50_m0 : packoffset(c0);
    float _50_m1 : packoffset(c0.y);
    float _50_m2 : packoffset(c0.z);
    float _50_m3 : packoffset(c0.w);
    float _50_m4 : packoffset(c1);
    float _50_m5 : packoffset(c1.y);
    float _50_m6 : packoffset(c1.z);
    float _50_m7 : packoffset(c1.w);
    float _50_m8 : packoffset(c2);
    float _50_m9 : packoffset(c2.y);
    float _50_m10 : packoffset(c2.z);
    float _50_m11 : packoffset(c2.w);
    float _50_m12 : packoffset(c3);
    float _50_m13 : packoffset(c3.y);
    float _50_m14 : packoffset(c3.z);
    float _50_m15 : packoffset(c3.w);
    float _50_m16 : packoffset(c4);
    float _50_m17 : packoffset(c4.y);
    float _50_m18 : packoffset(c4.z);
    float _50_m19 : packoffset(c4.w);
    float _50_m20 : packoffset(c5);
    float _50_m21 : packoffset(c5.y);
    float _50_m22 : packoffset(c5.z);
    float _50_m23 : packoffset(c5.w);
    float4 _50_m24 : packoffset(c6);
    float4 _50_m25 : packoffset(c7);
    float4 _50_m26 : packoffset(c8);
    float4 _50_m27 : packoffset(c9);
    float4 _50_m28 : packoffset(c10);
    float4 _50_m29 : packoffset(c11);
    float _50_m30 : packoffset(c12);
    float _50_m31 : packoffset(c12.y);
    float _50_m32 : packoffset(c12.z);
    float _50_m33 : packoffset(c12.w);
    float4 _50_m34 : packoffset(c13);
    float4 _50_m35 : packoffset(c14);
    float _50_m36 : packoffset(c15);
    float _50_m37 : packoffset(c15.y);
    float _50_m38 : packoffset(c15.z);
    float _50_m39 : packoffset(c15.w);
    float _50_m40 : packoffset(c16);
    float _50_m41 : packoffset(c16.y);
    float _50_m42 : packoffset(c16.z);
    float _50_m43 : packoffset(c16.w);
    float _50_m44 : packoffset(c17);
    float _50_m45 : packoffset(c17.y);
    float _50_m46 : packoffset(c17.z);
    float _50_m47 : packoffset(c17.w);
    float4 _50_m48 : packoffset(c18);
    float4 _50_m49 : packoffset(c19);
    float4 _50_m50 : packoffset(c20);
    float4 _50_m51 : packoffset(c21);
    float4 _50_m52 : packoffset(c22);
    float4 _50_m53 : packoffset(c23);
    float2 _50_m54 : packoffset(c24);
    float2 _50_m55 : packoffset(c24.z);
    float _50_m56 : packoffset(c25);
    float _50_m57 : packoffset(c25.y);
    float _50_m58 : packoffset(c25.z);
    float _50_m59 : packoffset(c25.w);
    float4 _50_m60 : packoffset(c26);
    float4 _50_m61 : packoffset(c27);
    float4 _50_m62 : packoffset(c28);
    float4 _50_m63 : packoffset(c29);
    float _50_m64 : packoffset(c30);
    float _50_m65 : packoffset(c30.y);
    float _50_m66 : packoffset(c30.z);
    float _50_m67 : packoffset(c30.w);
    float _50_m68 : packoffset(c31);
    float _50_m69 : packoffset(c31.y);
    float _50_m70 : packoffset(c31.z);
    float _50_m71 : packoffset(c31.w);
};

[[vk::binding(50, 0)]]
cbuffer _66_67 : register(b50)
{
    float4 _67_m0[32] : packoffset(c0);
    column_major float4x4 _67_m1[32] : packoffset(c32);
};

[[vk::binding(2, 0)]] SamplerState _25 : register(s2);
[[vk::binding(6, 0)]] SamplerState _26 : register(s6);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _28 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _40 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _41 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _43 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _44 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _45 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _46 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _47 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _48 : register(t30);
[[vk::binding(6, 1)]] Texture2D<float4> _51 : register(t6);
[[vk::binding(3, 1)]] Texture2D<float4> _52 : register(t3);
[[vk::binding(44, 0)]] Texture2D<float4> _53 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _54 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _55 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _56 : register(t37);
[[vk::binding(8, 1)]] Texture2D<float4> _57 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _59 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _60 : register(t5);
[[vk::binding(45, 0)]] TextureCube<float4> _62 : register(t45);
[[vk::binding(1, 1)]] Texture2D<float4> _63 : register(t1);
[[vk::binding(2, 1)]] Texture2D<float4> _64 : register(t2);
[[vk::binding(29, 0)]] Texture2D<float4> _65 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _70 : register(t36);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float2 _7;
static float3 _8;
static float3 _9;
static float3 _10;
static float3 _11;
static uint _13;
static float4 _15;
static float4 _16;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float2 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float3 _10 : TEXCOORD7;
    [[vk::location(8)]] float3 _11 : TEXCOORD8;
    [[vk::location(9)]] nointerpolation uint _13 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 _15 : SV_Target0;
    float4 _16 : SV_Target1;
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
    float _445 = 1.0f / gl_FragCoord.w;
    float3 _460 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _461 = dot(_460, _460);
    float _463 = rsqrt(max(_461, 9.9999999392252902907785028219223e-09f));
    float3 _464 = _460 * _463;
    float _465 = _461 * _463;
    uint _468 = asuint(_23_m0[_13]._m2.x);
    bool _473 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _486;
    float4 _487;
    if (_473)
    {
        _486 = asfloat(_33_Load4((_468 + 2u) * 16 + 0));
        _487 = asfloat(_33_Load4(_468 * 16 + 0));
    }
    else
    {
        _486 = _23_m0[_13]._m0[2];
        _487 = _23_m0[_13]._m0[0];
    }
    float4 _499 = _57.SampleBias(_27, _3 + (_50_m54 * _20_m75.w), _20_m16);
    float3 _504 = _499.xyz * _50_m24.xyz;
    float4 _508 = _58.SampleBias(_27, _3, _20_m16);
    float _509 = _508.x;
    float _511 = _508.z;
    float _513 = 1.0f - _508.w;
    float _517 = _499.w * _50_m24.w;
    float3 _522 = _504 * _50_m18;
    float3 _526 = lerp(dot(_522, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _522, _50_m19.xxx);
    float4 _530 = _59.SampleBias(_27, _3, _20_m16);
    _530.w = _530.w * _530.x;
    float2 _539 = (_530.wy * 2.0f) - 1.0f.xx;
    float3 _540 = float3(_539.x, _539.y, _426.z);
    float2 _541 = _539.xy;
    _540.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_541, _541), 0.0f, 1.0f)));
    float2 _549 = _540.xy * _50_m3;
    float4 _558 = _60.SampleBias(_27, _3 + (_50_m55 * _20_m75.w), _20_m16);
    float3 _588 = _4 + _18_m11.xyz;
    float3 _592 = _588 - float3(_487.w, _428, _486.w);
    _592.y = 6.103515625e-05f;
    float3 _595 = normalize(_592);
    float3 _603 = _5 * 1.0f;
    float3 _605 = mul(float3(_549.x, _549.y, _540.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _603));
    float _614 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
    float3 _615 = (_605 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_605, _605)))) * _614;
    float3 _616 = normalize(_5) * _614;
    uint2 _618 = uint2(gl_FragCoord.xy);
    float3 _628 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _637 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _650 = float4(float(_637 & 255u), float((_637 >> 8u) & 255u), float((_637 >> 16u) & 255u), float((_637 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _651 = _650.x;
    float _654 = _650.w;
    float _660 = _588.y;
    float _663 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _660) * _650.y;
    float _664 = max(_650.z, _663);
    float _673 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1167;
    float3 _1168;
    float3 _1169;
    float _1170;
    if (_20_m80.y < 0.5f)
    {
        float3 _688 = _588 - (_20_m105.xyz + (_628 * (-_20_m107.w)));
        float _702 = max(clamp((max(abs(_688.x), abs(_688.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_688.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _1004;
        float4 _1005;
        float4 _1006;
        float _1007;
        float _1008;
        if ((_20_m105.w != 0.0f) && (_702 < 1.0f))
        {
            float3 _715 = _588 - (_20_m105.xyz + (_628 * (-_20_m107.y)));
            float _729 = max(clamp((max(abs(_715.x), abs(_715.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_715.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _805;
            float4 _806;
            float4 _807;
            float4 _808;
            if (_729 < 1.0f)
            {
                float3 _738 = ((_588 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _740 = _738 - floor(_738);
                float4 _744 = _43.SampleLevel(_27, _740, 0.0f);
                float _745 = 1.0f - _729;
                float _749 = _20_m106.y * 0.5f;
                float _754 = _740.x;
                float _755 = clamp(_740.y, _749, 1.0f - _749) * 0.3333333432674407958984375f;
                float _756 = _740.z;
                float4 _759 = _44.SampleLevel(_26, float3(_754, _755, _756), 0.0f);
                float _775 = _744.x;
                float _785 = _744.y;
                float _795 = _744.z;
                _805 = _702 + (_759.w * _745);
                _806 = float4(((_44.SampleLevel(_26, float3(_754, _755 + 0.666666686534881591796875f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _795, _795) * _745;
                _807 = float4(((_44.SampleLevel(_26, float3(_754, _755 + 0.3333333432674407958984375f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _785, _785) * _745;
                _808 = float4(((_759.xyz * 4.0f) - 2.0f.xxx) * _775, _775) * _745;
            }
            else
            {
                _805 = _702;
                _806 = 0.0f.xxxx;
                _807 = 0.0f.xxxx;
                _808 = 0.0f.xxxx;
            }
            float3 _814 = _588 - (_20_m105.xyz + (_628 * (-_20_m107.z)));
            float _828 = max(clamp((max(abs(_814.x), abs(_814.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_814.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _908;
            float4 _909;
            float4 _910;
            float4 _911;
            if (_828 < 1.0f)
            {
                float3 _837 = ((_588 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _839 = _837 - floor(_837);
                float4 _843 = _45.SampleLevel(_27, _839, 0.0f);
                float _845 = _729 * (1.0f - _828);
                float _849 = _20_m106.y * 0.5f;
                float _854 = _839.x;
                float _855 = clamp(_839.y, _849, 1.0f - _849) * 0.3333333432674407958984375f;
                float _856 = _839.z;
                float4 _859 = _46.SampleLevel(_26, float3(_854, _855, _856), 0.0f);
                float _875 = _843.x;
                float _886 = _843.y;
                float _897 = _843.z;
                _908 = _805 + (_859.w * _845);
                _909 = _806 + (float4(((_46.SampleLevel(_26, float3(_854, _855 + 0.666666686534881591796875f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _897, _897) * _845);
                _910 = _807 + (float4(((_46.SampleLevel(_26, float3(_854, _855 + 0.3333333432674407958984375f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _886, _886) * _845);
                _911 = _808 + (float4(((_859.xyz * 4.0f) - 2.0f.xxx) * _875, _875) * _845);
            }
            else
            {
                _908 = _805;
                _909 = _806;
                _910 = _807;
                _911 = _808;
            }
            float4 _994;
            float4 _995;
            float4 _996;
            float _997;
            if (_828 > 0.0f)
            {
                float3 _920 = ((_588 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _923 = _20_m106.xyz * 0.5f;
                float3 _925 = clamp(_920 - floor(_920), _923, 1.0f.xxx - _923);
                float4 _929 = _47.SampleLevel(_27, _925, 0.0f);
                float _931 = _828 * (1.0f - _702);
                float _935 = _20_m106.y * 0.5f;
                float _940 = _925.x;
                float _941 = clamp(_925.y, _935, 1.0f - _935) * 0.3333333432674407958984375f;
                float _942 = _925.z;
                float4 _945 = _48.SampleLevel(_26, float3(_940, _941, _942), 0.0f);
                float _961 = _929.x;
                float _972 = _929.y;
                float _983 = _929.z;
                _994 = _909 + (float4(((_48.SampleLevel(_26, float3(_940, _941 + 0.666666686534881591796875f, _942), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _983, _983) * _931);
                _995 = _910 + (float4(((_48.SampleLevel(_26, float3(_940, _941 + 0.3333333432674407958984375f, _942), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _972, _972) * _931);
                _996 = _911 + (float4(((_945.xyz * 4.0f) - 2.0f.xxx) * _961, _961) * _931);
                _997 = _908 + (_945.w * _931);
            }
            else
            {
                _994 = _909;
                _995 = _910;
                _996 = _911;
                _997 = _908;
            }
            float _1000 = clamp((_997 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _1004 = _994;
            _1005 = _995;
            _1006 = _996;
            _1007 = _1000 - _702;
            _1008 = (_1000 + _702) * 0.5f;
        }
        else
        {
            _1004 = 0.0f.xxxx;
            _1005 = 0.0f.xxxx;
            _1006 = 0.0f.xxxx;
            _1007 = 0.0f;
            _1008 = 1.0f;
        }
        float4 _1028 = _1006 + float4(_20_m108.x * _1008, (_20_m108.y * _1008) + ((_20_m108.w * _1007) * 0.5f), _20_m108.z * _1008, (_20_m108.w * _1008) + ((_20_m108.y * _1007) * 0.375f));
        float4 _1048 = _1005 + float4(_20_m109.x * _1008, (_20_m109.y * _1008) + ((_20_m109.w * _1007) * 0.5f), _20_m109.z * _1008, (_20_m109.w * _1008) + ((_20_m109.y * _1007) * 0.375f));
        float4 _1068 = _1004 + float4(_20_m110.x * _1008, (_20_m110.y * _1008) + ((_20_m110.w * _1007) * 0.5f), _20_m110.z * _1008, (_20_m110.w * _1008) + ((_20_m110.y * _1007) * 0.375f));
        float4 _1072 = float4(_615, 1.0f);
        float3 _1078 = max(float3(dot(_1028, _1072), dot(_1048, _1072), dot(_1068, _1072)), 0.0f.xxx) * _673;
        float3 _1086 = ((_1028.xyz * 0.2125999927520751953125f) + (_1048.xyz * 0.715200006961822509765625f)) + (_1068.xyz * 0.072200000286102294921875f);
        float3 _1090 = _1086 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1086, _1086)));
        float _1092 = abs(_1090.y);
        float3 _1093 = _1090;
        _1093.y = _1092;
        float4 _1094 = float4(_1093.x, _1093.y, _1093.z, 0.0f.xxxx.w);
        _1094.w = 1.0f;
        float4 _1098 = float4(_1090.x, _1092, _1090.z, 1.0f);
        float3 _1103 = max(float3(dot(_1028, _1098), dot(_1048, _1098), dot(_1068, _1098)), 0.0f.xxx);
        float _1111 = _1078.z;
        float _1112 = _1078.y;
        float4 _1117 = lerp(float4(_1111, _1112, -1.0f, 0.666666686534881591796875f), float4(_1112, _1111, 0.0f, -0.3333333432674407958984375f), step(_1111, _1112).xxxx);
        float _1118 = _1078.x;
        float _1119 = _1117.x;
        float4 _1127 = lerp(float4(_1119, _1117.yw, _1118), float4(_1118, _1117.yz, _1119), step(_1119, _1118).xxxx);
        float _1128 = _1127.x;
        float _1129 = _1127.w;
        float _1130 = _1127.y;
        float _1132 = _1128 - min(_1129, _1130);
        float _1142 = frac(abs(_1127.z + ((_1129 - _1130) / ((6.0f * _1132) + 9.9999997473787516355514526367188e-05f))));
        float _1149 = min(_1132 / (_1128 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1142 - 0.5f))) * clamp(_1128, 0.0f, 1.0f));
        float _1151 = 2.0f / (2.0f - _1149);
        _1167 = _1094;
        _1168 = _1078;
        _1169 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1142, _1149, _1151).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1149.xxx) * _1151;
        _1170 = max(max(max(_1103.x, _1103.y), _1103.z), 0.0f) * _673;
    }
    else
    {
        _1167 = 0.0f.xxxx;
        _1168 = 1.0f.xxx;
        _1169 = _20_m81.xyz;
        _1170 = _673;
    }
    float3 _1890;
    float _1891;
    float _1892;
    float _1893;
    float3 _1894;
    float3 _1895;
    [branch]
    if ((clamp(_651 + _664, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f)
    {
        float _1198 = 1.0f - _509;
        float _1201 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_504 * _1198, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1204 = _473.xxx;
        float3 _1206 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1210 = float3(_1204.x ? _1206.x : _11.x, _1204.y ? _1206.y : _11.y, _1204.z ? _1206.z : _11.z) * _20_m89.z;
        float3 _1212 = float3(_1204.x ? _10.xzy.x : _10.x, _1204.y ? _10.xzy.y : _10.y, _1204.z ? _10.xzy.z : _10.z);
        float3 _1214 = abs(_1212) - 0.20000000298023223876953125f.xxx;
        float3 _1217 = max((_1214 * _1214) * _1214, 6.103515625e-05f.xxx);
        float3 _1220 = _1217 / dot(_1217, 1.0f.xxx).xxx;
        float2 _1228 = _1210.xy;
        float2 _1233 = _1210.zy;
        float4 _1243 = ((_53.SampleBias(_27, _1210.xz, _20_m16) * _1220.y) + (_53.SampleBias(_27, _1228, _20_m16) * _1220.z)) + (_53.SampleBias(_27, _1233, _20_m16) * _1220.x);
        float _1244 = _1243.w;
        float _1246 = 1.10000002384185791015625f - _1244;
        float _1255 = max(smoothstep(0.800000011920928955078125f - _1244, _1246, clamp((_651 * _1198) + (_615.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1244, _1246, clamp(_663 * _1198, 0.0f, 1.0f)));
        float _1262 = smoothstep(0.5f, 0.75f, _509);
        float _1264 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _513) * _1201;
        float _1267 = clamp(_1264 + _1262, 0.0f, 1.0f) * max(_651, _664);
        bool _1271 = !((step(_651, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _664)) != 0.0f);
        bool2 _1272 = _1271.xx;
        float2 _1274 = (1.0f - _664).xx;
        float2 _1275 = float2(_1272.x ? float2(3.0f, 4.345600128173828125f).x : _1274.x, _1272.y ? float2(3.0f, 4.345600128173828125f).y : _1274.y);
        float _1276 = 1.0f - _1267;
        float _1279 = _1271 ? _20_m10.x : 1.0f;
        float _1281 = _1279 * _1275.x;
        float _1283 = _1279 * _1275.y;
        float3 _1284 = _1210 * 20.0f;
        float3 _1285 = _1210 * 34.345600128173828125f;
        float3 _1287 = pow(max(_1214, 0.0f.xxx), 10.0f.xxx);
        float3 _1291 = _1287 / max(dot(_1287, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1293 = _1291.y;
        float2 _1294 = _1284.xz * 1.0f;
        float2 _1295 = floor(_1294);
        float2 _1298 = frac(_1295 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1302 = _1298 + dot(_1298, _1298 + 34.345001220703125f.xx).xx;
        float _1303 = _1302.x;
        float _1304 = _1302.y;
        float2 _1308 = frac(float2(_1303 * _1304, _1303 + _1304));
        float2 _1311 = frac((_1295 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1315 = _1311 + dot(_1311, _1311 + 34.345001220703125f.xx).xx;
        float _1316 = _1315.x;
        float _1317 = _1315.y;
        float2 _1321 = frac(float2(_1316 * _1317, _1316 + _1317));
        float _1327 = _1308.x;
        float _1329 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1327);
        float2 _1330 = ((_1294 - _1295) + ((((_1321 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1333 = _1330.y;
        float2 _1337 = float2(_1330.x * 1.25f, _1333 * ((_1333 < 0.0f) ? 1.25f : 0.75f));
        float _1340 = _1281 + _1327;
        float _1344 = _1271 ? frac(_1340) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1340, 0.0f, 1.0f));
        float _1356 = _1308.y;
        float _1359 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1344) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1344)) * step(0.001000000047497451305389404296875f, smoothstep(_1329, 0.0f, length(_1337)))) * step(_1276, _1356 - 0.100000001490116119384765625f);
        float _1362 = _1359 * _1293;
        float _1370 = _1291.z;
        float2 _1371 = _1284.xy * 1.0f;
        float2 _1372 = floor(_1371);
        float2 _1375 = frac(_1372 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1379 = _1375 + dot(_1375, _1375 + 34.345001220703125f.xx).xx;
        float _1380 = _1379.x;
        float _1381 = _1379.y;
        float2 _1385 = frac(float2(_1380 * _1381, _1380 + _1381));
        float2 _1388 = frac((_1372 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1392 = _1388 + dot(_1388, _1388 + 34.345001220703125f.xx).xx;
        float _1393 = _1392.x;
        float _1394 = _1392.y;
        float2 _1398 = frac(float2(_1393 * _1394, _1393 + _1394));
        float _1404 = _1385.x;
        float _1406 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1404);
        float2 _1407 = ((_1371 - _1372) + ((((_1398 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1410 = _1407.y;
        float2 _1414 = float2(_1407.x * 1.25f, _1410 * ((_1410 < 0.0f) ? 1.25f : 0.75f));
        float _1417 = _1281 + _1404;
        float _1421 = _1271 ? frac(_1417) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1417, 0.0f, 1.0f));
        float _1433 = _1385.y;
        float _1436 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1421) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1421)) * step(0.001000000047497451305389404296875f, smoothstep(_1406, 0.0f, length(_1414)))) * step(_1276, _1433 - 0.100000001490116119384765625f);
        float _1439 = _1436 * _1370;
        float _1447 = _1291.x;
        float2 _1448 = _1284.zy * 1.0f;
        float2 _1449 = floor(_1448);
        float2 _1452 = frac(_1449 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1456 = _1452 + dot(_1452, _1452 + 34.345001220703125f.xx).xx;
        float _1457 = _1456.x;
        float _1458 = _1456.y;
        float2 _1462 = frac(float2(_1457 * _1458, _1457 + _1458));
        float2 _1465 = frac((_1449 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1469 = _1465 + dot(_1465, _1465 + 34.345001220703125f.xx).xx;
        float _1470 = _1469.x;
        float _1471 = _1469.y;
        float2 _1475 = frac(float2(_1470 * _1471, _1470 + _1471));
        float _1481 = _1462.x;
        float _1483 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1481);
        float2 _1484 = ((_1448 - _1449) + ((((_1475 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1487 = _1484.y;
        float2 _1491 = float2(_1484.x * 1.25f, _1487 * ((_1487 < 0.0f) ? 1.25f : 0.75f));
        float _1494 = _1281 + _1481;
        float _1498 = _1271 ? frac(_1494) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1494, 0.0f, 1.0f));
        float _1510 = _1462.y;
        float _1513 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1498) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1498)) * step(0.001000000047497451305389404296875f, smoothstep(_1483, 0.0f, length(_1491)))) * step(_1276, _1510 - 0.100000001490116119384765625f);
        float _1516 = _1513 * _1447;
        float2 _1529 = (float4(((clamp(_1337 / _1329.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1321.x)) * _1359) * _1293, _1362, _1356).xy + float4(((clamp(_1414 / _1406.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1398.x)) * _1436) * _1370, _1439, _1433).xy) + float4(((clamp(_1491 / _1483.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1475.x)) * _1513) * _1447, _1516, _1510).xy;
        float _1531 = max(_1516, max(_1362, _1439));
        float4 _1534 = float4(_1529, _1531, 0.0f);
        float2 _1536 = _1285.xz * 1.0f;
        float2 _1537 = floor(_1536);
        float2 _1540 = frac(_1537 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1544 = _1540 + dot(_1540, _1540 + 34.345001220703125f.xx).xx;
        float _1545 = _1544.x;
        float _1546 = _1544.y;
        float2 _1550 = frac(float2(_1545 * _1546, _1545 + _1546));
        float2 _1553 = frac((_1537 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1557 = _1553 + dot(_1553, _1553 + 34.345001220703125f.xx).xx;
        float _1558 = _1557.x;
        float _1559 = _1557.y;
        float2 _1563 = frac(float2(_1558 * _1559, _1558 + _1559));
        float _1569 = _1550.x;
        float _1571 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1569);
        float2 _1572 = ((_1536 - _1537) + ((((_1563 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1575 = _1572.y;
        float2 _1579 = float2(_1572.x * 1.25f, _1575 * ((_1575 < 0.0f) ? 1.25f : 0.75f));
        float _1582 = _1283 + _1569;
        float _1586 = _1271 ? frac(_1582) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1582, 0.0f, 1.0f));
        float _1598 = _1550.y;
        float _1601 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1586) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1586)) * step(0.001000000047497451305389404296875f, smoothstep(_1571, 0.0f, length(_1579)))) * step(_1276, _1598 - 0.100000001490116119384765625f);
        float _1604 = _1601 * _1293;
        float2 _1609 = _1285.xy * 1.0f;
        float2 _1610 = floor(_1609);
        float2 _1613 = frac(_1610 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1617 = _1613 + dot(_1613, _1613 + 34.345001220703125f.xx).xx;
        float _1618 = _1617.x;
        float _1619 = _1617.y;
        float2 _1623 = frac(float2(_1618 * _1619, _1618 + _1619));
        float2 _1626 = frac((_1610 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1630 = _1626 + dot(_1626, _1626 + 34.345001220703125f.xx).xx;
        float _1631 = _1630.x;
        float _1632 = _1630.y;
        float2 _1636 = frac(float2(_1631 * _1632, _1631 + _1632));
        float _1642 = _1623.x;
        float _1644 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1642);
        float2 _1645 = ((_1609 - _1610) + ((((_1636 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1648 = _1645.y;
        float2 _1652 = float2(_1645.x * 1.25f, _1648 * ((_1648 < 0.0f) ? 1.25f : 0.75f));
        float _1655 = _1283 + _1642;
        float _1659 = _1271 ? frac(_1655) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1655, 0.0f, 1.0f));
        float _1671 = _1623.y;
        float _1674 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1659) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1659)) * step(0.001000000047497451305389404296875f, smoothstep(_1644, 0.0f, length(_1652)))) * step(_1276, _1671 - 0.100000001490116119384765625f);
        float _1677 = _1674 * _1370;
        float2 _1682 = _1285.zy * 1.0f;
        float2 _1683 = floor(_1682);
        float2 _1686 = frac(_1683 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1690 = _1686 + dot(_1686, _1686 + 34.345001220703125f.xx).xx;
        float _1691 = _1690.x;
        float _1692 = _1690.y;
        float2 _1696 = frac(float2(_1691 * _1692, _1691 + _1692));
        float2 _1699 = frac((_1683 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1703 = _1699 + dot(_1699, _1699 + 34.345001220703125f.xx).xx;
        float _1704 = _1703.x;
        float _1705 = _1703.y;
        float2 _1709 = frac(float2(_1704 * _1705, _1704 + _1705));
        float _1715 = _1696.x;
        float _1717 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1715);
        float2 _1718 = ((_1682 - _1683) + ((((_1709 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1721 = _1718.y;
        float2 _1725 = float2(_1718.x * 1.25f, _1721 * ((_1721 < 0.0f) ? 1.25f : 0.75f));
        float _1728 = _1283 + _1715;
        float _1732 = _1271 ? frac(_1728) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1728, 0.0f, 1.0f));
        float _1744 = _1696.y;
        float _1747 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1732) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1732)) * step(0.001000000047497451305389404296875f, smoothstep(_1717, 0.0f, length(_1725)))) * step(_1276, _1744 - 0.100000001490116119384765625f);
        float _1750 = _1747 * _1447;
        float2 _1758 = (float4(((clamp(_1579 / _1571.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1563.x)) * _1601) * _1293, _1604, _1598).xy + float4(((clamp(_1652 / _1644.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1636.x)) * _1674) * _1370, _1677, _1671).xy) + float4(((clamp(_1725 / _1717.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1709.x)) * _1747) * _1447, _1750, _1744).xy;
        float4 _1763 = float4(_1758, max(_1750, max(_1604, _1677)), 0.0f);
        float _1765 = step(max(float2(_1329 * _1359, _428) * _1293, max(float2(_1406 * _1436, _428) * _1370, float2(_1483 * _1513, _428) * _1447)).x, 0.00999999977648258209228515625f);
        float2 _1769 = _1534.xy + (_1763.xy * _1765);
        float3 _1778 = float3((_1243.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1769.x, _1769.y, 0.0f.xxx.z);
        float2 _1782 = float2(0.0f, (_20_m10.x * _20_m89.z) * 0.75f);
        float3 _1785 = float3(_1212.x, 0.0f, _1212.z);
        float3 _1791 = abs(_1785 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1785, _1785)))) - 0.20000000298023223876953125f.xxx;
        float3 _1794 = max((_1791 * _1791) * _1791, 6.103515625e-05f.xxx);
        float3 _1797 = _1794 / dot(_1794, 1.0f.xxx).xxx;
        float _1816 = _1797.z;
        float _1818 = _1797.x;
        float4 _1820 = (_54.SampleBias(_27, _1228, _20_m16) * _1816) + (_54.SampleBias(_27, _1233, _20_m16) * _1818);
        float2 _1832 = _1778.xy + ((((_1820.xy * 2.0f) - 1.0f.xx) * ((_54.SampleBias(_27, _1228 + _1782, _20_m16).w * _1816) + (_54.SampleBias(_27, _1233 + _1782, _20_m16).w * _1818))) * _1267);
        float3 _1833 = float3(_1832.x, _1832.y, _1778.z);
        float _1834 = _1820.z;
        float _1839 = max(max(max(_1534.zw * step(0.00999999977648258209228515625f, _1531), _1763.zw * _1765).x, step(1.0099999904632568359375f - _1267, _1243.z)), smoothstep(1.0f - _1834, 1.10000002384185791015625f - _1834, _1267) * _1267);
        float2 _1840 = _1832.xy;
        _1833.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1840, _1840), 0.0f, 1.0f)));
        float3 _1847 = normalize(_1833);
        float3 _1848 = cross(_615, float3(0.0f, 1.0f, 0.0f));
        bool3 _1851 = (dot(_1848, _1848) > 6.103515625e-05f).xxx;
        float3 _1852 = normalize(_1848);
        float3 _1853 = float3(_1851.x ? _1852.x : float3(1.0f, 0.0f, 0.0f).x, _1851.y ? _1852.y : float3(1.0f, 0.0f, 0.0f).y, _1851.z ? _1852.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1864 = min(_513, 0.0500000007450580596923828125f);
        float _1865 = lerp(_513, _1864, _1839);
        float _1882 = lerp(1.0f, 0.5f, (_1255 * (1.0f - _1201)) * (1.0f - _1264));
        _1890 = normalize(lerp(_615, normalize(((_1853 * _1847.x) + (cross(_1853, _615) * _1847.y)) + (_615 * _1847.z)), _1839.xxx));
        _1891 = _1839;
        _1892 = _1864;
        _1893 = max(_1865 - ((0.20000000298023223876953125f * _1201) * _1255), min(0.20000000298023223876953125f, _1865));
        _1894 = _526 * _1882;
        _1895 = lerp(_504, _504 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_504, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1839 * _1262).xxx) * _1882;
    }
    else
    {
        _1890 = _615;
        _1891 = 0.0f;
        _1892 = 0.00999999977648258209228515625f;
        _1893 = _513;
        _1894 = _526;
        _1895 = _504;
    }
    float3 _2066;
    float _2067;
    float3 _2068;
    float3 _2069;
    float _2070;
    [branch]
    if (_654 > 0.00999999977648258209228515625f)
    {
        bool3 _1899 = _473.xxx;
        float3 _1901 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1902 = float3(_1899.x ? _1901.x : _11.x, _1899.y ? _1901.y : _11.y, _1899.z ? _1901.z : _11.z);
        float3 _1905 = _1902 * _20_m89.z;
        float3 _1907 = float3(_1899.x ? _10.xzy.x : _10.x, _1899.y ? _10.xzy.y : _10.y, _1899.z ? _10.xzy.z : _10.z);
        float3 _1909 = abs(_1907) - 0.20000000298023223876953125f.xxx;
        float3 _1912 = max((_1909 * _1909) * _1909, 6.103515625e-05f.xxx);
        float3 _1915 = _1912 / dot(_1912, 1.0f.xxx).xxx;
        float _1931 = _1915.y;
        float _1933 = _1915.z;
        float _1936 = _1915.x;
        float4 _1938 = ((_55.SampleBias(_27, _1905.xz, _20_m16) * _1931) + (_55.SampleBias(_27, _1905.xy, _20_m16) * _1933)) + (_55.SampleBias(_27, _1905.zy, _20_m16) * _1936);
        float _1939 = _1907.y;
        float _1946 = clamp(_654 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1902.y) * clamp(_654 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1957 = smoothstep(2.0f - _1946, 2.349999904632568359375f - _1946, ((_1939 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1938.z) * ((_511 * _511) * float(gl_FrontFacing));
        float _1969 = lerp(1.0f, 0.5f, ((_1946 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1895 * (1.0f - _509), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1938.w) * ((_1939 * 0.25f) + 0.75f));
        float3 _1971 = _1957.xxx;
        float2 _1977 = (_1938.xy * 2.0f) - 1.0f.xx;
        float3 _1978 = float3(_1977.x, _1977.y, _426.z);
        float2 _1979 = _1977.xy;
        _1978.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1979, _1979), 0.0f, 1.0f)));
        float2 _1987 = _1978.xy * 2.0f;
        float3 _1989 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1987.x, _1987.y, _1978.z), _1971);
        float3 _1993 = _1989 * rsqrt(max(6.103515625e-05f, dot(_1989, _1989)));
        float _1994 = _615.y;
        float _1997 = step(0.00999999977648258209228515625f, 1.0f - (_1994 * _1994));
        float _2001 = lerp(_615.z, _1994, _1997);
        float3 _2008 = (float3(0.0f, _1997, 1.0f - _1997) - (_615 * _2001)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2001 * _2001)));
        float3 _2022 = _1905 * 4.0f;
        float4 _2042 = ((_56.SampleLevel(_25, _2022.xz, 0.0f) * _1931) + (_56.SampleLevel(_25, _2022.xy, 0.0f) * _1933)) + (_56.SampleLevel(_25, _2022.zy, 0.0f) * _1936);
        float2 _2045 = (_2042.xz * 2.0f) - 1.0f.xx;
        float _2056 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2045.x, _2042.y, _2045.y), (floor(_464 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2057 = _2056 * _2056;
        float _2060 = _2057 * ((_2057 * 2.0f) * _1957);
        float3 _2061 = 1.0f.xxx * _2060;
        _2066 = ((cross(_2008, _615) * _1993.x) + (_2008 * _1993.y)) + (_615 * _1993.z);
        _2067 = lerp(lerp(_1893, 0.89999997615814208984375f, clamp(_1957 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2060);
        _2068 = lerp(_1894 * _1969, 0.3079999983310699462890625f.xxx, _1971) + (_2061 * 0.5f);
        _2069 = lerp(_1895 * _1969, 0.87999999523162841796875f.xxx, _1971) + _2061;
        _2070 = lerp(_509, 0.0f, _1957);
    }
    else
    {
        _2066 = _615;
        _2067 = _1893;
        _2068 = _1894;
        _2069 = _1895;
        _2070 = _509;
    }
    float3 _2076 = _50_m51.xyz * _50_m42;
    float4 _2077 = float4(_2076.x, _2076.y, _2076.z, _50_m51.w);
    _2077.w = _50_m51.w * _50_m43;
    float2 _2124;
    if (_50_m41 > 1.5f)
    {
        float2 _2096 = ((float2(_618) / _20_m5.xy) * 2.0f) - 1.0f.xx;
        _2124 = float2(_2096.x, (_2096.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _50_m47);
    }
    else
    {
        _2124 = lerp(_3, _7, _50_m41.xx);
    }
    float4 _2139 = _64.SampleBias(_27, ((_2124 + (_50_m48.zw * _20_m75.w)) * _50_m53.xy) + _50_m53.zw, _20_m16);
    float _2142 = _2139.x;
    float4 _2158 = _63.SampleBias(_27, (((_2124 + (_50_m46 * _2142).xx) + (_50_m48.xy * _20_m75.w)) * _50_m52.xy) + _50_m52.zw, _20_m16);
    float4 _2165 = _2077 * lerp(_2158, float4(1.0f, 1.0f, 1.0f, _2158.x), _50_m40.xxxx);
    float _2168 = _2165.w;
    float _2181 = _2142 - ((_50_m45 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _2183 = clamp(-_2181, 0.0f, 1.0f);
    bool3 _2197 = (_50_m44 < 0.5f).xxx;
    float _2211 = pow(clamp(dot(_464, float3(_2197.x ? _603.x : _2066.x, _2197.y ? _603.y : _2066.y, _2197.z ? _603.z : _2066.z).xyz) + _50_m36, 0.0f, 1.0f), _50_m38);
    float _2213 = lerp(1.0f - _2211, _2211, _50_m39);
    float _2229 = 0.959999978542327880859375f - (_2070 * 0.959999978542327880859375f);
    float3 _2230 = _2069 * _2229;
    float3 _2233 = lerp(0.039999999105930328369140625f.xxx * _508.y, _2069, _2070.xxx);
    float3 _2234 = _2068 * _2229;
    float _2236 = max(_2067 * _2067, 0.0078125f);
    float _2237 = _2236 * _2236;
    bool _2244 = (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) < 0.9900000095367431640625f;
    float2 _2257 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _2257.y = -_2257.y;
    float2 _2273 = lerp(((sqrt(sqrt(abs(_2257 * 0.5f))) * float2(int2(sign(_2257)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2244).xx);
    float4 _2275 = float4(_2273.x, _2273.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2275.z = 1.0f;
    _2275.w = _2244 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2288 = lerp(-_37_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2292 = normalize(float3(_2288.x, 6.103515625e-05f, _2288.z));
    float3 _2302 = lerp(_37_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2306 = _2302 * lerp(_37_m3.w, 1.0f, _20_m91.w);
    int _2310 = int(_618.x);
    int _2311 = int(_618.y);
    float4 _2315 = _41.Load(int3(int3(_2310, _2311, 0).xy, 0));
    float _2320 = _2315.y;
    float _2323 = lerp(lerp(1.0f, _2315.x, _39_m6.x), 1.0f, _20_m80.z);
    float _2324 = dot(_2066, _2288);
    float3 _2331 = _2234 * _20_m79.z;
    float3 _2332 = _2331 * 0.64999997615814208984375f;
    float _2336 = dot(_2230, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2349 = clamp(-dot(_2292.xz, normalize(_628.xz)), 0.0f, 1.0f);
    float _2353 = 1.0f - _20_m91.x;
    float4 _2367 = _51.SampleLevel(_26, float2((clamp(lerp(_2324, ((-_2324) * ((_2324 * 0.5f) - 1.0f)) + 0.5f, (_2349 * smoothstep(0.25f, 0.75f, 1.0f - abs(_628.y))) * _2353) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2368 = _2367.w;
    float _2370 = _2367.x;
    float _2371 = _2367.y;
    float _2372 = _2367.z;
    float _2377 = max(max(_2370, _2371), _2372) - min(min(_2370, _2371), _2372);
    float4 _2385 = _51.SampleLevel(_26, float2((dot(_2066, _628) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2386 = _2385.w;
    float _2387 = _511 * _2320;
    float _2394 = min(min(_2320, _511), _2368);
    float _2395 = _2386 * _2387;
    float3 _2399 = ((clamp(dot(_615, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1169, 1.0f.xxx, (_20_m80.y * _2394).xxx);
    float3 _2401 = _2394.xxx;
    float3 _2424 = _2323.xxx;
    float3 _2425 = lerp((_2399 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1170), 1.5f), clamp(_1170, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2306, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2306, _2401) + ((_2399 * clamp(_1170, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2302 * _20_m91.y)))) * _20_m79.y, _2424);
    float3 _2426 = lerp(lerp(lerp(dot(_2332, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2332, 1.2000000476837158203125f.xxx), _2331, clamp((_2387 * _2386) + _2368, 0.0f, 1.0f).xxx), _2230, _2401);
    float3 _2432 = _2426 * ((1.0f - _2377).xxx + (_2367.xyz * _2377));
    float3 _2441 = lerp(lerp(_2331, lerp(_2336.xxx, _2230, 1.2000000476837158203125f.xxx), _2395.xxx), _2432 * clamp(dot(_2426, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2432, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2424);
    float4 _2445 = float4(_2441, _2323);
    float _2447 = lerp(_2395, _2394, _2323);
    float _2450 = lerp(_20_m79.z, 1.0f, _2447);
    float3 _2458 = float3(_628.x, lerp(0.5f, _2288.y, _2323), _628.z);
    float _2471 = clamp(dot(_1890, _464), 0.0f, 1.0f);
    float _2472 = dot(_1890, normalize(((_2288 * _2323) + ((_2458 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2458, _2458)))) * 2.0f)) + (_464 * (2.0f + _2323))));
    float _2476 = (((_2472 * _2237) - _2472) * _2472) + 1.0f;
    float _2477 = _2476 * _2476;
    float _2480 = (_2237 != _2477) ? (_2237 / _2477) : 1.0f;
    float _2481 = 2.0f * _2471;
    float _2483 = (1.0f + _2471) - _2471;
    float _2492 = _2471 * _2471;
    float3 _2504 = _2233 * _52.SampleLevel(_26, float2(lerp(_2480 / min(1.0f / (_2237 + 9.9999997473787516355514526367188e-05f), 65504.0f), _2492, _50_m4), _2067 * (1.0f - _2070)), 0.0f).xyz;
    float3 _2506 = lerp(_2233, _2504, _50_m4.xxx);
    float _2519 = (1.0f - _50_m6) + (_517 * _50_m6);
    float3 _2521 = ((_2425 * _2441) * _2519) + (((_2504 * clamp((_2480 * (0.5f / ((_2481 + (_2236 * _2483)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2425 * (((_2447 * 0.5f) + 0.5f) * _2450)) * 1.0f)) * _20_m92.w);
    float _2522 = dot(_2521, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2525 = clamp(_2522 - 0.5f, 0.0f, 0.5f);
    float3 _2561 = normalize(cross(_628, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float _2567 = dot(_464, _2066);
    float _2569 = 1.0f - abs(_2567);
    float _2591 = dot(_2292, _2066);
    float _2603 = 1.0f - _2323;
    float _2630 = lerp(_2067, _1892, _1891);
    float _2631 = _2630 * _2630;
    float _2632 = _2492 * _2471;
    float2 _2633 = float2(1.0f, _2471);
    float2 _2636 = float2(1.0f, _2631);
    float3 _2639 = float3(1.0f, _2631, (_2631 * _2631) * _2631);
    float _2644 = dot(mul(_2633, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2636) / dot(mul(float3(1.0f, _2492, _2632), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2639);
    float _2649 = dot(mul(_2633, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2636) / dot(mul(float3(1.0f, _2471, _2632), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2639);
    float3 _2652 = (_2506 * _2644) + _2649.xxx;
    float _2653 = _2644 + _2649;
    float3 _2659 = -_464;
    float3 _2677 = ((((_558.xyz * _50_m25.xyz) * _50_m7) * ((_50_m56 > 0.5f) ? lerp(1.0f, lerp(_50_m58, _50_m59, (sin(_50_m57 * _20_m75.w) * 0.5f) + 0.5f), _558.w) : 1.0f)) + (lerp(lerp((((_2139 * clamp((_2168 + _2139.w) * _50_m49.w, 0.0f, 1.0f)) * _50_m49) + _2165).xyz, (_50_m50.xyz * _2183) * _50_m42, _2183.xxx).xyz, _50_m50.xyz, (_50_m50.w * _2213).xxx).xyz * (clamp(_2168 * clamp(_2181, 0.0f, 1.0f), 0.0f, 1.0f) * ((1.0f - _50_m37) + (_2213 * _50_m37)))).xyz) * _2519;
    float3 _2678 = lerp(_2522.xxx, _2521, ((_2525 * _2525) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m88.w), lerp(0.89999997615814208984375f, 0.5f, _20_m88.w), _2569)) * _20_m87.w) * min(min(clamp(dot(_595, _2561) + 1.0f, 0.0f, 1.0f), _511), _2320)) * (lerp(0.25f.xxx, _2230, _20_m88.z.xxx) * clamp(dot(_2561, _2066), 0.0f, 1.0f))) + ((((((lerp(_1168 * (1.0f / max(max(max(_1168.x, _1168.y), _1168.z) * 0.5f, 1.0f)), _2306, _2424) * clamp(lerp(dot(_1167.xyz, _2066) * _1167.w, ((-_2591) * ((_2591 * 0.5f) - 1.0f)) + 0.5f, _2323), 0.0f, 1.0f)) * ((_2603 + (_2349 * _2323)) * _2353)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2569)) * min(_511, _2320)) * (_2603 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2336) * _2323))) * max(0.1500000059604644775390625f.xxx, _2230)));
    float2 _2681 = float2(_618);
    float2 _2683 = floor(_2681 * 0.03125f);
    int _2691 = int((_2683.x + (_2683.y * _35_m5)) * 8.0f);
    float _2698 = floor(_445 - (_20_m3.y * _35_m11));
    float _2702 = clamp(_2698, 0.0f, _35_m7 - 1.0f);
    int _2704 = int(_2702 * 8.0f);
    float3 _2706;
    _2706 = (_2678 + _2677) + (((_62.SampleLevel(_26, reflect(_2659, _1890), (1.2000000476837158203125f * log2(max(_2630, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2652 + ((_2506 * ((1.0f - _2653) / _2653)) * _2652)) * 1.0f)) * ((clamp(_1170, 0.5f, 1.5f) * _20_m79.w) * _2450)) * _1169);
    float3 _2707;
    [loop]
    for (int _2709 = 0; _2709 <= 7; _2706 = _2707, _2709++)
    {
        uint _2727 = (_2698 <= _2702) ? (_31.Load(uint(_2691 + _2709) * 4 + 0) & _31.Load(uint((_20_m21.y + _2704) + _2709) * 4 + 0)) : 0u;
        uint _2728 = uint(_2709);
        _2707 = _2706;
        uint _2733;
        float3 _2730;
        [loop]
        for (uint _2732 = _2727; _2732 != 0u; _2707 = _2730, _2732 = _2733)
        {
            uint _2737 = firstbitlow(_2732);
            _2733 = _2732 ^ (1u << (_2737 & 31u));
            int _2743 = int((32u * _2728) + _2737) * 8;
            int _2746 = _2743 + 1;
            int _2749 = _2743 + 2;
            int _2752 = _2743 + 3;
            int _2755 = _2743 + 4;
            int _2758 = _2743 + 5;
            int _2761 = _2743 + 6;
            int _2764 = _2743 + 7;
            uint _2768 = uint(_37_m6[_2758].w);
            float _2843;
            if ((_2768 & 1u) == 1u)
            {
                uint _2774 = asuint(_37_m6[_2758].x);
                uint _2781 = asuint(_37_m6[_2758].y);
                uint _2788 = asuint(_37_m6[_2758].z);
                uint _2795 = asuint(_37_m6[_2761].x);
                uint _2802 = asuint(_37_m6[_2761].y);
                uint _2809 = asuint(_37_m6[_2761].z);
                float3 _2828 = abs(mul(float4(_588 - _37_m6[_2746].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2774).x, spvUnpackHalf2x16(_2788).x, spvUnpackHalf2x16(_2802).x, 0.0f), float4(spvUnpackHalf2x16(_2774 >> 16u).x, spvUnpackHalf2x16(_2788 >> 16u).x, spvUnpackHalf2x16(_2802 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2781).x, spvUnpackHalf2x16(_2795).x, spvUnpackHalf2x16(_2809).x, 0.0f), float4(spvUnpackHalf2x16(_2781 >> 16u).x, spvUnpackHalf2x16(_2795 >> 16u).x, spvUnpackHalf2x16(_2809 >> 16u).x, 0.0f))).xyz);
                float _2835 = _37_m6[_2764].x * 0.5f;
                float _2841 = 1.0f - clamp((max(max(_2828.x, _2828.y), _2828.z) - (_2835 + 0.5f)) / (0.5f - _2835), 0.0f, 1.0f);
                _2843 = _2841 * _2841;
            }
            else
            {
                _2843 = 1.0f;
            }
            if (false || (_2843 < 0.001000000047497451305389404296875f))
            {
                _2730 = _2707;
                continue;
            }
            float3 _3536;
            if (_37_m6[_2743].w < 1.5f)
            {
                float3 _3535;
                do
                {
                    uint _2856 = asuint(_37_m6[_2752].w);
                    if ((_2856 == 16u) || ((_37_m6[_2752].z + _20_m91.z) < 0.5f))
                    {
                        _3535 = _2707;
                        break;
                    }
                    bool _2868 = (uint(_37_m6[_2743].w) & 1u) == 0u;
                    bool _2872 = (!_2868) && (_37_m6[_2749].z > 0.0f);
                    bool _2873 = _2856 == 4u;
                    float _2874 = float(_2868);
                    float _2882 = (0.5f + (0.5f * _37_m6[_2749].y)) - abs(_37_m6[_2749].x);
                    float _2883 = _37_m6[_2749].y - _2882;
                    float _2890 = abs(max((1.0f - abs(_2882)) - abs(_2883), 0.00048828125f));
                    float3 _2894 = normalize(float3(_2882, _2883, (_37_m6[_2749].x >= 0.0f) ? _2890 : (-_2890)));
                    float _2900 = lerp(_37_m6[_2761].w, max(2.0f * _37_m6[_2755].y, 0.100000001490116119384765625f), float(_2873));
                    float3 _2905 = _37_m6[_2746].xyz - _588;
                    float3 _2906 = -_2894;
                    float3 _2911 = lerp(_2905, _2906 * dot(_2905, _2906), (float(_2873 && (_37_m6[_2755].z > 0.5f)) * _2874).xxx);
                    float _2912 = dot(_2911, _2911);
                    float _2913 = rsqrt(_2912);
                    float3 _2914 = _2911 * _2913;
                    float3 _2947;
                    float _2948;
                    if (_2872)
                    {
                        float3 _2918 = (_2894 * _37_m6[_2749].z) * 0.5f;
                        float3 _2919 = _2911 - _2918;
                        float3 _2920 = _2911 + _2918;
                        float _2921 = length(_2919);
                        float _2922 = length(_2920);
                        float3 _2931 = normalize(cross(cross(_2894, _2914), _2894));
                        _2947 = _2931;
                        _2948 = ((1.0f / ((((_2921 * _2922) + dot(_2919, _2920)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2931, _2919) / _2921) + (dot(_2931, _2920) / _2922)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_37_m6[_2749].z * _2913, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2947 = _2914;
                        _2948 = 1.0f;
                    }
                    float _2970;
                    if (_2900 < 0.0f)
                    {
                        float _2958 = _2912 * (_37_m6[_2746].w * _37_m6[_2746].w);
                        float _2961 = clamp(1.0f - (_2958 * _2958), 0.0f, 1.0f);
                        _2970 = lerp(1.0f / (_2912 + 1.0f), _2948, float(_2872)) * (_2961 * _2961);
                    }
                    else
                    {
                        float3 _2964 = _2911 * _37_m6[_2746].w;
                        _2970 = _2948 * pow(1.0f - clamp(dot(_2964, _2964), 0.0f, 1.0f), _2900);
                    }
                    float _2975 = clamp((dot(_2947, _2906) - _37_m6[_2749].z) * _37_m6[_2749].w, 0.0f, 1.0f);
                    float _2978 = _2970 * lerp(1.0f, _2975 * _2975, _2874);
                    int _2980 = int(_37_m6[_2764].w);
                    float _3084;
                    if ((!_2872) && (_2980 >= 0))
                    {
                        uint _2986 = uint(_2980);
                        float2 _3077;
                        [branch]
                        if (_2874 != 0.0f)
                        {
                            float4 _2998 = mul(_67_m1[_2986], float4(_588.x, _660, _588.z, 1.0f));
                            _3077 = _67_m0[_2986].xy + (clamp(_2998.xy / _2998.w.xx, 0.0f.xx, 1.0f.xx) * _67_m0[_2986].zw);
                        }
                        else
                        {
                            float3 _3018 = mul(float4(-_2911, 0.0f), _67_m1[_2986]).xyz;
                            float3 _433 = _3018;
                            float3 _432 = _3018;
                            float3 _431 = abs(_3018);
                            uint _3027 = uint(int(_431.y > _431.x));
                            uint _3033 = (_431.z > _431[_3027]) ? 2u : _3027;
                            uint _3039 = (_3033 * 2u) + uint(_432[_3033] < 0.0f);
                            float _3043 = abs(_433[_3039 / 2u]);
                            float _3063 = 0.5f - (0.000244140625f / _67_m0[_2986].w);
                            _3077 = _67_m0[_2986].xy + (clamp(float2((float(_3039) + ((((_433[uint(_382[_3039].x)] * _383[_3039].x) / _3043) * _3063) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_433[uint(_382[_3039].y)] * _383[_3039].y) / _3043) * _3063)), 0.0f.xx, 1.0f.xx) * _67_m0[_2986].zw);
                        }
                        _3084 = _2978 * _65.SampleLevel(_26, _3077, 0.0f).x;
                    }
                    else
                    {
                        _3084 = _2978;
                    }
                    float _3085 = _3084 * _2843;
                    float3 _3534;
                    do
                    {
                        float3 _3533;
                        [branch]
                        if (_3085 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2873)
                            {
                                _3534 = lerp(_2707, _37_m6[_2743].xyz, (_3085 * (_37_m6[_2755].x * ((1.0f - _37_m6[_2755].w) + (smoothstep(-0.5f, 0.5f, dot(_616, _2947)) * _37_m6[_2755].w)))).xxx);
                                break;
                            }
                            float _3105 = dot(_2066, _2947);
                            float _3106 = clamp(_3105, 0.0f, 1.0f);
                            float _3409;
                            if (_2856 != 0u)
                            {
                                bool _3112 = _2868 || ((_2768 & 2u) != 0u);
                                int _3161;
                                if (_3112)
                                {
                                    _3161 = int(_37_m6[_2752].x);
                                }
                                else
                                {
                                    uint _3118 = asuint(_37_m6[_2749].w);
                                    uint _3120 = asuint(_37_m6[_2752].x);
                                    float3 _3121 = _588 - _37_m6[_2746].xyz;
                                    float3 _3122 = abs(_3121);
                                    float _3123 = _3122.x;
                                    float _3124 = _3122.y;
                                    float _3126 = _3122.z;
                                    int _3158;
                                    if ((_3123 > _3124) && (_3123 > _3126))
                                    {
                                        _3158 = int((_3121.x > 0.0f) ? (_3118 >> 24u) : ((_3118 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3157;
                                        if (_3124 > _3126)
                                        {
                                            _3157 = int((_3121.y > 0.0f) ? ((_3118 >> 8u) & 255u) : (_3118 & 255u));
                                        }
                                        else
                                        {
                                            _3157 = int((_3121.z > 0.0f) ? ((_3120 >> 8u) & 255u) : (_3120 & 255u));
                                        }
                                        _3158 = _3157;
                                    }
                                    _3161 = (_3158 < 80) ? _3158 : (-1);
                                }
                                bool _3162 = _3161 >= 0;
                                float _3408;
                                if (_3162)
                                {
                                    float3 _3166 = _588 - _37_m6[_2746].xyz;
                                    float4 _3186 = mul(_39_m10[_3161], float4((_588 - ((_3166 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3166, _3166)))) * _39_m11[_3161].x)) + (_616 * (_39_m11[_3161].y * 5.0f)), 1.0f));
                                    float _3187 = _3186.w;
                                    float3 _3190 = _3186.xyz / _3187.xxx;
                                    float2 _3191 = _3190.xy;
                                    float3 _3199 = _3190.xyz;
                                    bool3 _3200 = bool3(_3199.x <= 0.0f.xxx.x, _3199.y <= 0.0f.xxx.y, _3199.z <= 0.0f.xxx.z);
                                    bool3 _3201 = bool3(_3199.x >= 1.0f.xxx.x, _3199.y >= 1.0f.xxx.y, _3199.z >= 1.0f.xxx.z);
                                    float _3204 = _3190.z;
                                    float2 _3215 = ((_3191 * (_39_m12[_3161].zw - _39_m12[_3161].xy)) + _39_m12[_3161].xy).xy * _39_m13.zw;
                                    float2 _3217 = floor(_3215 + 0.5f.xx);
                                    float2 _3218 = _3215 - _3217;
                                    float _3220 = _3218.x + 0.5f;
                                    float _3221 = _3220 * _3220;
                                    float _3224 = 1.0f - _3218.x;
                                    float _3225 = min(_3218.x, 0.0f);
                                    float _3228 = _3218.x + 1.0f;
                                    float _3229 = max(_3218.x, 0.0f);
                                    float _3241 = _3218.y + 0.5f;
                                    float _3242 = _3241 * _3241;
                                    float _3245 = 1.0f - _3218.y;
                                    float _3246 = min(_3218.y, 0.0f);
                                    float _3249 = _3218.y + 1.0f;
                                    float _3250 = max(_3218.y, 0.0f);
                                    float3 _3262 = float3(0.1599999964237213134765625f * _3224, 0.1599999964237213134765625f * ((_3228 - (_3229 * _3229)) + 1.0f), _3221 * 0.07999999821186065673828125f);
                                    float3 _3263 = float3(0.1599999964237213134765625f * ((_3221 * 0.5f) - _3218.x), 0.1599999964237213134765625f * ((_3224 - (_3225 * _3225)) + 1.0f), 0.1599999964237213134765625f * _3228) + _3262;
                                    float3 _3265 = float3(0.1599999964237213134765625f * _3245, 0.1599999964237213134765625f * ((_3249 - (_3250 * _3250)) + 1.0f), _3242 * 0.07999999821186065673828125f);
                                    float3 _3266 = float3(0.1599999964237213134765625f * ((_3242 * 0.5f) - _3218.y), 0.1599999964237213134765625f * ((_3245 - (_3246 * _3246)) + 1.0f), 0.1599999964237213134765625f * _3249) + _3265;
                                    float3 _3272 = ((_3262 / _3263) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.xxx;
                                    float3 _3274 = ((_3265 / _3266) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.yyy;
                                    float2 _3276 = _3217 * _39_m13.xy;
                                    float _3277 = _3272.x;
                                    float _3278 = _3274.x;
                                    float _3281 = _3272.y;
                                    float _3284 = _3272.z;
                                    float _3287 = _3274.y;
                                    float _3294 = _3274.z;
                                    float _3301 = _3263.x;
                                    float _3302 = _3266.x;
                                    float _3304 = _3263.y;
                                    float _3306 = _3263.z;
                                    float _3308 = _3266.y;
                                    float _3312 = _3266.z;
                                    float _3370 = (((((((_3301 * _3302) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3277, _3278), _425).xy, _3204)) + ((_3304 * _3302) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3281, _3278), _425).xy, _3204))) + ((_3306 * _3302) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3284, _3278), _425).xy, _3204))) + ((_3301 * _3308) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3277, _3287), _425).xy, _3204))) + ((_3304 * _3308) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3281, _3287), _425).xy, _3204))) + ((_3306 * _3308) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3284, _3287), _425).xy, _3204))) + ((_3301 * _3312) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3277, _3294), _425).xy, _3204));
                                    float2 _3391 = min(_3191, 1.0f.xx - _3191);
                                    _3408 = _3162 ? lerp(1.0f, (any(bool3(_3200.x || _3201.x, _3200.y || _3201.y, _3200.z || _3201.z)) || ((asuint(_3204) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3370 + ((_3304 * _3312) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3281, _3294), _425).xy, _3204))) + ((_3306 * _3312) * _40.SampleCmpLevelZero(_28, float3(_3276 + float2(_3284, _3294), _425).xy, _3204))), _3112 ? min(_39_m11[_3161].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_39_m11[_3161].z - _3187) * 0.25f, min(_3391.x, _3391.y)))) : _39_m11[_3161].w) : 1.0f;
                                }
                                else
                                {
                                    _3408 = clamp(dot(_595, _2947) + 1.0f, 0.0f, 1.0f);
                                }
                                _3409 = _3408;
                            }
                            else
                            {
                                _3409 = 1.0f;
                            }
                            float _3489;
                            float3 _3490;
                            float _3491;
                            float3 _3492;
                            float3 _3493;
                            float _3494;
                            float _3495;
                            [branch]
                            if (_2856 == 0u)
                            {
                                float3 _3415 = _37_m6[_2743].xyz * _3085;
                                float3 _3428 = _2445.xyz;
                                _3489 = _3085;
                                _3490 = (_37_m6[_2743].xyz * ((1.0f - _37_m6[_2755].y) + ((1.0f / max(1.0f, max(max(_3415.x, _3415.y), _3415.z) * lerp(0.75f, 0.5f, _2603))) * _37_m6[_2755].y))) * lerp(0.25f * _37_m6[_2755].x, 1.0f, clamp(_3105 + 0.5f, 0.0f, 1.0f));
                                _3491 = _3106;
                                _3492 = _3428;
                                _3493 = _3428;
                                _3494 = 1.0f;
                                _3495 = 0.0f;
                            }
                            else
                            {
                                float _3483;
                                float _3484;
                                float3 _3485;
                                float3 _3486;
                                float _3487;
                                float _3488;
                                if (_2856 == 3u)
                                {
                                    _3483 = _3085 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _37_m6[_2755].x), lerp(0.89999997615814208984375f, 0.5f, _37_m6[_2755].x), _2569) * _3409);
                                    _3484 = clamp(dot(_2066, -normalize(cross(_628, cross(_628, _2947)))), 0.0f, 1.0f);
                                    _3485 = lerp(0.5f.xxx, _2230, _37_m6[_2755].y.xxx);
                                    _3486 = 0.0f.xxx;
                                    _3487 = 1.0f;
                                    _3488 = 0.0f;
                                }
                                else
                                {
                                    bool _3453 = _2856 == 1u;
                                    float _3477;
                                    float3 _3478;
                                    float _3479;
                                    float _3480;
                                    if (_3453)
                                    {
                                        _3477 = clamp(clamp(_3105 + _37_m6[_2755].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3409;
                                        _3478 = _2234 * _37_m6[_2755].y;
                                        _3479 = 1.0f;
                                        _3480 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3463 = _2856 == 2u;
                                        float _3475;
                                        if (_3463)
                                        {
                                            _3475 = smoothstep(_37_m6[_2755].x + 0.0500000007450580596923828125f, _37_m6[_2755].x - 0.0500000007450580596923828125f, _2067) * ((1.0f - _37_m6[_2755].z) + (step(0.5f, _2070) * _37_m6[_2755].z));
                                        }
                                        else
                                        {
                                            _3475 = 1.0f;
                                        }
                                        _3477 = _3106;
                                        _3478 = 0.0f.xxx;
                                        _3479 = _3475;
                                        _3480 = _3463 ? _37_m6[_2755].y : 0.0f;
                                    }
                                    bool3 _3481 = _3453.xxx;
                                    _3483 = _3085;
                                    _3484 = _3477;
                                    _3485 = float3(_3481.x ? _2230.x : 0.0f.xxx.x, _3481.y ? _2230.y : 0.0f.xxx.y, _3481.z ? _2230.z : 0.0f.xxx.z);
                                    _3486 = _3478;
                                    _3487 = _3479;
                                    _3488 = _3480;
                                }
                                _3489 = _3483;
                                _3490 = _37_m6[_2743].xyz;
                                _3491 = _3484;
                                _3492 = _3485;
                                _3493 = _3486;
                                _3494 = _3487;
                                _3495 = _3488;
                            }
                            float3 _3523;
                            [branch]
                            if (_2856 != 3u)
                            {
                                float _3500 = lerp(_2236, 0.00999999977648258209228515625f, _3495);
                                float _3503 = dot(_1890, normalize(_2947 + _464));
                                float _3504 = _3500 * _3500;
                                float _3508 = (((_3503 * _3504) - _3503) * _3503) + 1.0f;
                                float _3509 = _3508 * _3508;
                                _3523 = ((_2504 * clamp((((_3504 != _3509) ? (_3504 / _3509) : 1.0f) * (0.5f / ((_2481 + (_3500 * _2483)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3494) * _37_m6[_2764].z;
                            }
                            else
                            {
                                _3523 = 0.0f.xxx;
                            }
                            float3 _3526 = _3490 * _3489;
                            _3533 = _2707 + (((_3526 * lerp(_3493, _3492, _3491.xxx)) * _2519) + ((_3526 * _3523) * _3491));
                        }
                        else
                        {
                            _3533 = _2707;
                        }
                        _3534 = _3533;
                        break;
                    } while(false);
                    _3535 = _3534;
                    break;
                } while(false);
                _3536 = _3535;
            }
            else
            {
                _3536 = _2707;
            }
            _2730 = _3536;
        }
    }
    float3 _3576;
    [branch]
    if (_50_m12 > 0.5f)
    {
        _3576 = lerp(lerp(0.5f.xxx, lerp(dot(_2706, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2706, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_2567, 0.0f, 1.0f))) * _50_m17);
    }
    else
    {
        _3576 = _2706;
    }
    float4 _3583 = float4(_3576 * _20_m20.y, _517);
    _3583.w = (_50_m8 == 1.0f) ? _517 : 1.0f;
    float4 _3970;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float _3607 = _660 * _20_m46.w;
        float _3612 = max(0.00999999977648258209228515625f, _3607 + _20_m47.w);
        float3 _3626 = exp(_20_m45.xyz * ((-max(0.0f, (_465 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3612)) / _3612) * exp(_3607 + _20_m48.w))));
        float _3629 = dot(_2659, _20_m44.xyz);
        float _3635 = _20_m45.w * _20_m45.w;
        float _3639 = (1.0f + _3635) - ((2.0f * _20_m45.w) * _3629);
        float3 _3962;
        float _3963;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3684 = (uint3(int3(_2310, _2311, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3685 = _3684.y;
            uint _3686 = _3684.z;
            uint _3689 = _3684.x + (_3685 * _3686);
            uint _3691 = _3685 + (_3686 * _3689);
            uint _3693 = _3686 + (_3689 * _3691);
            uint _3695 = _3689 + (_3691 * _3693);
            float _3720 = dot(_2659, -_18_m0[2].xyz);
            float3 _3727 = _588 - _18_m11.xyz;
            float _3729 = (_20_m55.w * ((_3720 > 5.9604644775390625e-08f) ? (1.0f / _3720) : 0.0f)) * (1.0f / _465);
            float _3730 = _3727.y;
            float _3731 = _3729 * _3730;
            float _3733 = _18_m11.y + _3731;
            float _3734 = _3730 - _3731;
            float _3736 = (1.0f - _3729) * _465;
            float _3750 = max(-127.0f, _20_m49.z * _3734);
            float _3774 = max(-127.0f, _20_m52.x * _3734);
            float _3785 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3733 - _20_m49.x)))) * ((abs(_3750) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3750)) / _3750) : (0.693147182464599609375f - (0.2402265071868896484375f * _3750)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3733 - _20_m52.z)))) * ((abs(_3774) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3774)) / _3774) : (0.693147182464599609375f - (0.2402265071868896484375f * _3774))));
            float _3807 = clamp((_465 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3810 = clamp((max(clamp(exp2(-(_3785 * _3736)), 0.0f, 1.0f), _20_m51.w) + clamp((_465 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3807, 0.0f, 1.0f);
            float4 _3850 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _70.SampleLevel(_26, float3((_2681 + ((((float3(uint3(_3695, _3691 + (_3693 * _3695), _429) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_445 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_445 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3962 = _3850.xyz + (((_20_m51.xyz * (1.0f - _3810)) + (((_20_m54.xyz * pow(clamp(dot(_464, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3785 * max(_3736 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3807))) * _3850.w);
            _3963 = _3850.w * _3810;
        }
        else
        {
            float3 _3856 = _588 - _18_m11.xyz;
            float _3858 = _3856.y;
            float _3872 = max(-127.0f, _20_m49.z * _3858);
            float _3896 = max(-127.0f, _20_m52.x * _3858);
            float _3907 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3872) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3872)) / _3872) : (0.693147182464599609375f - (0.2402265071868896484375f * _3872)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3896) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3896)) / _3896) : (0.693147182464599609375f - (0.2402265071868896484375f * _3896))));
            float _3929 = clamp((_465 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3932 = clamp((max(clamp(exp2(-(_3907 * _465)), 0.0f, 1.0f), _20_m51.w) + clamp((_465 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3929, 0.0f, 1.0f);
            _3962 = (_20_m51.xyz * (1.0f - _3932)) + (((_20_m54.xyz * pow(clamp(dot(_464, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3907 * max(_465 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3929));
            _3963 = _3932;
        }
        float3 _3968 = (_3583.xyz * (_3626 * _3963)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3629 * _3629)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3635) / max((12.56637096405029296875f * _3639) * sqrt(_3639), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3626)) * _3963) + _3962);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3968 = (_3968 * 0.65f) + (_3583.xyz * 0.35f);

        }
        _3970 = float4(_3968.x, _3968.y, _3968.z, _3583.w);
    }
    else
    {
        _3970 = _3583;
    }
    _15 = _3970;
    _16 = _2275;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    _11 = stage_input._11;
    _13 = stage_input._13;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._15 = _15;
    stage_output._16 = _16;
    return stage_output;
}
