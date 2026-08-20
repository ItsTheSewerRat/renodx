// DX11 0xADB65273 -> Vulkan 0xCD344C80
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

static float _415 = 0.0f;
static float3 _416 = 0.0f;
static float _418 = 0.0f;
static uint _419 = 0u;

static const int2 _371[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _372[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float4 _50_m40 : packoffset(c16);
    float4 _50_m41 : packoffset(c17);
    float4 _50_m42 : packoffset(c18);
    float4 _50_m43 : packoffset(c19);
    float4 _50_m44 : packoffset(c20);
    float _50_m45 : packoffset(c21);
    float _50_m46 : packoffset(c21.y);
    float _50_m47 : packoffset(c21.z);
    float _50_m48 : packoffset(c21.w);
    float _50_m49 : packoffset(c22);
    float _50_m50 : packoffset(c22.y);
    float _50_m51 : packoffset(c22.z);
    float _50_m52 : packoffset(c22.w);
};

[[vk::binding(50, 0)]]
cbuffer _63_64 : register(b50)
{
    float4 _64_m0[32] : packoffset(c0);
    column_major float4x4 _64_m1[32] : packoffset(c32);
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
[[vk::binding(44, 0)]] Texture2D<float4> _51 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _52 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _53 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _54 : register(t37);
[[vk::binding(7, 1)]] Texture2D<float4> _55 : register(t7);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2);
[[vk::binding(6, 1)]] Texture2D<float4> _57 : register(t6);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4);
[[vk::binding(3, 1)]] Texture2D<float4> _59 : register(t3);
[[vk::binding(5, 1)]] Texture2D<float4> _60 : register(t5);
[[vk::binding(1, 1)]] SamplerState _61 : register(s1);
[[vk::binding(29, 0)]] Texture2D<float4> _62 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _67 : register(t36);

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
    float _435 = 1.0f / gl_FragCoord.w;
    float3 _450 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _451 = dot(_450, _450);
    float _453 = rsqrt(max(_451, 9.9999999392252902907785028219223e-09f));
    float3 _454 = _450 * _453;
    float _455 = _451 * _453;
    uint _458 = asuint(_23_m0[_13]._m2.x);
    bool _463 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _476;
    float4 _477;
    if (_463)
    {
        _476 = asfloat(_33_Load4((_458 + 2u) * 16 + 0));
        _477 = asfloat(_33_Load4(_458 * 16 + 0));
    }
    else
    {
        _476 = _23_m0[_13]._m0[2];
        _477 = _23_m0[_13]._m0[0];
    }
    float4 _483 = _55.SampleBias(_27, _3, _20_m16);
    float3 _488 = _483.xyz * _50_m24.xyz;
    float4 _492 = _56.SampleBias(_27, _3, _20_m16);
    float _493 = _492.x;
    float _495 = _492.z;
    float _497 = 1.0f - _492.w;
    float _501 = _483.w * _50_m24.w;
    float3 _506 = _488 * _50_m18;
    float3 _510 = lerp(dot(_506, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _506, _50_m19.xxx);
    float4 _514 = _57.SampleBias(_27, _3, _20_m16);
    _514.w = _514.w * _514.x;
    float2 _523 = (_514.wy * 2.0f) - 1.0f.xx;
    float3 _524 = float3(_523.x, _523.y, _416.z);
    float2 _525 = _523.xy;
    _524.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_525, _525), 0.0f, 1.0f)));
    float2 _533 = _524.xy * _50_m3;
    float4 _538 = _58.SampleBias(_27, _3, _20_m16);
    float3 _550 = _4 + _18_m11.xyz;
    float3 _554 = _550 - float3(_477.w, _418, _476.w);
    _554.y = 6.103515625e-05f;
    float3 _557 = normalize(_554);
    float3 _567 = mul(float3(_533.x, _533.y, _524.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _576 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
    float3 _577 = (_567 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_567, _567)))) * _576;
    float3 _578 = normalize(_5) * _576;
    uint2 _580 = uint2(gl_FragCoord.xy);
    float3 _590 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _599 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _612 = float4(float(_599 & 255u), float((_599 >> 8u) & 255u), float((_599 >> 16u) & 255u), float((_599 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _613 = _612.x;
    float _616 = _612.w;
    float _622 = _550.y;
    float _625 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _622) * _612.y;
    float _626 = max(_612.z, _625);
    float _635 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1129;
    float3 _1130;
    float3 _1131;
    float _1132;
    if (_20_m80.y < 0.5f)
    {
        float3 _653 = _550 - (_20_m105.xyz + (_590 * (-_20_m107.w)));
        float _667 = max(clamp((max(abs(_653.x), abs(_653.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_653.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _969;
        float4 _970;
        float4 _971;
        float _972;
        float _973;
        if ((_20_m105.w != 0.0f) && (_667 < 1.0f))
        {
            float3 _680 = _550 - (_20_m105.xyz + (_590 * (-_20_m107.y)));
            float _694 = max(clamp((max(abs(_680.x), abs(_680.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_680.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _770;
            float4 _771;
            float4 _772;
            float4 _773;
            if (_694 < 1.0f)
            {
                float3 _703 = ((_550 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _705 = _703 - floor(_703);
                float4 _709 = _43.SampleLevel(_27, _705, 0.0f);
                float _710 = 1.0f - _694;
                float _714 = _20_m106.y * 0.5f;
                float _719 = _705.x;
                float _720 = clamp(_705.y, _714, 1.0f - _714) * 0.3333333432674407958984375f;
                float _721 = _705.z;
                float4 _724 = _44.SampleLevel(_26, float3(_719, _720, _721), 0.0f);
                float _740 = _709.x;
                float _750 = _709.y;
                float _760 = _709.z;
                _770 = _667 + (_724.w * _710);
                _771 = float4(((_44.SampleLevel(_26, float3(_719, _720 + 0.666666686534881591796875f, _721), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _760, _760) * _710;
                _772 = float4(((_44.SampleLevel(_26, float3(_719, _720 + 0.3333333432674407958984375f, _721), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _750, _750) * _710;
                _773 = float4(((_724.xyz * 4.0f) - 2.0f.xxx) * _740, _740) * _710;
            }
            else
            {
                _770 = _667;
                _771 = 0.0f.xxxx;
                _772 = 0.0f.xxxx;
                _773 = 0.0f.xxxx;
            }
            float3 _779 = _550 - (_20_m105.xyz + (_590 * (-_20_m107.z)));
            float _793 = max(clamp((max(abs(_779.x), abs(_779.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_779.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _873;
            float4 _874;
            float4 _875;
            float4 _876;
            if (_793 < 1.0f)
            {
                float3 _802 = ((_550 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _804 = _802 - floor(_802);
                float4 _808 = _45.SampleLevel(_27, _804, 0.0f);
                float _810 = _694 * (1.0f - _793);
                float _814 = _20_m106.y * 0.5f;
                float _819 = _804.x;
                float _820 = clamp(_804.y, _814, 1.0f - _814) * 0.3333333432674407958984375f;
                float _821 = _804.z;
                float4 _824 = _46.SampleLevel(_26, float3(_819, _820, _821), 0.0f);
                float _840 = _808.x;
                float _851 = _808.y;
                float _862 = _808.z;
                _873 = _770 + (_824.w * _810);
                _874 = _771 + (float4(((_46.SampleLevel(_26, float3(_819, _820 + 0.666666686534881591796875f, _821), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _862, _862) * _810);
                _875 = _772 + (float4(((_46.SampleLevel(_26, float3(_819, _820 + 0.3333333432674407958984375f, _821), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _851, _851) * _810);
                _876 = _773 + (float4(((_824.xyz * 4.0f) - 2.0f.xxx) * _840, _840) * _810);
            }
            else
            {
                _873 = _770;
                _874 = _771;
                _875 = _772;
                _876 = _773;
            }
            float4 _959;
            float4 _960;
            float4 _961;
            float _962;
            if (_793 > 0.0f)
            {
                float3 _885 = ((_550 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _888 = _20_m106.xyz * 0.5f;
                float3 _890 = clamp(_885 - floor(_885), _888, 1.0f.xxx - _888);
                float4 _894 = _47.SampleLevel(_27, _890, 0.0f);
                float _896 = _793 * (1.0f - _667);
                float _900 = _20_m106.y * 0.5f;
                float _905 = _890.x;
                float _906 = clamp(_890.y, _900, 1.0f - _900) * 0.3333333432674407958984375f;
                float _907 = _890.z;
                float4 _910 = _48.SampleLevel(_26, float3(_905, _906, _907), 0.0f);
                float _926 = _894.x;
                float _937 = _894.y;
                float _948 = _894.z;
                _959 = _874 + (float4(((_48.SampleLevel(_26, float3(_905, _906 + 0.666666686534881591796875f, _907), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _948, _948) * _896);
                _960 = _875 + (float4(((_48.SampleLevel(_26, float3(_905, _906 + 0.3333333432674407958984375f, _907), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _937, _937) * _896);
                _961 = _876 + (float4(((_910.xyz * 4.0f) - 2.0f.xxx) * _926, _926) * _896);
                _962 = _873 + (_910.w * _896);
            }
            else
            {
                _959 = _874;
                _960 = _875;
                _961 = _876;
                _962 = _873;
            }
            float _965 = clamp((_962 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _969 = _959;
            _970 = _960;
            _971 = _961;
            _972 = _965 - _667;
            _973 = (_965 + _667) * 0.5f;
        }
        else
        {
            _969 = 0.0f.xxxx;
            _970 = 0.0f.xxxx;
            _971 = 0.0f.xxxx;
            _972 = 0.0f;
            _973 = 1.0f;
        }
        float4 _993 = _971 + float4(_20_m108.x * _973, (_20_m108.y * _973) + ((_20_m108.w * _972) * 0.5f), _20_m108.z * _973, (_20_m108.w * _973) + ((_20_m108.y * _972) * 0.375f));
        float4 _1013 = _970 + float4(_20_m109.x * _973, (_20_m109.y * _973) + ((_20_m109.w * _972) * 0.5f), _20_m109.z * _973, (_20_m109.w * _973) + ((_20_m109.y * _972) * 0.375f));
        float4 _1033 = _969 + float4(_20_m110.x * _973, (_20_m110.y * _973) + ((_20_m110.w * _972) * 0.5f), _20_m110.z * _973, (_20_m110.w * _973) + ((_20_m110.y * _972) * 0.375f));
        float4 _1037 = float4(_577, 1.0f);
        float3 _1043 = max(float3(dot(_993, _1037), dot(_1013, _1037), dot(_1033, _1037)), 0.0f.xxx) * _635;
        float3 _1051 = ((_993.xyz * 0.2125999927520751953125f) + (_1013.xyz * 0.715200006961822509765625f)) + (_1033.xyz * 0.072200000286102294921875f);
        float3 _1055 = _1051 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1051, _1051)));
        float _1057 = abs(_1055.y);
        float3 _1058 = _1055;
        _1058.y = _1057;
        float4 _1059 = float4(_1058.x, _1058.y, _1058.z, 0.0f.xxxx.w);
        _1059.w = 1.0f;
        float4 _1063 = float4(_1055.x, _1057, _1055.z, 1.0f);
        float3 _1068 = max(float3(dot(_993, _1063), dot(_1013, _1063), dot(_1033, _1063)), 0.0f.xxx);
        float _1076 = _1043.z;
        float _1077 = _1043.y;
        float4 _1082 = lerp(float4(_1076, _1077, -1.0f, 0.666666686534881591796875f), float4(_1077, _1076, 0.0f, -0.3333333432674407958984375f), step(_1076, _1077).xxxx);
        float _1083 = _1043.x;
        float _1084 = _1082.x;
        float4 _1092 = lerp(float4(_1084, _1082.yw, _1083), float4(_1083, _1082.yz, _1084), step(_1084, _1083).xxxx);
        float _1093 = _1092.x;
        float _1094 = _1092.w;
        float _1095 = _1092.y;
        float _1097 = _1093 - min(_1094, _1095);
        float _1107 = frac(abs(_1092.z + ((_1094 - _1095) / ((6.0f * _1097) + 9.9999997473787516355514526367188e-05f))));
        float _1114 = min(_1097 / (_1093 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1107 - 0.5f))) * clamp(_1093, 0.0f, 1.0f));
        float _1116 = 2.0f / (2.0f - _1114);
        _1129 = _1059;
        _1130 = _1043;
        _1131 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1107, _1114, _1116).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1114.xxx) * _1116;
        _1132 = max(max(max(_1068.x, _1068.y), _1068.z), 0.0f) * _635;
    }
    else
    {
        _1129 = 0.0f.xxxx;
        _1130 = 1.0f.xxx;
        _1131 = _20_m81.xyz;
        _1132 = _635;
    }
    float3 _1852;
    float _1853;
    float _1854;
    float _1855;
    float _1856;
    float3 _1857;
    float3 _1858;
    [branch]
    if ((clamp(_613 + _626, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f)
    {
        float _1160 = 1.0f - _493;
        float _1163 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_488 * _1160, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1166 = _463.xxx;
        float3 _1168 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1172 = float3(_1166.x ? _1168.x : _11.x, _1166.y ? _1168.y : _11.y, _1166.z ? _1168.z : _11.z) * _20_m89.z;
        float3 _1174 = float3(_1166.x ? _10.xzy.x : _10.x, _1166.y ? _10.xzy.y : _10.y, _1166.z ? _10.xzy.z : _10.z);
        float3 _1176 = abs(_1174) - 0.20000000298023223876953125f.xxx;
        float3 _1179 = max((_1176 * _1176) * _1176, 6.103515625e-05f.xxx);
        float3 _1182 = _1179 / dot(_1179, 1.0f.xxx).xxx;
        float2 _1190 = _1172.xy;
        float2 _1195 = _1172.zy;
        float4 _1205 = ((_51.SampleBias(_27, _1172.xz, _20_m16) * _1182.y) + (_51.SampleBias(_27, _1190, _20_m16) * _1182.z)) + (_51.SampleBias(_27, _1195, _20_m16) * _1182.x);
        float _1206 = _1205.w;
        float _1208 = 1.10000002384185791015625f - _1206;
        float _1217 = max(smoothstep(0.800000011920928955078125f - _1206, _1208, clamp((_613 * _1160) + (_577.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1206, _1208, clamp(_625 * _1160, 0.0f, 1.0f)));
        float _1224 = smoothstep(0.5f, 0.75f, _493);
        float _1226 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _497) * _1163;
        float _1229 = clamp(_1226 + _1224, 0.0f, 1.0f) * max(_613, _626);
        bool _1233 = !((step(_613, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _626)) != 0.0f);
        bool2 _1234 = _1233.xx;
        float2 _1236 = (1.0f - _626).xx;
        float2 _1237 = float2(_1234.x ? float2(3.0f, 4.345600128173828125f).x : _1236.x, _1234.y ? float2(3.0f, 4.345600128173828125f).y : _1236.y);
        float _1238 = 1.0f - _1229;
        float _1241 = _1233 ? _20_m10.x : 1.0f;
        float _1243 = _1241 * _1237.x;
        float _1245 = _1241 * _1237.y;
        float3 _1246 = _1172 * 20.0f;
        float3 _1247 = _1172 * 34.345600128173828125f;
        float3 _1249 = pow(max(_1176, 0.0f.xxx), 10.0f.xxx);
        float3 _1253 = _1249 / max(dot(_1249, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1255 = _1253.y;
        float2 _1256 = _1246.xz * 1.0f;
        float2 _1257 = floor(_1256);
        float2 _1260 = frac(_1257 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1264 = _1260 + dot(_1260, _1260 + 34.345001220703125f.xx).xx;
        float _1265 = _1264.x;
        float _1266 = _1264.y;
        float2 _1270 = frac(float2(_1265 * _1266, _1265 + _1266));
        float2 _1273 = frac((_1257 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1277 = _1273 + dot(_1273, _1273 + 34.345001220703125f.xx).xx;
        float _1278 = _1277.x;
        float _1279 = _1277.y;
        float2 _1283 = frac(float2(_1278 * _1279, _1278 + _1279));
        float _1289 = _1270.x;
        float _1291 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1289);
        float2 _1292 = ((_1256 - _1257) + ((((_1283 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1295 = _1292.y;
        float2 _1299 = float2(_1292.x * 1.25f, _1295 * ((_1295 < 0.0f) ? 1.25f : 0.75f));
        float _1302 = _1243 + _1289;
        float _1306 = _1233 ? frac(_1302) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1302, 0.0f, 1.0f));
        float _1318 = _1270.y;
        float _1321 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1306) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1306)) * step(0.001000000047497451305389404296875f, smoothstep(_1291, 0.0f, length(_1299)))) * step(_1238, _1318 - 0.100000001490116119384765625f);
        float _1324 = _1321 * _1255;
        float _1332 = _1253.z;
        float2 _1333 = _1246.xy * 1.0f;
        float2 _1334 = floor(_1333);
        float2 _1337 = frac(_1334 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1341 = _1337 + dot(_1337, _1337 + 34.345001220703125f.xx).xx;
        float _1342 = _1341.x;
        float _1343 = _1341.y;
        float2 _1347 = frac(float2(_1342 * _1343, _1342 + _1343));
        float2 _1350 = frac((_1334 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1354 = _1350 + dot(_1350, _1350 + 34.345001220703125f.xx).xx;
        float _1355 = _1354.x;
        float _1356 = _1354.y;
        float2 _1360 = frac(float2(_1355 * _1356, _1355 + _1356));
        float _1366 = _1347.x;
        float _1368 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1366);
        float2 _1369 = ((_1333 - _1334) + ((((_1360 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1372 = _1369.y;
        float2 _1376 = float2(_1369.x * 1.25f, _1372 * ((_1372 < 0.0f) ? 1.25f : 0.75f));
        float _1379 = _1243 + _1366;
        float _1383 = _1233 ? frac(_1379) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1379, 0.0f, 1.0f));
        float _1395 = _1347.y;
        float _1398 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1383) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1383)) * step(0.001000000047497451305389404296875f, smoothstep(_1368, 0.0f, length(_1376)))) * step(_1238, _1395 - 0.100000001490116119384765625f);
        float _1401 = _1398 * _1332;
        float _1409 = _1253.x;
        float2 _1410 = _1246.zy * 1.0f;
        float2 _1411 = floor(_1410);
        float2 _1414 = frac(_1411 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1418 = _1414 + dot(_1414, _1414 + 34.345001220703125f.xx).xx;
        float _1419 = _1418.x;
        float _1420 = _1418.y;
        float2 _1424 = frac(float2(_1419 * _1420, _1419 + _1420));
        float2 _1427 = frac((_1411 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1431 = _1427 + dot(_1427, _1427 + 34.345001220703125f.xx).xx;
        float _1432 = _1431.x;
        float _1433 = _1431.y;
        float2 _1437 = frac(float2(_1432 * _1433, _1432 + _1433));
        float _1443 = _1424.x;
        float _1445 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1443);
        float2 _1446 = ((_1410 - _1411) + ((((_1437 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1449 = _1446.y;
        float2 _1453 = float2(_1446.x * 1.25f, _1449 * ((_1449 < 0.0f) ? 1.25f : 0.75f));
        float _1456 = _1243 + _1443;
        float _1460 = _1233 ? frac(_1456) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1456, 0.0f, 1.0f));
        float _1472 = _1424.y;
        float _1475 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1460) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1460)) * step(0.001000000047497451305389404296875f, smoothstep(_1445, 0.0f, length(_1453)))) * step(_1238, _1472 - 0.100000001490116119384765625f);
        float _1478 = _1475 * _1409;
        float2 _1491 = (float4(((clamp(_1299 / _1291.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1283.x)) * _1321) * _1255, _1324, _1318).xy + float4(((clamp(_1376 / _1368.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1360.x)) * _1398) * _1332, _1401, _1395).xy) + float4(((clamp(_1453 / _1445.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1437.x)) * _1475) * _1409, _1478, _1472).xy;
        float _1493 = max(_1478, max(_1324, _1401));
        float4 _1496 = float4(_1491, _1493, 0.0f);
        float2 _1498 = _1247.xz * 1.0f;
        float2 _1499 = floor(_1498);
        float2 _1502 = frac(_1499 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1506 = _1502 + dot(_1502, _1502 + 34.345001220703125f.xx).xx;
        float _1507 = _1506.x;
        float _1508 = _1506.y;
        float2 _1512 = frac(float2(_1507 * _1508, _1507 + _1508));
        float2 _1515 = frac((_1499 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1519 = _1515 + dot(_1515, _1515 + 34.345001220703125f.xx).xx;
        float _1520 = _1519.x;
        float _1521 = _1519.y;
        float2 _1525 = frac(float2(_1520 * _1521, _1520 + _1521));
        float _1531 = _1512.x;
        float _1533 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1531);
        float2 _1534 = ((_1498 - _1499) + ((((_1525 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1537 = _1534.y;
        float2 _1541 = float2(_1534.x * 1.25f, _1537 * ((_1537 < 0.0f) ? 1.25f : 0.75f));
        float _1544 = _1245 + _1531;
        float _1548 = _1233 ? frac(_1544) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1544, 0.0f, 1.0f));
        float _1560 = _1512.y;
        float _1563 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1548) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1548)) * step(0.001000000047497451305389404296875f, smoothstep(_1533, 0.0f, length(_1541)))) * step(_1238, _1560 - 0.100000001490116119384765625f);
        float _1566 = _1563 * _1255;
        float2 _1571 = _1247.xy * 1.0f;
        float2 _1572 = floor(_1571);
        float2 _1575 = frac(_1572 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1579 = _1575 + dot(_1575, _1575 + 34.345001220703125f.xx).xx;
        float _1580 = _1579.x;
        float _1581 = _1579.y;
        float2 _1585 = frac(float2(_1580 * _1581, _1580 + _1581));
        float2 _1588 = frac((_1572 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1592 = _1588 + dot(_1588, _1588 + 34.345001220703125f.xx).xx;
        float _1593 = _1592.x;
        float _1594 = _1592.y;
        float2 _1598 = frac(float2(_1593 * _1594, _1593 + _1594));
        float _1604 = _1585.x;
        float _1606 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1604);
        float2 _1607 = ((_1571 - _1572) + ((((_1598 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1610 = _1607.y;
        float2 _1614 = float2(_1607.x * 1.25f, _1610 * ((_1610 < 0.0f) ? 1.25f : 0.75f));
        float _1617 = _1245 + _1604;
        float _1621 = _1233 ? frac(_1617) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1617, 0.0f, 1.0f));
        float _1633 = _1585.y;
        float _1636 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1621) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1621)) * step(0.001000000047497451305389404296875f, smoothstep(_1606, 0.0f, length(_1614)))) * step(_1238, _1633 - 0.100000001490116119384765625f);
        float _1639 = _1636 * _1332;
        float2 _1644 = _1247.zy * 1.0f;
        float2 _1645 = floor(_1644);
        float2 _1648 = frac(_1645 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1652 = _1648 + dot(_1648, _1648 + 34.345001220703125f.xx).xx;
        float _1653 = _1652.x;
        float _1654 = _1652.y;
        float2 _1658 = frac(float2(_1653 * _1654, _1653 + _1654));
        float2 _1661 = frac((_1645 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1665 = _1661 + dot(_1661, _1661 + 34.345001220703125f.xx).xx;
        float _1666 = _1665.x;
        float _1667 = _1665.y;
        float2 _1671 = frac(float2(_1666 * _1667, _1666 + _1667));
        float _1677 = _1658.x;
        float _1679 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1677);
        float2 _1680 = ((_1644 - _1645) + ((((_1671 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1683 = _1680.y;
        float2 _1687 = float2(_1680.x * 1.25f, _1683 * ((_1683 < 0.0f) ? 1.25f : 0.75f));
        float _1690 = _1245 + _1677;
        float _1694 = _1233 ? frac(_1690) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1690, 0.0f, 1.0f));
        float _1706 = _1658.y;
        float _1709 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1694) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1694)) * step(0.001000000047497451305389404296875f, smoothstep(_1679, 0.0f, length(_1687)))) * step(_1238, _1706 - 0.100000001490116119384765625f);
        float _1712 = _1709 * _1409;
        float2 _1720 = (float4(((clamp(_1541 / _1533.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1525.x)) * _1563) * _1255, _1566, _1560).xy + float4(((clamp(_1614 / _1606.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1598.x)) * _1636) * _1332, _1639, _1633).xy) + float4(((clamp(_1687 / _1679.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1671.x)) * _1709) * _1409, _1712, _1706).xy;
        float4 _1725 = float4(_1720, max(_1712, max(_1566, _1639)), 0.0f);
        float _1727 = step(max(float2(_1291 * _1321, _418) * _1255, max(float2(_1368 * _1398, _418) * _1332, float2(_1445 * _1475, _418) * _1409)).x, 0.00999999977648258209228515625f);
        float2 _1731 = _1496.xy + (_1725.xy * _1727);
        float3 _1740 = float3((_1205.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1731.x, _1731.y, 0.0f.xxx.z);
        float2 _1744 = float2(0.0f, (_20_m10.x * _20_m89.z) * 0.75f);
        float3 _1747 = float3(_1174.x, 0.0f, _1174.z);
        float3 _1753 = abs(_1747 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1747, _1747)))) - 0.20000000298023223876953125f.xxx;
        float3 _1756 = max((_1753 * _1753) * _1753, 6.103515625e-05f.xxx);
        float3 _1759 = _1756 / dot(_1756, 1.0f.xxx).xxx;
        float _1778 = _1759.z;
        float _1780 = _1759.x;
        float4 _1782 = (_52.SampleBias(_27, _1190, _20_m16) * _1778) + (_52.SampleBias(_27, _1195, _20_m16) * _1780);
        float2 _1794 = _1740.xy + ((((_1782.xy * 2.0f) - 1.0f.xx) * ((_52.SampleBias(_27, _1190 + _1744, _20_m16).w * _1778) + (_52.SampleBias(_27, _1195 + _1744, _20_m16).w * _1780))) * _1229);
        float3 _1795 = float3(_1794.x, _1794.y, _1740.z);
        float _1796 = _1782.z;
        float _1801 = max(max(max(_1496.zw * step(0.00999999977648258209228515625f, _1493), _1725.zw * _1727).x, step(1.0099999904632568359375f - _1229, _1205.z)), smoothstep(1.0f - _1796, 1.10000002384185791015625f - _1796, _1229) * _1229);
        float2 _1802 = _1794.xy;
        _1795.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1802, _1802), 0.0f, 1.0f)));
        float3 _1809 = normalize(_1795);
        float3 _1810 = cross(_577, float3(0.0f, 1.0f, 0.0f));
        bool3 _1813 = (dot(_1810, _1810) > 6.103515625e-05f).xxx;
        float3 _1814 = normalize(_1810);
        float3 _1815 = float3(_1813.x ? _1814.x : float3(1.0f, 0.0f, 0.0f).x, _1813.y ? _1814.y : float3(1.0f, 0.0f, 0.0f).y, _1813.z ? _1814.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1826 = min(_497, 0.0500000007450580596923828125f);
        float _1827 = lerp(_497, _1826, _1801);
        float _1844 = lerp(1.0f, 0.5f, (_1217 * (1.0f - _1163)) * (1.0f - _1226));
        _1852 = normalize(lerp(_577, normalize(((_1815 * _1809.x) + (cross(_1815, _577) * _1809.y)) + (_577 * _1809.z)), _1801.xxx));
        _1853 = _1801;
        _1854 = _1826;
        _1855 = _1801;
        _1856 = max(_1827 - ((0.20000000298023223876953125f * _1163) * _1217), min(0.20000000298023223876953125f, _1827));
        _1857 = _510 * _1844;
        _1858 = lerp(_488, _488 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_488, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1801 * _1224).xxx) * _1844;
    }
    else
    {
        _1852 = _577;
        _1853 = 0.0f;
        _1854 = 0.00999999977648258209228515625f;
        _1855 = 0.0f;
        _1856 = _497;
        _1857 = _510;
        _1858 = _488;
    }
    float3 _2030;
    float _2031;
    float _2032;
    float3 _2033;
    float3 _2034;
    float _2035;
    [branch]
    if (_616 > 0.00999999977648258209228515625f)
    {
        bool3 _1862 = _463.xxx;
        float3 _1864 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1865 = float3(_1862.x ? _1864.x : _11.x, _1862.y ? _1864.y : _11.y, _1862.z ? _1864.z : _11.z);
        float3 _1868 = _1865 * _20_m89.z;
        float3 _1870 = float3(_1862.x ? _10.xzy.x : _10.x, _1862.y ? _10.xzy.y : _10.y, _1862.z ? _10.xzy.z : _10.z);
        float3 _1872 = abs(_1870) - 0.20000000298023223876953125f.xxx;
        float3 _1875 = max((_1872 * _1872) * _1872, 6.103515625e-05f.xxx);
        float3 _1878 = _1875 / dot(_1875, 1.0f.xxx).xxx;
        float _1894 = _1878.y;
        float _1896 = _1878.z;
        float _1899 = _1878.x;
        float4 _1901 = ((_53.SampleBias(_27, _1868.xz, _20_m16) * _1894) + (_53.SampleBias(_27, _1868.xy, _20_m16) * _1896)) + (_53.SampleBias(_27, _1868.zy, _20_m16) * _1899);
        float _1902 = _1870.y;
        float _1909 = clamp(_616 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1865.y) * clamp(_616 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1920 = smoothstep(2.0f - _1909, 2.349999904632568359375f - _1909, ((_1902 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1901.z) * ((_495 * _495) * float(gl_FrontFacing));
        float _1932 = lerp(1.0f, 0.5f, ((_1909 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1858 * (1.0f - _493), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1901.w) * ((_1902 * 0.25f) + 0.75f));
        float3 _1934 = _1920.xxx;
        float2 _1940 = (_1901.xy * 2.0f) - 1.0f.xx;
        float3 _1941 = float3(_1940.x, _1940.y, _416.z);
        float2 _1942 = _1940.xy;
        _1941.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1942, _1942), 0.0f, 1.0f)));
        float2 _1950 = _1941.xy * 2.0f;
        float3 _1952 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1950.x, _1950.y, _1941.z), _1934);
        float3 _1956 = _1952 * rsqrt(max(6.103515625e-05f, dot(_1952, _1952)));
        float _1957 = _577.y;
        float _1960 = step(0.00999999977648258209228515625f, 1.0f - (_1957 * _1957));
        float _1964 = lerp(_577.z, _1957, _1960);
        float3 _1971 = (float3(0.0f, _1960, 1.0f - _1960) - (_577 * _1964)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1964 * _1964)));
        float3 _1985 = _1868 * 4.0f;
        float4 _2005 = ((_54.SampleLevel(_25, _1985.xz, 0.0f) * _1894) + (_54.SampleLevel(_25, _1985.xy, 0.0f) * _1896)) + (_54.SampleLevel(_25, _1985.zy, 0.0f) * _1899);
        float2 _2008 = (_2005.xz * 2.0f) - 1.0f.xx;
        float _2019 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2008.x, _2005.y, _2008.y), (floor(_454 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2020 = _2019 * _2019;
        float _2023 = _2020 * ((_2020 * 2.0f) * _1920);
        float3 _2024 = 1.0f.xxx * _2023;
        _2030 = ((cross(_1971, _577) * _1956.x) + (_1971 * _1956.y)) + (_577 * _1956.z);
        _2031 = _1855 + _2023;
        _2032 = lerp(lerp(_1856, 0.89999997615814208984375f, clamp(_1920 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2023);
        _2033 = lerp(_1857 * _1932, 0.3079999983310699462890625f.xxx, _1934) + (_2024 * 0.5f);
        _2034 = lerp(_1858 * _1932, 0.87999999523162841796875f.xxx, _1934) + _2024;
        _2035 = lerp(_493, 0.0f, _1920);
    }
    else
    {
        _2030 = _577;
        _2031 = _1855;
        _2032 = _1856;
        _2033 = _1857;
        _2034 = _1858;
        _2035 = _493;
    }
    bool2 _2039 = (_50_m49 != 0.0f).xx;
    float3x3 _2053 = float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz);
    float _2092 = (_50_m50 * (_50_m51 - dot(_550, _50_m44.xyz))) + ((_60.SampleBias(_61, (lerp(float2(_2039.x ? _7.x : _3.x, _2039.y ? _7.y : _3.y), mul(_2053, _550 - mul(_23_m0[_13]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _50_m45.xx) * _50_m41.xy) + _50_m41.zw, _20_m16).x - ((max(_50_m47, _23_m0[_13]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _50_m52);
    if ((clamp(_2092 * _50_m46, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f)
    {
        discard;
    }
    float _2121 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _2123 = abs(_2121);
    if (min(_23_m0[_13]._m1.x - ((_23_m0[_13]._m1.x >= 0.0f) ? _2123 : (-_2123)), (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) - _2121) < 0.0f)
    {
        discard;
    }
    float _2134 = 0.959999978542327880859375f - (_2035 * 0.959999978542327880859375f);
    float3 _2135 = _2034 * _2134;
    float3 _2138 = lerp(0.039999999105930328369140625f.xxx * _492.y, _2034, _2035.xxx);
    float3 _2139 = _2138 * _495;
    float3 _2140 = _2033 * _2134;
    float _2142 = max(_2032 * _2032, 0.0078125f);
    float2 _2155 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _2155.y = -_2155.y;
    float2 _2168 = ((sqrt(sqrt(abs(_2155 * 0.5f))) * float2(int2(sign(_2155)))) * 0.5f) + 0.5f.xx;
    float4 _2171 = float4(_2168.x, _2168.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2171.z = 1.0f;
    _2171.w = (_2031 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2184 = lerp(-_37_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2188 = normalize(float3(_2184.x, 6.103515625e-05f, _2184.z));
    float3 _2198 = lerp(_37_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2202 = _2198 * lerp(_37_m3.w, 1.0f, _20_m91.w);
    int _2206 = int(_580.x);
    int _2207 = int(_580.y);
    float4 _2211 = _41.Load(int3(int3(_2206, _2207, 0).xy, 0));
    float _2216 = _2211.y;
    float _2219 = lerp(lerp(1.0f, _2211.x, _39_m6.x), 1.0f, _20_m80.z);
    float _2220 = dot(_2030, _2184);
    float3 _2227 = _2140 * _20_m79.z;
    float3 _2228 = _2227 * 0.64999997615814208984375f;
    float _2232 = dot(_2135, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2245 = clamp(-dot(_2188.xz, normalize(_590.xz)), 0.0f, 1.0f);
    float _2249 = 1.0f - _20_m91.x;
    float _2257 = smoothstep(0.25f, 1.0f, clamp(lerp(_2220, ((-_2220) * ((_2220 * 0.5f) - 1.0f)) + 0.5f, (_2245 * smoothstep(0.25f, 0.75f, 1.0f - abs(_590.y))) * _2249) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f));
    float _2264 = max(max(_2257, _2257), _2257) - min(min(_2257, _2257), _2257);
    float _2266 = smoothstep(0.25f, 1.0f, dot(_2030, _590));
    float _2273 = min(min(_2216, 1.0f), _2257);
    float _2274 = _2266 * _2216;
    float3 _2278 = ((clamp(dot(_577, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1131, 1.0f.xxx, (_20_m80.y * _2273).xxx);
    float3 _2280 = _2273.xxx;
    float3 _2303 = _2219.xxx;
    float3 _2304 = lerp((_2278 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1132), 1.5f), clamp(_1132, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2202, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2202, _2280) + ((_2278 * clamp(_1132, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2198 * _20_m91.y)))) * _20_m79.y, _2303);
    float3 _2305 = lerp(lerp(lerp(dot(_2228, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2228, 1.2000000476837158203125f.xxx), _2227, clamp((_2216 * _2266) + _2257, 0.0f, 1.0f).xxx), _2135, _2280);
    float3 _2311 = _2305 * ((1.0f - _2264).xxx + (_2257.xxxx.xyz * _2264));
    float3 _2320 = lerp(lerp(_2227, lerp(_2232.xxx, _2135, 1.2000000476837158203125f.xxx), _2274.xxx), _2311 * clamp(dot(_2305, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2311, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2303);
    float4 _2324 = float4(_2320, _2219);
    float _2326 = lerp(_2274, _2273, _2219);
    float _2329 = lerp(_20_m79.z, 1.0f, _2326);
    float3 _2337 = float3(_590.x, lerp(0.5f, _2184.y, _2219), _590.z);
    float _2350 = clamp(dot(_1852, _454), 0.0f, 1.0f);
    float _2351 = dot(_1852, normalize(((_2184 * _2219) + ((_2337 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2337, _2337)))) * 2.0f)) + (_454 * (2.0f + _2219))));
    float _2352 = _2142 * _2142;
    float _2356 = (((_2351 * _2352) - _2351) * _2351) + 1.0f;
    float _2357 = _2356 * _2356;
    float _2361 = 2.0f * _2350;
    float _2363 = (1.0f + _2350) - _2350;
    float _2380 = (1.0f - _50_m6) + (_501 * _50_m6);
    float3 _2382 = ((_2304 * _2320) * _2380) + (((_2138 * clamp((((_2352 != _2357) ? (_2352 / _2357) : 1.0f) * (0.5f / ((_2361 + (_2142 * _2363)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2304 * (((_2326 * 0.5f) + 0.5f) * _2329)) * 1.0f)) * _20_m92.w);
    float _2383 = dot(_2382, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2386 = clamp(_2383 - 0.5f, 0.0f, 0.5f);
    float3 _2422 = normalize(cross(_590, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float _2428 = dot(_454, _2030);
    float _2430 = 1.0f - abs(_2428);
    float _2452 = dot(_2188, _2030);
    float _2464 = 1.0f - _2219;
    float _2491 = lerp(_2032, _1854, _1853);
    float _2492 = _2491 * _2491;
    float _2493 = _2350 * _2350;
    float _2494 = _2493 * _2350;
    float2 _2495 = float2(1.0f, _2350);
    float2 _2498 = float2(1.0f, _2492);
    float3 _2501 = float3(1.0f, _2492, (_2492 * _2492) * _2492);
    float _2506 = dot(mul(_2495, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2498) / dot(mul(float3(1.0f, _2493, _2494), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2501);
    float _2511 = dot(mul(_2495, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2498) / dot(mul(float3(1.0f, _2350, _2494), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2501);
    float3 _2514 = (_2139 * _2506) + _2511.xxx;
    float _2515 = _2506 + _2511;
    float3 _2543 = lerp(_2383.xxx, _2382, ((_2386 * _2386) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m88.w), lerp(0.89999997615814208984375f, 0.5f, _20_m88.w), _2430)) * _20_m87.w) * min(min(clamp(dot(_557, _2422) + 1.0f, 0.0f, 1.0f), 1.0f), _2216)) * (lerp(0.25f.xxx, _2135, _20_m88.z.xxx) * clamp(dot(_2422, _2030), 0.0f, 1.0f))) + ((((((lerp(_1130 * (1.0f / max(max(max(_1130.x, _1130.y), _1130.z) * 0.5f, 1.0f)), _2202, _2303) * clamp(lerp(dot(_1129.xyz, _2030) * _1129.w, ((-_2452) * ((_2452 * 0.5f) - 1.0f)) + 0.5f, _2219), 0.0f, 1.0f)) * ((_2464 + (_2245 * _2219)) * _2249)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2430)) * min(1.0f, _2216)) * (_2464 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2232) * _2219))) * max(0.1500000059604644775390625f.xxx, _2135)));
    float2 _2546 = float2(_580);
    float2 _2548 = floor(_2546 * 0.03125f);
    int _2556 = int((_2548.x + (_2548.y * _35_m5)) * 8.0f);
    float _2563 = floor(_435 - (_20_m3.y * _35_m11));
    float _2567 = clamp(_2563, 0.0f, _35_m7 - 1.0f);
    int _2569 = int(_2567 * 8.0f);
    float3 _2571;
    _2571 = (_2543 + ((((_538.xyz * _50_m25.xyz) * _50_m7) + (_50_m43.xyz * clamp((_50_m48 - _2092) * _50_m46, 0.0f, 1.0f))) * _2380)) + ((((_59.SampleBias(_26, (normalize(mul(_2053, _1852)).xy * 0.5f) + 0.5f.xx, _20_m16).xyz * _50_m40.xyz) * ((_2514 + ((_2139 * ((1.0f - _2515) / _2515)) * _2514)) * 1.0f)) * ((clamp(_1132, 0.5f, 1.5f) * _20_m79.w) * _2329)) * _1131);
    float3 _2572;
    [loop]
    for (int _2574 = 0; _2574 <= 7; _2571 = _2572, _2574++)
    {
        uint _2592 = (_2563 <= _2567) ? (_31.Load(uint(_2556 + _2574) * 4 + 0) & _31.Load(uint((_20_m21.y + _2569) + _2574) * 4 + 0)) : 0u;
        uint _2593 = uint(_2574);
        _2572 = _2571;
        uint _2598;
        float3 _2595;
        [loop]
        for (uint _2597 = _2592; _2597 != 0u; _2572 = _2595, _2597 = _2598)
        {
            uint _2602 = firstbitlow(_2597);
            _2598 = _2597 ^ (1u << (_2602 & 31u));
            int _2608 = int((32u * _2593) + _2602) * 8;
            int _2611 = _2608 + 1;
            int _2614 = _2608 + 2;
            int _2617 = _2608 + 3;
            int _2620 = _2608 + 4;
            int _2623 = _2608 + 5;
            int _2626 = _2608 + 6;
            int _2629 = _2608 + 7;
            uint _2633 = uint(_37_m6[_2623].w);
            float _2708;
            if ((_2633 & 1u) == 1u)
            {
                uint _2639 = asuint(_37_m6[_2623].x);
                uint _2646 = asuint(_37_m6[_2623].y);
                uint _2653 = asuint(_37_m6[_2623].z);
                uint _2660 = asuint(_37_m6[_2626].x);
                uint _2667 = asuint(_37_m6[_2626].y);
                uint _2674 = asuint(_37_m6[_2626].z);
                float3 _2693 = abs(mul(float4(_550 - _37_m6[_2611].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2639).x, spvUnpackHalf2x16(_2653).x, spvUnpackHalf2x16(_2667).x, 0.0f), float4(spvUnpackHalf2x16(_2639 >> 16u).x, spvUnpackHalf2x16(_2653 >> 16u).x, spvUnpackHalf2x16(_2667 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2646).x, spvUnpackHalf2x16(_2660).x, spvUnpackHalf2x16(_2674).x, 0.0f), float4(spvUnpackHalf2x16(_2646 >> 16u).x, spvUnpackHalf2x16(_2660 >> 16u).x, spvUnpackHalf2x16(_2674 >> 16u).x, 0.0f))).xyz);
                float _2700 = _37_m6[_2629].x * 0.5f;
                float _2706 = 1.0f - clamp((max(max(_2693.x, _2693.y), _2693.z) - (_2700 + 0.5f)) / (0.5f - _2700), 0.0f, 1.0f);
                _2708 = _2706 * _2706;
            }
            else
            {
                _2708 = 1.0f;
            }
            if (false || (_2708 < 0.001000000047497451305389404296875f))
            {
                _2595 = _2572;
                continue;
            }
            float3 _3401;
            if (_37_m6[_2608].w < 1.5f)
            {
                float3 _3400;
                do
                {
                    uint _2721 = asuint(_37_m6[_2617].w);
                    if ((_2721 == 16u) || ((_37_m6[_2617].z + _20_m91.z) < 0.5f))
                    {
                        _3400 = _2572;
                        break;
                    }
                    bool _2733 = (uint(_37_m6[_2608].w) & 1u) == 0u;
                    bool _2737 = (!_2733) && (_37_m6[_2614].z > 0.0f);
                    bool _2738 = _2721 == 4u;
                    float _2739 = float(_2733);
                    float _2747 = (0.5f + (0.5f * _37_m6[_2614].y)) - abs(_37_m6[_2614].x);
                    float _2748 = _37_m6[_2614].y - _2747;
                    float _2755 = abs(max((1.0f - abs(_2747)) - abs(_2748), 0.00048828125f));
                    float3 _2759 = normalize(float3(_2747, _2748, (_37_m6[_2614].x >= 0.0f) ? _2755 : (-_2755)));
                    float _2765 = lerp(_37_m6[_2626].w, max(2.0f * _37_m6[_2620].y, 0.100000001490116119384765625f), float(_2738));
                    float3 _2770 = _37_m6[_2611].xyz - _550;
                    float3 _2771 = -_2759;
                    float3 _2776 = lerp(_2770, _2771 * dot(_2770, _2771), (float(_2738 && (_37_m6[_2620].z > 0.5f)) * _2739).xxx);
                    float _2777 = dot(_2776, _2776);
                    float _2778 = rsqrt(_2777);
                    float3 _2779 = _2776 * _2778;
                    float3 _2812;
                    float _2813;
                    if (_2737)
                    {
                        float3 _2783 = (_2759 * _37_m6[_2614].z) * 0.5f;
                        float3 _2784 = _2776 - _2783;
                        float3 _2785 = _2776 + _2783;
                        float _2786 = length(_2784);
                        float _2787 = length(_2785);
                        float3 _2796 = normalize(cross(cross(_2759, _2779), _2759));
                        _2812 = _2796;
                        _2813 = ((1.0f / ((((_2786 * _2787) + dot(_2784, _2785)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2796, _2784) / _2786) + (dot(_2796, _2785) / _2787)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_37_m6[_2614].z * _2778, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2812 = _2779;
                        _2813 = 1.0f;
                    }
                    float _2835;
                    if (_2765 < 0.0f)
                    {
                        float _2829 = _2777 * (_37_m6[_2611].w * _37_m6[_2611].w);
                        float _2832 = clamp(1.0f - (_2829 * _2829), 0.0f, 1.0f);
                        _2835 = lerp(1.0f / (_2777 + 1.0f), _2813, float(_2737)) * (_2832 * _2832);
                    }
                    else
                    {
                        float3 _2818 = _2776 * _37_m6[_2611].w;
                        _2835 = _2813 * pow(1.0f - clamp(dot(_2818, _2818), 0.0f, 1.0f), _2765);
                    }
                    float _2840 = clamp((dot(_2812, _2771) - _37_m6[_2614].z) * _37_m6[_2614].w, 0.0f, 1.0f);
                    float _2843 = _2835 * lerp(1.0f, _2840 * _2840, _2739);
                    int _2845 = int(_37_m6[_2629].w);
                    float _2949;
                    if ((!_2737) && (_2845 >= 0))
                    {
                        uint _2851 = uint(_2845);
                        float2 _2942;
                        [branch]
                        if (_2739 != 0.0f)
                        {
                            float4 _2932 = mul(_64_m1[_2851], float4(_550.x, _622, _550.z, 1.0f));
                            _2942 = _64_m0[_2851].xy + (clamp(_2932.xy / _2932.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2851].zw);
                        }
                        else
                        {
                            float3 _2866 = mul(float4(-_2776, 0.0f), _64_m1[_2851]).xyz;
                            float3 _423 = _2866;
                            float3 _422 = _2866;
                            float3 _421 = abs(_2866);
                            uint _2875 = uint(int(_421.y > _421.x));
                            uint _2881 = (_421.z > _421[_2875]) ? 2u : _2875;
                            uint _2887 = (_2881 * 2u) + uint(_422[_2881] < 0.0f);
                            float _2891 = abs(_423[_2887 / 2u]);
                            float _2911 = 0.5f - (0.000244140625f / _64_m0[_2851].w);
                            _2942 = _64_m0[_2851].xy + (clamp(float2((float(_2887) + ((((_423[uint(_371[_2887].x)] * _372[_2887].x) / _2891) * _2911) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_423[uint(_371[_2887].y)] * _372[_2887].y) / _2891) * _2911)), 0.0f.xx, 1.0f.xx) * _64_m0[_2851].zw);
                        }
                        _2949 = _2843 * _62.SampleLevel(_26, _2942, 0.0f).x;
                    }
                    else
                    {
                        _2949 = _2843;
                    }
                    float _2950 = _2949 * _2708;
                    float3 _3399;
                    do
                    {
                        float3 _3398;
                        [branch]
                        if (_2950 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2738)
                            {
                                _3399 = lerp(_2572, _37_m6[_2608].xyz, (_2950 * (_37_m6[_2620].x * ((1.0f - _37_m6[_2620].w) + (smoothstep(-0.5f, 0.5f, dot(_578, _2812)) * _37_m6[_2620].w)))).xxx);
                                break;
                            }
                            float _2970 = dot(_2030, _2812);
                            float _2971 = clamp(_2970, 0.0f, 1.0f);
                            float _3274;
                            if (_2721 != 0u)
                            {
                                bool _2977 = _2733 || ((_2633 & 2u) != 0u);
                                int _3026;
                                if (_2977)
                                {
                                    _3026 = int(_37_m6[_2617].x);
                                }
                                else
                                {
                                    uint _2981 = asuint(_37_m6[_2614].w);
                                    uint _2983 = asuint(_37_m6[_2617].x);
                                    float3 _2984 = _550 - _37_m6[_2611].xyz;
                                    float3 _2985 = abs(_2984);
                                    float _2986 = _2985.x;
                                    float _2987 = _2985.y;
                                    float _2989 = _2985.z;
                                    int _3021;
                                    if ((_2986 > _2987) && (_2986 > _2989))
                                    {
                                        _3021 = int((_2984.x > 0.0f) ? (_2981 >> 24u) : ((_2981 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3013;
                                        if (_2987 > _2989)
                                        {
                                            _3013 = int((_2984.y > 0.0f) ? ((_2981 >> 8u) & 255u) : (_2981 & 255u));
                                        }
                                        else
                                        {
                                            _3013 = int((_2984.z > 0.0f) ? ((_2983 >> 8u) & 255u) : (_2983 & 255u));
                                        }
                                        _3021 = _3013;
                                    }
                                    _3026 = (_3021 < 80) ? _3021 : (-1);
                                }
                                bool _3027 = _3026 >= 0;
                                float _3273;
                                if (_3027)
                                {
                                    float3 _3034 = _550 - _37_m6[_2611].xyz;
                                    float4 _3054 = mul(_39_m10[_3026], float4((_550 - ((_3034 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3034, _3034)))) * _39_m11[_3026].x)) + (_578 * (_39_m11[_3026].y * 5.0f)), 1.0f));
                                    float _3055 = _3054.w;
                                    float3 _3058 = _3054.xyz / _3055.xxx;
                                    float2 _3059 = _3058.xy;
                                    float3 _3067 = _3058.xyz;
                                    bool3 _3068 = bool3(_3067.x <= 0.0f.xxx.x, _3067.y <= 0.0f.xxx.y, _3067.z <= 0.0f.xxx.z);
                                    bool3 _3069 = bool3(_3067.x >= 1.0f.xxx.x, _3067.y >= 1.0f.xxx.y, _3067.z >= 1.0f.xxx.z);
                                    float _3072 = _3058.z;
                                    float2 _3083 = ((_3059 * (_39_m12[_3026].zw - _39_m12[_3026].xy)) + _39_m12[_3026].xy).xy * _39_m13.zw;
                                    float2 _3085 = floor(_3083 + 0.5f.xx);
                                    float2 _3086 = _3083 - _3085;
                                    float _3088 = _3086.x + 0.5f;
                                    float _3089 = _3088 * _3088;
                                    float _3092 = 1.0f - _3086.x;
                                    float _3093 = min(_3086.x, 0.0f);
                                    float _3096 = _3086.x + 1.0f;
                                    float _3097 = max(_3086.x, 0.0f);
                                    float _3109 = _3086.y + 0.5f;
                                    float _3110 = _3109 * _3109;
                                    float _3113 = 1.0f - _3086.y;
                                    float _3114 = min(_3086.y, 0.0f);
                                    float _3117 = _3086.y + 1.0f;
                                    float _3118 = max(_3086.y, 0.0f);
                                    float3 _3130 = float3(0.1599999964237213134765625f * _3092, 0.1599999964237213134765625f * ((_3096 - (_3097 * _3097)) + 1.0f), _3089 * 0.07999999821186065673828125f);
                                    float3 _3131 = float3(0.1599999964237213134765625f * ((_3089 * 0.5f) - _3086.x), 0.1599999964237213134765625f * ((_3092 - (_3093 * _3093)) + 1.0f), 0.1599999964237213134765625f * _3096) + _3130;
                                    float3 _3133 = float3(0.1599999964237213134765625f * _3113, 0.1599999964237213134765625f * ((_3117 - (_3118 * _3118)) + 1.0f), _3110 * 0.07999999821186065673828125f);
                                    float3 _3134 = float3(0.1599999964237213134765625f * ((_3110 * 0.5f) - _3086.y), 0.1599999964237213134765625f * ((_3113 - (_3114 * _3114)) + 1.0f), 0.1599999964237213134765625f * _3117) + _3133;
                                    float3 _3140 = ((_3130 / _3131) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.xxx;
                                    float3 _3142 = ((_3133 / _3134) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.yyy;
                                    float2 _3144 = _3085 * _39_m13.xy;
                                    float _3145 = _3140.x;
                                    float _3146 = _3142.x;
                                    float _3149 = _3140.y;
                                    float _3152 = _3140.z;
                                    float _3155 = _3142.y;
                                    float _3162 = _3142.z;
                                    float _3169 = _3131.x;
                                    float _3170 = _3134.x;
                                    float _3172 = _3131.y;
                                    float _3174 = _3131.z;
                                    float _3176 = _3134.y;
                                    float _3180 = _3134.z;
                                    float _3238 = (((((((_3169 * _3170) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3145, _3146), _415).xy, _3072)) + ((_3172 * _3170) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3149, _3146), _415).xy, _3072))) + ((_3174 * _3170) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3152, _3146), _415).xy, _3072))) + ((_3169 * _3176) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3145, _3155), _415).xy, _3072))) + ((_3172 * _3176) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3149, _3155), _415).xy, _3072))) + ((_3174 * _3176) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3152, _3155), _415).xy, _3072))) + ((_3169 * _3180) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3145, _3162), _415).xy, _3072));
                                    float2 _3259 = min(_3059, 1.0f.xx - _3059);
                                    _3273 = _3027 ? lerp(1.0f, (any(bool3(_3068.x || _3069.x, _3068.y || _3069.y, _3068.z || _3069.z)) || ((asuint(_3072) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3238 + ((_3172 * _3180) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3149, _3162), _415).xy, _3072))) + ((_3174 * _3180) * _40.SampleCmpLevelZero(_28, float3(_3144 + float2(_3152, _3162), _415).xy, _3072))), _2977 ? min(_39_m11[_3026].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_39_m11[_3026].z - _3055) * 0.25f, min(_3259.x, _3259.y)))) : _39_m11[_3026].w) : 1.0f;
                                }
                                else
                                {
                                    _3273 = clamp(dot(_557, _2812) + 1.0f, 0.0f, 1.0f);
                                }
                                _3274 = _3273;
                            }
                            else
                            {
                                _3274 = 1.0f;
                            }
                            float _3354;
                            float3 _3355;
                            float _3356;
                            float3 _3357;
                            float3 _3358;
                            float _3359;
                            float _3360;
                            [branch]
                            if (_2721 == 0u)
                            {
                                float3 _3334 = _37_m6[_2608].xyz * _2950;
                                float3 _3347 = _2324.xyz;
                                _3354 = _2950;
                                _3355 = (_37_m6[_2608].xyz * ((1.0f - _37_m6[_2620].y) + ((1.0f / max(1.0f, max(max(_3334.x, _3334.y), _3334.z) * lerp(0.75f, 0.5f, _2464))) * _37_m6[_2620].y))) * lerp(0.25f * _37_m6[_2620].x, 1.0f, clamp(_2970 + 0.5f, 0.0f, 1.0f));
                                _3356 = _2971;
                                _3357 = _3347;
                                _3358 = _3347;
                                _3359 = 1.0f;
                                _3360 = 0.0f;
                            }
                            else
                            {
                                float _3327;
                                float _3328;
                                float3 _3329;
                                float3 _3330;
                                float _3331;
                                float _3332;
                                if (_2721 == 3u)
                                {
                                    _3327 = _2950 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _37_m6[_2620].x), lerp(0.89999997615814208984375f, 0.5f, _37_m6[_2620].x), _2430) * _3274);
                                    _3328 = clamp(dot(_2030, -normalize(cross(_590, cross(_590, _2812)))), 0.0f, 1.0f);
                                    _3329 = lerp(0.5f.xxx, _2135, _37_m6[_2620].y.xxx);
                                    _3330 = 0.0f.xxx;
                                    _3331 = 1.0f;
                                    _3332 = 0.0f;
                                }
                                else
                                {
                                    bool _3283 = _2721 == 1u;
                                    float _3307;
                                    float3 _3308;
                                    float _3309;
                                    float _3310;
                                    if (_3283)
                                    {
                                        _3307 = clamp(clamp(_2970 + _37_m6[_2620].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3274;
                                        _3308 = _2140 * _37_m6[_2620].y;
                                        _3309 = 1.0f;
                                        _3310 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3287 = _2721 == 2u;
                                        float _3299;
                                        if (_3287)
                                        {
                                            _3299 = smoothstep(_37_m6[_2620].x + 0.0500000007450580596923828125f, _37_m6[_2620].x - 0.0500000007450580596923828125f, _2032) * ((1.0f - _37_m6[_2620].z) + (step(0.5f, _2035) * _37_m6[_2620].z));
                                        }
                                        else
                                        {
                                            _3299 = 1.0f;
                                        }
                                        _3307 = _2971;
                                        _3308 = 0.0f.xxx;
                                        _3309 = _3299;
                                        _3310 = _3287 ? _37_m6[_2620].y : 0.0f;
                                    }
                                    bool3 _3311 = _3283.xxx;
                                    _3327 = _2950;
                                    _3328 = _3307;
                                    _3329 = float3(_3311.x ? _2135.x : 0.0f.xxx.x, _3311.y ? _2135.y : 0.0f.xxx.y, _3311.z ? _2135.z : 0.0f.xxx.z);
                                    _3330 = _3308;
                                    _3331 = _3309;
                                    _3332 = _3310;
                                }
                                _3354 = _3327;
                                _3355 = _37_m6[_2608].xyz;
                                _3356 = _3328;
                                _3357 = _3329;
                                _3358 = _3330;
                                _3359 = _3331;
                                _3360 = _3332;
                            }
                            float3 _3388;
                            [branch]
                            if (_2721 != 3u)
                            {
                                float _3365 = lerp(_2142, 0.00999999977648258209228515625f, _3360);
                                float _3368 = dot(_1852, normalize(_2812 + _454));
                                float _3369 = _3365 * _3365;
                                float _3373 = (((_3368 * _3369) - _3368) * _3368) + 1.0f;
                                float _3374 = _3373 * _3373;
                                _3388 = ((_2138 * clamp((((_3369 != _3374) ? (_3369 / _3374) : 1.0f) * (0.5f / ((_2361 + (_3365 * _2363)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3359) * _37_m6[_2629].z;
                            }
                            else
                            {
                                _3388 = 0.0f.xxx;
                            }
                            float3 _3391 = _3355 * _3354;
                            _3398 = _2572 + (((_3391 * lerp(_3358, _3357, _3356.xxx)) * _2380) + ((_3391 * _3388) * _3356));
                        }
                        else
                        {
                            _3398 = _2572;
                        }
                        _3399 = _3398;
                        break;
                    } while(false);
                    _3400 = _3399;
                    break;
                } while(false);
                _3401 = _3400;
            }
            else
            {
                _3401 = _2572;
            }
            _2595 = _3401;
        }
    }
    float3 _3441;
    [branch]
    if (_50_m12 > 0.5f)
    {
        _3441 = lerp(lerp(0.5f.xxx, lerp(dot(_2571, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2571, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_2428, 0.0f, 1.0f))) * _50_m17);
    }
    else
    {
        _3441 = _2571;
    }
    float4 _3448 = float4(_3441 * _20_m20.y, _501);
    _3448.w = (_50_m8 == 1.0f) ? _501 : 1.0f;
    float4 _3833;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float3 _3457 = -_454;
        float _3473 = _622 * _20_m46.w;
        float _3478 = max(0.00999999977648258209228515625f, _3473 + _20_m47.w);
        float3 _3492 = exp(_20_m45.xyz * ((-max(0.0f, (_455 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3478)) / _3478) * exp(_3473 + _20_m48.w))));
        float _3495 = dot(_3457, _20_m44.xyz);
        float _3501 = _20_m45.w * _20_m45.w;
        float _3505 = (1.0f + _3501) - ((2.0f * _20_m45.w) * _3495);
        float3 _3825;
        float _3826;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3656 = (uint3(int3(_2206, _2207, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3657 = _3656.y;
            uint _3658 = _3656.z;
            uint _3661 = _3656.x + (_3657 * _3658);
            uint _3663 = _3657 + (_3658 * _3661);
            uint _3665 = _3658 + (_3661 * _3663);
            uint _3667 = _3661 + (_3663 * _3665);
            float _3689 = dot(_3457, -_18_m0[2].xyz);
            float3 _3696 = _550 - _18_m11.xyz;
            float _3698 = (_20_m55.w * ((_3689 > 5.9604644775390625e-08f) ? (1.0f / _3689) : 0.0f)) * (1.0f / _455);
            float _3699 = _3696.y;
            float _3700 = _3698 * _3699;
            float _3702 = _18_m11.y + _3700;
            float _3703 = _3699 - _3700;
            float _3705 = (1.0f - _3698) * _455;
            float _3719 = max(-127.0f, _20_m49.z * _3703);
            float _3743 = max(-127.0f, _20_m52.x * _3703);
            float _3754 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3702 - _20_m49.x)))) * ((abs(_3719) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3719)) / _3719) : (0.693147182464599609375f - (0.2402265071868896484375f * _3719)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3702 - _20_m52.z)))) * ((abs(_3743) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3743)) / _3743) : (0.693147182464599609375f - (0.2402265071868896484375f * _3743))));
            float _3776 = clamp((_455 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3779 = clamp((max(clamp(exp2(-(_3754 * _3705)), 0.0f, 1.0f), _20_m51.w) + clamp((_455 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3776, 0.0f, 1.0f);
            float4 _3819 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_26, float3((_2546 + ((((float3(uint3(_3667, _3663 + (_3665 * _3667), _419) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_435 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_435 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3825 = _3819.xyz + (((_20_m51.xyz * (1.0f - _3779)) + (((_20_m54.xyz * pow(clamp(dot(_454, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3754 * max(_3705 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3776))) * _3819.w);
            _3826 = _3819.w * _3779;
        }
        else
        {
            float3 _3532 = _550 - _18_m11.xyz;
            float _3534 = _3532.y;
            float _3548 = max(-127.0f, _20_m49.z * _3534);
            float _3572 = max(-127.0f, _20_m52.x * _3534);
            float _3583 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3548) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3548)) / _3548) : (0.693147182464599609375f - (0.2402265071868896484375f * _3548)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3572) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3572)) / _3572) : (0.693147182464599609375f - (0.2402265071868896484375f * _3572))));
            float _3605 = clamp((_455 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3608 = clamp((max(clamp(exp2(-(_3583 * _455)), 0.0f, 1.0f), _20_m51.w) + clamp((_455 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3605, 0.0f, 1.0f);
            _3825 = (_20_m51.xyz * (1.0f - _3608)) + (((_20_m54.xyz * pow(clamp(dot(_454, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3583 * max(_455 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3605));
            _3826 = _3608;
        }
        float3 _3831 = (_3448.xyz * (_3492 * _3826)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3495 * _3495)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3501) / max((12.56637096405029296875f * _3505) * sqrt(_3505), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3492)) * _3826) + _3825);

        // RenoDX code start: apply the hue-preserving fog composite.
        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3831 = (_3831 * 0.65f) + (_3448.xyz * 0.35f);

        }
        // RenoDX code end
        _3833 = float4(_3831.x, _3831.y, _3831.z, _3448.w);
    }
    else
    {
        _3833 = _3448;
    }
    _15 = _3833;
    _16 = _2171;
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
