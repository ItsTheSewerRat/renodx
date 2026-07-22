// DX11 0x523B9E43 -> Vulkan 0xAAA0323A
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

static float _414 = 0.0f;
static float3 _415 = 0.0f;
static float _417 = 0.0f;
static uint _418 = 0u;

static const int2 _372[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _373[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _63_64 : register(b50)
{
    float4 _64_m0[32] : packoffset(c0);
    column_major float4x4 _64_m1[32] : packoffset(c32);
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
[[vk::binding(1, 1)]] Texture2D<float4> _51 : register(t1);
[[vk::binding(4, 1)]] Texture2D<float4> _52 : register(t4);
[[vk::binding(44, 0)]] Texture2D<float4> _53 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _54 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _55 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _56 : register(t37);
[[vk::binding(6, 1)]] Texture2D<float4> _57 : register(t6);
[[vk::binding(2, 1)]] Texture2D<float4> _58 : register(t2);
[[vk::binding(5, 1)]] Texture2D<float4> _59 : register(t5);
[[vk::binding(45, 0)]] TextureCube<float4> _61 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _62 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _67 : register(t36);

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
    float _433 = 1.0f / gl_FragCoord.w;
    float3 _448 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _449 = dot(_448, _448);
    float _451 = rsqrt(max(_449, 9.9999999392252902907785028219223e-09f));
    float3 _452 = _448 * _451;
    float _453 = _449 * _451;
    uint _456 = asuint(_22_m0[_12]._m2.x);
    bool _461 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _474;
    float4 _475;
    if (_461)
    {
        _474 = asfloat(_32_Load4((_456 + 2u) * 16 + 0));
        _475 = asfloat(_32_Load4(_456 * 16 + 0));
    }
    else
    {
        _474 = _22_m0[_12]._m0[2];
        _475 = _22_m0[_12]._m0[0];
    }
    float4 _481 = _57.SampleBias(_26, _3, _19_m16);
    float3 _486 = _481.xyz * _49_m24.xyz;
    float4 _490 = _58.SampleBias(_26, _3, _19_m16);
    float _491 = _490.x;
    float _493 = _490.z;
    float _495 = 1.0f - _490.w;
    float _499 = _481.w * _49_m24.w;
    float3 _504 = _486 * _49_m18;
    float3 _508 = lerp(dot(_504, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _504, _49_m19.xxx);
    float4 _512 = _59.SampleBias(_26, _3, _19_m16);
    _512.w = _512.w * _512.x;
    float2 _521 = (_512.wy * 2.0f) - 1.0f.xx;
    float3 _522 = float3(_521.x, _521.y, _415.z);
    float2 _523 = _521.xy;
    _522.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_523, _523), 0.0f, 1.0f)));
    float2 _531 = _522.xy * _49_m3;
    float3 _536 = _4 + _17_m11.xyz;
    float3 _540 = _536 - float3(_475.w, _417, _474.w);
    _540.y = 6.103515625e-05f;
    float3 _543 = normalize(_540);
    float3 _553 = mul(float3(_531.x, _531.y, _522.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _562 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _563 = (_553 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_553, _553)))) * _562;
    float3 _564 = normalize(_5) * _562;
    uint2 _566 = uint2(gl_FragCoord.xy);
    float3 _576 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _585 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _598 = float4(float(_585 & 255u), float((_585 >> 8u) & 255u), float((_585 >> 16u) & 255u), float((_585 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _599 = _598.x;
    float _602 = _598.w;
    float _608 = _536.y;
    float _611 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _608) * _598.y;
    float _612 = max(_598.z, _611);
    float _621 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1115;
    float3 _1116;
    float3 _1117;
    float _1118;
    if (_19_m80.y < 0.5f)
    {
        float3 _636 = _536 - (_19_m105.xyz + (_576 * (-_19_m107.w)));
        float _650 = max(clamp((max(abs(_636.x), abs(_636.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_636.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _952;
        float4 _953;
        float4 _954;
        float _955;
        float _956;
        if ((_19_m105.w != 0.0f) && (_650 < 1.0f))
        {
            float3 _663 = _536 - (_19_m105.xyz + (_576 * (-_19_m107.y)));
            float _677 = max(clamp((max(abs(_663.x), abs(_663.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_663.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _753;
            float4 _754;
            float4 _755;
            float4 _756;
            if (_677 < 1.0f)
            {
                float3 _686 = ((_536 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _688 = _686 - floor(_686);
                float4 _692 = _42.SampleLevel(_26, _688, 0.0f);
                float _693 = 1.0f - _677;
                float _697 = _19_m106.y * 0.5f;
                float _702 = _688.x;
                float _703 = clamp(_688.y, _697, 1.0f - _697) * 0.3333333432674407958984375f;
                float _704 = _688.z;
                float4 _707 = _43.SampleLevel(_25, float3(_702, _703, _704), 0.0f);
                float _723 = _692.x;
                float _733 = _692.y;
                float _743 = _692.z;
                _753 = _650 + (_707.w * _693);
                _754 = float4(((_43.SampleLevel(_25, float3(_702, _703 + 0.666666686534881591796875f, _704), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _743, _743) * _693;
                _755 = float4(((_43.SampleLevel(_25, float3(_702, _703 + 0.3333333432674407958984375f, _704), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _733, _733) * _693;
                _756 = float4(((_707.xyz * 4.0f) - 2.0f.xxx) * _723, _723) * _693;
            }
            else
            {
                _753 = _650;
                _754 = 0.0f.xxxx;
                _755 = 0.0f.xxxx;
                _756 = 0.0f.xxxx;
            }
            float3 _762 = _536 - (_19_m105.xyz + (_576 * (-_19_m107.z)));
            float _776 = max(clamp((max(abs(_762.x), abs(_762.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_762.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _856;
            float4 _857;
            float4 _858;
            float4 _859;
            if (_776 < 1.0f)
            {
                float3 _785 = ((_536 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _787 = _785 - floor(_785);
                float4 _791 = _44.SampleLevel(_26, _787, 0.0f);
                float _793 = _677 * (1.0f - _776);
                float _797 = _19_m106.y * 0.5f;
                float _802 = _787.x;
                float _803 = clamp(_787.y, _797, 1.0f - _797) * 0.3333333432674407958984375f;
                float _804 = _787.z;
                float4 _807 = _45.SampleLevel(_25, float3(_802, _803, _804), 0.0f);
                float _823 = _791.x;
                float _834 = _791.y;
                float _845 = _791.z;
                _856 = _753 + (_807.w * _793);
                _857 = _754 + (float4(((_45.SampleLevel(_25, float3(_802, _803 + 0.666666686534881591796875f, _804), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _845, _845) * _793);
                _858 = _755 + (float4(((_45.SampleLevel(_25, float3(_802, _803 + 0.3333333432674407958984375f, _804), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _834, _834) * _793);
                _859 = _756 + (float4(((_807.xyz * 4.0f) - 2.0f.xxx) * _823, _823) * _793);
            }
            else
            {
                _856 = _753;
                _857 = _754;
                _858 = _755;
                _859 = _756;
            }
            float4 _942;
            float4 _943;
            float4 _944;
            float _945;
            if (_776 > 0.0f)
            {
                float3 _868 = ((_536 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _871 = _19_m106.xyz * 0.5f;
                float3 _873 = clamp(_868 - floor(_868), _871, 1.0f.xxx - _871);
                float4 _877 = _46.SampleLevel(_26, _873, 0.0f);
                float _879 = _776 * (1.0f - _650);
                float _883 = _19_m106.y * 0.5f;
                float _888 = _873.x;
                float _889 = clamp(_873.y, _883, 1.0f - _883) * 0.3333333432674407958984375f;
                float _890 = _873.z;
                float4 _893 = _47.SampleLevel(_25, float3(_888, _889, _890), 0.0f);
                float _909 = _877.x;
                float _920 = _877.y;
                float _931 = _877.z;
                _942 = _857 + (float4(((_47.SampleLevel(_25, float3(_888, _889 + 0.666666686534881591796875f, _890), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _931, _931) * _879);
                _943 = _858 + (float4(((_47.SampleLevel(_25, float3(_888, _889 + 0.3333333432674407958984375f, _890), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _920, _920) * _879);
                _944 = _859 + (float4(((_893.xyz * 4.0f) - 2.0f.xxx) * _909, _909) * _879);
                _945 = _856 + (_893.w * _879);
            }
            else
            {
                _942 = _857;
                _943 = _858;
                _944 = _859;
                _945 = _856;
            }
            float _948 = clamp((_945 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _952 = _942;
            _953 = _943;
            _954 = _944;
            _955 = _948 - _650;
            _956 = (_948 + _650) * 0.5f;
        }
        else
        {
            _952 = 0.0f.xxxx;
            _953 = 0.0f.xxxx;
            _954 = 0.0f.xxxx;
            _955 = 0.0f;
            _956 = 1.0f;
        }
        float4 _976 = _954 + float4(_19_m108.x * _956, (_19_m108.y * _956) + ((_19_m108.w * _955) * 0.5f), _19_m108.z * _956, (_19_m108.w * _956) + ((_19_m108.y * _955) * 0.375f));
        float4 _996 = _953 + float4(_19_m109.x * _956, (_19_m109.y * _956) + ((_19_m109.w * _955) * 0.5f), _19_m109.z * _956, (_19_m109.w * _956) + ((_19_m109.y * _955) * 0.375f));
        float4 _1016 = _952 + float4(_19_m110.x * _956, (_19_m110.y * _956) + ((_19_m110.w * _955) * 0.5f), _19_m110.z * _956, (_19_m110.w * _956) + ((_19_m110.y * _955) * 0.375f));
        float4 _1020 = float4(_563, 1.0f);
        float3 _1026 = max(float3(dot(_976, _1020), dot(_996, _1020), dot(_1016, _1020)), 0.0f.xxx) * _621;
        float3 _1034 = ((_976.xyz * 0.2125999927520751953125f) + (_996.xyz * 0.715200006961822509765625f)) + (_1016.xyz * 0.072200000286102294921875f);
        float3 _1038 = _1034 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1034, _1034)));
        float _1040 = abs(_1038.y);
        float3 _1041 = _1038;
        _1041.y = _1040;
        float4 _1042 = float4(_1041.x, _1041.y, _1041.z, 0.0f.xxxx.w);
        _1042.w = 1.0f;
        float4 _1046 = float4(_1038.x, _1040, _1038.z, 1.0f);
        float3 _1051 = max(float3(dot(_976, _1046), dot(_996, _1046), dot(_1016, _1046)), 0.0f.xxx);
        float _1059 = _1026.z;
        float _1060 = _1026.y;
        float4 _1065 = lerp(float4(_1059, _1060, -1.0f, 0.666666686534881591796875f), float4(_1060, _1059, 0.0f, -0.3333333432674407958984375f), step(_1059, _1060).xxxx);
        float _1066 = _1026.x;
        float _1067 = _1065.x;
        float4 _1075 = lerp(float4(_1067, _1065.yw, _1066), float4(_1066, _1065.yz, _1067), step(_1067, _1066).xxxx);
        float _1076 = _1075.x;
        float _1077 = _1075.w;
        float _1078 = _1075.y;
        float _1080 = _1076 - min(_1077, _1078);
        float _1090 = frac(abs(_1075.z + ((_1077 - _1078) / ((6.0f * _1080) + 9.9999997473787516355514526367188e-05f))));
        float _1097 = min(_1080 / (_1076 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1090 - 0.5f))) * clamp(_1076, 0.0f, 1.0f));
        float _1099 = 2.0f / (2.0f - _1097);
        _1115 = _1042;
        _1116 = _1026;
        _1117 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1090, _1097, _1099).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1097.xxx) * _1099;
        _1118 = max(max(max(_1051.x, _1051.y), _1051.z), 0.0f) * _621;
    }
    else
    {
        _1115 = 0.0f.xxxx;
        _1116 = 1.0f.xxx;
        _1117 = _19_m81.xyz;
        _1118 = _621;
    }
    float _1136 = 1.0f - _49_m30;
    float _1137 = _1136 * _1136;
    float _1138 = max(_1137, 0.0078125f);
    float4 _1142 = _52.SampleBias(_26, _3, _19_m16);
    float _1143 = _1142.x;
    float3 _1150 = _49_m34.xyz * lerp(0.039999999105930328369140625f, 1.0f, _49_m31);
    float3 _1154 = lerp(_564, _563, _49_m32.xxx);
    float3 _1861;
    float _1862;
    float _1863;
    float _1864;
    float3 _1865;
    float3 _1866;
    [branch]
    if ((clamp(_599 + _612, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1167 = 1.0f - _491;
        bool3 _1173 = _461.xxx;
        float3 _1175 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1179 = float3(_1173.x ? _1175.x : _10.x, _1173.y ? _1175.y : _10.y, _1173.z ? _1175.z : _10.z) * _19_m89.z;
        float3 _1181 = float3(_1173.x ? _9.xzy.x : _9.x, _1173.y ? _9.xzy.y : _9.y, _1173.z ? _9.xzy.z : _9.z);
        float3 _1183 = abs(_1181) - 0.20000000298023223876953125f.xxx;
        float3 _1186 = max((_1183 * _1183) * _1183, 6.103515625e-05f.xxx);
        float3 _1189 = _1186 / dot(_1186, 1.0f.xxx).xxx;
        float2 _1197 = _1179.xy;
        float2 _1202 = _1179.zy;
        float4 _1212 = ((_53.SampleBias(_26, _1179.xz, _19_m16) * _1189.y) + (_53.SampleBias(_26, _1197, _19_m16) * _1189.z)) + (_53.SampleBias(_26, _1202, _19_m16) * _1189.x);
        float _1213 = _1212.w;
        float _1215 = 1.10000002384185791015625f - _1213;
        float _1224 = max(smoothstep(0.800000011920928955078125f - _1213, _1215, clamp((_599 * _1167) + (_563.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1213, _1215, clamp(_611 * _1167, 0.0f, 1.0f)));
        float _1231 = smoothstep(0.5f, 0.75f, _491);
        float _1233 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, lerp(_495, _1136, _1143));
        float _1234 = lerp(0.0f, smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_486 * _1167, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))), _1143);
        float _1237 = clamp(_1233 + _1231, 0.0f, 1.0f) * max(_599, _612);
        bool _1241 = !((step(_599, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _612)) != 0.0f);
        bool2 _1242 = _1241.xx;
        float2 _1244 = (1.0f - _612).xx;
        float2 _1245 = float2(_1242.x ? float2(3.0f, 4.345600128173828125f).x : _1244.x, _1242.y ? float2(3.0f, 4.345600128173828125f).y : _1244.y);
        float _1246 = 1.0f - _1237;
        float _1249 = _1241 ? _19_m10.x : 1.0f;
        float _1251 = _1249 * _1245.x;
        float _1253 = _1249 * _1245.y;
        float3 _1254 = _1179 * 20.0f;
        float3 _1255 = _1179 * 34.345600128173828125f;
        float3 _1257 = pow(max(_1183, 0.0f.xxx), 10.0f.xxx);
        float3 _1261 = _1257 / max(dot(_1257, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1263 = _1261.y;
        float2 _1264 = _1254.xz * 1.0f;
        float2 _1265 = floor(_1264);
        float2 _1268 = frac(_1265 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1272 = _1268 + dot(_1268, _1268 + 34.345001220703125f.xx).xx;
        float _1273 = _1272.x;
        float _1274 = _1272.y;
        float2 _1278 = frac(float2(_1273 * _1274, _1273 + _1274));
        float2 _1281 = frac((_1265 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1285 = _1281 + dot(_1281, _1281 + 34.345001220703125f.xx).xx;
        float _1286 = _1285.x;
        float _1287 = _1285.y;
        float2 _1291 = frac(float2(_1286 * _1287, _1286 + _1287));
        float _1297 = _1278.x;
        float _1299 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1297);
        float2 _1300 = ((_1264 - _1265) + ((((_1291 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1303 = _1300.y;
        float2 _1307 = float2(_1300.x * 1.25f, _1303 * ((_1303 < 0.0f) ? 1.25f : 0.75f));
        float _1310 = _1251 + _1297;
        float _1314 = _1241 ? frac(_1310) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1310, 0.0f, 1.0f));
        float _1326 = _1278.y;
        float _1329 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1314) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1314)) * step(0.001000000047497451305389404296875f, smoothstep(_1299, 0.0f, length(_1307)))) * step(_1246, _1326 - 0.100000001490116119384765625f);
        float _1332 = _1329 * _1263;
        float _1340 = _1261.z;
        float2 _1341 = _1254.xy * 1.0f;
        float2 _1342 = floor(_1341);
        float2 _1345 = frac(_1342 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1349 = _1345 + dot(_1345, _1345 + 34.345001220703125f.xx).xx;
        float _1350 = _1349.x;
        float _1351 = _1349.y;
        float2 _1355 = frac(float2(_1350 * _1351, _1350 + _1351));
        float2 _1358 = frac((_1342 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1362 = _1358 + dot(_1358, _1358 + 34.345001220703125f.xx).xx;
        float _1363 = _1362.x;
        float _1364 = _1362.y;
        float2 _1368 = frac(float2(_1363 * _1364, _1363 + _1364));
        float _1374 = _1355.x;
        float _1376 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1374);
        float2 _1377 = ((_1341 - _1342) + ((((_1368 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1380 = _1377.y;
        float2 _1384 = float2(_1377.x * 1.25f, _1380 * ((_1380 < 0.0f) ? 1.25f : 0.75f));
        float _1387 = _1251 + _1374;
        float _1391 = _1241 ? frac(_1387) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1387, 0.0f, 1.0f));
        float _1403 = _1355.y;
        float _1406 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1391) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1391)) * step(0.001000000047497451305389404296875f, smoothstep(_1376, 0.0f, length(_1384)))) * step(_1246, _1403 - 0.100000001490116119384765625f);
        float _1409 = _1406 * _1340;
        float _1417 = _1261.x;
        float2 _1418 = _1254.zy * 1.0f;
        float2 _1419 = floor(_1418);
        float2 _1422 = frac(_1419 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1426 = _1422 + dot(_1422, _1422 + 34.345001220703125f.xx).xx;
        float _1427 = _1426.x;
        float _1428 = _1426.y;
        float2 _1432 = frac(float2(_1427 * _1428, _1427 + _1428));
        float2 _1435 = frac((_1419 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1439 = _1435 + dot(_1435, _1435 + 34.345001220703125f.xx).xx;
        float _1440 = _1439.x;
        float _1441 = _1439.y;
        float2 _1445 = frac(float2(_1440 * _1441, _1440 + _1441));
        float _1451 = _1432.x;
        float _1453 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1451);
        float2 _1454 = ((_1418 - _1419) + ((((_1445 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1457 = _1454.y;
        float2 _1461 = float2(_1454.x * 1.25f, _1457 * ((_1457 < 0.0f) ? 1.25f : 0.75f));
        float _1464 = _1251 + _1451;
        float _1468 = _1241 ? frac(_1464) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1464, 0.0f, 1.0f));
        float _1480 = _1432.y;
        float _1483 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1468) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1468)) * step(0.001000000047497451305389404296875f, smoothstep(_1453, 0.0f, length(_1461)))) * step(_1246, _1480 - 0.100000001490116119384765625f);
        float _1486 = _1483 * _1417;
        float2 _1499 = (float4(((clamp(_1307 / _1299.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1291.x)) * _1329) * _1263, _1332, _1326).xy + float4(((clamp(_1384 / _1376.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1368.x)) * _1406) * _1340, _1409, _1403).xy) + float4(((clamp(_1461 / _1453.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1445.x)) * _1483) * _1417, _1486, _1480).xy;
        float _1501 = max(_1486, max(_1332, _1409));
        float4 _1504 = float4(_1499, _1501, 0.0f);
        float2 _1506 = _1255.xz * 1.0f;
        float2 _1507 = floor(_1506);
        float2 _1510 = frac(_1507 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1514 = _1510 + dot(_1510, _1510 + 34.345001220703125f.xx).xx;
        float _1515 = _1514.x;
        float _1516 = _1514.y;
        float2 _1520 = frac(float2(_1515 * _1516, _1515 + _1516));
        float2 _1523 = frac((_1507 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1527 = _1523 + dot(_1523, _1523 + 34.345001220703125f.xx).xx;
        float _1528 = _1527.x;
        float _1529 = _1527.y;
        float2 _1533 = frac(float2(_1528 * _1529, _1528 + _1529));
        float _1539 = _1520.x;
        float _1541 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1539);
        float2 _1542 = ((_1506 - _1507) + ((((_1533 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1545 = _1542.y;
        float2 _1549 = float2(_1542.x * 1.25f, _1545 * ((_1545 < 0.0f) ? 1.25f : 0.75f));
        float _1552 = _1253 + _1539;
        float _1556 = _1241 ? frac(_1552) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1552, 0.0f, 1.0f));
        float _1568 = _1520.y;
        float _1571 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1556) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1556)) * step(0.001000000047497451305389404296875f, smoothstep(_1541, 0.0f, length(_1549)))) * step(_1246, _1568 - 0.100000001490116119384765625f);
        float _1574 = _1571 * _1263;
        float2 _1579 = _1255.xy * 1.0f;
        float2 _1580 = floor(_1579);
        float2 _1583 = frac(_1580 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1587 = _1583 + dot(_1583, _1583 + 34.345001220703125f.xx).xx;
        float _1588 = _1587.x;
        float _1589 = _1587.y;
        float2 _1593 = frac(float2(_1588 * _1589, _1588 + _1589));
        float2 _1596 = frac((_1580 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1600 = _1596 + dot(_1596, _1596 + 34.345001220703125f.xx).xx;
        float _1601 = _1600.x;
        float _1602 = _1600.y;
        float2 _1606 = frac(float2(_1601 * _1602, _1601 + _1602));
        float _1612 = _1593.x;
        float _1614 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1612);
        float2 _1615 = ((_1579 - _1580) + ((((_1606 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1618 = _1615.y;
        float2 _1622 = float2(_1615.x * 1.25f, _1618 * ((_1618 < 0.0f) ? 1.25f : 0.75f));
        float _1625 = _1253 + _1612;
        float _1629 = _1241 ? frac(_1625) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1625, 0.0f, 1.0f));
        float _1641 = _1593.y;
        float _1644 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1629) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1629)) * step(0.001000000047497451305389404296875f, smoothstep(_1614, 0.0f, length(_1622)))) * step(_1246, _1641 - 0.100000001490116119384765625f);
        float _1647 = _1644 * _1340;
        float2 _1652 = _1255.zy * 1.0f;
        float2 _1653 = floor(_1652);
        float2 _1656 = frac(_1653 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1660 = _1656 + dot(_1656, _1656 + 34.345001220703125f.xx).xx;
        float _1661 = _1660.x;
        float _1662 = _1660.y;
        float2 _1666 = frac(float2(_1661 * _1662, _1661 + _1662));
        float2 _1669 = frac((_1653 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1673 = _1669 + dot(_1669, _1669 + 34.345001220703125f.xx).xx;
        float _1674 = _1673.x;
        float _1675 = _1673.y;
        float2 _1679 = frac(float2(_1674 * _1675, _1674 + _1675));
        float _1685 = _1666.x;
        float _1687 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1685);
        float2 _1688 = ((_1652 - _1653) + ((((_1679 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1691 = _1688.y;
        float2 _1695 = float2(_1688.x * 1.25f, _1691 * ((_1691 < 0.0f) ? 1.25f : 0.75f));
        float _1698 = _1253 + _1685;
        float _1702 = _1241 ? frac(_1698) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1698, 0.0f, 1.0f));
        float _1714 = _1666.y;
        float _1717 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1702) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1702)) * step(0.001000000047497451305389404296875f, smoothstep(_1687, 0.0f, length(_1695)))) * step(_1246, _1714 - 0.100000001490116119384765625f);
        float _1720 = _1717 * _1417;
        float2 _1728 = (float4(((clamp(_1549 / _1541.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1533.x)) * _1571) * _1263, _1574, _1568).xy + float4(((clamp(_1622 / _1614.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1606.x)) * _1644) * _1340, _1647, _1641).xy) + float4(((clamp(_1695 / _1687.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1679.x)) * _1717) * _1417, _1720, _1714).xy;
        float4 _1733 = float4(_1728, max(_1720, max(_1574, _1647)), 0.0f);
        float _1735 = step(max(float2(_1299 * _1329, _417) * _1263, max(float2(_1376 * _1406, _417) * _1340, float2(_1453 * _1483, _417) * _1417)).x, 0.00999999977648258209228515625f);
        float2 _1739 = _1504.xy + (_1733.xy * _1735);
        float3 _1748 = float3((_1212.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1739.x, _1739.y, 0.0f.xxx.z);
        float2 _1752 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1755 = float3(_1181.x, 0.0f, _1181.z);
        float3 _1761 = abs(_1755 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1755, _1755)))) - 0.20000000298023223876953125f.xxx;
        float3 _1764 = max((_1761 * _1761) * _1761, 6.103515625e-05f.xxx);
        float3 _1767 = _1764 / dot(_1764, 1.0f.xxx).xxx;
        float _1786 = _1767.z;
        float _1788 = _1767.x;
        float4 _1790 = (_54.SampleBias(_26, _1197, _19_m16) * _1786) + (_54.SampleBias(_26, _1202, _19_m16) * _1788);
        float2 _1802 = _1748.xy + ((((_1790.xy * 2.0f) - 1.0f.xx) * ((_54.SampleBias(_26, _1197 + _1752, _19_m16).w * _1786) + (_54.SampleBias(_26, _1202 + _1752, _19_m16).w * _1788))) * _1237);
        float3 _1803 = float3(_1802.x, _1802.y, _1748.z);
        float _1804 = _1790.z;
        float _1809 = max(max(max(_1504.zw * step(0.00999999977648258209228515625f, _1501), _1733.zw * _1735).x, step(1.0099999904632568359375f - _1237, _1212.z)), smoothstep(1.0f - _1804, 1.10000002384185791015625f - _1804, _1237) * _1237);
        float2 _1810 = _1802.xy;
        _1803.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1810, _1810), 0.0f, 1.0f)));
        float3 _1817 = normalize(_1803);
        float3 _1818 = cross(_563, float3(0.0f, 1.0f, 0.0f));
        bool3 _1821 = (dot(_1818, _1818) > 6.103515625e-05f).xxx;
        float3 _1822 = normalize(_1818);
        float3 _1823 = float3(_1821.x ? _1822.x : float3(1.0f, 0.0f, 0.0f).x, _1821.y ? _1822.y : float3(1.0f, 0.0f, 0.0f).y, _1821.z ? _1822.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1834 = min(_495, 0.0500000007450580596923828125f);
        float _1835 = lerp(_495, _1834, _1809);
        float _1853 = lerp(1.0f, 0.5f, (_1224 * (1.0f - _1234)) * (1.0f - _1233));
        _1861 = normalize(lerp(_563, normalize(((_1823 * _1817.x) + (cross(_1823, _563) * _1817.y)) + (_563 * _1817.z)), _1809.xxx));
        _1862 = _1809;
        _1863 = lerp(_1834, _1136, _1143);
        _1864 = max(_1835 - ((0.20000000298023223876953125f * _1234) * _1224), min(0.20000000298023223876953125f, _1835));
        _1865 = _508 * _1853;
        _1866 = lerp(_486, _486 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_486, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1809 * _1231).xxx) * _1853;
    }
    else
    {
        _1861 = _563;
        _1862 = 0.0f;
        _1863 = 0.00999999977648258209228515625f;
        _1864 = _495;
        _1865 = _508;
        _1866 = _486;
    }
    float3 _2037;
    float _2038;
    float3 _2039;
    float3 _2040;
    float _2041;
    [branch]
    if (_602 > 0.00999999977648258209228515625f)
    {
        bool3 _1870 = _461.xxx;
        float3 _1872 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1873 = float3(_1870.x ? _1872.x : _10.x, _1870.y ? _1872.y : _10.y, _1870.z ? _1872.z : _10.z);
        float3 _1876 = _1873 * _19_m89.z;
        float3 _1878 = float3(_1870.x ? _9.xzy.x : _9.x, _1870.y ? _9.xzy.y : _9.y, _1870.z ? _9.xzy.z : _9.z);
        float3 _1880 = abs(_1878) - 0.20000000298023223876953125f.xxx;
        float3 _1883 = max((_1880 * _1880) * _1880, 6.103515625e-05f.xxx);
        float3 _1886 = _1883 / dot(_1883, 1.0f.xxx).xxx;
        float _1902 = _1886.y;
        float _1904 = _1886.z;
        float _1907 = _1886.x;
        float4 _1909 = ((_55.SampleBias(_26, _1876.xz, _19_m16) * _1902) + (_55.SampleBias(_26, _1876.xy, _19_m16) * _1904)) + (_55.SampleBias(_26, _1876.zy, _19_m16) * _1907);
        float _1910 = _1878.y;
        float _1917 = clamp(_602 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1873.y) * clamp(_602 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1928 = smoothstep(2.0f - _1917, 2.349999904632568359375f - _1917, ((_1910 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1909.z) * ((_493 * _493) * float(gl_FrontFacing));
        float _1940 = lerp(1.0f, 0.5f, ((_1917 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1866 * (1.0f - _491), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1909.w) * ((_1910 * 0.25f) + 0.75f));
        float3 _1942 = _1928.xxx;
        float2 _1948 = (_1909.xy * 2.0f) - 1.0f.xx;
        float3 _1949 = float3(_1948.x, _1948.y, _415.z);
        float2 _1950 = _1948.xy;
        _1949.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1950, _1950), 0.0f, 1.0f)));
        float2 _1958 = _1949.xy * 2.0f;
        float3 _1960 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1958.x, _1958.y, _1949.z), _1942);
        float3 _1964 = _1960 * rsqrt(max(6.103515625e-05f, dot(_1960, _1960)));
        float _1965 = _563.y;
        float _1968 = step(0.00999999977648258209228515625f, 1.0f - (_1965 * _1965));
        float _1972 = lerp(_563.z, _1965, _1968);
        float3 _1979 = (float3(0.0f, _1968, 1.0f - _1968) - (_563 * _1972)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1972 * _1972)));
        float3 _1993 = _1876 * 4.0f;
        float4 _2013 = ((_56.SampleLevel(_24, _1993.xz, 0.0f) * _1902) + (_56.SampleLevel(_24, _1993.xy, 0.0f) * _1904)) + (_56.SampleLevel(_24, _1993.zy, 0.0f) * _1907);
        float2 _2016 = (_2013.xz * 2.0f) - 1.0f.xx;
        float _2027 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2016.x, _2013.y, _2016.y), (floor(_452 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2028 = _2027 * _2027;
        float _2031 = _2028 * ((_2028 * 2.0f) * _1928);
        float3 _2032 = 1.0f.xxx * _2031;
        _2037 = ((cross(_1979, _563) * _1964.x) + (_1979 * _1964.y)) + (_563 * _1964.z);
        _2038 = lerp(lerp(_1864, 0.89999997615814208984375f, clamp(_1928 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2031);
        _2039 = lerp(_1865 * _1940, 0.3079999983310699462890625f.xxx, _1942) + (_2032 * 0.5f);
        _2040 = lerp(_1866 * _1940, 0.87999999523162841796875f.xxx, _1942) + _2032;
        _2041 = lerp(_491, 0.0f, _1928);
    }
    else
    {
        _2037 = _563;
        _2038 = _1864;
        _2039 = _1865;
        _2040 = _1866;
        _2041 = _491;
    }
    float _2043 = 0.959999978542327880859375f - (_2041 * 0.959999978542327880859375f);
    float3 _2044 = _2040 * _2043;
    float3 _2047 = lerp(0.039999999105930328369140625f.xxx * _490.y, _2040, _2041.xxx);
    float3 _2048 = _2039 * _2043;
    float _2050 = max(_2038 * _2038, 0.0078125f);
    bool _2057 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _2070 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2070.y = -_2070.y;
    float2 _2086 = lerp(((sqrt(sqrt(abs(_2070 * 0.5f))) * float2(int2(sign(_2070)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2057).xx);
    float4 _2088 = float4(_2086.x, _2086.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2088.z = 1.0f;
    _2088.w = _2057 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2101 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2105 = normalize(float3(_2101.x, 6.103515625e-05f, _2101.z));
    float3 _2115 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2119 = _2115 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _2123 = int(_566.x);
    int _2124 = int(_566.y);
    float4 _2128 = _40.Load(int3(int3(_2123, _2124, 0).xy, 0));
    float _2133 = _2128.y;
    float _2136 = lerp(lerp(1.0f, _2128.x, _38_m6.x), 1.0f, _19_m80.z);
    float _2137 = dot(_2037, _2101);
    float3 _2144 = _2048 * _19_m79.z;
    float3 _2145 = _2144 * 0.64999997615814208984375f;
    float _2149 = dot(_2044, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2162 = clamp(-dot(_2105.xz, normalize(_576.xz)), 0.0f, 1.0f);
    float _2166 = 1.0f - _19_m91.x;
    float4 _2180 = _50.SampleLevel(_25, float2((clamp(lerp(_2137, ((-_2137) * ((_2137 * 0.5f) - 1.0f)) + 0.5f, (_2162 * smoothstep(0.25f, 0.75f, 1.0f - abs(_576.y))) * _2166) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2181 = _2180.w;
    float _2183 = _2180.x;
    float _2184 = _2180.y;
    float _2185 = _2180.z;
    float _2190 = max(max(_2183, _2184), _2185) - min(min(_2183, _2184), _2185);
    float4 _2198 = _50.SampleLevel(_25, float2((dot(_2037, _576) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2199 = _2198.w;
    float _2200 = _493 * _2133;
    float _2207 = min(min(_2133, _493), _2181);
    float _2208 = _2199 * _2200;
    float3 _2212 = ((clamp(dot(_563, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1117, 1.0f.xxx, (_19_m80.y * _2207).xxx);
    float3 _2214 = _2207.xxx;
    float3 _2237 = _2136.xxx;
    float3 _2238 = lerp((_2212 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1118), 1.5f), clamp(_1118, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2119, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2119, _2214) + ((_2212 * clamp(_1118, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2115 * _19_m91.y)))) * _19_m79.y, _2237);
    float3 _2239 = lerp(lerp(lerp(dot(_2145, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2145, 1.2000000476837158203125f.xxx), _2144, clamp((_2200 * _2199) + _2181, 0.0f, 1.0f).xxx), _2044, _2214);
    float3 _2245 = _2239 * ((1.0f - _2190).xxx + (_2180.xyz * _2190));
    float3 _2254 = lerp(lerp(_2144, lerp(_2149.xxx, _2044, 1.2000000476837158203125f.xxx), _2208.xxx), _2245 * clamp(dot(_2239, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2245, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2237);
    float4 _2258 = float4(_2254, _2136);
    float _2260 = lerp(_2208, _2207, _2136);
    float _2263 = lerp(_19_m79.z, 1.0f, _2260);
    float3 _2271 = float3(_576.x, lerp(0.5f, _2101.y, _2136), _576.z);
    float3 _2282 = normalize(((_2101 * _2136) + ((_2271 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2271, _2271)))) * 2.0f)) + (_452 * (2.0f + _2136)));
    float _2284 = clamp(dot(_1861, _452), 0.0f, 1.0f);
    float _2285 = dot(_1861, _2282);
    float _2286 = _2050 * _2050;
    float _2290 = (((_2285 * _2286) - _2285) * _2285) + 1.0f;
    float _2291 = _2290 * _2290;
    float _2295 = 2.0f * _2284;
    float _2297 = (1.0f + _2284) - _2284;
    float3 _2305 = _2047 * clamp((((_2286 != _2291) ? (_2286 / _2291) : 1.0f) * (0.5f / ((_2295 + (_2050 * _2297)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
    bool _2306 = _1143 > 0.001000000047497451305389404296875f;
    float3 _2356;
    float3 _2357;
    float3 _2358;
    if (_2306)
    {
        float _2311 = dot(_1154, _2282);
        float _2313 = clamp(dot(_1154, _452), 0.0f, 1.0f);
        float3 _2321 = _1150 * _51.SampleLevel(_25, float2(_2313 * _2313, 0.5f), 0.0f).xyz;
        float _2322 = 1.0f - clamp(dot(_452, _2282), 0.0f, 1.0f);
        float _2323 = _2322 * _2322;
        float _2325 = (_2322 * _2323) * _2323;
        float3 _2330 = ((_2321 * (1.0f - _2325)) + _2325.xxx) * _1143;
        float3 _2331 = 1.0f.xxx - _2330;
        float _2334 = _1138 * _1138;
        float _2338 = (((_2311 * _2334) - _2311) * _2311) + 1.0f;
        float _2339 = _2338 * _2338;
        _2356 = _2321;
        _2357 = lerp(1.0f.xxx, _2331, _1143.xxx);
        _2358 = (_2305 * (_2331 * _2331)) + clamp((_2330 * ((_2334 != _2339) ? (_2334 / _2339) : 1.0f)) * (0.5f / (((2.0f * _2313) + (_1138 * ((1.0f + _2313) - _2313))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
    }
    else
    {
        _2356 = _1150;
        _2357 = 1.0f.xxx;
        _2358 = _2305;
    }
    float _2368 = (1.0f - _49_m6) + (_499 * _49_m6);
    float3 _2370 = (((_2238 * _2254) * _2357) * _2368) + ((_2358 * ((_2238 * (((_2260 * 0.5f) + 0.5f) * _2263)) * 1.0f)) * _19_m92.w);
    float _2371 = dot(_2370, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2374 = clamp(_2371 - 0.5f, 0.0f, 0.5f);
    float3 _2410 = normalize(cross(_576, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2416 = dot(_452, _2037);
    float _2418 = 1.0f - abs(_2416);
    float _2440 = dot(_2105, _2037);
    float _2452 = 1.0f - _2136;
    float _2479 = lerp(_2038, _1863, _1862);
    float _2480 = _2479 * _2479;
    float _2481 = _2284 * _2284;
    float _2482 = _2481 * _2284;
    float2 _2483 = float2(1.0f, _2284);
    float2 _2486 = float2(1.0f, _2480);
    float3 _2489 = float3(1.0f, _2480, (_2480 * _2480) * _2480);
    float _2494 = dot(mul(_2483, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2486) / dot(mul(float3(1.0f, _2481, _2482), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2489);
    float _2499 = dot(mul(_2483, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2486) / dot(mul(float3(1.0f, _2284, _2482), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2489);
    float3 _2502 = (_2047 * _2494) + _2499.xxx;
    float _2503 = _2494 + _2499;
    float3 _2509 = -_452;
    float3 _2521 = _61.SampleLevel(_25, reflect(_2509, _1861), (1.2000000476837158203125f * log2(max(_2479, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2502 + ((_2047 * ((1.0f - _2503) / _2503)) * _2502)) * 1.0f);
    float3 _2567;
    if (_2306)
    {
        float _2535 = clamp(dot(_1154, _452), 0.0f, 1.0f);
        float _2536 = _2535 * _2535;
        float _2537 = _2536 * _2535;
        float2 _2538 = float2(1.0f, _2535);
        float2 _2541 = float2(1.0f, _1137);
        float3 _2544 = float3(1.0f, _1137, (_1137 * _1137) * _1137);
        float _2549 = dot(mul(_2538, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2541) / dot(mul(float3(1.0f, _2536, _2537), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2544);
        float _2554 = dot(mul(_2538, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2541) / dot(mul(float3(1.0f, _2535, _2537), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2544);
        float3 _2557 = (_2356 * _2549) + _2554.xxx;
        float _2558 = _2549 + _2554;
        _2567 = _2521 + ((_61.SampleLevel(_25, reflect(_2509, _1154), (1.2000000476837158203125f * log2(max(_1136, 0.001000000047497451305389404296875f))) + 5.0f).xyz * (_2557 + ((_2356 * ((1.0f - _2558) / _2558)) * _2557))) * _1143);
    }
    else
    {
        _2567 = _2521;
    }
    float3 _2573 = lerp(_2371.xxx, _2370, ((_2374 * _2374) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2418)) * _19_m87.w) * min(min(clamp(dot(_543, _2410) + 1.0f, 0.0f, 1.0f), _493), _2133)) * (lerp(0.25f.xxx, _2044, _19_m88.z.xxx) * clamp(dot(_2410, _2037), 0.0f, 1.0f))) + ((((((lerp(_1116 * (1.0f / max(max(max(_1116.x, _1116.y), _1116.z) * 0.5f, 1.0f)), _2119, _2237) * clamp(lerp(dot(_1115.xyz, _2037) * _1115.w, ((-_2440) * ((_2440 * 0.5f) - 1.0f)) + 0.5f, _2136), 0.0f, 1.0f)) * ((_2452 + (_2162 * _2136)) * _2166)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2418)) * min(_493, _2133)) * (_2452 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2149) * _2136))) * max(0.1500000059604644775390625f.xxx, _2044)));
    float2 _2575 = float2(_566);
    float2 _2577 = floor(_2575 * 0.03125f);
    int _2585 = int((_2577.x + (_2577.y * _34_m5)) * 8.0f);
    float _2592 = floor(_433 - (_19_m3.y * _34_m11));
    float _2596 = clamp(_2592, 0.0f, _34_m7 - 1.0f);
    int _2598 = int(_2596 * 8.0f);
    float3 _2600;
    _2600 = _2573 + ((_2567 * ((clamp(_1118, 0.5f, 1.5f) * _19_m79.w) * _2263)) * _1117);
    float3 _2601;
    [loop]
    for (int _2603 = 0; _2603 <= 7; _2600 = _2601, _2603++)
    {
        uint _2621 = (_2592 <= _2596) ? (_30.Load(uint(_2585 + _2603) * 4 + 0) & _30.Load(uint((_19_m21.y + _2598) + _2603) * 4 + 0)) : 0u;
        uint _2622 = uint(_2603);
        _2601 = _2600;
        uint _2627;
        float3 _2624;
        [loop]
        for (uint _2626 = _2621; _2626 != 0u; _2601 = _2624, _2626 = _2627)
        {
            uint _2631 = firstbitlow(_2626);
            _2627 = _2626 ^ (1u << (_2631 & 31u));
            int _2637 = int((32u * _2622) + _2631) * 8;
            int _2640 = _2637 + 1;
            int _2643 = _2637 + 2;
            int _2646 = _2637 + 3;
            int _2649 = _2637 + 4;
            int _2652 = _2637 + 5;
            int _2655 = _2637 + 6;
            int _2658 = _2637 + 7;
            uint _2662 = uint(_36_m6[_2652].w);
            float _2737;
            if ((_2662 & 1u) == 1u)
            {
                uint _2668 = asuint(_36_m6[_2652].x);
                uint _2675 = asuint(_36_m6[_2652].y);
                uint _2682 = asuint(_36_m6[_2652].z);
                uint _2689 = asuint(_36_m6[_2655].x);
                uint _2696 = asuint(_36_m6[_2655].y);
                uint _2703 = asuint(_36_m6[_2655].z);
                float3 _2722 = abs(mul(float4(_536 - _36_m6[_2640].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2668).x, spvUnpackHalf2x16(_2682).x, spvUnpackHalf2x16(_2696).x, 0.0f), float4(spvUnpackHalf2x16(_2668 >> 16u).x, spvUnpackHalf2x16(_2682 >> 16u).x, spvUnpackHalf2x16(_2696 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2675).x, spvUnpackHalf2x16(_2689).x, spvUnpackHalf2x16(_2703).x, 0.0f), float4(spvUnpackHalf2x16(_2675 >> 16u).x, spvUnpackHalf2x16(_2689 >> 16u).x, spvUnpackHalf2x16(_2703 >> 16u).x, 0.0f))).xyz);
                float _2729 = _36_m6[_2658].x * 0.5f;
                float _2735 = 1.0f - clamp((max(max(_2722.x, _2722.y), _2722.z) - (_2729 + 0.5f)) / (0.5f - _2729), 0.0f, 1.0f);
                _2737 = _2735 * _2735;
            }
            else
            {
                _2737 = 1.0f;
            }
            if (false || (_2737 < 0.001000000047497451305389404296875f))
            {
                _2624 = _2601;
                continue;
            }
            float3 _3467;
            if (_36_m6[_2637].w < 1.5f)
            {
                float3 _3466;
                do
                {
                    uint _2750 = asuint(_36_m6[_2646].w);
                    if ((_2750 == 16u) || ((_36_m6[_2646].z + _19_m91.z) < 0.5f))
                    {
                        _3466 = _2601;
                        break;
                    }
                    bool _2762 = (uint(_36_m6[_2637].w) & 1u) == 0u;
                    bool _2766 = (!_2762) && (_36_m6[_2643].z > 0.0f);
                    bool _2767 = _2750 == 4u;
                    float _2768 = float(_2762);
                    float _2776 = (0.5f + (0.5f * _36_m6[_2643].y)) - abs(_36_m6[_2643].x);
                    float _2777 = _36_m6[_2643].y - _2776;
                    float _2784 = abs(max((1.0f - abs(_2776)) - abs(_2777), 0.00048828125f));
                    float3 _2788 = normalize(float3(_2776, _2777, (_36_m6[_2643].x >= 0.0f) ? _2784 : (-_2784)));
                    float _2794 = lerp(_36_m6[_2655].w, max(2.0f * _36_m6[_2649].y, 0.100000001490116119384765625f), float(_2767));
                    float3 _2799 = _36_m6[_2640].xyz - _536;
                    float3 _2800 = -_2788;
                    float3 _2805 = lerp(_2799, _2800 * dot(_2799, _2800), (float(_2767 && (_36_m6[_2649].z > 0.5f)) * _2768).xxx);
                    float _2806 = dot(_2805, _2805);
                    float _2807 = rsqrt(_2806);
                    float3 _2808 = _2805 * _2807;
                    float3 _2841;
                    float _2842;
                    if (_2766)
                    {
                        float3 _2812 = (_2788 * _36_m6[_2643].z) * 0.5f;
                        float3 _2813 = _2805 - _2812;
                        float3 _2814 = _2805 + _2812;
                        float _2815 = length(_2813);
                        float _2816 = length(_2814);
                        float3 _2825 = normalize(cross(cross(_2788, _2808), _2788));
                        _2841 = _2825;
                        _2842 = ((1.0f / ((((_2815 * _2816) + dot(_2813, _2814)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2825, _2813) / _2815) + (dot(_2825, _2814) / _2816)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2643].z * _2807, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2841 = _2808;
                        _2842 = 1.0f;
                    }
                    float _2864;
                    if (_2794 < 0.0f)
                    {
                        float _2852 = _2806 * (_36_m6[_2640].w * _36_m6[_2640].w);
                        float _2855 = clamp(1.0f - (_2852 * _2852), 0.0f, 1.0f);
                        _2864 = lerp(1.0f / (_2806 + 1.0f), _2842, float(_2766)) * (_2855 * _2855);
                    }
                    else
                    {
                        float3 _2858 = _2805 * _36_m6[_2640].w;
                        _2864 = _2842 * pow(1.0f - clamp(dot(_2858, _2858), 0.0f, 1.0f), _2794);
                    }
                    float _2869 = clamp((dot(_2841, _2800) - _36_m6[_2643].z) * _36_m6[_2643].w, 0.0f, 1.0f);
                    float _2872 = _2864 * lerp(1.0f, _2869 * _2869, _2768);
                    int _2874 = int(_36_m6[_2658].w);
                    float _2978;
                    if ((!_2766) && (_2874 >= 0))
                    {
                        uint _2880 = uint(_2874);
                        float2 _2971;
                        [branch]
                        if (_2768 != 0.0f)
                        {
                            float4 _2892 = mul(_64_m1[_2880], float4(_536.x, _608, _536.z, 1.0f));
                            _2971 = _64_m0[_2880].xy + (clamp(_2892.xy / _2892.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2880].zw);
                        }
                        else
                        {
                            float3 _2912 = mul(float4(-_2805, 0.0f), _64_m1[_2880]).xyz;
                            float3 _422 = _2912;
                            float3 _421 = _2912;
                            float3 _420 = abs(_2912);
                            uint _2921 = uint(int(_420.y > _420.x));
                            uint _2927 = (_420.z > _420[_2921]) ? 2u : _2921;
                            uint _2933 = (_2927 * 2u) + uint(_421[_2927] < 0.0f);
                            float _2937 = abs(_422[_2933 / 2u]);
                            float _2957 = 0.5f - (0.000244140625f / _64_m0[_2880].w);
                            _2971 = _64_m0[_2880].xy + (clamp(float2((float(_2933) + ((((_422[uint(_372[_2933].x)] * _373[_2933].x) / _2937) * _2957) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_422[uint(_372[_2933].y)] * _373[_2933].y) / _2937) * _2957)), 0.0f.xx, 1.0f.xx) * _64_m0[_2880].zw);
                        }
                        _2978 = _2872 * _62.SampleLevel(_25, _2971, 0.0f).x;
                    }
                    else
                    {
                        _2978 = _2872;
                    }
                    float _2979 = _2978 * _2737;
                    float3 _3465;
                    do
                    {
                        float3 _3464;
                        [branch]
                        if (_2979 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2767)
                            {
                                _3465 = lerp(_2601, _36_m6[_2637].xyz, (_2979 * (_36_m6[_2649].x * ((1.0f - _36_m6[_2649].w) + (smoothstep(-0.5f, 0.5f, dot(_564, _2841)) * _36_m6[_2649].w)))).xxx);
                                break;
                            }
                            float _2999 = dot(_2037, _2841);
                            float _3000 = clamp(_2999, 0.0f, 1.0f);
                            float _3303;
                            if (_2750 != 0u)
                            {
                                bool _3006 = _2762 || ((_2662 & 2u) != 0u);
                                int _3055;
                                if (_3006)
                                {
                                    _3055 = int(_36_m6[_2646].x);
                                }
                                else
                                {
                                    uint _3012 = asuint(_36_m6[_2643].w);
                                    uint _3014 = asuint(_36_m6[_2646].x);
                                    float3 _3015 = _536 - _36_m6[_2640].xyz;
                                    float3 _3016 = abs(_3015);
                                    float _3017 = _3016.x;
                                    float _3018 = _3016.y;
                                    float _3020 = _3016.z;
                                    int _3052;
                                    if ((_3017 > _3018) && (_3017 > _3020))
                                    {
                                        _3052 = int((_3015.x > 0.0f) ? (_3012 >> 24u) : ((_3012 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3051;
                                        if (_3018 > _3020)
                                        {
                                            _3051 = int((_3015.y > 0.0f) ? ((_3012 >> 8u) & 255u) : (_3012 & 255u));
                                        }
                                        else
                                        {
                                            _3051 = int((_3015.z > 0.0f) ? ((_3014 >> 8u) & 255u) : (_3014 & 255u));
                                        }
                                        _3052 = _3051;
                                    }
                                    _3055 = (_3052 < 80) ? _3052 : (-1);
                                }
                                bool _3056 = _3055 >= 0;
                                float _3302;
                                if (_3056)
                                {
                                    float3 _3060 = _536 - _36_m6[_2640].xyz;
                                    float4 _3080 = mul(_38_m10[_3055], float4((_536 - ((_3060 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3060, _3060)))) * _38_m11[_3055].x)) + (_564 * (_38_m11[_3055].y * 5.0f)), 1.0f));
                                    float _3081 = _3080.w;
                                    float3 _3084 = _3080.xyz / _3081.xxx;
                                    float2 _3085 = _3084.xy;
                                    float3 _3093 = _3084.xyz;
                                    bool3 _3094 = bool3(_3093.x <= 0.0f.xxx.x, _3093.y <= 0.0f.xxx.y, _3093.z <= 0.0f.xxx.z);
                                    bool3 _3095 = bool3(_3093.x >= 1.0f.xxx.x, _3093.y >= 1.0f.xxx.y, _3093.z >= 1.0f.xxx.z);
                                    float _3098 = _3084.z;
                                    float2 _3109 = ((_3085 * (_38_m12[_3055].zw - _38_m12[_3055].xy)) + _38_m12[_3055].xy).xy * _38_m13.zw;
                                    float2 _3111 = floor(_3109 + 0.5f.xx);
                                    float2 _3112 = _3109 - _3111;
                                    float _3114 = _3112.x + 0.5f;
                                    float _3115 = _3114 * _3114;
                                    float _3118 = 1.0f - _3112.x;
                                    float _3119 = min(_3112.x, 0.0f);
                                    float _3122 = _3112.x + 1.0f;
                                    float _3123 = max(_3112.x, 0.0f);
                                    float _3135 = _3112.y + 0.5f;
                                    float _3136 = _3135 * _3135;
                                    float _3139 = 1.0f - _3112.y;
                                    float _3140 = min(_3112.y, 0.0f);
                                    float _3143 = _3112.y + 1.0f;
                                    float _3144 = max(_3112.y, 0.0f);
                                    float3 _3156 = float3(0.1599999964237213134765625f * _3118, 0.1599999964237213134765625f * ((_3122 - (_3123 * _3123)) + 1.0f), _3115 * 0.07999999821186065673828125f);
                                    float3 _3157 = float3(0.1599999964237213134765625f * ((_3115 * 0.5f) - _3112.x), 0.1599999964237213134765625f * ((_3118 - (_3119 * _3119)) + 1.0f), 0.1599999964237213134765625f * _3122) + _3156;
                                    float3 _3159 = float3(0.1599999964237213134765625f * _3139, 0.1599999964237213134765625f * ((_3143 - (_3144 * _3144)) + 1.0f), _3136 * 0.07999999821186065673828125f);
                                    float3 _3160 = float3(0.1599999964237213134765625f * ((_3136 * 0.5f) - _3112.y), 0.1599999964237213134765625f * ((_3139 - (_3140 * _3140)) + 1.0f), 0.1599999964237213134765625f * _3143) + _3159;
                                    float3 _3166 = ((_3156 / _3157) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3168 = ((_3159 / _3160) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3170 = _3111 * _38_m13.xy;
                                    float _3171 = _3166.x;
                                    float _3172 = _3168.x;
                                    float _3175 = _3166.y;
                                    float _3178 = _3166.z;
                                    float _3181 = _3168.y;
                                    float _3188 = _3168.z;
                                    float _3195 = _3157.x;
                                    float _3196 = _3160.x;
                                    float _3198 = _3157.y;
                                    float _3200 = _3157.z;
                                    float _3202 = _3160.y;
                                    float _3206 = _3160.z;
                                    float _3264 = (((((((_3195 * _3196) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3171, _3172), _414).xy, _3098)) + ((_3198 * _3196) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3175, _3172), _414).xy, _3098))) + ((_3200 * _3196) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3178, _3172), _414).xy, _3098))) + ((_3195 * _3202) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3171, _3181), _414).xy, _3098))) + ((_3198 * _3202) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3175, _3181), _414).xy, _3098))) + ((_3200 * _3202) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3178, _3181), _414).xy, _3098))) + ((_3195 * _3206) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3171, _3188), _414).xy, _3098));
                                    float2 _3285 = min(_3085, 1.0f.xx - _3085);
                                    _3302 = _3056 ? lerp(1.0f, (any(bool3(_3094.x || _3095.x, _3094.y || _3095.y, _3094.z || _3095.z)) || ((asuint(_3098) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3264 + ((_3198 * _3206) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3175, _3188), _414).xy, _3098))) + ((_3200 * _3206) * _39.SampleCmpLevelZero(_27, float3(_3170 + float2(_3178, _3188), _414).xy, _3098))), _3006 ? min(_38_m11[_3055].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_3055].z - _3081) * 0.25f, min(_3285.x, _3285.y)))) : _38_m11[_3055].w) : 1.0f;
                                }
                                else
                                {
                                    _3302 = clamp(dot(_543, _2841) + 1.0f, 0.0f, 1.0f);
                                }
                                _3303 = _3302;
                            }
                            else
                            {
                                _3303 = 1.0f;
                            }
                            float _3383;
                            float3 _3384;
                            float _3385;
                            float3 _3386;
                            float3 _3387;
                            float _3388;
                            float _3389;
                            [branch]
                            if (_2750 == 0u)
                            {
                                float3 _3309 = _36_m6[_2637].xyz * _2979;
                                float3 _3322 = _2258.xyz;
                                _3383 = _2979;
                                _3384 = (_36_m6[_2637].xyz * ((1.0f - _36_m6[_2649].y) + ((1.0f / max(1.0f, max(max(_3309.x, _3309.y), _3309.z) * lerp(0.75f, 0.5f, _2452))) * _36_m6[_2649].y))) * lerp(0.25f * _36_m6[_2649].x, 1.0f, clamp(_2999 + 0.5f, 0.0f, 1.0f));
                                _3385 = _3000;
                                _3386 = _3322;
                                _3387 = _3322;
                                _3388 = 1.0f;
                                _3389 = 0.0f;
                            }
                            else
                            {
                                float _3377;
                                float _3378;
                                float3 _3379;
                                float3 _3380;
                                float _3381;
                                float _3382;
                                if (_2750 == 3u)
                                {
                                    _3377 = _2979 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2649].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2649].x), _2418) * _3303);
                                    _3378 = clamp(dot(_2037, -normalize(cross(_576, cross(_576, _2841)))), 0.0f, 1.0f);
                                    _3379 = lerp(0.5f.xxx, _2044, _36_m6[_2649].y.xxx);
                                    _3380 = 0.0f.xxx;
                                    _3381 = 1.0f;
                                    _3382 = 0.0f;
                                }
                                else
                                {
                                    bool _3347 = _2750 == 1u;
                                    float _3371;
                                    float3 _3372;
                                    float _3373;
                                    float _3374;
                                    if (_3347)
                                    {
                                        _3371 = clamp(clamp(_2999 + _36_m6[_2649].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3303;
                                        _3372 = _2048 * _36_m6[_2649].y;
                                        _3373 = 1.0f;
                                        _3374 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3357 = _2750 == 2u;
                                        float _3369;
                                        if (_3357)
                                        {
                                            _3369 = smoothstep(_36_m6[_2649].x + 0.0500000007450580596923828125f, _36_m6[_2649].x - 0.0500000007450580596923828125f, _2038) * ((1.0f - _36_m6[_2649].z) + (step(0.5f, _2041) * _36_m6[_2649].z));
                                        }
                                        else
                                        {
                                            _3369 = 1.0f;
                                        }
                                        _3371 = _3000;
                                        _3372 = 0.0f.xxx;
                                        _3373 = _3369;
                                        _3374 = _3357 ? _36_m6[_2649].y : 0.0f;
                                    }
                                    bool3 _3375 = _3347.xxx;
                                    _3377 = _2979;
                                    _3378 = _3371;
                                    _3379 = float3(_3375.x ? _2044.x : 0.0f.xxx.x, _3375.y ? _2044.y : 0.0f.xxx.y, _3375.z ? _2044.z : 0.0f.xxx.z);
                                    _3380 = _3372;
                                    _3381 = _3373;
                                    _3382 = _3374;
                                }
                                _3383 = _3377;
                                _3384 = _36_m6[_2637].xyz;
                                _3385 = _3378;
                                _3386 = _3379;
                                _3387 = _3380;
                                _3388 = _3381;
                                _3389 = _3382;
                            }
                            float3 _3454;
                            [branch]
                            if (_2750 != 3u)
                            {
                                float _3394 = lerp(_2050, 0.00999999977648258209228515625f, _3389);
                                float3 _3396 = normalize(_2841 + _452);
                                float _3397 = dot(_1861, _3396);
                                float _3398 = _3394 * _3394;
                                float _3402 = (((_3397 * _3398) - _3397) * _3397) + 1.0f;
                                float _3403 = _3402 * _3402;
                                float3 _3414 = _2047 * clamp((((_3398 != _3403) ? (_3398 / _3403) : 1.0f) * (0.5f / ((_2295 + (_3394 * _2297)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
                                float3 _3451;
                                if (_2306)
                                {
                                    float _3419 = dot(_1154, _3396);
                                    float _3421 = clamp(dot(_1154, _452), 0.0f, 1.0f);
                                    float _3422 = 1.0f - clamp(dot(_452, _3396), 0.0f, 1.0f);
                                    float _3423 = _3422 * _3422;
                                    float _3425 = (_3422 * _3423) * _3423;
                                    float _3431 = _1138 * _1138;
                                    float _3435 = (((_3419 * _3431) - _3419) * _3419) + 1.0f;
                                    float _3436 = _3435 * _3435;
                                    _3451 = _3414 + clamp(((((_2356 * (1.0f - _3425)) + _3425.xxx) * _1143) * ((_3431 != _3436) ? (_3431 / _3436) : 1.0f)) * (0.5f / (((2.0f * _3421) + (_1138 * ((1.0f + _3421) - _3421))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
                                }
                                else
                                {
                                    _3451 = _3414;
                                }
                                _3454 = (_3451 * _3388) * _36_m6[_2658].z;
                            }
                            else
                            {
                                _3454 = 0.0f.xxx;
                            }
                            float3 _3457 = _3384 * _3383;
                            _3464 = _2601 + (((_3457 * lerp(_3387, _3386, _3385.xxx)) * _2368) + ((_3457 * _3454) * _3385));
                        }
                        else
                        {
                            _3464 = _2601;
                        }
                        _3465 = _3464;
                        break;
                    } while(false);
                    _3466 = _3465;
                    break;
                } while(false);
                _3467 = _3466;
            }
            else
            {
                _3467 = _2601;
            }
            _2624 = _3467;
        }
    }
    float3 _3507;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3507 = lerp(lerp(0.5f.xxx, lerp(dot(_2600, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2600, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2416, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3507 = _2600;
    }
    float4 _3514 = float4(_3507 * _19_m20.y, _499);
    _3514.w = (_49_m8 == 1.0f) ? _499 : 1.0f;
    float4 _3901;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3538 = _608 * _19_m46.w;
        float _3543 = max(0.00999999977648258209228515625f, _3538 + _19_m47.w);
        float3 _3557 = exp(_19_m45.xyz * ((-max(0.0f, (_453 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3543)) / _3543) * exp(_3538 + _19_m48.w))));
        float _3560 = dot(_2509, _19_m44.xyz);
        float _3566 = _19_m45.w * _19_m45.w;
        float _3570 = (1.0f + _3566) - ((2.0f * _19_m45.w) * _3560);
        float3 _3893;
        float _3894;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3615 = (uint3(int3(_2123, _2124, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3616 = _3615.y;
            uint _3617 = _3615.z;
            uint _3620 = _3615.x + (_3616 * _3617);
            uint _3622 = _3616 + (_3617 * _3620);
            uint _3624 = _3617 + (_3620 * _3622);
            uint _3626 = _3620 + (_3622 * _3624);
            float _3651 = dot(_2509, -_17_m0[2].xyz);
            float3 _3658 = _536 - _17_m11.xyz;
            float _3660 = (_19_m55.w * ((_3651 > 5.9604644775390625e-08f) ? (1.0f / _3651) : 0.0f)) * (1.0f / _453);
            float _3661 = _3658.y;
            float _3662 = _3660 * _3661;
            float _3664 = _17_m11.y + _3662;
            float _3665 = _3661 - _3662;
            float _3667 = (1.0f - _3660) * _453;
            float _3681 = max(-127.0f, _19_m49.z * _3665);
            float _3705 = max(-127.0f, _19_m52.x * _3665);
            float _3716 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3664 - _19_m49.x)))) * ((abs(_3681) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3681)) / _3681) : (0.693147182464599609375f - (0.2402265071868896484375f * _3681)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3664 - _19_m52.z)))) * ((abs(_3705) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3705)) / _3705) : (0.693147182464599609375f - (0.2402265071868896484375f * _3705))));
            float _3738 = clamp((_453 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3741 = clamp((max(clamp(exp2(-(_3716 * _3667)), 0.0f, 1.0f), _19_m51.w) + clamp((_453 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3738, 0.0f, 1.0f);
            float4 _3781 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_25, float3((_2575 + ((((float3(uint3(_3626, _3622 + (_3624 * _3626), _418) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_433 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_433 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3893 = _3781.xyz + (((_19_m51.xyz * (1.0f - _3741)) + (((_19_m54.xyz * pow(clamp(dot(_452, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3716 * max(_3667 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3738))) * _3781.w);
            _3894 = _3781.w * _3741;
        }
        else
        {
            float3 _3787 = _536 - _17_m11.xyz;
            float _3789 = _3787.y;
            float _3803 = max(-127.0f, _19_m49.z * _3789);
            float _3827 = max(-127.0f, _19_m52.x * _3789);
            float _3838 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3803) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3803)) / _3803) : (0.693147182464599609375f - (0.2402265071868896484375f * _3803)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3827) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3827)) / _3827) : (0.693147182464599609375f - (0.2402265071868896484375f * _3827))));
            float _3860 = clamp((_453 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3863 = clamp((max(clamp(exp2(-(_3838 * _453)), 0.0f, 1.0f), _19_m51.w) + clamp((_453 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3860, 0.0f, 1.0f);
            _3893 = (_19_m51.xyz * (1.0f - _3863)) + (((_19_m54.xyz * pow(clamp(dot(_452, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3838 * max(_453 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3860));
            _3894 = _3863;
        }
        float3 _3899 = (_3514.xyz * (_3557 * _3894)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3560 * _3560)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3566) / max((12.56637096405029296875f * _3570) * sqrt(_3570), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3557)) * _3894) + _3893);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3899 = (_3899 * 0.65f) + (_3514.xyz * 0.35f);

        }
        _3901 = float4(_3899.x, _3899.y, _3899.z, _3514.w);
    }
    else
    {
        _3901 = _3514;
    }
    _14 = _3901;
    _15 = _2088;
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
