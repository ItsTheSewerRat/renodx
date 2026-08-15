// DX11 0x18F24DBB -> Vulkan 0x8E1466C3
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

static float3 _350;
static float _351 = 0.0f;
static float3 _352 = 0.0f;
static float _354 = 0.0f;
static uint _355 = 0u;

static const int2 _329[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _330[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float _49_m35 : packoffset(c14);
    float _49_m36 : packoffset(c14.y);
    float _49_m37 : packoffset(c14.z);
    float _49_m38 : packoffset(c14.w);
    float4 _49_m39 : packoffset(c15);
    float4 _49_m40 : packoffset(c16);
    float4 _49_m41 : packoffset(c17);
    float4 _49_m42 : packoffset(c18);
    float4 _49_m43 : packoffset(c19);
    float4 _49_m44 : packoffset(c20);
    float _49_m45 : packoffset(c21);
    float _49_m46 : packoffset(c21.y);
    float _49_m47 : packoffset(c21.z);
    float _49_m48 : packoffset(c21.w);
    float _49_m49 : packoffset(c22);
    float _49_m50 : packoffset(c22.y);
    float _49_m51 : packoffset(c22.z);
    float _49_m52 : packoffset(c22.w);
};

[[vk::binding(50, 0)]]
cbuffer _59_60 : register(b50)
{
    float4 _60_m0[32] : packoffset(c0);
    column_major float4x4 _60_m1[32] : packoffset(c32);
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
[[vk::binding(3, 1)]] Texture2D<float4> _50 : register(t3);
[[vk::binding(43, 0)]] Texture2D<float4> _51 : register(t43);
[[vk::binding(42, 0)]] Texture2D<float4> _52 : register(t42);
[[vk::binding(39, 0)]] Texture2D<float4> _53 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _54 : register(t37);
[[vk::binding(4, 1)]] Texture2D<float4> _55 : register(t4);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2);
[[vk::binding(1, 1)]] Texture2D<float4> _57 : register(t1);
[[vk::binding(29, 0)]] Texture2D<float4> _58 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _63 : register(t36);

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
    float2 _360 = _3;
    float _370 = 1.0f / gl_FragCoord.w;
    float3 _385 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _386 = dot(_385, _385);
    float _388 = rsqrt(max(_386, 9.9999999392252902907785028219223e-09f));
    float3 _389 = _385 * _388;
    float _390 = _386 * _388;
    uint _393 = asuint(_22_m0[_12]._m2.x);
    bool _398 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _415;
    float4 _416;
    float4 _417;
    if (_398)
    {
        _415 = asfloat(_32_Load4((_393 + 2u) * 16 + 0));
        _416 = asfloat(_32_Load4((_393 + 1u) * 16 + 0));
        _417 = asfloat(_32_Load4(_393 * 16 + 0));
    }
    else
    {
        _415 = _22_m0[_12]._m0[2];
        _416 = _22_m0[_12]._m0[1];
        _417 = _22_m0[_12]._m0[0];
    }
    float4 _423 = _55.SampleBias(_26, _360, _19_m16);
    float3 _428 = _423.xyz * _49_m24.xyz;
    float _435 = 1.0f - _49_m0;
    float _436 = _423.w;
    float3 _441 = _428 * _49_m18;
    float3 _445 = lerp(dot(_441, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _441, _49_m19.xxx);
    float4 _449 = _57.SampleBias(_25, _360, _19_m16);
    float _451 = _449.y;
    float _452 = _449.z;
    float _453 = _449.w;
    float3 _457 = _4 + _17_m11.xyz;
    float3 _461 = _457 - float3(_417.w, _354, _415.w);
    _461.y = 6.103515625e-05f;
    float3 _464 = normalize(_461);
    float _478 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _479 = normalize(_5) * _478;
    uint2 _481 = uint2(gl_FragCoord.xy);
    float3 _491 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3x3 _495 = float3x3(_417.xyz, _416.xyz, _415.xyz);
    float3 _496 = mul(_491, _495);
    float2 _502 = normalize((_496 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_496, _496)))).xz);
    float _503 = _502.y;
    uint _512 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _525 = float4(float(_512 & 255u), float((_512 >> 8u) & 255u), float((_512 >> 16u) & 255u), float((_512 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _526 = _525.x;
    float _529 = _525.w;
    float _535 = _457.y;
    float _539 = max(_525.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _535) * _525.y);
    float _540 = max(_526, _539);
    float _548 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float _550 = _479.z;
    float3 _553 = _451.xxx;
    float3 _555 = normalize(lerp(_464, normalize(float3(_479.x, 6.103515625e-05f, _550)), _553));
    float3 _1046;
    float _1047;
    if (_19_m80.y < 0.5f)
    {
        float3 _573 = _457 - (_19_m105.xyz + (_491 * (-_19_m107.w)));
        float _587 = max(clamp((max(abs(_573.x), abs(_573.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_573.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _889;
        float4 _890;
        float4 _891;
        float _892;
        float _893;
        if ((_19_m105.w != 0.0f) && (_587 < 1.0f))
        {
            float3 _600 = _457 - (_19_m105.xyz + (_491 * (-_19_m107.y)));
            float _614 = max(clamp((max(abs(_600.x), abs(_600.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_600.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _690;
            float4 _691;
            float4 _692;
            float4 _693;
            if (_614 < 1.0f)
            {
                float3 _623 = ((_457 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _625 = _623 - floor(_623);
                float4 _629 = _42.SampleLevel(_26, _625, 0.0f);
                float _630 = 1.0f - _614;
                float _634 = _19_m106.y * 0.5f;
                float _639 = _625.x;
                float _640 = clamp(_625.y, _634, 1.0f - _634) * 0.3333333432674407958984375f;
                float _641 = _625.z;
                float4 _644 = _43.SampleLevel(_25, float3(_639, _640, _641), 0.0f);
                float _660 = _629.x;
                float _670 = _629.y;
                float _680 = _629.z;
                _690 = _587 + (_644.w * _630);
                _691 = float4(((_43.SampleLevel(_25, float3(_639, _640 + 0.666666686534881591796875f, _641), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _680, _680) * _630;
                _692 = float4(((_43.SampleLevel(_25, float3(_639, _640 + 0.3333333432674407958984375f, _641), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _670, _670) * _630;
                _693 = float4(((_644.xyz * 4.0f) - 2.0f.xxx) * _660, _660) * _630;
            }
            else
            {
                _690 = _587;
                _691 = 0.0f.xxxx;
                _692 = 0.0f.xxxx;
                _693 = 0.0f.xxxx;
            }
            float3 _699 = _457 - (_19_m105.xyz + (_491 * (-_19_m107.z)));
            float _713 = max(clamp((max(abs(_699.x), abs(_699.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_699.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _793;
            float4 _794;
            float4 _795;
            float4 _796;
            if (_713 < 1.0f)
            {
                float3 _722 = ((_457 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _724 = _722 - floor(_722);
                float4 _728 = _44.SampleLevel(_26, _724, 0.0f);
                float _730 = _614 * (1.0f - _713);
                float _734 = _19_m106.y * 0.5f;
                float _739 = _724.x;
                float _740 = clamp(_724.y, _734, 1.0f - _734) * 0.3333333432674407958984375f;
                float _741 = _724.z;
                float4 _744 = _45.SampleLevel(_25, float3(_739, _740, _741), 0.0f);
                float _760 = _728.x;
                float _771 = _728.y;
                float _782 = _728.z;
                _793 = _690 + (_744.w * _730);
                _794 = _691 + (float4(((_45.SampleLevel(_25, float3(_739, _740 + 0.666666686534881591796875f, _741), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _782, _782) * _730);
                _795 = _692 + (float4(((_45.SampleLevel(_25, float3(_739, _740 + 0.3333333432674407958984375f, _741), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _771, _771) * _730);
                _796 = _693 + (float4(((_744.xyz * 4.0f) - 2.0f.xxx) * _760, _760) * _730);
            }
            else
            {
                _793 = _690;
                _794 = _691;
                _795 = _692;
                _796 = _693;
            }
            float4 _879;
            float4 _880;
            float4 _881;
            float _882;
            if (_713 > 0.0f)
            {
                float3 _805 = ((_457 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _808 = _19_m106.xyz * 0.5f;
                float3 _810 = clamp(_805 - floor(_805), _808, 1.0f.xxx - _808);
                float4 _814 = _46.SampleLevel(_26, _810, 0.0f);
                float _816 = _713 * (1.0f - _587);
                float _820 = _19_m106.y * 0.5f;
                float _825 = _810.x;
                float _826 = clamp(_810.y, _820, 1.0f - _820) * 0.3333333432674407958984375f;
                float _827 = _810.z;
                float4 _830 = _47.SampleLevel(_25, float3(_825, _826, _827), 0.0f);
                float _846 = _814.x;
                float _857 = _814.y;
                float _868 = _814.z;
                _879 = _794 + (float4(((_47.SampleLevel(_25, float3(_825, _826 + 0.666666686534881591796875f, _827), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _868, _868) * _816);
                _880 = _795 + (float4(((_47.SampleLevel(_25, float3(_825, _826 + 0.3333333432674407958984375f, _827), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _857, _857) * _816);
                _881 = _796 + (float4(((_830.xyz * 4.0f) - 2.0f.xxx) * _846, _846) * _816);
                _882 = _793 + (_830.w * _816);
            }
            else
            {
                _879 = _794;
                _880 = _795;
                _881 = _796;
                _882 = _793;
            }
            float _885 = clamp((_882 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _889 = _879;
            _890 = _880;
            _891 = _881;
            _892 = _885 - _587;
            _893 = (_885 + _587) * 0.5f;
        }
        else
        {
            _889 = 0.0f.xxxx;
            _890 = 0.0f.xxxx;
            _891 = 0.0f.xxxx;
            _892 = 0.0f;
            _893 = 1.0f;
        }
        float4 _913 = _891 + float4(_19_m108.x * _893, (_19_m108.y * _893) + ((_19_m108.w * _892) * 0.5f), _19_m108.z * _893, (_19_m108.w * _893) + ((_19_m108.y * _892) * 0.375f));
        float4 _933 = _890 + float4(_19_m109.x * _893, (_19_m109.y * _893) + ((_19_m109.w * _892) * 0.5f), _19_m109.z * _893, (_19_m109.w * _893) + ((_19_m109.y * _892) * 0.375f));
        float4 _953 = _889 + float4(_19_m110.x * _893, (_19_m110.y * _893) + ((_19_m110.w * _892) * 0.5f), _19_m110.z * _893, (_19_m110.w * _893) + ((_19_m110.y * _892) * 0.375f));
        float4 _957 = float4(_555, 1.0f);
        float3 _963 = max(float3(dot(_913, _957), dot(_933, _957), dot(_953, _957)), 0.0f.xxx) * _548;
        float3 _971 = ((_913.xyz * 0.2125999927520751953125f) + (_933.xyz * 0.715200006961822509765625f)) + (_953.xyz * 0.072200000286102294921875f);
        float3 _975 = _971 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_971, _971)));
        float4 _980 = float4(_975.x, abs(_975.y), _975.z, 1.0f);
        float3 _985 = max(float3(dot(_913, _980), dot(_933, _980), dot(_953, _980)), 0.0f.xxx);
        float _993 = _963.z;
        float _994 = _963.y;
        float4 _999 = lerp(float4(_993, _994, -1.0f, 0.666666686534881591796875f), float4(_994, _993, 0.0f, -0.3333333432674407958984375f), step(_993, _994).xxxx);
        float _1000 = _963.x;
        float _1001 = _999.x;
        float4 _1009 = lerp(float4(_1001, _999.yw, _1000), float4(_1000, _999.yz, _1001), step(_1001, _1000).xxxx);
        float _1010 = _1009.x;
        float _1011 = _1009.w;
        float _1012 = _1009.y;
        float _1014 = _1010 - min(_1011, _1012);
        float _1024 = frac(abs(_1009.z + ((_1011 - _1012) / ((6.0f * _1014) + 9.9999997473787516355514526367188e-05f))));
        float _1031 = min(_1014 / (_1010 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1024 - 0.5f))) * clamp(_1010, 0.0f, 1.0f));
        float _1033 = 2.0f / (2.0f - _1031);
        _1046 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1024, _1031, _1033).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1031.xxx) * _1033;
        _1047 = max(max(max(_985.x, _985.y), _985.z), 0.0f) * _548;
    }
    else
    {
        _1046 = _19_m82.xyz;
        _1047 = _548;
    }
    float _1066 = _449.x * lerp(clamp(_503 + 0.5f, 0.0f, 1.0f), 1.0f, _451);
    float _1080 = clamp((1.0f - clamp((clamp(dot(_479, _389), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1066 * lerp(_49_m31, _49_m30, _452)), 0.0f, 1.0f);
    float3 _1088 = _428 * ((1.0f - _1080).xxx + (_49_m34.xyz * _1080));
    float _1089 = lerp(0.0f, _49_m1, _451);
    float _1175;
    float _1176;
    float3 _1177;
    float _1178;
    float _1179;
    [branch]
    if ((clamp(_526 + _539, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1102 = _19_m10.x * 0.800000011920928955078125f;
        float4 _1107 = _51.SampleBias(_26, _360 + float2(0.0f, frac(_1102)), _19_m16);
        float4 _1121 = float4(_1107.xy, _51.SampleBias(_26, _360 + float2(0.0f, frac(_1102 + 0.004999999888241291046142578125f)), _19_m16).w, _1107.w);
        float4 _1125 = _52.SampleBias(_26, _360, _19_m16);
        float _1126 = _1125.z;
        float2 _1128 = _1121.zw * _1126;
        float _1130 = _1128.y;
        float2 _1133 = (_1121.xy * 2.0f) - 1.0f.xx;
        float _1134 = _1128.x;
        float _1137 = clamp(_1134 + _1130, 0.0f, 1.0f) * _540;
        float _1138 = (_1107.z * _1126) * _540;
        float3 _1141 = float3(_1133, 0.0f);
        float2 _1142 = _1141.xy;
        _1141.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1142, _1142), 0.0f, 1.0f)));
        float _1156 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1133.y * 0.5f) + 0.5f), 1.0f, clamp(_1134 - _1130, 0.0f, 1.0f));
        _1175 = lerp(_1089, 3.0f, clamp((_1137 * 2.0f) + _1138, 0.0f, 1.0f) * _540);
        _1176 = _436 * ((1.0f - _1137) + (lerp((1.0f - _1156) + (0.800000011920928955078125f * _1156), 0.89999997615814208984375f, _451) * _1137));
        _1177 = normalize(mul(_1141, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _478;
        _1178 = lerp(_435, 0.5f, _540);
        _1179 = clamp(clamp(_1137 + _1138, 0.0f, 1.0f), 0.0f, 1.0f);
    }
    else
    {
        _1175 = _1089;
        _1176 = _436;
        _1177 = _479;
        _1178 = _435;
        _1179 = 0.0f;
    }
    float3 _1339;
    float _1340;
    float3 _1341;
    float3 _1342;
    float _1343;
    [branch]
    if (_529 > 0.00999999977648258209228515625f)
    {
        bool3 _1183 = _398.xxx;
        float3 _1185 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1186 = float3(_1183.x ? _1185.x : _10.x, _1183.y ? _1185.y : _10.y, _1183.z ? _1185.z : _10.z);
        float3 _1189 = _1186 * _19_m89.z;
        float3 _1191 = float3(_1183.x ? _9.xzy.x : _9.x, _1183.y ? _9.xzy.y : _9.y, _1183.z ? _9.xzy.z : _9.z);
        float3 _1193 = abs(_1191) - 0.20000000298023223876953125f.xxx;
        float3 _1196 = max((_1193 * _1193) * _1193, 6.103515625e-05f.xxx);
        float3 _1199 = _1196 / dot(_1196, 1.0f.xxx).xxx;
        float _1215 = _1199.y;
        float _1217 = _1199.z;
        float _1220 = _1199.x;
        float4 _1222 = ((_53.SampleBias(_26, _1189.xz, _19_m16) * _1215) + (_53.SampleBias(_26, _1189.xy, _19_m16) * _1217)) + (_53.SampleBias(_26, _1189.zy, _19_m16) * _1220);
        float _1230 = clamp(_529 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1186.y) * clamp(_529 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1243 = smoothstep(2.0f - _1230, 2.349999904632568359375f - _1230, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1191.y) + _1222.z) * 0.60000002384185791015625f, _451 * _1066)) * ((_1176 * _1176) * float(gl_FrontFacing));
        float3 _1245 = _1243.xxx;
        float2 _1251 = (_1222.xy * 2.0f) - 1.0f.xx;
        float3 _1252 = float3(_1251.x, _1251.y, _352.z);
        float2 _1253 = _1251.xy;
        _1252.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1253, _1253), 0.0f, 1.0f)));
        float2 _1261 = _1252.xy * 2.0f;
        float3 _1263 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1261.x, _1261.y, _1252.z), _1245);
        float3 _1267 = _1263 * rsqrt(max(6.103515625e-05f, dot(_1263, _1263)));
        float _1268 = _479.y;
        float _1271 = step(0.00999999977648258209228515625f, 1.0f - (_1268 * _1268));
        float _1274 = lerp(_550, _1268, _1271);
        float3 _1281 = (float3(0.0f, _1271, 1.0f - _1271) - (_479 * _1274)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1274 * _1274)));
        float3 _1295 = _1189 * 4.0f;
        float4 _1315 = ((_54.SampleLevel(_24, _1295.xz, 0.0f) * _1215) + (_54.SampleLevel(_24, _1295.xy, 0.0f) * _1217)) + (_54.SampleLevel(_24, _1295.zy, 0.0f) * _1220);
        float2 _1318 = (_1315.xz * 2.0f) - 1.0f.xx;
        float _1329 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1318.x, _1315.y, _1318.y), (floor(_389 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1330 = _1329 * _1329;
        float _1333 = _1330 * ((_1330 * 2.0f) * _1243);
        float3 _1334 = 1.0f.xxx * _1333;
        _1339 = ((cross(_1281, _479) * _1267.x) + (_1281 * _1267.y)) + (_479 * _1267.z);
        _1340 = lerp(lerp(_1178, 0.89999997615814208984375f, clamp(_1243 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1333);
        _1341 = lerp(_445 * 1.0f, 0.3079999983310699462890625f.xxx, _1245) + (_1334 * 0.5f);
        _1342 = lerp(_1088 * 1.0f, 0.87999999523162841796875f.xxx, _1245) + _1334;
        _1343 = lerp(_49_m2, 0.0f, _1243);
    }
    else
    {
        _1339 = _479;
        _1340 = _1178;
        _1341 = _445;
        _1342 = _1088;
        _1343 = _49_m2;
    }
    float _1345 = 0.959999978542327880859375f - (_1343 * 0.959999978542327880859375f);
    float3 _1346 = _1342 * _1345;
    float3 _1349 = lerp(0.039999999105930328369140625f.xxx * _1175, _1342, _1343.xxx);
    float3 _1350 = _1341 * _1345;
    float _1352 = max(_1340 * _1340, 0.0078125f);
    bool _1359 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _1372 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _1372.y = -_1372.y;
    float2 _1388 = lerp(((sqrt(sqrt(abs(_1372 * 0.5f))) * float2(int2(sign(_1372)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1359).xx);
    float4 _1390 = float4(_1388.x, _1388.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1390.z = 1.0f;
    _1390.w = _1359 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1403 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1417 = lerp(_36_m3.xyz, _19_m83.xyz, _19_m91.y.xxx);
    float3 _1421 = _1417 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _1425 = int(_481.x);
    int _1426 = int(_481.y);
    float4 _1430 = _40.Load(int3(int3(_1425, _1426, 0).xy, 0));
    float _1435 = _1430.y;
    float _1438 = lerp(lerp(1.0f, _1430.x, _38_m6.x), 1.0f, _19_m80.z);
    float3 _1446 = _1350 * _19_m79.z;
    float3 _1447 = _1446 * 0.64999997615814208984375f;
    float3 _1461 = mul(_1403, _495);
    float3 _1462 = float3(_1461.x, _1461.y, _1461.z);
    _1462.y = 6.103515625e-05f;
    float3 _1464 = normalize(_1462);
    float _1467 = float(_1464.x > 0.0f);
    float2 _1471 = _360;
    _1471.x = lerp(1.0f - _360.x, _360.x, _1467);
    float4 _1475 = _56.SampleLevel(_25, _1471, 0.0f);
    float _1477 = _1475.z * 2.0f;
    float _1480 = lerp(1.0f - _1477, _1477 - 1.0f, _1467);
    float3 _1485 = mul(_495, normalize(float3(_1480, 6.103515625e-05f, 1.0f - abs(_1480))));
    float3 _1492 = normalize(lerp((_1485 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1485, _1485)))).xyz, _1339, _553));
    float _1493 = _1475.w;
    float _1494 = _1464.z;
    float _1495 = -_1494;
    float _1510 = lerp(_1494, (_1495 * ((_1494 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1403.x, 6.103515625e-05f, _1403.z)).xz, normalize(_491.xz)), 0.0f, 1.0f) * clamp(_1495, 0.0f, 1.0f)) * (1.0f - _19_m91.x)) * 0.5f;
    float _1512 = clamp(0.5f - _1510, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float _1518 = (_1475.x + _1475.y) * 0.5f;
    float _1529 = _19_m94.z * 0.5f;
    float _1531 = clamp(0.5f - _1529, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float4 _1552 = _50.SampleLevel(_25, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1512 - (1.0f - _1512), 0.0f), min(_1512 + _1512, 1.0f), _1518)) - (_1510 * ceil(_1510)))), clamp(dot(_1339, _1403) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f), _451) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _1553 = _1552.w;
    float _1555 = _1552.x;
    float _1556 = _1552.y;
    float _1557 = _1552.z;
    float _1562 = max(max(_1555, _1556), _1557) - min(min(_1555, _1556), _1557);
    float _1565 = max(_451, _452 * smoothstep(0.75f, 0.25f, _503));
    float _1568 = (1.0f - _1565) + (_1435 * _1565);
    float _1569 = 1.0f - _451;
    float _1578 = min(min(_1568, _1176), _1553);
    float _1579 = _1176 * _1568;
    float3 _1583 = ((clamp(dot(_555, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1046, 1.0f.xxx, (_19_m80.y * _1578).xxx);
    float3 _1585 = _1578.xxx;
    float3 _1608 = _1438.xxx;
    float3 _1609 = lerp((_1583 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1047), 1.5f), clamp(_1047, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1421, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1421, _1585) + ((_1583 * clamp(_1047, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1417 * _19_m91.y)))) * _19_m79.y, _1608);
    float3 _1610 = lerp(lerp(lerp(dot(_1447, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1447, 1.2000000476837158203125f.xxx), _1446, clamp((_1176 * (_1569 + (_1568 * _451))) + _1553, 0.0f, 1.0f).xxx), _1346, _1585);
    float3 _1616 = _1610 * ((1.0f - _1562).xxx + (_1552.xyz * _1562));
    float3 _1625 = lerp(lerp(_1446, lerp(dot(_1346, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1346, 1.2000000476837158203125f.xxx), _1579.xxx), _1616 * clamp(dot(_1610, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1616, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1608);
    float4 _1629 = float4(_1625, _1438);
    float _1631 = lerp(_1579, _1578, _1438);
    float3 _1642 = float3(_491.x, lerp(0.5f, _1403.y, _1438), _491.z);
    float _1655 = clamp(dot(_1177, _389), 0.0f, 1.0f);
    float _1656 = dot(_1177, normalize(((_1403 * _1438) + ((_1642 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1642, _1642)))) * 2.0f)) + (_389 * (2.0f + _1438))));
    float _1657 = _1352 * _1352;
    float _1661 = (((_1656 * _1657) - _1656) * _1656) + 1.0f;
    float _1662 = _1661 * _1661;
    float _1666 = 2.0f * _1655;
    float _1668 = (1.0f + _1655) - _1655;
    float3 _1709;
    if (_1179 > 0.001000000047497451305389404296875f)
    {
        _1709 = ((_52.SampleBias(_25, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1177)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1568) * (clamp(_1047, 0.5f, 1.5f) * _19_m79.w)) * (_1179 * _1179);
    }
    else
    {
        _1709 = 0.0f.xxx;
    }
    float3 _1712 = ((_1609 * _1625) * 1.0f) + ((((_1349 * clamp((((_1657 != _1662) ? (_1657 / _1662) : 1.0f) * (0.5f / ((_1666 + (_1352 * _1668)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1609 * (((_1631 * 0.5f) + 0.5f) * lerp(_19_m79.z, 1.0f, _1631))) * 1.0f)) * _19_m92.w) + _1709);
    float _1713 = dot(_1712, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1716 = clamp(_1713 - 0.5f, 0.0f, 0.5f);
    float3 _1752 = normalize(cross(_491, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1758 = dot(_389, _1492);
    float _1760 = 1.0f - abs(_1758);
    float _1765 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_503));
    float3 _1804 = lerp(_1713.xxx, _1712, ((_1716 * _1716) + 1.0f).xxx) + (((((_19_m87.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1760) * _1765, max(_1765, float(dot(_491, _1752) < (-0.00999999977648258209228515625f))) * _453, clamp((_19_m88.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m87.w) * min(min(clamp(dot(_464, _1752) + 1.0f, 0.0f, 1.0f), _1176), _1435)) * (lerp(0.25f.xxx, _1346, _19_m88.z.xxx) * clamp(dot(_1752, _1492), 0.0f, 1.0f))) + (((_19_m93.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1531 - (1.0f - _1531), 0.0f), min(_1531 + _1531, 1.0f), _1518)) - (_1529 * ceil(_1529))))) * _1569)) * _19_m93.w) * _1346));
    float2 _1805 = float2(_481);
    float2 _1807 = floor(_1805 * 0.03125f);
    int _1815 = int((_1807.x + (_1807.y * _34_m5)) * 8.0f);
    float _1822 = floor(_370 - (_19_m3.y * _34_m11));
    float _1826 = clamp(_1822, 0.0f, _34_m7 - 1.0f);
    int _1828 = int(_1826 * 8.0f);
    float3 _1830;
    _1830 = _1804;
    float3 _1831;
    [loop]
    for (int _1833 = 0; _1833 <= 7; _1830 = _1831, _1833++)
    {
        uint _1851 = (_1822 <= _1826) ? (_30.Load(uint(_1815 + _1833) * 4 + 0) & _30.Load(uint((_19_m21.y + _1828) + _1833) * 4 + 0)) : 0u;
        uint _1852 = uint(_1833);
        _1831 = _1830;
        uint _1857;
        float3 _1854;
        [loop]
        for (uint _1856 = _1851; _1856 != 0u; _1831 = _1854, _1856 = _1857)
        {
            uint _1861 = firstbitlow(_1856);
            _1857 = _1856 ^ (1u << (_1861 & 31u));
            int _1867 = int((32u * _1852) + _1861) * 8;
            int _1870 = _1867 + 1;
            int _1873 = _1867 + 2;
            int _1876 = _1867 + 3;
            int _1879 = _1867 + 4;
            int _1882 = _1867 + 5;
            int _1885 = _1867 + 6;
            int _1888 = _1867 + 7;
            uint _1892 = uint(_36_m6[_1882].w);
            float _1967;
            if ((_1892 & 1u) == 1u)
            {
                uint _1898 = asuint(_36_m6[_1882].x);
                uint _1905 = asuint(_36_m6[_1882].y);
                uint _1912 = asuint(_36_m6[_1882].z);
                uint _1919 = asuint(_36_m6[_1885].x);
                uint _1926 = asuint(_36_m6[_1885].y);
                uint _1933 = asuint(_36_m6[_1885].z);
                float3 _1952 = abs(mul(float4(_457 - _36_m6[_1870].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1898).x, spvUnpackHalf2x16(_1912).x, spvUnpackHalf2x16(_1926).x, 0.0f), float4(spvUnpackHalf2x16(_1898 >> 16u).x, spvUnpackHalf2x16(_1912 >> 16u).x, spvUnpackHalf2x16(_1926 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1905).x, spvUnpackHalf2x16(_1919).x, spvUnpackHalf2x16(_1933).x, 0.0f), float4(spvUnpackHalf2x16(_1905 >> 16u).x, spvUnpackHalf2x16(_1919 >> 16u).x, spvUnpackHalf2x16(_1933 >> 16u).x, 0.0f))).xyz);
                float _1959 = _36_m6[_1888].x * 0.5f;
                float _1965 = 1.0f - clamp((max(max(_1952.x, _1952.y), _1952.z) - (_1959 + 0.5f)) / (0.5f - _1959), 0.0f, 1.0f);
                _1967 = _1965 * _1965;
            }
            else
            {
                _1967 = 1.0f;
            }
            if (false || (_1967 < 0.001000000047497451305389404296875f))
            {
                _1854 = _1831;
                continue;
            }
            float3 _2684;
            if (_36_m6[_1867].w < 1.5f)
            {
                float3 _2683;
                do
                {
                    uint _1980 = asuint(_36_m6[_1876].w);
                    if ((_1980 == 16u) || ((_36_m6[_1876].z + _19_m91.z) < 0.5f))
                    {
                        _2683 = _1831;
                        break;
                    }
                    bool _1992 = (uint(_36_m6[_1867].w) & 1u) == 0u;
                    bool _1996 = (!_1992) && (_36_m6[_1873].z > 0.0f);
                    bool _1997 = _1980 == 4u;
                    float _1998 = float(_1992);
                    float _2006 = (0.5f + (0.5f * _36_m6[_1873].y)) - abs(_36_m6[_1873].x);
                    float _2007 = _36_m6[_1873].y - _2006;
                    float _2014 = abs(max((1.0f - abs(_2006)) - abs(_2007), 0.00048828125f));
                    float3 _2018 = normalize(float3(_2006, _2007, (_36_m6[_1873].x >= 0.0f) ? _2014 : (-_2014)));
                    float _2024 = lerp(_36_m6[_1885].w, max(2.0f * _36_m6[_1879].y, 0.100000001490116119384765625f), float(_1997));
                    float3 _2029 = _36_m6[_1870].xyz - _457;
                    float3 _2030 = -_2018;
                    float3 _2035 = lerp(_2029, _2030 * dot(_2029, _2030), (float(_1997 && (_36_m6[_1879].z > 0.5f)) * _1998).xxx);
                    float _2036 = dot(_2035, _2035);
                    float _2037 = rsqrt(_2036);
                    float3 _2038 = _2035 * _2037;
                    float3 _2071;
                    float _2072;
                    if (_1996)
                    {
                        float3 _2042 = (_2018 * _36_m6[_1873].z) * 0.5f;
                        float3 _2043 = _2035 - _2042;
                        float3 _2044 = _2035 + _2042;
                        float _2045 = length(_2043);
                        float _2046 = length(_2044);
                        float3 _2055 = normalize(cross(cross(_2018, _2038), _2018));
                        _2071 = _2055;
                        _2072 = ((1.0f / ((((_2045 * _2046) + dot(_2043, _2044)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2055, _2043) / _2045) + (dot(_2055, _2044) / _2046)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_1873].z * _2037, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2071 = _2038;
                        _2072 = 1.0f;
                    }
                    float _2094;
                    if (_2024 < 0.0f)
                    {
                        float _2088 = _2036 * (_36_m6[_1870].w * _36_m6[_1870].w);
                        float _2091 = clamp(1.0f - (_2088 * _2088), 0.0f, 1.0f);
                        _2094 = lerp(1.0f / (_2036 + 1.0f), _2072, float(_1996)) * (_2091 * _2091);
                    }
                    else
                    {
                        float3 _2077 = _2035 * _36_m6[_1870].w;
                        _2094 = _2072 * pow(1.0f - clamp(dot(_2077, _2077), 0.0f, 1.0f), _2024);
                    }
                    float _2099 = clamp((dot(_2071, _2030) - _36_m6[_1873].z) * _36_m6[_1873].w, 0.0f, 1.0f);
                    float _2102 = _2094 * lerp(1.0f, _2099 * _2099, _1998);
                    int _2104 = int(_36_m6[_1888].w);
                    float _2208;
                    if ((!_1996) && (_2104 >= 0))
                    {
                        uint _2110 = uint(_2104);
                        float2 _2201;
                        [branch]
                        if (_1998 != 0.0f)
                        {
                            float4 _2191 = mul(_60_m1[_2110], float4(_457.x, _535, _457.z, 1.0f));
                            _2201 = _60_m0[_2110].xy + (clamp(_2191.xy / _2191.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2110].zw);
                        }
                        else
                        {
                            float3 _2125 = mul(float4(-_2035, 0.0f), _60_m1[_2110]).xyz;
                            float3 _359 = _2125;
                            float3 _358 = _2125;
                            float3 _357 = abs(_2125);
                            uint _2134 = uint(int(_357.y > _357.x));
                            uint _2140 = (_357.z > _357[_2134]) ? 2u : _2134;
                            uint _2146 = (_2140 * 2u) + uint(_358[_2140] < 0.0f);
                            float _2150 = abs(_359[_2146 / 2u]);
                            float _2170 = 0.5f - (0.000244140625f / _60_m0[_2110].w);
                            _2201 = _60_m0[_2110].xy + (clamp(float2((float(_2146) + ((((_359[uint(_329[_2146].x)] * _330[_2146].x) / _2150) * _2170) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_359[uint(_329[_2146].y)] * _330[_2146].y) / _2150) * _2170)), 0.0f.xx, 1.0f.xx) * _60_m0[_2110].zw);
                        }
                        _2208 = _2102 * _58.SampleLevel(_25, _2201, 0.0f).x;
                    }
                    else
                    {
                        _2208 = _2102;
                    }
                    float _2209 = _2208 * _1967;
                    float3 _2682;
                    do
                    {
                        float3 _2681;
                        [branch]
                        if (_2209 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_1997)
                            {
                                _2682 = lerp(_1831, _36_m6[_1867].xyz, (_2209 * (_36_m6[_1879].x * ((1.0f - _36_m6[_1879].w) + (smoothstep(-0.5f, 0.5f, dot(_479, _2071)) * _36_m6[_1879].w)))).xxx);
                                break;
                            }
                            float _2229 = dot(_1492, _2071);
                            float _2230 = clamp(_2229, 0.0f, 1.0f);
                            float _2533;
                            if (_1980 != 0u)
                            {
                                bool _2236 = _1992 || ((_1892 & 2u) != 0u);
                                int _2285;
                                if (_2236)
                                {
                                    _2285 = int(_36_m6[_1876].x);
                                }
                                else
                                {
                                    uint _2240 = asuint(_36_m6[_1873].w);
                                    uint _2242 = asuint(_36_m6[_1876].x);
                                    float3 _2243 = _457 - _36_m6[_1870].xyz;
                                    float3 _2244 = abs(_2243);
                                    float _2245 = _2244.x;
                                    float _2246 = _2244.y;
                                    float _2248 = _2244.z;
                                    int _2280;
                                    if ((_2245 > _2246) && (_2245 > _2248))
                                    {
                                        _2280 = int((_2243.x > 0.0f) ? (_2240 >> 24u) : ((_2240 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2272;
                                        if (_2246 > _2248)
                                        {
                                            _2272 = int((_2243.y > 0.0f) ? ((_2240 >> 8u) & 255u) : (_2240 & 255u));
                                        }
                                        else
                                        {
                                            _2272 = int((_2243.z > 0.0f) ? ((_2242 >> 8u) & 255u) : (_2242 & 255u));
                                        }
                                        _2280 = _2272;
                                    }
                                    _2285 = (_2280 < 80) ? _2280 : (-1);
                                }
                                bool _2286 = _2285 >= 0;
                                float _2532;
                                if (_2286)
                                {
                                    float3 _2293 = _457 - _36_m6[_1870].xyz;
                                    float4 _2313 = mul(_38_m10[_2285], float4((_457 - ((_2293 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2293, _2293)))) * _38_m11[_2285].x)) + (_479 * (_38_m11[_2285].y * 5.0f)), 1.0f));
                                    float _2314 = _2313.w;
                                    float3 _2317 = _2313.xyz / _2314.xxx;
                                    float2 _2318 = _2317.xy;
                                    float3 _2326 = _2317.xyz;
                                    bool3 _2327 = bool3(_2326.x <= 0.0f.xxx.x, _2326.y <= 0.0f.xxx.y, _2326.z <= 0.0f.xxx.z);
                                    bool3 _2328 = bool3(_2326.x >= 1.0f.xxx.x, _2326.y >= 1.0f.xxx.y, _2326.z >= 1.0f.xxx.z);
                                    float _2331 = _2317.z;
                                    float2 _2342 = ((_2318 * (_38_m12[_2285].zw - _38_m12[_2285].xy)) + _38_m12[_2285].xy).xy * _38_m13.zw;
                                    float2 _2344 = floor(_2342 + 0.5f.xx);
                                    float2 _2345 = _2342 - _2344;
                                    float _2347 = _2345.x + 0.5f;
                                    float _2348 = _2347 * _2347;
                                    float _2351 = 1.0f - _2345.x;
                                    float _2352 = min(_2345.x, 0.0f);
                                    float _2355 = _2345.x + 1.0f;
                                    float _2356 = max(_2345.x, 0.0f);
                                    float _2368 = _2345.y + 0.5f;
                                    float _2369 = _2368 * _2368;
                                    float _2372 = 1.0f - _2345.y;
                                    float _2373 = min(_2345.y, 0.0f);
                                    float _2376 = _2345.y + 1.0f;
                                    float _2377 = max(_2345.y, 0.0f);
                                    float3 _2389 = float3(0.1599999964237213134765625f * _2351, 0.1599999964237213134765625f * ((_2355 - (_2356 * _2356)) + 1.0f), _2348 * 0.07999999821186065673828125f);
                                    float3 _2390 = float3(0.1599999964237213134765625f * ((_2348 * 0.5f) - _2345.x), 0.1599999964237213134765625f * ((_2351 - (_2352 * _2352)) + 1.0f), 0.1599999964237213134765625f * _2355) + _2389;
                                    float3 _2392 = float3(0.1599999964237213134765625f * _2372, 0.1599999964237213134765625f * ((_2376 - (_2377 * _2377)) + 1.0f), _2369 * 0.07999999821186065673828125f);
                                    float3 _2393 = float3(0.1599999964237213134765625f * ((_2369 * 0.5f) - _2345.y), 0.1599999964237213134765625f * ((_2372 - (_2373 * _2373)) + 1.0f), 0.1599999964237213134765625f * _2376) + _2392;
                                    float3 _2399 = ((_2389 / _2390) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _2401 = ((_2392 / _2393) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _2403 = _2344 * _38_m13.xy;
                                    float _2404 = _2399.x;
                                    float _2405 = _2401.x;
                                    float _2408 = _2399.y;
                                    float _2411 = _2399.z;
                                    float _2414 = _2401.y;
                                    float _2421 = _2401.z;
                                    float _2428 = _2390.x;
                                    float _2429 = _2393.x;
                                    float _2431 = _2390.y;
                                    float _2433 = _2390.z;
                                    float _2435 = _2393.y;
                                    float _2439 = _2393.z;
                                    float _2497 = (((((((_2428 * _2429) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2404, _2405), _351).xy, _2331)) + ((_2431 * _2429) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2408, _2405), _351).xy, _2331))) + ((_2433 * _2429) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2411, _2405), _351).xy, _2331))) + ((_2428 * _2435) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2404, _2414), _351).xy, _2331))) + ((_2431 * _2435) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2408, _2414), _351).xy, _2331))) + ((_2433 * _2435) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2411, _2414), _351).xy, _2331))) + ((_2428 * _2439) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2404, _2421), _351).xy, _2331));
                                    float2 _2518 = min(_2318, 1.0f.xx - _2318);
                                    _2532 = _2286 ? lerp(1.0f, (any(bool3(_2327.x || _2328.x, _2327.y || _2328.y, _2327.z || _2328.z)) || ((asuint(_2331) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2497 + ((_2431 * _2439) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2408, _2421), _351).xy, _2331))) + ((_2433 * _2439) * _39.SampleCmpLevelZero(_27, float3(_2403 + float2(_2411, _2421), _351).xy, _2331))), _2236 ? min(_38_m11[_2285].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2285].z - _2314) * 0.25f, min(_2518.x, _2518.y)))) : _38_m11[_2285].w) : 1.0f;
                                }
                                else
                                {
                                    _2532 = clamp(dot(_464, _2071) + 1.0f, 0.0f, 1.0f);
                                }
                                _2533 = _2532;
                            }
                            else
                            {
                                _2533 = 1.0f;
                            }
                            float _2637;
                            float3 _2638;
                            float _2639;
                            float3 _2640;
                            float3 _2641;
                            float _2642;
                            float _2643;
                            [branch]
                            if (_1980 == 0u)
                            {
                                float3 _2611 = _36_m6[_1867].xyz * _2209;
                                float3 _2624 = _1629.xyz;
                                _2637 = _2209;
                                _2638 = (_36_m6[_1867].xyz * ((1.0f - _36_m6[_1879].y) + ((1.0f / max(1.0f, max(max(_2611.x, _2611.y), _2611.z) * lerp(0.75f, 0.5f, 1.0f - _1438))) * _36_m6[_1879].y))) * lerp(0.5f * _36_m6[_1879].x, 1.0f, clamp(dot(normalize(lerp(float3(_464.x, 6.103515625e-05f, _464.z), _1492, _553)), _2071) + 0.5f, 0.0f, 1.0f));
                                _2639 = _2230;
                                _2640 = _2624;
                                _2641 = _2624;
                                _2642 = 1.0f;
                                _2643 = 0.0f;
                            }
                            else
                            {
                                float _2603;
                                float _2604;
                                float3 _2605;
                                float3 _2606;
                                float _2607;
                                float _2608;
                                if (_1980 == 3u)
                                {
                                    float3 _2583 = -normalize(cross(_491, cross(_491, _2071)));
                                    _2603 = _2209 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_1879].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_1879].x), _1760) * _1765, max(_1765, float(dot(_491, _2583) < (-0.00999999977648258209228515625f))) * _453, clamp((_36_m6[_1879].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2533);
                                    _2604 = clamp(dot(_1492, _2583), 0.0f, 1.0f);
                                    _2605 = lerp(0.5f.xxx, _1346, _36_m6[_1879].y.xxx);
                                    _2606 = 0.0f.xxx;
                                    _2607 = 1.0f;
                                    _2608 = 0.0f;
                                }
                                else
                                {
                                    bool _2542 = _1980 == 1u;
                                    float _2573;
                                    float3 _2574;
                                    float _2575;
                                    float _2576;
                                    if (_2542)
                                    {
                                        _2573 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1493 - _36_m6[_1879].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _451), clamp(_2229 + _36_m6[_1879].x, -1.0f, 1.0f) + (_36_m6[_1879].z * _1569)) * _2533);
                                        _2574 = _1350 * _36_m6[_1879].y;
                                        _2575 = 1.0f;
                                        _2576 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2546 = _1980 == 2u;
                                        float _2558;
                                        if (_2546)
                                        {
                                            _2558 = smoothstep(_36_m6[_1879].x + 0.0500000007450580596923828125f, _36_m6[_1879].x - 0.0500000007450580596923828125f, _1340) * ((1.0f - _36_m6[_1879].z) + (step(0.5f, _1343) * _36_m6[_1879].z));
                                        }
                                        else
                                        {
                                            _2558 = 1.0f;
                                        }
                                        _2573 = _2230;
                                        _2574 = 0.0f.xxx;
                                        _2575 = _2558;
                                        _2576 = _2546 ? _36_m6[_1879].y : 0.0f;
                                    }
                                    bool3 _2577 = _2542.xxx;
                                    _2603 = _2209;
                                    _2604 = _2573;
                                    _2605 = float3(_2577.x ? _1346.x : 0.0f.xxx.x, _2577.y ? _1346.y : 0.0f.xxx.y, _2577.z ? _1346.z : 0.0f.xxx.z);
                                    _2606 = _2574;
                                    _2607 = _2575;
                                    _2608 = _2576;
                                }
                                _2637 = _2603;
                                _2638 = _36_m6[_1867].xyz;
                                _2639 = _2604;
                                _2640 = _2605;
                                _2641 = _2606;
                                _2642 = _2607;
                                _2643 = _2608;
                            }
                            float3 _2671;
                            [branch]
                            if (_1980 != 3u)
                            {
                                float _2648 = lerp(_1352, 0.00999999977648258209228515625f, _2643);
                                float _2651 = dot(_1177, normalize(_2071 + _389));
                                float _2652 = _2648 * _2648;
                                float _2656 = (((_2651 * _2652) - _2651) * _2651) + 1.0f;
                                float _2657 = _2656 * _2656;
                                _2671 = ((_1349 * clamp((((_2652 != _2657) ? (_2652 / _2657) : 1.0f) * (0.5f / ((_1666 + (_2648 * _1668)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2642) * _36_m6[_1888].z;
                            }
                            else
                            {
                                _2671 = 0.0f.xxx;
                            }
                            float3 _2674 = _2638 * _2637;
                            _2681 = _1831 + (((_2674 * lerp(_2641, _2640, _2639.xxx)) * 1.0f) + ((_2674 * _2671) * _2639));
                        }
                        else
                        {
                            _2681 = _1831;
                        }
                        _2682 = _2681;
                        break;
                    } while(false);
                    _2683 = _2682;
                    break;
                } while(false);
                _2684 = _2683;
            }
            else
            {
                _2684 = _1831;
            }
            _1854 = _2684;
        }
    }
    float3 _2725;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _2725 = lerp(lerp(0.5f.xxx, lerp(dot(_1830, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1830, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * (smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_1758, 0.0f, 1.0f)) * _1066)) * _49_m17);
    }
    else
    {
        _2725 = _1830;
    }
    float4 _2732 = float4(_2725 * _19_m20.y, 1.0f);
    _2732.w = 1.0f;
    float4 _3116;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float3 _2737 = -_389;
        float _2753 = _535 * _19_m46.w;
        float _2758 = max(0.00999999977648258209228515625f, _2753 + _19_m47.w);
        float3 _2772 = exp(_19_m45.xyz * ((-max(0.0f, (_390 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2758)) / _2758) * exp(_2753 + _19_m48.w))));
        float _2775 = dot(_2737, _19_m44.xyz);
        float _2781 = _19_m45.w * _19_m45.w;
        float _2785 = (1.0f + _2781) - ((2.0f * _19_m45.w) * _2775);
        float3 _3108;
        float _3109;
        if (_19_m55.z > 0.0f)
        {
            uint3 _2936 = (uint3(int3(_1425, _1426, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _2937 = _2936.y;
            uint _2938 = _2936.z;
            uint _2941 = _2936.x + (_2937 * _2938);
            uint _2943 = _2937 + (_2938 * _2941);
            uint _2945 = _2938 + (_2941 * _2943);
            uint _2947 = _2941 + (_2943 * _2945);
            float _2972 = dot(_2737, -_17_m0[2].xyz);
            float3 _2979 = _457 - _17_m11.xyz;
            float _2981 = (_19_m55.w * ((_2972 > 5.9604644775390625e-08f) ? (1.0f / _2972) : 0.0f)) * (1.0f / _390);
            float _2982 = _2979.y;
            float _2983 = _2981 * _2982;
            float _2985 = _17_m11.y + _2983;
            float _2986 = _2982 - _2983;
            float _2988 = (1.0f - _2981) * _390;
            float _3002 = max(-127.0f, _19_m49.z * _2986);
            float _3026 = max(-127.0f, _19_m52.x * _2986);
            float _3037 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_2985 - _19_m49.x)))) * ((abs(_3002) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3002)) / _3002) : (0.693147182464599609375f - (0.2402265071868896484375f * _3002)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_2985 - _19_m52.z)))) * ((abs(_3026) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3026)) / _3026) : (0.693147182464599609375f - (0.2402265071868896484375f * _3026))));
            float _3059 = clamp((_390 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3062 = clamp((max(clamp(exp2(-(_3037 * _2988)), 0.0f, 1.0f), _19_m51.w) + clamp((_390 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3059, 0.0f, 1.0f);
            float4 _3102 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_25, float3((_1805 + ((((float3(uint3(_2947, _2943 + (_2945 * _2947), _355) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_370 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_370 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3108 = _3102.xyz + (((_19_m51.xyz * (1.0f - _3062)) + (((_19_m54.xyz * pow(clamp(dot(_389, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3037 * max(_2988 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3059))) * _3102.w);
            _3109 = _3102.w * _3062;
        }
        else
        {
            float3 _2812 = _457 - _17_m11.xyz;
            float _2814 = _2812.y;
            float _2828 = max(-127.0f, _19_m49.z * _2814);
            float _2852 = max(-127.0f, _19_m52.x * _2814);
            float _2863 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2828) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2828)) / _2828) : (0.693147182464599609375f - (0.2402265071868896484375f * _2828)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2852) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2852)) / _2852) : (0.693147182464599609375f - (0.2402265071868896484375f * _2852))));
            float _2885 = clamp((_390 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2888 = clamp((max(clamp(exp2(-(_2863 * _390)), 0.0f, 1.0f), _19_m51.w) + clamp((_390 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2885, 0.0f, 1.0f);
            _3108 = (_19_m51.xyz * (1.0f - _2888)) + (((_19_m54.xyz * pow(clamp(dot(_389, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2863 * max(_390 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2885));
            _3109 = _2888;
        }
        float3 _3114 = (_2732.xyz * (_2772 * _3109)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2775 * _2775)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2781) / max((12.56637096405029296875f * _2785) * sqrt(_2785), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2772)) * _3109) + _3108);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3114 = (_3114 * 0.65f) + (_2732.xyz * 0.35f);

        }
        _3116 = float4(_3114.x, _3114.y, _3114.z, _2732.w);
    }
    else
    {
        _3116 = _2732;
    }
    _14 = _3116;
    _15 = _1390;
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
