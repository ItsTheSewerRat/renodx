// DX11 0x0608CFD6 -> Vulkan 0x8F3E9D57
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

static float _403 = 0.0f;
static float3 _404 = 0.0f;
static float _406 = 0.0f;
static uint _407 = 0u;

static const int2 _361[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _362[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

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

[[vk::binding(51, 0)]] ByteAddressBuffer _29 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _31 : register(t18);

uint4 _31_Load4(uint byte_offset)
{
    return asuint(_31[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _32_33 : register(b48)
{
    int _33_m0 : packoffset(c0);
    int _33_m1 : packoffset(c0.y);
    int _33_m2 : packoffset(c0.z);
    int _33_m3 : packoffset(c0.w);
    float _33_m4 : packoffset(c1);
    float _33_m5 : packoffset(c1.y);
    float _33_m6 : packoffset(c1.z);
    float _33_m7 : packoffset(c1.w);
    float _33_m8 : packoffset(c2);
    float _33_m9 : packoffset(c2.y);
    float _33_m10 : packoffset(c2.z);
    float _33_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _34_35 : register(b14)
{
    float4 _35_m0 : packoffset(c0);
    float4 _35_m1 : packoffset(c1);
    float4 _35_m2 : packoffset(c2);
    float4 _35_m3 : packoffset(c3);
    float4 _35_m4 : packoffset(c4);
    uint4 _35_m5 : packoffset(c5);
    float4 _35_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _36_37 : register(b15)
{
    column_major float4x4 _37_m0[5] : packoffset(c0);
    float4 _37_m1[4] : packoffset(c20);
    float4 _37_m2[4] : packoffset(c24);
    float4 _37_m3[4] : packoffset(c28);
    float4 _37_m4 : packoffset(c32);
    float4 _37_m5 : packoffset(c33);
    float4 _37_m6 : packoffset(c34);
    float4 _37_m7 : packoffset(c35);
    float4 _37_m8 : packoffset(c36);
    float4 _37_m9[27] : packoffset(c37);
    column_major float4x4 _37_m10[56] : packoffset(c64);
    float4 _37_m11[56] : packoffset(c288);
    float4 _37_m12[56] : packoffset(c344);
    float4 _37_m13 : packoffset(c400);
    float4 _37_m14[47] : packoffset(c401);
    column_major float4x4 _37_m15[15] : packoffset(c448);
    float4 _37_m16[15] : packoffset(c508);
    float4 _37_m17[15] : packoffset(c523);
    float4 _37_m18[15] : packoffset(c538);
    float4 _37_m19 : packoffset(c553);
    float4 _37_m20 : packoffset(c554);
    float4 _37_m21[21] : packoffset(c555);
    column_major float4x4 _37_m22 : packoffset(c576);
    column_major float4x4 _37_m23 : packoffset(c580);
    float4 _37_m24 : packoffset(c584);
    float4 _37_m25 : packoffset(c585);
    float4 _37_m26 : packoffset(c586);
    float4 _37_m27[128] : packoffset(c587);
};

[[vk::binding(2, 1)]]
cbuffer _47_48 : register(b2)
{
    float _48_m0 : packoffset(c0);
    float _48_m1 : packoffset(c0.y);
    float _48_m2 : packoffset(c0.z);
    float _48_m3 : packoffset(c0.w);
    float _48_m4 : packoffset(c1);
    float _48_m5 : packoffset(c1.y);
    float _48_m6 : packoffset(c1.z);
    float _48_m7 : packoffset(c1.w);
    float _48_m8 : packoffset(c2);
    float _48_m9 : packoffset(c2.y);
    float _48_m10 : packoffset(c2.z);
    float _48_m11 : packoffset(c2.w);
    float _48_m12 : packoffset(c3);
    float _48_m13 : packoffset(c3.y);
    float _48_m14 : packoffset(c3.z);
    float _48_m15 : packoffset(c3.w);
    float _48_m16 : packoffset(c4);
    float _48_m17 : packoffset(c4.y);
    float _48_m18 : packoffset(c4.z);
    float _48_m19 : packoffset(c4.w);
    float _48_m20 : packoffset(c5);
    float _48_m21 : packoffset(c5.y);
    float _48_m22 : packoffset(c5.z);
    float _48_m23 : packoffset(c5.w);
    float4 _48_m24 : packoffset(c6);
    float4 _48_m25 : packoffset(c7);
    float4 _48_m26 : packoffset(c8);
    float4 _48_m27 : packoffset(c9);
    float4 _48_m28 : packoffset(c10);
    float4 _48_m29 : packoffset(c11);
    float4 _48_m30 : packoffset(c12);
    float _48_m31 : packoffset(c13);
    float _48_m32 : packoffset(c13.y);
    float _48_m33 : packoffset(c13.z);
    float _48_m34 : packoffset(c13.w);
    float _48_m35 : packoffset(c14);
    float _48_m36 : packoffset(c14.y);
    float _48_m37 : packoffset(c14.z);
    float _48_m38 : packoffset(c14.w);
    float4 _48_m39 : packoffset(c15);
    float4 _48_m40 : packoffset(c16);
    float4 _48_m41 : packoffset(c17);
    float4 _48_m42 : packoffset(c18);
    float4 _48_m43 : packoffset(c19);
    float4 _48_m44 : packoffset(c20);
    float _48_m45 : packoffset(c21);
    float _48_m46 : packoffset(c21.y);
    float _48_m47 : packoffset(c21.z);
    float _48_m48 : packoffset(c21.w);
    float _48_m49 : packoffset(c22);
    float _48_m50 : packoffset(c22.y);
    float _48_m51 : packoffset(c22.z);
    float _48_m52 : packoffset(c22.w);
};

[[vk::binding(50, 0)]]
cbuffer _57_58 : register(b50)
{
    float4 _58_m0[32] : packoffset(c0);
    column_major float4x4 _58_m1[32] : packoffset(c32);
};

[[vk::binding(2, 0)]] SamplerState _23 : register(s2);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _38 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _39 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _41 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _42 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _43 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _44 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _45 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _46 : register(t30);
[[vk::binding(44, 0)]] Texture2D<float4> _49 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _50 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _51 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _52 : register(t37);
[[vk::binding(3, 1)]] Texture2D<float4> _53 : register(t3);
[[vk::binding(45, 0)]] TextureCube<float4> _55 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _56 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _61 : register(t36);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float3 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(4)]] float3 _6 : TEXCOORD4;
    [[vk::location(5)]] float3 _7 : TEXCOORD5;
    [[vk::location(6)]] float3 _8 : TEXCOORD6;
    [[vk::location(7)]] float3 _9 : TEXCOORD7;
    [[vk::location(8)]] nointerpolation uint _11 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 _13 : SV_Target0;
    float4 _14 : SV_Target1;
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
    float _421 = 1.0f / gl_FragCoord.w;
    float3 _436 = lerp(-_4, float3(_16_m0[2u].x, _16_m0[2u].y, _16_m0[2u].z), _18_m4.w.xxx);
    float _437 = dot(_436, _436);
    float _439 = rsqrt(max(_437, 9.9999999392252902907785028219223e-09f));
    float3 _440 = _436 * _439;
    float _441 = _437 * _439;
    uint _444 = asuint(_21_m0[_11]._m2.x);
    bool _449 = (asuint(_21_m0[_11]._m1.w) & 16u) != 0u;
    float4 _462;
    float4 _463;
    if (_449)
    {
        _462 = asfloat(_31_Load4((_444 + 2u) * 16 + 0));
        _463 = asfloat(_31_Load4(_444 * 16 + 0));
    }
    else
    {
        _462 = _21_m0[_11]._m0[2];
        _463 = _21_m0[_11]._m0[0];
    }
    float4 _469 = _53.SampleBias(_25, _3, _18_m16);
    float3 _474 = _469.xyz * _48_m24.xyz;
    float _481 = 1.0f - _48_m0;
    float _485 = _469.w * _48_m24.w;
    float3 _490 = _474 * _48_m18;
    float3 _494 = lerp(dot(_490, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _490, _48_m19.xxx);
    float3 _498 = _4 + _16_m11.xyz;
    float3 _502 = _498 - float3(_463.w, _406, _462.w);
    _502.y = 6.103515625e-05f;
    float3 _505 = normalize(_502);
    float3 _511 = normalize(_5) * (gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5)));
    uint2 _513 = uint2(gl_FragCoord.xy);
    float3 _523 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _532 = asuint((_18_m89.x > 0.5f) ? _18_m89.y : _21_m0[_11]._m7.x);
    float4 _545 = float4(float(_532 & 255u), float((_532 >> 8u) & 255u), float((_532 >> 16u) & 255u), float((_532 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _546 = _545.x;
    float _549 = _545.w;
    float _555 = _498.y;
    float _558 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_21_m0[_11]._m7.y, _18_m89.w, _18_m89.x) - _555) * _545.y;
    float _559 = max(_545.z, _558);
    float _568 = lerp(_18_m22.x, 1.0f, _18_m91.w) * _18_m20.x;
    float4 _1062;
    float3 _1063;
    float3 _1064;
    float _1065;
    if (_18_m80.y < 0.5f)
    {
        float3 _583 = _498 - (_18_m105.xyz + (_523 * (-_18_m107.w)));
        float _597 = max(clamp((max(abs(_583.x), abs(_583.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_583.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _899;
        float4 _900;
        float4 _901;
        float _902;
        float _903;
        if ((_18_m105.w != 0.0f) && (_597 < 1.0f))
        {
            float3 _610 = _498 - (_18_m105.xyz + (_523 * (-_18_m107.y)));
            float _624 = max(clamp((max(abs(_610.x), abs(_610.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_610.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _700;
            float4 _701;
            float4 _702;
            float4 _703;
            if (_624 < 1.0f)
            {
                float3 _633 = ((_498 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _635 = _633 - floor(_633);
                float4 _639 = _41.SampleLevel(_25, _635, 0.0f);
                float _640 = 1.0f - _624;
                float _644 = _18_m106.y * 0.5f;
                float _649 = _635.x;
                float _650 = clamp(_635.y, _644, 1.0f - _644) * 0.3333333432674407958984375f;
                float _651 = _635.z;
                float4 _654 = _42.SampleLevel(_24, float3(_649, _650, _651), 0.0f);
                float _670 = _639.x;
                float _680 = _639.y;
                float _690 = _639.z;
                _700 = _597 + (_654.w * _640);
                _701 = float4(((_42.SampleLevel(_24, float3(_649, _650 + 0.666666686534881591796875f, _651), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _690, _690) * _640;
                _702 = float4(((_42.SampleLevel(_24, float3(_649, _650 + 0.3333333432674407958984375f, _651), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _680, _680) * _640;
                _703 = float4(((_654.xyz * 4.0f) - 2.0f.xxx) * _670, _670) * _640;
            }
            else
            {
                _700 = _597;
                _701 = 0.0f.xxxx;
                _702 = 0.0f.xxxx;
                _703 = 0.0f.xxxx;
            }
            float3 _709 = _498 - (_18_m105.xyz + (_523 * (-_18_m107.z)));
            float _723 = max(clamp((max(abs(_709.x), abs(_709.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_709.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _803;
            float4 _804;
            float4 _805;
            float4 _806;
            if (_723 < 1.0f)
            {
                float3 _732 = ((_498 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _734 = _732 - floor(_732);
                float4 _738 = _43.SampleLevel(_25, _734, 0.0f);
                float _740 = _624 * (1.0f - _723);
                float _744 = _18_m106.y * 0.5f;
                float _749 = _734.x;
                float _750 = clamp(_734.y, _744, 1.0f - _744) * 0.3333333432674407958984375f;
                float _751 = _734.z;
                float4 _754 = _44.SampleLevel(_24, float3(_749, _750, _751), 0.0f);
                float _770 = _738.x;
                float _781 = _738.y;
                float _792 = _738.z;
                _803 = _700 + (_754.w * _740);
                _804 = _701 + (float4(((_44.SampleLevel(_24, float3(_749, _750 + 0.666666686534881591796875f, _751), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _792, _792) * _740);
                _805 = _702 + (float4(((_44.SampleLevel(_24, float3(_749, _750 + 0.3333333432674407958984375f, _751), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _781, _781) * _740);
                _806 = _703 + (float4(((_754.xyz * 4.0f) - 2.0f.xxx) * _770, _770) * _740);
            }
            else
            {
                _803 = _700;
                _804 = _701;
                _805 = _702;
                _806 = _703;
            }
            float4 _889;
            float4 _890;
            float4 _891;
            float _892;
            if (_723 > 0.0f)
            {
                float3 _815 = ((_498 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _818 = _18_m106.xyz * 0.5f;
                float3 _820 = clamp(_815 - floor(_815), _818, 1.0f.xxx - _818);
                float4 _824 = _45.SampleLevel(_25, _820, 0.0f);
                float _826 = _723 * (1.0f - _597);
                float _830 = _18_m106.y * 0.5f;
                float _835 = _820.x;
                float _836 = clamp(_820.y, _830, 1.0f - _830) * 0.3333333432674407958984375f;
                float _837 = _820.z;
                float4 _840 = _46.SampleLevel(_24, float3(_835, _836, _837), 0.0f);
                float _856 = _824.x;
                float _867 = _824.y;
                float _878 = _824.z;
                _889 = _804 + (float4(((_46.SampleLevel(_24, float3(_835, _836 + 0.666666686534881591796875f, _837), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _878, _878) * _826);
                _890 = _805 + (float4(((_46.SampleLevel(_24, float3(_835, _836 + 0.3333333432674407958984375f, _837), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _867, _867) * _826);
                _891 = _806 + (float4(((_840.xyz * 4.0f) - 2.0f.xxx) * _856, _856) * _826);
                _892 = _803 + (_840.w * _826);
            }
            else
            {
                _889 = _804;
                _890 = _805;
                _891 = _806;
                _892 = _803;
            }
            float _895 = clamp((_892 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _899 = _889;
            _900 = _890;
            _901 = _891;
            _902 = _895 - _597;
            _903 = (_895 + _597) * 0.5f;
        }
        else
        {
            _899 = 0.0f.xxxx;
            _900 = 0.0f.xxxx;
            _901 = 0.0f.xxxx;
            _902 = 0.0f;
            _903 = 1.0f;
        }
        float4 _923 = _901 + float4(_18_m108.x * _903, (_18_m108.y * _903) + ((_18_m108.w * _902) * 0.5f), _18_m108.z * _903, (_18_m108.w * _903) + ((_18_m108.y * _902) * 0.375f));
        float4 _943 = _900 + float4(_18_m109.x * _903, (_18_m109.y * _903) + ((_18_m109.w * _902) * 0.5f), _18_m109.z * _903, (_18_m109.w * _903) + ((_18_m109.y * _902) * 0.375f));
        float4 _963 = _899 + float4(_18_m110.x * _903, (_18_m110.y * _903) + ((_18_m110.w * _902) * 0.5f), _18_m110.z * _903, (_18_m110.w * _903) + ((_18_m110.y * _902) * 0.375f));
        float4 _967 = float4(_511, 1.0f);
        float3 _973 = max(float3(dot(_923, _967), dot(_943, _967), dot(_963, _967)), 0.0f.xxx) * _568;
        float3 _981 = ((_923.xyz * 0.2125999927520751953125f) + (_943.xyz * 0.715200006961822509765625f)) + (_963.xyz * 0.072200000286102294921875f);
        float3 _985 = _981 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_981, _981)));
        float _987 = abs(_985.y);
        float3 _988 = _985;
        _988.y = _987;
        float4 _989 = float4(_988.x, _988.y, _988.z, 0.0f.xxxx.w);
        _989.w = 1.0f;
        float4 _993 = float4(_985.x, _987, _985.z, 1.0f);
        float3 _998 = max(float3(dot(_923, _993), dot(_943, _993), dot(_963, _993)), 0.0f.xxx);
        float _1006 = _973.z;
        float _1007 = _973.y;
        float4 _1012 = lerp(float4(_1006, _1007, -1.0f, 0.666666686534881591796875f), float4(_1007, _1006, 0.0f, -0.3333333432674407958984375f), step(_1006, _1007).xxxx);
        float _1013 = _973.x;
        float _1014 = _1012.x;
        float4 _1022 = lerp(float4(_1014, _1012.yw, _1013), float4(_1013, _1012.yz, _1014), step(_1014, _1013).xxxx);
        float _1023 = _1022.x;
        float _1024 = _1022.w;
        float _1025 = _1022.y;
        float _1027 = _1023 - min(_1024, _1025);
        float _1037 = frac(abs(_1022.z + ((_1024 - _1025) / ((6.0f * _1027) + 9.9999997473787516355514526367188e-05f))));
        float _1044 = min(_1027 / (_1023 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1037 - 0.5f))) * clamp(_1023, 0.0f, 1.0f));
        float _1046 = 2.0f / (2.0f - _1044);
        _1062 = _989;
        _1063 = _973;
        _1064 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1037, _1044, _1046).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1044.xxx) * _1046;
        _1065 = max(max(max(_998.x, _998.y), _998.z), 0.0f) * _568;
    }
    else
    {
        _1062 = 0.0f.xxxx;
        _1063 = 1.0f.xxx;
        _1064 = _18_m81.xyz;
        _1065 = _568;
    }
    float3 _1785;
    float _1786;
    float _1787;
    float _1788;
    float3 _1789;
    float3 _1790;
    [branch]
    if ((clamp(_546 + _559, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1093 = 1.0f - _48_m2;
        float _1096 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_474 * _1093, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1099 = _449.xxx;
        float3 _1101 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1105 = float3(_1099.x ? _1101.x : _9.x, _1099.y ? _1101.y : _9.y, _1099.z ? _1101.z : _9.z) * _18_m89.z;
        float3 _1107 = float3(_1099.x ? _8.xzy.x : _8.x, _1099.y ? _8.xzy.y : _8.y, _1099.z ? _8.xzy.z : _8.z);
        float3 _1109 = abs(_1107) - 0.20000000298023223876953125f.xxx;
        float3 _1112 = max((_1109 * _1109) * _1109, 6.103515625e-05f.xxx);
        float3 _1115 = _1112 / dot(_1112, 1.0f.xxx).xxx;
        float2 _1123 = _1105.xy;
        float2 _1128 = _1105.zy;
        float4 _1138 = ((_49.SampleBias(_25, _1105.xz, _18_m16) * _1115.y) + (_49.SampleBias(_25, _1123, _18_m16) * _1115.z)) + (_49.SampleBias(_25, _1128, _18_m16) * _1115.x);
        float _1139 = _1138.w;
        float _1141 = 1.10000002384185791015625f - _1139;
        float _1150 = max(smoothstep(0.800000011920928955078125f - _1139, _1141, clamp((_546 * _1093) + (_511.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1139, _1141, clamp(_558 * _1093, 0.0f, 1.0f)));
        float _1157 = smoothstep(0.5f, 0.75f, _48_m2);
        float _1159 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _481) * _1096;
        float _1162 = clamp(_1159 + _1157, 0.0f, 1.0f) * max(_546, _559);
        bool _1166 = !((step(_546, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _559)) != 0.0f);
        bool2 _1167 = _1166.xx;
        float2 _1169 = (1.0f - _559).xx;
        float2 _1170 = float2(_1167.x ? float2(3.0f, 4.345600128173828125f).x : _1169.x, _1167.y ? float2(3.0f, 4.345600128173828125f).y : _1169.y);
        float _1171 = 1.0f - _1162;
        float _1174 = _1166 ? _18_m10.x : 1.0f;
        float _1176 = _1174 * _1170.x;
        float _1178 = _1174 * _1170.y;
        float3 _1179 = _1105 * 20.0f;
        float3 _1180 = _1105 * 34.345600128173828125f;
        float3 _1182 = pow(max(_1109, 0.0f.xxx), 10.0f.xxx);
        float3 _1186 = _1182 / max(dot(_1182, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1188 = _1186.y;
        float2 _1189 = _1179.xz * 1.0f;
        float2 _1190 = floor(_1189);
        float2 _1193 = frac(_1190 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1197 = _1193 + dot(_1193, _1193 + 34.345001220703125f.xx).xx;
        float _1198 = _1197.x;
        float _1199 = _1197.y;
        float2 _1203 = frac(float2(_1198 * _1199, _1198 + _1199));
        float2 _1206 = frac((_1190 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1210 = _1206 + dot(_1206, _1206 + 34.345001220703125f.xx).xx;
        float _1211 = _1210.x;
        float _1212 = _1210.y;
        float2 _1216 = frac(float2(_1211 * _1212, _1211 + _1212));
        float _1222 = _1203.x;
        float _1224 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1222);
        float2 _1225 = ((_1189 - _1190) + ((((_1216 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1228 = _1225.y;
        float2 _1232 = float2(_1225.x * 1.25f, _1228 * ((_1228 < 0.0f) ? 1.25f : 0.75f));
        float _1235 = _1176 + _1222;
        float _1239 = _1166 ? frac(_1235) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1235, 0.0f, 1.0f));
        float _1251 = _1203.y;
        float _1254 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1239) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1239)) * step(0.001000000047497451305389404296875f, smoothstep(_1224, 0.0f, length(_1232)))) * step(_1171, _1251 - 0.100000001490116119384765625f);
        float _1257 = _1254 * _1188;
        float _1265 = _1186.z;
        float2 _1266 = _1179.xy * 1.0f;
        float2 _1267 = floor(_1266);
        float2 _1270 = frac(_1267 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1274 = _1270 + dot(_1270, _1270 + 34.345001220703125f.xx).xx;
        float _1275 = _1274.x;
        float _1276 = _1274.y;
        float2 _1280 = frac(float2(_1275 * _1276, _1275 + _1276));
        float2 _1283 = frac((_1267 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1287 = _1283 + dot(_1283, _1283 + 34.345001220703125f.xx).xx;
        float _1288 = _1287.x;
        float _1289 = _1287.y;
        float2 _1293 = frac(float2(_1288 * _1289, _1288 + _1289));
        float _1299 = _1280.x;
        float _1301 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1299);
        float2 _1302 = ((_1266 - _1267) + ((((_1293 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1305 = _1302.y;
        float2 _1309 = float2(_1302.x * 1.25f, _1305 * ((_1305 < 0.0f) ? 1.25f : 0.75f));
        float _1312 = _1176 + _1299;
        float _1316 = _1166 ? frac(_1312) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1312, 0.0f, 1.0f));
        float _1328 = _1280.y;
        float _1331 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1316) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1316)) * step(0.001000000047497451305389404296875f, smoothstep(_1301, 0.0f, length(_1309)))) * step(_1171, _1328 - 0.100000001490116119384765625f);
        float _1334 = _1331 * _1265;
        float _1342 = _1186.x;
        float2 _1343 = _1179.zy * 1.0f;
        float2 _1344 = floor(_1343);
        float2 _1347 = frac(_1344 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1351 = _1347 + dot(_1347, _1347 + 34.345001220703125f.xx).xx;
        float _1352 = _1351.x;
        float _1353 = _1351.y;
        float2 _1357 = frac(float2(_1352 * _1353, _1352 + _1353));
        float2 _1360 = frac((_1344 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1364 = _1360 + dot(_1360, _1360 + 34.345001220703125f.xx).xx;
        float _1365 = _1364.x;
        float _1366 = _1364.y;
        float2 _1370 = frac(float2(_1365 * _1366, _1365 + _1366));
        float _1376 = _1357.x;
        float _1378 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1376);
        float2 _1379 = ((_1343 - _1344) + ((((_1370 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1382 = _1379.y;
        float2 _1386 = float2(_1379.x * 1.25f, _1382 * ((_1382 < 0.0f) ? 1.25f : 0.75f));
        float _1389 = _1176 + _1376;
        float _1393 = _1166 ? frac(_1389) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1389, 0.0f, 1.0f));
        float _1405 = _1357.y;
        float _1408 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1393) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1393)) * step(0.001000000047497451305389404296875f, smoothstep(_1378, 0.0f, length(_1386)))) * step(_1171, _1405 - 0.100000001490116119384765625f);
        float _1411 = _1408 * _1342;
        float2 _1424 = (float4(((clamp(_1232 / _1224.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1216.x)) * _1254) * _1188, _1257, _1251).xy + float4(((clamp(_1309 / _1301.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1293.x)) * _1331) * _1265, _1334, _1328).xy) + float4(((clamp(_1386 / _1378.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1370.x)) * _1408) * _1342, _1411, _1405).xy;
        float _1426 = max(_1411, max(_1257, _1334));
        float4 _1429 = float4(_1424, _1426, 0.0f);
        float2 _1431 = _1180.xz * 1.0f;
        float2 _1432 = floor(_1431);
        float2 _1435 = frac(_1432 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1439 = _1435 + dot(_1435, _1435 + 34.345001220703125f.xx).xx;
        float _1440 = _1439.x;
        float _1441 = _1439.y;
        float2 _1445 = frac(float2(_1440 * _1441, _1440 + _1441));
        float2 _1448 = frac((_1432 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1452 = _1448 + dot(_1448, _1448 + 34.345001220703125f.xx).xx;
        float _1453 = _1452.x;
        float _1454 = _1452.y;
        float2 _1458 = frac(float2(_1453 * _1454, _1453 + _1454));
        float _1464 = _1445.x;
        float _1466 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1464);
        float2 _1467 = ((_1431 - _1432) + ((((_1458 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1470 = _1467.y;
        float2 _1474 = float2(_1467.x * 1.25f, _1470 * ((_1470 < 0.0f) ? 1.25f : 0.75f));
        float _1477 = _1178 + _1464;
        float _1481 = _1166 ? frac(_1477) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1477, 0.0f, 1.0f));
        float _1493 = _1445.y;
        float _1496 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1481) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1481)) * step(0.001000000047497451305389404296875f, smoothstep(_1466, 0.0f, length(_1474)))) * step(_1171, _1493 - 0.100000001490116119384765625f);
        float _1499 = _1496 * _1188;
        float2 _1504 = _1180.xy * 1.0f;
        float2 _1505 = floor(_1504);
        float2 _1508 = frac(_1505 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1512 = _1508 + dot(_1508, _1508 + 34.345001220703125f.xx).xx;
        float _1513 = _1512.x;
        float _1514 = _1512.y;
        float2 _1518 = frac(float2(_1513 * _1514, _1513 + _1514));
        float2 _1521 = frac((_1505 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1525 = _1521 + dot(_1521, _1521 + 34.345001220703125f.xx).xx;
        float _1526 = _1525.x;
        float _1527 = _1525.y;
        float2 _1531 = frac(float2(_1526 * _1527, _1526 + _1527));
        float _1537 = _1518.x;
        float _1539 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1537);
        float2 _1540 = ((_1504 - _1505) + ((((_1531 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1543 = _1540.y;
        float2 _1547 = float2(_1540.x * 1.25f, _1543 * ((_1543 < 0.0f) ? 1.25f : 0.75f));
        float _1550 = _1178 + _1537;
        float _1554 = _1166 ? frac(_1550) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1550, 0.0f, 1.0f));
        float _1566 = _1518.y;
        float _1569 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1554) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1554)) * step(0.001000000047497451305389404296875f, smoothstep(_1539, 0.0f, length(_1547)))) * step(_1171, _1566 - 0.100000001490116119384765625f);
        float _1572 = _1569 * _1265;
        float2 _1577 = _1180.zy * 1.0f;
        float2 _1578 = floor(_1577);
        float2 _1581 = frac(_1578 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1585 = _1581 + dot(_1581, _1581 + 34.345001220703125f.xx).xx;
        float _1586 = _1585.x;
        float _1587 = _1585.y;
        float2 _1591 = frac(float2(_1586 * _1587, _1586 + _1587));
        float2 _1594 = frac((_1578 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1598 = _1594 + dot(_1594, _1594 + 34.345001220703125f.xx).xx;
        float _1599 = _1598.x;
        float _1600 = _1598.y;
        float2 _1604 = frac(float2(_1599 * _1600, _1599 + _1600));
        float _1610 = _1591.x;
        float _1612 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1610);
        float2 _1613 = ((_1577 - _1578) + ((((_1604 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1616 = _1613.y;
        float2 _1620 = float2(_1613.x * 1.25f, _1616 * ((_1616 < 0.0f) ? 1.25f : 0.75f));
        float _1623 = _1178 + _1610;
        float _1627 = _1166 ? frac(_1623) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1623, 0.0f, 1.0f));
        float _1639 = _1591.y;
        float _1642 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1627) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1627)) * step(0.001000000047497451305389404296875f, smoothstep(_1612, 0.0f, length(_1620)))) * step(_1171, _1639 - 0.100000001490116119384765625f);
        float _1645 = _1642 * _1342;
        float2 _1653 = (float4(((clamp(_1474 / _1466.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1458.x)) * _1496) * _1188, _1499, _1493).xy + float4(((clamp(_1547 / _1539.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1531.x)) * _1569) * _1265, _1572, _1566).xy) + float4(((clamp(_1620 / _1612.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1604.x)) * _1642) * _1342, _1645, _1639).xy;
        float4 _1658 = float4(_1653, max(_1645, max(_1499, _1572)), 0.0f);
        float _1660 = step(max(float2(_1224 * _1254, _406) * _1188, max(float2(_1301 * _1331, _406) * _1265, float2(_1378 * _1408, _406) * _1342)).x, 0.00999999977648258209228515625f);
        float2 _1664 = _1429.xy + (_1658.xy * _1660);
        float3 _1673 = float3((_1138.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1664.x, _1664.y, 0.0f.xxx.z);
        float2 _1677 = float2(0.0f, (_18_m10.x * _18_m89.z) * 0.75f);
        float3 _1680 = float3(_1107.x, 0.0f, _1107.z);
        float3 _1686 = abs(_1680 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1680, _1680)))) - 0.20000000298023223876953125f.xxx;
        float3 _1689 = max((_1686 * _1686) * _1686, 6.103515625e-05f.xxx);
        float3 _1692 = _1689 / dot(_1689, 1.0f.xxx).xxx;
        float _1711 = _1692.z;
        float _1713 = _1692.x;
        float4 _1715 = (_50.SampleBias(_25, _1123, _18_m16) * _1711) + (_50.SampleBias(_25, _1128, _18_m16) * _1713);
        float2 _1727 = _1673.xy + ((((_1715.xy * 2.0f) - 1.0f.xx) * ((_50.SampleBias(_25, _1123 + _1677, _18_m16).w * _1711) + (_50.SampleBias(_25, _1128 + _1677, _18_m16).w * _1713))) * _1162);
        float3 _1728 = float3(_1727.x, _1727.y, _1673.z);
        float _1729 = _1715.z;
        float _1734 = max(max(max(_1429.zw * step(0.00999999977648258209228515625f, _1426), _1658.zw * _1660).x, step(1.0099999904632568359375f - _1162, _1138.z)), smoothstep(1.0f - _1729, 1.10000002384185791015625f - _1729, _1162) * _1162);
        float2 _1735 = _1727.xy;
        _1728.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1735, _1735), 0.0f, 1.0f)));
        float3 _1742 = normalize(_1728);
        float3 _1743 = cross(_511, float3(0.0f, 1.0f, 0.0f));
        bool3 _1746 = (dot(_1743, _1743) > 6.103515625e-05f).xxx;
        float3 _1747 = normalize(_1743);
        float3 _1748 = float3(_1746.x ? _1747.x : float3(1.0f, 0.0f, 0.0f).x, _1746.y ? _1747.y : float3(1.0f, 0.0f, 0.0f).y, _1746.z ? _1747.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1759 = min(_481, 0.0500000007450580596923828125f);
        float _1760 = lerp(_481, _1759, _1734);
        float _1777 = lerp(1.0f, 0.5f, (_1150 * (1.0f - _1096)) * (1.0f - _1159));
        _1785 = normalize(lerp(_511, normalize(((_1748 * _1742.x) + (cross(_1748, _511) * _1742.y)) + (_511 * _1742.z)), _1734.xxx));
        _1786 = _1734;
        _1787 = _1759;
        _1788 = max(_1760 - ((0.20000000298023223876953125f * _1096) * _1150), min(0.20000000298023223876953125f, _1760));
        _1789 = _494 * _1777;
        _1790 = lerp(_474, _474 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_474, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1734 * _1157).xxx) * _1777;
    }
    else
    {
        _1785 = _511;
        _1786 = 0.0f;
        _1787 = 0.00999999977648258209228515625f;
        _1788 = _481;
        _1789 = _494;
        _1790 = _474;
    }
    float3 _1959;
    float _1960;
    float3 _1961;
    float3 _1962;
    float _1963;
    [branch]
    if (_549 > 0.00999999977648258209228515625f)
    {
        bool3 _1794 = _449.xxx;
        float3 _1796 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1797 = float3(_1794.x ? _1796.x : _9.x, _1794.y ? _1796.y : _9.y, _1794.z ? _1796.z : _9.z);
        float3 _1800 = _1797 * _18_m89.z;
        float3 _1802 = float3(_1794.x ? _8.xzy.x : _8.x, _1794.y ? _8.xzy.y : _8.y, _1794.z ? _8.xzy.z : _8.z);
        float3 _1804 = abs(_1802) - 0.20000000298023223876953125f.xxx;
        float3 _1807 = max((_1804 * _1804) * _1804, 6.103515625e-05f.xxx);
        float3 _1810 = _1807 / dot(_1807, 1.0f.xxx).xxx;
        float _1826 = _1810.y;
        float _1828 = _1810.z;
        float _1831 = _1810.x;
        float4 _1833 = ((_51.SampleBias(_25, _1800.xz, _18_m16) * _1826) + (_51.SampleBias(_25, _1800.xy, _18_m16) * _1828)) + (_51.SampleBias(_25, _1800.zy, _18_m16) * _1831);
        float _1834 = _1802.y;
        float _1841 = clamp(_549 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1797.y) * clamp(_549 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1850 = smoothstep(2.0f - _1841, 2.349999904632568359375f - _1841, ((_1834 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1833.z) * float(gl_FrontFacing);
        float _1862 = lerp(1.0f, 0.5f, ((_1841 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1790 * (1.0f - _48_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1833.w) * ((_1834 * 0.25f) + 0.75f));
        float3 _1864 = _1850.xxx;
        float2 _1870 = (_1833.xy * 2.0f) - 1.0f.xx;
        float3 _1871 = float3(_1870.x, _1870.y, _404.z);
        float2 _1872 = _1870.xy;
        _1871.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1872, _1872), 0.0f, 1.0f)));
        float2 _1880 = _1871.xy * 2.0f;
        float3 _1882 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1880.x, _1880.y, _1871.z), _1864);
        float3 _1886 = _1882 * rsqrt(max(6.103515625e-05f, dot(_1882, _1882)));
        float _1887 = _511.y;
        float _1890 = step(0.00999999977648258209228515625f, 1.0f - (_1887 * _1887));
        float _1894 = lerp(_511.z, _1887, _1890);
        float3 _1901 = (float3(0.0f, _1890, 1.0f - _1890) - (_511 * _1894)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1894 * _1894)));
        float3 _1915 = _1800 * 4.0f;
        float4 _1935 = ((_52.SampleLevel(_23, _1915.xz, 0.0f) * _1826) + (_52.SampleLevel(_23, _1915.xy, 0.0f) * _1828)) + (_52.SampleLevel(_23, _1915.zy, 0.0f) * _1831);
        float2 _1938 = (_1935.xz * 2.0f) - 1.0f.xx;
        float _1949 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1938.x, _1935.y, _1938.y), (floor(_440 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1950 = _1949 * _1949;
        float _1953 = _1950 * ((_1950 * 2.0f) * _1850);
        float3 _1954 = 1.0f.xxx * _1953;
        _1959 = ((cross(_1901, _511) * _1886.x) + (_1901 * _1886.y)) + (_511 * _1886.z);
        _1960 = lerp(lerp(_1788, 0.89999997615814208984375f, clamp(_1850 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1953);
        _1961 = lerp(_1789 * _1862, 0.3079999983310699462890625f.xxx, _1864) + (_1954 * 0.5f);
        _1962 = lerp(_1790 * _1862, 0.87999999523162841796875f.xxx, _1864) + _1954;
        _1963 = lerp(_48_m2, 0.0f, _1850);
    }
    else
    {
        _1959 = _511;
        _1960 = _1788;
        _1961 = _1789;
        _1962 = _1790;
        _1963 = _48_m2;
    }
    float _1965 = 0.959999978542327880859375f - (_1963 * 0.959999978542327880859375f);
    float3 _1966 = _1962 * _1965;
    float3 _1969 = lerp(0.039999999105930328369140625f.xxx * _48_m1, _1962, _1963.xxx);
    float3 _1970 = _1961 * _1965;
    float _1972 = max(_1960 * _1960, 0.0078125f);
    bool _1979 = (1.0f - max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z)) < 0.9900000095367431640625f;
    float2 _1992 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
    _1992.y = -_1992.y;
    float2 _2008 = lerp(((sqrt(sqrt(abs(_1992 * 0.5f))) * float2(int2(sign(_1992)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1979).xx);
    float4 _2010 = float4(_2008.x, _2008.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2010.z = 1.0f;
    _2010.w = _1979 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2023 = lerp(-_35_m0.xyz, _18_m90.xyz, _18_m80.w.xxx);
    float3 _2027 = normalize(float3(_2023.x, 6.103515625e-05f, _2023.z));
    float3 _2037 = lerp(_35_m3.xyz, _18_m84.xyz, _18_m91.y.xxx);
    float3 _2041 = _2037 * lerp(_35_m3.w, 1.0f, _18_m91.w);
    int _2045 = int(_513.x);
    int _2046 = int(_513.y);
    float4 _2050 = _39.Load(int3(int3(_2045, _2046, 0).xy, 0));
    float _2055 = _2050.y;
    float _2058 = lerp(lerp(1.0f, _2050.x, _37_m6.x), 1.0f, _18_m80.z);
    float _2059 = dot(_1959, _2023);
    float3 _2066 = _1970 * _18_m79.z;
    float3 _2067 = _2066 * 0.64999997615814208984375f;
    float _2071 = dot(_1966, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2084 = clamp(-dot(_2027.xz, normalize(_523.xz)), 0.0f, 1.0f);
    float _2088 = 1.0f - _18_m91.x;
    float _2096 = smoothstep(0.25f, 1.0f, clamp(lerp(_2059, ((-_2059) * ((_2059 * 0.5f) - 1.0f)) + 0.5f, (_2084 * smoothstep(0.25f, 0.75f, 1.0f - abs(_523.y))) * _2088) + (_18_m90.w * _18_m91.x), -1.0f, 1.0f));
    float _2103 = max(max(_2096, _2096), _2096) - min(min(_2096, _2096), _2096);
    float _2105 = smoothstep(0.25f, 1.0f, dot(_1959, _523));
    float _2112 = min(min(_2055, 1.0f), _2096);
    float _2113 = _2105 * _2055;
    float3 _2117 = ((clamp(dot(_511, _18_m85.xyz) + _18_m86.x, 0.0f, 1.0f) * _18_m86.y) + _18_m86.z).xxx * lerp(_1064, 1.0f.xxx, (_18_m80.y * _2112).xxx);
    float3 _2119 = _2112.xxx;
    float3 _2142 = _2058.xxx;
    float3 _2143 = lerp((_2117 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1065), 1.5f), clamp(_1065, 1.25f, 1.75f), _18_m80.x)) * _18_m79.w, (lerp(dot(_2041, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2041, _2119) + ((_2117 * clamp(_1065, 0.0f, 1.5f)) * ((1.0f - _18_m91.y).xxx + (_2037 * _18_m91.y)))) * _18_m79.y, _2142);
    float3 _2144 = lerp(lerp(lerp(dot(_2067, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2067, 1.2000000476837158203125f.xxx), _2066, clamp((_2055 * _2105) + _2096, 0.0f, 1.0f).xxx), _1966, _2119);
    float3 _2150 = _2144 * ((1.0f - _2103).xxx + (_2096.xxxx.xyz * _2103));
    float3 _2159 = lerp(lerp(_2066, lerp(_2071.xxx, _1966, 1.2000000476837158203125f.xxx), _2113.xxx), _2150 * clamp(dot(_2144, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2150, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2142);
    float4 _2163 = float4(_2159, _2058);
    float _2165 = lerp(_2113, _2112, _2058);
    float _2168 = lerp(_18_m79.z, 1.0f, _2165);
    float3 _2176 = float3(_523.x, lerp(0.5f, _2023.y, _2058), _523.z);
    float _2189 = clamp(dot(_1785, _440), 0.0f, 1.0f);
    float _2190 = dot(_1785, normalize(((_2023 * _2058) + ((_2176 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2176, _2176)))) * 2.0f)) + (_440 * (2.0f + _2058))));
    float _2191 = _1972 * _1972;
    float _2195 = (((_2190 * _2191) - _2190) * _2190) + 1.0f;
    float _2196 = _2195 * _2195;
    float _2200 = 2.0f * _2189;
    float _2202 = (1.0f + _2189) - _2189;
    float _2219 = (1.0f - _48_m6) + (_485 * _48_m6);
    float3 _2221 = ((_2143 * _2159) * _2219) + (((_1969 * clamp((((_2191 != _2196) ? (_2191 / _2196) : 1.0f) * (0.5f / ((_2200 + (_1972 * _2202)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2143 * (((_2165 * 0.5f) + 0.5f) * _2168)) * 1.0f)) * _18_m92.w);
    float _2222 = dot(_2221, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2225 = clamp(_2222 - 0.5f, 0.0f, 0.5f);
    float3 _2261 = normalize(cross(_523, lerp(float3(_18_m88.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m88.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m88.y), _18_m94.w.xxx)));
    float _2267 = dot(_440, _1959);
    float _2269 = 1.0f - abs(_2267);
    float _2291 = dot(_2027, _1959);
    float _2303 = 1.0f - _2058;
    float _2330 = lerp(_1960, _1787, _1786);
    float _2331 = _2330 * _2330;
    float _2332 = _2189 * _2189;
    float _2333 = _2332 * _2189;
    float2 _2334 = float2(1.0f, _2189);
    float2 _2337 = float2(1.0f, _2331);
    float3 _2340 = float3(1.0f, _2331, (_2331 * _2331) * _2331);
    float _2345 = dot(mul(_2334, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2337) / dot(mul(float3(1.0f, _2332, _2333), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2340);
    float _2350 = dot(mul(_2334, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2337) / dot(mul(float3(1.0f, _2189, _2333), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2340);
    float3 _2353 = (_1969 * _2345) + _2350.xxx;
    float _2354 = _2345 + _2350;
    float3 _2360 = -_440;
    float3 _2378 = lerp(_2222.xxx, _2221, ((_2225 * _2225) + 1.0f).xxx) + (((((_18_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m88.w), lerp(0.89999997615814208984375f, 0.5f, _18_m88.w), _2269)) * _18_m87.w) * min(min(clamp(dot(_505, _2261) + 1.0f, 0.0f, 1.0f), 1.0f), _2055)) * (lerp(0.25f.xxx, _1966, _18_m88.z.xxx) * clamp(dot(_2261, _1959), 0.0f, 1.0f))) + ((((((lerp(_1063 * (1.0f / max(max(max(_1063.x, _1063.y), _1063.z) * 0.5f, 1.0f)), _2041, _2142) * clamp(lerp(dot(_1062.xyz, _1959) * _1062.w, ((-_2291) * ((_2291 * 0.5f) - 1.0f)) + 0.5f, _2058), 0.0f, 1.0f)) * ((_2303 + (_2084 * _2058)) * _2088)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2269)) * min(1.0f, _2055)) * (_2303 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2071) * _2058))) * max(0.1500000059604644775390625f.xxx, _1966)));
    float2 _2380 = float2(_513);
    float2 _2382 = floor(_2380 * 0.03125f);
    int _2390 = int((_2382.x + (_2382.y * _33_m5)) * 8.0f);
    float _2397 = floor(_421 - (_18_m3.y * _33_m11));
    float _2401 = clamp(_2397, 0.0f, _33_m7 - 1.0f);
    int _2403 = int(_2401 * 8.0f);
    float3 _2405;
    _2405 = _2378 + (((_55.SampleLevel(_24, reflect(_2360, _1785), (1.2000000476837158203125f * log2(max(_2330, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2353 + ((_1969 * ((1.0f - _2354) / _2354)) * _2353)) * 1.0f)) * ((clamp(_1065, 0.5f, 1.5f) * _18_m79.w) * _2168)) * _1064);
    float3 _2406;
    [loop]
    for (int _2408 = 0; _2408 <= 7; _2405 = _2406, _2408++)
    {
        uint _2426 = (_2397 <= _2401) ? (_29.Load(uint(_2390 + _2408) * 4 + 0) & _29.Load(uint((_18_m21.y + _2403) + _2408) * 4 + 0)) : 0u;
        uint _2427 = uint(_2408);
        _2406 = _2405;
        uint _2432;
        float3 _2429;
        [loop]
        for (uint _2431 = _2426; _2431 != 0u; _2406 = _2429, _2431 = _2432)
        {
            uint _2436 = firstbitlow(_2431);
            _2432 = _2431 ^ (1u << (_2436 & 31u));
            int _2442 = int((32u * _2427) + _2436) * 8;
            int _2445 = _2442 + 1;
            int _2448 = _2442 + 2;
            int _2451 = _2442 + 3;
            int _2454 = _2442 + 4;
            int _2457 = _2442 + 5;
            int _2460 = _2442 + 6;
            int _2463 = _2442 + 7;
            uint _2467 = uint(_35_m6[_2457].w);
            float _2542;
            if ((_2467 & 1u) == 1u)
            {
                uint _2473 = asuint(_35_m6[_2457].x);
                uint _2480 = asuint(_35_m6[_2457].y);
                uint _2487 = asuint(_35_m6[_2457].z);
                uint _2494 = asuint(_35_m6[_2460].x);
                uint _2501 = asuint(_35_m6[_2460].y);
                uint _2508 = asuint(_35_m6[_2460].z);
                float3 _2527 = abs(mul(float4(_498 - _35_m6[_2445].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2473).x, spvUnpackHalf2x16(_2487).x, spvUnpackHalf2x16(_2501).x, 0.0f), float4(spvUnpackHalf2x16(_2473 >> 16u).x, spvUnpackHalf2x16(_2487 >> 16u).x, spvUnpackHalf2x16(_2501 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2480).x, spvUnpackHalf2x16(_2494).x, spvUnpackHalf2x16(_2508).x, 0.0f), float4(spvUnpackHalf2x16(_2480 >> 16u).x, spvUnpackHalf2x16(_2494 >> 16u).x, spvUnpackHalf2x16(_2508 >> 16u).x, 0.0f))).xyz);
                float _2534 = _35_m6[_2463].x * 0.5f;
                float _2540 = 1.0f - clamp((max(max(_2527.x, _2527.y), _2527.z) - (_2534 + 0.5f)) / (0.5f - _2534), 0.0f, 1.0f);
                _2542 = _2540 * _2540;
            }
            else
            {
                _2542 = 1.0f;
            }
            if (false || (_2542 < 0.001000000047497451305389404296875f))
            {
                _2429 = _2406;
                continue;
            }
            float3 _3235;
            if (_35_m6[_2442].w < 1.5f)
            {
                float3 _3234;
                do
                {
                    uint _2555 = asuint(_35_m6[_2451].w);
                    if ((_2555 == 16u) || ((_35_m6[_2451].z + _18_m91.z) < 0.5f))
                    {
                        _3234 = _2406;
                        break;
                    }
                    bool _2567 = (uint(_35_m6[_2442].w) & 1u) == 0u;
                    bool _2571 = (!_2567) && (_35_m6[_2448].z > 0.0f);
                    bool _2572 = _2555 == 4u;
                    float _2573 = float(_2567);
                    float _2581 = (0.5f + (0.5f * _35_m6[_2448].y)) - abs(_35_m6[_2448].x);
                    float _2582 = _35_m6[_2448].y - _2581;
                    float _2589 = abs(max((1.0f - abs(_2581)) - abs(_2582), 0.00048828125f));
                    float3 _2593 = normalize(float3(_2581, _2582, (_35_m6[_2448].x >= 0.0f) ? _2589 : (-_2589)));
                    float _2599 = lerp(_35_m6[_2460].w, max(2.0f * _35_m6[_2454].y, 0.100000001490116119384765625f), float(_2572));
                    float3 _2604 = _35_m6[_2445].xyz - _498;
                    float3 _2605 = -_2593;
                    float3 _2610 = lerp(_2604, _2605 * dot(_2604, _2605), (float(_2572 && (_35_m6[_2454].z > 0.5f)) * _2573).xxx);
                    float _2611 = dot(_2610, _2610);
                    float _2612 = rsqrt(_2611);
                    float3 _2613 = _2610 * _2612;
                    float3 _2646;
                    float _2647;
                    if (_2571)
                    {
                        float3 _2617 = (_2593 * _35_m6[_2448].z) * 0.5f;
                        float3 _2618 = _2610 - _2617;
                        float3 _2619 = _2610 + _2617;
                        float _2620 = length(_2618);
                        float _2621 = length(_2619);
                        float3 _2630 = normalize(cross(cross(_2593, _2613), _2593));
                        _2646 = _2630;
                        _2647 = ((1.0f / ((((_2620 * _2621) + dot(_2618, _2619)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2630, _2618) / _2620) + (dot(_2630, _2619) / _2621)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_2448].z * _2612, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2646 = _2613;
                        _2647 = 1.0f;
                    }
                    float _2669;
                    if (_2599 < 0.0f)
                    {
                        float _2657 = _2611 * (_35_m6[_2445].w * _35_m6[_2445].w);
                        float _2660 = clamp(1.0f - (_2657 * _2657), 0.0f, 1.0f);
                        _2669 = lerp(1.0f / (_2611 + 1.0f), _2647, float(_2571)) * (_2660 * _2660);
                    }
                    else
                    {
                        float3 _2663 = _2610 * _35_m6[_2445].w;
                        _2669 = _2647 * pow(1.0f - clamp(dot(_2663, _2663), 0.0f, 1.0f), _2599);
                    }
                    float _2674 = clamp((dot(_2646, _2605) - _35_m6[_2448].z) * _35_m6[_2448].w, 0.0f, 1.0f);
                    float _2677 = _2669 * lerp(1.0f, _2674 * _2674, _2573);
                    int _2679 = int(_35_m6[_2463].w);
                    float _2783;
                    if ((!_2571) && (_2679 >= 0))
                    {
                        uint _2685 = uint(_2679);
                        float2 _2776;
                        [branch]
                        if (_2573 != 0.0f)
                        {
                            float4 _2697 = mul(_58_m1[_2685], float4(_498.x, _555, _498.z, 1.0f));
                            _2776 = _58_m0[_2685].xy + (clamp(_2697.xy / _2697.w.xx, 0.0f.xx, 1.0f.xx) * _58_m0[_2685].zw);
                        }
                        else
                        {
                            float3 _2717 = mul(float4(-_2610, 0.0f), _58_m1[_2685]).xyz;
                            float3 _411 = _2717;
                            float3 _410 = _2717;
                            float3 _409 = abs(_2717);
                            uint _2726 = uint(int(_409.y > _409.x));
                            uint _2732 = (_409.z > _409[_2726]) ? 2u : _2726;
                            uint _2738 = (_2732 * 2u) + uint(_410[_2732] < 0.0f);
                            float _2742 = abs(_411[_2738 / 2u]);
                            float _2762 = 0.5f - (0.000244140625f / _58_m0[_2685].w);
                            _2776 = _58_m0[_2685].xy + (clamp(float2((float(_2738) + ((((_411[uint(_361[_2738].x)] * _362[_2738].x) / _2742) * _2762) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_411[uint(_361[_2738].y)] * _362[_2738].y) / _2742) * _2762)), 0.0f.xx, 1.0f.xx) * _58_m0[_2685].zw);
                        }
                        _2783 = _2677 * _56.SampleLevel(_24, _2776, 0.0f).x;
                    }
                    else
                    {
                        _2783 = _2677;
                    }
                    float _2784 = _2783 * _2542;
                    float3 _3233;
                    do
                    {
                        float3 _3232;
                        [branch]
                        if (_2784 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2572)
                            {
                                _3233 = lerp(_2406, _35_m6[_2442].xyz, (_2784 * (_35_m6[_2454].x * ((1.0f - _35_m6[_2454].w) + (smoothstep(-0.5f, 0.5f, dot(_511, _2646)) * _35_m6[_2454].w)))).xxx);
                                break;
                            }
                            float _2804 = dot(_1959, _2646);
                            float _2805 = clamp(_2804, 0.0f, 1.0f);
                            float _3108;
                            if (_2555 != 0u)
                            {
                                bool _2811 = _2567 || ((_2467 & 2u) != 0u);
                                int _2860;
                                if (_2811)
                                {
                                    _2860 = int(_35_m6[_2451].x);
                                }
                                else
                                {
                                    uint _2817 = asuint(_35_m6[_2448].w);
                                    uint _2819 = asuint(_35_m6[_2451].x);
                                    float3 _2820 = _498 - _35_m6[_2445].xyz;
                                    float3 _2821 = abs(_2820);
                                    float _2822 = _2821.x;
                                    float _2823 = _2821.y;
                                    float _2825 = _2821.z;
                                    int _2857;
                                    if ((_2822 > _2823) && (_2822 > _2825))
                                    {
                                        _2857 = int((_2820.x > 0.0f) ? (_2817 >> 24u) : ((_2817 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2856;
                                        if (_2823 > _2825)
                                        {
                                            _2856 = int((_2820.y > 0.0f) ? ((_2817 >> 8u) & 255u) : (_2817 & 255u));
                                        }
                                        else
                                        {
                                            _2856 = int((_2820.z > 0.0f) ? ((_2819 >> 8u) & 255u) : (_2819 & 255u));
                                        }
                                        _2857 = _2856;
                                    }
                                    _2860 = (_2857 < 80) ? _2857 : (-1);
                                }
                                bool _2861 = _2860 >= 0;
                                float _3107;
                                if (_2861)
                                {
                                    float3 _2865 = _498 - _35_m6[_2445].xyz;
                                    float4 _2885 = mul(_37_m10[_2860], float4((_498 - ((_2865 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2865, _2865)))) * _37_m11[_2860].x)) + (_511 * (_37_m11[_2860].y * 5.0f)), 1.0f));
                                    float _2886 = _2885.w;
                                    float3 _2889 = _2885.xyz / _2886.xxx;
                                    float2 _2890 = _2889.xy;
                                    float3 _2898 = _2889.xyz;
                                    bool3 _2899 = bool3(_2898.x <= 0.0f.xxx.x, _2898.y <= 0.0f.xxx.y, _2898.z <= 0.0f.xxx.z);
                                    bool3 _2900 = bool3(_2898.x >= 1.0f.xxx.x, _2898.y >= 1.0f.xxx.y, _2898.z >= 1.0f.xxx.z);
                                    float _2903 = _2889.z;
                                    float2 _2914 = ((_2890 * (_37_m12[_2860].zw - _37_m12[_2860].xy)) + _37_m12[_2860].xy).xy * _37_m13.zw;
                                    float2 _2916 = floor(_2914 + 0.5f.xx);
                                    float2 _2917 = _2914 - _2916;
                                    float _2919 = _2917.x + 0.5f;
                                    float _2920 = _2919 * _2919;
                                    float _2923 = 1.0f - _2917.x;
                                    float _2924 = min(_2917.x, 0.0f);
                                    float _2927 = _2917.x + 1.0f;
                                    float _2928 = max(_2917.x, 0.0f);
                                    float _2940 = _2917.y + 0.5f;
                                    float _2941 = _2940 * _2940;
                                    float _2944 = 1.0f - _2917.y;
                                    float _2945 = min(_2917.y, 0.0f);
                                    float _2948 = _2917.y + 1.0f;
                                    float _2949 = max(_2917.y, 0.0f);
                                    float3 _2961 = float3(0.1599999964237213134765625f * _2923, 0.1599999964237213134765625f * ((_2927 - (_2928 * _2928)) + 1.0f), _2920 * 0.07999999821186065673828125f);
                                    float3 _2962 = float3(0.1599999964237213134765625f * ((_2920 * 0.5f) - _2917.x), 0.1599999964237213134765625f * ((_2923 - (_2924 * _2924)) + 1.0f), 0.1599999964237213134765625f * _2927) + _2961;
                                    float3 _2964 = float3(0.1599999964237213134765625f * _2944, 0.1599999964237213134765625f * ((_2948 - (_2949 * _2949)) + 1.0f), _2941 * 0.07999999821186065673828125f);
                                    float3 _2965 = float3(0.1599999964237213134765625f * ((_2941 * 0.5f) - _2917.y), 0.1599999964237213134765625f * ((_2944 - (_2945 * _2945)) + 1.0f), 0.1599999964237213134765625f * _2948) + _2964;
                                    float3 _2971 = ((_2961 / _2962) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2973 = ((_2964 / _2965) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2975 = _2916 * _37_m13.xy;
                                    float _2976 = _2971.x;
                                    float _2977 = _2973.x;
                                    float _2980 = _2971.y;
                                    float _2983 = _2971.z;
                                    float _2986 = _2973.y;
                                    float _2993 = _2973.z;
                                    float _3000 = _2962.x;
                                    float _3001 = _2965.x;
                                    float _3003 = _2962.y;
                                    float _3005 = _2962.z;
                                    float _3007 = _2965.y;
                                    float _3011 = _2965.z;
                                    float _3069 = (((((((_3000 * _3001) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2976, _2977), _403).xy, _2903)) + ((_3003 * _3001) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2980, _2977), _403).xy, _2903))) + ((_3005 * _3001) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2983, _2977), _403).xy, _2903))) + ((_3000 * _3007) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2976, _2986), _403).xy, _2903))) + ((_3003 * _3007) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2980, _2986), _403).xy, _2903))) + ((_3005 * _3007) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2983, _2986), _403).xy, _2903))) + ((_3000 * _3011) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2976, _2993), _403).xy, _2903));
                                    float2 _3090 = min(_2890, 1.0f.xx - _2890);
                                    _3107 = _2861 ? lerp(1.0f, (any(bool3(_2899.x || _2900.x, _2899.y || _2900.y, _2899.z || _2900.z)) || ((asuint(_2903) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3069 + ((_3003 * _3011) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2980, _2993), _403).xy, _2903))) + ((_3005 * _3011) * _38.SampleCmpLevelZero(_26, float3(_2975 + float2(_2983, _2993), _403).xy, _2903))), _2811 ? min(_37_m11[_2860].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2860].z - _2886) * 0.25f, min(_3090.x, _3090.y)))) : _37_m11[_2860].w) : 1.0f;
                                }
                                else
                                {
                                    _3107 = clamp(dot(_505, _2646) + 1.0f, 0.0f, 1.0f);
                                }
                                _3108 = _3107;
                            }
                            else
                            {
                                _3108 = 1.0f;
                            }
                            float _3188;
                            float3 _3189;
                            float _3190;
                            float3 _3191;
                            float3 _3192;
                            float _3193;
                            float _3194;
                            [branch]
                            if (_2555 == 0u)
                            {
                                float3 _3114 = _35_m6[_2442].xyz * _2784;
                                float3 _3127 = _2163.xyz;
                                _3188 = _2784;
                                _3189 = (_35_m6[_2442].xyz * ((1.0f - _35_m6[_2454].y) + ((1.0f / max(1.0f, max(max(_3114.x, _3114.y), _3114.z) * lerp(0.75f, 0.5f, _2303))) * _35_m6[_2454].y))) * lerp(0.25f * _35_m6[_2454].x, 1.0f, clamp(_2804 + 0.5f, 0.0f, 1.0f));
                                _3190 = _2805;
                                _3191 = _3127;
                                _3192 = _3127;
                                _3193 = 1.0f;
                                _3194 = 0.0f;
                            }
                            else
                            {
                                float _3182;
                                float _3183;
                                float3 _3184;
                                float3 _3185;
                                float _3186;
                                float _3187;
                                if (_2555 == 3u)
                                {
                                    _3182 = _2784 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_2454].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_2454].x), _2269) * _3108);
                                    _3183 = clamp(dot(_1959, -normalize(cross(_523, cross(_523, _2646)))), 0.0f, 1.0f);
                                    _3184 = lerp(0.5f.xxx, _1966, _35_m6[_2454].y.xxx);
                                    _3185 = 0.0f.xxx;
                                    _3186 = 1.0f;
                                    _3187 = 0.0f;
                                }
                                else
                                {
                                    bool _3152 = _2555 == 1u;
                                    float _3176;
                                    float3 _3177;
                                    float _3178;
                                    float _3179;
                                    if (_3152)
                                    {
                                        _3176 = clamp(clamp(_2804 + _35_m6[_2454].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3108;
                                        _3177 = _1970 * _35_m6[_2454].y;
                                        _3178 = 1.0f;
                                        _3179 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3162 = _2555 == 2u;
                                        float _3174;
                                        if (_3162)
                                        {
                                            _3174 = smoothstep(_35_m6[_2454].x + 0.0500000007450580596923828125f, _35_m6[_2454].x - 0.0500000007450580596923828125f, _1960) * ((1.0f - _35_m6[_2454].z) + (step(0.5f, _1963) * _35_m6[_2454].z));
                                        }
                                        else
                                        {
                                            _3174 = 1.0f;
                                        }
                                        _3176 = _2805;
                                        _3177 = 0.0f.xxx;
                                        _3178 = _3174;
                                        _3179 = _3162 ? _35_m6[_2454].y : 0.0f;
                                    }
                                    bool3 _3180 = _3152.xxx;
                                    _3182 = _2784;
                                    _3183 = _3176;
                                    _3184 = float3(_3180.x ? _1966.x : 0.0f.xxx.x, _3180.y ? _1966.y : 0.0f.xxx.y, _3180.z ? _1966.z : 0.0f.xxx.z);
                                    _3185 = _3177;
                                    _3186 = _3178;
                                    _3187 = _3179;
                                }
                                _3188 = _3182;
                                _3189 = _35_m6[_2442].xyz;
                                _3190 = _3183;
                                _3191 = _3184;
                                _3192 = _3185;
                                _3193 = _3186;
                                _3194 = _3187;
                            }
                            float3 _3222;
                            [branch]
                            if (_2555 != 3u)
                            {
                                float _3199 = lerp(_1972, 0.00999999977648258209228515625f, _3194);
                                float _3202 = dot(_1785, normalize(_2646 + _440));
                                float _3203 = _3199 * _3199;
                                float _3207 = (((_3202 * _3203) - _3202) * _3202) + 1.0f;
                                float _3208 = _3207 * _3207;
                                _3222 = ((_1969 * clamp((((_3203 != _3208) ? (_3203 / _3208) : 1.0f) * (0.5f / ((_2200 + (_3199 * _2202)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3193) * _35_m6[_2463].z;
                            }
                            else
                            {
                                _3222 = 0.0f.xxx;
                            }
                            float3 _3225 = _3189 * _3188;
                            _3232 = _2406 + (((_3225 * lerp(_3192, _3191, _3190.xxx)) * _2219) + ((_3225 * _3222) * _3190));
                        }
                        else
                        {
                            _3232 = _2406;
                        }
                        _3233 = _3232;
                        break;
                    } while(false);
                    _3234 = _3233;
                    break;
                } while(false);
                _3235 = _3234;
            }
            else
            {
                _3235 = _2406;
            }
            _2429 = _3235;
        }
    }
    float3 _3275;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _3275 = lerp(lerp(0.5f.xxx, lerp(dot(_2405, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2405, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_2267, 0.0f, 1.0f))) * _48_m17);
    }
    else
    {
        _3275 = _2405;
    }
    float4 _3282 = float4(_3275 * _18_m20.y, _485);
    _3282.w = (_48_m8 == 1.0f) ? _485 : 1.0f;
    float4 _3669;
    [branch]
    if (_18_m91.w < 0.5f)
    {
        float _3306 = _555 * _18_m46.w;
        float _3311 = max(0.00999999977648258209228515625f, _3306 + _18_m47.w);
        float3 _3325 = exp(_18_m45.xyz * ((-max(0.0f, (_441 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3311)) / _3311) * exp(_3306 + _18_m48.w))));
        float _3328 = dot(_2360, _18_m44.xyz);
        float _3334 = _18_m45.w * _18_m45.w;
        float _3338 = (1.0f + _3334) - ((2.0f * _18_m45.w) * _3328);
        float3 _3661;
        float _3662;
        if (_18_m55.z > 0.0f)
        {
            uint3 _3383 = (uint3(int3(_2045, _2046, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3384 = _3383.y;
            uint _3385 = _3383.z;
            uint _3388 = _3383.x + (_3384 * _3385);
            uint _3390 = _3384 + (_3385 * _3388);
            uint _3392 = _3385 + (_3388 * _3390);
            uint _3394 = _3388 + (_3390 * _3392);
            float _3419 = dot(_2360, -_16_m0[2].xyz);
            float3 _3426 = _498 - _16_m11.xyz;
            float _3428 = (_18_m55.w * ((_3419 > 5.9604644775390625e-08f) ? (1.0f / _3419) : 0.0f)) * (1.0f / _441);
            float _3429 = _3426.y;
            float _3430 = _3428 * _3429;
            float _3432 = _16_m11.y + _3430;
            float _3433 = _3429 - _3430;
            float _3435 = (1.0f - _3428) * _441;
            float _3449 = max(-127.0f, _18_m49.z * _3433);
            float _3473 = max(-127.0f, _18_m52.x * _3433);
            float _3484 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3432 - _18_m49.x)))) * ((abs(_3449) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3449)) / _3449) : (0.693147182464599609375f - (0.2402265071868896484375f * _3449)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3432 - _18_m52.z)))) * ((abs(_3473) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3473)) / _3473) : (0.693147182464599609375f - (0.2402265071868896484375f * _3473))));
            float _3506 = clamp((_441 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3509 = clamp((max(clamp(exp2(-(_3484 * _3435)), 0.0f, 1.0f), _18_m51.w) + clamp((_441 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3506, 0.0f, 1.0f);
            float4 _3549 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_24, float3((_2380 + ((((float3(uint3(_3394, _3390 + (_3392 * _3394), _407) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_421 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_421 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3661 = _3549.xyz + (((_18_m51.xyz * (1.0f - _3509)) + (((_18_m54.xyz * pow(clamp(dot(_440, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3484 * max(_3435 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3506))) * _3549.w);
            _3662 = _3549.w * _3509;
        }
        else
        {
            float3 _3555 = _498 - _16_m11.xyz;
            float _3557 = _3555.y;
            float _3571 = max(-127.0f, _18_m49.z * _3557);
            float _3595 = max(-127.0f, _18_m52.x * _3557);
            float _3606 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3571) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3571)) / _3571) : (0.693147182464599609375f - (0.2402265071868896484375f * _3571)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3595) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3595)) / _3595) : (0.693147182464599609375f - (0.2402265071868896484375f * _3595))));
            float _3628 = clamp((_441 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3631 = clamp((max(clamp(exp2(-(_3606 * _441)), 0.0f, 1.0f), _18_m51.w) + clamp((_441 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3628, 0.0f, 1.0f);
            _3661 = (_18_m51.xyz * (1.0f - _3631)) + (((_18_m54.xyz * pow(clamp(dot(_440, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3606 * max(_441 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3628));
            _3662 = _3631;
        }
        float3 _3667 = (_3282.xyz * (_3325 * _3662)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3328 * _3328)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3334) / max((12.56637096405029296875f * _3338) * sqrt(_3338), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3325)) * _3662) + _3661);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3667 = (_3667 * 0.65f) + (_3282.xyz * 0.35f);

        }
        _3669 = float4(_3667.x, _3667.y, _3667.z, _3282.w);
    }
    else
    {
        _3669 = _3282;
    }
    _13 = _3669;
    _14 = _2010;
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
    _11 = stage_input._11;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._13 = _13;
    stage_output._14 = _14;
    return stage_output;
}
