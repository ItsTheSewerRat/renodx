// DX11 0x8D5C466E -> Vulkan 0x0C989673
struct _21
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

static float3 _426;
static float _427 = 0.0f;
static float3 _428 = 0.0f;
static float _430 = 0.0f;
static uint _431 = 0u;

static const int2 _382[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _383[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

[[vk::binding(12, 0)]]
cbuffer _16_17 : register(b12)
{
    column_major float4x4 _17_m0 : packoffset(c0);
    column_major float4x4 _17_m1 : packoffset(c4);
    column_major float4x4 _17_m2 : packoffset(c8);
    column_major float4x4 _17_m3 : packoffset(c12);
    column_major float4x4 _17_m4 : packoffset(c16);
    column_major float4x4 _17_m5 : packoffset(c20);
    column_major float4x4 _17_m6 : packoffset(c24);
    column_major float4x4 _17_m7 : packoffset(c28);
    column_major float4x4 _17_m8 : packoffset(c32);
    column_major float4x4 _17_m9 : packoffset(c36);
    column_major float4x4 _17_m10 : packoffset(c40);
    float4 _17_m11 : packoffset(c44);
    column_major float4x4 _17_m12 : packoffset(c45);
    column_major float4x4 _17_m13 : packoffset(c49);
    column_major float4x4 _17_m14 : packoffset(c53);
    column_major float4x4 _17_m15 : packoffset(c57);
    column_major float4x4 _17_m16 : packoffset(c61);
    column_major float4x4 _17_m17 : packoffset(c65);
    column_major float4x4 _17_m18 : packoffset(c69);
    column_major float4x4 _17_m19 : packoffset(c73);
    column_major float4x4 _17_m20 : packoffset(c77);
    float4 _17_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _18_19 : register(b16)
{
    float4 _19_m0 : packoffset(c0);
    float4 _19_m1 : packoffset(c1);
    float4 _19_m2 : packoffset(c2);
    float4 _19_m3 : packoffset(c3);
    float4 _19_m4 : packoffset(c4);
    float4 _19_m5 : packoffset(c5);
    float4 _19_m6[6] : packoffset(c6);
    float4 _19_m7[6] : packoffset(c12);
    float4 _19_m8 : packoffset(c18);
    float4 _19_m9 : packoffset(c19);
    float4 _19_m10 : packoffset(c20);
    float4 _19_m11 : packoffset(c21);
    float4 _19_m12 : packoffset(c22);
    float4 _19_m13 : packoffset(c23);
    float4 _19_m14 : packoffset(c24);
    float4 _19_m15 : packoffset(c25);
    float _19_m16 : packoffset(c26);
    float _19_m17 : packoffset(c26.y);
    float _19_m18 : packoffset(c26.z);
    uint _19_m19 : packoffset(c26.w);
    float4 _19_m20 : packoffset(c27);
    int4 _19_m21 : packoffset(c28);
    float4 _19_m22 : packoffset(c29);
    float4 _19_m23 : packoffset(c30);
    float4 _19_m24 : packoffset(c31);
    float4 _19_m25 : packoffset(c32);
    float4 _19_m26 : packoffset(c33);
    float4 _19_m27 : packoffset(c34);
    float4 _19_m28 : packoffset(c35);
    float4 _19_m29 : packoffset(c36);
    float4 _19_m30 : packoffset(c37);
    float4 _19_m31 : packoffset(c38);
    float4 _19_m32[4] : packoffset(c39);
    float4 _19_m33[4] : packoffset(c43);
    float4 _19_m34[4] : packoffset(c47);
    float4 _19_m35[4] : packoffset(c51);
    float4 _19_m36 : packoffset(c55);
    float4 _19_m37 : packoffset(c56);
    float4 _19_m38[4] : packoffset(c57);
    float4 _19_m39[4] : packoffset(c61);
    float4 _19_m40[4] : packoffset(c65);
    float4 _19_m41 : packoffset(c69);
    float4 _19_m42 : packoffset(c70);
    float4 _19_m43 : packoffset(c71);
    float4 _19_m44 : packoffset(c72);
    float4 _19_m45 : packoffset(c73);
    float4 _19_m46 : packoffset(c74);
    float4 _19_m47 : packoffset(c75);
    float4 _19_m48 : packoffset(c76);
    float4 _19_m49 : packoffset(c77);
    float4 _19_m50 : packoffset(c78);
    float4 _19_m51 : packoffset(c79);
    float4 _19_m52 : packoffset(c80);
    float4 _19_m53 : packoffset(c81);
    float4 _19_m54 : packoffset(c82);
    float4 _19_m55 : packoffset(c83);
    float4 _19_m56 : packoffset(c84);
    float4 _19_m57 : packoffset(c85);
    float4 _19_m58 : packoffset(c86);
    float4 _19_m59 : packoffset(c87);
    float4 _19_m60 : packoffset(c88);
    float4 _19_m61 : packoffset(c89);
    float4 _19_m62 : packoffset(c90);
    float4 _19_m63 : packoffset(c91);
    float4 _19_m64 : packoffset(c92);
    float4 _19_m65 : packoffset(c93);
    float4 _19_m66 : packoffset(c94);
    float4 _19_m67 : packoffset(c95);
    float4 _19_m68 : packoffset(c96);
    float4 _19_m69 : packoffset(c97);
    float4 _19_m70 : packoffset(c98);
    float4 _19_m71 : packoffset(c99);
    float4 _19_m72 : packoffset(c100);
    float4 _19_m73 : packoffset(c101);
    float4 _19_m74 : packoffset(c102);
    float4 _19_m75 : packoffset(c103);
    float4 _19_m76 : packoffset(c104);
    float4 _19_m77 : packoffset(c105);
    float4 _19_m78 : packoffset(c106);
    float4 _19_m79 : packoffset(c107);
    float4 _19_m80 : packoffset(c108);
    float4 _19_m81 : packoffset(c109);
    float4 _19_m82 : packoffset(c110);
    float4 _19_m83 : packoffset(c111);
    float4 _19_m84 : packoffset(c112);
    float4 _19_m85 : packoffset(c113);
    float4 _19_m86 : packoffset(c114);
    float4 _19_m87 : packoffset(c115);
    float4 _19_m88 : packoffset(c116);
    float4 _19_m89 : packoffset(c117);
    float4 _19_m90 : packoffset(c118);
    float4 _19_m91 : packoffset(c119);
    float4 _19_m92 : packoffset(c120);
    float4 _19_m93 : packoffset(c121);
    float4 _19_m94 : packoffset(c122);
    float4 _19_m95 : packoffset(c123);
    float4 _19_m96 : packoffset(c124);
    float4 _19_m97 : packoffset(c125);
    float4 _19_m98 : packoffset(c126);
    float4 _19_m99[2] : packoffset(c127);
    float4 _19_m100[2] : packoffset(c129);
    float _19_m101 : packoffset(c131);
    float _19_m102 : packoffset(c131.y);
    float _19_m103 : packoffset(c131.z);
    float _19_m104 : packoffset(c131.w);
    float4 _19_m105 : packoffset(c132);
    float4 _19_m106 : packoffset(c133);
    float4 _19_m107 : packoffset(c134);
    float4 _19_m108 : packoffset(c135);
    float4 _19_m109 : packoffset(c136);
    float4 _19_m110 : packoffset(c137);
    float4 _19_m111 : packoffset(c138);
    float4 _19_m112 : packoffset(c139);
    float4 _19_m113 : packoffset(c140);
    float4 _19_m114 : packoffset(c141);
    float4 _19_m115 : packoffset(c142);
    float4 _19_m116 : packoffset(c143);
    float4 _19_m117 : packoffset(c144);
    float4 _19_m118 : packoffset(c145);
    float4 _19_m119 : packoffset(c146);
    float4 _19_m120 : packoffset(c147);
    float4 _19_m121 : packoffset(c148);
    float4 _19_m122 : packoffset(c149);
    float4 _19_m123 : packoffset(c150);
    float4 _19_m124 : packoffset(c151);
    float4 _19_m125 : packoffset(c152);
    float4 _19_m126 : packoffset(c153);
    float4 _19_m127 : packoffset(c154);
    float4 _19_m128 : packoffset(c155);
    float4 _19_m129 : packoffset(c156);
    float4 _19_m130 : packoffset(c157);
    float4 _19_m131 : packoffset(c158);
    float4 _19_m132 : packoffset(c159);
    float4 _19_m133 : packoffset(c160);
    float4 _19_m134 : packoffset(c161);
    column_major float4x4 _19_m135 : packoffset(c162);
    float4 _19_m136 : packoffset(c166);
    float4 _19_m137 : packoffset(c167);
    float4 _19_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _20_22 : register(b0)
{
    _21 _22_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _32 : register(t50);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _34 : register(t18);

uint4 _34_Load4(uint byte_offset)
{
    return asuint(_34[byte_offset >> 4u]);
}
[[vk::binding(47, 0)]]
cbuffer _35_36 : register(b47)
{
    int _36_m0 : packoffset(c0);
    int _36_m1 : packoffset(c0.y);
    int _36_m2 : packoffset(c0.z);
    int _36_m3 : packoffset(c0.w);
    float _36_m4 : packoffset(c1);
    float _36_m5 : packoffset(c1.y);
    float _36_m6 : packoffset(c1.z);
    float _36_m7 : packoffset(c1.w);
    float _36_m8 : packoffset(c2);
    float _36_m9 : packoffset(c2.y);
    float _36_m10 : packoffset(c2.z);
    float _36_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _37_38 : register(b14)
{
    float4 _38_m0 : packoffset(c0);
    float4 _38_m1 : packoffset(c1);
    float4 _38_m2 : packoffset(c2);
    float4 _38_m3 : packoffset(c3);
    float4 _38_m4 : packoffset(c4);
    uint4 _38_m5 : packoffset(c5);
    float4 _38_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _39_40 : register(b15)
{
    column_major float4x4 _40_m0[5] : packoffset(c0);
    float4 _40_m1[4] : packoffset(c20);
    float4 _40_m2[4] : packoffset(c24);
    float4 _40_m3[4] : packoffset(c28);
    float4 _40_m4 : packoffset(c32);
    float4 _40_m5 : packoffset(c33);
    float4 _40_m6 : packoffset(c34);
    float4 _40_m7 : packoffset(c35);
    float4 _40_m8 : packoffset(c36);
    float4 _40_m9[27] : packoffset(c37);
    column_major float4x4 _40_m10[56] : packoffset(c64);
    float4 _40_m11[56] : packoffset(c288);
    float4 _40_m12[56] : packoffset(c344);
    float4 _40_m13 : packoffset(c400);
    float4 _40_m14[47] : packoffset(c401);
    column_major float4x4 _40_m15[15] : packoffset(c448);
    float4 _40_m16[15] : packoffset(c508);
    float4 _40_m17[15] : packoffset(c523);
    float4 _40_m18[15] : packoffset(c538);
    float4 _40_m19 : packoffset(c553);
    float4 _40_m20 : packoffset(c554);
    float4 _40_m21[21] : packoffset(c555);
    column_major float4x4 _40_m22 : packoffset(c576);
    column_major float4x4 _40_m23 : packoffset(c580);
    float4 _40_m24 : packoffset(c584);
    float4 _40_m25 : packoffset(c585);
    float4 _40_m26 : packoffset(c586);
    float4 _40_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _52_53 : register(b0)
{
    float _53_m0 : packoffset(c0);
    float _53_m1 : packoffset(c0.y);
    float _53_m2 : packoffset(c0.z);
    float _53_m3 : packoffset(c0.w);
    float _53_m4 : packoffset(c1);
    float _53_m5 : packoffset(c1.y);
    float _53_m6 : packoffset(c1.z);
    float _53_m7 : packoffset(c1.w);
    float _53_m8 : packoffset(c2);
    float _53_m9 : packoffset(c2.y);
    float _53_m10 : packoffset(c2.z);
    float _53_m11 : packoffset(c2.w);
    float _53_m12 : packoffset(c3);
    float _53_m13 : packoffset(c3.y);
    float _53_m14 : packoffset(c3.z);
    float _53_m15 : packoffset(c3.w);
    float _53_m16 : packoffset(c4);
    float _53_m17 : packoffset(c4.y);
    float _53_m18 : packoffset(c4.z);
    float _53_m19 : packoffset(c4.w);
    float _53_m20 : packoffset(c5);
    float _53_m21 : packoffset(c5.y);
    float _53_m22 : packoffset(c5.z);
    float _53_m23 : packoffset(c5.w);
    float4 _53_m24 : packoffset(c6);
    float4 _53_m25 : packoffset(c7);
    float4 _53_m26 : packoffset(c8);
    float4 _53_m27 : packoffset(c9);
    float4 _53_m28 : packoffset(c10);
    float4 _53_m29 : packoffset(c11);
    float _53_m30 : packoffset(c12);
    float _53_m31 : packoffset(c12.y);
    float _53_m32 : packoffset(c12.z);
    float _53_m33 : packoffset(c12.w);
    float _53_m34 : packoffset(c13);
    float _53_m35 : packoffset(c13.y);
    float _53_m36 : packoffset(c13.z);
    float _53_m37 : packoffset(c13.w);
    float4 _53_m38 : packoffset(c14);
    float4 _53_m39 : packoffset(c15);
    float _53_m40 : packoffset(c16);
    float _53_m41 : packoffset(c16.y);
    float _53_m42 : packoffset(c16.z);
    float _53_m43 : packoffset(c16.w);
    float _53_m44 : packoffset(c17);
    float _53_m45 : packoffset(c17.y);
    float _53_m46 : packoffset(c17.z);
    float _53_m47 : packoffset(c17.w);
    float _53_m48 : packoffset(c18);
    float _53_m49 : packoffset(c18.y);
    float _53_m50 : packoffset(c18.z);
    float _53_m51 : packoffset(c18.w);
    float4 _53_m52 : packoffset(c19);
    float4 _53_m53 : packoffset(c20);
    float4 _53_m54 : packoffset(c21);
    float4 _53_m55 : packoffset(c22);
    float4 _53_m56 : packoffset(c23);
    float4 _53_m57 : packoffset(c24);
    float2 _53_m58 : packoffset(c25);
    float2 _53_m59 : packoffset(c25.z);
    float _53_m60 : packoffset(c26);
    float _53_m61 : packoffset(c26.y);
    float _53_m62 : packoffset(c26.z);
    float _53_m63 : packoffset(c26.w);
    float4 _53_m64 : packoffset(c27);
    float4 _53_m65 : packoffset(c28);
    float4 _53_m66 : packoffset(c29);
    float4 _53_m67 : packoffset(c30);
    float _53_m68 : packoffset(c31);
    float _53_m69 : packoffset(c31.y);
    float _53_m70 : packoffset(c31.z);
    float _53_m71 : packoffset(c31.w);
    float _53_m72 : packoffset(c32);
    float _53_m73 : packoffset(c32.y);
    float _53_m74 : packoffset(c32.z);
    float _53_m75 : packoffset(c32.w);
};

[[vk::binding(49, 0)]]
cbuffer _67_68 : register(b49)
{
    float4 _68_m0[32] : packoffset(c0);
    column_major float4x4 _68_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _24 : register(s3);
[[vk::binding(2, 0)]] SamplerState _25 : register(s2);
[[vk::binding(6, 0)]] SamplerState _26 : register(s6);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _28 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _30 : register(t45);
[[vk::binding(9, 0)]] Texture2D<float4> _41 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _42 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _43 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _44 : register(t11);
[[vk::binding(34, 0)]] Texture3D<float4> _46 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _47 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _48 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _49 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _50 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _51 : register(t29);
[[vk::binding(38, 0)]] Texture2D<float4> _54 : register(t38);
[[vk::binding(36, 0)]] Texture2D<float4> _55 : register(t36);
[[vk::binding(8, 1)]] Texture2D<float4> _56 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _57 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _58 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _59 : register(t5);
[[vk::binding(44, 0)]] TextureCube<float4> _61 : register(t44);
[[vk::binding(2, 1)]] Texture2D<float4> _62 : register(t2);
[[vk::binding(3, 1)]] Texture2D<float4> _63 : register(t3);
[[vk::binding(6, 1)]] Texture2D<float4> _64 : register(t6);
[[vk::binding(1, 1)]] SamplerState _65 : register(s1);
[[vk::binding(28, 0)]] Texture2D<float4> _66 : register(t28);
[[vk::binding(35, 0)]] Texture3D<float4> _71 : register(t35);

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
static uint _12;
static float4 _14;
static float4 _15;

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
    [[vk::location(8)]] nointerpolation uint _12 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 _14 : SV_Target0;
    float4 _15 : SV_Target1;
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
    float3 _460 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _461 = dot(_460, _460);
    float _463 = rsqrt(max(_461, 9.9999999392252902907785028219223e-09f));
    float3 _464 = _460 * _463;
    float _465 = _461 * _463;
    uint _468 = asuint(_22_m0[_12]._m2.x);
    bool _473 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _486;
    float4 _487;
    if (_473)
    {
        _486 = asfloat(_34_Load4((_468 + 2u) * 16 + 0));
        _487 = asfloat(_34_Load4(_468 * 16 + 0));
    }
    else
    {
        _486 = _22_m0[_12]._m0[2];
        _487 = _22_m0[_12]._m0[0];
    }
    float4 _499 = _56.SampleBias(_27, _3 + (_53_m58 * _19_m75.w), _19_m16);
    float3 _504 = _499.xyz * _53_m24.xyz;
    float4 _508 = _57.SampleBias(_27, _3, _19_m16);
    float _509 = _508.x;
    float _511 = _508.z;
    float _513 = 1.0f - _508.w;
    float3 _522 = _504 * _53_m18;
    float3 _526 = lerp(dot(_522, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _522, _53_m19.xxx);
    float4 _530 = _58.SampleBias(_27, _3, _19_m16);
    _530.w = _530.w * _530.x;
    float2 _539 = (_530.wy * 2.0f) - 1.0f.xx;
    float3 _540 = float3(_539.x, _539.y, _428.z);
    float2 _541 = _539.xy;
    _540.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_541, _541), 0.0f, 1.0f)));
    float2 _549 = _540.xy * _53_m3;
    float4 _558 = _59.SampleBias(_27, _3 + (_53_m59 * _19_m75.w), _19_m16);
    float3 _588 = _4 + _17_m11.xyz;
    float3 _592 = _588 - float3(_487.w, _430, _486.w);
    _592.y = 6.103515625e-05f;
    float3 _595 = normalize(_592);
    float3 _603 = _5 * 1.0f;
    float3 _605 = mul(float3(_549.x, _549.y, _540.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _603));
    float _614 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _53_m5));
    float3 _615 = (_605 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_605, _605)))) * _614;
    float3 _616 = normalize(_5) * _614;
    uint2 _622 = uint2(gl_FragCoord.xy);
    float3 _632 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float4 _646 = float4(_430, _430, _430, float((asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x) >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _647 = _646.w;
    float _655 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1149;
    float3 _1150;
    float3 _1151;
    float _1152;
    if (_19_m80.y < 0.5f)
    {
        float3 _673 = _588 - (_19_m105.xyz + (_632 * (-_19_m107.w)));
        float _687 = max(clamp((max(abs(_673.x), abs(_673.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_673.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _989;
        float4 _990;
        float4 _991;
        float _992;
        float _993;
        if ((_19_m105.w != 0.0f) && (_687 < 1.0f))
        {
            float3 _700 = _588 - (_19_m105.xyz + (_632 * (-_19_m107.y)));
            float _714 = max(clamp((max(abs(_700.x), abs(_700.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_700.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _790;
            float4 _791;
            float4 _792;
            float4 _793;
            if (_714 < 1.0f)
            {
                float3 _723 = ((_588 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _725 = _723 - floor(_723);
                float4 _729 = _46.SampleLevel(_27, _725, 0.0f);
                float _730 = 1.0f - _714;
                float _734 = _19_m106.y * 0.5f;
                float _739 = _725.x;
                float _740 = clamp(_725.y, _734, 1.0f - _734) * 0.3333333432674407958984375f;
                float _741 = _725.z;
                float4 _744 = _47.SampleLevel(_26, float3(_739, _740, _741), 0.0f);
                float _760 = _729.x;
                float _770 = _729.y;
                float _780 = _729.z;
                _790 = _687 + (_744.w * _730);
                _791 = float4(((_47.SampleLevel(_26, float3(_739, _740 + 0.666666686534881591796875f, _741), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _780, _780) * _730;
                _792 = float4(((_47.SampleLevel(_26, float3(_739, _740 + 0.3333333432674407958984375f, _741), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _770, _770) * _730;
                _793 = float4(((_744.xyz * 4.0f) - 2.0f.xxx) * _760, _760) * _730;
            }
            else
            {
                _790 = _687;
                _791 = 0.0f.xxxx;
                _792 = 0.0f.xxxx;
                _793 = 0.0f.xxxx;
            }
            float3 _799 = _588 - (_19_m105.xyz + (_632 * (-_19_m107.z)));
            float _813 = max(clamp((max(abs(_799.x), abs(_799.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_799.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _893;
            float4 _894;
            float4 _895;
            float4 _896;
            if (_813 < 1.0f)
            {
                float3 _822 = ((_588 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _824 = _822 - floor(_822);
                float4 _828 = _48.SampleLevel(_27, _824, 0.0f);
                float _830 = _714 * (1.0f - _813);
                float _834 = _19_m106.y * 0.5f;
                float _839 = _824.x;
                float _840 = clamp(_824.y, _834, 1.0f - _834) * 0.3333333432674407958984375f;
                float _841 = _824.z;
                float4 _844 = _49.SampleLevel(_26, float3(_839, _840, _841), 0.0f);
                float _860 = _828.x;
                float _871 = _828.y;
                float _882 = _828.z;
                _893 = _790 + (_844.w * _830);
                _894 = _791 + (float4(((_49.SampleLevel(_26, float3(_839, _840 + 0.666666686534881591796875f, _841), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _882, _882) * _830);
                _895 = _792 + (float4(((_49.SampleLevel(_26, float3(_839, _840 + 0.3333333432674407958984375f, _841), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _871, _871) * _830);
                _896 = _793 + (float4(((_844.xyz * 4.0f) - 2.0f.xxx) * _860, _860) * _830);
            }
            else
            {
                _893 = _790;
                _894 = _791;
                _895 = _792;
                _896 = _793;
            }
            float4 _979;
            float4 _980;
            float4 _981;
            float _982;
            if (_813 > 0.0f)
            {
                float3 _905 = ((_588 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _908 = _19_m106.xyz * 0.5f;
                float3 _910 = clamp(_905 - floor(_905), _908, 1.0f.xxx - _908);
                float4 _914 = _50.SampleLevel(_27, _910, 0.0f);
                float _916 = _813 * (1.0f - _687);
                float _920 = _19_m106.y * 0.5f;
                float _925 = _910.x;
                float _926 = clamp(_910.y, _920, 1.0f - _920) * 0.3333333432674407958984375f;
                float _927 = _910.z;
                float4 _930 = _51.SampleLevel(_26, float3(_925, _926, _927), 0.0f);
                float _946 = _914.x;
                float _957 = _914.y;
                float _968 = _914.z;
                _979 = _894 + (float4(((_51.SampleLevel(_26, float3(_925, _926 + 0.666666686534881591796875f, _927), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _968, _968) * _916);
                _980 = _895 + (float4(((_51.SampleLevel(_26, float3(_925, _926 + 0.3333333432674407958984375f, _927), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _957, _957) * _916);
                _981 = _896 + (float4(((_930.xyz * 4.0f) - 2.0f.xxx) * _946, _946) * _916);
                _982 = _893 + (_930.w * _916);
            }
            else
            {
                _979 = _894;
                _980 = _895;
                _981 = _896;
                _982 = _893;
            }
            float _985 = clamp((_982 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _989 = _979;
            _990 = _980;
            _991 = _981;
            _992 = _985 - _687;
            _993 = (_985 + _687) * 0.5f;
        }
        else
        {
            _989 = 0.0f.xxxx;
            _990 = 0.0f.xxxx;
            _991 = 0.0f.xxxx;
            _992 = 0.0f;
            _993 = 1.0f;
        }
        float4 _1013 = _991 + float4(_19_m108.x * _993, (_19_m108.y * _993) + ((_19_m108.w * _992) * 0.5f), _19_m108.z * _993, (_19_m108.w * _993) + ((_19_m108.y * _992) * 0.375f));
        float4 _1033 = _990 + float4(_19_m109.x * _993, (_19_m109.y * _993) + ((_19_m109.w * _992) * 0.5f), _19_m109.z * _993, (_19_m109.w * _993) + ((_19_m109.y * _992) * 0.375f));
        float4 _1053 = _989 + float4(_19_m110.x * _993, (_19_m110.y * _993) + ((_19_m110.w * _992) * 0.5f), _19_m110.z * _993, (_19_m110.w * _993) + ((_19_m110.y * _992) * 0.375f));
        float4 _1057 = float4(_615, 1.0f);
        float3 _1063 = max(float3(dot(_1013, _1057), dot(_1033, _1057), dot(_1053, _1057)), 0.0f.xxx) * _655;
        float3 _1071 = ((_1013.xyz * 0.2125999927520751953125f) + (_1033.xyz * 0.715200006961822509765625f)) + (_1053.xyz * 0.072200000286102294921875f);
        float3 _1075 = _1071 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1071, _1071)));
        float _1077 = abs(_1075.y);
        float3 _1078 = _1075;
        _1078.y = _1077;
        float4 _1079 = float4(_1078.x, _1078.y, _1078.z, 0.0f.xxxx.w);
        _1079.w = 1.0f;
        float4 _1083 = float4(_1075.x, _1077, _1075.z, 1.0f);
        float3 _1088 = max(float3(dot(_1013, _1083), dot(_1033, _1083), dot(_1053, _1083)), 0.0f.xxx);
        float _1096 = _1063.z;
        float _1097 = _1063.y;
        float4 _1102 = lerp(float4(_1096, _1097, -1.0f, 0.666666686534881591796875f), float4(_1097, _1096, 0.0f, -0.3333333432674407958984375f), step(_1096, _1097).xxxx);
        float _1103 = _1063.x;
        float _1104 = _1102.x;
        float4 _1112 = lerp(float4(_1104, _1102.yw, _1103), float4(_1103, _1102.yz, _1104), step(_1104, _1103).xxxx);
        float _1113 = _1112.x;
        float _1114 = _1112.w;
        float _1115 = _1112.y;
        float _1117 = _1113 - min(_1114, _1115);
        float _1127 = frac(abs(_1112.z + ((_1114 - _1115) / ((6.0f * _1117) + 9.9999997473787516355514526367188e-05f))));
        float _1134 = min(_1117 / (_1113 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1127 - 0.5f))) * clamp(_1113, 0.0f, 1.0f));
        float _1136 = 2.0f / (2.0f - _1134);
        _1149 = _1079;
        _1150 = _1063;
        _1151 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1127, _1134, _1136).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1134.xxx) * _1136;
        _1152 = max(max(max(_1088.x, _1088.y), _1088.z), 0.0f) * _655;
    }
    else
    {
        _1149 = 0.0f.xxxx;
        _1150 = 1.0f.xxx;
        _1151 = _19_m81.xyz;
        _1152 = _655;
    }
    float _1274;
    float _1275;
    float3 _1276;
    float3 _1277;
    float _1278;
    float3 _1279;
    [branch]
    if (_647 > 0.00999999977648258209228515625f)
    {
        float2 _1173 = _3 * _19_m89.z;
        float4 _1182 = _54.SampleBias(_27, _1173, _19_m16);
        float _1193 = smoothstep(2.0f - _647, 2.349999904632568359375f - _647, (((_473 ? _10.z : _10.y) * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1182.z) * ((_511 * _511) * float(gl_FrontFacing));
        float3 _1195 = _1193.xxx;
        float2 _1201 = (_1182.xy * 2.0f) - 1.0f.xx;
        float3 _1202 = float3(_1201.x, _1201.y, _428.z);
        float2 _1203 = _1201.xy;
        _1202.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1203, _1203), 0.0f, 1.0f)));
        float2 _1211 = _1202.xy * 2.0f;
        float3 _1213 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1211.x, _1211.y, _1202.z), _1195);
        float3 _1217 = _1213 * rsqrt(max(6.103515625e-05f, dot(_1213, _1213)));
        float _1218 = _615.y;
        float _1221 = step(0.00999999977648258209228515625f, 1.0f - (_1218 * _1218));
        float _1225 = lerp(_615.z, _1218, _1221);
        float3 _1232 = (float3(0.0f, _1221, 1.0f - _1221) - (_615 * _1225)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1225 * _1225)));
        float4 _1250 = _55.SampleLevel(_25, _1173 * 4.0f, 0.0f);
        float2 _1253 = (_1250.xz * 2.0f) - 1.0f.xx;
        float _1264 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1253.x, _1250.y, _1253.y), (floor(_464 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1265 = _1264 * _1264;
        float _1268 = _1265 * ((_1265 * 2.0f) * _1193);
        float3 _1269 = 1.0f.xxx * _1268;
        _1274 = _1268;
        _1275 = lerp(lerp(_513, 0.89999997615814208984375f, clamp(_1193 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1268);
        _1276 = lerp(_526 * 1.0f, 0.3079999983310699462890625f.xxx, _1195) + (_1269 * 0.5f);
        _1277 = lerp(_504 * 1.0f, 0.87999999523162841796875f.xxx, _1195) + _1269;
        _1278 = lerp(_509, 0.0f, _1193);
        _1279 = ((cross(_1232, _615) * _1217.x) + (_1232 * _1217.y)) + (_615 * _1217.z);
    }
    else
    {
        _1274 = 0.0f;
        _1275 = _513;
        _1276 = _526;
        _1277 = _504;
        _1278 = _509;
        _1279 = _615;
    }
    bool2 _1283 = (_53_m72 != 0.0f).xx;
    float _1336 = (_53_m73 * (_53_m74 - dot(_588, _53_m67.xyz))) + ((_64.SampleBias(_65, (lerp(float2(_1283.x ? _7.x : _3.x, _1283.y ? _7.y : _3.y), mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _588 - mul(_22_m0[_12]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _53_m68.xx) * _53_m64.xy) + _53_m64.zw, _19_m16).x - ((max(_53_m70, _22_m0[_12]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _53_m75);
    if ((clamp(_1336 * _53_m69, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f)
    {
        discard;
    }
    float _1365 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _1367 = abs(_1365);
    if (min(_22_m0[_12]._m1.x - ((_22_m0[_12]._m1.x >= 0.0f) ? _1367 : (-_1367)), (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) - _1365) < 0.0f)
    {
        discard;
    }
    float3 _1382 = _53_m55.xyz * _53_m46;
    float4 _1383 = float4(_1382.x, _1382.y, _1382.z, _53_m55.w);
    _1383.w = _53_m55.w * _53_m47;
    float2 _1428;
    if (_53_m45 > 1.5f)
    {
        float2 _1402 = ((float2(_622) / _19_m5.xy) * 2.0f) - 1.0f.xx;
        _1428 = float2(_1402.x, (_1402.y / _19_m5.x) * _19_m5.y) * lerp(1.0f, max(0.0f, (-dot(_17_m0[2u], float4(_22_m0[_12]._m0[0].w, _22_m0[_12]._m0[1].w, _22_m0[_12]._m0[2].w, 1.0f))) - _19_m3.y), _53_m51);
    }
    else
    {
        _1428 = lerp(_3, _7, _53_m45.xx);
    }
    float4 _1443 = _63.SampleBias(_27, ((_1428 + (_53_m52.zw * _19_m75.w)) * _53_m57.xy) + _53_m57.zw, _19_m16);
    float _1446 = _1443.x;
    float4 _1462 = _62.SampleBias(_27, (((_1428 + (_53_m50 * _1446).xx) + (_53_m52.xy * _19_m75.w)) * _53_m56.xy) + _53_m56.zw, _19_m16);
    float4 _1469 = _1383 * lerp(_1462, float4(1.0f, 1.0f, 1.0f, _1462.x), _53_m44.xxxx);
    float _1472 = _1469.w;
    float _1485 = _1446 - ((_53_m49 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _1487 = clamp(-_1485, 0.0f, 1.0f);
    bool3 _1501 = (_53_m48 < 0.5f).xxx;
    float _1515 = pow(clamp(dot(_464, float3(_1501.x ? _603.x : _1279.x, _1501.y ? _603.y : _1279.y, _1501.z ? _603.z : _1279.z).xyz) + _53_m40, 0.0f, 1.0f), _53_m42);
    float _1517 = lerp(1.0f - _1515, _1515, _53_m43);
    float2 _1537 = float2(_622);
    float2 _1542 = ((_1537 * _19_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _1545 = float4(_1542, _30.SampleBias(_24, gl_FragCoord.xy * _19_m0.zw, _19_m16).x, 1.0f);
    _1545.y = -_1542.y;
    float4 _1548 = mul(_17_m6, _1545);
    float _1571 = max(_499.w * _53_m24.w, clamp(1.0f - exp2((-_53_m31) * (abs(mul(_17_m0, float4(_1548.xyz / _1548.w.xxx, 1.0f)).z) - _445)), 0.0f, 1.0f) * _53_m30);
    float _1573 = 0.959999978542327880859375f - (_1278 * 0.959999978542327880859375f);
    float3 _1574 = _1277 * _1573;
    float3 _1577 = lerp(0.039999999105930328369140625f.xxx * _508.y, _1277, _1278.xxx);
    float3 _1578 = _1276 * _1573;
    float _1579 = _1275 * _1275;
    float _1580 = max(_1579, 0.0078125f);
    float2 _1593 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _1593.y = -_1593.y;
    float2 _1606 = ((sqrt(sqrt(abs(_1593 * 0.5f))) * float2(int2(sign(_1593)))) * 0.5f) + 0.5f.xx;
    float4 _1609 = float4(_1606.x, _1606.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1609.z = 1.0f;
    _1609.w = (_1274 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1622 = lerp(-_38_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1626 = normalize(float3(_1622.x, 6.103515625e-05f, _1622.z));
    float3 _1636 = lerp(_38_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _1640 = _1636 * lerp(_38_m3.w, 1.0f, _19_m91.w);
    float2 _2117;
    do
    {
        if (_40_m7.w >= 0.9900000095367431640625f)
        {
            _2117 = float2(_40_m7.z, 1.0f);
            break;
        }
        int _1654 = int(_40_m7.x);
        bool3 _1656 = (_1654 == 2).xxx;
        float3 _1661 = _588 - float3(_1656.x ? _40_m1[0].xyz.x : _17_m11.xyz.x, _1656.y ? _40_m1[0].xyz.y : _17_m11.xyz.y, _1656.z ? _40_m1[0].xyz.z : _17_m11.xyz.z);
        float _1672 = max(clamp((_40_m6.w - dot(_1661, _1661)) * _40_m6.z, 0.0f, 1.0f), _40_m8.x);
        float _1861;
        bool _1862;
        if (_1672 > 0.0f)
        {
            float _1859;
            bool _1860;
            if (_1654 > 0)
            {
                float3 _1679 = _588 - _40_m1[0].xyz;
                float3 _1683 = _588 - _40_m1[1].xyz;
                float3 _1687 = _588 - _40_m1[2].xyz;
                float3 _1691 = _588 - _40_m1[3].xyz;
                float4 _1696 = float4(dot(_1679, _1679), dot(_1683, _1683), dot(_1687, _1687), dot(_1691, _1691));
                float4 _1705 = float4(_40_m1[0].w, _40_m1[1].w, _40_m1[2].w, _40_m1[3].w);
                float4 _1707 = float4(bool4(_1696.x < _1705.x, _1696.y < _1705.y, _1696.z < _1705.z, _1696.w < _1705.w));
                float3 _1711 = clamp(_1707.yzw - _1707.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1718 = max(clamp(4.0f - dot(float4(_1707.x, _1711.x, _1711.y, _1711.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _40_m6.y);
                float4 _1726 = mul(_40_m0[uint(_1718)], float4(_588, 1.0f));
                float _1729 = _1726.z;
                float4 _1730 = float4(_1726.xy, _1729, _1718);
                float3 _1731 = _1730.xyz;
                bool3 _1732 = bool3(_1731.x <= 0.0f.xxx.x, _1731.y <= 0.0f.xxx.y, _1731.z <= 0.0f.xxx.z);
                bool3 _1733 = bool3(_1731.x >= 1.0f.xxx.x, _1731.y >= 1.0f.xxx.y, _1731.z >= 1.0f.xxx.z);
                bool _1739 = any(bool3(_1732.x || _1733.x, _1732.y || _1733.y, _1732.z || _1733.z)) || ((asuint(_1729) & 2147483647u) > 2139095040u);
                int _1740 = int(_1718);
                float2 _1757 = float4(_40_m3[_1740].xy + (_1730.xy * _40_m3[_1740].zw), _1729, _1718).xy * _40_m4.zw;
                float2 _1759 = floor(_1757 + 0.5f.xx);
                float2 _1760 = _1757 - _1759;
                float _1761 = _1760.x;
                float _1762 = _1761 + 0.5f;
                float _1764 = (_1762 * _1762) * 0.5f;
                float _1767 = min(_1761, 0.0f);
                float _1771 = max(_1761, 0.0f);
                float4 _1775 = float4(_1764 - _1761, (1.0f - _1761) - (_1767 * _1767), (_1761 + 1.0f) - (_1771 * _1771), _1764) * 0.44444000720977783203125f;
                float _1776 = _1760.y;
                float _1777 = _1776 + 0.5f;
                float _1779 = (_1777 * _1777) * 0.5f;
                float _1782 = min(_1776, 0.0f);
                float _1786 = max(_1776, 0.0f);
                float4 _1790 = float4(_1779 - _1776, (1.0f - _1776) - (_1782 * _1782), (_1776 + 1.0f) - (_1786 * _1786), _1779) * 0.44444000720977783203125f;
                float2 _1792 = _1775.yw;
                float2 _1793 = _1775.xz + _1792;
                float2 _1795 = _1790.yw;
                float2 _1796 = _1790.xz + _1795;
                float2 _1802 = ((_1792 / _1793) + float2(-1.5f, 0.5f)) * _40_m4.xx;
                float2 _1804 = ((_1795 / _1796) + float2(-1.5f, 0.5f)) * _40_m4.yy;
                float2 _1806 = _1759 * _40_m4.xy;
                float _1807 = _1802.x;
                float _1808 = _1804.x;
                float _1811 = _1802.y;
                float _1814 = _1804.y;
                float _1819 = _1793.x;
                float _1820 = _1796.x;
                float _1822 = _1793.y;
                float _1824 = _1796.y;
                _1859 = _1739 ? 1.0f : (((((_1819 * _1820) * _41.SampleCmpLevelZero(_28, float3(_1806 + float2(_1807, _1808), _427).xy, _1729)) + ((_1822 * _1820) * _41.SampleCmpLevelZero(_28, float3(_1806 + float2(_1811, _1808), _427).xy, _1729))) + ((_1819 * _1824) * _41.SampleCmpLevelZero(_28, float3(_1806 + float2(_1807, _1814), _427).xy, _1729))) + ((_1822 * _1824) * _41.SampleCmpLevelZero(_28, float3(_1806 + float2(_1811, _1814), _427).xy, _1729)));
                _1860 = _1739;
            }
            else
            {
                _1859 = 1.0f;
                _1860 = false;
            }
            _1861 = _1859;
            _1862 = _1860;
        }
        else
        {
            _1861 = 1.0f;
            _1862 = false;
        }
        float _2059;
        float _2060;
        if ((_1672 < 1.0f) || (_40_m8.x > 0.5f))
        {
            float _1870 = 1.0f - clamp(dot(_616, _38_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1887 = float4((_588 - (_38_m0.xyz * (_1870 * _40_m24.x))) + (_616 * (_1870 * _40_m24.y)), 1.0f);
            float4 _1888 = mul(_40_m23, _1887);
            float2 _1889 = _1888.xy;
            float _2057;
            if (all(bool2(_1889.x > 0.0f.xx.x, _1889.y > 0.0f.xx.y)) && all(bool2(_1889.x < 1.0f.xx.x, _1889.y < 1.0f.xx.y)))
            {
                uint _1908 = clamp(uint((floor(_1888.y * _40_m25.z) + _1888.x) * _40_m25.y), 0u, 127u);
                uint _1912 = asuint(_40_m27[_1908].x);
                float2 _1913 = spvUnpackHalf2x16(_1912);
                float _1914 = _1913.x;
                float _2056;
                if (_1914 >= 0.0f)
                {
                    float4x4 _1923 = _40_m22;
                    _1923[0].w = _40_m27[_1908].y;
                    _1923[1].w = _40_m27[_1908].z;
                    _1923[2].w = _40_m27[_1908].w;
                    float4 _1930 = mul(_1923, _1887);
                    float3 _1931 = _1930.xyz;
                    float _2055;
                    if (all(bool3(_1931.x > 0.0f.xxx.x, _1931.y > 0.0f.xxx.y, _1931.z > 0.0f.xxx.z)) && all(bool3(_1931.x < 1.0f.xxx.x, _1931.y < 1.0f.xxx.y, _1931.z < 1.0f.xxx.z)))
                    {
                        float2 _1943 = (_1930.xy * _40_m24.zw) + float2(_1914, spvUnpackHalf2x16(_1912 >> 16u).x);
                        float _1948 = _1930.z;
                        float2 _1954 = float4(_1943, _1948, 1.0f).xy * _40_m26.zw;
                        float2 _1956 = floor(_1954 + 0.5f.xx);
                        float2 _1957 = _1954 - _1956;
                        float _1958 = _1957.x;
                        float _1959 = _1958 + 0.5f;
                        float _1961 = (_1959 * _1959) * 0.5f;
                        float _1964 = min(_1958, 0.0f);
                        float _1968 = max(_1958, 0.0f);
                        float4 _1972 = float4(_1961 - _1958, (1.0f - _1958) - (_1964 * _1964), (_1958 + 1.0f) - (_1968 * _1968), _1961) * 0.44444000720977783203125f;
                        float _1973 = _1957.y;
                        float _1974 = _1973 + 0.5f;
                        float _1976 = (_1974 * _1974) * 0.5f;
                        float _1979 = min(_1973, 0.0f);
                        float _1983 = max(_1973, 0.0f);
                        float4 _1987 = float4(_1976 - _1973, (1.0f - _1973) - (_1979 * _1979), (_1973 + 1.0f) - (_1983 * _1983), _1976) * 0.44444000720977783203125f;
                        float2 _1989 = _1972.yw;
                        float2 _1990 = _1972.xz + _1989;
                        float2 _1992 = _1987.yw;
                        float2 _1993 = _1987.xz + _1992;
                        float2 _1999 = ((_1989 / _1990) + float2(-1.5f, 0.5f)) * _40_m26.xx;
                        float2 _2001 = ((_1992 / _1993) + float2(-1.5f, 0.5f)) * _40_m26.yy;
                        float2 _2003 = _1956 * _40_m26.xy;
                        float _2004 = _1999.x;
                        float _2005 = _2001.x;
                        float _2008 = _1999.y;
                        float _2011 = _2001.y;
                        _2055 = ((((_1990.x * _1993.x) * _44.SampleCmpLevelZero(_28, float3(_2003 + float2(_2004, _2005), _427).xy, _1948)) + ((_1990.y * _1993.x) * _44.SampleCmpLevelZero(_28, float3(_2003 + float2(_2008, _2005), _427).xy, _1948))) + ((_1990.x * _1993.y) * _44.SampleCmpLevelZero(_28, float3(_2003 + float2(_2004, _2011), _427).xy, _1948))) + ((_1990.y * _1993.y) * _44.SampleCmpLevelZero(_28, float3(_2003 + float2(_2008, _2011), _427).xy, _1948));
                    }
                    else
                    {
                        _2055 = 1.0f;
                    }
                    _2056 = _2055;
                }
                else
                {
                    _2056 = 1.0f;
                }
                _2057 = _2056;
            }
            else
            {
                _2057 = 1.0f;
            }
            _2059 = _1862 ? _2057 : _1861;
            _2060 = _2057;
        }
        else
        {
            _2059 = _1861;
            _2060 = 1.0f;
        }
        float _2063 = lerp(lerp(_2060, _2059, _1672), min(_2060, _2059), _40_m8.x);
        float _2112;
        if (_2063 > 0.001000000047497451305389404296875f)
        {
            float3 _2070 = _588 - _19_m65.xyz;
            float2 _2080 = (_2070 + (_19_m68.xyz * _2070.y)).xz * _19_m66.z;
            float2 _2087 = _19_m67.xy * _19_m75.w;
            _2112 = _2063 * lerp(1.0f, lerp(_43.SampleLevel(_27, _2080 + _2087, 0.0f), _43.SampleLevel(_27, (_2080 * _19_m67.w) + _2087, 0.0f), smoothstep(_19_m66.x, _19_m66.y, length(_2070.xz)).xxxx).x, _19_m67.z);
        }
        else
        {
            _2112 = _2063;
        }
        _2117 = float2(lerp(_2112, _40_m7.z, _40_m7.w), _2112);
        break;
    } while(false);
    float _2124 = lerp(lerp(1.0f, _2117.x, _40_m6.x), 1.0f, _19_m80.z);
    float _2125 = dot(_1279, _1622);
    float3 _2132 = _1578 * _19_m79.z;
    float3 _2133 = _2132 * 0.64999997615814208984375f;
    float _2137 = dot(_1574, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2150 = clamp(-dot(_1626.xz, normalize(_632.xz)), 0.0f, 1.0f);
    float _2154 = 1.0f - _19_m91.x;
    float _2162 = smoothstep(0.25f, 1.0f, clamp(lerp(_2125, ((-_2125) * ((_2125 * 0.5f) - 1.0f)) + 0.5f, (_2150 * smoothstep(0.25f, 0.75f, 1.0f - abs(_632.y))) * _2154) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _2169 = max(max(_2162, _2162), _2162) - min(min(_2162, _2162), _2162);
    float _2171 = smoothstep(0.25f, 1.0f, dot(_1279, _632));
    float _2178 = min(min(1.0f, _511), _2162);
    float _2179 = _2171 * _511;
    float3 _2183 = ((clamp(dot(_615, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1151, 1.0f.xxx, (_19_m80.y * _2178).xxx);
    float3 _2185 = _2178.xxx;
    float3 _2208 = _2124.xxx;
    float3 _2209 = lerp((_2183 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1152), 1.5f), clamp(_1152, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1640, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1640, _2185) + ((_2183 * clamp(_1152, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1636 * _19_m91.y)))) * _19_m79.y, _2208);
    float3 _2210 = lerp(lerp(lerp(dot(_2133, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2133, 1.2000000476837158203125f.xxx), _2132, clamp((_511 * _2171) + _2162, 0.0f, 1.0f).xxx), _1574, _2185);
    float3 _2216 = _2210 * ((1.0f - _2169).xxx + (_2162.xxxx.xyz * _2169));
    float3 _2225 = lerp(lerp(_2132, lerp(_2137.xxx, _1574, 1.2000000476837158203125f.xxx), _2179.xxx), _2216 * clamp(dot(_2210, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2216, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2208);
    float4 _2229 = float4(_2225, _2124);
    float _2231 = lerp(_2179, _2178, _2124);
    float _2234 = lerp(_19_m79.z, 1.0f, _2231);
    float3 _2242 = float3(_632.x, lerp(0.5f, _1622.y, _2124), _632.z);
    float _2255 = clamp(dot(_615, _464), 0.0f, 1.0f);
    float _2256 = dot(_615, normalize(((_1622 * _2124) + ((_2242 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2242, _2242)))) * 2.0f)) + (_464 * (2.0f + _2124))));
    float _2257 = _1580 * _1580;
    float _2261 = (((_2256 * _2257) - _2256) * _2256) + 1.0f;
    float _2262 = _2261 * _2261;
    float _2266 = 2.0f * _2255;
    float _2268 = (1.0f + _2255) - _2255;
    float _2285 = (1.0f - _53_m6) + (_1571 * _53_m6);
    float3 _2287 = ((_2209 * _2225) * _2285) + (((_1577 * clamp((((_2257 != _2262) ? (_2257 / _2262) : 1.0f) * (0.5f / ((_2266 + (_1580 * _2268)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2209 * (((_2231 * 0.5f) + 0.5f) * _2234)) * 1.0f)) * _19_m92.w);
    float _2288 = dot(_2287, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2291 = clamp(_2288 - 0.5f, 0.0f, 0.5f);
    float3 _2327 = normalize(cross(_632, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2333 = dot(_464, _1279);
    float _2335 = 1.0f - abs(_2333);
    float _2357 = dot(_1626, _1279);
    float _2369 = 1.0f - _2124;
    float _2396 = _2255 * _2255;
    float _2397 = _2396 * _2255;
    float2 _2398 = float2(1.0f, _2255);
    float2 _2401 = float2(1.0f, _1579);
    float3 _2404 = float3(1.0f, _1579, (_1579 * _1579) * _1579);
    float _2409 = dot(mul(_2398, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2401) / dot(mul(float3(1.0f, _2396, _2397), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2404);
    float _2414 = dot(mul(_2398, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2401) / dot(mul(float3(1.0f, _2255, _2397), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2404);
    float3 _2417 = (_1577 * _2409) + _2414.xxx;
    float _2418 = _2409 + _2414;
    float3 _2424 = -_464;
    float3 _2442 = (((((_558.xyz * _53_m25.xyz) * _53_m7) * ((_53_m60 > 0.5f) ? lerp(1.0f, lerp(_53_m62, _53_m63, (sin(_53_m61 * _19_m75.w) * 0.5f) + 0.5f), _558.w) : 1.0f)) + (_53_m66.xyz * clamp((_53_m71 - _1336) * _53_m69, 0.0f, 1.0f))) + (lerp(lerp((((_1443 * clamp((_1472 + _1443.w) * _53_m53.w, 0.0f, 1.0f)) * _53_m53) + _1469).xyz, (_53_m54.xyz * _1487) * _53_m46, _1487.xxx).xyz, _53_m54.xyz, (_53_m54.w * _1517).xxx).xyz * (clamp(_1472 * clamp(_1485, 0.0f, 1.0f), 0.0f, 1.0f) * ((1.0f - _53_m41) + (_1517 * _53_m41)))).xyz) * _2285;
    float3 _2443 = lerp(_2288.xxx, _2287, ((_2291 * _2291) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2335)) * _19_m87.w) * min(min(clamp(dot(_595, _2327) + 1.0f, 0.0f, 1.0f), _511), 1.0f)) * (lerp(0.25f.xxx, _1574, _19_m88.z.xxx) * clamp(dot(_2327, _1279), 0.0f, 1.0f))) + ((((((lerp(_1150 * (1.0f / max(max(max(_1150.x, _1150.y), _1150.z) * 0.5f, 1.0f)), _1640, _2208) * clamp(lerp(dot(_1149.xyz, _1279) * _1149.w, ((-_2357) * ((_2357 * 0.5f) - 1.0f)) + 0.5f, _2124), 0.0f, 1.0f)) * ((_2369 + (_2150 * _2124)) * _2154)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2335)) * min(_511, 1.0f)) * (_2369 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2137) * _2124))) * max(0.1500000059604644775390625f.xxx, _1574)));
    float2 _2447 = floor(_1537 * 0.03125f);
    int _2455 = int((_2447.x + (_2447.y * _36_m5)) * 8.0f);
    float _2462 = floor(_445 - (_19_m3.y * _36_m11));
    float _2466 = clamp(_2462, 0.0f, _36_m7 - 1.0f);
    int _2468 = int(_2466 * 8.0f);
    float3 _2470;
    _2470 = (_2443 + _2442) + (((_61.SampleLevel(_26, reflect(_2424, _615), (1.2000000476837158203125f * log2(max(_1275, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2417 + ((_1577 * ((1.0f - _2418) / _2418)) * _2417)) * 1.0f)) * ((clamp(_1152, 0.5f, 1.5f) * _19_m79.w) * _2234)) * _1151);
    float3 _2471;
    [loop]
    for (int _2473 = 0; _2473 <= 7; _2470 = _2471, _2473++)
    {
        uint _2491 = (_2462 <= _2466) ? (_32.Load(uint(_2455 + _2473) * 4 + 0) & _32.Load(uint((_19_m21.y + _2468) + _2473) * 4 + 0)) : 0u;
        uint _2492 = uint(_2473);
        _2471 = _2470;
        uint _2497;
        float3 _2494;
        [loop]
        for (uint _2496 = _2491; _2496 != 0u; _2471 = _2494, _2496 = _2497)
        {
            uint _2501 = firstbitlow(_2496);
            _2497 = _2496 ^ (1u << (_2501 & 31u));
            int _2507 = int((32u * _2492) + _2501) * 8;
            int _2510 = _2507 + 1;
            int _2513 = _2507 + 2;
            int _2516 = _2507 + 3;
            int _2519 = _2507 + 4;
            int _2522 = _2507 + 5;
            int _2525 = _2507 + 6;
            int _2528 = _2507 + 7;
            uint _2532 = uint(_38_m6[_2522].w);
            float _2607;
            if ((_2532 & 1u) == 1u)
            {
                uint _2538 = asuint(_38_m6[_2522].x);
                uint _2545 = asuint(_38_m6[_2522].y);
                uint _2552 = asuint(_38_m6[_2522].z);
                uint _2559 = asuint(_38_m6[_2525].x);
                uint _2566 = asuint(_38_m6[_2525].y);
                uint _2573 = asuint(_38_m6[_2525].z);
                float3 _2592 = abs(mul(float4(_588 - _38_m6[_2510].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2538).x, spvUnpackHalf2x16(_2552).x, spvUnpackHalf2x16(_2566).x, 0.0f), float4(spvUnpackHalf2x16(_2538 >> 16u).x, spvUnpackHalf2x16(_2552 >> 16u).x, spvUnpackHalf2x16(_2566 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2545).x, spvUnpackHalf2x16(_2559).x, spvUnpackHalf2x16(_2573).x, 0.0f), float4(spvUnpackHalf2x16(_2545 >> 16u).x, spvUnpackHalf2x16(_2559 >> 16u).x, spvUnpackHalf2x16(_2573 >> 16u).x, 0.0f))).xyz);
                float _2599 = _38_m6[_2528].x * 0.5f;
                float _2605 = 1.0f - clamp((max(max(_2592.x, _2592.y), _2592.z) - (_2599 + 0.5f)) / (0.5f - _2599), 0.0f, 1.0f);
                _2607 = _2605 * _2605;
            }
            else
            {
                _2607 = 1.0f;
            }
            if (false || (_2607 < 0.001000000047497451305389404296875f))
            {
                _2494 = _2471;
                continue;
            }
            float3 _3301;
            if (_38_m6[_2507].w < 1.5f)
            {
                float3 _3300;
                do
                {
                    uint _2620 = asuint(_38_m6[_2516].w);
                    if ((_2620 == 16u) || ((_38_m6[_2516].z + _19_m91.z) < 0.5f))
                    {
                        _3300 = _2471;
                        break;
                    }
                    bool _2632 = (uint(_38_m6[_2507].w) & 1u) == 0u;
                    bool _2636 = (!_2632) && (_38_m6[_2513].z > 0.0f);
                    bool _2637 = _2620 == 4u;
                    float _2638 = float(_2632);
                    float _2646 = (0.5f + (0.5f * _38_m6[_2513].y)) - abs(_38_m6[_2513].x);
                    float _2647 = _38_m6[_2513].y - _2646;
                    float _2654 = abs(max((1.0f - abs(_2646)) - abs(_2647), 0.00048828125f));
                    float3 _2658 = normalize(float3(_2646, _2647, (_38_m6[_2513].x >= 0.0f) ? _2654 : (-_2654)));
                    float _2664 = lerp(_38_m6[_2525].w, max(2.0f * _38_m6[_2519].y, 0.100000001490116119384765625f), float(_2637));
                    float3 _2669 = _38_m6[_2510].xyz - _588;
                    float3 _2670 = -_2658;
                    float3 _2675 = lerp(_2669, _2670 * dot(_2669, _2670), (float(_2637 && (_38_m6[_2519].z > 0.5f)) * _2638).xxx);
                    float _2676 = dot(_2675, _2675);
                    float _2677 = rsqrt(_2676);
                    float3 _2678 = _2675 * _2677;
                    float3 _2711;
                    float _2712;
                    if (_2636)
                    {
                        float3 _2682 = (_2658 * _38_m6[_2513].z) * 0.5f;
                        float3 _2683 = _2675 - _2682;
                        float3 _2684 = _2675 + _2682;
                        float _2685 = length(_2683);
                        float _2686 = length(_2684);
                        float3 _2695 = normalize(cross(cross(_2658, _2678), _2658));
                        _2711 = _2695;
                        _2712 = ((1.0f / ((((_2685 * _2686) + dot(_2683, _2684)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2695, _2683) / _2685) + (dot(_2695, _2684) / _2686)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_38_m6[_2513].z * _2677, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2711 = _2678;
                        _2712 = 1.0f;
                    }
                    float _2734;
                    if (_2664 < 0.0f)
                    {
                        float _2728 = _2676 * (_38_m6[_2510].w * _38_m6[_2510].w);
                        float _2731 = clamp(1.0f - (_2728 * _2728), 0.0f, 1.0f);
                        _2734 = lerp(1.0f / (_2676 + 1.0f), _2712, float(_2636)) * (_2731 * _2731);
                    }
                    else
                    {
                        float3 _2717 = _2675 * _38_m6[_2510].w;
                        _2734 = _2712 * pow(1.0f - clamp(dot(_2717, _2717), 0.0f, 1.0f), _2664);
                    }
                    float _2739 = clamp((dot(_2711, _2670) - _38_m6[_2513].z) * _38_m6[_2513].w, 0.0f, 1.0f);
                    float _2742 = _2734 * lerp(1.0f, _2739 * _2739, _2638);
                    int _2744 = int(_38_m6[_2528].w);
                    float _2849;
                    if ((!_2636) && (_2744 >= 0))
                    {
                        uint _2750 = uint(_2744);
                        float2 _2842;
                        [branch]
                        if (_2638 != 0.0f)
                        {
                            float4 _2832 = mul(_68_m1[_2750], float4(_588, 1.0f));
                            _2842 = _68_m0[_2750].xy + (clamp(_2832.xy / _2832.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_2750].zw);
                        }
                        else
                        {
                            float3 _2765 = mul(float4(-_2675, 0.0f), _68_m1[_2750]).xyz;
                            float3 _435 = _2765;
                            float3 _434 = _2765;
                            float3 _433 = abs(_2765);
                            uint _2774 = uint(int(_433.y > _433.x));
                            uint _2780 = (_433.z > _433[_2774]) ? 2u : _2774;
                            uint _2786 = (_2780 * 2u) + uint(_434[_2780] < 0.0f);
                            float _2790 = abs(_435[_2786 / 2u]);
                            float _2810 = 0.5f - (0.000244140625f / _68_m0[_2750].w);
                            _2842 = _68_m0[_2750].xy + (clamp(float2((float(_2786) + ((((_435[uint(_382[_2786].x)] * _383[_2786].x) / _2790) * _2810) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_435[uint(_382[_2786].y)] * _383[_2786].y) / _2790) * _2810)), 0.0f.xx, 1.0f.xx) * _68_m0[_2750].zw);
                        }
                        _2849 = _2742 * _66.SampleLevel(_26, _2842, 0.0f).x;
                    }
                    else
                    {
                        _2849 = _2742;
                    }
                    float _2850 = _2849 * _2607;
                    float3 _3299;
                    do
                    {
                        float3 _3298;
                        [branch]
                        if (_2850 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2637)
                            {
                                _3299 = lerp(_2471, _38_m6[_2507].xyz, (_2850 * (_38_m6[_2519].x * ((1.0f - _38_m6[_2519].w) + (smoothstep(-0.5f, 0.5f, dot(_616, _2711)) * _38_m6[_2519].w)))).xxx);
                                break;
                            }
                            float _2870 = dot(_1279, _2711);
                            float _2871 = clamp(_2870, 0.0f, 1.0f);
                            float _3174;
                            if (_2620 != 0u)
                            {
                                bool _2877 = _2632 || ((_2532 & 2u) != 0u);
                                int _2926;
                                if (_2877)
                                {
                                    _2926 = int(_38_m6[_2516].x);
                                }
                                else
                                {
                                    uint _2881 = asuint(_38_m6[_2513].w);
                                    uint _2883 = asuint(_38_m6[_2516].x);
                                    float3 _2884 = _588 - _38_m6[_2510].xyz;
                                    float3 _2885 = abs(_2884);
                                    float _2886 = _2885.x;
                                    float _2887 = _2885.y;
                                    float _2889 = _2885.z;
                                    int _2921;
                                    if ((_2886 > _2887) && (_2886 > _2889))
                                    {
                                        _2921 = int((_2884.x > 0.0f) ? (_2881 >> 24u) : ((_2881 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2913;
                                        if (_2887 > _2889)
                                        {
                                            _2913 = int((_2884.y > 0.0f) ? ((_2881 >> 8u) & 255u) : (_2881 & 255u));
                                        }
                                        else
                                        {
                                            _2913 = int((_2884.z > 0.0f) ? ((_2883 >> 8u) & 255u) : (_2883 & 255u));
                                        }
                                        _2921 = _2913;
                                    }
                                    _2926 = (_2921 < 80) ? _2921 : (-1);
                                }
                                bool _2927 = _2926 >= 0;
                                float _3173;
                                if (_2927)
                                {
                                    float3 _2934 = _588 - _38_m6[_2510].xyz;
                                    float4 _2954 = mul(_40_m10[_2926], float4((_588 - ((_2934 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2934, _2934)))) * _40_m11[_2926].x)) + (_616 * (_40_m11[_2926].y * 5.0f)), 1.0f));
                                    float _2955 = _2954.w;
                                    float3 _2958 = _2954.xyz / _2955.xxx;
                                    float2 _2959 = _2958.xy;
                                    float3 _2967 = _2958.xyz;
                                    bool3 _2968 = bool3(_2967.x <= 0.0f.xxx.x, _2967.y <= 0.0f.xxx.y, _2967.z <= 0.0f.xxx.z);
                                    bool3 _2969 = bool3(_2967.x >= 1.0f.xxx.x, _2967.y >= 1.0f.xxx.y, _2967.z >= 1.0f.xxx.z);
                                    float _2972 = _2958.z;
                                    float2 _2983 = ((_2959 * (_40_m12[_2926].zw - _40_m12[_2926].xy)) + _40_m12[_2926].xy).xy * _40_m13.zw;
                                    float2 _2985 = floor(_2983 + 0.5f.xx);
                                    float2 _2986 = _2983 - _2985;
                                    float _2988 = _2986.x + 0.5f;
                                    float _2989 = _2988 * _2988;
                                    float _2992 = 1.0f - _2986.x;
                                    float _2993 = min(_2986.x, 0.0f);
                                    float _2996 = _2986.x + 1.0f;
                                    float _2997 = max(_2986.x, 0.0f);
                                    float _3009 = _2986.y + 0.5f;
                                    float _3010 = _3009 * _3009;
                                    float _3013 = 1.0f - _2986.y;
                                    float _3014 = min(_2986.y, 0.0f);
                                    float _3017 = _2986.y + 1.0f;
                                    float _3018 = max(_2986.y, 0.0f);
                                    float3 _3030 = float3(0.1599999964237213134765625f * _2992, 0.1599999964237213134765625f * ((_2996 - (_2997 * _2997)) + 1.0f), _2989 * 0.07999999821186065673828125f);
                                    float3 _3031 = float3(0.1599999964237213134765625f * ((_2989 * 0.5f) - _2986.x), 0.1599999964237213134765625f * ((_2992 - (_2993 * _2993)) + 1.0f), 0.1599999964237213134765625f * _2996) + _3030;
                                    float3 _3033 = float3(0.1599999964237213134765625f * _3013, 0.1599999964237213134765625f * ((_3017 - (_3018 * _3018)) + 1.0f), _3010 * 0.07999999821186065673828125f);
                                    float3 _3034 = float3(0.1599999964237213134765625f * ((_3010 * 0.5f) - _2986.y), 0.1599999964237213134765625f * ((_3013 - (_3014 * _3014)) + 1.0f), 0.1599999964237213134765625f * _3017) + _3033;
                                    float3 _3040 = ((_3030 / _3031) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.xxx;
                                    float3 _3042 = ((_3033 / _3034) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.yyy;
                                    float2 _3044 = _2985 * _40_m13.xy;
                                    float _3045 = _3040.x;
                                    float _3046 = _3042.x;
                                    float _3049 = _3040.y;
                                    float _3052 = _3040.z;
                                    float _3055 = _3042.y;
                                    float _3062 = _3042.z;
                                    float _3069 = _3031.x;
                                    float _3070 = _3034.x;
                                    float _3072 = _3031.y;
                                    float _3074 = _3031.z;
                                    float _3076 = _3034.y;
                                    float _3080 = _3034.z;
                                    float _3138 = (((((((_3069 * _3070) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3045, _3046), _427).xy, _2972)) + ((_3072 * _3070) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3049, _3046), _427).xy, _2972))) + ((_3074 * _3070) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3052, _3046), _427).xy, _2972))) + ((_3069 * _3076) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3045, _3055), _427).xy, _2972))) + ((_3072 * _3076) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3049, _3055), _427).xy, _2972))) + ((_3074 * _3076) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3052, _3055), _427).xy, _2972))) + ((_3069 * _3080) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3045, _3062), _427).xy, _2972));
                                    float2 _3159 = min(_2959, 1.0f.xx - _2959);
                                    _3173 = _2927 ? lerp(1.0f, (any(bool3(_2968.x || _2969.x, _2968.y || _2969.y, _2968.z || _2969.z)) || ((asuint(_2972) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3138 + ((_3072 * _3080) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3049, _3062), _427).xy, _2972))) + ((_3074 * _3080) * _42.SampleCmpLevelZero(_28, float3(_3044 + float2(_3052, _3062), _427).xy, _2972))), _2877 ? min(_40_m11[_2926].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_40_m11[_2926].z - _2955) * 0.25f, min(_3159.x, _3159.y)))) : _40_m11[_2926].w) : 1.0f;
                                }
                                else
                                {
                                    _3173 = clamp(dot(_595, _2711) + 1.0f, 0.0f, 1.0f);
                                }
                                _3174 = _3173;
                            }
                            else
                            {
                                _3174 = 1.0f;
                            }
                            float _3254;
                            float3 _3255;
                            float _3256;
                            float3 _3257;
                            float3 _3258;
                            float _3259;
                            float _3260;
                            [branch]
                            if (_2620 == 0u)
                            {
                                float3 _3234 = _38_m6[_2507].xyz * _2850;
                                float3 _3247 = _2229.xyz;
                                _3254 = _2850;
                                _3255 = (_38_m6[_2507].xyz * ((1.0f - _38_m6[_2519].y) + ((1.0f / max(1.0f, max(max(_3234.x, _3234.y), _3234.z) * lerp(0.75f, 0.5f, _2369))) * _38_m6[_2519].y))) * lerp(0.25f * _38_m6[_2519].x, 1.0f, clamp(_2870 + 0.5f, 0.0f, 1.0f));
                                _3256 = _2871;
                                _3257 = _3247;
                                _3258 = _3247;
                                _3259 = 1.0f;
                                _3260 = 0.0f;
                            }
                            else
                            {
                                float _3227;
                                float _3228;
                                float3 _3229;
                                float3 _3230;
                                float _3231;
                                float _3232;
                                if (_2620 == 3u)
                                {
                                    _3227 = _2850 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _38_m6[_2519].x), lerp(0.89999997615814208984375f, 0.5f, _38_m6[_2519].x), _2335) * _3174);
                                    _3228 = clamp(dot(_1279, -normalize(cross(_632, cross(_632, _2711)))), 0.0f, 1.0f);
                                    _3229 = lerp(0.5f.xxx, _1574, _38_m6[_2519].y.xxx);
                                    _3230 = 0.0f.xxx;
                                    _3231 = 1.0f;
                                    _3232 = 0.0f;
                                }
                                else
                                {
                                    bool _3183 = _2620 == 1u;
                                    float _3207;
                                    float3 _3208;
                                    float _3209;
                                    float _3210;
                                    if (_3183)
                                    {
                                        _3207 = clamp(clamp(_2870 + _38_m6[_2519].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3174;
                                        _3208 = _1578 * _38_m6[_2519].y;
                                        _3209 = 1.0f;
                                        _3210 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3187 = _2620 == 2u;
                                        float _3199;
                                        if (_3187)
                                        {
                                            _3199 = smoothstep(_38_m6[_2519].x + 0.0500000007450580596923828125f, _38_m6[_2519].x - 0.0500000007450580596923828125f, _1275) * ((1.0f - _38_m6[_2519].z) + (step(0.5f, _1278) * _38_m6[_2519].z));
                                        }
                                        else
                                        {
                                            _3199 = 1.0f;
                                        }
                                        _3207 = _2871;
                                        _3208 = 0.0f.xxx;
                                        _3209 = _3199;
                                        _3210 = _3187 ? _38_m6[_2519].y : 0.0f;
                                    }
                                    bool3 _3211 = _3183.xxx;
                                    _3227 = _2850;
                                    _3228 = _3207;
                                    _3229 = float3(_3211.x ? _1574.x : 0.0f.xxx.x, _3211.y ? _1574.y : 0.0f.xxx.y, _3211.z ? _1574.z : 0.0f.xxx.z);
                                    _3230 = _3208;
                                    _3231 = _3209;
                                    _3232 = _3210;
                                }
                                _3254 = _3227;
                                _3255 = _38_m6[_2507].xyz;
                                _3256 = _3228;
                                _3257 = _3229;
                                _3258 = _3230;
                                _3259 = _3231;
                                _3260 = _3232;
                            }
                            float3 _3288;
                            [branch]
                            if (_2620 != 3u)
                            {
                                float _3265 = lerp(_1580, 0.00999999977648258209228515625f, _3260);
                                float _3268 = dot(_615, normalize(_2711 + _464));
                                float _3269 = _3265 * _3265;
                                float _3273 = (((_3268 * _3269) - _3268) * _3268) + 1.0f;
                                float _3274 = _3273 * _3273;
                                _3288 = ((_1577 * clamp((((_3269 != _3274) ? (_3269 / _3274) : 1.0f) * (0.5f / ((_2266 + (_3265 * _2268)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3259) * _38_m6[_2528].z;
                            }
                            else
                            {
                                _3288 = 0.0f.xxx;
                            }
                            float3 _3291 = _3255 * _3254;
                            _3298 = _2471 + (((_3291 * lerp(_3258, _3257, _3256.xxx)) * _2285) + ((_3291 * _3288) * _3256));
                        }
                        else
                        {
                            _3298 = _2471;
                        }
                        _3299 = _3298;
                        break;
                    } while(false);
                    _3300 = _3299;
                    break;
                } while(false);
                _3301 = _3300;
            }
            else
            {
                _3301 = _2471;
            }
            _2494 = _3301;
        }
    }
    float3 _3341;
    [branch]
    if (_53_m12 > 0.5f)
    {
        _3341 = lerp(lerp(0.5f.xxx, lerp(dot(_2470, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2470, _53_m14.xxx), _53_m15.xxx) * _53_m13, _53_m26.xyz, _53_m26.w.xxx) + ((_53_m27.xyz * smoothstep(1.0f - _53_m16, 1.0f, 1.0f - clamp(_2333, 0.0f, 1.0f))) * _53_m17);
    }
    else
    {
        _3341 = _2470;
    }
    float4 _3348 = float4(_3341 * _19_m20.y, _1571);
    _3348.w = (_53_m8 == 1.0f) ? _1571 : 1.0f;
    float4 _3737;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3373 = _588.y * _19_m46.w;
        float _3378 = max(0.00999999977648258209228515625f, _3373 + _19_m47.w);
        float3 _3392 = exp(_19_m45.xyz * ((-max(0.0f, (_465 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3378)) / _3378) * exp(_3373 + _19_m48.w))));
        float _3395 = dot(_2424, _19_m44.xyz);
        float _3401 = _19_m45.w * _19_m45.w;
        float _3405 = (1.0f + _3401) - ((2.0f * _19_m45.w) * _3395);
        float3 _3729;
        float _3730;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3560 = (uint3(int3(int(_622.x), int(_622.y), int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3561 = _3560.y;
            uint _3562 = _3560.z;
            uint _3565 = _3560.x + (_3561 * _3562);
            uint _3567 = _3561 + (_3562 * _3565);
            uint _3569 = _3562 + (_3565 * _3567);
            uint _3571 = _3565 + (_3567 * _3569);
            float _3593 = dot(_2424, -_17_m0[2].xyz);
            float3 _3600 = _588 - _17_m11.xyz;
            float _3602 = (_19_m55.w * ((_3593 > 5.9604644775390625e-08f) ? (1.0f / _3593) : 0.0f)) * (1.0f / _465);
            float _3603 = _3600.y;
            float _3604 = _3602 * _3603;
            float _3606 = _17_m11.y + _3604;
            float _3607 = _3603 - _3604;
            float _3609 = (1.0f - _3602) * _465;
            float _3623 = max(-127.0f, _19_m49.z * _3607);
            float _3647 = max(-127.0f, _19_m52.x * _3607);
            float _3658 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3606 - _19_m49.x)))) * ((abs(_3623) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3623)) / _3623) : (0.693147182464599609375f - (0.2402265071868896484375f * _3623)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3606 - _19_m52.z)))) * ((abs(_3647) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3647)) / _3647) : (0.693147182464599609375f - (0.2402265071868896484375f * _3647))));
            float _3680 = clamp((_465 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3683 = clamp((max(clamp(exp2(-(_3658 * _3609)), 0.0f, 1.0f), _19_m51.w) + clamp((_465 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3680, 0.0f, 1.0f);
            float4 _3723 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_26, float3((_1537 + ((((float3(uint3(_3571, _3567 + (_3569 * _3571), _431) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_445 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_445 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3729 = _3723.xyz + (((_19_m51.xyz * (1.0f - _3683)) + (((_19_m54.xyz * pow(clamp(dot(_464, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3658 * max(_3609 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3680))) * _3723.w);
            _3730 = _3723.w * _3683;
        }
        else
        {
            float3 _3432 = _588 - _17_m11.xyz;
            float _3434 = _3432.y;
            float _3448 = max(-127.0f, _19_m49.z * _3434);
            float _3472 = max(-127.0f, _19_m52.x * _3434);
            float _3483 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3448) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3448)) / _3448) : (0.693147182464599609375f - (0.2402265071868896484375f * _3448)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3472) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3472)) / _3472) : (0.693147182464599609375f - (0.2402265071868896484375f * _3472))));
            float _3505 = clamp((_465 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3508 = clamp((max(clamp(exp2(-(_3483 * _465)), 0.0f, 1.0f), _19_m51.w) + clamp((_465 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3505, 0.0f, 1.0f);
            _3729 = (_19_m51.xyz * (1.0f - _3508)) + (((_19_m54.xyz * pow(clamp(dot(_464, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3483 * max(_465 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3505));
            _3730 = _3508;
        }
        float3 _3735 = (_3348.xyz * (_3392 * _3730)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3395 * _3395)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3401) / max((12.56637096405029296875f * _3405) * sqrt(_3405), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3392)) * _3730) + _3729);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3735 = (_3735 * 0.65f) + (_3348.xyz * 0.35f);

        }
        _3737 = float4(_3735.x, _3735.y, _3735.z, _3348.w);
    }
    else
    {
        _3737 = _3348;
    }
    _14 = _3737;
    _15 = _1609;
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
    _12 = stage_input._12;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._14 = _14;
    stage_output._15 = _15;
    return stage_output;
}
