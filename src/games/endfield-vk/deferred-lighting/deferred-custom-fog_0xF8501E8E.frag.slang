// DX11 0x523DDB41 -> Vulkan 0xF8501E8E
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

static float _417 = 0.0f;
static float3 _418 = 0.0f;
static float _420 = 0.0f;
static uint _421 = 0u;

static const int2 _375[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _376[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float _49_m34 : packoffset(c13);
    float _49_m35 : packoffset(c13.y);
    float _49_m36 : packoffset(c13.z);
    float _49_m37 : packoffset(c13.w);
    float4 _49_m38 : packoffset(c14);
    float _49_m39 : packoffset(c15);
    float _49_m40 : packoffset(c15.y);
    float _49_m41 : packoffset(c15.z);
    float _49_m42 : packoffset(c15.w);
    float4 _49_m43 : packoffset(c16);
    float4 _49_m44 : packoffset(c17);
    float4 _49_m45 : packoffset(c18);
    float4 _49_m46 : packoffset(c19);
    float4 _49_m47 : packoffset(c20);
    float4 _49_m48 : packoffset(c21);
    float _49_m49 : packoffset(c22);
    float _49_m50 : packoffset(c22.y);
    float _49_m51 : packoffset(c22.z);
    float _49_m52 : packoffset(c22.w);
    float _49_m53 : packoffset(c23);
    float _49_m54 : packoffset(c23.y);
    float _49_m55 : packoffset(c23.z);
    float _49_m56 : packoffset(c23.w);
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
[[vk::binding(4, 1)]] Texture2D<float4> _50 : register(t4);
[[vk::binding(1, 1)]] Texture2D<float4> _51 : register(t1);
[[vk::binding(44, 0)]] Texture2D<float4> _52 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _53 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _54 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _55 : register(t37);
[[vk::binding(6, 1)]] Texture2D<float4> _56 : register(t6);
[[vk::binding(2, 1)]] Texture2D<float4> _57 : register(t2);
[[vk::binding(5, 1)]] Texture2D<float4> _58 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _59 : register(t3);
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
    float _436 = 1.0f / gl_FragCoord.w;
    float3 _451 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _452 = dot(_451, _451);
    float _454 = rsqrt(max(_452, 9.9999999392252902907785028219223e-09f));
    float3 _455 = _451 * _454;
    float _456 = _452 * _454;
    uint _459 = asuint(_22_m0[_12]._m2.x);
    bool _464 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _477;
    float4 _478;
    if (_464)
    {
        _477 = asfloat(_32_Load4((_459 + 2u) * 16 + 0));
        _478 = asfloat(_32_Load4(_459 * 16 + 0));
    }
    else
    {
        _477 = _22_m0[_12]._m0[2];
        _478 = _22_m0[_12]._m0[0];
    }
    float4 _484 = _56.SampleBias(_26, _3, _19_m16);
    float3 _489 = _484.xyz * _49_m24.xyz;
    float4 _493 = _57.SampleBias(_26, _3, _19_m16);
    float _494 = _493.x;
    float _495 = _493.y;
    float _496 = _493.z;
    float _498 = 1.0f - _493.w;
    float _502 = _484.w * _49_m24.w;
    float3 _507 = _489 * _49_m18;
    float3 _511 = lerp(dot(_507, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _507, _49_m19.xxx);
    float4 _515 = _58.SampleBias(_26, _3, _19_m16);
    _515.w = _515.w * _515.x;
    float2 _524 = (_515.wy * 2.0f) - 1.0f.xx;
    float3 _525 = float3(_524.x, _524.y, _418.z);
    float2 _526 = _524.xy;
    _525.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_526, _526), 0.0f, 1.0f)));
    float2 _534 = _525.xy * _49_m3;
    float4 _539 = _59.SampleBias(_26, _3, _19_m16);
    float3 _551 = _4 + _17_m11.xyz;
    float3 _555 = _551 - float3(_478.w, _420, _477.w);
    _555.y = 6.103515625e-05f;
    float3 _558 = normalize(_555);
    float3 _568 = mul(float3(_534.x, _534.y, _525.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _577 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _578 = (_568 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_568, _568)))) * _577;
    float3 _579 = normalize(_5) * _577;
    bool3 _583 = (_49_m34 > 0.5f).xxx;
    float3 _584 = cross(_5, float3(0.0f, 1.0f, 0.0f));
    float3 _588 = _584 * rsqrt(max(6.103515625e-05f, dot(_584, _584)));
    float3 _590 = float3(_583.x ? _6.xyz.x : _588.x, _583.y ? _6.xyz.y : _588.y, _583.z ? _6.xyz.z : _588.z).xyz;
    float3 _594 = normalize(_590 - (_578 * dot(_590, _578)));
    float3 _595 = _594.xyz;
    float3 _598 = cross(_578, _595) * _6.w;
    uint2 _600 = uint2(gl_FragCoord.xy);
    float3 _610 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _619 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _632 = float4(float(_619 & 255u), float((_619 >> 8u) & 255u), float((_619 >> 16u) & 255u), float((_619 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _633 = _632.x;
    float _636 = _632.w;
    float _642 = _551.y;
    float _645 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _642) * _632.y;
    float _646 = max(_632.z, _645);
    float _655 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1149;
    float3 _1150;
    float3 _1151;
    float _1152;
    if (_19_m80.y < 0.5f)
    {
        float3 _670 = _551 - (_19_m105.xyz + (_610 * (-_19_m107.w)));
        float _684 = max(clamp((max(abs(_670.x), abs(_670.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_670.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _986;
        float4 _987;
        float4 _988;
        float _989;
        float _990;
        if ((_19_m105.w != 0.0f) && (_684 < 1.0f))
        {
            float3 _697 = _551 - (_19_m105.xyz + (_610 * (-_19_m107.y)));
            float _711 = max(clamp((max(abs(_697.x), abs(_697.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_697.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _787;
            float4 _788;
            float4 _789;
            float4 _790;
            if (_711 < 1.0f)
            {
                float3 _720 = ((_551 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _722 = _720 - floor(_720);
                float4 _726 = _42.SampleLevel(_26, _722, 0.0f);
                float _727 = 1.0f - _711;
                float _731 = _19_m106.y * 0.5f;
                float _736 = _722.x;
                float _737 = clamp(_722.y, _731, 1.0f - _731) * 0.3333333432674407958984375f;
                float _738 = _722.z;
                float4 _741 = _43.SampleLevel(_25, float3(_736, _737, _738), 0.0f);
                float _757 = _726.x;
                float _767 = _726.y;
                float _777 = _726.z;
                _787 = _684 + (_741.w * _727);
                _788 = float4(((_43.SampleLevel(_25, float3(_736, _737 + 0.666666686534881591796875f, _738), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _777, _777) * _727;
                _789 = float4(((_43.SampleLevel(_25, float3(_736, _737 + 0.3333333432674407958984375f, _738), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _767, _767) * _727;
                _790 = float4(((_741.xyz * 4.0f) - 2.0f.xxx) * _757, _757) * _727;
            }
            else
            {
                _787 = _684;
                _788 = 0.0f.xxxx;
                _789 = 0.0f.xxxx;
                _790 = 0.0f.xxxx;
            }
            float3 _796 = _551 - (_19_m105.xyz + (_610 * (-_19_m107.z)));
            float _810 = max(clamp((max(abs(_796.x), abs(_796.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_796.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _890;
            float4 _891;
            float4 _892;
            float4 _893;
            if (_810 < 1.0f)
            {
                float3 _819 = ((_551 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _821 = _819 - floor(_819);
                float4 _825 = _44.SampleLevel(_26, _821, 0.0f);
                float _827 = _711 * (1.0f - _810);
                float _831 = _19_m106.y * 0.5f;
                float _836 = _821.x;
                float _837 = clamp(_821.y, _831, 1.0f - _831) * 0.3333333432674407958984375f;
                float _838 = _821.z;
                float4 _841 = _45.SampleLevel(_25, float3(_836, _837, _838), 0.0f);
                float _857 = _825.x;
                float _868 = _825.y;
                float _879 = _825.z;
                _890 = _787 + (_841.w * _827);
                _891 = _788 + (float4(((_45.SampleLevel(_25, float3(_836, _837 + 0.666666686534881591796875f, _838), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _879, _879) * _827);
                _892 = _789 + (float4(((_45.SampleLevel(_25, float3(_836, _837 + 0.3333333432674407958984375f, _838), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _868, _868) * _827);
                _893 = _790 + (float4(((_841.xyz * 4.0f) - 2.0f.xxx) * _857, _857) * _827);
            }
            else
            {
                _890 = _787;
                _891 = _788;
                _892 = _789;
                _893 = _790;
            }
            float4 _976;
            float4 _977;
            float4 _978;
            float _979;
            if (_810 > 0.0f)
            {
                float3 _902 = ((_551 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _905 = _19_m106.xyz * 0.5f;
                float3 _907 = clamp(_902 - floor(_902), _905, 1.0f.xxx - _905);
                float4 _911 = _46.SampleLevel(_26, _907, 0.0f);
                float _913 = _810 * (1.0f - _684);
                float _917 = _19_m106.y * 0.5f;
                float _922 = _907.x;
                float _923 = clamp(_907.y, _917, 1.0f - _917) * 0.3333333432674407958984375f;
                float _924 = _907.z;
                float4 _927 = _47.SampleLevel(_25, float3(_922, _923, _924), 0.0f);
                float _943 = _911.x;
                float _954 = _911.y;
                float _965 = _911.z;
                _976 = _891 + (float4(((_47.SampleLevel(_25, float3(_922, _923 + 0.666666686534881591796875f, _924), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _965, _965) * _913);
                _977 = _892 + (float4(((_47.SampleLevel(_25, float3(_922, _923 + 0.3333333432674407958984375f, _924), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _954, _954) * _913);
                _978 = _893 + (float4(((_927.xyz * 4.0f) - 2.0f.xxx) * _943, _943) * _913);
                _979 = _890 + (_927.w * _913);
            }
            else
            {
                _976 = _891;
                _977 = _892;
                _978 = _893;
                _979 = _890;
            }
            float _982 = clamp((_979 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _986 = _976;
            _987 = _977;
            _988 = _978;
            _989 = _982 - _684;
            _990 = (_982 + _684) * 0.5f;
        }
        else
        {
            _986 = 0.0f.xxxx;
            _987 = 0.0f.xxxx;
            _988 = 0.0f.xxxx;
            _989 = 0.0f;
            _990 = 1.0f;
        }
        float4 _1010 = _988 + float4(_19_m108.x * _990, (_19_m108.y * _990) + ((_19_m108.w * _989) * 0.5f), _19_m108.z * _990, (_19_m108.w * _990) + ((_19_m108.y * _989) * 0.375f));
        float4 _1030 = _987 + float4(_19_m109.x * _990, (_19_m109.y * _990) + ((_19_m109.w * _989) * 0.5f), _19_m109.z * _990, (_19_m109.w * _990) + ((_19_m109.y * _989) * 0.375f));
        float4 _1050 = _986 + float4(_19_m110.x * _990, (_19_m110.y * _990) + ((_19_m110.w * _989) * 0.5f), _19_m110.z * _990, (_19_m110.w * _990) + ((_19_m110.y * _989) * 0.375f));
        float4 _1054 = float4(_578, 1.0f);
        float3 _1060 = max(float3(dot(_1010, _1054), dot(_1030, _1054), dot(_1050, _1054)), 0.0f.xxx) * _655;
        float3 _1068 = ((_1010.xyz * 0.2125999927520751953125f) + (_1030.xyz * 0.715200006961822509765625f)) + (_1050.xyz * 0.072200000286102294921875f);
        float3 _1072 = _1068 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1068, _1068)));
        float _1074 = abs(_1072.y);
        float3 _1075 = _1072;
        _1075.y = _1074;
        float4 _1076 = float4(_1075.x, _1075.y, _1075.z, 0.0f.xxxx.w);
        _1076.w = 1.0f;
        float4 _1080 = float4(_1072.x, _1074, _1072.z, 1.0f);
        float3 _1085 = max(float3(dot(_1010, _1080), dot(_1030, _1080), dot(_1050, _1080)), 0.0f.xxx);
        float _1093 = _1060.z;
        float _1094 = _1060.y;
        float4 _1099 = lerp(float4(_1093, _1094, -1.0f, 0.666666686534881591796875f), float4(_1094, _1093, 0.0f, -0.3333333432674407958984375f), step(_1093, _1094).xxxx);
        float _1100 = _1060.x;
        float _1101 = _1099.x;
        float4 _1109 = lerp(float4(_1101, _1099.yw, _1100), float4(_1100, _1099.yz, _1101), step(_1101, _1100).xxxx);
        float _1110 = _1109.x;
        float _1111 = _1109.w;
        float _1112 = _1109.y;
        float _1114 = _1110 - min(_1111, _1112);
        float _1124 = frac(abs(_1109.z + ((_1111 - _1112) / ((6.0f * _1114) + 9.9999997473787516355514526367188e-05f))));
        float _1131 = min(_1114 / (_1110 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1124 - 0.5f))) * clamp(_1110, 0.0f, 1.0f));
        float _1133 = 2.0f / (2.0f - _1131);
        _1149 = _1076;
        _1150 = _1060;
        _1151 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1124, _1131, _1133).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1131.xxx) * _1133;
        _1152 = max(max(max(_1085.x, _1085.y), _1085.z), 0.0f) * _655;
    }
    else
    {
        _1149 = 0.0f.xxxx;
        _1150 = 1.0f.xxx;
        _1151 = _19_m81.xyz;
        _1152 = _655;
    }
    float3 _1872;
    float _1873;
    float _1874;
    float _1875;
    float3 _1876;
    float3 _1877;
    [branch]
    if ((clamp(_633 + _646, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1180 = 1.0f - _494;
        float _1183 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_489 * _1180, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1186 = _464.xxx;
        float3 _1188 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1192 = float3(_1186.x ? _1188.x : _10.x, _1186.y ? _1188.y : _10.y, _1186.z ? _1188.z : _10.z) * _19_m89.z;
        float3 _1194 = float3(_1186.x ? _9.xzy.x : _9.x, _1186.y ? _9.xzy.y : _9.y, _1186.z ? _9.xzy.z : _9.z);
        float3 _1196 = abs(_1194) - 0.20000000298023223876953125f.xxx;
        float3 _1199 = max((_1196 * _1196) * _1196, 6.103515625e-05f.xxx);
        float3 _1202 = _1199 / dot(_1199, 1.0f.xxx).xxx;
        float2 _1210 = _1192.xy;
        float2 _1215 = _1192.zy;
        float4 _1225 = ((_52.SampleBias(_26, _1192.xz, _19_m16) * _1202.y) + (_52.SampleBias(_26, _1210, _19_m16) * _1202.z)) + (_52.SampleBias(_26, _1215, _19_m16) * _1202.x);
        float _1226 = _1225.w;
        float _1228 = 1.10000002384185791015625f - _1226;
        float _1237 = max(smoothstep(0.800000011920928955078125f - _1226, _1228, clamp((_633 * _1180) + (_578.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1226, _1228, clamp(_645 * _1180, 0.0f, 1.0f)));
        float _1244 = smoothstep(0.5f, 0.75f, _494);
        float _1246 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _498) * _1183;
        float _1249 = clamp(_1246 + _1244, 0.0f, 1.0f) * max(_633, _646);
        bool _1253 = !((step(_633, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _646)) != 0.0f);
        bool2 _1254 = _1253.xx;
        float2 _1256 = (1.0f - _646).xx;
        float2 _1257 = float2(_1254.x ? float2(3.0f, 4.345600128173828125f).x : _1256.x, _1254.y ? float2(3.0f, 4.345600128173828125f).y : _1256.y);
        float _1258 = 1.0f - _1249;
        float _1261 = _1253 ? _19_m10.x : 1.0f;
        float _1263 = _1261 * _1257.x;
        float _1265 = _1261 * _1257.y;
        float3 _1266 = _1192 * 20.0f;
        float3 _1267 = _1192 * 34.345600128173828125f;
        float3 _1269 = pow(max(_1196, 0.0f.xxx), 10.0f.xxx);
        float3 _1273 = _1269 / max(dot(_1269, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1275 = _1273.y;
        float2 _1276 = _1266.xz * 1.0f;
        float2 _1277 = floor(_1276);
        float2 _1280 = frac(_1277 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1284 = _1280 + dot(_1280, _1280 + 34.345001220703125f.xx).xx;
        float _1285 = _1284.x;
        float _1286 = _1284.y;
        float2 _1290 = frac(float2(_1285 * _1286, _1285 + _1286));
        float2 _1293 = frac((_1277 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1297 = _1293 + dot(_1293, _1293 + 34.345001220703125f.xx).xx;
        float _1298 = _1297.x;
        float _1299 = _1297.y;
        float2 _1303 = frac(float2(_1298 * _1299, _1298 + _1299));
        float _1309 = _1290.x;
        float _1311 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1309);
        float2 _1312 = ((_1276 - _1277) + ((((_1303 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1315 = _1312.y;
        float2 _1319 = float2(_1312.x * 1.25f, _1315 * ((_1315 < 0.0f) ? 1.25f : 0.75f));
        float _1322 = _1263 + _1309;
        float _1326 = _1253 ? frac(_1322) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1322, 0.0f, 1.0f));
        float _1338 = _1290.y;
        float _1341 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1326) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1326)) * step(0.001000000047497451305389404296875f, smoothstep(_1311, 0.0f, length(_1319)))) * step(_1258, _1338 - 0.100000001490116119384765625f);
        float _1344 = _1341 * _1275;
        float _1352 = _1273.z;
        float2 _1353 = _1266.xy * 1.0f;
        float2 _1354 = floor(_1353);
        float2 _1357 = frac(_1354 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1361 = _1357 + dot(_1357, _1357 + 34.345001220703125f.xx).xx;
        float _1362 = _1361.x;
        float _1363 = _1361.y;
        float2 _1367 = frac(float2(_1362 * _1363, _1362 + _1363));
        float2 _1370 = frac((_1354 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1374 = _1370 + dot(_1370, _1370 + 34.345001220703125f.xx).xx;
        float _1375 = _1374.x;
        float _1376 = _1374.y;
        float2 _1380 = frac(float2(_1375 * _1376, _1375 + _1376));
        float _1386 = _1367.x;
        float _1388 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1386);
        float2 _1389 = ((_1353 - _1354) + ((((_1380 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1392 = _1389.y;
        float2 _1396 = float2(_1389.x * 1.25f, _1392 * ((_1392 < 0.0f) ? 1.25f : 0.75f));
        float _1399 = _1263 + _1386;
        float _1403 = _1253 ? frac(_1399) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1399, 0.0f, 1.0f));
        float _1415 = _1367.y;
        float _1418 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1403) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1403)) * step(0.001000000047497451305389404296875f, smoothstep(_1388, 0.0f, length(_1396)))) * step(_1258, _1415 - 0.100000001490116119384765625f);
        float _1421 = _1418 * _1352;
        float _1429 = _1273.x;
        float2 _1430 = _1266.zy * 1.0f;
        float2 _1431 = floor(_1430);
        float2 _1434 = frac(_1431 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1438 = _1434 + dot(_1434, _1434 + 34.345001220703125f.xx).xx;
        float _1439 = _1438.x;
        float _1440 = _1438.y;
        float2 _1444 = frac(float2(_1439 * _1440, _1439 + _1440));
        float2 _1447 = frac((_1431 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1451 = _1447 + dot(_1447, _1447 + 34.345001220703125f.xx).xx;
        float _1452 = _1451.x;
        float _1453 = _1451.y;
        float2 _1457 = frac(float2(_1452 * _1453, _1452 + _1453));
        float _1463 = _1444.x;
        float _1465 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1463);
        float2 _1466 = ((_1430 - _1431) + ((((_1457 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1469 = _1466.y;
        float2 _1473 = float2(_1466.x * 1.25f, _1469 * ((_1469 < 0.0f) ? 1.25f : 0.75f));
        float _1476 = _1263 + _1463;
        float _1480 = _1253 ? frac(_1476) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1476, 0.0f, 1.0f));
        float _1492 = _1444.y;
        float _1495 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1480) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1480)) * step(0.001000000047497451305389404296875f, smoothstep(_1465, 0.0f, length(_1473)))) * step(_1258, _1492 - 0.100000001490116119384765625f);
        float _1498 = _1495 * _1429;
        float2 _1511 = (float4(((clamp(_1319 / _1311.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1303.x)) * _1341) * _1275, _1344, _1338).xy + float4(((clamp(_1396 / _1388.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1380.x)) * _1418) * _1352, _1421, _1415).xy) + float4(((clamp(_1473 / _1465.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1457.x)) * _1495) * _1429, _1498, _1492).xy;
        float _1513 = max(_1498, max(_1344, _1421));
        float4 _1516 = float4(_1511, _1513, 0.0f);
        float2 _1518 = _1267.xz * 1.0f;
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
        float _1564 = _1265 + _1551;
        float _1568 = _1253 ? frac(_1564) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1564, 0.0f, 1.0f));
        float _1580 = _1532.y;
        float _1583 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1568) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1568)) * step(0.001000000047497451305389404296875f, smoothstep(_1553, 0.0f, length(_1561)))) * step(_1258, _1580 - 0.100000001490116119384765625f);
        float _1586 = _1583 * _1275;
        float2 _1591 = _1267.xy * 1.0f;
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
        float _1637 = _1265 + _1624;
        float _1641 = _1253 ? frac(_1637) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1637, 0.0f, 1.0f));
        float _1653 = _1605.y;
        float _1656 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1641) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1641)) * step(0.001000000047497451305389404296875f, smoothstep(_1626, 0.0f, length(_1634)))) * step(_1258, _1653 - 0.100000001490116119384765625f);
        float _1659 = _1656 * _1352;
        float2 _1664 = _1267.zy * 1.0f;
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
        float _1699 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1697);
        float2 _1700 = ((_1664 - _1665) + ((((_1691 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1703 = _1700.y;
        float2 _1707 = float2(_1700.x * 1.25f, _1703 * ((_1703 < 0.0f) ? 1.25f : 0.75f));
        float _1710 = _1265 + _1697;
        float _1714 = _1253 ? frac(_1710) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1710, 0.0f, 1.0f));
        float _1726 = _1678.y;
        float _1729 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1714) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1714)) * step(0.001000000047497451305389404296875f, smoothstep(_1699, 0.0f, length(_1707)))) * step(_1258, _1726 - 0.100000001490116119384765625f);
        float _1732 = _1729 * _1429;
        float2 _1740 = (float4(((clamp(_1561 / _1553.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1545.x)) * _1583) * _1275, _1586, _1580).xy + float4(((clamp(_1634 / _1626.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1618.x)) * _1656) * _1352, _1659, _1653).xy) + float4(((clamp(_1707 / _1699.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1691.x)) * _1729) * _1429, _1732, _1726).xy;
        float4 _1745 = float4(_1740, max(_1732, max(_1586, _1659)), 0.0f);
        float _1747 = step(max(float2(_1311 * _1341, _420) * _1275, max(float2(_1388 * _1418, _420) * _1352, float2(_1465 * _1495, _420) * _1429)).x, 0.00999999977648258209228515625f);
        float2 _1751 = _1516.xy + (_1745.xy * _1747);
        float3 _1760 = float3((_1225.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1751.x, _1751.y, 0.0f.xxx.z);
        float2 _1764 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1767 = float3(_1194.x, 0.0f, _1194.z);
        float3 _1773 = abs(_1767 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1767, _1767)))) - 0.20000000298023223876953125f.xxx;
        float3 _1776 = max((_1773 * _1773) * _1773, 6.103515625e-05f.xxx);
        float3 _1779 = _1776 / dot(_1776, 1.0f.xxx).xxx;
        float _1798 = _1779.z;
        float _1800 = _1779.x;
        float4 _1802 = (_53.SampleBias(_26, _1210, _19_m16) * _1798) + (_53.SampleBias(_26, _1215, _19_m16) * _1800);
        float2 _1814 = _1760.xy + ((((_1802.xy * 2.0f) - 1.0f.xx) * ((_53.SampleBias(_26, _1210 + _1764, _19_m16).w * _1798) + (_53.SampleBias(_26, _1215 + _1764, _19_m16).w * _1800))) * _1249);
        float3 _1815 = float3(_1814.x, _1814.y, _1760.z);
        float _1816 = _1802.z;
        float _1821 = max(max(max(_1516.zw * step(0.00999999977648258209228515625f, _1513), _1745.zw * _1747).x, step(1.0099999904632568359375f - _1249, _1225.z)), smoothstep(1.0f - _1816, 1.10000002384185791015625f - _1816, _1249) * _1249);
        float2 _1822 = _1814.xy;
        _1815.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1822, _1822), 0.0f, 1.0f)));
        float3 _1829 = normalize(_1815);
        float3 _1830 = cross(_578, float3(0.0f, 1.0f, 0.0f));
        bool3 _1833 = (dot(_1830, _1830) > 6.103515625e-05f).xxx;
        float3 _1834 = normalize(_1830);
        float3 _1835 = float3(_1833.x ? _1834.x : float3(1.0f, 0.0f, 0.0f).x, _1833.y ? _1834.y : float3(1.0f, 0.0f, 0.0f).y, _1833.z ? _1834.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1846 = min(_498, 0.0500000007450580596923828125f);
        float _1847 = lerp(_498, _1846, _1821);
        float _1864 = lerp(1.0f, 0.5f, (_1237 * (1.0f - _1183)) * (1.0f - _1246));
        _1872 = normalize(lerp(_578, normalize(((_1835 * _1829.x) + (cross(_1835, _578) * _1829.y)) + (_578 * _1829.z)), _1821.xxx));
        _1873 = _1821;
        _1874 = _1846;
        _1875 = max(_1847 - ((0.20000000298023223876953125f * _1183) * _1237), min(0.20000000298023223876953125f, _1847));
        _1876 = _511 * _1864;
        _1877 = lerp(_489, _489 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_489, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1821 * _1244).xxx) * _1864;
    }
    else
    {
        _1872 = _578;
        _1873 = 0.0f;
        _1874 = 0.00999999977648258209228515625f;
        _1875 = _498;
        _1876 = _511;
        _1877 = _489;
    }
    float3 _2048;
    float _2049;
    float3 _2050;
    float3 _2051;
    float _2052;
    [branch]
    if (_636 > 0.00999999977648258209228515625f)
    {
        bool3 _1881 = _464.xxx;
        float3 _1883 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1884 = float3(_1881.x ? _1883.x : _10.x, _1881.y ? _1883.y : _10.y, _1881.z ? _1883.z : _10.z);
        float3 _1887 = _1884 * _19_m89.z;
        float3 _1889 = float3(_1881.x ? _9.xzy.x : _9.x, _1881.y ? _9.xzy.y : _9.y, _1881.z ? _9.xzy.z : _9.z);
        float3 _1891 = abs(_1889) - 0.20000000298023223876953125f.xxx;
        float3 _1894 = max((_1891 * _1891) * _1891, 6.103515625e-05f.xxx);
        float3 _1897 = _1894 / dot(_1894, 1.0f.xxx).xxx;
        float _1913 = _1897.y;
        float _1915 = _1897.z;
        float _1918 = _1897.x;
        float4 _1920 = ((_54.SampleBias(_26, _1887.xz, _19_m16) * _1913) + (_54.SampleBias(_26, _1887.xy, _19_m16) * _1915)) + (_54.SampleBias(_26, _1887.zy, _19_m16) * _1918);
        float _1921 = _1889.y;
        float _1928 = clamp(_636 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1884.y) * clamp(_636 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1939 = smoothstep(2.0f - _1928, 2.349999904632568359375f - _1928, ((_1921 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1920.z) * ((_496 * _496) * float(gl_FrontFacing));
        float _1951 = lerp(1.0f, 0.5f, ((_1928 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1877 * (1.0f - _494), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1920.w) * ((_1921 * 0.25f) + 0.75f));
        float3 _1953 = _1939.xxx;
        float2 _1959 = (_1920.xy * 2.0f) - 1.0f.xx;
        float3 _1960 = float3(_1959.x, _1959.y, _418.z);
        float2 _1961 = _1959.xy;
        _1960.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1961, _1961), 0.0f, 1.0f)));
        float2 _1969 = _1960.xy * 2.0f;
        float3 _1971 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1969.x, _1969.y, _1960.z), _1953);
        float3 _1975 = _1971 * rsqrt(max(6.103515625e-05f, dot(_1971, _1971)));
        float _1976 = _578.y;
        float _1979 = step(0.00999999977648258209228515625f, 1.0f - (_1976 * _1976));
        float _1983 = lerp(_578.z, _1976, _1979);
        float3 _1990 = (float3(0.0f, _1979, 1.0f - _1979) - (_578 * _1983)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1983 * _1983)));
        float3 _2004 = _1887 * 4.0f;
        float4 _2024 = ((_55.SampleLevel(_24, _2004.xz, 0.0f) * _1913) + (_55.SampleLevel(_24, _2004.xy, 0.0f) * _1915)) + (_55.SampleLevel(_24, _2004.zy, 0.0f) * _1918);
        float2 _2027 = (_2024.xz * 2.0f) - 1.0f.xx;
        float _2038 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2027.x, _2024.y, _2027.y), (floor(_455 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2039 = _2038 * _2038;
        float _2042 = _2039 * ((_2039 * 2.0f) * _1939);
        float3 _2043 = 1.0f.xxx * _2042;
        _2048 = ((cross(_1990, _578) * _1975.x) + (_1990 * _1975.y)) + (_578 * _1975.z);
        _2049 = lerp(lerp(_1875, 0.89999997615814208984375f, clamp(_1939 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2042);
        _2050 = lerp(_1876 * _1951, 0.3079999983310699462890625f.xxx, _1953) + (_2043 * 0.5f);
        _2051 = lerp(_1877 * _1951, 0.87999999523162841796875f.xxx, _1953) + _2043;
        _2052 = lerp(_494, 0.0f, _1939);
    }
    else
    {
        _2048 = _578;
        _2049 = _1875;
        _2050 = _1876;
        _2051 = _1877;
        _2052 = _494;
    }
    float _2054 = 0.959999978542327880859375f - (_2052 * 0.959999978542327880859375f);
    float _2057 = _49_m30 * _495;
    float3 _2067 = _2051 * _2054;
    float3 _2070 = lerp(0.039999999105930328369140625f.xxx * lerp(1.0f, _49_m33, _495), _2051, _2052.xxx);
    float3 _2071 = _2050 * _2054;
    float _2073 = max(_2049 * _2049, 0.0078125f);
    float2 _2075 = float4(_2057, _49_m31 * _495, _49_m32, _495).xy;
    float2 _2077 = (1.0f.xx + _2075) * _2073;
    float2 _2079 = (1.0f.xx - _2075) * _2073;
    bool _2091 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _2104 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2104.y = -_2104.y;
    float2 _2120 = lerp(((sqrt(sqrt(abs(_2104 * 0.5f))) * float2(int2(sign(_2104)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2091).xx);
    float4 _2122 = float4(_2120.x, _2120.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2122.z = 1.0f;
    _2122.w = _2091 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2135 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2139 = normalize(float3(_2135.x, 6.103515625e-05f, _2135.z));
    float3 _2149 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2153 = _2149 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _2157 = int(_600.x);
    int _2158 = int(_600.y);
    float4 _2162 = _40.Load(int3(int3(_2157, _2158, 0).xy, 0));
    float _2167 = _2162.y;
    float _2170 = lerp(lerp(1.0f, _2162.x, _38_m6.x), 1.0f, _19_m80.z);
    float _2171 = dot(_2048, _2135);
    float3 _2178 = _2071 * _19_m79.z;
    float3 _2179 = _2178 * 0.64999997615814208984375f;
    float _2183 = dot(_2067, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2196 = clamp(-dot(_2139.xz, normalize(_610.xz)), 0.0f, 1.0f);
    float _2200 = 1.0f - _19_m91.x;
    float4 _2214 = _50.SampleLevel(_25, float2((clamp(lerp(_2171, ((-_2171) * ((_2171 * 0.5f) - 1.0f)) + 0.5f, (_2196 * smoothstep(0.25f, 0.75f, 1.0f - abs(_610.y))) * _2200) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2215 = _2214.w;
    float _2217 = _2214.x;
    float _2218 = _2214.y;
    float _2219 = _2214.z;
    float _2224 = max(max(_2217, _2218), _2219) - min(min(_2217, _2218), _2219);
    float4 _2232 = _50.SampleLevel(_25, float2((dot(_2048, _610) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2233 = _2232.w;
    float _2234 = _496 * _2167;
    float _2241 = min(min(_2167, _496), _2215);
    float _2242 = _2233 * _2234;
    float3 _2246 = ((clamp(dot(_578, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1151, 1.0f.xxx, (_19_m80.y * _2241).xxx);
    float3 _2248 = _2241.xxx;
    float3 _2271 = _2170.xxx;
    float3 _2272 = lerp((_2246 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1152), 1.5f), clamp(_1152, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2153, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2153, _2248) + ((_2246 * clamp(_1152, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2149 * _19_m91.y)))) * _19_m79.y, _2271);
    float3 _2273 = lerp(lerp(lerp(dot(_2179, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2179, 1.2000000476837158203125f.xxx), _2178, clamp((_2234 * _2233) + _2215, 0.0f, 1.0f).xxx), _2067, _2248);
    float3 _2279 = _2273 * ((1.0f - _2224).xxx + (_2214.xyz * _2224));
    float3 _2288 = lerp(lerp(_2178, lerp(_2183.xxx, _2067, 1.2000000476837158203125f.xxx), _2242.xxx), _2279 * clamp(dot(_2273, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2279, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2271);
    float4 _2292 = float4(_2288, _2170);
    float _2294 = lerp(_2242, _2241, _2170);
    float _2297 = lerp(_19_m79.z, 1.0f, _2294);
    float3 _2305 = float3(_610.x, lerp(0.5f, _2135.y, _2170), _610.z);
    float3 _2316 = normalize(((_2135 * _2170) + ((_2305 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2305, _2305)))) * 2.0f)) + (_455 * (2.0f + _2170)));
    float _2318 = clamp(dot(_1872, _455), 0.0f, 1.0f);
    float _2322 = _2077.x;
    float _2323 = _2079.x;
    float _2324 = _2322 * _2323;
    float3 _2328 = float3(_2323 * dot(_595, _2316), _2322 * dot(_598, _2316), _2324 * dot(_1872, _2316));
    float _2329 = dot(_2328, _2328);
    float _2331 = (_2324 * _2324) * _2324;
    float _2332 = _2329 * _2329;
    float _2335 = (_2331 != _2332) ? (_2331 / _2332) : 1.0f;
    float _2336 = 2.0f * _2318;
    float _2338 = (1.0f + _2318) - _2318;
    float _2347 = _2318 * _2318;
    float3 _2359 = _2070 * _51.SampleLevel(_25, float2(lerp(_2335 / min(1.0f / ((_2073 * _2073) + 9.9999997473787516355514526367188e-05f), 65504.0f), _2347, _49_m4), _2049 * (1.0f - _2052)), 0.0f).xyz;
    float3 _2361 = lerp(_2070, _2359, _49_m4.xxx);
    float3 _2368 = normalize(_2316 + (_455 * _49_m32));
    float _2372 = _2077.y;
    float _2373 = _2079.y;
    float _2374 = _2372 * _2373;
    float3 _2378 = float3(_2373 * dot(_595, _2368), _2372 * dot(_598, _2368), _2374 * dot(_1872, _2368));
    float _2379 = dot(_2378, _2378);
    float _2381 = (_2374 * _2374) * _2374;
    float _2382 = _2379 * _2379;
    float _2397 = (1.0f - _49_m6) + (_502 * _49_m6);
    float3 _2399 = ((_2272 * _2288) * _2397) + ((((_2359 * clamp((_2335 * (0.5f / ((_2336 + (_2073 * _2338)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) + (((_2070 * _49_m38.xyz) * _495) * clamp((_2381 != _2382) ? (_2381 / _2382) : 1.0f, 0.0f, 20.0f))) * ((_2272 * (((_2294 * 0.5f) + 0.5f) * _2297)) * 1.0f)) * _19_m92.w);
    float _2400 = dot(_2399, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2403 = clamp(_2400 - 0.5f, 0.0f, 0.5f);
    float3 _2439 = normalize(cross(_610, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2445 = dot(_455, _2048);
    float _2447 = 1.0f - abs(_2445);
    float _2469 = dot(_2139, _2048);
    float _2481 = 1.0f - _2170;
    float _2508 = lerp(_2049, _1874, _1873);
    float _2509 = _2508 * _2508;
    float _2510 = _2347 * _2318;
    float2 _2511 = float2(1.0f, _2318);
    float2 _2514 = float2(1.0f, _2509);
    float3 _2517 = float3(1.0f, _2509, (_2509 * _2509) * _2509);
    float _2522 = dot(mul(_2511, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2514) / dot(mul(float3(1.0f, _2347, _2510), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2517);
    float _2527 = dot(mul(_2511, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2514) / dot(mul(float3(1.0f, _2318, _2510), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2517);
    float3 _2530 = (_2361 * _2522) + _2527.xxx;
    float _2531 = _2522 + _2527;
    bool3 _2538 = (_2057 > 0.0f).xxx;
    float3 _2539 = float3(_2538.x ? _598.x : _594.x, _2538.y ? _598.y : _594.y, _2538.z ? _598.z : _594.z);
    float3 _2544 = lerp(_1872, cross(cross(_2539, _455), _2539), abs(_2057).xxx);
    float3 _2549 = -_455;
    float3 _2568 = lerp(_2400.xxx, _2399, ((_2403 * _2403) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2447)) * _19_m87.w) * min(min(clamp(dot(_558, _2439) + 1.0f, 0.0f, 1.0f), _496), _2167)) * (lerp(0.25f.xxx, _2067, _19_m88.z.xxx) * clamp(dot(_2439, _2048), 0.0f, 1.0f))) + ((((((lerp(_1150 * (1.0f / max(max(max(_1150.x, _1150.y), _1150.z) * 0.5f, 1.0f)), _2153, _2271) * clamp(lerp(dot(_1149.xyz, _2048) * _1149.w, ((-_2469) * ((_2469 * 0.5f) - 1.0f)) + 0.5f, _2170), 0.0f, 1.0f)) * ((_2481 + (_2196 * _2170)) * _2200)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2447)) * min(_496, _2167)) * (_2481 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2183) * _2170))) * max(0.1500000059604644775390625f.xxx, _2067)));
    float2 _2571 = float2(_600);
    float2 _2573 = floor(_2571 * 0.03125f);
    int _2581 = int((_2573.x + (_2573.y * _34_m5)) * 8.0f);
    float _2588 = floor(_436 - (_19_m3.y * _34_m11));
    float _2592 = clamp(_2588, 0.0f, _34_m7 - 1.0f);
    int _2594 = int(_2592 * 8.0f);
    float3 _2596;
    _2596 = (_2568 + (((_539.xyz * _49_m25.xyz) * _49_m7) * _2397)) + (((_61.SampleLevel(_25, reflect(_2549, _2544 * rsqrt(max(6.103515625e-05f, dot(_2544, _2544)))), (1.2000000476837158203125f * log2(max(_2508, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2530 + ((_2361 * ((1.0f - _2531) / _2531)) * _2530)) * 1.0f)) * ((clamp(_1152, 0.5f, 1.5f) * _19_m79.w) * _2297)) * _1151);
    float3 _2597;
    [loop]
    for (int _2599 = 0; _2599 <= 7; _2596 = _2597, _2599++)
    {
        uint _2617 = (_2588 <= _2592) ? (_30.Load(uint(_2581 + _2599) * 4 + 0) & _30.Load(uint((_19_m21.y + _2594) + _2599) * 4 + 0)) : 0u;
        uint _2618 = uint(_2599);
        _2597 = _2596;
        uint _2623;
        float3 _2620;
        [loop]
        for (uint _2622 = _2617; _2622 != 0u; _2597 = _2620, _2622 = _2623)
        {
            uint _2627 = firstbitlow(_2622);
            _2623 = _2622 ^ (1u << (_2627 & 31u));
            int _2633 = int((32u * _2618) + _2627) * 8;
            int _2636 = _2633 + 1;
            int _2639 = _2633 + 2;
            int _2642 = _2633 + 3;
            int _2645 = _2633 + 4;
            int _2648 = _2633 + 5;
            int _2651 = _2633 + 6;
            int _2654 = _2633 + 7;
            uint _2658 = uint(_36_m6[_2648].w);
            float _2733;
            if ((_2658 & 1u) == 1u)
            {
                uint _2664 = asuint(_36_m6[_2648].x);
                uint _2671 = asuint(_36_m6[_2648].y);
                uint _2678 = asuint(_36_m6[_2648].z);
                uint _2685 = asuint(_36_m6[_2651].x);
                uint _2692 = asuint(_36_m6[_2651].y);
                uint _2699 = asuint(_36_m6[_2651].z);
                float3 _2718 = abs(mul(float4(_551 - _36_m6[_2636].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2664).x, spvUnpackHalf2x16(_2678).x, spvUnpackHalf2x16(_2692).x, 0.0f), float4(spvUnpackHalf2x16(_2664 >> 16u).x, spvUnpackHalf2x16(_2678 >> 16u).x, spvUnpackHalf2x16(_2692 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2671).x, spvUnpackHalf2x16(_2685).x, spvUnpackHalf2x16(_2699).x, 0.0f), float4(spvUnpackHalf2x16(_2671 >> 16u).x, spvUnpackHalf2x16(_2685 >> 16u).x, spvUnpackHalf2x16(_2699 >> 16u).x, 0.0f))).xyz);
                float _2725 = _36_m6[_2654].x * 0.5f;
                float _2731 = 1.0f - clamp((max(max(_2718.x, _2718.y), _2718.z) - (_2725 + 0.5f)) / (0.5f - _2725), 0.0f, 1.0f);
                _2733 = _2731 * _2731;
            }
            else
            {
                _2733 = 1.0f;
            }
            if (false || (_2733 < 0.001000000047497451305389404296875f))
            {
                _2620 = _2597;
                continue;
            }
            float3 _3428;
            if (_36_m6[_2633].w < 1.5f)
            {
                float3 _3427;
                do
                {
                    uint _2746 = asuint(_36_m6[_2642].w);
                    if ((_2746 == 16u) || ((_36_m6[_2642].z + _19_m91.z) < 0.5f))
                    {
                        _3427 = _2597;
                        break;
                    }
                    bool _2758 = (uint(_36_m6[_2633].w) & 1u) == 0u;
                    bool _2762 = (!_2758) && (_36_m6[_2639].z > 0.0f);
                    bool _2763 = _2746 == 4u;
                    float _2764 = float(_2758);
                    float _2772 = (0.5f + (0.5f * _36_m6[_2639].y)) - abs(_36_m6[_2639].x);
                    float _2773 = _36_m6[_2639].y - _2772;
                    float _2780 = abs(max((1.0f - abs(_2772)) - abs(_2773), 0.00048828125f));
                    float3 _2784 = normalize(float3(_2772, _2773, (_36_m6[_2639].x >= 0.0f) ? _2780 : (-_2780)));
                    float _2790 = lerp(_36_m6[_2651].w, max(2.0f * _36_m6[_2645].y, 0.100000001490116119384765625f), float(_2763));
                    float3 _2795 = _36_m6[_2636].xyz - _551;
                    float3 _2796 = -_2784;
                    float3 _2801 = lerp(_2795, _2796 * dot(_2795, _2796), (float(_2763 && (_36_m6[_2645].z > 0.5f)) * _2764).xxx);
                    float _2802 = dot(_2801, _2801);
                    float _2803 = rsqrt(_2802);
                    float3 _2804 = _2801 * _2803;
                    float3 _2837;
                    float _2838;
                    if (_2762)
                    {
                        float3 _2808 = (_2784 * _36_m6[_2639].z) * 0.5f;
                        float3 _2809 = _2801 - _2808;
                        float3 _2810 = _2801 + _2808;
                        float _2811 = length(_2809);
                        float _2812 = length(_2810);
                        float3 _2821 = normalize(cross(cross(_2784, _2804), _2784));
                        _2837 = _2821;
                        _2838 = ((1.0f / ((((_2811 * _2812) + dot(_2809, _2810)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2821, _2809) / _2811) + (dot(_2821, _2810) / _2812)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2639].z * _2803, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2837 = _2804;
                        _2838 = 1.0f;
                    }
                    float _2860;
                    if (_2790 < 0.0f)
                    {
                        float _2848 = _2802 * (_36_m6[_2636].w * _36_m6[_2636].w);
                        float _2851 = clamp(1.0f - (_2848 * _2848), 0.0f, 1.0f);
                        _2860 = lerp(1.0f / (_2802 + 1.0f), _2838, float(_2762)) * (_2851 * _2851);
                    }
                    else
                    {
                        float3 _2854 = _2801 * _36_m6[_2636].w;
                        _2860 = _2838 * pow(1.0f - clamp(dot(_2854, _2854), 0.0f, 1.0f), _2790);
                    }
                    float _2865 = clamp((dot(_2837, _2796) - _36_m6[_2639].z) * _36_m6[_2639].w, 0.0f, 1.0f);
                    float _2868 = _2860 * lerp(1.0f, _2865 * _2865, _2764);
                    int _2870 = int(_36_m6[_2654].w);
                    float _2974;
                    if ((!_2762) && (_2870 >= 0))
                    {
                        uint _2876 = uint(_2870);
                        float2 _2967;
                        [branch]
                        if (_2764 != 0.0f)
                        {
                            float4 _2888 = mul(_64_m1[_2876], float4(_551.x, _642, _551.z, 1.0f));
                            _2967 = _64_m0[_2876].xy + (clamp(_2888.xy / _2888.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2876].zw);
                        }
                        else
                        {
                            float3 _2908 = mul(float4(-_2801, 0.0f), _64_m1[_2876]).xyz;
                            float3 _425 = _2908;
                            float3 _424 = _2908;
                            float3 _423 = abs(_2908);
                            uint _2917 = uint(int(_423.y > _423.x));
                            uint _2923 = (_423.z > _423[_2917]) ? 2u : _2917;
                            uint _2929 = (_2923 * 2u) + uint(_424[_2923] < 0.0f);
                            float _2933 = abs(_425[_2929 / 2u]);
                            float _2953 = 0.5f - (0.000244140625f / _64_m0[_2876].w);
                            _2967 = _64_m0[_2876].xy + (clamp(float2((float(_2929) + ((((_425[uint(_375[_2929].x)] * _376[_2929].x) / _2933) * _2953) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_425[uint(_375[_2929].y)] * _376[_2929].y) / _2933) * _2953)), 0.0f.xx, 1.0f.xx) * _64_m0[_2876].zw);
                        }
                        _2974 = _2868 * _62.SampleLevel(_25, _2967, 0.0f).x;
                    }
                    else
                    {
                        _2974 = _2868;
                    }
                    float _2975 = _2974 * _2733;
                    float3 _3426;
                    do
                    {
                        float3 _3425;
                        [branch]
                        if (_2975 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2763)
                            {
                                _3426 = lerp(_2597, _36_m6[_2633].xyz, (_2975 * (_36_m6[_2645].x * ((1.0f - _36_m6[_2645].w) + (smoothstep(-0.5f, 0.5f, dot(_579, _2837)) * _36_m6[_2645].w)))).xxx);
                                break;
                            }
                            float _2995 = dot(_2048, _2837);
                            float _2996 = clamp(_2995, 0.0f, 1.0f);
                            float _3299;
                            if (_2746 != 0u)
                            {
                                bool _3002 = _2758 || ((_2658 & 2u) != 0u);
                                int _3051;
                                if (_3002)
                                {
                                    _3051 = int(_36_m6[_2642].x);
                                }
                                else
                                {
                                    uint _3008 = asuint(_36_m6[_2639].w);
                                    uint _3010 = asuint(_36_m6[_2642].x);
                                    float3 _3011 = _551 - _36_m6[_2636].xyz;
                                    float3 _3012 = abs(_3011);
                                    float _3013 = _3012.x;
                                    float _3014 = _3012.y;
                                    float _3016 = _3012.z;
                                    int _3048;
                                    if ((_3013 > _3014) && (_3013 > _3016))
                                    {
                                        _3048 = int((_3011.x > 0.0f) ? (_3008 >> 24u) : ((_3008 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3047;
                                        if (_3014 > _3016)
                                        {
                                            _3047 = int((_3011.y > 0.0f) ? ((_3008 >> 8u) & 255u) : (_3008 & 255u));
                                        }
                                        else
                                        {
                                            _3047 = int((_3011.z > 0.0f) ? ((_3010 >> 8u) & 255u) : (_3010 & 255u));
                                        }
                                        _3048 = _3047;
                                    }
                                    _3051 = (_3048 < 80) ? _3048 : (-1);
                                }
                                bool _3052 = _3051 >= 0;
                                float _3298;
                                if (_3052)
                                {
                                    float3 _3056 = _551 - _36_m6[_2636].xyz;
                                    float4 _3076 = mul(_38_m10[_3051], float4((_551 - ((_3056 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3056, _3056)))) * _38_m11[_3051].x)) + (_579 * (_38_m11[_3051].y * 5.0f)), 1.0f));
                                    float _3077 = _3076.w;
                                    float3 _3080 = _3076.xyz / _3077.xxx;
                                    float2 _3081 = _3080.xy;
                                    float3 _3089 = _3080.xyz;
                                    bool3 _3090 = bool3(_3089.x <= 0.0f.xxx.x, _3089.y <= 0.0f.xxx.y, _3089.z <= 0.0f.xxx.z);
                                    bool3 _3091 = bool3(_3089.x >= 1.0f.xxx.x, _3089.y >= 1.0f.xxx.y, _3089.z >= 1.0f.xxx.z);
                                    float _3094 = _3080.z;
                                    float2 _3105 = ((_3081 * (_38_m12[_3051].zw - _38_m12[_3051].xy)) + _38_m12[_3051].xy).xy * _38_m13.zw;
                                    float2 _3107 = floor(_3105 + 0.5f.xx);
                                    float2 _3108 = _3105 - _3107;
                                    float _3110 = _3108.x + 0.5f;
                                    float _3111 = _3110 * _3110;
                                    float _3114 = 1.0f - _3108.x;
                                    float _3115 = min(_3108.x, 0.0f);
                                    float _3118 = _3108.x + 1.0f;
                                    float _3119 = max(_3108.x, 0.0f);
                                    float _3131 = _3108.y + 0.5f;
                                    float _3132 = _3131 * _3131;
                                    float _3135 = 1.0f - _3108.y;
                                    float _3136 = min(_3108.y, 0.0f);
                                    float _3139 = _3108.y + 1.0f;
                                    float _3140 = max(_3108.y, 0.0f);
                                    float3 _3152 = float3(0.1599999964237213134765625f * _3114, 0.1599999964237213134765625f * ((_3118 - (_3119 * _3119)) + 1.0f), _3111 * 0.07999999821186065673828125f);
                                    float3 _3153 = float3(0.1599999964237213134765625f * ((_3111 * 0.5f) - _3108.x), 0.1599999964237213134765625f * ((_3114 - (_3115 * _3115)) + 1.0f), 0.1599999964237213134765625f * _3118) + _3152;
                                    float3 _3155 = float3(0.1599999964237213134765625f * _3135, 0.1599999964237213134765625f * ((_3139 - (_3140 * _3140)) + 1.0f), _3132 * 0.07999999821186065673828125f);
                                    float3 _3156 = float3(0.1599999964237213134765625f * ((_3132 * 0.5f) - _3108.y), 0.1599999964237213134765625f * ((_3135 - (_3136 * _3136)) + 1.0f), 0.1599999964237213134765625f * _3139) + _3155;
                                    float3 _3162 = ((_3152 / _3153) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3164 = ((_3155 / _3156) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3166 = _3107 * _38_m13.xy;
                                    float _3167 = _3162.x;
                                    float _3168 = _3164.x;
                                    float _3171 = _3162.y;
                                    float _3174 = _3162.z;
                                    float _3177 = _3164.y;
                                    float _3184 = _3164.z;
                                    float _3191 = _3153.x;
                                    float _3192 = _3156.x;
                                    float _3194 = _3153.y;
                                    float _3196 = _3153.z;
                                    float _3198 = _3156.y;
                                    float _3202 = _3156.z;
                                    float _3260 = (((((((_3191 * _3192) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3167, _3168), _417).xy, _3094)) + ((_3194 * _3192) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3171, _3168), _417).xy, _3094))) + ((_3196 * _3192) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3174, _3168), _417).xy, _3094))) + ((_3191 * _3198) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3167, _3177), _417).xy, _3094))) + ((_3194 * _3198) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3171, _3177), _417).xy, _3094))) + ((_3196 * _3198) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3174, _3177), _417).xy, _3094))) + ((_3191 * _3202) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3167, _3184), _417).xy, _3094));
                                    float2 _3281 = min(_3081, 1.0f.xx - _3081);
                                    _3298 = _3052 ? lerp(1.0f, (any(bool3(_3090.x || _3091.x, _3090.y || _3091.y, _3090.z || _3091.z)) || ((asuint(_3094) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3260 + ((_3194 * _3202) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3171, _3184), _417).xy, _3094))) + ((_3196 * _3202) * _39.SampleCmpLevelZero(_27, float3(_3166 + float2(_3174, _3184), _417).xy, _3094))), _3002 ? min(_38_m11[_3051].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_3051].z - _3077) * 0.25f, min(_3281.x, _3281.y)))) : _38_m11[_3051].w) : 1.0f;
                                }
                                else
                                {
                                    _3298 = clamp(dot(_558, _2837) + 1.0f, 0.0f, 1.0f);
                                }
                                _3299 = _3298;
                            }
                            else
                            {
                                _3299 = 1.0f;
                            }
                            float _3379;
                            float3 _3380;
                            float _3381;
                            float3 _3382;
                            float3 _3383;
                            float _3384;
                            float _3385;
                            [branch]
                            if (_2746 == 0u)
                            {
                                float3 _3305 = _36_m6[_2633].xyz * _2975;
                                float3 _3318 = _2292.xyz;
                                _3379 = _2975;
                                _3380 = (_36_m6[_2633].xyz * ((1.0f - _36_m6[_2645].y) + ((1.0f / max(1.0f, max(max(_3305.x, _3305.y), _3305.z) * lerp(0.75f, 0.5f, _2481))) * _36_m6[_2645].y))) * lerp(0.25f * _36_m6[_2645].x, 1.0f, clamp(_2995 + 0.5f, 0.0f, 1.0f));
                                _3381 = _2996;
                                _3382 = _3318;
                                _3383 = _3318;
                                _3384 = 1.0f;
                                _3385 = 0.0f;
                            }
                            else
                            {
                                float _3373;
                                float _3374;
                                float3 _3375;
                                float3 _3376;
                                float _3377;
                                float _3378;
                                if (_2746 == 3u)
                                {
                                    _3373 = _2975 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2645].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2645].x), _2447) * _3299);
                                    _3374 = clamp(dot(_2048, -normalize(cross(_610, cross(_610, _2837)))), 0.0f, 1.0f);
                                    _3375 = lerp(0.5f.xxx, _2067, _36_m6[_2645].y.xxx);
                                    _3376 = 0.0f.xxx;
                                    _3377 = 1.0f;
                                    _3378 = 0.0f;
                                }
                                else
                                {
                                    bool _3343 = _2746 == 1u;
                                    float _3367;
                                    float3 _3368;
                                    float _3369;
                                    float _3370;
                                    if (_3343)
                                    {
                                        _3367 = clamp(clamp(_2995 + _36_m6[_2645].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3299;
                                        _3368 = _2071 * _36_m6[_2645].y;
                                        _3369 = 1.0f;
                                        _3370 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3353 = _2746 == 2u;
                                        float _3365;
                                        if (_3353)
                                        {
                                            _3365 = smoothstep(_36_m6[_2645].x + 0.0500000007450580596923828125f, _36_m6[_2645].x - 0.0500000007450580596923828125f, _2049) * ((1.0f - _36_m6[_2645].z) + (step(0.5f, _2052) * _36_m6[_2645].z));
                                        }
                                        else
                                        {
                                            _3365 = 1.0f;
                                        }
                                        _3367 = _2996;
                                        _3368 = 0.0f.xxx;
                                        _3369 = _3365;
                                        _3370 = _3353 ? _36_m6[_2645].y : 0.0f;
                                    }
                                    bool3 _3371 = _3343.xxx;
                                    _3373 = _2975;
                                    _3374 = _3367;
                                    _3375 = float3(_3371.x ? _2067.x : 0.0f.xxx.x, _3371.y ? _2067.y : 0.0f.xxx.y, _3371.z ? _2067.z : 0.0f.xxx.z);
                                    _3376 = _3368;
                                    _3377 = _3369;
                                    _3378 = _3370;
                                }
                                _3379 = _3373;
                                _3380 = _36_m6[_2633].xyz;
                                _3381 = _3374;
                                _3382 = _3375;
                                _3383 = _3376;
                                _3384 = _3377;
                                _3385 = _3378;
                            }
                            float3 _3415;
                            [branch]
                            if (_2746 != 3u)
                            {
                                float3 _3392 = normalize(_2837 + _455);
                                float3 _3399 = float3(_2323 * dot(_595, _3392), _2322 * dot(_598, _3392), _2324 * dot(_1872, _3392));
                                float _3400 = dot(_3399, _3399);
                                float _3401 = _3400 * _3400;
                                _3415 = ((_2359 * clamp((((_2331 != _3401) ? (_2331 / _3401) : 1.0f) * (0.5f / ((_2336 + (lerp(_2073, 0.00999999977648258209228515625f, _3385) * _2338)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3384) * _36_m6[_2654].z;
                            }
                            else
                            {
                                _3415 = 0.0f.xxx;
                            }
                            float3 _3418 = _3380 * _3379;
                            _3425 = _2597 + (((_3418 * lerp(_3383, _3382, _3381.xxx)) * _2397) + ((_3418 * _3415) * _3381));
                        }
                        else
                        {
                            _3425 = _2597;
                        }
                        _3426 = _3425;
                        break;
                    } while(false);
                    _3427 = _3426;
                    break;
                } while(false);
                _3428 = _3427;
            }
            else
            {
                _3428 = _2597;
            }
            _2620 = _3428;
        }
    }
    float3 _3468;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3468 = lerp(lerp(0.5f.xxx, lerp(dot(_2596, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2596, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2445, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3468 = _2596;
    }
    float4 _3475 = float4(_3468 * _19_m20.y, _502);
    _3475.w = (_49_m8 == 1.0f) ? _502 : 1.0f;
    float4 _3862;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3499 = _642 * _19_m46.w;
        float _3504 = max(0.00999999977648258209228515625f, _3499 + _19_m47.w);
        float3 _3518 = exp(_19_m45.xyz * ((-max(0.0f, (_456 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3504)) / _3504) * exp(_3499 + _19_m48.w))));
        float _3521 = dot(_2549, _19_m44.xyz);
        float _3527 = _19_m45.w * _19_m45.w;
        float _3531 = (1.0f + _3527) - ((2.0f * _19_m45.w) * _3521);
        float3 _3854;
        float _3855;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3576 = (uint3(int3(_2157, _2158, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3577 = _3576.y;
            uint _3578 = _3576.z;
            uint _3581 = _3576.x + (_3577 * _3578);
            uint _3583 = _3577 + (_3578 * _3581);
            uint _3585 = _3578 + (_3581 * _3583);
            uint _3587 = _3581 + (_3583 * _3585);
            float _3612 = dot(_2549, -_17_m0[2].xyz);
            float3 _3619 = _551 - _17_m11.xyz;
            float _3621 = (_19_m55.w * ((_3612 > 5.9604644775390625e-08f) ? (1.0f / _3612) : 0.0f)) * (1.0f / _456);
            float _3622 = _3619.y;
            float _3623 = _3621 * _3622;
            float _3625 = _17_m11.y + _3623;
            float _3626 = _3622 - _3623;
            float _3628 = (1.0f - _3621) * _456;
            float _3642 = max(-127.0f, _19_m49.z * _3626);
            float _3666 = max(-127.0f, _19_m52.x * _3626);
            float _3677 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3625 - _19_m49.x)))) * ((abs(_3642) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3642)) / _3642) : (0.693147182464599609375f - (0.2402265071868896484375f * _3642)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3625 - _19_m52.z)))) * ((abs(_3666) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3666)) / _3666) : (0.693147182464599609375f - (0.2402265071868896484375f * _3666))));
            float _3699 = clamp((_456 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3702 = clamp((max(clamp(exp2(-(_3677 * _3628)), 0.0f, 1.0f), _19_m51.w) + clamp((_456 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3699, 0.0f, 1.0f);
            float4 _3742 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_25, float3((_2571 + ((((float3(uint3(_3587, _3583 + (_3585 * _3587), _421) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_436 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_436 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3854 = _3742.xyz + (((_19_m51.xyz * (1.0f - _3702)) + (((_19_m54.xyz * pow(clamp(dot(_455, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3677 * max(_3628 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3699))) * _3742.w);
            _3855 = _3742.w * _3702;
        }
        else
        {
            float3 _3748 = _551 - _17_m11.xyz;
            float _3750 = _3748.y;
            float _3764 = max(-127.0f, _19_m49.z * _3750);
            float _3788 = max(-127.0f, _19_m52.x * _3750);
            float _3799 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3764) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3764)) / _3764) : (0.693147182464599609375f - (0.2402265071868896484375f * _3764)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3788) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3788)) / _3788) : (0.693147182464599609375f - (0.2402265071868896484375f * _3788))));
            float _3821 = clamp((_456 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3824 = clamp((max(clamp(exp2(-(_3799 * _456)), 0.0f, 1.0f), _19_m51.w) + clamp((_456 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3821, 0.0f, 1.0f);
            _3854 = (_19_m51.xyz * (1.0f - _3824)) + (((_19_m54.xyz * pow(clamp(dot(_455, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3799 * max(_456 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3821));
            _3855 = _3824;
        }
        float3 _3860 = (_3475.xyz * (_3518 * _3855)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3521 * _3521)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3527) / max((12.56637096405029296875f * _3531) * sqrt(_3531), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3518)) * _3855) + _3854);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3860 = (_3860 * 0.65f) + (_3475.xyz * 0.35f);

        }
        _3862 = float4(_3860.x, _3860.y, _3860.z, _3475.w);
    }
    else
    {
        _3862 = _3475;
    }
    _14 = _3862;
    _15 = _2122;
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
