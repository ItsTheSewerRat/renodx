// DX11 0x6412C588 -> Vulkan 0xE2FCEE0D
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

static const int2 _362[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _363[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float _1803;
    float3 _1804;
    float3 _1805;
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
        _1802 = _1748;
        _1803 = max(_1774 - ((0.20000000298023223876953125f * _1110) * _1164), min(0.20000000298023223876953125f, _1774));
        _1804 = _496 * _1791;
        _1805 = lerp(_476, _476 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_476, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1748 * _1171).xxx) * _1791;
    }
    else
    {
        _1799 = _525;
        _1800 = 0.0f;
        _1801 = 0.00999999977648258209228515625f;
        _1802 = 0.0f;
        _1803 = _483;
        _1804 = _496;
        _1805 = _476;
    }
    float3 _1975;
    float _1976;
    float _1977;
    float3 _1978;
    float3 _1979;
    float _1980;
    [branch]
    if (_563 > 0.00999999977648258209228515625f)
    {
        bool3 _1809 = _451.xxx;
        float3 _1811 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1812 = float3(_1809.x ? _1811.x : _9.x, _1809.y ? _1811.y : _9.y, _1809.z ? _1811.z : _9.z);
        float3 _1815 = _1812 * _18_m89.z;
        float3 _1817 = float3(_1809.x ? _8.xzy.x : _8.x, _1809.y ? _8.xzy.y : _8.y, _1809.z ? _8.xzy.z : _8.z);
        float3 _1819 = abs(_1817) - 0.20000000298023223876953125f.xxx;
        float3 _1822 = max((_1819 * _1819) * _1819, 6.103515625e-05f.xxx);
        float3 _1825 = _1822 / dot(_1822, 1.0f.xxx).xxx;
        float _1841 = _1825.y;
        float _1843 = _1825.z;
        float _1846 = _1825.x;
        float4 _1848 = ((_51.SampleBias(_25, _1815.xz, _18_m16) * _1841) + (_51.SampleBias(_25, _1815.xy, _18_m16) * _1843)) + (_51.SampleBias(_25, _1815.zy, _18_m16) * _1846);
        float _1849 = _1817.y;
        float _1856 = clamp(_563 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1812.y) * clamp(_563 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1865 = smoothstep(2.0f - _1856, 2.349999904632568359375f - _1856, ((_1849 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1848.z) * float(gl_FrontFacing);
        float _1877 = lerp(1.0f, 0.5f, ((_1856 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1805 * (1.0f - _48_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1848.w) * ((_1849 * 0.25f) + 0.75f));
        float3 _1879 = _1865.xxx;
        float2 _1885 = (_1848.xy * 2.0f) - 1.0f.xx;
        float3 _1886 = float3(_1885.x, _1885.y, _406.z);
        float2 _1887 = _1885.xy;
        _1886.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1887, _1887), 0.0f, 1.0f)));
        float2 _1895 = _1886.xy * 2.0f;
        float3 _1897 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1895.x, _1895.y, _1886.z), _1879);
        float3 _1901 = _1897 * rsqrt(max(6.103515625e-05f, dot(_1897, _1897)));
        float _1902 = _525.y;
        float _1905 = step(0.00999999977648258209228515625f, 1.0f - (_1902 * _1902));
        float _1909 = lerp(_525.z, _1902, _1905);
        float3 _1916 = (float3(0.0f, _1905, 1.0f - _1905) - (_525 * _1909)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1909 * _1909)));
        float3 _1930 = _1815 * 4.0f;
        float4 _1950 = ((_52.SampleLevel(_23, _1930.xz, 0.0f) * _1841) + (_52.SampleLevel(_23, _1930.xy, 0.0f) * _1843)) + (_52.SampleLevel(_23, _1930.zy, 0.0f) * _1846);
        float2 _1953 = (_1950.xz * 2.0f) - 1.0f.xx;
        float _1964 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1953.x, _1950.y, _1953.y), (floor(_442 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1965 = _1964 * _1964;
        float _1968 = _1965 * ((_1965 * 2.0f) * _1865);
        float3 _1969 = 1.0f.xxx * _1968;
        _1975 = ((cross(_1916, _525) * _1901.x) + (_1916 * _1901.y)) + (_525 * _1901.z);
        _1976 = _1802 + _1968;
        _1977 = lerp(lerp(_1803, 0.89999997615814208984375f, clamp(_1865 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1968);
        _1978 = lerp(_1804 * _1877, 0.3079999983310699462890625f.xxx, _1879) + (_1969 * 0.5f);
        _1979 = lerp(_1805 * _1877, 0.87999999523162841796875f.xxx, _1879) + _1969;
        _1980 = lerp(_48_m2, 0.0f, _1865);
    }
    else
    {
        _1975 = _525;
        _1976 = _1802;
        _1977 = _1803;
        _1978 = _1804;
        _1979 = _1805;
        _1980 = _48_m2;
    }
    float _1982 = 0.959999978542327880859375f - (_1980 * 0.959999978542327880859375f);
    float3 _1983 = _1979 * _1982;
    float3 _1986 = lerp(0.039999999105930328369140625f.xxx * _48_m1, _1979, _1980.xxx);
    float3 _1987 = _1978 * _1982;
    float _1989 = max(_1977 * _1977, 0.0078125f);
    float2 _2002 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
    _2002.y = -_2002.y;
    float2 _2015 = ((sqrt(sqrt(abs(_2002 * 0.5f))) * float2(int2(sign(_2002)))) * 0.5f) + 0.5f.xx;
    float4 _2018 = float4(_2015.x, _2015.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2018.z = 1.0f;
    _2018.w = (_1976 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2031 = lerp(-_35_m0.xyz, _18_m90.xyz, _18_m80.w.xxx);
    float3 _2035 = normalize(float3(_2031.x, 6.103515625e-05f, _2031.z));
    float3 _2045 = lerp(_35_m3.xyz, _18_m84.xyz, _18_m91.y.xxx);
    float3 _2049 = _2045 * lerp(_35_m3.w, 1.0f, _18_m91.w);
    int _2053 = int(_527.x);
    int _2054 = int(_527.y);
    float4 _2058 = _39.Load(int3(int3(_2053, _2054, 0).xy, 0));
    float _2063 = _2058.y;
    float _2066 = lerp(lerp(1.0f, _2058.x, _37_m6.x), 1.0f, _18_m80.z);
    float _2067 = dot(_1975, _2031);
    float3 _2074 = _1987 * _18_m79.z;
    float3 _2075 = _2074 * 0.64999997615814208984375f;
    float _2079 = dot(_1983, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2092 = clamp(-dot(_2035.xz, normalize(_537.xz)), 0.0f, 1.0f);
    float _2096 = 1.0f - _18_m91.x;
    float _2104 = smoothstep(0.25f, 1.0f, clamp(lerp(_2067, ((-_2067) * ((_2067 * 0.5f) - 1.0f)) + 0.5f, (_2092 * smoothstep(0.25f, 0.75f, 1.0f - abs(_537.y))) * _2096) + (_18_m90.w * _18_m91.x), -1.0f, 1.0f));
    float _2111 = max(max(_2104, _2104), _2104) - min(min(_2104, _2104), _2104);
    float _2113 = smoothstep(0.25f, 1.0f, dot(_1975, _537));
    float _2120 = min(min(_2063, 1.0f), _2104);
    float _2121 = _2113 * _2063;
    float3 _2125 = ((clamp(dot(_525, _18_m85.xyz) + _18_m86.x, 0.0f, 1.0f) * _18_m86.y) + _18_m86.z).xxx * lerp(_1078, 1.0f.xxx, (_18_m80.y * _2120).xxx);
    float3 _2127 = _2120.xxx;
    float3 _2150 = _2066.xxx;
    float3 _2151 = lerp((_2125 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1079), 1.5f), clamp(_1079, 1.25f, 1.75f), _18_m80.x)) * _18_m79.w, (lerp(dot(_2049, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2049, _2127) + ((_2125 * clamp(_1079, 0.0f, 1.5f)) * ((1.0f - _18_m91.y).xxx + (_2045 * _18_m91.y)))) * _18_m79.y, _2150);
    float3 _2152 = lerp(lerp(lerp(dot(_2075, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2075, 1.2000000476837158203125f.xxx), _2074, clamp((_2063 * _2113) + _2104, 0.0f, 1.0f).xxx), _1983, _2127);
    float3 _2158 = _2152 * ((1.0f - _2111).xxx + (_2104.xxxx.xyz * _2111));
    float3 _2167 = lerp(lerp(_2074, lerp(_2079.xxx, _1983, 1.2000000476837158203125f.xxx), _2121.xxx), _2158 * clamp(dot(_2152, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2158, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2150);
    float4 _2171 = float4(_2167, _2066);
    float _2173 = lerp(_2121, _2120, _2066);
    float _2176 = lerp(_18_m79.z, 1.0f, _2173);
    float3 _2184 = float3(_537.x, lerp(0.5f, _2031.y, _2066), _537.z);
    float _2197 = clamp(dot(_1799, _442), 0.0f, 1.0f);
    float _2198 = dot(_1799, normalize(((_2031 * _2066) + ((_2184 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2184, _2184)))) * 2.0f)) + (_442 * (2.0f + _2066))));
    float _2199 = _1989 * _1989;
    float _2203 = (((_2198 * _2199) - _2198) * _2198) + 1.0f;
    float _2204 = _2203 * _2203;
    float _2208 = 2.0f * _2197;
    float _2210 = (1.0f + _2197) - _2197;
    float _2227 = (1.0f - _48_m6) + (_487 * _48_m6);
    float3 _2229 = ((_2151 * _2167) * _2227) + (((_1986 * clamp((((_2199 != _2204) ? (_2199 / _2204) : 1.0f) * (0.5f / ((_2208 + (_1989 * _2210)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2151 * (((_2173 * 0.5f) + 0.5f) * _2176)) * 1.0f)) * _18_m92.w);
    float _2230 = dot(_2229, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2233 = clamp(_2230 - 0.5f, 0.0f, 0.5f);
    float3 _2269 = normalize(cross(_537, lerp(float3(_18_m88.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m88.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m88.y), _18_m94.w.xxx)));
    float _2275 = dot(_442, _1975);
    float _2277 = 1.0f - abs(_2275);
    float _2299 = dot(_2035, _1975);
    float _2311 = 1.0f - _2066;
    float _2338 = lerp(_1977, _1801, _1800);
    float _2339 = _2338 * _2338;
    float _2340 = _2197 * _2197;
    float _2341 = _2340 * _2197;
    float2 _2342 = float2(1.0f, _2197);
    float2 _2345 = float2(1.0f, _2339);
    float3 _2348 = float3(1.0f, _2339, (_2339 * _2339) * _2339);
    float _2353 = dot(mul(_2342, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2345) / dot(mul(float3(1.0f, _2340, _2341), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2348);
    float _2358 = dot(mul(_2342, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2345) / dot(mul(float3(1.0f, _2197, _2341), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2348);
    float3 _2361 = (_1986 * _2353) + _2358.xxx;
    float _2362 = _2353 + _2358;
    float3 _2368 = -_442;
    float3 _2387 = lerp(_2230.xxx, _2229, ((_2233 * _2233) + 1.0f).xxx) + (((((_18_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m88.w), lerp(0.89999997615814208984375f, 0.5f, _18_m88.w), _2277)) * _18_m87.w) * min(min(clamp(dot(_519, _2269) + 1.0f, 0.0f, 1.0f), 1.0f), _2063)) * (lerp(0.25f.xxx, _1983, _18_m88.z.xxx) * clamp(dot(_2269, _1975), 0.0f, 1.0f))) + ((((((lerp(_1077 * (1.0f / max(max(max(_1077.x, _1077.y), _1077.z) * 0.5f, 1.0f)), _2049, _2150) * clamp(lerp(dot(_1076.xyz, _1975) * _1076.w, ((-_2299) * ((_2299 * 0.5f) - 1.0f)) + 0.5f, _2066), 0.0f, 1.0f)) * ((_2311 + (_2092 * _2066)) * _2096)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2277)) * min(1.0f, _2063)) * (_2311 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2079) * _2066))) * max(0.1500000059604644775390625f.xxx, _1983)));
    float2 _2390 = float2(_527);
    float2 _2392 = floor(_2390 * 0.03125f);
    int _2400 = int((_2392.x + (_2392.y * _33_m5)) * 8.0f);
    float _2407 = floor(_423 - (_18_m3.y * _33_m11));
    float _2411 = clamp(_2407, 0.0f, _33_m7 - 1.0f);
    int _2413 = int(_2411 * 8.0f);
    float3 _2415;
    _2415 = (_2387 + (((_500.xyz * _48_m25.xyz) * _48_m7) * _2227)) + (((_56.SampleLevel(_24, reflect(_2368, _1799), (1.2000000476837158203125f * log2(max(_2338, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2361 + ((_1986 * ((1.0f - _2362) / _2362)) * _2361)) * 1.0f)) * ((clamp(_1079, 0.5f, 1.5f) * _18_m79.w) * _2176)) * _1078);
    float3 _2416;
    [loop]
    for (int _2418 = 0; _2418 <= 7; _2415 = _2416, _2418++)
    {
        uint _2436 = (_2407 <= _2411) ? (_29.Load(uint(_2400 + _2418) * 4 + 0) & _29.Load(uint((_18_m21.y + _2413) + _2418) * 4 + 0)) : 0u;
        uint _2437 = uint(_2418);
        _2416 = _2415;
        uint _2442;
        float3 _2439;
        [loop]
        for (uint _2441 = _2436; _2441 != 0u; _2416 = _2439, _2441 = _2442)
        {
            uint _2446 = firstbitlow(_2441);
            _2442 = _2441 ^ (1u << (_2446 & 31u));
            int _2452 = int((32u * _2437) + _2446) * 8;
            int _2455 = _2452 + 1;
            int _2458 = _2452 + 2;
            int _2461 = _2452 + 3;
            int _2464 = _2452 + 4;
            int _2467 = _2452 + 5;
            int _2470 = _2452 + 6;
            int _2473 = _2452 + 7;
            uint _2477 = uint(_35_m6[_2467].w);
            float _2552;
            if ((_2477 & 1u) == 1u)
            {
                uint _2483 = asuint(_35_m6[_2467].x);
                uint _2490 = asuint(_35_m6[_2467].y);
                uint _2497 = asuint(_35_m6[_2467].z);
                uint _2504 = asuint(_35_m6[_2470].x);
                uint _2511 = asuint(_35_m6[_2470].y);
                uint _2518 = asuint(_35_m6[_2470].z);
                float3 _2537 = abs(mul(float4(_512 - _35_m6[_2455].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2483).x, spvUnpackHalf2x16(_2497).x, spvUnpackHalf2x16(_2511).x, 0.0f), float4(spvUnpackHalf2x16(_2483 >> 16u).x, spvUnpackHalf2x16(_2497 >> 16u).x, spvUnpackHalf2x16(_2511 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2490).x, spvUnpackHalf2x16(_2504).x, spvUnpackHalf2x16(_2518).x, 0.0f), float4(spvUnpackHalf2x16(_2490 >> 16u).x, spvUnpackHalf2x16(_2504 >> 16u).x, spvUnpackHalf2x16(_2518 >> 16u).x, 0.0f))).xyz);
                float _2544 = _35_m6[_2473].x * 0.5f;
                float _2550 = 1.0f - clamp((max(max(_2537.x, _2537.y), _2537.z) - (_2544 + 0.5f)) / (0.5f - _2544), 0.0f, 1.0f);
                _2552 = _2550 * _2550;
            }
            else
            {
                _2552 = 1.0f;
            }
            if (false || (_2552 < 0.001000000047497451305389404296875f))
            {
                _2439 = _2416;
                continue;
            }
            float3 _3245;
            if (_35_m6[_2452].w < 1.5f)
            {
                float3 _3244;
                do
                {
                    uint _2565 = asuint(_35_m6[_2461].w);
                    if ((_2565 == 16u) || ((_35_m6[_2461].z + _18_m91.z) < 0.5f))
                    {
                        _3244 = _2416;
                        break;
                    }
                    bool _2577 = (uint(_35_m6[_2452].w) & 1u) == 0u;
                    bool _2581 = (!_2577) && (_35_m6[_2458].z > 0.0f);
                    bool _2582 = _2565 == 4u;
                    float _2583 = float(_2577);
                    float _2591 = (0.5f + (0.5f * _35_m6[_2458].y)) - abs(_35_m6[_2458].x);
                    float _2592 = _35_m6[_2458].y - _2591;
                    float _2599 = abs(max((1.0f - abs(_2591)) - abs(_2592), 0.00048828125f));
                    float3 _2603 = normalize(float3(_2591, _2592, (_35_m6[_2458].x >= 0.0f) ? _2599 : (-_2599)));
                    float _2609 = lerp(_35_m6[_2470].w, max(2.0f * _35_m6[_2464].y, 0.100000001490116119384765625f), float(_2582));
                    float3 _2614 = _35_m6[_2455].xyz - _512;
                    float3 _2615 = -_2603;
                    float3 _2620 = lerp(_2614, _2615 * dot(_2614, _2615), (float(_2582 && (_35_m6[_2464].z > 0.5f)) * _2583).xxx);
                    float _2621 = dot(_2620, _2620);
                    float _2622 = rsqrt(_2621);
                    float3 _2623 = _2620 * _2622;
                    float3 _2656;
                    float _2657;
                    if (_2581)
                    {
                        float3 _2627 = (_2603 * _35_m6[_2458].z) * 0.5f;
                        float3 _2628 = _2620 - _2627;
                        float3 _2629 = _2620 + _2627;
                        float _2630 = length(_2628);
                        float _2631 = length(_2629);
                        float3 _2640 = normalize(cross(cross(_2603, _2623), _2603));
                        _2656 = _2640;
                        _2657 = ((1.0f / ((((_2630 * _2631) + dot(_2628, _2629)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2640, _2628) / _2630) + (dot(_2640, _2629) / _2631)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_2458].z * _2622, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2656 = _2623;
                        _2657 = 1.0f;
                    }
                    float _2679;
                    if (_2609 < 0.0f)
                    {
                        float _2667 = _2621 * (_35_m6[_2455].w * _35_m6[_2455].w);
                        float _2670 = clamp(1.0f - (_2667 * _2667), 0.0f, 1.0f);
                        _2679 = lerp(1.0f / (_2621 + 1.0f), _2657, float(_2581)) * (_2670 * _2670);
                    }
                    else
                    {
                        float3 _2673 = _2620 * _35_m6[_2455].w;
                        _2679 = _2657 * pow(1.0f - clamp(dot(_2673, _2673), 0.0f, 1.0f), _2609);
                    }
                    float _2684 = clamp((dot(_2656, _2615) - _35_m6[_2458].z) * _35_m6[_2458].w, 0.0f, 1.0f);
                    float _2687 = _2679 * lerp(1.0f, _2684 * _2684, _2583);
                    int _2689 = int(_35_m6[_2473].w);
                    float _2793;
                    if ((!_2581) && (_2689 >= 0))
                    {
                        uint _2695 = uint(_2689);
                        float2 _2786;
                        [branch]
                        if (_2583 != 0.0f)
                        {
                            float4 _2707 = mul(_59_m1[_2695], float4(_512.x, _569, _512.z, 1.0f));
                            _2786 = _59_m0[_2695].xy + (clamp(_2707.xy / _2707.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2695].zw);
                        }
                        else
                        {
                            float3 _2727 = mul(float4(-_2620, 0.0f), _59_m1[_2695]).xyz;
                            float3 _413 = _2727;
                            float3 _412 = _2727;
                            float3 _411 = abs(_2727);
                            uint _2736 = uint(int(_411.y > _411.x));
                            uint _2742 = (_411.z > _411[_2736]) ? 2u : _2736;
                            uint _2748 = (_2742 * 2u) + uint(_412[_2742] < 0.0f);
                            float _2752 = abs(_413[_2748 / 2u]);
                            float _2772 = 0.5f - (0.000244140625f / _59_m0[_2695].w);
                            _2786 = _59_m0[_2695].xy + (clamp(float2((float(_2748) + ((((_413[uint(_362[_2748].x)] * _363[_2748].x) / _2752) * _2772) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_413[uint(_362[_2748].y)] * _363[_2748].y) / _2752) * _2772)), 0.0f.xx, 1.0f.xx) * _59_m0[_2695].zw);
                        }
                        _2793 = _2687 * _57.SampleLevel(_24, _2786, 0.0f).x;
                    }
                    else
                    {
                        _2793 = _2687;
                    }
                    float _2794 = _2793 * _2552;
                    float3 _3243;
                    do
                    {
                        float3 _3242;
                        [branch]
                        if (_2794 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2582)
                            {
                                _3243 = lerp(_2416, _35_m6[_2452].xyz, (_2794 * (_35_m6[_2464].x * ((1.0f - _35_m6[_2464].w) + (smoothstep(-0.5f, 0.5f, dot(_525, _2656)) * _35_m6[_2464].w)))).xxx);
                                break;
                            }
                            float _2814 = dot(_1975, _2656);
                            float _2815 = clamp(_2814, 0.0f, 1.0f);
                            float _3118;
                            if (_2565 != 0u)
                            {
                                bool _2821 = _2577 || ((_2477 & 2u) != 0u);
                                int _2870;
                                if (_2821)
                                {
                                    _2870 = int(_35_m6[_2461].x);
                                }
                                else
                                {
                                    uint _2827 = asuint(_35_m6[_2458].w);
                                    uint _2829 = asuint(_35_m6[_2461].x);
                                    float3 _2830 = _512 - _35_m6[_2455].xyz;
                                    float3 _2831 = abs(_2830);
                                    float _2832 = _2831.x;
                                    float _2833 = _2831.y;
                                    float _2835 = _2831.z;
                                    int _2867;
                                    if ((_2832 > _2833) && (_2832 > _2835))
                                    {
                                        _2867 = int((_2830.x > 0.0f) ? (_2827 >> 24u) : ((_2827 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2866;
                                        if (_2833 > _2835)
                                        {
                                            _2866 = int((_2830.y > 0.0f) ? ((_2827 >> 8u) & 255u) : (_2827 & 255u));
                                        }
                                        else
                                        {
                                            _2866 = int((_2830.z > 0.0f) ? ((_2829 >> 8u) & 255u) : (_2829 & 255u));
                                        }
                                        _2867 = _2866;
                                    }
                                    _2870 = (_2867 < 80) ? _2867 : (-1);
                                }
                                bool _2871 = _2870 >= 0;
                                float _3117;
                                if (_2871)
                                {
                                    float3 _2875 = _512 - _35_m6[_2455].xyz;
                                    float4 _2895 = mul(_37_m10[_2870], float4((_512 - ((_2875 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2875, _2875)))) * _37_m11[_2870].x)) + (_525 * (_37_m11[_2870].y * 5.0f)), 1.0f));
                                    float _2896 = _2895.w;
                                    float3 _2899 = _2895.xyz / _2896.xxx;
                                    float2 _2900 = _2899.xy;
                                    float3 _2908 = _2899.xyz;
                                    bool3 _2909 = bool3(_2908.x <= 0.0f.xxx.x, _2908.y <= 0.0f.xxx.y, _2908.z <= 0.0f.xxx.z);
                                    bool3 _2910 = bool3(_2908.x >= 1.0f.xxx.x, _2908.y >= 1.0f.xxx.y, _2908.z >= 1.0f.xxx.z);
                                    float _2913 = _2899.z;
                                    float2 _2924 = ((_2900 * (_37_m12[_2870].zw - _37_m12[_2870].xy)) + _37_m12[_2870].xy).xy * _37_m13.zw;
                                    float2 _2926 = floor(_2924 + 0.5f.xx);
                                    float2 _2927 = _2924 - _2926;
                                    float _2929 = _2927.x + 0.5f;
                                    float _2930 = _2929 * _2929;
                                    float _2933 = 1.0f - _2927.x;
                                    float _2934 = min(_2927.x, 0.0f);
                                    float _2937 = _2927.x + 1.0f;
                                    float _2938 = max(_2927.x, 0.0f);
                                    float _2950 = _2927.y + 0.5f;
                                    float _2951 = _2950 * _2950;
                                    float _2954 = 1.0f - _2927.y;
                                    float _2955 = min(_2927.y, 0.0f);
                                    float _2958 = _2927.y + 1.0f;
                                    float _2959 = max(_2927.y, 0.0f);
                                    float3 _2971 = float3(0.1599999964237213134765625f * _2933, 0.1599999964237213134765625f * ((_2937 - (_2938 * _2938)) + 1.0f), _2930 * 0.07999999821186065673828125f);
                                    float3 _2972 = float3(0.1599999964237213134765625f * ((_2930 * 0.5f) - _2927.x), 0.1599999964237213134765625f * ((_2933 - (_2934 * _2934)) + 1.0f), 0.1599999964237213134765625f * _2937) + _2971;
                                    float3 _2974 = float3(0.1599999964237213134765625f * _2954, 0.1599999964237213134765625f * ((_2958 - (_2959 * _2959)) + 1.0f), _2951 * 0.07999999821186065673828125f);
                                    float3 _2975 = float3(0.1599999964237213134765625f * ((_2951 * 0.5f) - _2927.y), 0.1599999964237213134765625f * ((_2954 - (_2955 * _2955)) + 1.0f), 0.1599999964237213134765625f * _2958) + _2974;
                                    float3 _2981 = ((_2971 / _2972) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2983 = ((_2974 / _2975) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2985 = _2926 * _37_m13.xy;
                                    float _2986 = _2981.x;
                                    float _2987 = _2983.x;
                                    float _2990 = _2981.y;
                                    float _2993 = _2981.z;
                                    float _2996 = _2983.y;
                                    float _3003 = _2983.z;
                                    float _3010 = _2972.x;
                                    float _3011 = _2975.x;
                                    float _3013 = _2972.y;
                                    float _3015 = _2972.z;
                                    float _3017 = _2975.y;
                                    float _3021 = _2975.z;
                                    float _3079 = (((((((_3010 * _3011) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2986, _2987), _405).xy, _2913)) + ((_3013 * _3011) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2990, _2987), _405).xy, _2913))) + ((_3015 * _3011) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2993, _2987), _405).xy, _2913))) + ((_3010 * _3017) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2986, _2996), _405).xy, _2913))) + ((_3013 * _3017) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2990, _2996), _405).xy, _2913))) + ((_3015 * _3017) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2993, _2996), _405).xy, _2913))) + ((_3010 * _3021) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2986, _3003), _405).xy, _2913));
                                    float2 _3100 = min(_2900, 1.0f.xx - _2900);
                                    _3117 = _2871 ? lerp(1.0f, (any(bool3(_2909.x || _2910.x, _2909.y || _2910.y, _2909.z || _2910.z)) || ((asuint(_2913) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3079 + ((_3013 * _3021) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2990, _3003), _405).xy, _2913))) + ((_3015 * _3021) * _38.SampleCmpLevelZero(_26, float3(_2985 + float2(_2993, _3003), _405).xy, _2913))), _2821 ? min(_37_m11[_2870].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2870].z - _2896) * 0.25f, min(_3100.x, _3100.y)))) : _37_m11[_2870].w) : 1.0f;
                                }
                                else
                                {
                                    _3117 = clamp(dot(_519, _2656) + 1.0f, 0.0f, 1.0f);
                                }
                                _3118 = _3117;
                            }
                            else
                            {
                                _3118 = 1.0f;
                            }
                            float _3198;
                            float3 _3199;
                            float _3200;
                            float3 _3201;
                            float3 _3202;
                            float _3203;
                            float _3204;
                            [branch]
                            if (_2565 == 0u)
                            {
                                float3 _3124 = _35_m6[_2452].xyz * _2794;
                                float3 _3137 = _2171.xyz;
                                _3198 = _2794;
                                _3199 = (_35_m6[_2452].xyz * ((1.0f - _35_m6[_2464].y) + ((1.0f / max(1.0f, max(max(_3124.x, _3124.y), _3124.z) * lerp(0.75f, 0.5f, _2311))) * _35_m6[_2464].y))) * lerp(0.25f * _35_m6[_2464].x, 1.0f, clamp(_2814 + 0.5f, 0.0f, 1.0f));
                                _3200 = _2815;
                                _3201 = _3137;
                                _3202 = _3137;
                                _3203 = 1.0f;
                                _3204 = 0.0f;
                            }
                            else
                            {
                                float _3192;
                                float _3193;
                                float3 _3194;
                                float3 _3195;
                                float _3196;
                                float _3197;
                                if (_2565 == 3u)
                                {
                                    _3192 = _2794 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_2464].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_2464].x), _2277) * _3118);
                                    _3193 = clamp(dot(_1975, -normalize(cross(_537, cross(_537, _2656)))), 0.0f, 1.0f);
                                    _3194 = lerp(0.5f.xxx, _1983, _35_m6[_2464].y.xxx);
                                    _3195 = 0.0f.xxx;
                                    _3196 = 1.0f;
                                    _3197 = 0.0f;
                                }
                                else
                                {
                                    bool _3162 = _2565 == 1u;
                                    float _3186;
                                    float3 _3187;
                                    float _3188;
                                    float _3189;
                                    if (_3162)
                                    {
                                        _3186 = clamp(clamp(_2814 + _35_m6[_2464].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3118;
                                        _3187 = _1987 * _35_m6[_2464].y;
                                        _3188 = 1.0f;
                                        _3189 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3172 = _2565 == 2u;
                                        float _3184;
                                        if (_3172)
                                        {
                                            _3184 = smoothstep(_35_m6[_2464].x + 0.0500000007450580596923828125f, _35_m6[_2464].x - 0.0500000007450580596923828125f, _1977) * ((1.0f - _35_m6[_2464].z) + (step(0.5f, _1980) * _35_m6[_2464].z));
                                        }
                                        else
                                        {
                                            _3184 = 1.0f;
                                        }
                                        _3186 = _2815;
                                        _3187 = 0.0f.xxx;
                                        _3188 = _3184;
                                        _3189 = _3172 ? _35_m6[_2464].y : 0.0f;
                                    }
                                    bool3 _3190 = _3162.xxx;
                                    _3192 = _2794;
                                    _3193 = _3186;
                                    _3194 = float3(_3190.x ? _1983.x : 0.0f.xxx.x, _3190.y ? _1983.y : 0.0f.xxx.y, _3190.z ? _1983.z : 0.0f.xxx.z);
                                    _3195 = _3187;
                                    _3196 = _3188;
                                    _3197 = _3189;
                                }
                                _3198 = _3192;
                                _3199 = _35_m6[_2452].xyz;
                                _3200 = _3193;
                                _3201 = _3194;
                                _3202 = _3195;
                                _3203 = _3196;
                                _3204 = _3197;
                            }
                            float3 _3232;
                            [branch]
                            if (_2565 != 3u)
                            {
                                float _3209 = lerp(_1989, 0.00999999977648258209228515625f, _3204);
                                float _3212 = dot(_1799, normalize(_2656 + _442));
                                float _3213 = _3209 * _3209;
                                float _3217 = (((_3212 * _3213) - _3212) * _3212) + 1.0f;
                                float _3218 = _3217 * _3217;
                                _3232 = ((_1986 * clamp((((_3213 != _3218) ? (_3213 / _3218) : 1.0f) * (0.5f / ((_2208 + (_3209 * _2210)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3203) * _35_m6[_2473].z;
                            }
                            else
                            {
                                _3232 = 0.0f.xxx;
                            }
                            float3 _3235 = _3199 * _3198;
                            _3242 = _2416 + (((_3235 * lerp(_3202, _3201, _3200.xxx)) * _2227) + ((_3235 * _3232) * _3200));
                        }
                        else
                        {
                            _3242 = _2416;
                        }
                        _3243 = _3242;
                        break;
                    } while(false);
                    _3244 = _3243;
                    break;
                } while(false);
                _3245 = _3244;
            }
            else
            {
                _3245 = _2416;
            }
            _2439 = _3245;
        }
    }
    float3 _3285;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _3285 = lerp(lerp(0.5f.xxx, lerp(dot(_2415, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2415, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_2275, 0.0f, 1.0f))) * _48_m17);
    }
    else
    {
        _3285 = _2415;
    }
    float4 _3292 = float4(_3285 * _18_m20.y, _487);
    _3292.w = (_48_m8 == 1.0f) ? _487 : 1.0f;
    float4 _3679;
    [branch]
    if (_18_m91.w < 0.5f)
    {
        float _3316 = _569 * _18_m46.w;
        float _3321 = max(0.00999999977648258209228515625f, _3316 + _18_m47.w);
        float3 _3335 = exp(_18_m45.xyz * ((-max(0.0f, (_443 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3321)) / _3321) * exp(_3316 + _18_m48.w))));
        float _3338 = dot(_2368, _18_m44.xyz);
        float _3344 = _18_m45.w * _18_m45.w;
        float _3348 = (1.0f + _3344) - ((2.0f * _18_m45.w) * _3338);
        float3 _3671;
        float _3672;
        if (_18_m55.z > 0.0f)
        {
            uint3 _3393 = (uint3(int3(_2053, _2054, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3394 = _3393.y;
            uint _3395 = _3393.z;
            uint _3398 = _3393.x + (_3394 * _3395);
            uint _3400 = _3394 + (_3395 * _3398);
            uint _3402 = _3395 + (_3398 * _3400);
            uint _3404 = _3398 + (_3400 * _3402);
            float _3429 = dot(_2368, -_16_m0[2].xyz);
            float3 _3436 = _512 - _16_m11.xyz;
            float _3438 = (_18_m55.w * ((_3429 > 5.9604644775390625e-08f) ? (1.0f / _3429) : 0.0f)) * (1.0f / _443);
            float _3439 = _3436.y;
            float _3440 = _3438 * _3439;
            float _3442 = _16_m11.y + _3440;
            float _3443 = _3439 - _3440;
            float _3445 = (1.0f - _3438) * _443;
            float _3459 = max(-127.0f, _18_m49.z * _3443);
            float _3483 = max(-127.0f, _18_m52.x * _3443);
            float _3494 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3442 - _18_m49.x)))) * ((abs(_3459) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3459)) / _3459) : (0.693147182464599609375f - (0.2402265071868896484375f * _3459)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3442 - _18_m52.z)))) * ((abs(_3483) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3483)) / _3483) : (0.693147182464599609375f - (0.2402265071868896484375f * _3483))));
            float _3516 = clamp((_443 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3519 = clamp((max(clamp(exp2(-(_3494 * _3445)), 0.0f, 1.0f), _18_m51.w) + clamp((_443 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3516, 0.0f, 1.0f);
            float4 _3559 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _62.SampleLevel(_24, float3((_2390 + ((((float3(uint3(_3404, _3400 + (_3402 * _3404), _409) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_423 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_423 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3671 = _3559.xyz + (((_18_m51.xyz * (1.0f - _3519)) + (((_18_m54.xyz * pow(clamp(dot(_442, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3494 * max(_3445 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3516))) * _3559.w);
            _3672 = _3559.w * _3519;
        }
        else
        {
            float3 _3565 = _512 - _16_m11.xyz;
            float _3567 = _3565.y;
            float _3581 = max(-127.0f, _18_m49.z * _3567);
            float _3605 = max(-127.0f, _18_m52.x * _3567);
            float _3616 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3581) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3581)) / _3581) : (0.693147182464599609375f - (0.2402265071868896484375f * _3581)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3605) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3605)) / _3605) : (0.693147182464599609375f - (0.2402265071868896484375f * _3605))));
            float _3638 = clamp((_443 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
            float _3641 = clamp((max(clamp(exp2(-(_3616 * _443)), 0.0f, 1.0f), _18_m51.w) + clamp((_443 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3638, 0.0f, 1.0f);
            _3671 = (_18_m51.xyz * (1.0f - _3641)) + (((_18_m54.xyz * pow(clamp(dot(_442, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3616 * max(_443 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3638));
            _3672 = _3641;
        }
        float3 _3677 = (_3292.xyz * (_3335 * _3672)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3338 * _3338)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3344) / max((12.56637096405029296875f * _3348) * sqrt(_3348), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3335)) * _3672) + _3671);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3677 = (_3677 * 0.65f) + (_3292.xyz * 0.35f);

        }
        _3679 = float4(_3677.x, _3677.y, _3677.z, _3292.w);
    }
    else
    {
        _3679 = _3292;
    }
    _13 = _3679;
    _14 = _2018;
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
