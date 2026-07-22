// DX11 0x162B46D9 -> Vulkan 0xBE1B0580
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

static float _421 = 0.0f;
static float3 _422 = 0.0f;
static float _424 = 0.0f;
static uint _425 = 0u;

static const int2 _379[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _380[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

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
cbuffer _64_65 : register(b50)
{
    float4 _65_m0[32] : packoffset(c0);
    column_major float4x4 _65_m1[32] : packoffset(c32);
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
[[vk::binding(5, 1)]] Texture2D<float4> _50 : register(t5);
[[vk::binding(2, 1)]] Texture2D<float4> _51 : register(t2);
[[vk::binding(1, 1)]] SamplerState _52 : register(s1);
[[vk::binding(44, 0)]] Texture2D<float4> _53 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _54 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _55 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _56 : register(t37);
[[vk::binding(7, 1)]] Texture2D<float4> _57 : register(t7);
[[vk::binding(3, 1)]] Texture2D<float4> _58 : register(t3);
[[vk::binding(6, 1)]] Texture2D<float4> _59 : register(t6);
[[vk::binding(4, 1)]] Texture2D<float4> _60 : register(t4);
[[vk::binding(45, 0)]] TextureCube<float4> _62 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _63 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _68 : register(t36);

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
    float _440 = 1.0f / gl_FragCoord.w;
    float3 _455 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _456 = dot(_455, _455);
    float _458 = rsqrt(max(_456, 9.9999999392252902907785028219223e-09f));
    float3 _459 = _455 * _458;
    float _460 = _456 * _458;
    uint _463 = asuint(_22_m0[_12]._m2.x);
    bool _468 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _481;
    float4 _482;
    if (_468)
    {
        _481 = asfloat(_32_Load4((_463 + 2u) * 16 + 0));
        _482 = asfloat(_32_Load4(_463 * 16 + 0));
    }
    else
    {
        _481 = _22_m0[_12]._m0[2];
        _482 = _22_m0[_12]._m0[0];
    }
    float4 _488 = _57.SampleBias(_26, _3, _19_m16);
    float3 _493 = _488.xyz * _49_m24.xyz;
    float4 _497 = _58.SampleBias(_26, _3, _19_m16);
    float _498 = _497.x;
    float _500 = _497.z;
    float _502 = 1.0f - _497.w;
    float _506 = _488.w * _49_m24.w;
    float3 _511 = _493 * _49_m18;
    float3 _515 = lerp(dot(_511, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _511, _49_m19.xxx);
    float4 _519 = _59.SampleBias(_26, _3, _19_m16);
    _519.w = _519.w * _519.x;
    float2 _528 = (_519.wy * 2.0f) - 1.0f.xx;
    float3 _529 = float3(_528.x, _528.y, _422.z);
    float2 _530 = _528.xy;
    _529.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_530, _530), 0.0f, 1.0f)));
    float2 _538 = _529.xy * _49_m3;
    float4 _543 = _60.SampleBias(_26, _3, _19_m16);
    float3 _555 = _4 + _17_m11.xyz;
    float3 _559 = _555 - float3(_482.w, _424, _481.w);
    _559.y = 6.103515625e-05f;
    float3 _562 = normalize(_559);
    float3 _572 = mul(float3(_538.x, _538.y, _529.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _581 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _582 = (_572 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_572, _572)))) * _581;
    float3 _583 = normalize(_5) * _581;
    uint2 _585 = uint2(gl_FragCoord.xy);
    float3 _595 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _604 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _617 = float4(float(_604 & 255u), float((_604 >> 8u) & 255u), float((_604 >> 16u) & 255u), float((_604 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _618 = _617.x;
    float _621 = _617.w;
    float _627 = _555.y;
    float _630 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _627) * _617.y;
    float _631 = max(_617.z, _630);
    float _640 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1134;
    float3 _1135;
    float3 _1136;
    float _1137;
    if (_19_m80.y < 0.5f)
    {
        float3 _655 = _555 - (_19_m105.xyz + (_595 * (-_19_m107.w)));
        float _669 = max(clamp((max(abs(_655.x), abs(_655.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_655.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _971;
        float4 _972;
        float4 _973;
        float _974;
        float _975;
        if ((_19_m105.w != 0.0f) && (_669 < 1.0f))
        {
            float3 _682 = _555 - (_19_m105.xyz + (_595 * (-_19_m107.y)));
            float _696 = max(clamp((max(abs(_682.x), abs(_682.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_682.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _772;
            float4 _773;
            float4 _774;
            float4 _775;
            if (_696 < 1.0f)
            {
                float3 _705 = ((_555 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _707 = _705 - floor(_705);
                float4 _711 = _42.SampleLevel(_26, _707, 0.0f);
                float _712 = 1.0f - _696;
                float _716 = _19_m106.y * 0.5f;
                float _721 = _707.x;
                float _722 = clamp(_707.y, _716, 1.0f - _716) * 0.3333333432674407958984375f;
                float _723 = _707.z;
                float4 _726 = _43.SampleLevel(_25, float3(_721, _722, _723), 0.0f);
                float _742 = _711.x;
                float _752 = _711.y;
                float _762 = _711.z;
                _772 = _669 + (_726.w * _712);
                _773 = float4(((_43.SampleLevel(_25, float3(_721, _722 + 0.666666686534881591796875f, _723), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _762, _762) * _712;
                _774 = float4(((_43.SampleLevel(_25, float3(_721, _722 + 0.3333333432674407958984375f, _723), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _752, _752) * _712;
                _775 = float4(((_726.xyz * 4.0f) - 2.0f.xxx) * _742, _742) * _712;
            }
            else
            {
                _772 = _669;
                _773 = 0.0f.xxxx;
                _774 = 0.0f.xxxx;
                _775 = 0.0f.xxxx;
            }
            float3 _781 = _555 - (_19_m105.xyz + (_595 * (-_19_m107.z)));
            float _795 = max(clamp((max(abs(_781.x), abs(_781.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_781.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _875;
            float4 _876;
            float4 _877;
            float4 _878;
            if (_795 < 1.0f)
            {
                float3 _804 = ((_555 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _806 = _804 - floor(_804);
                float4 _810 = _44.SampleLevel(_26, _806, 0.0f);
                float _812 = _696 * (1.0f - _795);
                float _816 = _19_m106.y * 0.5f;
                float _821 = _806.x;
                float _822 = clamp(_806.y, _816, 1.0f - _816) * 0.3333333432674407958984375f;
                float _823 = _806.z;
                float4 _826 = _45.SampleLevel(_25, float3(_821, _822, _823), 0.0f);
                float _842 = _810.x;
                float _853 = _810.y;
                float _864 = _810.z;
                _875 = _772 + (_826.w * _812);
                _876 = _773 + (float4(((_45.SampleLevel(_25, float3(_821, _822 + 0.666666686534881591796875f, _823), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _864, _864) * _812);
                _877 = _774 + (float4(((_45.SampleLevel(_25, float3(_821, _822 + 0.3333333432674407958984375f, _823), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _853, _853) * _812);
                _878 = _775 + (float4(((_826.xyz * 4.0f) - 2.0f.xxx) * _842, _842) * _812);
            }
            else
            {
                _875 = _772;
                _876 = _773;
                _877 = _774;
                _878 = _775;
            }
            float4 _961;
            float4 _962;
            float4 _963;
            float _964;
            if (_795 > 0.0f)
            {
                float3 _887 = ((_555 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _890 = _19_m106.xyz * 0.5f;
                float3 _892 = clamp(_887 - floor(_887), _890, 1.0f.xxx - _890);
                float4 _896 = _46.SampleLevel(_26, _892, 0.0f);
                float _898 = _795 * (1.0f - _669);
                float _902 = _19_m106.y * 0.5f;
                float _907 = _892.x;
                float _908 = clamp(_892.y, _902, 1.0f - _902) * 0.3333333432674407958984375f;
                float _909 = _892.z;
                float4 _912 = _47.SampleLevel(_25, float3(_907, _908, _909), 0.0f);
                float _928 = _896.x;
                float _939 = _896.y;
                float _950 = _896.z;
                _961 = _876 + (float4(((_47.SampleLevel(_25, float3(_907, _908 + 0.666666686534881591796875f, _909), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _950, _950) * _898);
                _962 = _877 + (float4(((_47.SampleLevel(_25, float3(_907, _908 + 0.3333333432674407958984375f, _909), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _939, _939) * _898);
                _963 = _878 + (float4(((_912.xyz * 4.0f) - 2.0f.xxx) * _928, _928) * _898);
                _964 = _875 + (_912.w * _898);
            }
            else
            {
                _961 = _876;
                _962 = _877;
                _963 = _878;
                _964 = _875;
            }
            float _967 = clamp((_964 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _971 = _961;
            _972 = _962;
            _973 = _963;
            _974 = _967 - _669;
            _975 = (_967 + _669) * 0.5f;
        }
        else
        {
            _971 = 0.0f.xxxx;
            _972 = 0.0f.xxxx;
            _973 = 0.0f.xxxx;
            _974 = 0.0f;
            _975 = 1.0f;
        }
        float4 _995 = _973 + float4(_19_m108.x * _975, (_19_m108.y * _975) + ((_19_m108.w * _974) * 0.5f), _19_m108.z * _975, (_19_m108.w * _975) + ((_19_m108.y * _974) * 0.375f));
        float4 _1015 = _972 + float4(_19_m109.x * _975, (_19_m109.y * _975) + ((_19_m109.w * _974) * 0.5f), _19_m109.z * _975, (_19_m109.w * _975) + ((_19_m109.y * _974) * 0.375f));
        float4 _1035 = _971 + float4(_19_m110.x * _975, (_19_m110.y * _975) + ((_19_m110.w * _974) * 0.5f), _19_m110.z * _975, (_19_m110.w * _975) + ((_19_m110.y * _974) * 0.375f));
        float4 _1039 = float4(_582, 1.0f);
        float3 _1045 = max(float3(dot(_995, _1039), dot(_1015, _1039), dot(_1035, _1039)), 0.0f.xxx) * _640;
        float3 _1053 = ((_995.xyz * 0.2125999927520751953125f) + (_1015.xyz * 0.715200006961822509765625f)) + (_1035.xyz * 0.072200000286102294921875f);
        float3 _1057 = _1053 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1053, _1053)));
        float _1059 = abs(_1057.y);
        float3 _1060 = _1057;
        _1060.y = _1059;
        float4 _1061 = float4(_1060.x, _1060.y, _1060.z, 0.0f.xxxx.w);
        _1061.w = 1.0f;
        float4 _1065 = float4(_1057.x, _1059, _1057.z, 1.0f);
        float3 _1070 = max(float3(dot(_995, _1065), dot(_1015, _1065), dot(_1035, _1065)), 0.0f.xxx);
        float _1078 = _1045.z;
        float _1079 = _1045.y;
        float4 _1084 = lerp(float4(_1078, _1079, -1.0f, 0.666666686534881591796875f), float4(_1079, _1078, 0.0f, -0.3333333432674407958984375f), step(_1078, _1079).xxxx);
        float _1085 = _1045.x;
        float _1086 = _1084.x;
        float4 _1094 = lerp(float4(_1086, _1084.yw, _1085), float4(_1085, _1084.yz, _1086), step(_1086, _1085).xxxx);
        float _1095 = _1094.x;
        float _1096 = _1094.w;
        float _1097 = _1094.y;
        float _1099 = _1095 - min(_1096, _1097);
        float _1109 = frac(abs(_1094.z + ((_1096 - _1097) / ((6.0f * _1099) + 9.9999997473787516355514526367188e-05f))));
        float _1116 = min(_1099 / (_1095 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1109 - 0.5f))) * clamp(_1095, 0.0f, 1.0f));
        float _1118 = 2.0f / (2.0f - _1116);
        _1134 = _1061;
        _1135 = _1045;
        _1136 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1109, _1116, _1118).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1116.xxx) * _1118;
        _1137 = max(max(max(_1070.x, _1070.y), _1070.z), 0.0f) * _640;
    }
    else
    {
        _1134 = 0.0f.xxxx;
        _1135 = 1.0f.xxx;
        _1136 = _19_m81.xyz;
        _1137 = _640;
    }
    bool3 _1156 = (_49_m37 > 0.5f).xxx;
    float3 _1157 = _5 * _581;
    float3 _1158 = float3(_1156.x ? _582.x : _1157.x, _1156.y ? _582.y : _1157.y, _1156.z ? _582.z : _1157.z);
    float _1160 = 1.0f / length(_1158);
    float3 _1170 = normalize(mul(float3x3(_6.xyz * _1160, (cross(_1158, _6.xyz) * ((_6.w > 0.0f) ? 1.0f : (-1.0f))) * _1160, _1158 * _1160), _459));
    float2 _1176 = (_3 * _49_m40.xy) + _49_m40.zw;
    float2 _1177 = ddx(_3);
    float2 _1178 = ddy(_3);
    float _1185 = min(_49_m35, 20.0f);
    float _1186 = 1.0f / _1185;
    float2 _1194 = ((_1170.xy / max(_1170.z, 0.001000000047497451305389404296875f).xx) * ((-1.0f) * _49_m36)) * _1186;
    float _1197;
    float _1197_copy;
    float2 _1200;
    float2 _1200_copy;
    float2 _1204;
    float _1205;
    float _1207;
    _1197 = 1.0f - _1186;
    _1200 = _1194;
    _1204 = 0.0f.xx;
    _1205 = 0.0f;
    _1207 = 1.0f;
    float _1198;
    float2 _1201;
    float _1203;
    float _1206;
    float _1222;
    float _1202 = 0.0f;
    [loop]
    for (;;)
    {
        if (_1202 < (_1185 + 1.0f))
        {
            _1206 = _51.SampleGrad(_52, _1176 + _1200, _1177 * _19_m17, _1178 * _19_m17).x;
            if (_1206 > _1197)
            {
                _1222 = _1206;
                break;
            }
            _1203 = _1202 + 1.0f;
            _1201 = _1200 + _1194;
            _1198 = _1197 - _1186;
            _1197_copy = _1197;
            _1197 = _1198;
            _1200_copy = _1200;
            _1200 = _1201;
            _1202 = _1203;
            _1204 = _1200_copy;
            _1205 = _1206;
            _1207 = _1197_copy;
            continue;
        }
        else
        {
            _1222 = _1205;
            break;
        }
    }
    float4 _1234 = _51.SampleBias(_52, (_1204 + (_1194 * ((_1205 - _1207) / (((_1205 - _1222) + _1197) - _1207)))) + _1176, _19_m16);
    float _1244 = 1.0f - _49_m30;
    float _1245 = _1244 * _1244;
    float _1246 = max(_1245, 0.0078125f);
    float4 _1250 = _50.SampleBias(_26, _3, _19_m16);
    float _1251 = _1250.x;
    float3 _1258 = _49_m34.xyz * lerp(0.039999999105930328369140625f, 1.0f, _49_m31);
    float3 _1262 = lerp(_583, _582, _49_m32.xxx);
    float3 _1969;
    float _1970;
    float _1971;
    float _1972;
    float3 _1973;
    float3 _1974;
    [branch]
    if ((clamp(_618 + _631, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1275 = 1.0f - _498;
        bool3 _1281 = _468.xxx;
        float3 _1283 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1287 = float3(_1281.x ? _1283.x : _10.x, _1281.y ? _1283.y : _10.y, _1281.z ? _1283.z : _10.z) * _19_m89.z;
        float3 _1289 = float3(_1281.x ? _9.xzy.x : _9.x, _1281.y ? _9.xzy.y : _9.y, _1281.z ? _9.xzy.z : _9.z);
        float3 _1291 = abs(_1289) - 0.20000000298023223876953125f.xxx;
        float3 _1294 = max((_1291 * _1291) * _1291, 6.103515625e-05f.xxx);
        float3 _1297 = _1294 / dot(_1294, 1.0f.xxx).xxx;
        float2 _1305 = _1287.xy;
        float2 _1310 = _1287.zy;
        float4 _1320 = ((_53.SampleBias(_26, _1287.xz, _19_m16) * _1297.y) + (_53.SampleBias(_26, _1305, _19_m16) * _1297.z)) + (_53.SampleBias(_26, _1310, _19_m16) * _1297.x);
        float _1321 = _1320.w;
        float _1323 = 1.10000002384185791015625f - _1321;
        float _1332 = max(smoothstep(0.800000011920928955078125f - _1321, _1323, clamp((_618 * _1275) + (_582.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1321, _1323, clamp(_630 * _1275, 0.0f, 1.0f)));
        float _1339 = smoothstep(0.5f, 0.75f, _498);
        float _1341 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, lerp(_502, _1244, _1251));
        float _1342 = lerp(0.0f, smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_493 * _1275, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))), _1251);
        float _1345 = clamp(_1341 + _1339, 0.0f, 1.0f) * max(_618, _631);
        bool _1349 = !((step(_618, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _631)) != 0.0f);
        bool2 _1350 = _1349.xx;
        float2 _1352 = (1.0f - _631).xx;
        float2 _1353 = float2(_1350.x ? float2(3.0f, 4.345600128173828125f).x : _1352.x, _1350.y ? float2(3.0f, 4.345600128173828125f).y : _1352.y);
        float _1354 = 1.0f - _1345;
        float _1357 = _1349 ? _19_m10.x : 1.0f;
        float _1359 = _1357 * _1353.x;
        float _1361 = _1357 * _1353.y;
        float3 _1362 = _1287 * 20.0f;
        float3 _1363 = _1287 * 34.345600128173828125f;
        float3 _1365 = pow(max(_1291, 0.0f.xxx), 10.0f.xxx);
        float3 _1369 = _1365 / max(dot(_1365, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1371 = _1369.y;
        float2 _1372 = _1362.xz * 1.0f;
        float2 _1373 = floor(_1372);
        float2 _1376 = frac(_1373 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1380 = _1376 + dot(_1376, _1376 + 34.345001220703125f.xx).xx;
        float _1381 = _1380.x;
        float _1382 = _1380.y;
        float2 _1386 = frac(float2(_1381 * _1382, _1381 + _1382));
        float2 _1389 = frac((_1373 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1393 = _1389 + dot(_1389, _1389 + 34.345001220703125f.xx).xx;
        float _1394 = _1393.x;
        float _1395 = _1393.y;
        float2 _1399 = frac(float2(_1394 * _1395, _1394 + _1395));
        float _1405 = _1386.x;
        float _1407 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1405);
        float2 _1408 = ((_1372 - _1373) + ((((_1399 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1411 = _1408.y;
        float2 _1415 = float2(_1408.x * 1.25f, _1411 * ((_1411 < 0.0f) ? 1.25f : 0.75f));
        float _1418 = _1359 + _1405;
        float _1422 = _1349 ? frac(_1418) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1418, 0.0f, 1.0f));
        float _1434 = _1386.y;
        float _1437 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1422) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1422)) * step(0.001000000047497451305389404296875f, smoothstep(_1407, 0.0f, length(_1415)))) * step(_1354, _1434 - 0.100000001490116119384765625f);
        float _1440 = _1437 * _1371;
        float _1448 = _1369.z;
        float2 _1449 = _1362.xy * 1.0f;
        float2 _1450 = floor(_1449);
        float2 _1453 = frac(_1450 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1457 = _1453 + dot(_1453, _1453 + 34.345001220703125f.xx).xx;
        float _1458 = _1457.x;
        float _1459 = _1457.y;
        float2 _1463 = frac(float2(_1458 * _1459, _1458 + _1459));
        float2 _1466 = frac((_1450 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1470 = _1466 + dot(_1466, _1466 + 34.345001220703125f.xx).xx;
        float _1471 = _1470.x;
        float _1472 = _1470.y;
        float2 _1476 = frac(float2(_1471 * _1472, _1471 + _1472));
        float _1482 = _1463.x;
        float _1484 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1482);
        float2 _1485 = ((_1449 - _1450) + ((((_1476 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1488 = _1485.y;
        float2 _1492 = float2(_1485.x * 1.25f, _1488 * ((_1488 < 0.0f) ? 1.25f : 0.75f));
        float _1495 = _1359 + _1482;
        float _1499 = _1349 ? frac(_1495) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1495, 0.0f, 1.0f));
        float _1511 = _1463.y;
        float _1514 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1499) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1499)) * step(0.001000000047497451305389404296875f, smoothstep(_1484, 0.0f, length(_1492)))) * step(_1354, _1511 - 0.100000001490116119384765625f);
        float _1517 = _1514 * _1448;
        float _1525 = _1369.x;
        float2 _1526 = _1362.zy * 1.0f;
        float2 _1527 = floor(_1526);
        float2 _1530 = frac(_1527 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1534 = _1530 + dot(_1530, _1530 + 34.345001220703125f.xx).xx;
        float _1535 = _1534.x;
        float _1536 = _1534.y;
        float2 _1540 = frac(float2(_1535 * _1536, _1535 + _1536));
        float2 _1543 = frac((_1527 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1547 = _1543 + dot(_1543, _1543 + 34.345001220703125f.xx).xx;
        float _1548 = _1547.x;
        float _1549 = _1547.y;
        float2 _1553 = frac(float2(_1548 * _1549, _1548 + _1549));
        float _1559 = _1540.x;
        float _1561 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1559);
        float2 _1562 = ((_1526 - _1527) + ((((_1553 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1565 = _1562.y;
        float2 _1569 = float2(_1562.x * 1.25f, _1565 * ((_1565 < 0.0f) ? 1.25f : 0.75f));
        float _1572 = _1359 + _1559;
        float _1576 = _1349 ? frac(_1572) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1572, 0.0f, 1.0f));
        float _1588 = _1540.y;
        float _1591 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1576) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1576)) * step(0.001000000047497451305389404296875f, smoothstep(_1561, 0.0f, length(_1569)))) * step(_1354, _1588 - 0.100000001490116119384765625f);
        float _1594 = _1591 * _1525;
        float2 _1607 = (float4(((clamp(_1415 / _1407.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1399.x)) * _1437) * _1371, _1440, _1434).xy + float4(((clamp(_1492 / _1484.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1476.x)) * _1514) * _1448, _1517, _1511).xy) + float4(((clamp(_1569 / _1561.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1553.x)) * _1591) * _1525, _1594, _1588).xy;
        float _1609 = max(_1594, max(_1440, _1517));
        float4 _1612 = float4(_1607, _1609, 0.0f);
        float2 _1614 = _1363.xz * 1.0f;
        float2 _1615 = floor(_1614);
        float2 _1618 = frac(_1615 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1622 = _1618 + dot(_1618, _1618 + 34.345001220703125f.xx).xx;
        float _1623 = _1622.x;
        float _1624 = _1622.y;
        float2 _1628 = frac(float2(_1623 * _1624, _1623 + _1624));
        float2 _1631 = frac((_1615 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1635 = _1631 + dot(_1631, _1631 + 34.345001220703125f.xx).xx;
        float _1636 = _1635.x;
        float _1637 = _1635.y;
        float2 _1641 = frac(float2(_1636 * _1637, _1636 + _1637));
        float _1647 = _1628.x;
        float _1649 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1647);
        float2 _1650 = ((_1614 - _1615) + ((((_1641 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1653 = _1650.y;
        float2 _1657 = float2(_1650.x * 1.25f, _1653 * ((_1653 < 0.0f) ? 1.25f : 0.75f));
        float _1660 = _1361 + _1647;
        float _1664 = _1349 ? frac(_1660) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1660, 0.0f, 1.0f));
        float _1676 = _1628.y;
        float _1679 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1664) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1664)) * step(0.001000000047497451305389404296875f, smoothstep(_1649, 0.0f, length(_1657)))) * step(_1354, _1676 - 0.100000001490116119384765625f);
        float _1682 = _1679 * _1371;
        float2 _1687 = _1363.xy * 1.0f;
        float2 _1688 = floor(_1687);
        float2 _1691 = frac(_1688 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1695 = _1691 + dot(_1691, _1691 + 34.345001220703125f.xx).xx;
        float _1696 = _1695.x;
        float _1697 = _1695.y;
        float2 _1701 = frac(float2(_1696 * _1697, _1696 + _1697));
        float2 _1704 = frac((_1688 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1708 = _1704 + dot(_1704, _1704 + 34.345001220703125f.xx).xx;
        float _1709 = _1708.x;
        float _1710 = _1708.y;
        float2 _1714 = frac(float2(_1709 * _1710, _1709 + _1710));
        float _1720 = _1701.x;
        float _1722 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1720);
        float2 _1723 = ((_1687 - _1688) + ((((_1714 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1726 = _1723.y;
        float2 _1730 = float2(_1723.x * 1.25f, _1726 * ((_1726 < 0.0f) ? 1.25f : 0.75f));
        float _1733 = _1361 + _1720;
        float _1737 = _1349 ? frac(_1733) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1733, 0.0f, 1.0f));
        float _1749 = _1701.y;
        float _1752 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1737) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1737)) * step(0.001000000047497451305389404296875f, smoothstep(_1722, 0.0f, length(_1730)))) * step(_1354, _1749 - 0.100000001490116119384765625f);
        float _1755 = _1752 * _1448;
        float2 _1760 = _1363.zy * 1.0f;
        float2 _1761 = floor(_1760);
        float2 _1764 = frac(_1761 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1768 = _1764 + dot(_1764, _1764 + 34.345001220703125f.xx).xx;
        float _1769 = _1768.x;
        float _1770 = _1768.y;
        float2 _1774 = frac(float2(_1769 * _1770, _1769 + _1770));
        float2 _1777 = frac((_1761 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1781 = _1777 + dot(_1777, _1777 + 34.345001220703125f.xx).xx;
        float _1782 = _1781.x;
        float _1783 = _1781.y;
        float2 _1787 = frac(float2(_1782 * _1783, _1782 + _1783));
        float _1793 = _1774.x;
        float _1795 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1793);
        float2 _1796 = ((_1760 - _1761) + ((((_1787 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1799 = _1796.y;
        float2 _1803 = float2(_1796.x * 1.25f, _1799 * ((_1799 < 0.0f) ? 1.25f : 0.75f));
        float _1806 = _1361 + _1793;
        float _1810 = _1349 ? frac(_1806) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1806, 0.0f, 1.0f));
        float _1822 = _1774.y;
        float _1825 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1810) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1810)) * step(0.001000000047497451305389404296875f, smoothstep(_1795, 0.0f, length(_1803)))) * step(_1354, _1822 - 0.100000001490116119384765625f);
        float _1828 = _1825 * _1525;
        float2 _1836 = (float4(((clamp(_1657 / _1649.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1641.x)) * _1679) * _1371, _1682, _1676).xy + float4(((clamp(_1730 / _1722.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1714.x)) * _1752) * _1448, _1755, _1749).xy) + float4(((clamp(_1803 / _1795.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1787.x)) * _1825) * _1525, _1828, _1822).xy;
        float4 _1841 = float4(_1836, max(_1828, max(_1682, _1755)), 0.0f);
        float _1843 = step(max(float2(_1407 * _1437, _424) * _1371, max(float2(_1484 * _1514, _424) * _1448, float2(_1561 * _1591, _424) * _1525)).x, 0.00999999977648258209228515625f);
        float2 _1847 = _1612.xy + (_1841.xy * _1843);
        float3 _1856 = float3((_1320.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1847.x, _1847.y, 0.0f.xxx.z);
        float2 _1860 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1863 = float3(_1289.x, 0.0f, _1289.z);
        float3 _1869 = abs(_1863 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1863, _1863)))) - 0.20000000298023223876953125f.xxx;
        float3 _1872 = max((_1869 * _1869) * _1869, 6.103515625e-05f.xxx);
        float3 _1875 = _1872 / dot(_1872, 1.0f.xxx).xxx;
        float _1894 = _1875.z;
        float _1896 = _1875.x;
        float4 _1898 = (_54.SampleBias(_26, _1305, _19_m16) * _1894) + (_54.SampleBias(_26, _1310, _19_m16) * _1896);
        float2 _1910 = _1856.xy + ((((_1898.xy * 2.0f) - 1.0f.xx) * ((_54.SampleBias(_26, _1305 + _1860, _19_m16).w * _1894) + (_54.SampleBias(_26, _1310 + _1860, _19_m16).w * _1896))) * _1345);
        float3 _1911 = float3(_1910.x, _1910.y, _1856.z);
        float _1912 = _1898.z;
        float _1917 = max(max(max(_1612.zw * step(0.00999999977648258209228515625f, _1609), _1841.zw * _1843).x, step(1.0099999904632568359375f - _1345, _1320.z)), smoothstep(1.0f - _1912, 1.10000002384185791015625f - _1912, _1345) * _1345);
        float2 _1918 = _1910.xy;
        _1911.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1918, _1918), 0.0f, 1.0f)));
        float3 _1925 = normalize(_1911);
        float3 _1926 = cross(_582, float3(0.0f, 1.0f, 0.0f));
        bool3 _1929 = (dot(_1926, _1926) > 6.103515625e-05f).xxx;
        float3 _1930 = normalize(_1926);
        float3 _1931 = float3(_1929.x ? _1930.x : float3(1.0f, 0.0f, 0.0f).x, _1929.y ? _1930.y : float3(1.0f, 0.0f, 0.0f).y, _1929.z ? _1930.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1942 = min(_502, 0.0500000007450580596923828125f);
        float _1943 = lerp(_502, _1942, _1917);
        float _1961 = lerp(1.0f, 0.5f, (_1332 * (1.0f - _1342)) * (1.0f - _1341));
        _1969 = normalize(lerp(_582, normalize(((_1931 * _1925.x) + (cross(_1931, _582) * _1925.y)) + (_582 * _1925.z)), _1917.xxx));
        _1970 = _1917;
        _1971 = lerp(_1942, _1244, _1251);
        _1972 = max(_1943 - ((0.20000000298023223876953125f * _1342) * _1332), min(0.20000000298023223876953125f, _1943));
        _1973 = _515 * _1961;
        _1974 = lerp(_493, _493 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_493, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1917 * _1339).xxx) * _1961;
    }
    else
    {
        _1969 = _582;
        _1970 = 0.0f;
        _1971 = 0.00999999977648258209228515625f;
        _1972 = _502;
        _1973 = _515;
        _1974 = _493;
    }
    float3 _2145;
    float _2146;
    float3 _2147;
    float3 _2148;
    float _2149;
    [branch]
    if (_621 > 0.00999999977648258209228515625f)
    {
        bool3 _1978 = _468.xxx;
        float3 _1980 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1981 = float3(_1978.x ? _1980.x : _10.x, _1978.y ? _1980.y : _10.y, _1978.z ? _1980.z : _10.z);
        float3 _1984 = _1981 * _19_m89.z;
        float3 _1986 = float3(_1978.x ? _9.xzy.x : _9.x, _1978.y ? _9.xzy.y : _9.y, _1978.z ? _9.xzy.z : _9.z);
        float3 _1988 = abs(_1986) - 0.20000000298023223876953125f.xxx;
        float3 _1991 = max((_1988 * _1988) * _1988, 6.103515625e-05f.xxx);
        float3 _1994 = _1991 / dot(_1991, 1.0f.xxx).xxx;
        float _2010 = _1994.y;
        float _2012 = _1994.z;
        float _2015 = _1994.x;
        float4 _2017 = ((_55.SampleBias(_26, _1984.xz, _19_m16) * _2010) + (_55.SampleBias(_26, _1984.xy, _19_m16) * _2012)) + (_55.SampleBias(_26, _1984.zy, _19_m16) * _2015);
        float _2018 = _1986.y;
        float _2025 = clamp(_621 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1981.y) * clamp(_621 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _2036 = smoothstep(2.0f - _2025, 2.349999904632568359375f - _2025, ((_2018 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _2017.z) * ((_500 * _500) * float(gl_FrontFacing));
        float _2048 = lerp(1.0f, 0.5f, ((_2025 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1974 * (1.0f - _498), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _2017.w) * ((_2018 * 0.25f) + 0.75f));
        float3 _2050 = _2036.xxx;
        float2 _2056 = (_2017.xy * 2.0f) - 1.0f.xx;
        float3 _2057 = float3(_2056.x, _2056.y, _422.z);
        float2 _2058 = _2056.xy;
        _2057.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2058, _2058), 0.0f, 1.0f)));
        float2 _2066 = _2057.xy * 2.0f;
        float3 _2068 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2066.x, _2066.y, _2057.z), _2050);
        float3 _2072 = _2068 * rsqrt(max(6.103515625e-05f, dot(_2068, _2068)));
        float _2073 = _582.y;
        float _2076 = step(0.00999999977648258209228515625f, 1.0f - (_2073 * _2073));
        float _2080 = lerp(_582.z, _2073, _2076);
        float3 _2087 = (float3(0.0f, _2076, 1.0f - _2076) - (_582 * _2080)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2080 * _2080)));
        float3 _2101 = _1984 * 4.0f;
        float4 _2121 = ((_56.SampleLevel(_24, _2101.xz, 0.0f) * _2010) + (_56.SampleLevel(_24, _2101.xy, 0.0f) * _2012)) + (_56.SampleLevel(_24, _2101.zy, 0.0f) * _2015);
        float2 _2124 = (_2121.xz * 2.0f) - 1.0f.xx;
        float _2135 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2124.x, _2121.y, _2124.y), (floor(_459 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2136 = _2135 * _2135;
        float _2139 = _2136 * ((_2136 * 2.0f) * _2036);
        float3 _2140 = 1.0f.xxx * _2139;
        _2145 = ((cross(_2087, _582) * _2072.x) + (_2087 * _2072.y)) + (_582 * _2072.z);
        _2146 = lerp(lerp(_1972, 0.89999997615814208984375f, clamp(_2036 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2139);
        _2147 = lerp(_1973 * _2048, 0.3079999983310699462890625f.xxx, _2050) + (_2140 * 0.5f);
        _2148 = lerp(_1974 * _2048, 0.87999999523162841796875f.xxx, _2050) + _2140;
        _2149 = lerp(_498, 0.0f, _2036);
    }
    else
    {
        _2145 = _582;
        _2146 = _1972;
        _2147 = _1973;
        _2148 = _1974;
        _2149 = _498;
    }
    float _2151 = 0.959999978542327880859375f - (_2149 * 0.959999978542327880859375f);
    float3 _2152 = _2148 * _2151;
    float3 _2155 = lerp(0.039999999105930328369140625f.xxx * _497.y, _2148, _2149.xxx);
    float3 _2156 = _2147 * _2151;
    float _2158 = max(_2146 * _2146, 0.0078125f);
    bool _2165 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _2178 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2178.y = -_2178.y;
    float2 _2194 = lerp(((sqrt(sqrt(abs(_2178 * 0.5f))) * float2(int2(sign(_2178)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2165).xx);
    float4 _2196 = float4(_2194.x, _2194.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2196.z = 1.0f;
    _2196.w = _2165 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2209 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2213 = normalize(float3(_2209.x, 6.103515625e-05f, _2209.z));
    float3 _2223 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2227 = _2223 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _2231 = int(_585.x);
    int _2232 = int(_585.y);
    float4 _2236 = _40.Load(int3(int3(_2231, _2232, 0).xy, 0));
    float _2241 = _2236.y;
    float _2244 = lerp(lerp(1.0f, _2236.x, _38_m6.x), 1.0f, _19_m80.z);
    float _2245 = dot(_2145, _2209);
    float3 _2252 = _2156 * _19_m79.z;
    float3 _2253 = _2252 * 0.64999997615814208984375f;
    float _2257 = dot(_2152, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2270 = clamp(-dot(_2213.xz, normalize(_595.xz)), 0.0f, 1.0f);
    float _2274 = 1.0f - _19_m91.x;
    float _2282 = smoothstep(0.25f, 1.0f, clamp(lerp(_2245, ((-_2245) * ((_2245 * 0.5f) - 1.0f)) + 0.5f, (_2270 * smoothstep(0.25f, 0.75f, 1.0f - abs(_595.y))) * _2274) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _2289 = max(max(_2282, _2282), _2282) - min(min(_2282, _2282), _2282);
    float _2291 = smoothstep(0.25f, 1.0f, dot(_2145, _595));
    float _2292 = _500 * _2241;
    float _2299 = min(min(_2241, _500), _2282);
    float _2300 = _2291 * _2292;
    float3 _2304 = ((clamp(dot(_582, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1136, 1.0f.xxx, (_19_m80.y * _2299).xxx);
    float3 _2306 = _2299.xxx;
    float3 _2329 = _2244.xxx;
    float3 _2330 = lerp((_2304 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1137), 1.5f), clamp(_1137, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2227, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2227, _2306) + ((_2304 * clamp(_1137, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2223 * _19_m91.y)))) * _19_m79.y, _2329);
    float3 _2331 = lerp(lerp(lerp(dot(_2253, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2253, 1.2000000476837158203125f.xxx), _2252, clamp((_2292 * _2291) + _2282, 0.0f, 1.0f).xxx), _2152, _2306);
    float3 _2337 = _2331 * ((1.0f - _2289).xxx + (_2282.xxxx.xyz * _2289));
    float3 _2346 = lerp(lerp(_2252, lerp(_2257.xxx, _2152, 1.2000000476837158203125f.xxx), _2300.xxx), _2337 * clamp(dot(_2331, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2337, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2329);
    float4 _2350 = float4(_2346, _2244);
    float _2352 = lerp(_2300, _2299, _2244);
    float _2355 = lerp(_19_m79.z, 1.0f, _2352);
    float3 _2363 = float3(_595.x, lerp(0.5f, _2209.y, _2244), _595.z);
    float3 _2374 = normalize(((_2209 * _2244) + ((_2363 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2363, _2363)))) * 2.0f)) + (_459 * (2.0f + _2244)));
    float _2376 = clamp(dot(_1969, _459), 0.0f, 1.0f);
    float _2377 = dot(_1969, _2374);
    float _2378 = _2158 * _2158;
    float _2382 = (((_2377 * _2378) - _2377) * _2377) + 1.0f;
    float _2383 = _2382 * _2382;
    float _2387 = 2.0f * _2376;
    float _2389 = (1.0f + _2376) - _2376;
    float3 _2397 = _2155 * clamp((((_2378 != _2383) ? (_2378 / _2383) : 1.0f) * (0.5f / ((_2387 + (_2158 * _2389)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
    bool _2398 = _1251 > 0.001000000047497451305389404296875f;
    float3 _2440;
    float3 _2441;
    if (_2398)
    {
        float _2403 = dot(_1262, _2374);
        float _2405 = clamp(dot(_1262, _459), 0.0f, 1.0f);
        float _2406 = 1.0f - clamp(dot(_459, _2374), 0.0f, 1.0f);
        float _2407 = _2406 * _2406;
        float _2409 = (_2406 * _2407) * _2407;
        float3 _2414 = ((_1258 * (1.0f - _2409)) + _2409.xxx) * _1251;
        float3 _2415 = 1.0f.xxx - _2414;
        float _2418 = _1246 * _1246;
        float _2422 = (((_2403 * _2418) - _2403) * _2403) + 1.0f;
        float _2423 = _2422 * _2422;
        _2440 = lerp(1.0f.xxx, _2415, _1251.xxx);
        _2441 = (_2397 * (_2415 * _2415)) + clamp((_2414 * ((_2418 != _2423) ? (_2418 / _2423) : 1.0f)) * (0.5f / (((2.0f * _2405) + (_1246 * ((1.0f + _2405) - _2405))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
    }
    else
    {
        _2440 = 1.0f.xxx;
        _2441 = _2397;
    }
    float _2451 = (1.0f - _49_m6) + (_506 * _49_m6);
    float3 _2453 = (((_2330 * _2346) * _2440) * _2451) + ((_2441 * ((_2330 * (((_2352 * 0.5f) + 0.5f) * _2355)) * 1.0f)) * _19_m92.w);
    float _2454 = dot(_2453, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2457 = clamp(_2454 - 0.5f, 0.0f, 0.5f);
    float3 _2493 = normalize(cross(_595, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2499 = dot(_459, _2145);
    float _2501 = 1.0f - abs(_2499);
    float _2523 = dot(_2213, _2145);
    float _2535 = 1.0f - _2244;
    float _2562 = lerp(_2146, _1971, _1970);
    float _2563 = _2562 * _2562;
    float _2564 = _2376 * _2376;
    float _2565 = _2564 * _2376;
    float2 _2566 = float2(1.0f, _2376);
    float2 _2569 = float2(1.0f, _2563);
    float3 _2572 = float3(1.0f, _2563, (_2563 * _2563) * _2563);
    float _2577 = dot(mul(_2566, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2569) / dot(mul(float3(1.0f, _2564, _2565), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2572);
    float _2582 = dot(mul(_2566, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2569) / dot(mul(float3(1.0f, _2376, _2565), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2572);
    float3 _2585 = (_2155 * _2577) + _2582.xxx;
    float _2586 = _2577 + _2582;
    float3 _2592 = -_459;
    float3 _2604 = _62.SampleLevel(_25, reflect(_2592, _1969), (1.2000000476837158203125f * log2(max(_2562, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2585 + ((_2155 * ((1.0f - _2586) / _2586)) * _2585)) * 1.0f);
    float3 _2650;
    if (_2398)
    {
        float _2618 = clamp(dot(_1262, _459), 0.0f, 1.0f);
        float _2619 = _2618 * _2618;
        float _2620 = _2619 * _2618;
        float2 _2621 = float2(1.0f, _2618);
        float2 _2624 = float2(1.0f, _1245);
        float3 _2627 = float3(1.0f, _1245, (_1245 * _1245) * _1245);
        float _2632 = dot(mul(_2621, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2624) / dot(mul(float3(1.0f, _2619, _2620), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2627);
        float _2637 = dot(mul(_2621, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2624) / dot(mul(float3(1.0f, _2618, _2620), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2627);
        float3 _2640 = (_1258 * _2632) + _2637.xxx;
        float _2641 = _2632 + _2637;
        _2650 = _2604 + ((_62.SampleLevel(_25, reflect(_2592, _1262), (1.2000000476837158203125f * log2(max(_1244, 0.001000000047497451305389404296875f))) + 5.0f).xyz * (_2640 + ((_1258 * ((1.0f - _2641) / _2641)) * _2640))) * _1251);
    }
    else
    {
        _2650 = _2604;
    }
    float3 _2657 = lerp(_2454.xxx, _2453, ((_2457 * _2457) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2501)) * _19_m87.w) * min(min(clamp(dot(_562, _2493) + 1.0f, 0.0f, 1.0f), _500), _2241)) * (lerp(0.25f.xxx, _2152, _19_m88.z.xxx) * clamp(dot(_2493, _2145), 0.0f, 1.0f))) + ((((((lerp(_1135 * (1.0f / max(max(max(_1135.x, _1135.y), _1135.z) * 0.5f, 1.0f)), _2227, _2329) * clamp(lerp(dot(_1134.xyz, _2145) * _1134.w, ((-_2523) * ((_2523 * 0.5f) - 1.0f)) + 0.5f, _2244), 0.0f, 1.0f)) * ((_2535 + (_2270 * _2244)) * _2274)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2501)) * min(_500, _2241)) * (_2535 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2257) * _2244))) * max(0.1500000059604644775390625f.xxx, _2152)));
    float2 _2660 = float2(_585);
    float2 _2662 = floor(_2660 * 0.03125f);
    int _2670 = int((_2662.x + (_2662.y * _34_m5)) * 8.0f);
    float _2677 = floor(_440 - (_19_m3.y * _34_m11));
    float _2681 = clamp(_2677, 0.0f, _34_m7 - 1.0f);
    int _2683 = int(_2681 * 8.0f);
    float3 _2685;
    _2685 = (_2657 + ((((_543.xyz * _49_m25.xyz) * _49_m7) + ((_49_m39.xyz * _1234.x) * _506)) * _2451)) + ((_2650 * ((clamp(_1137, 0.5f, 1.5f) * _19_m79.w) * _2355)) * _1136);
    float3 _2686;
    [loop]
    for (int _2688 = 0; _2688 <= 7; _2685 = _2686, _2688++)
    {
        uint _2706 = (_2677 <= _2681) ? (_30.Load(uint(_2670 + _2688) * 4 + 0) & _30.Load(uint((_19_m21.y + _2683) + _2688) * 4 + 0)) : 0u;
        uint _2707 = uint(_2688);
        _2686 = _2685;
        uint _2712;
        float3 _2709;
        [loop]
        for (uint _2711 = _2706; _2711 != 0u; _2686 = _2709, _2711 = _2712)
        {
            uint _2716 = firstbitlow(_2711);
            _2712 = _2711 ^ (1u << (_2716 & 31u));
            int _2722 = int((32u * _2707) + _2716) * 8;
            int _2725 = _2722 + 1;
            int _2728 = _2722 + 2;
            int _2731 = _2722 + 3;
            int _2734 = _2722 + 4;
            int _2737 = _2722 + 5;
            int _2740 = _2722 + 6;
            int _2743 = _2722 + 7;
            uint _2747 = uint(_36_m6[_2737].w);
            float _2822;
            if ((_2747 & 1u) == 1u)
            {
                uint _2753 = asuint(_36_m6[_2737].x);
                uint _2760 = asuint(_36_m6[_2737].y);
                uint _2767 = asuint(_36_m6[_2737].z);
                uint _2774 = asuint(_36_m6[_2740].x);
                uint _2781 = asuint(_36_m6[_2740].y);
                uint _2788 = asuint(_36_m6[_2740].z);
                float3 _2807 = abs(mul(float4(_555 - _36_m6[_2725].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2753).x, spvUnpackHalf2x16(_2767).x, spvUnpackHalf2x16(_2781).x, 0.0f), float4(spvUnpackHalf2x16(_2753 >> 16u).x, spvUnpackHalf2x16(_2767 >> 16u).x, spvUnpackHalf2x16(_2781 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2760).x, spvUnpackHalf2x16(_2774).x, spvUnpackHalf2x16(_2788).x, 0.0f), float4(spvUnpackHalf2x16(_2760 >> 16u).x, spvUnpackHalf2x16(_2774 >> 16u).x, spvUnpackHalf2x16(_2788 >> 16u).x, 0.0f))).xyz);
                float _2814 = _36_m6[_2743].x * 0.5f;
                float _2820 = 1.0f - clamp((max(max(_2807.x, _2807.y), _2807.z) - (_2814 + 0.5f)) / (0.5f - _2814), 0.0f, 1.0f);
                _2822 = _2820 * _2820;
            }
            else
            {
                _2822 = 1.0f;
            }
            if (false || (_2822 < 0.001000000047497451305389404296875f))
            {
                _2709 = _2686;
                continue;
            }
            float3 _3552;
            if (_36_m6[_2722].w < 1.5f)
            {
                float3 _3551;
                do
                {
                    uint _2835 = asuint(_36_m6[_2731].w);
                    if ((_2835 == 16u) || ((_36_m6[_2731].z + _19_m91.z) < 0.5f))
                    {
                        _3551 = _2686;
                        break;
                    }
                    bool _2847 = (uint(_36_m6[_2722].w) & 1u) == 0u;
                    bool _2851 = (!_2847) && (_36_m6[_2728].z > 0.0f);
                    bool _2852 = _2835 == 4u;
                    float _2853 = float(_2847);
                    float _2861 = (0.5f + (0.5f * _36_m6[_2728].y)) - abs(_36_m6[_2728].x);
                    float _2862 = _36_m6[_2728].y - _2861;
                    float _2869 = abs(max((1.0f - abs(_2861)) - abs(_2862), 0.00048828125f));
                    float3 _2873 = normalize(float3(_2861, _2862, (_36_m6[_2728].x >= 0.0f) ? _2869 : (-_2869)));
                    float _2879 = lerp(_36_m6[_2740].w, max(2.0f * _36_m6[_2734].y, 0.100000001490116119384765625f), float(_2852));
                    float3 _2884 = _36_m6[_2725].xyz - _555;
                    float3 _2885 = -_2873;
                    float3 _2890 = lerp(_2884, _2885 * dot(_2884, _2885), (float(_2852 && (_36_m6[_2734].z > 0.5f)) * _2853).xxx);
                    float _2891 = dot(_2890, _2890);
                    float _2892 = rsqrt(_2891);
                    float3 _2893 = _2890 * _2892;
                    float3 _2926;
                    float _2927;
                    if (_2851)
                    {
                        float3 _2897 = (_2873 * _36_m6[_2728].z) * 0.5f;
                        float3 _2898 = _2890 - _2897;
                        float3 _2899 = _2890 + _2897;
                        float _2900 = length(_2898);
                        float _2901 = length(_2899);
                        float3 _2910 = normalize(cross(cross(_2873, _2893), _2873));
                        _2926 = _2910;
                        _2927 = ((1.0f / ((((_2900 * _2901) + dot(_2898, _2899)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2910, _2898) / _2900) + (dot(_2910, _2899) / _2901)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2728].z * _2892, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2926 = _2893;
                        _2927 = 1.0f;
                    }
                    float _2949;
                    if (_2879 < 0.0f)
                    {
                        float _2937 = _2891 * (_36_m6[_2725].w * _36_m6[_2725].w);
                        float _2940 = clamp(1.0f - (_2937 * _2937), 0.0f, 1.0f);
                        _2949 = lerp(1.0f / (_2891 + 1.0f), _2927, float(_2851)) * (_2940 * _2940);
                    }
                    else
                    {
                        float3 _2943 = _2890 * _36_m6[_2725].w;
                        _2949 = _2927 * pow(1.0f - clamp(dot(_2943, _2943), 0.0f, 1.0f), _2879);
                    }
                    float _2954 = clamp((dot(_2926, _2885) - _36_m6[_2728].z) * _36_m6[_2728].w, 0.0f, 1.0f);
                    float _2957 = _2949 * lerp(1.0f, _2954 * _2954, _2853);
                    int _2959 = int(_36_m6[_2743].w);
                    float _3063;
                    if ((!_2851) && (_2959 >= 0))
                    {
                        uint _2965 = uint(_2959);
                        float2 _3056;
                        [branch]
                        if (_2853 != 0.0f)
                        {
                            float4 _2977 = mul(_65_m1[_2965], float4(_555.x, _627, _555.z, 1.0f));
                            _3056 = _65_m0[_2965].xy + (clamp(_2977.xy / _2977.w.xx, 0.0f.xx, 1.0f.xx) * _65_m0[_2965].zw);
                        }
                        else
                        {
                            float3 _2997 = mul(float4(-_2890, 0.0f), _65_m1[_2965]).xyz;
                            float3 _429 = _2997;
                            float3 _428 = _2997;
                            float3 _427 = abs(_2997);
                            uint _3006 = uint(int(_427.y > _427.x));
                            uint _3012 = (_427.z > _427[_3006]) ? 2u : _3006;
                            uint _3018 = (_3012 * 2u) + uint(_428[_3012] < 0.0f);
                            float _3022 = abs(_429[_3018 / 2u]);
                            float _3042 = 0.5f - (0.000244140625f / _65_m0[_2965].w);
                            _3056 = _65_m0[_2965].xy + (clamp(float2((float(_3018) + ((((_429[uint(_379[_3018].x)] * _380[_3018].x) / _3022) * _3042) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_429[uint(_379[_3018].y)] * _380[_3018].y) / _3022) * _3042)), 0.0f.xx, 1.0f.xx) * _65_m0[_2965].zw);
                        }
                        _3063 = _2957 * _63.SampleLevel(_25, _3056, 0.0f).x;
                    }
                    else
                    {
                        _3063 = _2957;
                    }
                    float _3064 = _3063 * _2822;
                    float3 _3550;
                    do
                    {
                        float3 _3549;
                        [branch]
                        if (_3064 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2852)
                            {
                                _3550 = lerp(_2686, _36_m6[_2722].xyz, (_3064 * (_36_m6[_2734].x * ((1.0f - _36_m6[_2734].w) + (smoothstep(-0.5f, 0.5f, dot(_583, _2926)) * _36_m6[_2734].w)))).xxx);
                                break;
                            }
                            float _3084 = dot(_2145, _2926);
                            float _3085 = clamp(_3084, 0.0f, 1.0f);
                            float _3388;
                            if (_2835 != 0u)
                            {
                                bool _3091 = _2847 || ((_2747 & 2u) != 0u);
                                int _3140;
                                if (_3091)
                                {
                                    _3140 = int(_36_m6[_2731].x);
                                }
                                else
                                {
                                    uint _3097 = asuint(_36_m6[_2728].w);
                                    uint _3099 = asuint(_36_m6[_2731].x);
                                    float3 _3100 = _555 - _36_m6[_2725].xyz;
                                    float3 _3101 = abs(_3100);
                                    float _3102 = _3101.x;
                                    float _3103 = _3101.y;
                                    float _3105 = _3101.z;
                                    int _3137;
                                    if ((_3102 > _3103) && (_3102 > _3105))
                                    {
                                        _3137 = int((_3100.x > 0.0f) ? (_3097 >> 24u) : ((_3097 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3136;
                                        if (_3103 > _3105)
                                        {
                                            _3136 = int((_3100.y > 0.0f) ? ((_3097 >> 8u) & 255u) : (_3097 & 255u));
                                        }
                                        else
                                        {
                                            _3136 = int((_3100.z > 0.0f) ? ((_3099 >> 8u) & 255u) : (_3099 & 255u));
                                        }
                                        _3137 = _3136;
                                    }
                                    _3140 = (_3137 < 80) ? _3137 : (-1);
                                }
                                bool _3141 = _3140 >= 0;
                                float _3387;
                                if (_3141)
                                {
                                    float3 _3145 = _555 - _36_m6[_2725].xyz;
                                    float4 _3165 = mul(_38_m10[_3140], float4((_555 - ((_3145 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3145, _3145)))) * _38_m11[_3140].x)) + (_583 * (_38_m11[_3140].y * 5.0f)), 1.0f));
                                    float _3166 = _3165.w;
                                    float3 _3169 = _3165.xyz / _3166.xxx;
                                    float2 _3170 = _3169.xy;
                                    float3 _3178 = _3169.xyz;
                                    bool3 _3179 = bool3(_3178.x <= 0.0f.xxx.x, _3178.y <= 0.0f.xxx.y, _3178.z <= 0.0f.xxx.z);
                                    bool3 _3180 = bool3(_3178.x >= 1.0f.xxx.x, _3178.y >= 1.0f.xxx.y, _3178.z >= 1.0f.xxx.z);
                                    float _3183 = _3169.z;
                                    float2 _3194 = ((_3170 * (_38_m12[_3140].zw - _38_m12[_3140].xy)) + _38_m12[_3140].xy).xy * _38_m13.zw;
                                    float2 _3196 = floor(_3194 + 0.5f.xx);
                                    float2 _3197 = _3194 - _3196;
                                    float _3199 = _3197.x + 0.5f;
                                    float _3200 = _3199 * _3199;
                                    float _3203 = 1.0f - _3197.x;
                                    float _3204 = min(_3197.x, 0.0f);
                                    float _3207 = _3197.x + 1.0f;
                                    float _3208 = max(_3197.x, 0.0f);
                                    float _3220 = _3197.y + 0.5f;
                                    float _3221 = _3220 * _3220;
                                    float _3224 = 1.0f - _3197.y;
                                    float _3225 = min(_3197.y, 0.0f);
                                    float _3228 = _3197.y + 1.0f;
                                    float _3229 = max(_3197.y, 0.0f);
                                    float3 _3241 = float3(0.1599999964237213134765625f * _3203, 0.1599999964237213134765625f * ((_3207 - (_3208 * _3208)) + 1.0f), _3200 * 0.07999999821186065673828125f);
                                    float3 _3242 = float3(0.1599999964237213134765625f * ((_3200 * 0.5f) - _3197.x), 0.1599999964237213134765625f * ((_3203 - (_3204 * _3204)) + 1.0f), 0.1599999964237213134765625f * _3207) + _3241;
                                    float3 _3244 = float3(0.1599999964237213134765625f * _3224, 0.1599999964237213134765625f * ((_3228 - (_3229 * _3229)) + 1.0f), _3221 * 0.07999999821186065673828125f);
                                    float3 _3245 = float3(0.1599999964237213134765625f * ((_3221 * 0.5f) - _3197.y), 0.1599999964237213134765625f * ((_3224 - (_3225 * _3225)) + 1.0f), 0.1599999964237213134765625f * _3228) + _3244;
                                    float3 _3251 = ((_3241 / _3242) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3253 = ((_3244 / _3245) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3255 = _3196 * _38_m13.xy;
                                    float _3256 = _3251.x;
                                    float _3257 = _3253.x;
                                    float _3260 = _3251.y;
                                    float _3263 = _3251.z;
                                    float _3266 = _3253.y;
                                    float _3273 = _3253.z;
                                    float _3280 = _3242.x;
                                    float _3281 = _3245.x;
                                    float _3283 = _3242.y;
                                    float _3285 = _3242.z;
                                    float _3287 = _3245.y;
                                    float _3291 = _3245.z;
                                    float _3349 = (((((((_3280 * _3281) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3256, _3257), _421).xy, _3183)) + ((_3283 * _3281) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3260, _3257), _421).xy, _3183))) + ((_3285 * _3281) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3263, _3257), _421).xy, _3183))) + ((_3280 * _3287) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3256, _3266), _421).xy, _3183))) + ((_3283 * _3287) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3260, _3266), _421).xy, _3183))) + ((_3285 * _3287) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3263, _3266), _421).xy, _3183))) + ((_3280 * _3291) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3256, _3273), _421).xy, _3183));
                                    float2 _3370 = min(_3170, 1.0f.xx - _3170);
                                    _3387 = _3141 ? lerp(1.0f, (any(bool3(_3179.x || _3180.x, _3179.y || _3180.y, _3179.z || _3180.z)) || ((asuint(_3183) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3349 + ((_3283 * _3291) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3260, _3273), _421).xy, _3183))) + ((_3285 * _3291) * _39.SampleCmpLevelZero(_27, float3(_3255 + float2(_3263, _3273), _421).xy, _3183))), _3091 ? min(_38_m11[_3140].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_3140].z - _3166) * 0.25f, min(_3370.x, _3370.y)))) : _38_m11[_3140].w) : 1.0f;
                                }
                                else
                                {
                                    _3387 = clamp(dot(_562, _2926) + 1.0f, 0.0f, 1.0f);
                                }
                                _3388 = _3387;
                            }
                            else
                            {
                                _3388 = 1.0f;
                            }
                            float _3468;
                            float3 _3469;
                            float _3470;
                            float3 _3471;
                            float3 _3472;
                            float _3473;
                            float _3474;
                            [branch]
                            if (_2835 == 0u)
                            {
                                float3 _3394 = _36_m6[_2722].xyz * _3064;
                                float3 _3407 = _2350.xyz;
                                _3468 = _3064;
                                _3469 = (_36_m6[_2722].xyz * ((1.0f - _36_m6[_2734].y) + ((1.0f / max(1.0f, max(max(_3394.x, _3394.y), _3394.z) * lerp(0.75f, 0.5f, _2535))) * _36_m6[_2734].y))) * lerp(0.25f * _36_m6[_2734].x, 1.0f, clamp(_3084 + 0.5f, 0.0f, 1.0f));
                                _3470 = _3085;
                                _3471 = _3407;
                                _3472 = _3407;
                                _3473 = 1.0f;
                                _3474 = 0.0f;
                            }
                            else
                            {
                                float _3462;
                                float _3463;
                                float3 _3464;
                                float3 _3465;
                                float _3466;
                                float _3467;
                                if (_2835 == 3u)
                                {
                                    _3462 = _3064 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2734].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2734].x), _2501) * _3388);
                                    _3463 = clamp(dot(_2145, -normalize(cross(_595, cross(_595, _2926)))), 0.0f, 1.0f);
                                    _3464 = lerp(0.5f.xxx, _2152, _36_m6[_2734].y.xxx);
                                    _3465 = 0.0f.xxx;
                                    _3466 = 1.0f;
                                    _3467 = 0.0f;
                                }
                                else
                                {
                                    bool _3432 = _2835 == 1u;
                                    float _3456;
                                    float3 _3457;
                                    float _3458;
                                    float _3459;
                                    if (_3432)
                                    {
                                        _3456 = clamp(clamp(_3084 + _36_m6[_2734].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3388;
                                        _3457 = _2156 * _36_m6[_2734].y;
                                        _3458 = 1.0f;
                                        _3459 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3442 = _2835 == 2u;
                                        float _3454;
                                        if (_3442)
                                        {
                                            _3454 = smoothstep(_36_m6[_2734].x + 0.0500000007450580596923828125f, _36_m6[_2734].x - 0.0500000007450580596923828125f, _2146) * ((1.0f - _36_m6[_2734].z) + (step(0.5f, _2149) * _36_m6[_2734].z));
                                        }
                                        else
                                        {
                                            _3454 = 1.0f;
                                        }
                                        _3456 = _3085;
                                        _3457 = 0.0f.xxx;
                                        _3458 = _3454;
                                        _3459 = _3442 ? _36_m6[_2734].y : 0.0f;
                                    }
                                    bool3 _3460 = _3432.xxx;
                                    _3462 = _3064;
                                    _3463 = _3456;
                                    _3464 = float3(_3460.x ? _2152.x : 0.0f.xxx.x, _3460.y ? _2152.y : 0.0f.xxx.y, _3460.z ? _2152.z : 0.0f.xxx.z);
                                    _3465 = _3457;
                                    _3466 = _3458;
                                    _3467 = _3459;
                                }
                                _3468 = _3462;
                                _3469 = _36_m6[_2722].xyz;
                                _3470 = _3463;
                                _3471 = _3464;
                                _3472 = _3465;
                                _3473 = _3466;
                                _3474 = _3467;
                            }
                            float3 _3539;
                            [branch]
                            if (_2835 != 3u)
                            {
                                float _3479 = lerp(_2158, 0.00999999977648258209228515625f, _3474);
                                float3 _3481 = normalize(_2926 + _459);
                                float _3482 = dot(_1969, _3481);
                                float _3483 = _3479 * _3479;
                                float _3487 = (((_3482 * _3483) - _3482) * _3482) + 1.0f;
                                float _3488 = _3487 * _3487;
                                float3 _3499 = _2155 * clamp((((_3483 != _3488) ? (_3483 / _3488) : 1.0f) * (0.5f / ((_2387 + (_3479 * _2389)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
                                float3 _3536;
                                if (_2398)
                                {
                                    float _3504 = dot(_1262, _3481);
                                    float _3506 = clamp(dot(_1262, _459), 0.0f, 1.0f);
                                    float _3507 = 1.0f - clamp(dot(_459, _3481), 0.0f, 1.0f);
                                    float _3508 = _3507 * _3507;
                                    float _3510 = (_3507 * _3508) * _3508;
                                    float _3516 = _1246 * _1246;
                                    float _3520 = (((_3504 * _3516) - _3504) * _3504) + 1.0f;
                                    float _3521 = _3520 * _3520;
                                    _3536 = _3499 + clamp(((((_1258 * (1.0f - _3510)) + _3510.xxx) * _1251) * ((_3516 != _3521) ? (_3516 / _3521) : 1.0f)) * (0.5f / (((2.0f * _3506) + (_1246 * ((1.0f + _3506) - _3506))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
                                }
                                else
                                {
                                    _3536 = _3499;
                                }
                                _3539 = (_3536 * _3473) * _36_m6[_2743].z;
                            }
                            else
                            {
                                _3539 = 0.0f.xxx;
                            }
                            float3 _3542 = _3469 * _3468;
                            _3549 = _2686 + (((_3542 * lerp(_3472, _3471, _3470.xxx)) * _2451) + ((_3542 * _3539) * _3470));
                        }
                        else
                        {
                            _3549 = _2686;
                        }
                        _3550 = _3549;
                        break;
                    } while(false);
                    _3551 = _3550;
                    break;
                } while(false);
                _3552 = _3551;
            }
            else
            {
                _3552 = _2686;
            }
            _2709 = _3552;
        }
    }
    float3 _3592;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3592 = lerp(lerp(0.5f.xxx, lerp(dot(_2685, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2685, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2499, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3592 = _2685;
    }
    float4 _3599 = float4(_3592 * _19_m20.y, _506);
    _3599.w = (_49_m8 == 1.0f) ? _506 : 1.0f;
    float4 _3986;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3623 = _627 * _19_m46.w;
        float _3628 = max(0.00999999977648258209228515625f, _3623 + _19_m47.w);
        float3 _3642 = exp(_19_m45.xyz * ((-max(0.0f, (_460 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3628)) / _3628) * exp(_3623 + _19_m48.w))));
        float _3645 = dot(_2592, _19_m44.xyz);
        float _3651 = _19_m45.w * _19_m45.w;
        float _3655 = (1.0f + _3651) - ((2.0f * _19_m45.w) * _3645);
        float3 _3978;
        float _3979;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3700 = (uint3(int3(_2231, _2232, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3701 = _3700.y;
            uint _3702 = _3700.z;
            uint _3705 = _3700.x + (_3701 * _3702);
            uint _3707 = _3701 + (_3702 * _3705);
            uint _3709 = _3702 + (_3705 * _3707);
            uint _3711 = _3705 + (_3707 * _3709);
            float _3736 = dot(_2592, -_17_m0[2].xyz);
            float3 _3743 = _555 - _17_m11.xyz;
            float _3745 = (_19_m55.w * ((_3736 > 5.9604644775390625e-08f) ? (1.0f / _3736) : 0.0f)) * (1.0f / _460);
            float _3746 = _3743.y;
            float _3747 = _3745 * _3746;
            float _3749 = _17_m11.y + _3747;
            float _3750 = _3746 - _3747;
            float _3752 = (1.0f - _3745) * _460;
            float _3766 = max(-127.0f, _19_m49.z * _3750);
            float _3790 = max(-127.0f, _19_m52.x * _3750);
            float _3801 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3749 - _19_m49.x)))) * ((abs(_3766) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3766)) / _3766) : (0.693147182464599609375f - (0.2402265071868896484375f * _3766)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3749 - _19_m52.z)))) * ((abs(_3790) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3790)) / _3790) : (0.693147182464599609375f - (0.2402265071868896484375f * _3790))));
            float _3823 = clamp((_460 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3826 = clamp((max(clamp(exp2(-(_3801 * _3752)), 0.0f, 1.0f), _19_m51.w) + clamp((_460 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3823, 0.0f, 1.0f);
            float4 _3866 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _68.SampleLevel(_25, float3((_2660 + ((((float3(uint3(_3711, _3707 + (_3709 * _3711), _425) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_440 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_440 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3978 = _3866.xyz + (((_19_m51.xyz * (1.0f - _3826)) + (((_19_m54.xyz * pow(clamp(dot(_459, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3801 * max(_3752 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3823))) * _3866.w);
            _3979 = _3866.w * _3826;
        }
        else
        {
            float3 _3872 = _555 - _17_m11.xyz;
            float _3874 = _3872.y;
            float _3888 = max(-127.0f, _19_m49.z * _3874);
            float _3912 = max(-127.0f, _19_m52.x * _3874);
            float _3923 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3888) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3888)) / _3888) : (0.693147182464599609375f - (0.2402265071868896484375f * _3888)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3912) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3912)) / _3912) : (0.693147182464599609375f - (0.2402265071868896484375f * _3912))));
            float _3945 = clamp((_460 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3948 = clamp((max(clamp(exp2(-(_3923 * _460)), 0.0f, 1.0f), _19_m51.w) + clamp((_460 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3945, 0.0f, 1.0f);
            _3978 = (_19_m51.xyz * (1.0f - _3948)) + (((_19_m54.xyz * pow(clamp(dot(_459, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3923 * max(_460 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3945));
            _3979 = _3948;
        }
        float3 _3984 = (_3599.xyz * (_3642 * _3979)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3645 * _3645)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3651) / max((12.56637096405029296875f * _3655) * sqrt(_3655), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3642)) * _3979) + _3978);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3984 = (_3984 * 0.65f) + (_3599.xyz * 0.35f);

        }
        _3986 = float4(_3984.x, _3984.y, _3984.z, _3599.w);
    }
    else
    {
        _3986 = _3599;
    }
    _14 = _3986;
    _15 = _2196;
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
