// DX11 0x9FEC1C1B -> Vulkan 0x1C93EDE9
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

static float _406 = 0.0f;
static float3 _407 = 0.0f;
static float _409 = 0.0f;
static uint _410 = 0u;

static const int2 _363[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _364[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(51, 0)]] ByteAddressBuffer _30 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _32 : register(t18);

uint4 _32_Load4(uint byte_offset)
{
    return asuint(_32[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _33_34 : register(b48)
{
    int _34_m0 : packoffset(c0);
    int _34_m1 : packoffset(c0.y);
    int _34_m2 : packoffset(c0.z);
    int _34_m3 : packoffset(c0.w);
    float _34_m4 : packoffset(c1);
    float _34_m5 : packoffset(c1.y);
    float _34_m6 : packoffset(c1.z);
    float _34_m7 : packoffset(c1.w);
    float _34_m8 : packoffset(c2);
    float _34_m9 : packoffset(c2.y);
    float _34_m10 : packoffset(c2.z);
    float _34_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _35_36 : register(b14)
{
    float4 _36_m0 : packoffset(c0);
    float4 _36_m1 : packoffset(c1);
    float4 _36_m2 : packoffset(c2);
    float4 _36_m3 : packoffset(c3);
    float4 _36_m4 : packoffset(c4);
    uint4 _36_m5 : packoffset(c5);
    float4 _36_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _37_38 : register(b15)
{
    column_major float4x4 _38_m0[5] : packoffset(c0);
    float4 _38_m1[4] : packoffset(c20);
    float4 _38_m2[4] : packoffset(c24);
    float4 _38_m3[4] : packoffset(c28);
    float4 _38_m4 : packoffset(c32);
    float4 _38_m5 : packoffset(c33);
    float4 _38_m6 : packoffset(c34);
    float4 _38_m7 : packoffset(c35);
    float4 _38_m8 : packoffset(c36);
    float4 _38_m9[27] : packoffset(c37);
    column_major float4x4 _38_m10[56] : packoffset(c64);
    float4 _38_m11[56] : packoffset(c288);
    float4 _38_m12[56] : packoffset(c344);
    float4 _38_m13 : packoffset(c400);
    float4 _38_m14[47] : packoffset(c401);
    column_major float4x4 _38_m15[15] : packoffset(c448);
    float4 _38_m16[15] : packoffset(c508);
    float4 _38_m17[15] : packoffset(c523);
    float4 _38_m18[15] : packoffset(c538);
    float4 _38_m19 : packoffset(c553);
    float4 _38_m20 : packoffset(c554);
    float4 _38_m21[21] : packoffset(c555);
    column_major float4x4 _38_m22 : packoffset(c576);
    column_major float4x4 _38_m23 : packoffset(c580);
    float4 _38_m24 : packoffset(c584);
    float4 _38_m25 : packoffset(c585);
    float4 _38_m26 : packoffset(c586);
    float4 _38_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _48_49 : register(b0)
{
    float _49_m0 : packoffset(c0);
    float _49_m1 : packoffset(c0.y);
    float _49_m2 : packoffset(c0.z);
    float _49_m3 : packoffset(c0.w);
    float _49_m4 : packoffset(c1);
    float _49_m5 : packoffset(c1.y);
    float _49_m6 : packoffset(c1.z);
    float _49_m7 : packoffset(c1.w);
    float _49_m8 : packoffset(c2);
    float _49_m9 : packoffset(c2.y);
    float _49_m10 : packoffset(c2.z);
    float _49_m11 : packoffset(c2.w);
    float _49_m12 : packoffset(c3);
    float _49_m13 : packoffset(c3.y);
    float _49_m14 : packoffset(c3.z);
    float _49_m15 : packoffset(c3.w);
    float _49_m16 : packoffset(c4);
    float _49_m17 : packoffset(c4.y);
    float _49_m18 : packoffset(c4.z);
    float _49_m19 : packoffset(c4.w);
    float _49_m20 : packoffset(c5);
    float _49_m21 : packoffset(c5.y);
    float _49_m22 : packoffset(c5.z);
    float _49_m23 : packoffset(c5.w);
    float4 _49_m24 : packoffset(c6);
    float4 _49_m25 : packoffset(c7);
    float4 _49_m26 : packoffset(c8);
    float4 _49_m27 : packoffset(c9);
    float4 _49_m28 : packoffset(c10);
    float4 _49_m29 : packoffset(c11);
    float _49_m30 : packoffset(c12);
    float _49_m31 : packoffset(c12.y);
    float _49_m32 : packoffset(c12.z);
    float _49_m33 : packoffset(c12.w);
    float4 _49_m34 : packoffset(c13);
    float4 _49_m35 : packoffset(c14);
    float4 _49_m36 : packoffset(c15);
    float4 _49_m37 : packoffset(c16);
    float4 _49_m38 : packoffset(c17);
    float4 _49_m39 : packoffset(c18);
    float _49_m40 : packoffset(c19);
    float _49_m41 : packoffset(c19.y);
    float _49_m42 : packoffset(c19.z);
    float _49_m43 : packoffset(c19.w);
    float _49_m44 : packoffset(c20);
    float _49_m45 : packoffset(c20.y);
    float _49_m46 : packoffset(c20.z);
    float _49_m47 : packoffset(c20.w);
};

[[vk::binding(50, 0)]]
cbuffer _60_61 : register(b50)
{
    float4 _61_m0[32] : packoffset(c0);
    column_major float4x4 _61_m1[32] : packoffset(c32);
};

[[vk::binding(2, 0)]] SamplerState _24 : register(s2);
[[vk::binding(6, 0)]] SamplerState _25 : register(s6);
[[vk::binding(4, 0)]] SamplerState _26 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _39 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _42 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _43 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _44 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _45 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _46 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _47 : register(t30);
[[vk::binding(44, 0)]] Texture2D<float4> _50 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _51 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _52 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _53 : register(t37);
[[vk::binding(3, 1)]] Texture2D<float4> _54 : register(t3);
[[vk::binding(1, 1)]] Texture2D<float4> _55 : register(t1);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2);
[[vk::binding(45, 0)]] TextureCube<float4> _58 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _59 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _64 : register(t36);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float3 _7;
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
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
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
    float _425 = 1.0f / gl_FragCoord.w;
    float3 _440 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _441 = dot(_440, _440);
    float _443 = rsqrt(max(_441, 9.9999999392252902907785028219223e-09f));
    float3 _444 = _440 * _443;
    float _445 = _441 * _443;
    uint _448 = asuint(_22_m0[_12]._m2.x);
    bool _453 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _466;
    float4 _467;
    if (_453)
    {
        _466 = asfloat(_32_Load4((_448 + 2u) * 16 + 0));
        _467 = asfloat(_32_Load4(_448 * 16 + 0));
    }
    else
    {
        _466 = _22_m0[_12]._m0[2];
        _467 = _22_m0[_12]._m0[0];
    }
    float4 _473 = _54.SampleBias(_26, _3, _19_m16);
    float3 _478 = _473.xyz * _49_m24.xyz;
    float4 _482 = _55.SampleBias(_26, _3, _19_m16);
    float _483 = _482.x;
    float _485 = _482.z;
    float _487 = 1.0f - _482.w;
    float _491 = _473.w * _49_m24.w;
    float3 _496 = _478 * _49_m18;
    float3 _500 = lerp(dot(_496, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _496, _49_m19.xxx);
    float4 _504 = _56.SampleBias(_26, _3, _19_m16);
    _504.w = _504.w * _504.x;
    float2 _513 = (_504.wy * 2.0f) - 1.0f.xx;
    float3 _514 = float3(_513.x, _513.y, _407.z);
    float2 _515 = _513.xy;
    _514.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_515, _515), 0.0f, 1.0f)));
    float2 _523 = _514.xy * _49_m3;
    float3 _528 = _4 + _17_m11.xyz;
    float3 _532 = _528 - float3(_467.w, _409, _466.w);
    _532.y = 6.103515625e-05f;
    float3 _535 = normalize(_532);
    float3 _545 = mul(float3(_523.x, _523.y, _514.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _554 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _555 = (_545 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_545, _545)))) * _554;
    float3 _556 = normalize(_5) * _554;
    uint2 _558 = uint2(gl_FragCoord.xy);
    float3 _568 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _577 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _590 = float4(float(_577 & 255u), float((_577 >> 8u) & 255u), float((_577 >> 16u) & 255u), float((_577 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _591 = _590.x;
    float _594 = _590.w;
    float _600 = _528.y;
    float _603 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _600) * _590.y;
    float _604 = max(_590.z, _603);
    float _613 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1107;
    float3 _1108;
    float3 _1109;
    float _1110;
    if (_19_m80.y < 0.5f)
    {
        float3 _628 = _528 - (_19_m105.xyz + (_568 * (-_19_m107.w)));
        float _642 = max(clamp((max(abs(_628.x), abs(_628.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_628.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _944;
        float4 _945;
        float4 _946;
        float _947;
        float _948;
        if ((_19_m105.w != 0.0f) && (_642 < 1.0f))
        {
            float3 _655 = _528 - (_19_m105.xyz + (_568 * (-_19_m107.y)));
            float _669 = max(clamp((max(abs(_655.x), abs(_655.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_655.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _745;
            float4 _746;
            float4 _747;
            float4 _748;
            if (_669 < 1.0f)
            {
                float3 _678 = ((_528 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _680 = _678 - floor(_678);
                float4 _684 = _42.SampleLevel(_26, _680, 0.0f);
                float _685 = 1.0f - _669;
                float _689 = _19_m106.y * 0.5f;
                float _694 = _680.x;
                float _695 = clamp(_680.y, _689, 1.0f - _689) * 0.3333333432674407958984375f;
                float _696 = _680.z;
                float4 _699 = _43.SampleLevel(_25, float3(_694, _695, _696), 0.0f);
                float _715 = _684.x;
                float _725 = _684.y;
                float _735 = _684.z;
                _745 = _642 + (_699.w * _685);
                _746 = float4(((_43.SampleLevel(_25, float3(_694, _695 + 0.666666686534881591796875f, _696), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _735, _735) * _685;
                _747 = float4(((_43.SampleLevel(_25, float3(_694, _695 + 0.3333333432674407958984375f, _696), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _725, _725) * _685;
                _748 = float4(((_699.xyz * 4.0f) - 2.0f.xxx) * _715, _715) * _685;
            }
            else
            {
                _745 = _642;
                _746 = 0.0f.xxxx;
                _747 = 0.0f.xxxx;
                _748 = 0.0f.xxxx;
            }
            float3 _754 = _528 - (_19_m105.xyz + (_568 * (-_19_m107.z)));
            float _768 = max(clamp((max(abs(_754.x), abs(_754.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_754.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _848;
            float4 _849;
            float4 _850;
            float4 _851;
            if (_768 < 1.0f)
            {
                float3 _777 = ((_528 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _779 = _777 - floor(_777);
                float4 _783 = _44.SampleLevel(_26, _779, 0.0f);
                float _785 = _669 * (1.0f - _768);
                float _789 = _19_m106.y * 0.5f;
                float _794 = _779.x;
                float _795 = clamp(_779.y, _789, 1.0f - _789) * 0.3333333432674407958984375f;
                float _796 = _779.z;
                float4 _799 = _45.SampleLevel(_25, float3(_794, _795, _796), 0.0f);
                float _815 = _783.x;
                float _826 = _783.y;
                float _837 = _783.z;
                _848 = _745 + (_799.w * _785);
                _849 = _746 + (float4(((_45.SampleLevel(_25, float3(_794, _795 + 0.666666686534881591796875f, _796), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _837, _837) * _785);
                _850 = _747 + (float4(((_45.SampleLevel(_25, float3(_794, _795 + 0.3333333432674407958984375f, _796), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _826, _826) * _785);
                _851 = _748 + (float4(((_799.xyz * 4.0f) - 2.0f.xxx) * _815, _815) * _785);
            }
            else
            {
                _848 = _745;
                _849 = _746;
                _850 = _747;
                _851 = _748;
            }
            float4 _934;
            float4 _935;
            float4 _936;
            float _937;
            if (_768 > 0.0f)
            {
                float3 _860 = ((_528 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _863 = _19_m106.xyz * 0.5f;
                float3 _865 = clamp(_860 - floor(_860), _863, 1.0f.xxx - _863);
                float4 _869 = _46.SampleLevel(_26, _865, 0.0f);
                float _871 = _768 * (1.0f - _642);
                float _875 = _19_m106.y * 0.5f;
                float _880 = _865.x;
                float _881 = clamp(_865.y, _875, 1.0f - _875) * 0.3333333432674407958984375f;
                float _882 = _865.z;
                float4 _885 = _47.SampleLevel(_25, float3(_880, _881, _882), 0.0f);
                float _901 = _869.x;
                float _912 = _869.y;
                float _923 = _869.z;
                _934 = _849 + (float4(((_47.SampleLevel(_25, float3(_880, _881 + 0.666666686534881591796875f, _882), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _923, _923) * _871);
                _935 = _850 + (float4(((_47.SampleLevel(_25, float3(_880, _881 + 0.3333333432674407958984375f, _882), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _912, _912) * _871);
                _936 = _851 + (float4(((_885.xyz * 4.0f) - 2.0f.xxx) * _901, _901) * _871);
                _937 = _848 + (_885.w * _871);
            }
            else
            {
                _934 = _849;
                _935 = _850;
                _936 = _851;
                _937 = _848;
            }
            float _940 = clamp((_937 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _944 = _934;
            _945 = _935;
            _946 = _936;
            _947 = _940 - _642;
            _948 = (_940 + _642) * 0.5f;
        }
        else
        {
            _944 = 0.0f.xxxx;
            _945 = 0.0f.xxxx;
            _946 = 0.0f.xxxx;
            _947 = 0.0f;
            _948 = 1.0f;
        }
        float4 _968 = _946 + float4(_19_m108.x * _948, (_19_m108.y * _948) + ((_19_m108.w * _947) * 0.5f), _19_m108.z * _948, (_19_m108.w * _948) + ((_19_m108.y * _947) * 0.375f));
        float4 _988 = _945 + float4(_19_m109.x * _948, (_19_m109.y * _948) + ((_19_m109.w * _947) * 0.5f), _19_m109.z * _948, (_19_m109.w * _948) + ((_19_m109.y * _947) * 0.375f));
        float4 _1008 = _944 + float4(_19_m110.x * _948, (_19_m110.y * _948) + ((_19_m110.w * _947) * 0.5f), _19_m110.z * _948, (_19_m110.w * _948) + ((_19_m110.y * _947) * 0.375f));
        float4 _1012 = float4(_555, 1.0f);
        float3 _1018 = max(float3(dot(_968, _1012), dot(_988, _1012), dot(_1008, _1012)), 0.0f.xxx) * _613;
        float3 _1026 = ((_968.xyz * 0.2125999927520751953125f) + (_988.xyz * 0.715200006961822509765625f)) + (_1008.xyz * 0.072200000286102294921875f);
        float3 _1030 = _1026 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1026, _1026)));
        float _1032 = abs(_1030.y);
        float3 _1033 = _1030;
        _1033.y = _1032;
        float4 _1034 = float4(_1033.x, _1033.y, _1033.z, 0.0f.xxxx.w);
        _1034.w = 1.0f;
        float4 _1038 = float4(_1030.x, _1032, _1030.z, 1.0f);
        float3 _1043 = max(float3(dot(_968, _1038), dot(_988, _1038), dot(_1008, _1038)), 0.0f.xxx);
        float _1051 = _1018.z;
        float _1052 = _1018.y;
        float4 _1057 = lerp(float4(_1051, _1052, -1.0f, 0.666666686534881591796875f), float4(_1052, _1051, 0.0f, -0.3333333432674407958984375f), step(_1051, _1052).xxxx);
        float _1058 = _1018.x;
        float _1059 = _1057.x;
        float4 _1067 = lerp(float4(_1059, _1057.yw, _1058), float4(_1058, _1057.yz, _1059), step(_1059, _1058).xxxx);
        float _1068 = _1067.x;
        float _1069 = _1067.w;
        float _1070 = _1067.y;
        float _1072 = _1068 - min(_1069, _1070);
        float _1082 = frac(abs(_1067.z + ((_1069 - _1070) / ((6.0f * _1072) + 9.9999997473787516355514526367188e-05f))));
        float _1089 = min(_1072 / (_1068 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1082 - 0.5f))) * clamp(_1068, 0.0f, 1.0f));
        float _1091 = 2.0f / (2.0f - _1089);
        _1107 = _1034;
        _1108 = _1018;
        _1109 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1082, _1089, _1091).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1089.xxx) * _1091;
        _1110 = max(max(max(_1043.x, _1043.y), _1043.z), 0.0f) * _613;
    }
    else
    {
        _1107 = 0.0f.xxxx;
        _1108 = 1.0f.xxx;
        _1109 = _19_m81.xyz;
        _1110 = _613;
    }
    float3 _1830;
    float _1831;
    float _1832;
    float _1833;
    float _1834;
    float3 _1835;
    float3 _1836;
    [branch]
    if ((clamp(_591 + _604, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1138 = 1.0f - _483;
        float _1141 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_478 * _1138, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1144 = _453.xxx;
        float3 _1146 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1150 = float3(_1144.x ? _1146.x : _10.x, _1144.y ? _1146.y : _10.y, _1144.z ? _1146.z : _10.z) * _19_m89.z;
        float3 _1152 = float3(_1144.x ? _9.xzy.x : _9.x, _1144.y ? _9.xzy.y : _9.y, _1144.z ? _9.xzy.z : _9.z);
        float3 _1154 = abs(_1152) - 0.20000000298023223876953125f.xxx;
        float3 _1157 = max((_1154 * _1154) * _1154, 6.103515625e-05f.xxx);
        float3 _1160 = _1157 / dot(_1157, 1.0f.xxx).xxx;
        float2 _1168 = _1150.xy;
        float2 _1173 = _1150.zy;
        float4 _1183 = ((_50.SampleBias(_26, _1150.xz, _19_m16) * _1160.y) + (_50.SampleBias(_26, _1168, _19_m16) * _1160.z)) + (_50.SampleBias(_26, _1173, _19_m16) * _1160.x);
        float _1184 = _1183.w;
        float _1186 = 1.10000002384185791015625f - _1184;
        float _1195 = max(smoothstep(0.800000011920928955078125f - _1184, _1186, clamp((_591 * _1138) + (_555.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1184, _1186, clamp(_603 * _1138, 0.0f, 1.0f)));
        float _1202 = smoothstep(0.5f, 0.75f, _483);
        float _1204 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _487) * _1141;
        float _1207 = clamp(_1204 + _1202, 0.0f, 1.0f) * max(_591, _604);
        bool _1211 = !((step(_591, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _604)) != 0.0f);
        bool2 _1212 = _1211.xx;
        float2 _1214 = (1.0f - _604).xx;
        float2 _1215 = float2(_1212.x ? float2(3.0f, 4.345600128173828125f).x : _1214.x, _1212.y ? float2(3.0f, 4.345600128173828125f).y : _1214.y);
        float _1216 = 1.0f - _1207;
        float _1219 = _1211 ? _19_m10.x : 1.0f;
        float _1221 = _1219 * _1215.x;
        float _1223 = _1219 * _1215.y;
        float3 _1224 = _1150 * 20.0f;
        float3 _1225 = _1150 * 34.345600128173828125f;
        float3 _1227 = pow(max(_1154, 0.0f.xxx), 10.0f.xxx);
        float3 _1231 = _1227 / max(dot(_1227, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1233 = _1231.y;
        float2 _1234 = _1224.xz * 1.0f;
        float2 _1235 = floor(_1234);
        float2 _1238 = frac(_1235 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1242 = _1238 + dot(_1238, _1238 + 34.345001220703125f.xx).xx;
        float _1243 = _1242.x;
        float _1244 = _1242.y;
        float2 _1248 = frac(float2(_1243 * _1244, _1243 + _1244));
        float2 _1251 = frac((_1235 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1255 = _1251 + dot(_1251, _1251 + 34.345001220703125f.xx).xx;
        float _1256 = _1255.x;
        float _1257 = _1255.y;
        float2 _1261 = frac(float2(_1256 * _1257, _1256 + _1257));
        float _1267 = _1248.x;
        float _1269 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1267);
        float2 _1270 = ((_1234 - _1235) + ((((_1261 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1273 = _1270.y;
        float2 _1277 = float2(_1270.x * 1.25f, _1273 * ((_1273 < 0.0f) ? 1.25f : 0.75f));
        float _1280 = _1221 + _1267;
        float _1284 = _1211 ? frac(_1280) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1280, 0.0f, 1.0f));
        float _1296 = _1248.y;
        float _1299 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1284) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1284)) * step(0.001000000047497451305389404296875f, smoothstep(_1269, 0.0f, length(_1277)))) * step(_1216, _1296 - 0.100000001490116119384765625f);
        float _1302 = _1299 * _1233;
        float _1310 = _1231.z;
        float2 _1311 = _1224.xy * 1.0f;
        float2 _1312 = floor(_1311);
        float2 _1315 = frac(_1312 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1319 = _1315 + dot(_1315, _1315 + 34.345001220703125f.xx).xx;
        float _1320 = _1319.x;
        float _1321 = _1319.y;
        float2 _1325 = frac(float2(_1320 * _1321, _1320 + _1321));
        float2 _1328 = frac((_1312 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1332 = _1328 + dot(_1328, _1328 + 34.345001220703125f.xx).xx;
        float _1333 = _1332.x;
        float _1334 = _1332.y;
        float2 _1338 = frac(float2(_1333 * _1334, _1333 + _1334));
        float _1344 = _1325.x;
        float _1346 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1344);
        float2 _1347 = ((_1311 - _1312) + ((((_1338 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1350 = _1347.y;
        float2 _1354 = float2(_1347.x * 1.25f, _1350 * ((_1350 < 0.0f) ? 1.25f : 0.75f));
        float _1357 = _1221 + _1344;
        float _1361 = _1211 ? frac(_1357) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1357, 0.0f, 1.0f));
        float _1373 = _1325.y;
        float _1376 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1361) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1361)) * step(0.001000000047497451305389404296875f, smoothstep(_1346, 0.0f, length(_1354)))) * step(_1216, _1373 - 0.100000001490116119384765625f);
        float _1379 = _1376 * _1310;
        float _1387 = _1231.x;
        float2 _1388 = _1224.zy * 1.0f;
        float2 _1389 = floor(_1388);
        float2 _1392 = frac(_1389 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1396 = _1392 + dot(_1392, _1392 + 34.345001220703125f.xx).xx;
        float _1397 = _1396.x;
        float _1398 = _1396.y;
        float2 _1402 = frac(float2(_1397 * _1398, _1397 + _1398));
        float2 _1405 = frac((_1389 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1409 = _1405 + dot(_1405, _1405 + 34.345001220703125f.xx).xx;
        float _1410 = _1409.x;
        float _1411 = _1409.y;
        float2 _1415 = frac(float2(_1410 * _1411, _1410 + _1411));
        float _1421 = _1402.x;
        float _1423 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1421);
        float2 _1424 = ((_1388 - _1389) + ((((_1415 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1427 = _1424.y;
        float2 _1431 = float2(_1424.x * 1.25f, _1427 * ((_1427 < 0.0f) ? 1.25f : 0.75f));
        float _1434 = _1221 + _1421;
        float _1438 = _1211 ? frac(_1434) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1434, 0.0f, 1.0f));
        float _1450 = _1402.y;
        float _1453 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1438) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1438)) * step(0.001000000047497451305389404296875f, smoothstep(_1423, 0.0f, length(_1431)))) * step(_1216, _1450 - 0.100000001490116119384765625f);
        float _1456 = _1453 * _1387;
        float2 _1469 = (float4(((clamp(_1277 / _1269.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1261.x)) * _1299) * _1233, _1302, _1296).xy + float4(((clamp(_1354 / _1346.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1338.x)) * _1376) * _1310, _1379, _1373).xy) + float4(((clamp(_1431 / _1423.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1415.x)) * _1453) * _1387, _1456, _1450).xy;
        float _1471 = max(_1456, max(_1302, _1379));
        float4 _1474 = float4(_1469, _1471, 0.0f);
        float2 _1476 = _1225.xz * 1.0f;
        float2 _1477 = floor(_1476);
        float2 _1480 = frac(_1477 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1484 = _1480 + dot(_1480, _1480 + 34.345001220703125f.xx).xx;
        float _1485 = _1484.x;
        float _1486 = _1484.y;
        float2 _1490 = frac(float2(_1485 * _1486, _1485 + _1486));
        float2 _1493 = frac((_1477 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1497 = _1493 + dot(_1493, _1493 + 34.345001220703125f.xx).xx;
        float _1498 = _1497.x;
        float _1499 = _1497.y;
        float2 _1503 = frac(float2(_1498 * _1499, _1498 + _1499));
        float _1509 = _1490.x;
        float _1511 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1509);
        float2 _1512 = ((_1476 - _1477) + ((((_1503 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1515 = _1512.y;
        float2 _1519 = float2(_1512.x * 1.25f, _1515 * ((_1515 < 0.0f) ? 1.25f : 0.75f));
        float _1522 = _1223 + _1509;
        float _1526 = _1211 ? frac(_1522) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1522, 0.0f, 1.0f));
        float _1538 = _1490.y;
        float _1541 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1526) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1526)) * step(0.001000000047497451305389404296875f, smoothstep(_1511, 0.0f, length(_1519)))) * step(_1216, _1538 - 0.100000001490116119384765625f);
        float _1544 = _1541 * _1233;
        float2 _1549 = _1225.xy * 1.0f;
        float2 _1550 = floor(_1549);
        float2 _1553 = frac(_1550 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1557 = _1553 + dot(_1553, _1553 + 34.345001220703125f.xx).xx;
        float _1558 = _1557.x;
        float _1559 = _1557.y;
        float2 _1563 = frac(float2(_1558 * _1559, _1558 + _1559));
        float2 _1566 = frac((_1550 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1570 = _1566 + dot(_1566, _1566 + 34.345001220703125f.xx).xx;
        float _1571 = _1570.x;
        float _1572 = _1570.y;
        float2 _1576 = frac(float2(_1571 * _1572, _1571 + _1572));
        float _1582 = _1563.x;
        float _1584 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1582);
        float2 _1585 = ((_1549 - _1550) + ((((_1576 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1588 = _1585.y;
        float2 _1592 = float2(_1585.x * 1.25f, _1588 * ((_1588 < 0.0f) ? 1.25f : 0.75f));
        float _1595 = _1223 + _1582;
        float _1599 = _1211 ? frac(_1595) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1595, 0.0f, 1.0f));
        float _1611 = _1563.y;
        float _1614 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1599) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1599)) * step(0.001000000047497451305389404296875f, smoothstep(_1584, 0.0f, length(_1592)))) * step(_1216, _1611 - 0.100000001490116119384765625f);
        float _1617 = _1614 * _1310;
        float2 _1622 = _1225.zy * 1.0f;
        float2 _1623 = floor(_1622);
        float2 _1626 = frac(_1623 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1630 = _1626 + dot(_1626, _1626 + 34.345001220703125f.xx).xx;
        float _1631 = _1630.x;
        float _1632 = _1630.y;
        float2 _1636 = frac(float2(_1631 * _1632, _1631 + _1632));
        float2 _1639 = frac((_1623 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1643 = _1639 + dot(_1639, _1639 + 34.345001220703125f.xx).xx;
        float _1644 = _1643.x;
        float _1645 = _1643.y;
        float2 _1649 = frac(float2(_1644 * _1645, _1644 + _1645));
        float _1655 = _1636.x;
        float _1657 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1655);
        float2 _1658 = ((_1622 - _1623) + ((((_1649 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1661 = _1658.y;
        float2 _1665 = float2(_1658.x * 1.25f, _1661 * ((_1661 < 0.0f) ? 1.25f : 0.75f));
        float _1668 = _1223 + _1655;
        float _1672 = _1211 ? frac(_1668) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1668, 0.0f, 1.0f));
        float _1684 = _1636.y;
        float _1687 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1672) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1672)) * step(0.001000000047497451305389404296875f, smoothstep(_1657, 0.0f, length(_1665)))) * step(_1216, _1684 - 0.100000001490116119384765625f);
        float _1690 = _1687 * _1387;
        float2 _1698 = (float4(((clamp(_1519 / _1511.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1503.x)) * _1541) * _1233, _1544, _1538).xy + float4(((clamp(_1592 / _1584.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1576.x)) * _1614) * _1310, _1617, _1611).xy) + float4(((clamp(_1665 / _1657.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1649.x)) * _1687) * _1387, _1690, _1684).xy;
        float4 _1703 = float4(_1698, max(_1690, max(_1544, _1617)), 0.0f);
        float _1705 = step(max(float2(_1269 * _1299, _409) * _1233, max(float2(_1346 * _1376, _409) * _1310, float2(_1423 * _1453, _409) * _1387)).x, 0.00999999977648258209228515625f);
        float2 _1709 = _1474.xy + (_1703.xy * _1705);
        float3 _1718 = float3((_1183.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1709.x, _1709.y, 0.0f.xxx.z);
        float2 _1722 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1725 = float3(_1152.x, 0.0f, _1152.z);
        float3 _1731 = abs(_1725 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1725, _1725)))) - 0.20000000298023223876953125f.xxx;
        float3 _1734 = max((_1731 * _1731) * _1731, 6.103515625e-05f.xxx);
        float3 _1737 = _1734 / dot(_1734, 1.0f.xxx).xxx;
        float _1756 = _1737.z;
        float _1758 = _1737.x;
        float4 _1760 = (_51.SampleBias(_26, _1168, _19_m16) * _1756) + (_51.SampleBias(_26, _1173, _19_m16) * _1758);
        float2 _1772 = _1718.xy + ((((_1760.xy * 2.0f) - 1.0f.xx) * ((_51.SampleBias(_26, _1168 + _1722, _19_m16).w * _1756) + (_51.SampleBias(_26, _1173 + _1722, _19_m16).w * _1758))) * _1207);
        float3 _1773 = float3(_1772.x, _1772.y, _1718.z);
        float _1774 = _1760.z;
        float _1779 = max(max(max(_1474.zw * step(0.00999999977648258209228515625f, _1471), _1703.zw * _1705).x, step(1.0099999904632568359375f - _1207, _1183.z)), smoothstep(1.0f - _1774, 1.10000002384185791015625f - _1774, _1207) * _1207);
        float2 _1780 = _1772.xy;
        _1773.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1780, _1780), 0.0f, 1.0f)));
        float3 _1787 = normalize(_1773);
        float3 _1788 = cross(_555, float3(0.0f, 1.0f, 0.0f));
        bool3 _1791 = (dot(_1788, _1788) > 6.103515625e-05f).xxx;
        float3 _1792 = normalize(_1788);
        float3 _1793 = float3(_1791.x ? _1792.x : float3(1.0f, 0.0f, 0.0f).x, _1791.y ? _1792.y : float3(1.0f, 0.0f, 0.0f).y, _1791.z ? _1792.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1804 = min(_487, 0.0500000007450580596923828125f);
        float _1805 = lerp(_487, _1804, _1779);
        float _1822 = lerp(1.0f, 0.5f, (_1195 * (1.0f - _1141)) * (1.0f - _1204));
        _1830 = normalize(lerp(_555, normalize(((_1793 * _1787.x) + (cross(_1793, _555) * _1787.y)) + (_555 * _1787.z)), _1779.xxx));
        _1831 = _1779;
        _1832 = _1804;
        _1833 = _1779;
        _1834 = max(_1805 - ((0.20000000298023223876953125f * _1141) * _1195), min(0.20000000298023223876953125f, _1805));
        _1835 = _500 * _1822;
        _1836 = lerp(_478, _478 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_478, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1779 * _1202).xxx) * _1822;
    }
    else
    {
        _1830 = _555;
        _1831 = 0.0f;
        _1832 = 0.00999999977648258209228515625f;
        _1833 = 0.0f;
        _1834 = _487;
        _1835 = _500;
        _1836 = _478;
    }
    float3 _2008;
    float _2009;
    float _2010;
    float3 _2011;
    float3 _2012;
    float _2013;
    [branch]
    if (_594 > 0.00999999977648258209228515625f)
    {
        bool3 _1840 = _453.xxx;
        float3 _1842 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1843 = float3(_1840.x ? _1842.x : _10.x, _1840.y ? _1842.y : _10.y, _1840.z ? _1842.z : _10.z);
        float3 _1846 = _1843 * _19_m89.z;
        float3 _1848 = float3(_1840.x ? _9.xzy.x : _9.x, _1840.y ? _9.xzy.y : _9.y, _1840.z ? _9.xzy.z : _9.z);
        float3 _1850 = abs(_1848) - 0.20000000298023223876953125f.xxx;
        float3 _1853 = max((_1850 * _1850) * _1850, 6.103515625e-05f.xxx);
        float3 _1856 = _1853 / dot(_1853, 1.0f.xxx).xxx;
        float _1872 = _1856.y;
        float _1874 = _1856.z;
        float _1877 = _1856.x;
        float4 _1879 = ((_52.SampleBias(_26, _1846.xz, _19_m16) * _1872) + (_52.SampleBias(_26, _1846.xy, _19_m16) * _1874)) + (_52.SampleBias(_26, _1846.zy, _19_m16) * _1877);
        float _1880 = _1848.y;
        float _1887 = clamp(_594 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1843.y) * clamp(_594 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1898 = smoothstep(2.0f - _1887, 2.349999904632568359375f - _1887, ((_1880 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1879.z) * ((_485 * _485) * float(gl_FrontFacing));
        float _1910 = lerp(1.0f, 0.5f, ((_1887 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1836 * (1.0f - _483), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1879.w) * ((_1880 * 0.25f) + 0.75f));
        float3 _1912 = _1898.xxx;
        float2 _1918 = (_1879.xy * 2.0f) - 1.0f.xx;
        float3 _1919 = float3(_1918.x, _1918.y, _407.z);
        float2 _1920 = _1918.xy;
        _1919.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1920, _1920), 0.0f, 1.0f)));
        float2 _1928 = _1919.xy * 2.0f;
        float3 _1930 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1928.x, _1928.y, _1919.z), _1912);
        float3 _1934 = _1930 * rsqrt(max(6.103515625e-05f, dot(_1930, _1930)));
        float _1935 = _555.y;
        float _1938 = step(0.00999999977648258209228515625f, 1.0f - (_1935 * _1935));
        float _1942 = lerp(_555.z, _1935, _1938);
        float3 _1949 = (float3(0.0f, _1938, 1.0f - _1938) - (_555 * _1942)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1942 * _1942)));
        float3 _1963 = _1846 * 4.0f;
        float4 _1983 = ((_53.SampleLevel(_24, _1963.xz, 0.0f) * _1872) + (_53.SampleLevel(_24, _1963.xy, 0.0f) * _1874)) + (_53.SampleLevel(_24, _1963.zy, 0.0f) * _1877);
        float2 _1986 = (_1983.xz * 2.0f) - 1.0f.xx;
        float _1997 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1986.x, _1983.y, _1986.y), (floor(_444 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1998 = _1997 * _1997;
        float _2001 = _1998 * ((_1998 * 2.0f) * _1898);
        float3 _2002 = 1.0f.xxx * _2001;
        _2008 = ((cross(_1949, _555) * _1934.x) + (_1949 * _1934.y)) + (_555 * _1934.z);
        _2009 = _1833 + _2001;
        _2010 = lerp(lerp(_1834, 0.89999997615814208984375f, clamp(_1898 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2001);
        _2011 = lerp(_1835 * _1910, 0.3079999983310699462890625f.xxx, _1912) + (_2002 * 0.5f);
        _2012 = lerp(_1836 * _1910, 0.87999999523162841796875f.xxx, _1912) + _2002;
        _2013 = lerp(_483, 0.0f, _1898);
    }
    else
    {
        _2008 = _555;
        _2009 = _1833;
        _2010 = _1834;
        _2011 = _1835;
        _2012 = _1836;
        _2013 = _483;
    }
    float _2015 = 0.959999978542327880859375f - (_2013 * 0.959999978542327880859375f);
    float3 _2016 = _2012 * _2015;
    float3 _2019 = lerp(0.039999999105930328369140625f.xxx * _482.y, _2012, _2013.xxx);
    float3 _2020 = _2011 * _2015;
    float _2022 = max(_2010 * _2010, 0.0078125f);
    float2 _2035 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2035.y = -_2035.y;
    float2 _2048 = ((sqrt(sqrt(abs(_2035 * 0.5f))) * float2(int2(sign(_2035)))) * 0.5f) + 0.5f.xx;
    float4 _2051 = float4(_2048.x, _2048.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2051.z = 1.0f;
    _2051.w = (_2009 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2064 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2068 = normalize(float3(_2064.x, 6.103515625e-05f, _2064.z));
    float3 _2078 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2082 = _2078 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _2086 = int(_558.x);
    int _2087 = int(_558.y);
    float4 _2091 = _40.Load(int3(int3(_2086, _2087, 0).xy, 0));
    float _2096 = _2091.y;
    float _2099 = lerp(lerp(1.0f, _2091.x, _38_m6.x), 1.0f, _19_m80.z);
    float _2100 = dot(_2008, _2064);
    float3 _2107 = _2020 * _19_m79.z;
    float3 _2108 = _2107 * 0.64999997615814208984375f;
    float _2112 = dot(_2016, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2125 = clamp(-dot(_2068.xz, normalize(_568.xz)), 0.0f, 1.0f);
    float _2129 = 1.0f - _19_m91.x;
    float _2137 = smoothstep(0.25f, 1.0f, clamp(lerp(_2100, ((-_2100) * ((_2100 * 0.5f) - 1.0f)) + 0.5f, (_2125 * smoothstep(0.25f, 0.75f, 1.0f - abs(_568.y))) * _2129) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _2144 = max(max(_2137, _2137), _2137) - min(min(_2137, _2137), _2137);
    float _2146 = smoothstep(0.25f, 1.0f, dot(_2008, _568));
    float _2147 = _485 * _2096;
    float _2154 = min(min(_2096, _485), _2137);
    float _2155 = _2146 * _2147;
    float3 _2159 = ((clamp(dot(_555, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1109, 1.0f.xxx, (_19_m80.y * _2154).xxx);
    float3 _2161 = _2154.xxx;
    float3 _2184 = _2099.xxx;
    float3 _2185 = lerp((_2159 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1110), 1.5f), clamp(_1110, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2082, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2082, _2161) + ((_2159 * clamp(_1110, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2078 * _19_m91.y)))) * _19_m79.y, _2184);
    float3 _2186 = lerp(lerp(lerp(dot(_2108, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2108, 1.2000000476837158203125f.xxx), _2107, clamp((_2147 * _2146) + _2137, 0.0f, 1.0f).xxx), _2016, _2161);
    float3 _2192 = _2186 * ((1.0f - _2144).xxx + (_2137.xxxx.xyz * _2144));
    float3 _2201 = lerp(lerp(_2107, lerp(_2112.xxx, _2016, 1.2000000476837158203125f.xxx), _2155.xxx), _2192 * clamp(dot(_2186, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2192, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2184);
    float4 _2205 = float4(_2201, _2099);
    float _2207 = lerp(_2155, _2154, _2099);
    float _2210 = lerp(_19_m79.z, 1.0f, _2207);
    float3 _2218 = float3(_568.x, lerp(0.5f, _2064.y, _2099), _568.z);
    float _2231 = clamp(dot(_1830, _444), 0.0f, 1.0f);
    float _2232 = dot(_1830, normalize(((_2064 * _2099) + ((_2218 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2218, _2218)))) * 2.0f)) + (_444 * (2.0f + _2099))));
    float _2233 = _2022 * _2022;
    float _2237 = (((_2232 * _2233) - _2232) * _2232) + 1.0f;
    float _2238 = _2237 * _2237;
    float _2242 = 2.0f * _2231;
    float _2244 = (1.0f + _2231) - _2231;
    float _2261 = (1.0f - _49_m6) + (_491 * _49_m6);
    float3 _2263 = ((_2185 * _2201) * _2261) + (((_2019 * clamp((((_2233 != _2238) ? (_2233 / _2238) : 1.0f) * (0.5f / ((_2242 + (_2022 * _2244)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2185 * (((_2207 * 0.5f) + 0.5f) * _2210)) * 1.0f)) * _19_m92.w);
    float _2264 = dot(_2263, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2267 = clamp(_2264 - 0.5f, 0.0f, 0.5f);
    float3 _2303 = normalize(cross(_568, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2309 = dot(_444, _2008);
    float _2311 = 1.0f - abs(_2309);
    float _2333 = dot(_2068, _2008);
    float _2345 = 1.0f - _2099;
    float _2372 = lerp(_2010, _1832, _1831);
    float _2373 = _2372 * _2372;
    float _2374 = _2231 * _2231;
    float _2375 = _2374 * _2231;
    float2 _2376 = float2(1.0f, _2231);
    float2 _2379 = float2(1.0f, _2373);
    float3 _2382 = float3(1.0f, _2373, (_2373 * _2373) * _2373);
    float _2387 = dot(mul(_2376, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2379) / dot(mul(float3(1.0f, _2374, _2375), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2382);
    float _2392 = dot(mul(_2376, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2379) / dot(mul(float3(1.0f, _2231, _2375), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2382);
    float3 _2395 = (_2019 * _2387) + _2392.xxx;
    float _2396 = _2387 + _2392;
    float3 _2402 = -_444;
    float3 _2420 = lerp(_2264.xxx, _2263, ((_2267 * _2267) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2311)) * _19_m87.w) * min(min(clamp(dot(_535, _2303) + 1.0f, 0.0f, 1.0f), _485), _2096)) * (lerp(0.25f.xxx, _2016, _19_m88.z.xxx) * clamp(dot(_2303, _2008), 0.0f, 1.0f))) + ((((((lerp(_1108 * (1.0f / max(max(max(_1108.x, _1108.y), _1108.z) * 0.5f, 1.0f)), _2082, _2184) * clamp(lerp(dot(_1107.xyz, _2008) * _1107.w, ((-_2333) * ((_2333 * 0.5f) - 1.0f)) + 0.5f, _2099), 0.0f, 1.0f)) * ((_2345 + (_2125 * _2099)) * _2129)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2311)) * min(_485, _2096)) * (_2345 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2112) * _2099))) * max(0.1500000059604644775390625f.xxx, _2016)));
    float2 _2422 = float2(_558);
    float2 _2424 = floor(_2422 * 0.03125f);
    int _2432 = int((_2424.x + (_2424.y * _34_m5)) * 8.0f);
    float _2439 = floor(_425 - (_19_m3.y * _34_m11));
    float _2443 = clamp(_2439, 0.0f, _34_m7 - 1.0f);
    int _2445 = int(_2443 * 8.0f);
    float3 _2447;
    _2447 = _2420 + (((_58.SampleLevel(_25, reflect(_2402, _1830), (1.2000000476837158203125f * log2(max(_2372, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2395 + ((_2019 * ((1.0f - _2396) / _2396)) * _2395)) * 1.0f)) * ((clamp(_1110, 0.5f, 1.5f) * _19_m79.w) * _2210)) * _1109);
    float3 _2448;
    [loop]
    for (int _2450 = 0; _2450 <= 7; _2447 = _2448, _2450++)
    {
        uint _2468 = (_2439 <= _2443) ? (_30.Load(uint(_2432 + _2450) * 4 + 0) & _30.Load(uint((_19_m21.y + _2445) + _2450) * 4 + 0)) : 0u;
        uint _2469 = uint(_2450);
        _2448 = _2447;
        uint _2474;
        float3 _2471;
        [loop]
        for (uint _2473 = _2468; _2473 != 0u; _2448 = _2471, _2473 = _2474)
        {
            uint _2478 = firstbitlow(_2473);
            _2474 = _2473 ^ (1u << (_2478 & 31u));
            int _2484 = int((32u * _2469) + _2478) * 8;
            int _2487 = _2484 + 1;
            int _2490 = _2484 + 2;
            int _2493 = _2484 + 3;
            int _2496 = _2484 + 4;
            int _2499 = _2484 + 5;
            int _2502 = _2484 + 6;
            int _2505 = _2484 + 7;
            uint _2509 = uint(_36_m6[_2499].w);
            float _2584;
            if ((_2509 & 1u) == 1u)
            {
                uint _2515 = asuint(_36_m6[_2499].x);
                uint _2522 = asuint(_36_m6[_2499].y);
                uint _2529 = asuint(_36_m6[_2499].z);
                uint _2536 = asuint(_36_m6[_2502].x);
                uint _2543 = asuint(_36_m6[_2502].y);
                uint _2550 = asuint(_36_m6[_2502].z);
                float3 _2569 = abs(mul(float4(_528 - _36_m6[_2487].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2515).x, spvUnpackHalf2x16(_2529).x, spvUnpackHalf2x16(_2543).x, 0.0f), float4(spvUnpackHalf2x16(_2515 >> 16u).x, spvUnpackHalf2x16(_2529 >> 16u).x, spvUnpackHalf2x16(_2543 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2522).x, spvUnpackHalf2x16(_2536).x, spvUnpackHalf2x16(_2550).x, 0.0f), float4(spvUnpackHalf2x16(_2522 >> 16u).x, spvUnpackHalf2x16(_2536 >> 16u).x, spvUnpackHalf2x16(_2550 >> 16u).x, 0.0f))).xyz);
                float _2576 = _36_m6[_2505].x * 0.5f;
                float _2582 = 1.0f - clamp((max(max(_2569.x, _2569.y), _2569.z) - (_2576 + 0.5f)) / (0.5f - _2576), 0.0f, 1.0f);
                _2584 = _2582 * _2582;
            }
            else
            {
                _2584 = 1.0f;
            }
            if (false || (_2584 < 0.001000000047497451305389404296875f))
            {
                _2471 = _2448;
                continue;
            }
            float3 _3277;
            if (_36_m6[_2484].w < 1.5f)
            {
                float3 _3276;
                do
                {
                    uint _2597 = asuint(_36_m6[_2493].w);
                    if ((_2597 == 16u) || ((_36_m6[_2493].z + _19_m91.z) < 0.5f))
                    {
                        _3276 = _2448;
                        break;
                    }
                    bool _2609 = (uint(_36_m6[_2484].w) & 1u) == 0u;
                    bool _2613 = (!_2609) && (_36_m6[_2490].z > 0.0f);
                    bool _2614 = _2597 == 4u;
                    float _2615 = float(_2609);
                    float _2623 = (0.5f + (0.5f * _36_m6[_2490].y)) - abs(_36_m6[_2490].x);
                    float _2624 = _36_m6[_2490].y - _2623;
                    float _2631 = abs(max((1.0f - abs(_2623)) - abs(_2624), 0.00048828125f));
                    float3 _2635 = normalize(float3(_2623, _2624, (_36_m6[_2490].x >= 0.0f) ? _2631 : (-_2631)));
                    float _2641 = lerp(_36_m6[_2502].w, max(2.0f * _36_m6[_2496].y, 0.100000001490116119384765625f), float(_2614));
                    float3 _2646 = _36_m6[_2487].xyz - _528;
                    float3 _2647 = -_2635;
                    float3 _2652 = lerp(_2646, _2647 * dot(_2646, _2647), (float(_2614 && (_36_m6[_2496].z > 0.5f)) * _2615).xxx);
                    float _2653 = dot(_2652, _2652);
                    float _2654 = rsqrt(_2653);
                    float3 _2655 = _2652 * _2654;
                    float3 _2688;
                    float _2689;
                    if (_2613)
                    {
                        float3 _2659 = (_2635 * _36_m6[_2490].z) * 0.5f;
                        float3 _2660 = _2652 - _2659;
                        float3 _2661 = _2652 + _2659;
                        float _2662 = length(_2660);
                        float _2663 = length(_2661);
                        float3 _2672 = normalize(cross(cross(_2635, _2655), _2635));
                        _2688 = _2672;
                        _2689 = ((1.0f / ((((_2662 * _2663) + dot(_2660, _2661)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2672, _2660) / _2662) + (dot(_2672, _2661) / _2663)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2490].z * _2654, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2688 = _2655;
                        _2689 = 1.0f;
                    }
                    float _2711;
                    if (_2641 < 0.0f)
                    {
                        float _2699 = _2653 * (_36_m6[_2487].w * _36_m6[_2487].w);
                        float _2702 = clamp(1.0f - (_2699 * _2699), 0.0f, 1.0f);
                        _2711 = lerp(1.0f / (_2653 + 1.0f), _2689, float(_2613)) * (_2702 * _2702);
                    }
                    else
                    {
                        float3 _2705 = _2652 * _36_m6[_2487].w;
                        _2711 = _2689 * pow(1.0f - clamp(dot(_2705, _2705), 0.0f, 1.0f), _2641);
                    }
                    float _2716 = clamp((dot(_2688, _2647) - _36_m6[_2490].z) * _36_m6[_2490].w, 0.0f, 1.0f);
                    float _2719 = _2711 * lerp(1.0f, _2716 * _2716, _2615);
                    int _2721 = int(_36_m6[_2505].w);
                    float _2825;
                    if ((!_2613) && (_2721 >= 0))
                    {
                        uint _2727 = uint(_2721);
                        float2 _2818;
                        [branch]
                        if (_2615 != 0.0f)
                        {
                            float4 _2739 = mul(_61_m1[_2727], float4(_528.x, _600, _528.z, 1.0f));
                            _2818 = _61_m0[_2727].xy + (clamp(_2739.xy / _2739.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2727].zw);
                        }
                        else
                        {
                            float3 _2759 = mul(float4(-_2652, 0.0f), _61_m1[_2727]).xyz;
                            float3 _414 = _2759;
                            float3 _413 = _2759;
                            float3 _412 = abs(_2759);
                            uint _2768 = uint(int(_412.y > _412.x));
                            uint _2774 = (_412.z > _412[_2768]) ? 2u : _2768;
                            uint _2780 = (_2774 * 2u) + uint(_413[_2774] < 0.0f);
                            float _2784 = abs(_414[_2780 / 2u]);
                            float _2804 = 0.5f - (0.000244140625f / _61_m0[_2727].w);
                            _2818 = _61_m0[_2727].xy + (clamp(float2((float(_2780) + ((((_414[uint(_363[_2780].x)] * _364[_2780].x) / _2784) * _2804) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_414[uint(_363[_2780].y)] * _364[_2780].y) / _2784) * _2804)), 0.0f.xx, 1.0f.xx) * _61_m0[_2727].zw);
                        }
                        _2825 = _2719 * _59.SampleLevel(_25, _2818, 0.0f).x;
                    }
                    else
                    {
                        _2825 = _2719;
                    }
                    float _2826 = _2825 * _2584;
                    float3 _3275;
                    do
                    {
                        float3 _3274;
                        [branch]
                        if (_2826 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2614)
                            {
                                _3275 = lerp(_2448, _36_m6[_2484].xyz, (_2826 * (_36_m6[_2496].x * ((1.0f - _36_m6[_2496].w) + (smoothstep(-0.5f, 0.5f, dot(_556, _2688)) * _36_m6[_2496].w)))).xxx);
                                break;
                            }
                            float _2846 = dot(_2008, _2688);
                            float _2847 = clamp(_2846, 0.0f, 1.0f);
                            float _3150;
                            if (_2597 != 0u)
                            {
                                bool _2853 = _2609 || ((_2509 & 2u) != 0u);
                                int _2902;
                                if (_2853)
                                {
                                    _2902 = int(_36_m6[_2493].x);
                                }
                                else
                                {
                                    uint _2859 = asuint(_36_m6[_2490].w);
                                    uint _2861 = asuint(_36_m6[_2493].x);
                                    float3 _2862 = _528 - _36_m6[_2487].xyz;
                                    float3 _2863 = abs(_2862);
                                    float _2864 = _2863.x;
                                    float _2865 = _2863.y;
                                    float _2867 = _2863.z;
                                    int _2899;
                                    if ((_2864 > _2865) && (_2864 > _2867))
                                    {
                                        _2899 = int((_2862.x > 0.0f) ? (_2859 >> 24u) : ((_2859 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2898;
                                        if (_2865 > _2867)
                                        {
                                            _2898 = int((_2862.y > 0.0f) ? ((_2859 >> 8u) & 255u) : (_2859 & 255u));
                                        }
                                        else
                                        {
                                            _2898 = int((_2862.z > 0.0f) ? ((_2861 >> 8u) & 255u) : (_2861 & 255u));
                                        }
                                        _2899 = _2898;
                                    }
                                    _2902 = (_2899 < 80) ? _2899 : (-1);
                                }
                                bool _2903 = _2902 >= 0;
                                float _3149;
                                if (_2903)
                                {
                                    float3 _2907 = _528 - _36_m6[_2487].xyz;
                                    float4 _2927 = mul(_38_m10[_2902], float4((_528 - ((_2907 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2907, _2907)))) * _38_m11[_2902].x)) + (_556 * (_38_m11[_2902].y * 5.0f)), 1.0f));
                                    float _2928 = _2927.w;
                                    float3 _2931 = _2927.xyz / _2928.xxx;
                                    float2 _2932 = _2931.xy;
                                    float3 _2940 = _2931.xyz;
                                    bool3 _2941 = bool3(_2940.x <= 0.0f.xxx.x, _2940.y <= 0.0f.xxx.y, _2940.z <= 0.0f.xxx.z);
                                    bool3 _2942 = bool3(_2940.x >= 1.0f.xxx.x, _2940.y >= 1.0f.xxx.y, _2940.z >= 1.0f.xxx.z);
                                    float _2945 = _2931.z;
                                    float2 _2956 = ((_2932 * (_38_m12[_2902].zw - _38_m12[_2902].xy)) + _38_m12[_2902].xy).xy * _38_m13.zw;
                                    float2 _2958 = floor(_2956 + 0.5f.xx);
                                    float2 _2959 = _2956 - _2958;
                                    float _2961 = _2959.x + 0.5f;
                                    float _2962 = _2961 * _2961;
                                    float _2965 = 1.0f - _2959.x;
                                    float _2966 = min(_2959.x, 0.0f);
                                    float _2969 = _2959.x + 1.0f;
                                    float _2970 = max(_2959.x, 0.0f);
                                    float _2982 = _2959.y + 0.5f;
                                    float _2983 = _2982 * _2982;
                                    float _2986 = 1.0f - _2959.y;
                                    float _2987 = min(_2959.y, 0.0f);
                                    float _2990 = _2959.y + 1.0f;
                                    float _2991 = max(_2959.y, 0.0f);
                                    float3 _3003 = float3(0.1599999964237213134765625f * _2965, 0.1599999964237213134765625f * ((_2969 - (_2970 * _2970)) + 1.0f), _2962 * 0.07999999821186065673828125f);
                                    float3 _3004 = float3(0.1599999964237213134765625f * ((_2962 * 0.5f) - _2959.x), 0.1599999964237213134765625f * ((_2965 - (_2966 * _2966)) + 1.0f), 0.1599999964237213134765625f * _2969) + _3003;
                                    float3 _3006 = float3(0.1599999964237213134765625f * _2986, 0.1599999964237213134765625f * ((_2990 - (_2991 * _2991)) + 1.0f), _2983 * 0.07999999821186065673828125f);
                                    float3 _3007 = float3(0.1599999964237213134765625f * ((_2983 * 0.5f) - _2959.y), 0.1599999964237213134765625f * ((_2986 - (_2987 * _2987)) + 1.0f), 0.1599999964237213134765625f * _2990) + _3006;
                                    float3 _3013 = ((_3003 / _3004) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3015 = ((_3006 / _3007) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3017 = _2958 * _38_m13.xy;
                                    float _3018 = _3013.x;
                                    float _3019 = _3015.x;
                                    float _3022 = _3013.y;
                                    float _3025 = _3013.z;
                                    float _3028 = _3015.y;
                                    float _3035 = _3015.z;
                                    float _3042 = _3004.x;
                                    float _3043 = _3007.x;
                                    float _3045 = _3004.y;
                                    float _3047 = _3004.z;
                                    float _3049 = _3007.y;
                                    float _3053 = _3007.z;
                                    float _3111 = (((((((_3042 * _3043) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3018, _3019), _406).xy, _2945)) + ((_3045 * _3043) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3022, _3019), _406).xy, _2945))) + ((_3047 * _3043) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3025, _3019), _406).xy, _2945))) + ((_3042 * _3049) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3018, _3028), _406).xy, _2945))) + ((_3045 * _3049) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3022, _3028), _406).xy, _2945))) + ((_3047 * _3049) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3025, _3028), _406).xy, _2945))) + ((_3042 * _3053) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3018, _3035), _406).xy, _2945));
                                    float2 _3132 = min(_2932, 1.0f.xx - _2932);
                                    _3149 = _2903 ? lerp(1.0f, (any(bool3(_2941.x || _2942.x, _2941.y || _2942.y, _2941.z || _2942.z)) || ((asuint(_2945) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3111 + ((_3045 * _3053) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3022, _3035), _406).xy, _2945))) + ((_3047 * _3053) * _39.SampleCmpLevelZero(_27, float3(_3017 + float2(_3025, _3035), _406).xy, _2945))), _2853 ? min(_38_m11[_2902].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2902].z - _2928) * 0.25f, min(_3132.x, _3132.y)))) : _38_m11[_2902].w) : 1.0f;
                                }
                                else
                                {
                                    _3149 = clamp(dot(_535, _2688) + 1.0f, 0.0f, 1.0f);
                                }
                                _3150 = _3149;
                            }
                            else
                            {
                                _3150 = 1.0f;
                            }
                            float _3230;
                            float3 _3231;
                            float _3232;
                            float3 _3233;
                            float3 _3234;
                            float _3235;
                            float _3236;
                            [branch]
                            if (_2597 == 0u)
                            {
                                float3 _3156 = _36_m6[_2484].xyz * _2826;
                                float3 _3169 = _2205.xyz;
                                _3230 = _2826;
                                _3231 = (_36_m6[_2484].xyz * ((1.0f - _36_m6[_2496].y) + ((1.0f / max(1.0f, max(max(_3156.x, _3156.y), _3156.z) * lerp(0.75f, 0.5f, _2345))) * _36_m6[_2496].y))) * lerp(0.25f * _36_m6[_2496].x, 1.0f, clamp(_2846 + 0.5f, 0.0f, 1.0f));
                                _3232 = _2847;
                                _3233 = _3169;
                                _3234 = _3169;
                                _3235 = 1.0f;
                                _3236 = 0.0f;
                            }
                            else
                            {
                                float _3224;
                                float _3225;
                                float3 _3226;
                                float3 _3227;
                                float _3228;
                                float _3229;
                                if (_2597 == 3u)
                                {
                                    _3224 = _2826 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2496].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2496].x), _2311) * _3150);
                                    _3225 = clamp(dot(_2008, -normalize(cross(_568, cross(_568, _2688)))), 0.0f, 1.0f);
                                    _3226 = lerp(0.5f.xxx, _2016, _36_m6[_2496].y.xxx);
                                    _3227 = 0.0f.xxx;
                                    _3228 = 1.0f;
                                    _3229 = 0.0f;
                                }
                                else
                                {
                                    bool _3194 = _2597 == 1u;
                                    float _3218;
                                    float3 _3219;
                                    float _3220;
                                    float _3221;
                                    if (_3194)
                                    {
                                        _3218 = clamp(clamp(_2846 + _36_m6[_2496].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3150;
                                        _3219 = _2020 * _36_m6[_2496].y;
                                        _3220 = 1.0f;
                                        _3221 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3204 = _2597 == 2u;
                                        float _3216;
                                        if (_3204)
                                        {
                                            _3216 = smoothstep(_36_m6[_2496].x + 0.0500000007450580596923828125f, _36_m6[_2496].x - 0.0500000007450580596923828125f, _2010) * ((1.0f - _36_m6[_2496].z) + (step(0.5f, _2013) * _36_m6[_2496].z));
                                        }
                                        else
                                        {
                                            _3216 = 1.0f;
                                        }
                                        _3218 = _2847;
                                        _3219 = 0.0f.xxx;
                                        _3220 = _3216;
                                        _3221 = _3204 ? _36_m6[_2496].y : 0.0f;
                                    }
                                    bool3 _3222 = _3194.xxx;
                                    _3224 = _2826;
                                    _3225 = _3218;
                                    _3226 = float3(_3222.x ? _2016.x : 0.0f.xxx.x, _3222.y ? _2016.y : 0.0f.xxx.y, _3222.z ? _2016.z : 0.0f.xxx.z);
                                    _3227 = _3219;
                                    _3228 = _3220;
                                    _3229 = _3221;
                                }
                                _3230 = _3224;
                                _3231 = _36_m6[_2484].xyz;
                                _3232 = _3225;
                                _3233 = _3226;
                                _3234 = _3227;
                                _3235 = _3228;
                                _3236 = _3229;
                            }
                            float3 _3264;
                            [branch]
                            if (_2597 != 3u)
                            {
                                float _3241 = lerp(_2022, 0.00999999977648258209228515625f, _3236);
                                float _3244 = dot(_1830, normalize(_2688 + _444));
                                float _3245 = _3241 * _3241;
                                float _3249 = (((_3244 * _3245) - _3244) * _3244) + 1.0f;
                                float _3250 = _3249 * _3249;
                                _3264 = ((_2019 * clamp((((_3245 != _3250) ? (_3245 / _3250) : 1.0f) * (0.5f / ((_2242 + (_3241 * _2244)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3235) * _36_m6[_2505].z;
                            }
                            else
                            {
                                _3264 = 0.0f.xxx;
                            }
                            float3 _3267 = _3231 * _3230;
                            _3274 = _2448 + (((_3267 * lerp(_3234, _3233, _3232.xxx)) * _2261) + ((_3267 * _3264) * _3232));
                        }
                        else
                        {
                            _3274 = _2448;
                        }
                        _3275 = _3274;
                        break;
                    } while(false);
                    _3276 = _3275;
                    break;
                } while(false);
                _3277 = _3276;
            }
            else
            {
                _3277 = _2448;
            }
            _2471 = _3277;
        }
    }
    float3 _3317;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3317 = lerp(lerp(0.5f.xxx, lerp(dot(_2447, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2447, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2309, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3317 = _2447;
    }
    float4 _3324 = float4(_3317 * _19_m20.y, _491);
    _3324.w = (_49_m8 == 1.0f) ? _491 : 1.0f;
    float4 _3711;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3348 = _600 * _19_m46.w;
        float _3353 = max(0.00999999977648258209228515625f, _3348 + _19_m47.w);
        float3 _3367 = exp(_19_m45.xyz * ((-max(0.0f, (_445 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3353)) / _3353) * exp(_3348 + _19_m48.w))));
        float _3370 = dot(_2402, _19_m44.xyz);
        float _3376 = _19_m45.w * _19_m45.w;
        float _3380 = (1.0f + _3376) - ((2.0f * _19_m45.w) * _3370);
        float3 _3703;
        float _3704;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3425 = (uint3(int3(_2086, _2087, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3426 = _3425.y;
            uint _3427 = _3425.z;
            uint _3430 = _3425.x + (_3426 * _3427);
            uint _3432 = _3426 + (_3427 * _3430);
            uint _3434 = _3427 + (_3430 * _3432);
            uint _3436 = _3430 + (_3432 * _3434);
            float _3461 = dot(_2402, -_17_m0[2].xyz);
            float3 _3468 = _528 - _17_m11.xyz;
            float _3470 = (_19_m55.w * ((_3461 > 5.9604644775390625e-08f) ? (1.0f / _3461) : 0.0f)) * (1.0f / _445);
            float _3471 = _3468.y;
            float _3472 = _3470 * _3471;
            float _3474 = _17_m11.y + _3472;
            float _3475 = _3471 - _3472;
            float _3477 = (1.0f - _3470) * _445;
            float _3491 = max(-127.0f, _19_m49.z * _3475);
            float _3515 = max(-127.0f, _19_m52.x * _3475);
            float _3526 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3474 - _19_m49.x)))) * ((abs(_3491) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3491)) / _3491) : (0.693147182464599609375f - (0.2402265071868896484375f * _3491)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3474 - _19_m52.z)))) * ((abs(_3515) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3515)) / _3515) : (0.693147182464599609375f - (0.2402265071868896484375f * _3515))));
            float _3548 = clamp((_445 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3551 = clamp((max(clamp(exp2(-(_3526 * _3477)), 0.0f, 1.0f), _19_m51.w) + clamp((_445 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3548, 0.0f, 1.0f);
            float4 _3591 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _64.SampleLevel(_25, float3((_2422 + ((((float3(uint3(_3436, _3432 + (_3434 * _3436), _410) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_425 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_425 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3703 = _3591.xyz + (((_19_m51.xyz * (1.0f - _3551)) + (((_19_m54.xyz * pow(clamp(dot(_444, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3526 * max(_3477 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3548))) * _3591.w);
            _3704 = _3591.w * _3551;
        }
        else
        {
            float3 _3597 = _528 - _17_m11.xyz;
            float _3599 = _3597.y;
            float _3613 = max(-127.0f, _19_m49.z * _3599);
            float _3637 = max(-127.0f, _19_m52.x * _3599);
            float _3648 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3613) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3613)) / _3613) : (0.693147182464599609375f - (0.2402265071868896484375f * _3613)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3637) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3637)) / _3637) : (0.693147182464599609375f - (0.2402265071868896484375f * _3637))));
            float _3670 = clamp((_445 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3673 = clamp((max(clamp(exp2(-(_3648 * _445)), 0.0f, 1.0f), _19_m51.w) + clamp((_445 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3670, 0.0f, 1.0f);
            _3703 = (_19_m51.xyz * (1.0f - _3673)) + (((_19_m54.xyz * pow(clamp(dot(_444, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3648 * max(_445 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3670));
            _3704 = _3673;
        }
        float3 _3709 = (_3324.xyz * (_3367 * _3704)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3370 * _3370)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3376) / max((12.56637096405029296875f * _3380) * sqrt(_3380), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3367)) * _3704) + _3703);

        // RenoDX code start: apply the hue-preserving fog composite.
        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3709 = (_3709 * 0.65f) + (_3324.xyz * 0.35f);

        }
        // RenoDX code end
        _3711 = float4(_3709.x, _3709.y, _3709.z, _3324.w);
    }
    else
    {
        _3711 = _3324;
    }
    _14 = _3711;
    _15 = _2051;
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
