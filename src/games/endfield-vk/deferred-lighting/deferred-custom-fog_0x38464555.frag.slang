// DX11 0x773D0A68 -> Vulkan 0x38464555
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

static float _405 = 0.0f;
static float3 _406 = 0.0f;
static float _408 = 0.0f;
static uint _409 = 0u;

static const int2 _363[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _364[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(0, 1)]]
cbuffer _47_48 : register(b0)
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
    float _48_m30 : packoffset(c12);
    float _48_m31 : packoffset(c12.y);
    float _48_m32 : packoffset(c12.z);
    float _48_m33 : packoffset(c12.w);
    float4 _48_m34 : packoffset(c13);
    float4 _48_m35 : packoffset(c14);
    float4 _48_m36 : packoffset(c15);
    float4 _48_m37 : packoffset(c16);
    float4 _48_m38 : packoffset(c17);
    float4 _48_m39 : packoffset(c18);
    float _48_m40 : packoffset(c19);
    float _48_m41 : packoffset(c19.y);
    float _48_m42 : packoffset(c19.z);
    float _48_m43 : packoffset(c19.w);
    float _48_m44 : packoffset(c20);
    float _48_m45 : packoffset(c20.y);
    float _48_m46 : packoffset(c20.z);
    float _48_m47 : packoffset(c20.w);
};

[[vk::binding(50, 0)]]
cbuffer _58_59 : register(b50)
{
    float4 _59_m0[32] : packoffset(c0);
    column_major float4x4 _59_m1[32] : packoffset(c32);
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
[[vk::binding(2, 1)]] Texture2D<float4> _53 : register(t2);
[[vk::binding(1, 1)]] Texture2D<float4> _54 : register(t1);
[[vk::binding(45, 0)]] TextureCube<float4> _56 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _57 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _62 : register(t36);

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
    float _423 = 1.0f / gl_FragCoord.w;
    float3 _438 = lerp(-_4, float3(_16_m0[2u].x, _16_m0[2u].y, _16_m0[2u].z), _18_m4.w.xxx);
    float _439 = dot(_438, _438);
    float _441 = rsqrt(max(_439, 9.9999999392252902907785028219223e-09f));
    float3 _442 = _438 * _441;
    float _443 = _439 * _441;
    uint _446 = asuint(_21_m0[_11]._m2.x);
    bool _451 = (asuint(_21_m0[_11]._m1.w) & 16u) != 0u;
    float4 _464;
    float4 _465;
    if (_451)
    {
        _464 = asfloat(_31_Load4((_446 + 2u) * 16 + 0));
        _465 = asfloat(_31_Load4(_446 * 16 + 0));
    }
    else
    {
        _464 = _21_m0[_11]._m0[2];
        _465 = _21_m0[_11]._m0[0];
    }
    float4 _471 = _53.SampleBias(_25, _3, _18_m16);
    float3 _476 = _471.xyz * _48_m24.xyz;
    float _483 = 1.0f - _48_m0;
    float _487 = _471.w * _48_m24.w;
    float3 _492 = _476 * _48_m18;
    float3 _496 = lerp(dot(_492, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _492, _48_m19.xxx);
    float4 _500 = _54.SampleBias(_25, _3, _18_m16);
    float3 _512 = _4 + _16_m11.xyz;
    float3 _516 = _512 - float3(_465.w, _408, _464.w);
    _516.y = 6.103515625e-05f;
    float3 _519 = normalize(_516);
    float3 _525 = normalize(_5) * (gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5)));
    uint2 _527 = uint2(gl_FragCoord.xy);
    float3 _537 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _546 = asuint((_18_m89.x > 0.5f) ? _18_m89.y : _21_m0[_11]._m7.x);
    float4 _559 = float4(float(_546 & 255u), float((_546 >> 8u) & 255u), float((_546 >> 16u) & 255u), float((_546 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _560 = _559.x;
    float _563 = _559.w;
    float _569 = _512.y;
    float _572 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_21_m0[_11]._m7.y, _18_m89.w, _18_m89.x) - _569) * _559.y;
    float _573 = max(_559.z, _572);
    float _582 = lerp(_18_m22.x, 1.0f, _18_m91.w) * _18_m20.x;
    float4 _1076;
    float3 _1077;
    float3 _1078;
    float _1079;
    if (_18_m80.y < 0.5f)
    {
        float3 _597 = _512 - (_18_m105.xyz + (_537 * (-_18_m107.w)));
        float _611 = max(clamp((max(abs(_597.x), abs(_597.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_597.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _913;
        float4 _914;
        float4 _915;
        float _916;
        float _917;
        if ((_18_m105.w != 0.0f) && (_611 < 1.0f))
        {
            float3 _624 = _512 - (_18_m105.xyz + (_537 * (-_18_m107.y)));
            float _638 = max(clamp((max(abs(_624.x), abs(_624.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_624.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _714;
            float4 _715;
            float4 _716;
            float4 _717;
            if (_638 < 1.0f)
            {
                float3 _647 = ((_512 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _649 = _647 - floor(_647);
                float4 _653 = _41.SampleLevel(_25, _649, 0.0f);
                float _654 = 1.0f - _638;
                float _658 = _18_m106.y * 0.5f;
                float _663 = _649.x;
                float _664 = clamp(_649.y, _658, 1.0f - _658) * 0.3333333432674407958984375f;
                float _665 = _649.z;
                float4 _668 = _42.SampleLevel(_24, float3(_663, _664, _665), 0.0f);
                float _684 = _653.x;
                float _694 = _653.y;
                float _704 = _653.z;
                _714 = _611 + (_668.w * _654);
                _715 = float4(((_42.SampleLevel(_24, float3(_663, _664 + 0.666666686534881591796875f, _665), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _704, _704) * _654;
                _716 = float4(((_42.SampleLevel(_24, float3(_663, _664 + 0.3333333432674407958984375f, _665), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _694, _694) * _654;
                _717 = float4(((_668.xyz * 4.0f) - 2.0f.xxx) * _684, _684) * _654;
            }
            else
            {
                _714 = _611;
                _715 = 0.0f.xxxx;
                _716 = 0.0f.xxxx;
                _717 = 0.0f.xxxx;
            }
            float3 _723 = _512 - (_18_m105.xyz + (_537 * (-_18_m107.z)));
            float _737 = max(clamp((max(abs(_723.x), abs(_723.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_723.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _817;
            float4 _818;
            float4 _819;
            float4 _820;
            if (_737 < 1.0f)
            {
                float3 _746 = ((_512 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _748 = _746 - floor(_746);
                float4 _752 = _43.SampleLevel(_25, _748, 0.0f);
                float _754 = _638 * (1.0f - _737);
                float _758 = _18_m106.y * 0.5f;
                float _763 = _748.x;
                float _764 = clamp(_748.y, _758, 1.0f - _758) * 0.3333333432674407958984375f;
                float _765 = _748.z;
                float4 _768 = _44.SampleLevel(_24, float3(_763, _764, _765), 0.0f);
                float _784 = _752.x;
                float _795 = _752.y;
                float _806 = _752.z;
                _817 = _714 + (_768.w * _754);
                _818 = _715 + (float4(((_44.SampleLevel(_24, float3(_763, _764 + 0.666666686534881591796875f, _765), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _806, _806) * _754);
                _819 = _716 + (float4(((_44.SampleLevel(_24, float3(_763, _764 + 0.3333333432674407958984375f, _765), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _795, _795) * _754);
                _820 = _717 + (float4(((_768.xyz * 4.0f) - 2.0f.xxx) * _784, _784) * _754);
            }
            else
            {
                _817 = _714;
                _818 = _715;
                _819 = _716;
                _820 = _717;
            }
            float4 _903;
            float4 _904;
            float4 _905;
            float _906;
            if (_737 > 0.0f)
            {
                float3 _829 = ((_512 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
                float3 _832 = _18_m106.xyz * 0.5f;
                float3 _834 = clamp(_829 - floor(_829), _832, 1.0f.xxx - _832);
                float4 _838 = _45.SampleLevel(_25, _834, 0.0f);
                float _840 = _737 * (1.0f - _611);
                float _844 = _18_m106.y * 0.5f;
                float _849 = _834.x;
                float _850 = clamp(_834.y, _844, 1.0f - _844) * 0.3333333432674407958984375f;
                float _851 = _834.z;
                float4 _854 = _46.SampleLevel(_24, float3(_849, _850, _851), 0.0f);
                float _870 = _838.x;
                float _881 = _838.y;
                float _892 = _838.z;
                _903 = _818 + (float4(((_46.SampleLevel(_24, float3(_849, _850 + 0.666666686534881591796875f, _851), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _892, _892) * _840);
                _904 = _819 + (float4(((_46.SampleLevel(_24, float3(_849, _850 + 0.3333333432674407958984375f, _851), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _881, _881) * _840);
                _905 = _820 + (float4(((_854.xyz * 4.0f) - 2.0f.xxx) * _870, _870) * _840);
                _906 = _817 + (_854.w * _840);
            }
            else
            {
                _903 = _818;
                _904 = _819;
                _905 = _820;
                _906 = _817;
            }
            float _909 = clamp((_906 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _913 = _903;
            _914 = _904;
            _915 = _905;
            _916 = _909 - _611;
            _917 = (_909 + _611) * 0.5f;
        }
        else
        {
            _913 = 0.0f.xxxx;
            _914 = 0.0f.xxxx;
            _915 = 0.0f.xxxx;
            _916 = 0.0f;
            _917 = 1.0f;
        }
        float4 _937 = _915 + float4(_18_m108.x * _917, (_18_m108.y * _917) + ((_18_m108.w * _916) * 0.5f), _18_m108.z * _917, (_18_m108.w * _917) + ((_18_m108.y * _916) * 0.375f));
        float4 _957 = _914 + float4(_18_m109.x * _917, (_18_m109.y * _917) + ((_18_m109.w * _916) * 0.5f), _18_m109.z * _917, (_18_m109.w * _917) + ((_18_m109.y * _916) * 0.375f));
        float4 _977 = _913 + float4(_18_m110.x * _917, (_18_m110.y * _917) + ((_18_m110.w * _916) * 0.5f), _18_m110.z * _917, (_18_m110.w * _917) + ((_18_m110.y * _916) * 0.375f));
        float4 _981 = float4(_525, 1.0f);
        float3 _987 = max(float3(dot(_937, _981), dot(_957, _981), dot(_977, _981)), 0.0f.xxx) * _582;
        float3 _995 = ((_937.xyz * 0.2125999927520751953125f) + (_957.xyz * 0.715200006961822509765625f)) + (_977.xyz * 0.072200000286102294921875f);
        float3 _999 = _995 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_995, _995)));
        float _1001 = abs(_999.y);
        float3 _1002 = _999;
        _1002.y = _1001;
        float4 _1003 = float4(_1002.x, _1002.y, _1002.z, 0.0f.xxxx.w);
        _1003.w = 1.0f;
        float4 _1007 = float4(_999.x, _1001, _999.z, 1.0f);
        float3 _1012 = max(float3(dot(_937, _1007), dot(_957, _1007), dot(_977, _1007)), 0.0f.xxx);
        float _1020 = _987.z;
        float _1021 = _987.y;
        float4 _1026 = lerp(float4(_1020, _1021, -1.0f, 0.666666686534881591796875f), float4(_1021, _1020, 0.0f, -0.3333333432674407958984375f), step(_1020, _1021).xxxx);
        float _1027 = _987.x;
        float _1028 = _1026.x;
        float4 _1036 = lerp(float4(_1028, _1026.yw, _1027), float4(_1027, _1026.yz, _1028), step(_1028, _1027).xxxx);
        float _1037 = _1036.x;
        float _1038 = _1036.w;
        float _1039 = _1036.y;
        float _1041 = _1037 - min(_1038, _1039);
        float _1051 = frac(abs(_1036.z + ((_1038 - _1039) / ((6.0f * _1041) + 9.9999997473787516355514526367188e-05f))));
        float _1058 = min(_1041 / (_1037 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1051 - 0.5f))) * clamp(_1037, 0.0f, 1.0f));
        float _1060 = 2.0f / (2.0f - _1058);
        _1076 = _1003;
        _1077 = _987;
        _1078 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1051, _1058, _1060).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1058.xxx) * _1060;
        _1079 = max(max(max(_1012.x, _1012.y), _1012.z), 0.0f) * _582;
    }
    else
    {
        _1076 = 0.0f.xxxx;
        _1077 = 1.0f.xxx;
        _1078 = _18_m81.xyz;
        _1079 = _582;
    }
    float3 _1799;
    float _1800;
    float _1801;
    float _1802;
    float3 _1803;
    float3 _1804;
    [branch]
    if ((clamp(_560 + _573, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1107 = 1.0f - _48_m2;
        float _1110 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_476 * _1107, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1113 = _451.xxx;
        float3 _1115 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1119 = float3(_1113.x ? _1115.x : _9.x, _1113.y ? _1115.y : _9.y, _1113.z ? _1115.z : _9.z) * _18_m89.z;
        float3 _1121 = float3(_1113.x ? _8.xzy.x : _8.x, _1113.y ? _8.xzy.y : _8.y, _1113.z ? _8.xzy.z : _8.z);
        float3 _1123 = abs(_1121) - 0.20000000298023223876953125f.xxx;
        float3 _1126 = max((_1123 * _1123) * _1123, 6.103515625e-05f.xxx);
        float3 _1129 = _1126 / dot(_1126, 1.0f.xxx).xxx;
        float2 _1137 = _1119.xy;
        float2 _1142 = _1119.zy;
        float4 _1152 = ((_49.SampleBias(_25, _1119.xz, _18_m16) * _1129.y) + (_49.SampleBias(_25, _1137, _18_m16) * _1129.z)) + (_49.SampleBias(_25, _1142, _18_m16) * _1129.x);
        float _1153 = _1152.w;
        float _1155 = 1.10000002384185791015625f - _1153;
        float _1164 = max(smoothstep(0.800000011920928955078125f - _1153, _1155, clamp((_560 * _1107) + (_525.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1153, _1155, clamp(_572 * _1107, 0.0f, 1.0f)));
        float _1171 = smoothstep(0.5f, 0.75f, _48_m2);
        float _1173 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _483) * _1110;
        float _1176 = clamp(_1173 + _1171, 0.0f, 1.0f) * max(_560, _573);
        bool _1180 = !((step(_560, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _573)) != 0.0f);
        bool2 _1181 = _1180.xx;
        float2 _1183 = (1.0f - _573).xx;
        float2 _1184 = float2(_1181.x ? float2(3.0f, 4.345600128173828125f).x : _1183.x, _1181.y ? float2(3.0f, 4.345600128173828125f).y : _1183.y);
        float _1185 = 1.0f - _1176;
        float _1188 = _1180 ? _18_m10.x : 1.0f;
        float _1190 = _1188 * _1184.x;
        float _1192 = _1188 * _1184.y;
        float3 _1193 = _1119 * 20.0f;
        float3 _1194 = _1119 * 34.345600128173828125f;
        float3 _1196 = pow(max(_1123, 0.0f.xxx), 10.0f.xxx);
        float3 _1200 = _1196 / max(dot(_1196, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1202 = _1200.y;
        float2 _1203 = _1193.xz * 1.0f;
        float2 _1204 = floor(_1203);
        float2 _1207 = frac(_1204 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1211 = _1207 + dot(_1207, _1207 + 34.345001220703125f.xx).xx;
        float _1212 = _1211.x;
        float _1213 = _1211.y;
        float2 _1217 = frac(float2(_1212 * _1213, _1212 + _1213));
        float2 _1220 = frac((_1204 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1224 = _1220 + dot(_1220, _1220 + 34.345001220703125f.xx).xx;
        float _1225 = _1224.x;
        float _1226 = _1224.y;
        float2 _1230 = frac(float2(_1225 * _1226, _1225 + _1226));
        float _1236 = _1217.x;
        float _1238 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1236);
        float2 _1239 = ((_1203 - _1204) + ((((_1230 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1242 = _1239.y;
        float2 _1246 = float2(_1239.x * 1.25f, _1242 * ((_1242 < 0.0f) ? 1.25f : 0.75f));
        float _1249 = _1190 + _1236;
        float _1253 = _1180 ? frac(_1249) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1249, 0.0f, 1.0f));
        float _1265 = _1217.y;
        float _1268 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1253) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1253)) * step(0.001000000047497451305389404296875f, smoothstep(_1238, 0.0f, length(_1246)))) * step(_1185, _1265 - 0.100000001490116119384765625f);
        float _1271 = _1268 * _1202;
        float _1279 = _1200.z;
        float2 _1280 = _1193.xy * 1.0f;
        float2 _1281 = floor(_1280);
        float2 _1284 = frac(_1281 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1288 = _1284 + dot(_1284, _1284 + 34.345001220703125f.xx).xx;
        float _1289 = _1288.x;
        float _1290 = _1288.y;
        float2 _1294 = frac(float2(_1289 * _1290, _1289 + _1290));
        float2 _1297 = frac((_1281 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1301 = _1297 + dot(_1297, _1297 + 34.345001220703125f.xx).xx;
        float _1302 = _1301.x;
        float _1303 = _1301.y;
        float2 _1307 = frac(float2(_1302 * _1303, _1302 + _1303));
        float _1313 = _1294.x;
        float _1315 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1313);
        float2 _1316 = ((_1280 - _1281) + ((((_1307 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1319 = _1316.y;
        float2 _1323 = float2(_1316.x * 1.25f, _1319 * ((_1319 < 0.0f) ? 1.25f : 0.75f));
        float _1326 = _1190 + _1313;
        float _1330 = _1180 ? frac(_1326) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1326, 0.0f, 1.0f));
        float _1342 = _1294.y;
        float _1345 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1330) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1330)) * step(0.001000000047497451305389404296875f, smoothstep(_1315, 0.0f, length(_1323)))) * step(_1185, _1342 - 0.100000001490116119384765625f);
        float _1348 = _1345 * _1279;
        float _1356 = _1200.x;
        float2 _1357 = _1193.zy * 1.0f;
        float2 _1358 = floor(_1357);
        float2 _1361 = frac(_1358 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1365 = _1361 + dot(_1361, _1361 + 34.345001220703125f.xx).xx;
        float _1366 = _1365.x;
        float _1367 = _1365.y;
        float2 _1371 = frac(float2(_1366 * _1367, _1366 + _1367));
        float2 _1374 = frac((_1358 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1378 = _1374 + dot(_1374, _1374 + 34.345001220703125f.xx).xx;
        float _1379 = _1378.x;
        float _1380 = _1378.y;
        float2 _1384 = frac(float2(_1379 * _1380, _1379 + _1380));
        float _1390 = _1371.x;
        float _1392 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1390);
        float2 _1393 = ((_1357 - _1358) + ((((_1384 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1396 = _1393.y;
        float2 _1400 = float2(_1393.x * 1.25f, _1396 * ((_1396 < 0.0f) ? 1.25f : 0.75f));
        float _1403 = _1190 + _1390;
        float _1407 = _1180 ? frac(_1403) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1403, 0.0f, 1.0f));
        float _1419 = _1371.y;
        float _1422 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1407) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1407)) * step(0.001000000047497451305389404296875f, smoothstep(_1392, 0.0f, length(_1400)))) * step(_1185, _1419 - 0.100000001490116119384765625f);
        float _1425 = _1422 * _1356;
        float2 _1438 = (float4(((clamp(_1246 / _1238.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1230.x)) * _1268) * _1202, _1271, _1265).xy + float4(((clamp(_1323 / _1315.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1307.x)) * _1345) * _1279, _1348, _1342).xy) + float4(((clamp(_1400 / _1392.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1384.x)) * _1422) * _1356, _1425, _1419).xy;
        float _1440 = max(_1425, max(_1271, _1348));
        float4 _1443 = float4(_1438, _1440, 0.0f);
        float2 _1445 = _1194.xz * 1.0f;
        float2 _1446 = floor(_1445);
        float2 _1449 = frac(_1446 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1453 = _1449 + dot(_1449, _1449 + 34.345001220703125f.xx).xx;
        float _1454 = _1453.x;
        float _1455 = _1453.y;
        float2 _1459 = frac(float2(_1454 * _1455, _1454 + _1455));
        float2 _1462 = frac((_1446 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1466 = _1462 + dot(_1462, _1462 + 34.345001220703125f.xx).xx;
        float _1467 = _1466.x;
        float _1468 = _1466.y;
        float2 _1472 = frac(float2(_1467 * _1468, _1467 + _1468));
        float _1478 = _1459.x;
        float _1480 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1478);
        float2 _1481 = ((_1445 - _1446) + ((((_1472 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1484 = _1481.y;
        float2 _1488 = float2(_1481.x * 1.25f, _1484 * ((_1484 < 0.0f) ? 1.25f : 0.75f));
        float _1491 = _1192 + _1478;
        float _1495 = _1180 ? frac(_1491) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1491, 0.0f, 1.0f));
        float _1507 = _1459.y;
        float _1510 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1495) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1495)) * step(0.001000000047497451305389404296875f, smoothstep(_1480, 0.0f, length(_1488)))) * step(_1185, _1507 - 0.100000001490116119384765625f);
        float _1513 = _1510 * _1202;
        float2 _1518 = _1194.xy * 1.0f;
        float2 _1519 = floor(_1518);
        float2 _1522 = frac(_1519 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1526 = _1522 + dot(_1522, _1522 + 34.345001220703125f.xx).xx;
        float _1527 = _1526.x;
        float _1528 = _1526.y;
        float2 _1532 = frac(float2(_1527 * _1528, _1527 + _1528));
        float2 _1535 = frac((_1519 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1539 = _1535 + dot(_1535, _1535 + 34.345001220703125f.xx).xx;
        float _1540 = _1539.x;
        float _1541 = _1539.y;
        float2 _1545 = frac(float2(_1540 * _1541, _1540 + _1541));
        float _1551 = _1532.x;
        float _1553 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1551);
        float2 _1554 = ((_1518 - _1519) + ((((_1545 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1557 = _1554.y;
        float2 _1561 = float2(_1554.x * 1.25f, _1557 * ((_1557 < 0.0f) ? 1.25f : 0.75f));
        float _1564 = _1192 + _1551;
        float _1568 = _1180 ? frac(_1564) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1564, 0.0f, 1.0f));
        float _1580 = _1532.y;
        float _1583 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1568) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1568)) * step(0.001000000047497451305389404296875f, smoothstep(_1553, 0.0f, length(_1561)))) * step(_1185, _1580 - 0.100000001490116119384765625f);
        float _1586 = _1583 * _1279;
        float2 _1591 = _1194.zy * 1.0f;
        float2 _1592 = floor(_1591);
        float2 _1595 = frac(_1592 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1599 = _1595 + dot(_1595, _1595 + 34.345001220703125f.xx).xx;
        float _1600 = _1599.x;
        float _1601 = _1599.y;
        float2 _1605 = frac(float2(_1600 * _1601, _1600 + _1601));
        float2 _1608 = frac((_1592 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1612 = _1608 + dot(_1608, _1608 + 34.345001220703125f.xx).xx;
        float _1613 = _1612.x;
        float _1614 = _1612.y;
        float2 _1618 = frac(float2(_1613 * _1614, _1613 + _1614));
        float _1624 = _1605.x;
        float _1626 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1624);
        float2 _1627 = ((_1591 - _1592) + ((((_1618 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1630 = _1627.y;
        float2 _1634 = float2(_1627.x * 1.25f, _1630 * ((_1630 < 0.0f) ? 1.25f : 0.75f));
        float _1637 = _1192 + _1624;
        float _1641 = _1180 ? frac(_1637) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1637, 0.0f, 1.0f));
        float _1653 = _1605.y;
        float _1656 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1641) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1641)) * step(0.001000000047497451305389404296875f, smoothstep(_1626, 0.0f, length(_1634)))) * step(_1185, _1653 - 0.100000001490116119384765625f);
        float _1659 = _1656 * _1356;
        float2 _1667 = (float4(((clamp(_1488 / _1480.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1472.x)) * _1510) * _1202, _1513, _1507).xy + float4(((clamp(_1561 / _1553.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1545.x)) * _1583) * _1279, _1586, _1580).xy) + float4(((clamp(_1634 / _1626.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1618.x)) * _1656) * _1356, _1659, _1653).xy;
        float4 _1672 = float4(_1667, max(_1659, max(_1513, _1586)), 0.0f);
        float _1674 = step(max(float2(_1238 * _1268, _408) * _1202, max(float2(_1315 * _1345, _408) * _1279, float2(_1392 * _1422, _408) * _1356)).x, 0.00999999977648258209228515625f);
        float2 _1678 = _1443.xy + (_1672.xy * _1674);
        float3 _1687 = float3((_1152.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1678.x, _1678.y, 0.0f.xxx.z);
        float2 _1691 = float2(0.0f, (_18_m10.x * _18_m89.z) * 0.75f);
        float3 _1694 = float3(_1121.x, 0.0f, _1121.z);
        float3 _1700 = abs(_1694 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1694, _1694)))) - 0.20000000298023223876953125f.xxx;
        float3 _1703 = max((_1700 * _1700) * _1700, 6.103515625e-05f.xxx);
        float3 _1706 = _1703 / dot(_1703, 1.0f.xxx).xxx;
        float _1725 = _1706.z;
        float _1727 = _1706.x;
        float4 _1729 = (_50.SampleBias(_25, _1137, _18_m16) * _1725) + (_50.SampleBias(_25, _1142, _18_m16) * _1727);
        float2 _1741 = _1687.xy + ((((_1729.xy * 2.0f) - 1.0f.xx) * ((_50.SampleBias(_25, _1137 + _1691, _18_m16).w * _1725) + (_50.SampleBias(_25, _1142 + _1691, _18_m16).w * _1727))) * _1176);
        float3 _1742 = float3(_1741.x, _1741.y, _1687.z);
        float _1743 = _1729.z;
        float _1748 = max(max(max(_1443.zw * step(0.00999999977648258209228515625f, _1440), _1672.zw * _1674).x, step(1.0099999904632568359375f - _1176, _1152.z)), smoothstep(1.0f - _1743, 1.10000002384185791015625f - _1743, _1176) * _1176);
        float2 _1749 = _1741.xy;
        _1742.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1749, _1749), 0.0f, 1.0f)));
        float3 _1756 = normalize(_1742);
        float3 _1757 = cross(_525, float3(0.0f, 1.0f, 0.0f));
        bool3 _1760 = (dot(_1757, _1757) > 6.103515625e-05f).xxx;
        float3 _1761 = normalize(_1757);
        float3 _1762 = float3(_1760.x ? _1761.x : float3(1.0f, 0.0f, 0.0f).x, _1760.y ? _1761.y : float3(1.0f, 0.0f, 0.0f).y, _1760.z ? _1761.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1773 = min(_483, 0.0500000007450580596923828125f);
        float _1774 = lerp(_483, _1773, _1748);
        float _1791 = lerp(1.0f, 0.5f, (_1164 * (1.0f - _1110)) * (1.0f - _1173));
        _1799 = normalize(lerp(_525, normalize(((_1762 * _1756.x) + (cross(_1762, _525) * _1756.y)) + (_525 * _1756.z)), _1748.xxx));
        _1800 = _1748;
        _1801 = _1773;
        _1802 = max(_1774 - ((0.20000000298023223876953125f * _1110) * _1164), min(0.20000000298023223876953125f, _1774));
        _1803 = _496 * _1791;
        _1804 = lerp(_476, _476 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_476, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1748 * _1171).xxx) * _1791;
    }
    else
    {
        _1799 = _525;
        _1800 = 0.0f;
        _1801 = 0.00999999977648258209228515625f;
        _1802 = _483;
        _1803 = _496;
        _1804 = _476;
    }
    float3 _1973;
    float _1974;
    float3 _1975;
    float3 _1976;
    float _1977;
    [branch]
    if (_563 > 0.00999999977648258209228515625f)
    {
        bool3 _1808 = _451.xxx;
        float3 _1810 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1811 = float3(_1808.x ? _1810.x : _9.x, _1808.y ? _1810.y : _9.y, _1808.z ? _1810.z : _9.z);
        float3 _1814 = _1811 * _18_m89.z;
        float3 _1816 = float3(_1808.x ? _8.xzy.x : _8.x, _1808.y ? _8.xzy.y : _8.y, _1808.z ? _8.xzy.z : _8.z);
        float3 _1818 = abs(_1816) - 0.20000000298023223876953125f.xxx;
        float3 _1821 = max((_1818 * _1818) * _1818, 6.103515625e-05f.xxx);
        float3 _1824 = _1821 / dot(_1821, 1.0f.xxx).xxx;
        float _1840 = _1824.y;
        float _1842 = _1824.z;
        float _1845 = _1824.x;
        float4 _1847 = ((_51.SampleBias(_25, _1814.xz, _18_m16) * _1840) + (_51.SampleBias(_25, _1814.xy, _18_m16) * _1842)) + (_51.SampleBias(_25, _1814.zy, _18_m16) * _1845);
        float _1848 = _1816.y;
        float _1855 = clamp(_563 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1811.y) * clamp(_563 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1864 = smoothstep(2.0f - _1855, 2.349999904632568359375f - _1855, ((_1848 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1847.z) * float(gl_FrontFacing);
        float _1876 = lerp(1.0f, 0.5f, ((_1855 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1804 * (1.0f - _48_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1847.w) * ((_1848 * 0.25f) + 0.75f));
        float3 _1878 = _1864.xxx;
        float2 _1884 = (_1847.xy * 2.0f) - 1.0f.xx;
        float3 _1885 = float3(_1884.x, _1884.y, _406.z);
        float2 _1886 = _1884.xy;
        _1885.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1886, _1886), 0.0f, 1.0f)));
        float2 _1894 = _1885.xy * 2.0f;
        float3 _1896 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1894.x, _1894.y, _1885.z), _1878);
        float3 _1900 = _1896 * rsqrt(max(6.103515625e-05f, dot(_1896, _1896)));
        float _1901 = _525.y;
        float _1904 = step(0.00999999977648258209228515625f, 1.0f - (_1901 * _1901));
        float _1908 = lerp(_525.z, _1901, _1904);
        float3 _1915 = (float3(0.0f, _1904, 1.0f - _1904) - (_525 * _1908)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1908 * _1908)));
        float3 _1929 = _1814 * 4.0f;
        float4 _1949 = ((_52.SampleLevel(_23, _1929.xz, 0.0f) * _1840) + (_52.SampleLevel(_23, _1929.xy, 0.0f) * _1842)) + (_52.SampleLevel(_23, _1929.zy, 0.0f) * _1845);
        float2 _1952 = (_1949.xz * 2.0f) - 1.0f.xx;
        float _1963 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1952.x, _1949.y, _1952.y), (floor(_442 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1964 = _1963 * _1963;
        float _1967 = _1964 * ((_1964 * 2.0f) * _1864);
        float3 _1968 = 1.0f.xxx * _1967;
        _1973 = ((cross(_1915, _525) * _1900.x) + (_1915 * _1900.y)) + (_525 * _1900.z);
        _1974 = lerp(lerp(_1802, 0.89999997615814208984375f, clamp(_1864 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1967);
        _1975 = lerp(_1803 * _1876, 0.3079999983310699462890625f.xxx, _1878) + (_1968 * 0.5f);
        _1976 = lerp(_1804 * _1876, 0.87999999523162841796875f.xxx, _1878) + _1968;
        _1977 = lerp(_48_m2, 0.0f, _1864);
    }
    else
    {
        _1973 = _525;
        _1974 = _1802;
        _1975 = _1803;
        _1976 = _1804;
        _1977 = _48_m2;
    }
    float _1979 = 0.959999978542327880859375f - (_1977 * 0.959999978542327880859375f);
    float3 _1980 = _1976 * _1979;
    float3 _1983 = lerp(0.039999999105930328369140625f.xxx * _48_m1, _1976, _1977.xxx);
    float3 _1984 = _1975 * _1979;
    float _1986 = max(_1974 * _1974, 0.0078125f);
    bool _1993 = (1.0f - max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z)) < 0.9900000095367431640625f;
    float2 _2006 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
    _2006.y = -_2006.y;
    float2 _2022 = lerp(((sqrt(sqrt(abs(_2006 * 0.5f))) * float2(int2(sign(_2006)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1993).xx);
    float4 _2024 = float4(_2022.x, _2022.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2024.z = 1.0f;
    _2024.w = _1993 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2037 = lerp(-_35_m0.xyz, _18_m90.xyz, _18_m80.w.xxx);
    float3 _2041 = normalize(float3(_2037.x, 6.103515625e-05f, _2037.z));
    float3 _2051 = lerp(_35_m3.xyz, _18_m84.xyz, _18_m91.y.xxx);
    float3 _2055 = _2051 * lerp(_35_m3.w, 1.0f, _18_m91.w);
    int _2059 = int(_527.x);
    int _2060 = int(_527.y);
    float4 _2064 = _39.Load(int3(int3(_2059, _2060, 0).xy, 0));
    float _2069 = _2064.y;
    float _2072 = lerp(lerp(1.0f, _2064.x, _37_m6.x), 1.0f, _18_m80.z);
    float _2073 = dot(_1973, _2037);
    float3 _2080 = _1984 * _18_m79.z;
    float3 _2081 = _2080 * 0.64999997615814208984375f;
    float _2085 = dot(_1980, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2098 = clamp(-dot(_2041.xz, normalize(_537.xz)), 0.0f, 1.0f);
    float _2102 = 1.0f - _18_m91.x;
    float _2110 = smoothstep(0.25f, 1.0f, clamp(lerp(_2073, ((-_2073) * ((_2073 * 0.5f) - 1.0f)) + 0.5f, (_2098 * smoothstep(0.25f, 0.75f, 1.0f - abs(_537.y))) * _2102) + (_18_m90.w * _18_m91.x), -1.0f, 1.0f));
    float _2117 = max(max(_2110, _2110), _2110) - min(min(_2110, _2110), _2110);
    float _2119 = smoothstep(0.25f, 1.0f, dot(_1973, _537));
    float _2126 = min(min(_2069, 1.0f), _2110);
    float _2127 = _2119 * _2069;
    float3 _2131 = ((clamp(dot(_525, _18_m85.xyz) + _18_m86.x, 0.0f, 1.0f) * _18_m86.y) + _18_m86.z).xxx * lerp(_1078, 1.0f.xxx, (_18_m80.y * _2126).xxx);
    float3 _2133 = _2126.xxx;
    float3 _2156 = _2072.xxx;
    float3 _2157 = lerp((_2131 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1079), 1.5f), clamp(_1079, 1.25f, 1.75f), _18_m80.x)) * _18_m79.w, (lerp(dot(_2055, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2055, _2133) + ((_2131 * clamp(_1079, 0.0f, 1.5f)) * ((1.0f - _18_m91.y).xxx + (_2051 * _18_m91.y)))) * _18_m79.y, _2156);
    float3 _2158 = lerp(lerp(lerp(dot(_2081, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2081, 1.2000000476837158203125f.xxx), _2080, clamp((_2069 * _2119) + _2110, 0.0f, 1.0f).xxx), _1980, _2133);
    float3 _2164 = _2158 * ((1.0f - _2117).xxx + (_2110.xxxx.xyz * _2117));
    float3 _2173 = lerp(lerp(_2080, lerp(_2085.xxx, _1980, 1.2000000476837158203125f.xxx), _2127.xxx), _2164 * clamp(dot(_2158, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2164, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2156);
    float4 _2177 = float4(_2173, _2072);
    float _2179 = lerp(_2127, _2126, _2072);
    float _2182 = lerp(_18_m79.z, 1.0f, _2179);
    float3 _2190 = float3(_537.x, lerp(0.5f, _2037.y, _2072), _537.z);
    float _2203 = clamp(dot(_1799, _442), 0.0f, 1.0f);
    float _2204 = dot(_1799, normalize(((_2037 * _2072) + ((_2190 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2190, _2190)))) * 2.0f)) + (_442 * (2.0f + _2072))));
    float _2205 = _1986 * _1986;
    float _2209 = (((_2204 * _2205) - _2204) * _2204) + 1.0f;
    float _2210 = _2209 * _2209;
    float _2214 = 2.0f * _2203;
    float _2216 = (1.0f + _2203) - _2203;
    float _2233 = (1.0f - _48_m6) + (_487 * _48_m6);
    float3 _2235 = ((_2157 * _2173) * _2233) + (((_1983 * clamp((((_2205 != _2210) ? (_2205 / _2210) : 1.0f) * (0.5f / ((_2214 + (_1986 * _2216)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2157 * (((_2179 * 0.5f) + 0.5f) * _2182)) * 1.0f)) * _18_m92.w);
    float _2236 = dot(_2235, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2239 = clamp(_2236 - 0.5f, 0.0f, 0.5f);
    float3 _2275 = normalize(cross(_537, lerp(float3(_18_m88.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m88.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m88.y), _18_m94.w.xxx)));
    float _2281 = dot(_442, _1973);
    float _2283 = 1.0f - abs(_2281);
    float _2305 = dot(_2041, _1973);
    float _2317 = 1.0f - _2072;
    float _2344 = lerp(_1974, _1801, _1800);
    float _2345 = _2344 * _2344;
    float _2346 = _2203 * _2203;
    float _2347 = _2346 * _2203;
    float2 _2348 = float2(1.0f, _2203);
    float2 _2351 = float2(1.0f, _2345);
    float3 _2354 = float3(1.0f, _2345, (_2345 * _2345) * _2345);
    float _2359 = dot(mul(_2348, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2351) / dot(mul(float3(1.0f, _2346, _2347), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2354);
    float _2364 = dot(mul(_2348, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2351) / dot(mul(float3(1.0f, _2203, _2347), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2354);
    float3 _2367 = (_1983 * _2359) + _2364.xxx;
    float _2368 = _2359 + _2364;
    float3 _2374 = -_442;
    float3 _2393 = lerp(_2236.xxx, _2235, ((_2239 * _2239) + 1.0f).xxx) + (((((_18_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m88.w), lerp(0.89999997615814208984375f, 0.5f, _18_m88.w), _2283)) * _18_m87.w) * min(min(clamp(dot(_519, _2275) + 1.0f, 0.0f, 1.0f), 1.0f), _2069)) * (lerp(0.25f.xxx, _1980, _18_m88.z.xxx) * clamp(dot(_2275, _1973), 0.0f, 1.0f))) + ((((((lerp(_1077 * (1.0f / max(max(max(_1077.x, _1077.y), _1077.z) * 0.5f, 1.0f)), _2055, _2156) * clamp(lerp(dot(_1076.xyz, _1973) * _1076.w, ((-_2305) * ((_2305 * 0.5f) - 1.0f)) + 0.5f, _2072), 0.0f, 1.0f)) * ((_2317 + (_2098 * _2072)) * _2102)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2283)) * min(1.0f, _2069)) * (_2317 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2085) * _2072))) * max(0.1500000059604644775390625f.xxx, _1980)));
    float2 _2396 = float2(_527);
    float2 _2398 = floor(_2396 * 0.03125f);
    int _2406 = int((_2398.x + (_2398.y * _33_m5)) * 8.0f);
    float _2413 = floor(_423 - (_18_m3.y * _33_m11));
    float _2417 = clamp(_2413, 0.0f, _33_m7 - 1.0f);
    int _2419 = int(_2417 * 8.0f);
    float3 _2421;
    _2421 = (_2393 + (((_500.xyz * _48_m25.xyz) * _48_m7) * _2233)) + (((_56.SampleLevel(_24, reflect(_2374, _1799), (1.2000000476837158203125f * log2(max(_2344, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2367 + ((_1983 * ((1.0f - _2368) / _2368)) * _2367)) * 1.0f)) * ((clamp(_1079, 0.5f, 1.5f) * _18_m79.w) * _2182)) * _1078);
    float3 _2422;
    [loop]
    for (int _2424 = 0; _2424 <= 7; _2421 = _2422, _2424++)
    {
        uint _2442 = (_2413 <= _2417) ? (_29.Load(uint(_2406 + _2424) * 4 + 0) & _29.Load(uint((_18_m21.y + _2419) + _2424) * 4 + 0)) : 0u;
        uint _2443 = uint(_2424);
        _2422 = _2421;
        uint _2448;
        float3 _2445;
        [loop]
        for (uint _2447 = _2442; _2447 != 0u; _2422 = _2445, _2447 = _2448)
        {
            uint _2452 = firstbitlow(_2447);
            _2448 = _2447 ^ (1u << (_2452 & 31u));
            int _2458 = int((32u * _2443) + _2452) * 8;
            int _2461 = _2458 + 1;
            int _2464 = _2458 + 2;
            int _2467 = _2458 + 3;
            int _2470 = _2458 + 4;
            int _2473 = _2458 + 5;
            int _2476 = _2458 + 6;
            int _2479 = _2458 + 7;
            uint _2483 = uint(_35_m6[_2473].w);
            float _2558;
            if ((_2483 & 1u) == 1u)
            {
                uint _2489 = asuint(_35_m6[_2473].x);
                uint _2496 = asuint(_35_m6[_2473].y);
                uint _2503 = asuint(_35_m6[_2473].z);
                uint _2510 = asuint(_35_m6[_2476].x);
                uint _2517 = asuint(_35_m6[_2476].y);
                uint _2524 = asuint(_35_m6[_2476].z);
                float3 _2543 = abs(mul(float4(_512 - _35_m6[_2461].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2489).x, spvUnpackHalf2x16(_2503).x, spvUnpackHalf2x16(_2517).x, 0.0f), float4(spvUnpackHalf2x16(_2489 >> 16u).x, spvUnpackHalf2x16(_2503 >> 16u).x, spvUnpackHalf2x16(_2517 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2496).x, spvUnpackHalf2x16(_2510).x, spvUnpackHalf2x16(_2524).x, 0.0f), float4(spvUnpackHalf2x16(_2496 >> 16u).x, spvUnpackHalf2x16(_2510 >> 16u).x, spvUnpackHalf2x16(_2524 >> 16u).x, 0.0f))).xyz);
                float _2550 = _35_m6[_2479].x * 0.5f;
                float _2556 = 1.0f - clamp((max(max(_2543.x, _2543.y), _2543.z) - (_2550 + 0.5f)) / (0.5f - _2550), 0.0f, 1.0f);
                _2558 = _2556 * _2556;
            }
            else
            {
                _2558 = 1.0f;
            }
            if (false || (_2558 < 0.001000000047497451305389404296875f))
            {
                _2445 = _2422;
                continue;
            }
            float3 _3251;
            if (_35_m6[_2458].w < 1.5f)
            {
                float3 _3250;
                do
                {
                    uint _2571 = asuint(_35_m6[_2467].w);
                    if ((_2571 == 16u) || ((_35_m6[_2467].z + _18_m91.z) < 0.5f))
                    {
                        _3250 = _2422;
                        break;
                    }
                    bool _2583 = (uint(_35_m6[_2458].w) & 1u) == 0u;
                    bool _2587 = (!_2583) && (_35_m6[_2464].z > 0.0f);
                    bool _2588 = _2571 == 4u;
                    float _2589 = float(_2583);
                    float _2597 = (0.5f + (0.5f * _35_m6[_2464].y)) - abs(_35_m6[_2464].x);
                    float _2598 = _35_m6[_2464].y - _2597;
                    float _2605 = abs(max((1.0f - abs(_2597)) - abs(_2598), 0.00048828125f));
                    float3 _2609 = normalize(float3(_2597, _2598, (_35_m6[_2464].x >= 0.0f) ? _2605 : (-_2605)));
                    float _2615 = lerp(_35_m6[_2476].w, max(2.0f * _35_m6[_2470].y, 0.100000001490116119384765625f), float(_2588));
                    float3 _2620 = _35_m6[_2461].xyz - _512;
                    float3 _2621 = -_2609;
                    float3 _2626 = lerp(_2620, _2621 * dot(_2620, _2621), (float(_2588 && (_35_m6[_2470].z > 0.5f)) * _2589).xxx);
                    float _2627 = dot(_2626, _2626);
                    float _2628 = rsqrt(_2627);
                    float3 _2629 = _2626 * _2628;
                    float3 _2662;
                    float _2663;
                    if (_2587)
                    {
                        float3 _2633 = (_2609 * _35_m6[_2464].z) * 0.5f;
                        float3 _2634 = _2626 - _2633;
                        float3 _2635 = _2626 + _2633;
                        float _2636 = length(_2634);
                        float _2637 = length(_2635);
                        float3 _2646 = normalize(cross(cross(_2609, _2629), _2609));
                        _2662 = _2646;
                        _2663 = ((1.0f / ((((_2636 * _2637) + dot(_2634, _2635)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2646, _2634) / _2636) + (dot(_2646, _2635) / _2637)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_2464].z * _2628, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2662 = _2629;
                        _2663 = 1.0f;
                    }
                    float _2685;
                    if (_2615 < 0.0f)
                    {
                        float _2673 = _2627 * (_35_m6[_2461].w * _35_m6[_2461].w);
                        float _2676 = clamp(1.0f - (_2673 * _2673), 0.0f, 1.0f);
                        _2685 = lerp(1.0f / (_2627 + 1.0f), _2663, float(_2587)) * (_2676 * _2676);
                    }
                    else
                    {
                        float3 _2679 = _2626 * _35_m6[_2461].w;
                        _2685 = _2663 * pow(1.0f - clamp(dot(_2679, _2679), 0.0f, 1.0f), _2615);
                    }
                    float _2690 = clamp((dot(_2662, _2621) - _35_m6[_2464].z) * _35_m6[_2464].w, 0.0f, 1.0f);
                    float _2693 = _2685 * lerp(1.0f, _2690 * _2690, _2589);
                    int _2695 = int(_35_m6[_2479].w);
                    float _2799;
                    if ((!_2587) && (_2695 >= 0))
                    {
                        uint _2701 = uint(_2695);
                        float2 _2792;
                        [branch]
                        if (_2589 != 0.0f)
                        {
                            float4 _2713 = mul(_59_m1[_2701], float4(_512.x, _569, _512.z, 1.0f));
                            _2792 = _59_m0[_2701].xy + (clamp(_2713.xy / _2713.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2701].zw);
                        }
                        else
                        {
                            float3 _2733 = mul(float4(-_2626, 0.0f), _59_m1[_2701]).xyz;
                            float3 _413 = _2733;
                            float3 _412 = _2733;
                            float3 _411 = abs(_2733);
                            uint _2742 = uint(int(_411.y > _411.x));
                            uint _2748 = (_411.z > _411[_2742]) ? 2u : _2742;
                            uint _2754 = (_2748 * 2u) + uint(_412[_2748] < 0.0f);
                            float _2758 = abs(_413[_2754 / 2u]);
                            float _2778 = 0.5f - (0.000244140625f / _59_m0[_2701].w);
                            _2792 = _59_m0[_2701].xy + (clamp(float2((float(_2754) + ((((_413[uint(_363[_2754].x)] * _364[_2754].x) / _2758) * _2778) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_413[uint(_363[_2754].y)] * _364[_2754].y) / _2758) * _2778)), 0.0f.xx, 1.0f.xx) * _59_m0[_2701].zw);
                        }
                        _2799 = _2693 * _57.SampleLevel(_24, _2792, 0.0f).x;
                    }
                    else
                    {
                        _2799 = _2693;
                    }
                    float _2800 = _2799 * _2558;
                    float3 _3249;
                    do
                    {
                        float3 _3248;
                        [branch]
                        if (_2800 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2588)
                            {
                                _3249 = lerp(_2422, _35_m6[_2458].xyz, (_2800 * (_35_m6[_2470].x * ((1.0f - _35_m6[_2470].w) + (smoothstep(-0.5f, 0.5f, dot(_525, _2662)) * _35_m6[_2470].w)))).xxx);
                                break;
                            }
                            float _2820 = dot(_1973, _2662);
                            float _2821 = clamp(_2820, 0.0f, 1.0f);
                            float _3124;
                            if (_2571 != 0u)
                            {
                                bool _2827 = _2583 || ((_2483 & 2u) != 0u);
                                int _2876;
                                if (_2827)
                                {
                                    _2876 = int(_35_m6[_2467].x);
                                }
                                else
                                {
                                    uint _2833 = asuint(_35_m6[_2464].w);
                                    uint _2835 = asuint(_35_m6[_2467].x);
                                    float3 _2836 = _512 - _35_m6[_2461].xyz;
                                    float3 _2837 = abs(_2836);
                                    float _2838 = _2837.x;
                                    float _2839 = _2837.y;
                                    float _2841 = _2837.z;
                                    int _2873;
                                    if ((_2838 > _2839) && (_2838 > _2841))
                                    {
                                        _2873 = int((_2836.x > 0.0f) ? (_2833 >> 24u) : ((_2833 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2872;
                                        if (_2839 > _2841)
                                        {
                                            _2872 = int((_2836.y > 0.0f) ? ((_2833 >> 8u) & 255u) : (_2833 & 255u));
                                        }
                                        else
                                        {
                                            _2872 = int((_2836.z > 0.0f) ? ((_2835 >> 8u) & 255u) : (_2835 & 255u));
                                        }
                                        _2873 = _2872;
                                    }
                                    _2876 = (_2873 < 80) ? _2873 : (-1);
                                }
                                bool _2877 = _2876 >= 0;
                                float _3123;
                                if (_2877)
                                {
                                    float3 _2881 = _512 - _35_m6[_2461].xyz;
                                    float4 _2901 = mul(_37_m10[_2876], float4((_512 - ((_2881 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2881, _2881)))) * _37_m11[_2876].x)) + (_525 * (_37_m11[_2876].y * 5.0f)), 1.0f));
                                    float _2902 = _2901.w;
                                    float3 _2905 = _2901.xyz / _2902.xxx;
                                    float2 _2906 = _2905.xy;
                                    float3 _2914 = _2905.xyz;
                                    bool3 _2915 = bool3(_2914.x <= 0.0f.xxx.x, _2914.y <= 0.0f.xxx.y, _2914.z <= 0.0f.xxx.z);
                                    bool3 _2916 = bool3(_2914.x >= 1.0f.xxx.x, _2914.y >= 1.0f.xxx.y, _2914.z >= 1.0f.xxx.z);
                                    float _2919 = _2905.z;
                                    float2 _2930 = ((_2906 * (_37_m12[_2876].zw - _37_m12[_2876].xy)) + _37_m12[_2876].xy).xy * _37_m13.zw;
                                    float2 _2932 = floor(_2930 + 0.5f.xx);
                                    float2 _2933 = _2930 - _2932;
                                    float _2935 = _2933.x + 0.5f;
                                    float _2936 = _2935 * _2935;
                                    float _2939 = 1.0f - _2933.x;
                                    float _2940 = min(_2933.x, 0.0f);
                                    float _2943 = _2933.x + 1.0f;
                                    float _2944 = max(_2933.x, 0.0f);
                                    float _2956 = _2933.y + 0.5f;
                                    float _2957 = _2956 * _2956;
                                    float _2960 = 1.0f - _2933.y;
                                    float _2961 = min(_2933.y, 0.0f);
                                    float _2964 = _2933.y + 1.0f;
                                    float _2965 = max(_2933.y, 0.0f);
                                    float3 _2977 = float3(0.1599999964237213134765625f * _2939, 0.1599999964237213134765625f * ((_2943 - (_2944 * _2944)) + 1.0f), _2936 * 0.07999999821186065673828125f);
                                    float3 _2978 = float3(0.1599999964237213134765625f * ((_2936 * 0.5f) - _2933.x), 0.1599999964237213134765625f * ((_2939 - (_2940 * _2940)) + 1.0f), 0.1599999964237213134765625f * _2943) + _2977;
                                    float3 _2980 = float3(0.1599999964237213134765625f * _2960, 0.1599999964237213134765625f * ((_2964 - (_2965 * _2965)) + 1.0f), _2957 * 0.07999999821186065673828125f);
                                    float3 _2981 = float3(0.1599999964237213134765625f * ((_2957 * 0.5f) - _2933.y), 0.1599999964237213134765625f * ((_2960 - (_2961 * _2961)) + 1.0f), 0.1599999964237213134765625f * _2964) + _2980;
                                    float3 _2987 = ((_2977 / _2978) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2989 = ((_2980 / _2981) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2991 = _2932 * _37_m13.xy;
                                    float _2992 = _2987.x;
                                    float _2993 = _2989.x;
                                    float _2996 = _2987.y;
                                    float _2999 = _2987.z;
                                    float _3002 = _2989.y;
                                    float _3009 = _2989.z;
                                    float _3016 = _2978.x;
                                    float _3017 = _2981.x;
                                    float _3019 = _2978.y;
                                    float _3021 = _2978.z;
                                    float _3023 = _2981.y;
                                    float _3027 = _2981.z;
                                    float _3085 = (((((((_3016 * _3017) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2992, _2993), _405).xy, _2919)) + ((_3019 * _3017) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2996, _2993), _405).xy, _2919))) + ((_3021 * _3017) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2999, _2993), _405).xy, _2919))) + ((_3016 * _3023) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2992, _3002), _405).xy, _2919))) + ((_3019 * _3023) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2996, _3002), _405).xy, _2919))) + ((_3021 * _3023) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2999, _3002), _405).xy, _2919))) + ((_3016 * _3027) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2992, _3009), _405).xy, _2919));
                                    float2 _3106 = min(_2906, 1.0f.xx - _2906);
                                    _3123 = _2877 ? lerp(1.0f, (any(bool3(_2915.x || _2916.x, _2915.y || _2916.y, _2915.z || _2916.z)) || ((asuint(_2919) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3085 + ((_3019 * _3027) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2996, _3009), _405).xy, _2919))) + ((_3021 * _3027) * _38.SampleCmpLevelZero(_26, float3(_2991 + float2(_2999, _3009), _405).xy, _2919))), _2827 ? min(_37_m11[_2876].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2876].z - _2902) * 0.25f, min(_3106.x, _3106.y)))) : _37_m11[_2876].w) : 1.0f;
                                }
                                else
                                {
                                    _3123 = clamp(dot(_519, _2662) + 1.0f, 0.0f, 1.0f);
                                }
                                _3124 = _3123;
                            }
                            else
                            {
                                _3124 = 1.0f;
                            }
                            float _3204;
                            float3 _3205;
                            float _3206;
                            float3 _3207;
                            float3 _3208;
                            float _3209;
                            float _3210;
                            [branch]
                            if (_2571 == 0u)
                            {
                                float3 _3130 = _35_m6[_2458].xyz * _2800;
                                float3 _3143 = _2177.xyz;
                                _3204 = _2800;
                                _3205 = (_35_m6[_2458].xyz * ((1.0f - _35_m6[_2470].y) + ((1.0f / max(1.0f, max(max(_3130.x, _3130.y), _3130.z) * lerp(0.75f, 0.5f, _2317))) * _35_m6[_2470].y))) * lerp(0.25f * _35_m6[_2470].x, 1.0f, clamp(_2820 + 0.5f, 0.0f, 1.0f));
                                _3206 = _2821;
                                _3207 = _3143;
                                _3208 = _3143;
                                _3209 = 1.0f;
                                _3210 = 0.0f;
                            }
                            else
                            {
                                float _3198;
                                float _3199;
                                float3 _3200;
                                float3 _3201;
                                float _3202;
                                float _3203;
                                if (_2571 == 3u)
                                {
                                    _3198 = _2800 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_2470].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_2470].x), _2283) * _3124);
                                    _3199 = clamp(dot(_1973, -normalize(cross(_537, cross(_537, _2662)))), 0.0f, 1.0f);
                                    _3200 = lerp(0.5f.xxx, _1980, _35_m6[_2470].y.xxx);
                                    _3201 = 0.0f.xxx;
                                    _3202 = 1.0f;
                                    _3203 = 0.0f;
                                }
                                else
                                {
                                    bool _3168 = _2571 == 1u;
                                    float _3192;
                                    float3 _3193;
                                    float _3194;
                                    float _3195;
                                    if (_3168)
                                    {
                                        _3192 = clamp(clamp(_2820 + _35_m6[_2470].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3124;
                                        _3193 = _1984 * _35_m6[_2470].y;
                                        _3194 = 1.0f;
                                        _3195 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3178 = _2571 == 2u;
                                        float _3190;
                                        if (_3178)
                                        {
                                            _3190 = smoothstep(_35_m6[_2470].x + 0.0500000007450580596923828125f, _35_m6[_2470].x - 0.0500000007450580596923828125f, _1974) * ((1.0f - _35_m6[_2470].z) + (step(0.5f, _1977) * _35_m6[_2470].z));
                                        }
                                        else
                                        {
                                            _3190 = 1.0f;
                                        }
                                        _3192 = _2821;
                                        _3193 = 0.0f.xxx;
                                        _3194 = _3190;
                                        _3195 = _3178 ? _35_m6[_2470].y : 0.0f;
                                    }
                                    bool3 _3196 = _3168.xxx;
                                    _3198 = _2800;
                                    _3199 = _3192;
                                    _3200 = float3(_3196.x ? _1980.x : 0.0f.xxx.x, _3196.y ? _1980.y : 0.0f.xxx.y, _3196.z ? _1980.z : 0.0f.xxx.z);
                                    _3201 = _3193;
                                    _3202 = _3194;
                                    _3203 = _3195;
                                }
                                _3204 = _3198;
                                _3205 = _35_m6[_2458].xyz;
                                _3206 = _3199;
                                _3207 = _3200;
                                _3208 = _3201;
                                _3209 = _3202;
                                _3210 = _3203;
                            }
                            float3 _3238;
                            [branch]
                            if (_2571 != 3u)
                            {
                                float _3215 = lerp(_1986, 0.00999999977648258209228515625f, _3210);
                                float _3218 = dot(_1799, normalize(_2662 + _442));
                                float _3219 = _3215 * _3215;
                                float _3223 = (((_3218 * _3219) - _3218) * _3218) + 1.0f;
                                float _3224 = _3223 * _3223;
                                _3238 = ((_1983 * clamp((((_3219 != _3224) ? (_3219 / _3224) : 1.0f) * (0.5f / ((_2214 + (_3215 * _2216)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3209) * _35_m6[_2479].z;
                            }
                            else
                            {
                                _3238 = 0.0f.xxx;
                            }
                            float3 _3241 = _3205 * _3204;
                            _3248 = _2422 + (((_3241 * lerp(_3208, _3207, _3206.xxx)) * _2233) + ((_3241 * _3238) * _3206));
                        }
                        else
                        {
                            _3248 = _2422;
                        }
                        _3249 = _3248;
                        break;
                    } while(false);
                    _3250 = _3249;
                    break;
                } while(false);
                _3251 = _3250;
            }
            else
            {
                _3251 = _2422;
            }
            _2445 = _3251;
        }
    }
    float3 _3291;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _3291 = lerp(lerp(0.5f.xxx, lerp(dot(_2421, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2421, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_2281, 0.0f, 1.0f))) * _48_m17);
    }
    else
    {
        _3291 = _2421;
    }
    float4 _3298 = float4(_3291 * _18_m20.y, _487);
    _3298.w = (_48_m8 == 1.0f) ? _487 : 1.0f;
    float4 _3685;
    [branch]
    if (_18_m91.w < 0.5f)
    {
        float _3322 = _569 * _18_m46.w;
        float _3327 = max(0.00999999977648258209228515625f, _3322 + _18_m47.w);
        float3 _3341 = exp(_18_m45.xyz * ((-max(0.0f, (_443 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3327)) / _3327) * exp(_3322 + _18_m48.w))));
        float _3344 = dot(_2374, _18_m44.xyz);
        float _3350 = _18_m45.w * _18_m45.w;
        float _3354 = (1.0f + _3350) - ((2.0f * _18_m45.w) * _3344);
        float3 _3677;
        float _3678;
        if (_18_m55.z > 0.0f)
        {
            uint3 _3399 = (uint3(int3(_2059, _2060, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3400 = _3399.y;
            uint _3401 = _3399.z;
            uint _3404 = _3399.x + (_3400 * _3401);
            uint _3406 = _3400 + (_3401 * _3404);
            uint _3408 = _3401 + (_3404 * _3406);
            uint _3410 = _3404 + (_3406 * _3408);
            float _3435 = dot(_2374, -_16_m0[2].xyz);
            float3 _3442 = _512 - _16_m11.xyz;
            float _3444 = (_18_m55.w * ((_3435 > 5.9604644775390625e-08f) ? (1.0f / _3435) : 0.0f)) * (1.0f / _443);
            float _3445 = _3442.y;
            float _3446 = _3444 * _3445;
            float _3448 = _16_m11.y + _3446;
            float _3449 = _3445 - _3446;
            float _3451 = (1.0f - _3444) * _443;
            float _3465 = max(-127.0f, _18_m49.z * _3449);
            float _3489 = max(-127.0f, _18_m52.x * _3449);
            float _3500 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3448 - _18_m49.x)))) * ((abs(_3465) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3465)) / _3465) : (0.693147182464599609375f - (0.2402265071868896484375f * _3465)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3448 - _18_m52.z)))) * ((abs(_3489) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3489)) / _3489) : (0.693147182464599609375f - (0.2402265071868896484375f * _3489))));
            float _3522 = clamp((_443 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3525 = clamp((max(clamp(exp2(-(_3500 * _3451)), 0.0f, 1.0f), _18_m51.w) + clamp((_443 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3522, 0.0f, 1.0f);
            float4 _3565 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _62.SampleLevel(_24, float3((_2396 + ((((float3(uint3(_3410, _3406 + (_3408 * _3410), _409) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_423 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_423 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3677 = _3565.xyz + (((_18_m51.xyz * (1.0f - _3525)) + (((_18_m54.xyz * pow(clamp(dot(_442, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3500 * max(_3451 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3522))) * _3565.w);
            _3678 = _3565.w * _3525;
        }
        else
        {
            float3 _3571 = _512 - _16_m11.xyz;
            float _3573 = _3571.y;
            float _3587 = max(-127.0f, _18_m49.z * _3573);
            float _3611 = max(-127.0f, _18_m52.x * _3573);
            float _3622 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3587) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3587)) / _3587) : (0.693147182464599609375f - (0.2402265071868896484375f * _3587)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3611) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3611)) / _3611) : (0.693147182464599609375f - (0.2402265071868896484375f * _3611))));
            float _3644 = clamp((_443 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3647 = clamp((max(clamp(exp2(-(_3622 * _443)), 0.0f, 1.0f), _18_m51.w) + clamp((_443 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3644, 0.0f, 1.0f);
            _3677 = (_18_m51.xyz * (1.0f - _3647)) + (((_18_m54.xyz * pow(clamp(dot(_442, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3622 * max(_443 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3644));
            _3678 = _3647;
        }
        float3 _3683 = (_3298.xyz * (_3341 * _3678)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3344 * _3344)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3350) / max((12.56637096405029296875f * _3354) * sqrt(_3354), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3341)) * _3678) + _3677);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3683 = (_3683 * 0.65f) + (_3298.xyz * 0.35f);

        }
        _3685 = float4(_3683.x, _3683.y, _3683.z, _3298.w);
    }
    else
    {
        _3685 = _3298;
    }
    _13 = _3685;
    _14 = _2024;
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
