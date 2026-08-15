// DX11 0x1F7F3376 -> Vulkan 0xB7CCDFC4
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

static float3 _380;
static float _381 = 0.0f;
static float3 _382 = 0.0f;
static float _386 = 0.0f;
static uint _387 = 0u;

static const int2 _358[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _359[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(51, 0)]] ByteAddressBuffer _32 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _34 : register(t18);

uint4 _34_Load4(uint byte_offset)
{
    return asuint(_34[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _35_36 : register(b48)
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
cbuffer _50_51 : register(b0)
{
    float _51_m0 : packoffset(c0);
    float _51_m1 : packoffset(c0.y);
    float _51_m2 : packoffset(c0.z);
    float _51_m3 : packoffset(c0.w);
    float _51_m4 : packoffset(c1);
    float _51_m5 : packoffset(c1.y);
    float _51_m6 : packoffset(c1.z);
    float _51_m7 : packoffset(c1.w);
    float _51_m8 : packoffset(c2);
    float _51_m9 : packoffset(c2.y);
    float _51_m10 : packoffset(c2.z);
    float _51_m11 : packoffset(c2.w);
    float _51_m12 : packoffset(c3);
    float _51_m13 : packoffset(c3.y);
    float _51_m14 : packoffset(c3.z);
    float _51_m15 : packoffset(c3.w);
    float _51_m16 : packoffset(c4);
    float _51_m17 : packoffset(c4.y);
    float _51_m18 : packoffset(c4.z);
    float _51_m19 : packoffset(c4.w);
    float _51_m20 : packoffset(c5);
    float _51_m21 : packoffset(c5.y);
    float _51_m22 : packoffset(c5.z);
    float _51_m23 : packoffset(c5.w);
    float4 _51_m24 : packoffset(c6);
    float4 _51_m25 : packoffset(c7);
    float4 _51_m26 : packoffset(c8);
    float4 _51_m27 : packoffset(c9);
    float4 _51_m28 : packoffset(c10);
    float4 _51_m29 : packoffset(c11);
    float _51_m30 : packoffset(c12);
    float _51_m31 : packoffset(c12.y);
    float _51_m32 : packoffset(c12.z);
    float _51_m33 : packoffset(c12.w);
    float _51_m34 : packoffset(c13);
    float _51_m35 : packoffset(c13.y);
    float _51_m36 : packoffset(c13.z);
    float _51_m37 : packoffset(c13.w);
    float _51_m38 : packoffset(c14);
    float _51_m39 : packoffset(c14.y);
    float _51_m40 : packoffset(c14.z);
    float _51_m41 : packoffset(c14.w);
    float4 _51_m42 : packoffset(c15);
    float _51_m43 : packoffset(c16);
    float _51_m44 : packoffset(c16.y);
    float _51_m45 : packoffset(c16.z);
    float _51_m46 : packoffset(c16.w);
    float4 _51_m47 : packoffset(c17);
    float4 _51_m48 : packoffset(c18);
    float4 _51_m49 : packoffset(c19);
    float4 _51_m50 : packoffset(c20);
    float4 _51_m51 : packoffset(c21);
    float4 _51_m52 : packoffset(c22);
    float _51_m53 : packoffset(c23);
    float _51_m54 : packoffset(c23.y);
    float _51_m55 : packoffset(c23.z);
    float _51_m56 : packoffset(c23.w);
    float _51_m57 : packoffset(c24);
    float _51_m58 : packoffset(c24.y);
    float _51_m59 : packoffset(c24.z);
    float _51_m60 : packoffset(c24.w);
};

[[vk::binding(50, 0)]]
cbuffer _59_60 : register(b50)
{
    float4 _60_m0[32] : packoffset(c0);
    column_major float4x4 _60_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _25 : register(s3);
[[vk::binding(6, 0)]] SamplerState _26 : register(s6);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _28 : register(s7);
[[vk::binding(46, 0)]] Texture2D<float4> _30 : register(t46);
[[vk::binding(27, 0)]] Texture2D<float4> _41 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _42 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _44 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _45 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _46 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _47 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _48 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _49 : register(t30);
[[vk::binding(4, 1)]] Texture2D<float4> _52 : register(t4);
[[vk::binding(2, 1)]] Texture2D<float4> _53 : register(t2);
[[vk::binding(39, 0)]] Texture2D<float4> _54 : register(t39);
[[vk::binding(5, 1)]] Texture2D<float4> _55 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _56 : register(t3);
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
static float4 _10;
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
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float4 _10 : TEXCOORD7;
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
    float _403 = 1.0f / gl_FragCoord.w;
    float3 _418 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _419 = dot(_418, _418);
    float _421 = rsqrt(max(_419, 9.9999999392252902907785028219223e-09f));
    float3 _422 = _418 * _421;
    float _423 = _419 * _421;
    uint _426 = asuint(_23_m0[_13]._m2.x);
    bool _431 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _448;
    float4 _449;
    float4 _450;
    if (_431)
    {
        _448 = asfloat(_34_Load4((_426 + 2u) * 16 + 0));
        _449 = asfloat(_34_Load4((_426 + 1u) * 16 + 0));
        _450 = asfloat(_34_Load4(_426 * 16 + 0));
    }
    else
    {
        _448 = _23_m0[_13]._m0[2];
        _449 = _23_m0[_13]._m0[1];
        _450 = _23_m0[_13]._m0[0];
    }
    float4 _456 = _55.SampleBias(_27, _3, _20_m16);
    float3 _461 = _456.xyz * _51_m24.xyz;
    float4 _465 = _56.SampleBias(_27, _3, _20_m16);
    float _466 = _465.x;
    float _467 = _465.y;
    float _468 = _465.z;
    float _472 = _456.w * _51_m24.w;
    float3 _490 = _461 * _51_m18;
    float3 _494 = lerp(dot(_490, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _490, _51_m19.xxx);
    float4 _498 = _57.SampleBias(_27, _3, _20_m16);
    float2 _503 = (_498.xy * 2.0f) - 1.0f.xx;
    float3 _504 = float3(_503.x, _503.y, _382.z);
    float2 _505 = _503.xy;
    _504.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_505, _505), 0.0f, 1.0f)));
    float2 _513 = _504.xy * _51_m3;
    float3 _518 = _4 + _18_m11.xyz;
    float3 _522 = _518 - float3(_450.w, _386, _448.w);
    _522.y = 6.103515625e-05f;
    float3 _525 = normalize(_522);
    float3 _531 = _6.xyz * 1.0f;
    float3 _532 = (cross(_5, _6.xyz) * _6.w) * 1.0f;
    float3 _533 = _5 * 1.0f;
    float3x3 _534 = float3x3(_531, _532, _533);
    float3 _535 = mul(float3(_513.x, _513.y, _504.z), _534);
    float _544 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _51_m5));
    float3 _545 = (_535 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_535, _535)))) * _544;
    float3 _546 = normalize(_5) * _544;
    float2 _551 = (_498.zw * 2.0f) - 1.0f.xx;
    float3 _552 = float3(_551.x, _551.y, _382.z);
    float2 _553 = _551.xy;
    _552.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_553, _553), 0.0f, 1.0f)));
    float2 _561 = _552.xy * _51_m31;
    float3 _564 = normalize(mul(float3(_561.x, _561.y, _552.z), _534));
    float3x3 _571 = float3x3(_450.xyz, _449.xyz, _448.xyz);
    float3 _572 = mul(_571, float3(_51_m39, 1.0f, 0.0f));
    float3 _584 = cross(_564, lerp(cross(_564, (_572 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_572, _572)))).xyz), _6.xyz, _466.xxx).xyz) * lerp(1.0f, _6.w, _466);
    float3 _586 = mul(_422, _571);
    float _595 = pow(clamp(dot(normalize(mul(_564, _571).xz), normalize(_586.xz)), 0.0f, 1.0f), _51_m37);
    float2 _600 = gl_FragCoord.xy * _20_m0.zw;
    uint2 _601 = uint2(gl_FragCoord.xy);
    float3 _611 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _620 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _633 = float4(float(_620 & 255u), float((_620 >> 8u) & 255u), float((_620 >> 16u) & 255u), float((_620 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _634 = _633.x;
    float _637 = _633.w;
    float _643 = _518.y;
    float _647 = max(_633.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _643) * _633.y);
    float _648 = max(_634, _647);
    float _656 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1150;
    float3 _1151;
    float3 _1152;
    float _1153;
    if (_20_m80.y < 0.5f)
    {
        float3 _674 = _518 - (_20_m105.xyz + (_611 * (-_20_m107.w)));
        float _688 = max(clamp((max(abs(_674.x), abs(_674.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_674.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _990;
        float4 _991;
        float4 _992;
        float _993;
        float _994;
        if ((_20_m105.w != 0.0f) && (_688 < 1.0f))
        {
            float3 _701 = _518 - (_20_m105.xyz + (_611 * (-_20_m107.y)));
            float _715 = max(clamp((max(abs(_701.x), abs(_701.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_701.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _791;
            float4 _792;
            float4 _793;
            float4 _794;
            if (_715 < 1.0f)
            {
                float3 _724 = ((_518 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _726 = _724 - floor(_724);
                float4 _730 = _44.SampleLevel(_27, _726, 0.0f);
                float _731 = 1.0f - _715;
                float _735 = _20_m106.y * 0.5f;
                float _740 = _726.x;
                float _741 = clamp(_726.y, _735, 1.0f - _735) * 0.3333333432674407958984375f;
                float _742 = _726.z;
                float4 _745 = _45.SampleLevel(_26, float3(_740, _741, _742), 0.0f);
                float _761 = _730.x;
                float _771 = _730.y;
                float _781 = _730.z;
                _791 = _688 + (_745.w * _731);
                _792 = float4(((_45.SampleLevel(_26, float3(_740, _741 + 0.666666686534881591796875f, _742), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _781, _781) * _731;
                _793 = float4(((_45.SampleLevel(_26, float3(_740, _741 + 0.3333333432674407958984375f, _742), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _771, _771) * _731;
                _794 = float4(((_745.xyz * 4.0f) - 2.0f.xxx) * _761, _761) * _731;
            }
            else
            {
                _791 = _688;
                _792 = 0.0f.xxxx;
                _793 = 0.0f.xxxx;
                _794 = 0.0f.xxxx;
            }
            float3 _800 = _518 - (_20_m105.xyz + (_611 * (-_20_m107.z)));
            float _814 = max(clamp((max(abs(_800.x), abs(_800.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_800.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _894;
            float4 _895;
            float4 _896;
            float4 _897;
            if (_814 < 1.0f)
            {
                float3 _823 = ((_518 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _825 = _823 - floor(_823);
                float4 _829 = _46.SampleLevel(_27, _825, 0.0f);
                float _831 = _715 * (1.0f - _814);
                float _835 = _20_m106.y * 0.5f;
                float _840 = _825.x;
                float _841 = clamp(_825.y, _835, 1.0f - _835) * 0.3333333432674407958984375f;
                float _842 = _825.z;
                float4 _845 = _47.SampleLevel(_26, float3(_840, _841, _842), 0.0f);
                float _861 = _829.x;
                float _872 = _829.y;
                float _883 = _829.z;
                _894 = _791 + (_845.w * _831);
                _895 = _792 + (float4(((_47.SampleLevel(_26, float3(_840, _841 + 0.666666686534881591796875f, _842), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _883, _883) * _831);
                _896 = _793 + (float4(((_47.SampleLevel(_26, float3(_840, _841 + 0.3333333432674407958984375f, _842), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _872, _872) * _831);
                _897 = _794 + (float4(((_845.xyz * 4.0f) - 2.0f.xxx) * _861, _861) * _831);
            }
            else
            {
                _894 = _791;
                _895 = _792;
                _896 = _793;
                _897 = _794;
            }
            float4 _980;
            float4 _981;
            float4 _982;
            float _983;
            if (_814 > 0.0f)
            {
                float3 _906 = ((_518 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _909 = _20_m106.xyz * 0.5f;
                float3 _911 = clamp(_906 - floor(_906), _909, 1.0f.xxx - _909);
                float4 _915 = _48.SampleLevel(_27, _911, 0.0f);
                float _917 = _814 * (1.0f - _688);
                float _921 = _20_m106.y * 0.5f;
                float _926 = _911.x;
                float _927 = clamp(_911.y, _921, 1.0f - _921) * 0.3333333432674407958984375f;
                float _928 = _911.z;
                float4 _931 = _49.SampleLevel(_26, float3(_926, _927, _928), 0.0f);
                float _947 = _915.x;
                float _958 = _915.y;
                float _969 = _915.z;
                _980 = _895 + (float4(((_49.SampleLevel(_26, float3(_926, _927 + 0.666666686534881591796875f, _928), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _969, _969) * _917);
                _981 = _896 + (float4(((_49.SampleLevel(_26, float3(_926, _927 + 0.3333333432674407958984375f, _928), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _958, _958) * _917);
                _982 = _897 + (float4(((_931.xyz * 4.0f) - 2.0f.xxx) * _947, _947) * _917);
                _983 = _894 + (_931.w * _917);
            }
            else
            {
                _980 = _895;
                _981 = _896;
                _982 = _897;
                _983 = _894;
            }
            float _986 = clamp((_983 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _990 = _980;
            _991 = _981;
            _992 = _982;
            _993 = _986 - _688;
            _994 = (_986 + _688) * 0.5f;
        }
        else
        {
            _990 = 0.0f.xxxx;
            _991 = 0.0f.xxxx;
            _992 = 0.0f.xxxx;
            _993 = 0.0f;
            _994 = 1.0f;
        }
        float4 _1014 = _992 + float4(_20_m108.x * _994, (_20_m108.y * _994) + ((_20_m108.w * _993) * 0.5f), _20_m108.z * _994, (_20_m108.w * _994) + ((_20_m108.y * _993) * 0.375f));
        float4 _1034 = _991 + float4(_20_m109.x * _994, (_20_m109.y * _994) + ((_20_m109.w * _993) * 0.5f), _20_m109.z * _994, (_20_m109.w * _994) + ((_20_m109.y * _993) * 0.375f));
        float4 _1054 = _990 + float4(_20_m110.x * _994, (_20_m110.y * _994) + ((_20_m110.w * _993) * 0.5f), _20_m110.z * _994, (_20_m110.w * _994) + ((_20_m110.y * _993) * 0.375f));
        float4 _1058 = float4(_545, 1.0f);
        float3 _1064 = max(float3(dot(_1014, _1058), dot(_1034, _1058), dot(_1054, _1058)), 0.0f.xxx) * _656;
        float3 _1072 = ((_1014.xyz * 0.2125999927520751953125f) + (_1034.xyz * 0.715200006961822509765625f)) + (_1054.xyz * 0.072200000286102294921875f);
        float3 _1076 = _1072 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1072, _1072)));
        float _1078 = abs(_1076.y);
        float3 _1079 = _1076;
        _1079.y = _1078;
        float4 _1080 = float4(_1079.x, _1079.y, _1079.z, 0.0f.xxxx.w);
        _1080.w = 1.0f;
        float4 _1084 = float4(_1076.x, _1078, _1076.z, 1.0f);
        float3 _1089 = max(float3(dot(_1014, _1084), dot(_1034, _1084), dot(_1054, _1084)), 0.0f.xxx);
        float _1097 = _1064.z;
        float _1098 = _1064.y;
        float4 _1103 = lerp(float4(_1097, _1098, -1.0f, 0.666666686534881591796875f), float4(_1098, _1097, 0.0f, -0.3333333432674407958984375f), step(_1097, _1098).xxxx);
        float _1104 = _1064.x;
        float _1105 = _1103.x;
        float4 _1113 = lerp(float4(_1105, _1103.yw, _1104), float4(_1104, _1103.yz, _1105), step(_1105, _1104).xxxx);
        float _1114 = _1113.x;
        float _1115 = _1113.w;
        float _1116 = _1113.y;
        float _1118 = _1114 - min(_1115, _1116);
        float _1128 = frac(abs(_1113.z + ((_1115 - _1116) / ((6.0f * _1118) + 9.9999997473787516355514526367188e-05f))));
        float _1135 = min(_1118 / (_1114 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1128 - 0.5f))) * clamp(_1114, 0.0f, 1.0f));
        float _1137 = 2.0f / (2.0f - _1135);
        _1150 = _1080;
        _1151 = _1064;
        _1152 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1128, _1135, _1137).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1135.xxx) * _1137;
        _1153 = max(max(max(_1089.x, _1089.y), _1089.z), 0.0f) * _656;
    }
    else
    {
        _1150 = 0.0f.xxxx;
        _1151 = 1.0f.xxx;
        _1152 = _20_m81.xyz;
        _1153 = _656;
    }
    float3 _1960;
    float _1961;
    float _1962;
    float _1963;
    float _1964;
    float3 _1965;
    float3 _1966;
    [branch]
    if ((clamp(_634 + _647, 0.0f, 1.0f) - _51_m20) > 0.00999999977648258209228515625f)
    {
        float _1310;
        bool _1311;
        bool _1180 = (step(_634, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _647)) != 0.0f;
        bool3 _1181 = _431.xxx;
        float3 _1183 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1187 = float3(_1181.x ? _1183.x : _11.x, _1181.y ? _1183.y : _11.y, _1181.z ? _1183.z : _11.z) * _20_m89.z;
        float3 _1197 = float3(0.0f, -1.0f, 0.0f) + (_533 * _533.y);
        float3 _1205 = ((_10.xyz * dot(_1197, _531)) + ((cross(_9, _10.xyz) * _10.w) * dot(_1197, _532))) + (_9 * dot(_1197, _533));
        float3 _1207 = _1205.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1208 = float3(_1181.x ? _1207.x : _1205.x, _1181.y ? _1207.y : _1205.y, _1181.z ? _1207.z : _1205.z);
        bool _1209 = !_1180;
        bool2 _1210 = _1209.xx;
        float2 _1212 = (1.0f - _647).xx;
        float2 _1213 = float2(_1210.x ? float2(3.0f, 4.340000152587890625f).x : _1212.x, _1210.y ? float2(3.0f, 4.340000152587890625f).y : _1212.y);
        float _1216 = 1.0f - ((_1180 ? _647 : _634) * 0.64999997615814208984375f);
        float3 _1224 = frac(floor(((_3.xx * _20_m89.z) * 32.0f) * 1.5f).xyx * 0.103100001811981201171875f);
        float3 _1229 = _1224 + dot(_1224, _1224.yzx + 33.3300018310546875f.xxx).xxx;
        float _1246 = lerp(0.60000002384185791015625f, 1.0f, clamp((1.2000000476837158203125f * frac((_1187.y * (-3.0f)) + frac((_1229.x + _1229.y) * _1229.z))) + clamp(_1187.z * 10.0f, 0.0f, 1.0f), 0.0f, 1.0f));
        float _1247 = 1.0f - _648;
        float _1249 = _1247 + (0.800000011920928955078125f * _648);
        float _1252 = _1209 ? _20_m10.x : 1.0f;
        float _1254 = _1252 * _1213.x;
        float _1256 = _1252 * _1213.y;
        float3 _1257 = _1187 * 32.0f;
        float3 _1258 = _1187 * 48.345600128173828125f;
        float3 _1262 = pow(max(abs(float3(_1181.x ? _9.xzy.x : _9.x, _1181.y ? _9.xzy.y : _9.y, _1181.z ? _9.xzy.z : _9.z)) - 0.20000000298023223876953125f.xxx, 0.0f.xxx), 10.0f.xxx);
        float3 _1266 = _1262 / max(dot(_1262, 1.0f.xxx), 6.103515625e-05f).xxx;
        float2 _1268 = _1208.xz;
        float _1269 = _1266.y;
        float2 _1270 = _1257.xz * 1.0f;
        float2 _1271 = floor(_1270);
        float2 _1274 = frac(_1271 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1278 = _1274 + dot(_1274, _1274 + 34.345001220703125f.xx).xx;
        float _1279 = _1278.x;
        float _1280 = _1278.y;
        float2 _1284 = frac(float2(_1279 * _1280, _1279 + _1280));
        float2 _1287 = frac((_1271 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1291 = _1287 + dot(_1287, _1287 + 34.345001220703125f.xx).xx;
        float _1292 = _1291.x;
        float _1293 = _1291.y;
        float2 _1297 = frac(float2(_1292 * _1293, _1292 + _1293));
        float _1303 = _1284.x;
        float _1306 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1303)) * _1246;
        float2 _1307 = ((_1270 - _1271) + ((((_1297 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1324;
        do
        {
            _1310 = dot(_1268, _1268);
            _1311 = _1310 <= 9.9999997473787516355514526367188e-06f;
            if (_1311)
            {
                _1324 = _1307;
                break;
            }
            float2 _1315 = _1268 * rsqrt(_1310);
            _1324 = float2(dot(_1307, float2(-_1315.y, _1315.x)), -dot(_1307, _1315));
            break;
        } while(false);
        float _1407;
        bool _1408;
        float2 _1331 = float2(_1324.x * 1.25f, _1324.y * ((_1324.y < 0.0f) ? 1.25f : 0.75f));
        float _1332 = length(_1331);
        float _1334 = _1254 + _1303;
        float _1338 = _1209 ? frac(_1334) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1334, 0.0f, 1.0f));
        float _1350 = _1284.y;
        float _1353 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1338) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1338)) * step(0.001000000047497451305389404296875f, smoothstep(_1306, 0.0f, _1332))) * step(_1216, _1350 - 0.100000001490116119384765625f);
        float _1356 = _1353 * _1269;
        float2 _1365 = _1208.xy;
        float _1366 = _1266.z;
        float2 _1367 = _1257.xy * 1.0f;
        float2 _1368 = floor(_1367);
        float2 _1371 = frac(_1368 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1375 = _1371 + dot(_1371, _1371 + 34.345001220703125f.xx).xx;
        float _1376 = _1375.x;
        float _1377 = _1375.y;
        float2 _1381 = frac(float2(_1376 * _1377, _1376 + _1377));
        float2 _1384 = frac((_1368 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1388 = _1384 + dot(_1384, _1384 + 34.345001220703125f.xx).xx;
        float _1389 = _1388.x;
        float _1390 = _1388.y;
        float2 _1394 = frac(float2(_1389 * _1390, _1389 + _1390));
        float _1400 = _1381.x;
        float _1403 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1400)) * _1246;
        float2 _1404 = ((_1367 - _1368) + ((((_1394 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1421;
        do
        {
            _1407 = dot(_1365, _1365);
            _1408 = _1407 <= 9.9999997473787516355514526367188e-06f;
            if (_1408)
            {
                _1421 = _1404;
                break;
            }
            float2 _1412 = _1365 * rsqrt(_1407);
            _1421 = float2(dot(_1404, float2(-_1412.y, _1412.x)), -dot(_1404, _1412));
            break;
        } while(false);
        float _1504;
        bool _1505;
        float2 _1428 = float2(_1421.x * 1.25f, _1421.y * ((_1421.y < 0.0f) ? 1.25f : 0.75f));
        float _1429 = length(_1428);
        float _1431 = _1254 + _1400;
        float _1435 = _1209 ? frac(_1431) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1431, 0.0f, 1.0f));
        float _1447 = _1381.y;
        float _1450 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1435) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1435)) * step(0.001000000047497451305389404296875f, smoothstep(_1403, 0.0f, _1429))) * step(_1216, _1447 - 0.100000001490116119384765625f);
        float _1453 = _1450 * _1366;
        float2 _1462 = _1208.zy;
        float _1463 = _1266.x;
        float2 _1464 = _1257.zy * 1.0f;
        float2 _1465 = floor(_1464);
        float2 _1468 = frac(_1465 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1472 = _1468 + dot(_1468, _1468 + 34.345001220703125f.xx).xx;
        float _1473 = _1472.x;
        float _1474 = _1472.y;
        float2 _1478 = frac(float2(_1473 * _1474, _1473 + _1474));
        float2 _1481 = frac((_1465 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1485 = _1481 + dot(_1481, _1481 + 34.345001220703125f.xx).xx;
        float _1486 = _1485.x;
        float _1487 = _1485.y;
        float2 _1491 = frac(float2(_1486 * _1487, _1486 + _1487));
        float _1497 = _1478.x;
        float _1500 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1497)) * _1246;
        float2 _1501 = ((_1464 - _1465) + ((((_1491 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1518;
        do
        {
            _1504 = dot(_1462, _1462);
            _1505 = _1504 <= 9.9999997473787516355514526367188e-06f;
            if (_1505)
            {
                _1518 = _1501;
                break;
            }
            float2 _1509 = _1462 * rsqrt(_1504);
            _1518 = float2(dot(_1501, float2(-_1509.y, _1509.x)), -dot(_1501, _1509));
            break;
        } while(false);
        float2 _1525 = float2(_1518.x * 1.25f, _1518.y * ((_1518.y < 0.0f) ? 1.25f : 0.75f));
        float _1526 = length(_1525);
        float _1528 = _1254 + _1497;
        float _1532 = _1209 ? frac(_1528) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1528, 0.0f, 1.0f));
        float _1544 = _1478.y;
        float _1547 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1532) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1532)) * step(0.001000000047497451305389404296875f, smoothstep(_1500, 0.0f, _1526))) * step(_1216, _1544 - 0.100000001490116119384765625f);
        float _1550 = _1547 * _1463;
        float2 _1559 = max(float2(_1306 * _1353, _1306 - _1332) * _1269, max(float2(_1403 * _1450, _1403 - _1429) * _1366, float2(_1500 * _1547, _1500 - _1526) * _1463));
        float2 _1564 = (float4(((clamp(_1331 / _1306.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1297.x)) * _1353) * _1269, _1356, _1350).xy + float4(((clamp(_1428 / _1403.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1394.x)) * _1450) * _1366, _1453, _1447).xy) + float4(((clamp(_1525 / _1500.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1491.x)) * _1547) * _1463, _1550, _1544).xy;
        float _1566 = max(_1550, max(_1356, _1453));
        float4 _1569 = float4(_1564, _1566, 0.0f);
        float2 _1571 = _1258.xz * 1.0f;
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
        float _1607 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1604)) * _1246;
        float2 _1608 = ((_1571 - _1572) + ((((_1598 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1623;
        do
        {
            if (_1311)
            {
                _1623 = _1608;
                break;
            }
            float2 _1614 = _1268 * rsqrt(_1310);
            _1623 = float2(dot(_1608, float2(-_1614.y, _1614.x)), -dot(_1608, _1614));
            break;
        } while(false);
        float2 _1630 = float2(_1623.x * 1.25f, _1623.y * ((_1623.y < 0.0f) ? 1.25f : 0.75f));
        float _1631 = length(_1630);
        float _1633 = _1256 + _1604;
        float _1637 = _1209 ? frac(_1633) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1633, 0.0f, 1.0f));
        float _1649 = _1585.y;
        float _1652 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1637) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1637)) * step(0.001000000047497451305389404296875f, smoothstep(_1607, 0.0f, _1631))) * step(_1216, _1649 - 0.100000001490116119384765625f);
        float _1655 = _1652 * _1269;
        float2 _1664 = _1258.xy * 1.0f;
        float2 _1665 = floor(_1664);
        float2 _1668 = frac(_1665 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1672 = _1668 + dot(_1668, _1668 + 34.345001220703125f.xx).xx;
        float _1673 = _1672.x;
        float _1674 = _1672.y;
        float2 _1678 = frac(float2(_1673 * _1674, _1673 + _1674));
        float2 _1681 = frac((_1665 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1685 = _1681 + dot(_1681, _1681 + 34.345001220703125f.xx).xx;
        float _1686 = _1685.x;
        float _1687 = _1685.y;
        float2 _1691 = frac(float2(_1686 * _1687, _1686 + _1687));
        float _1697 = _1678.x;
        float _1700 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1697)) * _1246;
        float2 _1701 = ((_1664 - _1665) + ((((_1691 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1716;
        do
        {
            if (_1408)
            {
                _1716 = _1701;
                break;
            }
            float2 _1707 = _1365 * rsqrt(_1407);
            _1716 = float2(dot(_1701, float2(-_1707.y, _1707.x)), -dot(_1701, _1707));
            break;
        } while(false);
        float2 _1723 = float2(_1716.x * 1.25f, _1716.y * ((_1716.y < 0.0f) ? 1.25f : 0.75f));
        float _1724 = length(_1723);
        float _1726 = _1256 + _1697;
        float _1730 = _1209 ? frac(_1726) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1726, 0.0f, 1.0f));
        float _1742 = _1678.y;
        float _1745 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1730) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1730)) * step(0.001000000047497451305389404296875f, smoothstep(_1700, 0.0f, _1724))) * step(_1216, _1742 - 0.100000001490116119384765625f);
        float _1748 = _1745 * _1366;
        float2 _1757 = _1258.zy * 1.0f;
        float2 _1758 = floor(_1757);
        float2 _1761 = frac(_1758 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1765 = _1761 + dot(_1761, _1761 + 34.345001220703125f.xx).xx;
        float _1766 = _1765.x;
        float _1767 = _1765.y;
        float2 _1771 = frac(float2(_1766 * _1767, _1766 + _1767));
        float2 _1774 = frac((_1758 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1778 = _1774 + dot(_1774, _1774 + 34.345001220703125f.xx).xx;
        float _1779 = _1778.x;
        float _1780 = _1778.y;
        float2 _1784 = frac(float2(_1779 * _1780, _1779 + _1780));
        float _1790 = _1771.x;
        float _1793 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1790)) * _1246;
        float2 _1794 = ((_1757 - _1758) + ((((_1784 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float2 _1809;
        do
        {
            if (_1505)
            {
                _1809 = _1794;
                break;
            }
            float2 _1800 = _1462 * rsqrt(_1504);
            _1809 = float2(dot(_1794, float2(-_1800.y, _1800.x)), -dot(_1794, _1800));
            break;
        } while(false);
        float2 _1816 = float2(_1809.x * 1.25f, _1809.y * ((_1809.y < 0.0f) ? 1.25f : 0.75f));
        float _1817 = length(_1816);
        float _1819 = _1256 + _1790;
        float _1823 = _1209 ? frac(_1819) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1819, 0.0f, 1.0f));
        float _1835 = _1771.y;
        float _1838 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1823) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1823)) * step(0.001000000047497451305389404296875f, smoothstep(_1793, 0.0f, _1817))) * step(_1216, _1835 - 0.100000001490116119384765625f);
        float _1841 = _1838 * _1463;
        float2 _1855 = (float4(((clamp(_1630 / _1607.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1598.x)) * _1652) * _1269, _1655, _1649).xy + float4(((clamp(_1723 / _1700.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1691.x)) * _1745) * _1366, _1748, _1742).xy) + float4(((clamp(_1816 / _1793.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1784.x)) * _1838) * _1463, _1841, _1835).xy;
        float4 _1860 = float4(_1855, max(_1841, max(_1655, _1748)), 0.0f);
        float _1862 = step(_1559.x, 0.00999999977648258209228515625f);
        float2 _1875 = max(_1559, (max(float2(_1607 * _1652, _1607 - _1631) * _1269, max(float2(_1700 * _1745, _1700 - _1724) * _1366, float2(_1793 * _1838, _1793 - _1817) * _1463)) * float2(0.661900997161865234375f, 1.0f)) * _1862);
        float _1880 = clamp(dot(_422, _545), 0.0f, 1.0f);
        float _1889 = max(_1569.zw * step(0.00999999977648258209228515625f, _1566), _1860.zw * _1862).x * (_1880 * lerp(0.4000000059604644775390625f, 1.0f, smoothstep(0.0f, 4.0f, abs(_18_m2[1].y) / _423)));
        float2 _1890 = (_1569.xy + (_1860.xy * _1862)).xy;
        float3 _1901 = normalize(float3(_1890 * (2.5f * _1880), max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1890, _1890), 0.0f, 1.0f)))));
        float3 _1902 = float3(_1901.x, _1901.y, 0.0f.xxx.z);
        float2 _1903 = _1901.xy;
        _1902.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1903, _1903), 0.0f, 1.0f)));
        float3 _1910 = normalize(_1902);
        float3 _1911 = cross(_545, float3(0.0f, 1.0f, 0.0f));
        bool3 _1914 = (dot(_1911, _1911) > 6.103515625e-05f).xxx;
        float3 _1915 = normalize(_1911);
        float3 _1916 = float3(_1914.x ? _1915.x : float3(1.0f, 0.0f, 0.0f).x, _1914.y ? _1915.y : float3(1.0f, 0.0f, 0.0f).y, _1914.z ? _1915.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1920 = _1910.y;
        float _1927 = _1875.x * 4.0f;
        float _1937 = clamp(dot(_1910, normalize(float3(0.0f, -1.0f, 0.75f))), 0.0f, 1.0f);
        float _1943 = (0.60000002384185791015625f * _1889) * _1927;
        float _1946 = (1.0f - _1943) + (clamp(clamp(clamp(_1875.y * 17.54000091552734375f, 0.0f, 1.0f), 0.0f, 1.0f) + clamp(1.60000002384185791015625f * _1920, 0.0f, 1.0f), 0.0f, 1.0f) * _1943);
        float _1949 = smoothstep(0.60000002384185791015625f, 1.0f, _1946);
        _1960 = normalize(((_1916 * _1910.x) + (cross(_1916, _545) * _1920)) + (_545 * _1910.z));
        _1961 = _1247 + (2.0f * _648);
        _1962 = _1889 * _1927;
        _1963 = ((lerp(0.0500000007450580596923828125f, 1.7999999523162841796875f, (_1937 * _1937) * _1937) * _1927) * _1949) * _1889;
        _1964 = lerp(1.0f, 0.800000011920928955078125f * lerp(0.5f, 1.0f, _1949), _1889);
        _1965 = (_494 * _1946) * _1249;
        _1966 = (_461 * _1946) * _1249;
    }
    else
    {
        _1960 = _545;
        _1961 = 1.0f;
        _1962 = 0.0f;
        _1963 = 0.0f;
        _1964 = 1.0f;
        _1965 = _494;
        _1966 = _461;
    }
    float3 _2078;
    float3 _2079;
    float3 _2080;
    float _2081;
    [branch]
    if (_637 > 0.00999999977648258209228515625f)
    {
        bool3 _1970 = _431.xxx;
        float3 _1972 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1973 = float3(_1970.x ? _1972.x : _11.x, _1970.y ? _1972.y : _11.y, _1970.z ? _1972.z : _11.z);
        float3 _1976 = _1973 * _20_m89.z;
        float3 _1978 = float3(_1970.x ? _9.xzy.x : _9.x, _1970.y ? _9.xzy.y : _9.y, _1970.z ? _9.xzy.z : _9.z);
        float3 _1980 = abs(_1978) - 0.20000000298023223876953125f.xxx;
        float3 _1983 = max((_1980 * _1980) * _1980, 6.103515625e-05f.xxx);
        float3 _1986 = _1983 / dot(_1983, 1.0f.xxx).xxx;
        float4 _2009 = ((_54.SampleBias(_27, _1976.xz, _20_m16) * _1986.y) + (_54.SampleBias(_27, _1976.xy, _20_m16) * _1986.z)) + (_54.SampleBias(_27, _1976.zy, _20_m16) * _1986.x);
        float _2017 = clamp(_637 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1973.y) * clamp(_637 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _2028 = smoothstep(2.0f - _2017, 2.349999904632568359375f - _2017, ((_1978.y * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _2009.z) * ((_468 * _468) * float(gl_FrontFacing));
        float3 _2030 = _2028.xxx;
        float2 _2036 = (_2009.xy * 2.0f) - 1.0f.xx;
        float3 _2037 = float3(_2036.x, _2036.y, _382.z);
        float2 _2038 = _2036.xy;
        _2037.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2038, _2038), 0.0f, 1.0f)));
        float2 _2046 = _2037.xy * 2.0f;
        float3 _2048 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2046.x, _2046.y, _2037.z), _2030);
        float3 _2052 = _2048 * rsqrt(max(6.103515625e-05f, dot(_2048, _2048)));
        float _2053 = _545.y;
        float _2056 = step(0.00999999977648258209228515625f, 1.0f - (_2053 * _2053));
        float _2060 = lerp(_545.z, _2053, _2056);
        float3 _2067 = (float3(0.0f, _2056, 1.0f - _2056) - (_545 * _2060)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2060 * _2060)));
        _2078 = ((cross(_2067, _545) * _2052.x) + (_2067 * _2052.y)) + (_545 * _2052.z);
        _2079 = lerp(_1965 * 1.0f, 0.3079999983310699462890625f.xxx, _2030);
        _2080 = lerp(_1966 * 1.0f, 0.87999999523162841796875f.xxx, _2030);
        _2081 = lerp(0.0f, 0.0f, _2028);
    }
    else
    {
        _2078 = _545;
        _2079 = _1965;
        _2080 = _1966;
        _2081 = 0.0f;
    }
    float _2083 = 0.959999978542327880859375f - (_2081 * 0.959999978542327880859375f);
    float3 _2084 = _2080 * _2083;
    float3 _2087 = lerp(0.039999999105930328369140625f.xxx * _467, _2080, _2081.xxx);
    float3 _2088 = _2079 * _2083;
    bool _2095 = (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) < 0.9900000095367431640625f;
    float2 _2108 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2108.y = -_2108.y;
    float2 _2124 = lerp(((sqrt(sqrt(abs(_2108 * 0.5f))) * float2(int2(sign(_2108)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2095).xx);
    float4 _2126 = float4(_2124.x, _2124.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2126.z = 1.0f;
    _2126.w = _2095 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2139 = lerp(-_38_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2143 = normalize(float3(_2139.x, 6.103515625e-05f, _2139.z));
    float3 _2153 = lerp(_38_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2157 = _2153 * lerp(_38_m3.w, 1.0f, _20_m91.w);
    int _2161 = int(_601.x);
    int _2162 = int(_601.y);
    float4 _2166 = _42.Load(int3(int3(_2161, _2162, 0).xy, 0));
    float _2171 = _2166.y;
    float _2174 = lerp(lerp(1.0f, _2166.x, _40_m6.x), 1.0f, _20_m80.z);
    float _2175 = dot(_2078, _2139);
    float3 _2182 = _2088 * _20_m79.z;
    float3 _2183 = _2182 * 0.64999997615814208984375f;
    float _2187 = dot(_2084, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2200 = clamp(-dot(_2143.xz, normalize(_611.xz)), 0.0f, 1.0f);
    float _2204 = 1.0f - _20_m91.x;
    float4 _2218 = _52.SampleLevel(_26, float2((clamp(lerp(_2175, ((-_2175) * ((_2175 * 0.5f) - 1.0f)) + 0.5f, (_2200 * smoothstep(0.25f, 0.75f, 1.0f - abs(_611.y))) * _2204) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2219 = _2218.w;
    float _2221 = _2218.x;
    float _2222 = _2218.y;
    float _2223 = _2218.z;
    float _2228 = max(max(_2221, _2222), _2223) - min(min(_2221, _2222), _2223);
    float4 _2236 = _52.SampleLevel(_26, float2((dot(_2078, _611) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2237 = _2236.w;
    float _2238 = _468 * _2171;
    float _2245 = min(min(_2171, _468), _2219);
    float _2246 = _2237 * _2238;
    float3 _2250 = ((clamp(dot(_545, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1152, 1.0f.xxx, (_20_m80.y * _2245).xxx);
    float3 _2252 = _2245.xxx;
    float3 _2275 = _2174.xxx;
    float3 _2276 = lerp((_2250 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1153), 1.5f), clamp(_1153, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2157, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2157, _2252) + ((_2250 * clamp(_1153, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2153 * _20_m91.y)))) * _20_m79.y, _2275);
    float3 _2277 = lerp(lerp(lerp(dot(_2183, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2183, 1.2000000476837158203125f.xxx), _2182, clamp((_2238 * _2237) + _2219, 0.0f, 1.0f).xxx), _2084, _2252);
    float3 _2283 = _2277 * ((1.0f - _2228).xxx + (_2218.xyz * _2228));
    float3 _2292 = lerp(lerp(_2182, lerp(_2187.xxx, _2084, 1.2000000476837158203125f.xxx), _2246.xxx), _2283 * clamp(dot(_2277, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2283, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2275);
    float4 _2296 = float4(_2292, _2174);
    float3 _2297 = _2276 * _2292;
    float _2298 = lerp(_2246, _2245, _2174);
    float3 _2304 = (_2276 * (((_2298 * 0.5f) + 0.5f) * lerp(_20_m79.z, 1.0f, _2298))) * 1.0f;
    float _2307 = lerp(0.5f, _2139.y, _2174);
    float3 _2310 = mul(_571, float3(_586.x, _2307, _586.z));
    float3 _2312 = _2139 * _2174;
    float3 _2318 = normalize(_584 + (_564 * ((_51_m34 * 2.0f) - 1.0f)));
    float3 _2319 = normalize(_2312 + (float3(_2310.x, _2310.y, _2310.z) * 2.0f)) + _422;
    float3 _2323 = _2319 * rsqrt(max(6.103515625e-05f, dot(_2319, _2319)));
    float _2324 = dot(_2318, _2323);
    float3 _2332 = clamp(pow(max(sqrt(1.0f - (_2324 * _2324)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _467, 0.0f.xxx, 1.0f.xxx);
    float _2335 = _595 * _595;
    float3 _2345 = (_2332 * _53.SampleLevel(_26, float2(_2332.x, float(_2324 > 0.0f) * _2335), 0.0f).xyz) * _595;
    float _2366 = dot(normalize(_584 + (_564 * ((_51_m35 * 2.0f) - 1.0f))), _2323);
    float3 _2383 = ((((((_2345 * _2087) * _51_m36) * 5.0f) * _1961) + lerp(((pow(max(sqrt(1.0f - (_2366 * _2366)), 9.9999997473787516355514526367188e-05f), float(int(200.0f * max(1.0f - _51_m38, 0.0f)))).xxx * _595) * (_51_m42.xyz * _465.w)) * _1961, 0.0f.xxx, max(max(_2345.x, _2345.y), _2345.z).xxx)) * _2304) * _20_m92.w;
    float3 _2389 = float3(_611.x, _2307, _611.z);
    float3 _2399 = normalize((_2312 + ((_2389 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2389, _2389)))) * 2.0f)) + (_422 * (2.0f + _2174)));
    float3 _2404 = normalize(float3(-_1960.z, 0.001000000047497451305389404296875f, _1960.x));
    float _2426 = (1.0f - _51_m6) + (_472 * _51_m6);
    float3 _2428 = (_2297 * _2426) + ((_2383 * _1964) + (((_2297 + _2383) * _1963) + (((((smoothstep(0.1500000059604644775390625f, 0.100000001490116119384765625f, abs(dot(_2399, _2404))) * smoothstep(0.070000000298023223876953125f, 0.0199999995529651641845703125f, abs(dot(_2399, cross(_1960, _2404))))) * max(0.0f, dot(_1960, _2399))) * 2.0f) * _1962).xxx * _2304)));
    float _2429 = dot(_2428, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2432 = clamp(_2429 - 0.5f, 0.0f, 0.5f);
    float3 _2468 = normalize(cross(_611, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float2 _2492 = normalize(mul(float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz), _2078).xy) * float2(_20_m5.y / _20_m5.x, 1.0f);
    float2 _2498 = _20_m5.zw - 1.0f.xx;
    float2 _2499 = 2.0f.xx - _20_m5.zw;
    float _2533 = dot(_2143, _2078);
    float _2544 = dot(_422, _2078);
    float _2548 = 1.0f - _2174;
    float3 _2575 = lerp(_2429.xxx, _2428, ((_2432 * _2432) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(0.100000001490116119384765625f, 0.20000000298023223876953125f, (1.0f / ((_20_m2.z * _30.SampleLevel(_25, clamp(_600 + ((_2492 * _20_m88.w) * 0.006000000052154064178466796875f), _2498, _2499), 0.0f).x) + _20_m2.w)) - _403)) * _20_m87.w) * min(min(clamp(dot(_525, _2468) + 1.0f, 0.0f, 1.0f), _468), _2171)) * (lerp(0.25f.xxx, _2084, _20_m88.z.xxx) * clamp(dot(_2468, _2078), 0.0f, 1.0f))) + ((((((lerp(_1151 * (1.0f / max(max(max(_1151.x, _1151.y), _1151.z) * 0.5f, 1.0f)), _2157, _2275) * clamp(lerp(dot(_1150.xyz, _2078) * _1150.w, ((-_2533) * ((_2533 * 0.5f) - 1.0f)) + 0.5f, _2174), 0.0f, 1.0f)) * ((_2548 + (_2200 * _2174)) * _2204)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, 1.0f - abs(_2544))) * min(_468, _2171)) * (_2548 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2187) * _2174))) * max(0.1500000059604644775390625f.xxx, _2084)));
    float2 _2576 = float2(_601);
    float2 _2578 = floor(_2576 * 0.03125f);
    int _2586 = int((_2578.x + (_2578.y * _36_m5)) * 8.0f);
    float _2593 = floor(_403 - (_20_m3.y * _36_m11));
    float _2597 = clamp(_2593, 0.0f, _36_m7 - 1.0f);
    int _2599 = int(_2597 * 8.0f);
    float3 _2601;
    _2601 = _2575;
    float3 _2602;
    [loop]
    for (int _2604 = 0; _2604 <= 7; _2601 = _2602, _2604++)
    {
        uint _2622 = (_2593 <= _2597) ? (_32.Load(uint(_2586 + _2604) * 4 + 0) & _32.Load(uint((_20_m21.y + _2599) + _2604) * 4 + 0)) : 0u;
        uint _2623 = uint(_2604);
        _2602 = _2601;
        uint _2628;
        float3 _2625;
        [loop]
        for (uint _2627 = _2622; _2627 != 0u; _2602 = _2625, _2627 = _2628)
        {
            uint _2632 = firstbitlow(_2627);
            _2628 = _2627 ^ (1u << (_2632 & 31u));
            int _2638 = int((32u * _2623) + _2632) * 8;
            int _2641 = _2638 + 1;
            int _2644 = _2638 + 2;
            int _2647 = _2638 + 3;
            int _2650 = _2638 + 4;
            int _2653 = _2638 + 5;
            int _2656 = _2638 + 6;
            int _2659 = _2638 + 7;
            uint _2663 = uint(_38_m6[_2653].w);
            float _2738;
            if ((_2663 & 1u) == 1u)
            {
                uint _2669 = asuint(_38_m6[_2653].x);
                uint _2676 = asuint(_38_m6[_2653].y);
                uint _2683 = asuint(_38_m6[_2653].z);
                uint _2690 = asuint(_38_m6[_2656].x);
                uint _2697 = asuint(_38_m6[_2656].y);
                uint _2704 = asuint(_38_m6[_2656].z);
                float3 _2723 = abs(mul(float4(_518 - _38_m6[_2641].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2669).x, spvUnpackHalf2x16(_2683).x, spvUnpackHalf2x16(_2697).x, 0.0f), float4(spvUnpackHalf2x16(_2669 >> 16u).x, spvUnpackHalf2x16(_2683 >> 16u).x, spvUnpackHalf2x16(_2697 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2676).x, spvUnpackHalf2x16(_2690).x, spvUnpackHalf2x16(_2704).x, 0.0f), float4(spvUnpackHalf2x16(_2676 >> 16u).x, spvUnpackHalf2x16(_2690 >> 16u).x, spvUnpackHalf2x16(_2704 >> 16u).x, 0.0f))).xyz);
                float _2730 = _38_m6[_2659].x * 0.5f;
                float _2736 = 1.0f - clamp((max(max(_2723.x, _2723.y), _2723.z) - (_2730 + 0.5f)) / (0.5f - _2730), 0.0f, 1.0f);
                _2738 = _2736 * _2736;
            }
            else
            {
                _2738 = 1.0f;
            }
            if (false || (_2738 < 0.001000000047497451305389404296875f))
            {
                _2625 = _2602;
                continue;
            }
            float3 _3431;
            if (_38_m6[_2638].w < 1.5f)
            {
                float3 _3430;
                do
                {
                    uint _2751 = asuint(_38_m6[_2647].w);
                    if ((_2751 == 16u) || ((_38_m6[_2647].z + _20_m91.z) < 0.5f))
                    {
                        _3430 = _2602;
                        break;
                    }
                    bool _2763 = (uint(_38_m6[_2638].w) & 1u) == 0u;
                    bool _2767 = (!_2763) && (_38_m6[_2644].z > 0.0f);
                    bool _2768 = _2751 == 4u;
                    float _2769 = float(_2763);
                    float _2777 = (0.5f + (0.5f * _38_m6[_2644].y)) - abs(_38_m6[_2644].x);
                    float _2778 = _38_m6[_2644].y - _2777;
                    float _2785 = abs(max((1.0f - abs(_2777)) - abs(_2778), 0.00048828125f));
                    float3 _2789 = normalize(float3(_2777, _2778, (_38_m6[_2644].x >= 0.0f) ? _2785 : (-_2785)));
                    float _2795 = lerp(_38_m6[_2656].w, max(2.0f * _38_m6[_2650].y, 0.100000001490116119384765625f), float(_2768));
                    float3 _2800 = _38_m6[_2641].xyz - _518;
                    float3 _2801 = -_2789;
                    float3 _2806 = lerp(_2800, _2801 * dot(_2800, _2801), (float(_2768 && (_38_m6[_2650].z > 0.5f)) * _2769).xxx);
                    float _2807 = dot(_2806, _2806);
                    float _2808 = rsqrt(_2807);
                    float3 _2809 = _2806 * _2808;
                    float3 _2842;
                    float _2843;
                    if (_2767)
                    {
                        float3 _2813 = (_2789 * _38_m6[_2644].z) * 0.5f;
                        float3 _2814 = _2806 - _2813;
                        float3 _2815 = _2806 + _2813;
                        float _2816 = length(_2814);
                        float _2817 = length(_2815);
                        float3 _2826 = normalize(cross(cross(_2789, _2809), _2789));
                        _2842 = _2826;
                        _2843 = ((1.0f / ((((_2816 * _2817) + dot(_2814, _2815)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2826, _2814) / _2816) + (dot(_2826, _2815) / _2817)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_38_m6[_2644].z * _2808, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2842 = _2809;
                        _2843 = 1.0f;
                    }
                    float _2865;
                    if (_2795 < 0.0f)
                    {
                        float _2859 = _2807 * (_38_m6[_2641].w * _38_m6[_2641].w);
                        float _2862 = clamp(1.0f - (_2859 * _2859), 0.0f, 1.0f);
                        _2865 = lerp(1.0f / (_2807 + 1.0f), _2843, float(_2767)) * (_2862 * _2862);
                    }
                    else
                    {
                        float3 _2848 = _2806 * _38_m6[_2641].w;
                        _2865 = _2843 * pow(1.0f - clamp(dot(_2848, _2848), 0.0f, 1.0f), _2795);
                    }
                    float _2870 = clamp((dot(_2842, _2801) - _38_m6[_2644].z) * _38_m6[_2644].w, 0.0f, 1.0f);
                    float _2873 = _2865 * lerp(1.0f, _2870 * _2870, _2769);
                    int _2875 = int(_38_m6[_2659].w);
                    float _2979;
                    if ((!_2767) && (_2875 >= 0))
                    {
                        uint _2881 = uint(_2875);
                        float2 _2972;
                        [branch]
                        if (_2769 != 0.0f)
                        {
                            float4 _2962 = mul(_60_m1[_2881], float4(_518.x, _643, _518.z, 1.0f));
                            _2972 = _60_m0[_2881].xy + (clamp(_2962.xy / _2962.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2881].zw);
                        }
                        else
                        {
                            float3 _2896 = mul(float4(-_2806, 0.0f), _60_m1[_2881]).xyz;
                            float3 _391 = _2896;
                            float3 _390 = _2896;
                            float3 _389 = abs(_2896);
                            uint _2905 = uint(int(_389.y > _389.x));
                            uint _2911 = (_389.z > _389[_2905]) ? 2u : _2905;
                            uint _2917 = (_2911 * 2u) + uint(_390[_2911] < 0.0f);
                            float _2921 = abs(_391[_2917 / 2u]);
                            float _2941 = 0.5f - (0.000244140625f / _60_m0[_2881].w);
                            _2972 = _60_m0[_2881].xy + (clamp(float2((float(_2917) + ((((_391[uint(_358[_2917].x)] * _359[_2917].x) / _2921) * _2941) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_391[uint(_358[_2917].y)] * _359[_2917].y) / _2921) * _2941)), 0.0f.xx, 1.0f.xx) * _60_m0[_2881].zw);
                        }
                        _2979 = _2873 * _58.SampleLevel(_26, _2972, 0.0f).x;
                    }
                    else
                    {
                        _2979 = _2873;
                    }
                    float _2980 = _2979 * _2738;
                    float3 _3429;
                    do
                    {
                        float3 _3428;
                        [branch]
                        if (_2980 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2768)
                            {
                                _3429 = lerp(_2602, _38_m6[_2638].xyz, (_2980 * (_38_m6[_2650].x * ((1.0f - _38_m6[_2650].w) + (smoothstep(-0.5f, 0.5f, dot(_546, _2842)) * _38_m6[_2650].w)))).xxx);
                                break;
                            }
                            float _3000 = dot(_2078, _2842);
                            float _3001 = clamp(_3000, 0.0f, 1.0f);
                            float _3304;
                            if (_2751 != 0u)
                            {
                                bool _3007 = _2763 || ((_2663 & 2u) != 0u);
                                int _3056;
                                if (_3007)
                                {
                                    _3056 = int(_38_m6[_2647].x);
                                }
                                else
                                {
                                    uint _3011 = asuint(_38_m6[_2644].w);
                                    uint _3013 = asuint(_38_m6[_2647].x);
                                    float3 _3014 = _518 - _38_m6[_2641].xyz;
                                    float3 _3015 = abs(_3014);
                                    float _3016 = _3015.x;
                                    float _3017 = _3015.y;
                                    float _3019 = _3015.z;
                                    int _3051;
                                    if ((_3016 > _3017) && (_3016 > _3019))
                                    {
                                        _3051 = int((_3014.x > 0.0f) ? (_3011 >> 24u) : ((_3011 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3043;
                                        if (_3017 > _3019)
                                        {
                                            _3043 = int((_3014.y > 0.0f) ? ((_3011 >> 8u) & 255u) : (_3011 & 255u));
                                        }
                                        else
                                        {
                                            _3043 = int((_3014.z > 0.0f) ? ((_3013 >> 8u) & 255u) : (_3013 & 255u));
                                        }
                                        _3051 = _3043;
                                    }
                                    _3056 = (_3051 < 80) ? _3051 : (-1);
                                }
                                bool _3057 = _3056 >= 0;
                                float _3303;
                                if (_3057)
                                {
                                    float3 _3064 = _518 - _38_m6[_2641].xyz;
                                    float4 _3084 = mul(_40_m10[_3056], float4((_518 - ((_3064 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3064, _3064)))) * _40_m11[_3056].x)) + (_546 * (_40_m11[_3056].y * 5.0f)), 1.0f));
                                    float _3085 = _3084.w;
                                    float3 _3088 = _3084.xyz / _3085.xxx;
                                    float2 _3089 = _3088.xy;
                                    float3 _3097 = _3088.xyz;
                                    bool3 _3098 = bool3(_3097.x <= 0.0f.xxx.x, _3097.y <= 0.0f.xxx.y, _3097.z <= 0.0f.xxx.z);
                                    bool3 _3099 = bool3(_3097.x >= 1.0f.xxx.x, _3097.y >= 1.0f.xxx.y, _3097.z >= 1.0f.xxx.z);
                                    float _3102 = _3088.z;
                                    float2 _3113 = ((_3089 * (_40_m12[_3056].zw - _40_m12[_3056].xy)) + _40_m12[_3056].xy).xy * _40_m13.zw;
                                    float2 _3115 = floor(_3113 + 0.5f.xx);
                                    float2 _3116 = _3113 - _3115;
                                    float _3118 = _3116.x + 0.5f;
                                    float _3119 = _3118 * _3118;
                                    float _3122 = 1.0f - _3116.x;
                                    float _3123 = min(_3116.x, 0.0f);
                                    float _3126 = _3116.x + 1.0f;
                                    float _3127 = max(_3116.x, 0.0f);
                                    float _3139 = _3116.y + 0.5f;
                                    float _3140 = _3139 * _3139;
                                    float _3143 = 1.0f - _3116.y;
                                    float _3144 = min(_3116.y, 0.0f);
                                    float _3147 = _3116.y + 1.0f;
                                    float _3148 = max(_3116.y, 0.0f);
                                    float3 _3160 = float3(0.1599999964237213134765625f * _3122, 0.1599999964237213134765625f * ((_3126 - (_3127 * _3127)) + 1.0f), _3119 * 0.07999999821186065673828125f);
                                    float3 _3161 = float3(0.1599999964237213134765625f * ((_3119 * 0.5f) - _3116.x), 0.1599999964237213134765625f * ((_3122 - (_3123 * _3123)) + 1.0f), 0.1599999964237213134765625f * _3126) + _3160;
                                    float3 _3163 = float3(0.1599999964237213134765625f * _3143, 0.1599999964237213134765625f * ((_3147 - (_3148 * _3148)) + 1.0f), _3140 * 0.07999999821186065673828125f);
                                    float3 _3164 = float3(0.1599999964237213134765625f * ((_3140 * 0.5f) - _3116.y), 0.1599999964237213134765625f * ((_3143 - (_3144 * _3144)) + 1.0f), 0.1599999964237213134765625f * _3147) + _3163;
                                    float3 _3170 = ((_3160 / _3161) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.xxx;
                                    float3 _3172 = ((_3163 / _3164) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.yyy;
                                    float2 _3174 = _3115 * _40_m13.xy;
                                    float _3175 = _3170.x;
                                    float _3176 = _3172.x;
                                    float _3179 = _3170.y;
                                    float _3182 = _3170.z;
                                    float _3185 = _3172.y;
                                    float _3192 = _3172.z;
                                    float _3199 = _3161.x;
                                    float _3200 = _3164.x;
                                    float _3202 = _3161.y;
                                    float _3204 = _3161.z;
                                    float _3206 = _3164.y;
                                    float _3210 = _3164.z;
                                    float _3268 = (((((((_3199 * _3200) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3175, _3176), _381).xy, _3102)) + ((_3202 * _3200) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3179, _3176), _381).xy, _3102))) + ((_3204 * _3200) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3182, _3176), _381).xy, _3102))) + ((_3199 * _3206) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3175, _3185), _381).xy, _3102))) + ((_3202 * _3206) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3179, _3185), _381).xy, _3102))) + ((_3204 * _3206) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3182, _3185), _381).xy, _3102))) + ((_3199 * _3210) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3175, _3192), _381).xy, _3102));
                                    float2 _3289 = min(_3089, 1.0f.xx - _3089);
                                    _3303 = _3057 ? lerp(1.0f, (any(bool3(_3098.x || _3099.x, _3098.y || _3099.y, _3098.z || _3099.z)) || ((asuint(_3102) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3268 + ((_3202 * _3210) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3179, _3192), _381).xy, _3102))) + ((_3204 * _3210) * _41.SampleCmpLevelZero(_28, float3(_3174 + float2(_3182, _3192), _381).xy, _3102))), _3007 ? min(_40_m11[_3056].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_40_m11[_3056].z - _3085) * 0.25f, min(_3289.x, _3289.y)))) : _40_m11[_3056].w) : 1.0f;
                                }
                                else
                                {
                                    _3303 = clamp(dot(_525, _2842) + 1.0f, 0.0f, 1.0f);
                                }
                                _3304 = _3303;
                            }
                            else
                            {
                                _3304 = 1.0f;
                            }
                            float _3377;
                            float3 _3378;
                            float _3379;
                            float3 _3380;
                            float3 _3381;
                            [branch]
                            if (_2751 == 0u)
                            {
                                float3 _3357 = _38_m6[_2638].xyz * _2980;
                                float3 _3370 = _2296.xyz;
                                _3377 = _2980;
                                _3378 = (_38_m6[_2638].xyz * ((1.0f - _38_m6[_2650].y) + ((1.0f / max(1.0f, max(max(_3357.x, _3357.y), _3357.z) * lerp(0.75f, 0.5f, _2548))) * _38_m6[_2650].y))) * lerp(0.25f * _38_m6[_2650].x, 1.0f, clamp(_3000 + 0.5f, 0.0f, 1.0f));
                                _3379 = _3001;
                                _3380 = _3370;
                                _3381 = _3370;
                            }
                            else
                            {
                                float _3352;
                                float _3353;
                                float3 _3354;
                                float3 _3355;
                                if (_2751 == 3u)
                                {
                                    _3352 = _2980 * (smoothstep(0.100000001490116119384765625f, 0.20000000298023223876953125f, (1.0f / ((_20_m2.z * _30.SampleLevel(_25, clamp(_600 + ((_2492 * _38_m6[_2650].x) * 0.006000000052154064178466796875f), _2498, _2499), 0.0f).x) + _20_m2.w)) - _403) * _3304);
                                    _3353 = clamp(dot(_2078, -normalize(cross(_611, cross(_611, _2842)))), 0.0f, 1.0f);
                                    _3354 = lerp(0.5f.xxx, _2084, _38_m6[_2650].y.xxx);
                                    _3355 = 0.0f.xxx;
                                }
                                else
                                {
                                    bool _3313 = _2751 == 1u;
                                    float _3323;
                                    float3 _3324;
                                    if (_3313)
                                    {
                                        _3323 = clamp(clamp(_3000 + _38_m6[_2650].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3304;
                                        _3324 = _2088 * _38_m6[_2650].y;
                                    }
                                    else
                                    {
                                        _3323 = _3001;
                                        _3324 = 0.0f.xxx;
                                    }
                                    bool3 _3325 = _3313.xxx;
                                    _3352 = _2980;
                                    _3353 = _3323;
                                    _3354 = float3(_3325.x ? _2084.x : 0.0f.xxx.x, _3325.y ? _2084.y : 0.0f.xxx.y, _3325.z ? _2084.z : 0.0f.xxx.z);
                                    _3355 = _3324;
                                }
                                _3377 = _3352;
                                _3378 = _38_m6[_2638].xyz;
                                _3379 = _3353;
                                _3380 = _3354;
                                _3381 = _3355;
                            }
                            float3 _3418;
                            [branch]
                            if (_2751 != 3u)
                            {
                                float3 _3386 = _2842 + _422;
                                float _3391 = dot(_2318, _3386 * rsqrt(max(6.103515625e-05f, dot(_3386, _3386))));
                                float3 _3399 = clamp(pow(max(sqrt(1.0f - (_3391 * _3391)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _467, 0.0f.xxx, 1.0f.xxx);
                                _3418 = (((((((_3399 * _53.SampleLevel(_26, float2(_3399.x, float(_3391 > 0.0f) * _2335), 0.0f).xyz) * _595) * _2087) * _51_m36) * 5.0f) * _1961) * 1.0f) * _38_m6[_2659].z;
                            }
                            else
                            {
                                _3418 = 0.0f.xxx;
                            }
                            float3 _3421 = _3378 * _3377;
                            _3428 = _2602 + (((_3421 * lerp(_3381, _3380, _3379.xxx)) * _2426) + ((_3421 * _3418) * _3379));
                        }
                        else
                        {
                            _3428 = _2602;
                        }
                        _3429 = _3428;
                        break;
                    } while(false);
                    _3430 = _3429;
                    break;
                } while(false);
                _3431 = _3430;
            }
            else
            {
                _3431 = _2602;
            }
            _2625 = _3431;
        }
    }
    float3 _3471;
    [branch]
    if (_51_m12 > 0.5f)
    {
        _3471 = lerp(lerp(0.5f.xxx, lerp(dot(_2601, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2601, _51_m14.xxx), _51_m15.xxx) * _51_m13, _51_m26.xyz, _51_m26.w.xxx) + ((_51_m27.xyz * smoothstep(1.0f - _51_m16, 1.0f, 1.0f - clamp(_2544, 0.0f, 1.0f))) * _51_m17);
    }
    else
    {
        _3471 = _2601;
    }
    float4 _3478 = float4(_3471 * _20_m20.y, _472);
    _3478.w = (_51_m8 == 1.0f) ? _472 : 1.0f;
    float4 _3863;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float3 _3487 = -_422;
        float _3503 = _643 * _20_m46.w;
        float _3508 = max(0.00999999977648258209228515625f, _3503 + _20_m47.w);
        float3 _3522 = exp(_20_m45.xyz * ((-max(0.0f, (_423 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3508)) / _3508) * exp(_3503 + _20_m48.w))));
        float _3525 = dot(_3487, _20_m44.xyz);
        float _3531 = _20_m45.w * _20_m45.w;
        float _3535 = (1.0f + _3531) - ((2.0f * _20_m45.w) * _3525);
        float3 _3855;
        float _3856;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3686 = (uint3(int3(_2161, _2162, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3687 = _3686.y;
            uint _3688 = _3686.z;
            uint _3691 = _3686.x + (_3687 * _3688);
            uint _3693 = _3687 + (_3688 * _3691);
            uint _3695 = _3688 + (_3691 * _3693);
            uint _3697 = _3691 + (_3693 * _3695);
            float _3719 = dot(_3487, -_18_m0[2].xyz);
            float3 _3726 = _518 - _18_m11.xyz;
            float _3728 = (_20_m55.w * ((_3719 > 5.9604644775390625e-08f) ? (1.0f / _3719) : 0.0f)) * (1.0f / _423);
            float _3729 = _3726.y;
            float _3730 = _3728 * _3729;
            float _3732 = _18_m11.y + _3730;
            float _3733 = _3729 - _3730;
            float _3735 = (1.0f - _3728) * _423;
            float _3749 = max(-127.0f, _20_m49.z * _3733);
            float _3773 = max(-127.0f, _20_m52.x * _3733);
            float _3784 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3732 - _20_m49.x)))) * ((abs(_3749) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3749)) / _3749) : (0.693147182464599609375f - (0.2402265071868896484375f * _3749)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3732 - _20_m52.z)))) * ((abs(_3773) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3773)) / _3773) : (0.693147182464599609375f - (0.2402265071868896484375f * _3773))));
            float _3806 = clamp((_423 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3809 = clamp((max(clamp(exp2(-(_3784 * _3735)), 0.0f, 1.0f), _20_m51.w) + clamp((_423 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3806, 0.0f, 1.0f);
            float4 _3849 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_26, float3((_2576 + ((((float3(uint3(_3697, _3693 + (_3695 * _3697), _387) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_403 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_403 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3855 = _3849.xyz + (((_20_m51.xyz * (1.0f - _3809)) + (((_20_m54.xyz * pow(clamp(dot(_422, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3784 * max(_3735 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3806))) * _3849.w);
            _3856 = _3849.w * _3809;
        }
        else
        {
            float3 _3562 = _518 - _18_m11.xyz;
            float _3564 = _3562.y;
            float _3578 = max(-127.0f, _20_m49.z * _3564);
            float _3602 = max(-127.0f, _20_m52.x * _3564);
            float _3613 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3578) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3578)) / _3578) : (0.693147182464599609375f - (0.2402265071868896484375f * _3578)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3602) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3602)) / _3602) : (0.693147182464599609375f - (0.2402265071868896484375f * _3602))));
            float _3635 = clamp((_423 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3638 = clamp((max(clamp(exp2(-(_3613 * _423)), 0.0f, 1.0f), _20_m51.w) + clamp((_423 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3635, 0.0f, 1.0f);
            _3855 = (_20_m51.xyz * (1.0f - _3638)) + (((_20_m54.xyz * pow(clamp(dot(_422, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3613 * max(_423 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3635));
            _3856 = _3638;
        }
        float3 _3861 = (_3478.xyz * (_3522 * _3856)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3525 * _3525)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3531) / max((12.56637096405029296875f * _3535) * sqrt(_3535), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3522)) * _3856) + _3855);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3861 = (_3861 * 0.65f) + (_3478.xyz * 0.35f);

        }
        _3863 = float4(_3861.x, _3861.y, _3861.z, _3478.w);
    }
    else
    {
        _3863 = _3478;
    }
    _15 = _3863;
    _16 = _2126;
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
