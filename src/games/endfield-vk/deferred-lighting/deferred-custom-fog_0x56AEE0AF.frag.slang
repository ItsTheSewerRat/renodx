// DX11 0x470E14EE -> Vulkan 0x56AEE0AF
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

static float _413 = 0.0f;
static float3 _414 = 0.0f;
static float _416 = 0.0f;
static uint _417 = 0u;

static const int2 _370[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _371[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _62_63 : register(b50)
{
    float4 _63_m0[32] : packoffset(c0);
    column_major float4x4 _63_m1[32] : packoffset(c32);
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
[[vk::binding(2, 1)]] Texture2D<float4> _50 : register(t2);
[[vk::binding(1, 1)]] SamplerState _51 : register(s1);
[[vk::binding(44, 0)]] Texture2D<float4> _52 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _53 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _54 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _55 : register(t37);
[[vk::binding(5, 1)]] Texture2D<float4> _56 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _57 : register(t3);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4);
[[vk::binding(45, 0)]] TextureCube<float4> _60 : register(t45);
[[vk::binding(29, 0)]] Texture2D<float4> _61 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _66 : register(t36);

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
    float _432 = 1.0f / gl_FragCoord.w;
    float3 _447 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _448 = dot(_447, _447);
    float _450 = rsqrt(max(_448, 9.9999999392252902907785028219223e-09f));
    float3 _451 = _447 * _450;
    float _452 = _448 * _450;
    uint _455 = asuint(_22_m0[_12]._m2.x);
    bool _460 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _473;
    float4 _474;
    if (_460)
    {
        _473 = asfloat(_32_Load4((_455 + 2u) * 16 + 0));
        _474 = asfloat(_32_Load4(_455 * 16 + 0));
    }
    else
    {
        _473 = _22_m0[_12]._m0[2];
        _474 = _22_m0[_12]._m0[0];
    }
    float4 _480 = _56.SampleBias(_26, _3, _19_m16);
    float3 _485 = _480.xyz * _49_m24.xyz;
    float4 _489 = _57.SampleBias(_26, _3, _19_m16);
    float _490 = _489.x;
    float _492 = _489.z;
    float _494 = 1.0f - _489.w;
    float _498 = _480.w * _49_m24.w;
    float3 _503 = _485 * _49_m18;
    float3 _507 = lerp(dot(_503, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _503, _49_m19.xxx);
    float4 _511 = _58.SampleBias(_26, _3, _19_m16);
    _511.w = _511.w * _511.x;
    float2 _520 = (_511.wy * 2.0f) - 1.0f.xx;
    float3 _521 = float3(_520.x, _520.y, _414.z);
    float2 _522 = _520.xy;
    _521.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_522, _522), 0.0f, 1.0f)));
    float2 _530 = _521.xy * _49_m3;
    float3 _535 = _4 + _17_m11.xyz;
    float3 _539 = _535 - float3(_474.w, _416, _473.w);
    _539.y = 6.103515625e-05f;
    float3 _542 = normalize(_539);
    float3 _552 = mul(float3(_530.x, _530.y, _521.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _561 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _562 = (_552 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_552, _552)))) * _561;
    float3 _563 = normalize(_5) * _561;
    uint2 _565 = uint2(gl_FragCoord.xy);
    float3 _575 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _584 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _597 = float4(float(_584 & 255u), float((_584 >> 8u) & 255u), float((_584 >> 16u) & 255u), float((_584 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _598 = _597.x;
    float _601 = _597.w;
    float _607 = _535.y;
    float _610 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _607) * _597.y;
    float _611 = max(_597.z, _610);
    float _620 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1114;
    float3 _1115;
    float3 _1116;
    float _1117;
    if (_19_m80.y < 0.5f)
    {
        float3 _635 = _535 - (_19_m105.xyz + (_575 * (-_19_m107.w)));
        float _649 = max(clamp((max(abs(_635.x), abs(_635.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_635.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _951;
        float4 _952;
        float4 _953;
        float _954;
        float _955;
        if ((_19_m105.w != 0.0f) && (_649 < 1.0f))
        {
            float3 _662 = _535 - (_19_m105.xyz + (_575 * (-_19_m107.y)));
            float _676 = max(clamp((max(abs(_662.x), abs(_662.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_662.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _752;
            float4 _753;
            float4 _754;
            float4 _755;
            if (_676 < 1.0f)
            {
                float3 _685 = ((_535 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _687 = _685 - floor(_685);
                float4 _691 = _42.SampleLevel(_26, _687, 0.0f);
                float _692 = 1.0f - _676;
                float _696 = _19_m106.y * 0.5f;
                float _701 = _687.x;
                float _702 = clamp(_687.y, _696, 1.0f - _696) * 0.3333333432674407958984375f;
                float _703 = _687.z;
                float4 _706 = _43.SampleLevel(_25, float3(_701, _702, _703), 0.0f);
                float _722 = _691.x;
                float _732 = _691.y;
                float _742 = _691.z;
                _752 = _649 + (_706.w * _692);
                _753 = float4(((_43.SampleLevel(_25, float3(_701, _702 + 0.666666686534881591796875f, _703), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _742, _742) * _692;
                _754 = float4(((_43.SampleLevel(_25, float3(_701, _702 + 0.3333333432674407958984375f, _703), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _732, _732) * _692;
                _755 = float4(((_706.xyz * 4.0f) - 2.0f.xxx) * _722, _722) * _692;
            }
            else
            {
                _752 = _649;
                _753 = 0.0f.xxxx;
                _754 = 0.0f.xxxx;
                _755 = 0.0f.xxxx;
            }
            float3 _761 = _535 - (_19_m105.xyz + (_575 * (-_19_m107.z)));
            float _775 = max(clamp((max(abs(_761.x), abs(_761.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_761.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _855;
            float4 _856;
            float4 _857;
            float4 _858;
            if (_775 < 1.0f)
            {
                float3 _784 = ((_535 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _786 = _784 - floor(_784);
                float4 _790 = _44.SampleLevel(_26, _786, 0.0f);
                float _792 = _676 * (1.0f - _775);
                float _796 = _19_m106.y * 0.5f;
                float _801 = _786.x;
                float _802 = clamp(_786.y, _796, 1.0f - _796) * 0.3333333432674407958984375f;
                float _803 = _786.z;
                float4 _806 = _45.SampleLevel(_25, float3(_801, _802, _803), 0.0f);
                float _822 = _790.x;
                float _833 = _790.y;
                float _844 = _790.z;
                _855 = _752 + (_806.w * _792);
                _856 = _753 + (float4(((_45.SampleLevel(_25, float3(_801, _802 + 0.666666686534881591796875f, _803), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _844, _844) * _792);
                _857 = _754 + (float4(((_45.SampleLevel(_25, float3(_801, _802 + 0.3333333432674407958984375f, _803), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _833, _833) * _792);
                _858 = _755 + (float4(((_806.xyz * 4.0f) - 2.0f.xxx) * _822, _822) * _792);
            }
            else
            {
                _855 = _752;
                _856 = _753;
                _857 = _754;
                _858 = _755;
            }
            float4 _941;
            float4 _942;
            float4 _943;
            float _944;
            if (_775 > 0.0f)
            {
                float3 _867 = ((_535 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _870 = _19_m106.xyz * 0.5f;
                float3 _872 = clamp(_867 - floor(_867), _870, 1.0f.xxx - _870);
                float4 _876 = _46.SampleLevel(_26, _872, 0.0f);
                float _878 = _775 * (1.0f - _649);
                float _882 = _19_m106.y * 0.5f;
                float _887 = _872.x;
                float _888 = clamp(_872.y, _882, 1.0f - _882) * 0.3333333432674407958984375f;
                float _889 = _872.z;
                float4 _892 = _47.SampleLevel(_25, float3(_887, _888, _889), 0.0f);
                float _908 = _876.x;
                float _919 = _876.y;
                float _930 = _876.z;
                _941 = _856 + (float4(((_47.SampleLevel(_25, float3(_887, _888 + 0.666666686534881591796875f, _889), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _930, _930) * _878);
                _942 = _857 + (float4(((_47.SampleLevel(_25, float3(_887, _888 + 0.3333333432674407958984375f, _889), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _919, _919) * _878);
                _943 = _858 + (float4(((_892.xyz * 4.0f) - 2.0f.xxx) * _908, _908) * _878);
                _944 = _855 + (_892.w * _878);
            }
            else
            {
                _941 = _856;
                _942 = _857;
                _943 = _858;
                _944 = _855;
            }
            float _947 = clamp((_944 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _951 = _941;
            _952 = _942;
            _953 = _943;
            _954 = _947 - _649;
            _955 = (_947 + _649) * 0.5f;
        }
        else
        {
            _951 = 0.0f.xxxx;
            _952 = 0.0f.xxxx;
            _953 = 0.0f.xxxx;
            _954 = 0.0f;
            _955 = 1.0f;
        }
        float4 _975 = _953 + float4(_19_m108.x * _955, (_19_m108.y * _955) + ((_19_m108.w * _954) * 0.5f), _19_m108.z * _955, (_19_m108.w * _955) + ((_19_m108.y * _954) * 0.375f));
        float4 _995 = _952 + float4(_19_m109.x * _955, (_19_m109.y * _955) + ((_19_m109.w * _954) * 0.5f), _19_m109.z * _955, (_19_m109.w * _955) + ((_19_m109.y * _954) * 0.375f));
        float4 _1015 = _951 + float4(_19_m110.x * _955, (_19_m110.y * _955) + ((_19_m110.w * _954) * 0.5f), _19_m110.z * _955, (_19_m110.w * _955) + ((_19_m110.y * _954) * 0.375f));
        float4 _1019 = float4(_562, 1.0f);
        float3 _1025 = max(float3(dot(_975, _1019), dot(_995, _1019), dot(_1015, _1019)), 0.0f.xxx) * _620;
        float3 _1033 = ((_975.xyz * 0.2125999927520751953125f) + (_995.xyz * 0.715200006961822509765625f)) + (_1015.xyz * 0.072200000286102294921875f);
        float3 _1037 = _1033 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1033, _1033)));
        float _1039 = abs(_1037.y);
        float3 _1040 = _1037;
        _1040.y = _1039;
        float4 _1041 = float4(_1040.x, _1040.y, _1040.z, 0.0f.xxxx.w);
        _1041.w = 1.0f;
        float4 _1045 = float4(_1037.x, _1039, _1037.z, 1.0f);
        float3 _1050 = max(float3(dot(_975, _1045), dot(_995, _1045), dot(_1015, _1045)), 0.0f.xxx);
        float _1058 = _1025.z;
        float _1059 = _1025.y;
        float4 _1064 = lerp(float4(_1058, _1059, -1.0f, 0.666666686534881591796875f), float4(_1059, _1058, 0.0f, -0.3333333432674407958984375f), step(_1058, _1059).xxxx);
        float _1065 = _1025.x;
        float _1066 = _1064.x;
        float4 _1074 = lerp(float4(_1066, _1064.yw, _1065), float4(_1065, _1064.yz, _1066), step(_1066, _1065).xxxx);
        float _1075 = _1074.x;
        float _1076 = _1074.w;
        float _1077 = _1074.y;
        float _1079 = _1075 - min(_1076, _1077);
        float _1089 = frac(abs(_1074.z + ((_1076 - _1077) / ((6.0f * _1079) + 9.9999997473787516355514526367188e-05f))));
        float _1096 = min(_1079 / (_1075 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1089 - 0.5f))) * clamp(_1075, 0.0f, 1.0f));
        float _1098 = 2.0f / (2.0f - _1096);
        _1114 = _1041;
        _1115 = _1025;
        _1116 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1089, _1096, _1098).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1096.xxx) * _1098;
        _1117 = max(max(max(_1050.x, _1050.y), _1050.z), 0.0f) * _620;
    }
    else
    {
        _1114 = 0.0f.xxxx;
        _1115 = 1.0f.xxx;
        _1116 = _19_m81.xyz;
        _1117 = _620;
    }
    bool3 _1136 = (_49_m32 > 0.5f).xxx;
    float3 _1137 = _5 * _561;
    float3 _1138 = float3(_1136.x ? _562.x : _1137.x, _1136.y ? _562.y : _1137.y, _1136.z ? _562.z : _1137.z);
    float _1140 = 1.0f / length(_1138);
    float3 _1150 = normalize(mul(float3x3(_6.xyz * _1140, (cross(_1138, _6.xyz) * ((_6.w > 0.0f) ? 1.0f : (-1.0f))) * _1140, _1138 * _1140), _451));
    float2 _1156 = (_3 * _49_m35.xy) + _49_m35.zw;
    float2 _1157 = ddx(_3);
    float2 _1158 = ddy(_3);
    float _1165 = min(_49_m30, 20.0f);
    float _1166 = 1.0f / _1165;
    float2 _1174 = ((_1150.xy / max(_1150.z, 0.001000000047497451305389404296875f).xx) * ((-1.0f) * _49_m31)) * _1166;
    float _1177;
    float _1177_copy;
    float2 _1180;
    float2 _1180_copy;
    float2 _1184;
    float _1185;
    float _1187;
    _1177 = 1.0f - _1166;
    _1180 = _1174;
    _1184 = 0.0f.xx;
    _1185 = 0.0f;
    _1187 = 1.0f;
    float _1178;
    float2 _1181;
    float _1183;
    float _1186;
    float _1202;
    float _1182 = 0.0f;
    [loop]
    for (;;)
    {
        if (_1182 < (_1165 + 1.0f))
        {
            _1186 = _50.SampleGrad(_51, _1156 + _1180, _1157 * _19_m17, _1158 * _19_m17).x;
            if (_1186 > _1177)
            {
                _1202 = _1186;
                break;
            }
            _1183 = _1182 + 1.0f;
            _1181 = _1180 + _1174;
            _1178 = _1177 - _1166;
            _1177_copy = _1177;
            _1177 = _1178;
            _1180_copy = _1180;
            _1180 = _1181;
            _1182 = _1183;
            _1184 = _1180_copy;
            _1185 = _1186;
            _1187 = _1177_copy;
            continue;
        }
        else
        {
            _1202 = _1185;
            break;
        }
    }
    float4 _1214 = _50.SampleBias(_51, (_1184 + (_1174 * ((_1185 - _1187) / (((_1185 - _1202) + _1177) - _1187)))) + _1156, _19_m16);
    float3 _1925;
    float _1926;
    float _1927;
    float _1928;
    float _1929;
    float3 _1930;
    float3 _1931;
    [branch]
    if ((clamp(_598 + _611, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1233 = 1.0f - _490;
        float _1236 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_485 * _1233, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1239 = _460.xxx;
        float3 _1241 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1245 = float3(_1239.x ? _1241.x : _10.x, _1239.y ? _1241.y : _10.y, _1239.z ? _1241.z : _10.z) * _19_m89.z;
        float3 _1247 = float3(_1239.x ? _9.xzy.x : _9.x, _1239.y ? _9.xzy.y : _9.y, _1239.z ? _9.xzy.z : _9.z);
        float3 _1249 = abs(_1247) - 0.20000000298023223876953125f.xxx;
        float3 _1252 = max((_1249 * _1249) * _1249, 6.103515625e-05f.xxx);
        float3 _1255 = _1252 / dot(_1252, 1.0f.xxx).xxx;
        float2 _1263 = _1245.xy;
        float2 _1268 = _1245.zy;
        float4 _1278 = ((_52.SampleBias(_26, _1245.xz, _19_m16) * _1255.y) + (_52.SampleBias(_26, _1263, _19_m16) * _1255.z)) + (_52.SampleBias(_26, _1268, _19_m16) * _1255.x);
        float _1279 = _1278.w;
        float _1281 = 1.10000002384185791015625f - _1279;
        float _1290 = max(smoothstep(0.800000011920928955078125f - _1279, _1281, clamp((_598 * _1233) + (_562.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1279, _1281, clamp(_610 * _1233, 0.0f, 1.0f)));
        float _1297 = smoothstep(0.5f, 0.75f, _490);
        float _1299 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _494) * _1236;
        float _1302 = clamp(_1299 + _1297, 0.0f, 1.0f) * max(_598, _611);
        bool _1306 = !((step(_598, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _611)) != 0.0f);
        bool2 _1307 = _1306.xx;
        float2 _1309 = (1.0f - _611).xx;
        float2 _1310 = float2(_1307.x ? float2(3.0f, 4.345600128173828125f).x : _1309.x, _1307.y ? float2(3.0f, 4.345600128173828125f).y : _1309.y);
        float _1311 = 1.0f - _1302;
        float _1314 = _1306 ? _19_m10.x : 1.0f;
        float _1316 = _1314 * _1310.x;
        float _1318 = _1314 * _1310.y;
        float3 _1319 = _1245 * 20.0f;
        float3 _1320 = _1245 * 34.345600128173828125f;
        float3 _1322 = pow(max(_1249, 0.0f.xxx), 10.0f.xxx);
        float3 _1326 = _1322 / max(dot(_1322, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1328 = _1326.y;
        float2 _1329 = _1319.xz * 1.0f;
        float2 _1330 = floor(_1329);
        float2 _1333 = frac(_1330 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1337 = _1333 + dot(_1333, _1333 + 34.345001220703125f.xx).xx;
        float _1338 = _1337.x;
        float _1339 = _1337.y;
        float2 _1343 = frac(float2(_1338 * _1339, _1338 + _1339));
        float2 _1346 = frac((_1330 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1350 = _1346 + dot(_1346, _1346 + 34.345001220703125f.xx).xx;
        float _1351 = _1350.x;
        float _1352 = _1350.y;
        float2 _1356 = frac(float2(_1351 * _1352, _1351 + _1352));
        float _1362 = _1343.x;
        float _1364 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1362);
        float2 _1365 = ((_1329 - _1330) + ((((_1356 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1368 = _1365.y;
        float2 _1372 = float2(_1365.x * 1.25f, _1368 * ((_1368 < 0.0f) ? 1.25f : 0.75f));
        float _1375 = _1316 + _1362;
        float _1379 = _1306 ? frac(_1375) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1375, 0.0f, 1.0f));
        float _1391 = _1343.y;
        float _1394 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1379) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1379)) * step(0.001000000047497451305389404296875f, smoothstep(_1364, 0.0f, length(_1372)))) * step(_1311, _1391 - 0.100000001490116119384765625f);
        float _1397 = _1394 * _1328;
        float _1405 = _1326.z;
        float2 _1406 = _1319.xy * 1.0f;
        float2 _1407 = floor(_1406);
        float2 _1410 = frac(_1407 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1414 = _1410 + dot(_1410, _1410 + 34.345001220703125f.xx).xx;
        float _1415 = _1414.x;
        float _1416 = _1414.y;
        float2 _1420 = frac(float2(_1415 * _1416, _1415 + _1416));
        float2 _1423 = frac((_1407 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1427 = _1423 + dot(_1423, _1423 + 34.345001220703125f.xx).xx;
        float _1428 = _1427.x;
        float _1429 = _1427.y;
        float2 _1433 = frac(float2(_1428 * _1429, _1428 + _1429));
        float _1439 = _1420.x;
        float _1441 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1439);
        float2 _1442 = ((_1406 - _1407) + ((((_1433 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1445 = _1442.y;
        float2 _1449 = float2(_1442.x * 1.25f, _1445 * ((_1445 < 0.0f) ? 1.25f : 0.75f));
        float _1452 = _1316 + _1439;
        float _1456 = _1306 ? frac(_1452) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1452, 0.0f, 1.0f));
        float _1468 = _1420.y;
        float _1471 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1456) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1456)) * step(0.001000000047497451305389404296875f, smoothstep(_1441, 0.0f, length(_1449)))) * step(_1311, _1468 - 0.100000001490116119384765625f);
        float _1474 = _1471 * _1405;
        float _1482 = _1326.x;
        float2 _1483 = _1319.zy * 1.0f;
        float2 _1484 = floor(_1483);
        float2 _1487 = frac(_1484 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1491 = _1487 + dot(_1487, _1487 + 34.345001220703125f.xx).xx;
        float _1492 = _1491.x;
        float _1493 = _1491.y;
        float2 _1497 = frac(float2(_1492 * _1493, _1492 + _1493));
        float2 _1500 = frac((_1484 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1504 = _1500 + dot(_1500, _1500 + 34.345001220703125f.xx).xx;
        float _1505 = _1504.x;
        float _1506 = _1504.y;
        float2 _1510 = frac(float2(_1505 * _1506, _1505 + _1506));
        float _1516 = _1497.x;
        float _1518 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1516);
        float2 _1519 = ((_1483 - _1484) + ((((_1510 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1522 = _1519.y;
        float2 _1526 = float2(_1519.x * 1.25f, _1522 * ((_1522 < 0.0f) ? 1.25f : 0.75f));
        float _1529 = _1316 + _1516;
        float _1533 = _1306 ? frac(_1529) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1529, 0.0f, 1.0f));
        float _1545 = _1497.y;
        float _1548 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1533) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1533)) * step(0.001000000047497451305389404296875f, smoothstep(_1518, 0.0f, length(_1526)))) * step(_1311, _1545 - 0.100000001490116119384765625f);
        float _1551 = _1548 * _1482;
        float2 _1564 = (float4(((clamp(_1372 / _1364.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1356.x)) * _1394) * _1328, _1397, _1391).xy + float4(((clamp(_1449 / _1441.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1433.x)) * _1471) * _1405, _1474, _1468).xy) + float4(((clamp(_1526 / _1518.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1510.x)) * _1548) * _1482, _1551, _1545).xy;
        float _1566 = max(_1551, max(_1397, _1474));
        float4 _1569 = float4(_1564, _1566, 0.0f);
        float2 _1571 = _1320.xz * 1.0f;
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
        float _1617 = _1318 + _1604;
        float _1621 = _1306 ? frac(_1617) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1617, 0.0f, 1.0f));
        float _1633 = _1585.y;
        float _1636 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1621) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1621)) * step(0.001000000047497451305389404296875f, smoothstep(_1606, 0.0f, length(_1614)))) * step(_1311, _1633 - 0.100000001490116119384765625f);
        float _1639 = _1636 * _1328;
        float2 _1644 = _1320.xy * 1.0f;
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
        float _1690 = _1318 + _1677;
        float _1694 = _1306 ? frac(_1690) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1690, 0.0f, 1.0f));
        float _1706 = _1658.y;
        float _1709 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1694) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1694)) * step(0.001000000047497451305389404296875f, smoothstep(_1679, 0.0f, length(_1687)))) * step(_1311, _1706 - 0.100000001490116119384765625f);
        float _1712 = _1709 * _1405;
        float2 _1717 = _1320.zy * 1.0f;
        float2 _1718 = floor(_1717);
        float2 _1721 = frac(_1718 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1725 = _1721 + dot(_1721, _1721 + 34.345001220703125f.xx).xx;
        float _1726 = _1725.x;
        float _1727 = _1725.y;
        float2 _1731 = frac(float2(_1726 * _1727, _1726 + _1727));
        float2 _1734 = frac((_1718 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1738 = _1734 + dot(_1734, _1734 + 34.345001220703125f.xx).xx;
        float _1739 = _1738.x;
        float _1740 = _1738.y;
        float2 _1744 = frac(float2(_1739 * _1740, _1739 + _1740));
        float _1750 = _1731.x;
        float _1752 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1750);
        float2 _1753 = ((_1717 - _1718) + ((((_1744 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1756 = _1753.y;
        float2 _1760 = float2(_1753.x * 1.25f, _1756 * ((_1756 < 0.0f) ? 1.25f : 0.75f));
        float _1763 = _1318 + _1750;
        float _1767 = _1306 ? frac(_1763) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1763, 0.0f, 1.0f));
        float _1779 = _1731.y;
        float _1782 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1767) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1767)) * step(0.001000000047497451305389404296875f, smoothstep(_1752, 0.0f, length(_1760)))) * step(_1311, _1779 - 0.100000001490116119384765625f);
        float _1785 = _1782 * _1482;
        float2 _1793 = (float4(((clamp(_1614 / _1606.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1598.x)) * _1636) * _1328, _1639, _1633).xy + float4(((clamp(_1687 / _1679.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1671.x)) * _1709) * _1405, _1712, _1706).xy) + float4(((clamp(_1760 / _1752.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1744.x)) * _1782) * _1482, _1785, _1779).xy;
        float4 _1798 = float4(_1793, max(_1785, max(_1639, _1712)), 0.0f);
        float _1800 = step(max(float2(_1364 * _1394, _416) * _1328, max(float2(_1441 * _1471, _416) * _1405, float2(_1518 * _1548, _416) * _1482)).x, 0.00999999977648258209228515625f);
        float2 _1804 = _1569.xy + (_1798.xy * _1800);
        float3 _1813 = float3((_1278.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1804.x, _1804.y, 0.0f.xxx.z);
        float2 _1817 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1820 = float3(_1247.x, 0.0f, _1247.z);
        float3 _1826 = abs(_1820 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1820, _1820)))) - 0.20000000298023223876953125f.xxx;
        float3 _1829 = max((_1826 * _1826) * _1826, 6.103515625e-05f.xxx);
        float3 _1832 = _1829 / dot(_1829, 1.0f.xxx).xxx;
        float _1851 = _1832.z;
        float _1853 = _1832.x;
        float4 _1855 = (_53.SampleBias(_26, _1263, _19_m16) * _1851) + (_53.SampleBias(_26, _1268, _19_m16) * _1853);
        float2 _1867 = _1813.xy + ((((_1855.xy * 2.0f) - 1.0f.xx) * ((_53.SampleBias(_26, _1263 + _1817, _19_m16).w * _1851) + (_53.SampleBias(_26, _1268 + _1817, _19_m16).w * _1853))) * _1302);
        float3 _1868 = float3(_1867.x, _1867.y, _1813.z);
        float _1869 = _1855.z;
        float _1874 = max(max(max(_1569.zw * step(0.00999999977648258209228515625f, _1566), _1798.zw * _1800).x, step(1.0099999904632568359375f - _1302, _1278.z)), smoothstep(1.0f - _1869, 1.10000002384185791015625f - _1869, _1302) * _1302);
        float2 _1875 = _1867.xy;
        _1868.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1875, _1875), 0.0f, 1.0f)));
        float3 _1882 = normalize(_1868);
        float3 _1883 = cross(_562, float3(0.0f, 1.0f, 0.0f));
        bool3 _1886 = (dot(_1883, _1883) > 6.103515625e-05f).xxx;
        float3 _1887 = normalize(_1883);
        float3 _1888 = float3(_1886.x ? _1887.x : float3(1.0f, 0.0f, 0.0f).x, _1886.y ? _1887.y : float3(1.0f, 0.0f, 0.0f).y, _1886.z ? _1887.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1899 = min(_494, 0.0500000007450580596923828125f);
        float _1900 = lerp(_494, _1899, _1874);
        float _1917 = lerp(1.0f, 0.5f, (_1290 * (1.0f - _1236)) * (1.0f - _1299));
        _1925 = normalize(lerp(_562, normalize(((_1888 * _1882.x) + (cross(_1888, _562) * _1882.y)) + (_562 * _1882.z)), _1874.xxx));
        _1926 = _1874;
        _1927 = _1899;
        _1928 = _1874;
        _1929 = max(_1900 - ((0.20000000298023223876953125f * _1236) * _1290), min(0.20000000298023223876953125f, _1900));
        _1930 = _507 * _1917;
        _1931 = lerp(_485, _485 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_485, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1874 * _1297).xxx) * _1917;
    }
    else
    {
        _1925 = _562;
        _1926 = 0.0f;
        _1927 = 0.00999999977648258209228515625f;
        _1928 = 0.0f;
        _1929 = _494;
        _1930 = _507;
        _1931 = _485;
    }
    float3 _2103;
    float _2104;
    float _2105;
    float3 _2106;
    float3 _2107;
    float _2108;
    [branch]
    if (_601 > 0.00999999977648258209228515625f)
    {
        bool3 _1935 = _460.xxx;
        float3 _1937 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1938 = float3(_1935.x ? _1937.x : _10.x, _1935.y ? _1937.y : _10.y, _1935.z ? _1937.z : _10.z);
        float3 _1941 = _1938 * _19_m89.z;
        float3 _1943 = float3(_1935.x ? _9.xzy.x : _9.x, _1935.y ? _9.xzy.y : _9.y, _1935.z ? _9.xzy.z : _9.z);
        float3 _1945 = abs(_1943) - 0.20000000298023223876953125f.xxx;
        float3 _1948 = max((_1945 * _1945) * _1945, 6.103515625e-05f.xxx);
        float3 _1951 = _1948 / dot(_1948, 1.0f.xxx).xxx;
        float _1967 = _1951.y;
        float _1969 = _1951.z;
        float _1972 = _1951.x;
        float4 _1974 = ((_54.SampleBias(_26, _1941.xz, _19_m16) * _1967) + (_54.SampleBias(_26, _1941.xy, _19_m16) * _1969)) + (_54.SampleBias(_26, _1941.zy, _19_m16) * _1972);
        float _1975 = _1943.y;
        float _1982 = clamp(_601 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1938.y) * clamp(_601 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1993 = smoothstep(2.0f - _1982, 2.349999904632568359375f - _1982, ((_1975 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1974.z) * ((_492 * _492) * float(gl_FrontFacing));
        float _2005 = lerp(1.0f, 0.5f, ((_1982 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1931 * (1.0f - _490), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1974.w) * ((_1975 * 0.25f) + 0.75f));
        float3 _2007 = _1993.xxx;
        float2 _2013 = (_1974.xy * 2.0f) - 1.0f.xx;
        float3 _2014 = float3(_2013.x, _2013.y, _414.z);
        float2 _2015 = _2013.xy;
        _2014.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2015, _2015), 0.0f, 1.0f)));
        float2 _2023 = _2014.xy * 2.0f;
        float3 _2025 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2023.x, _2023.y, _2014.z), _2007);
        float3 _2029 = _2025 * rsqrt(max(6.103515625e-05f, dot(_2025, _2025)));
        float _2030 = _562.y;
        float _2033 = step(0.00999999977648258209228515625f, 1.0f - (_2030 * _2030));
        float _2037 = lerp(_562.z, _2030, _2033);
        float3 _2044 = (float3(0.0f, _2033, 1.0f - _2033) - (_562 * _2037)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2037 * _2037)));
        float3 _2058 = _1941 * 4.0f;
        float4 _2078 = ((_55.SampleLevel(_24, _2058.xz, 0.0f) * _1967) + (_55.SampleLevel(_24, _2058.xy, 0.0f) * _1969)) + (_55.SampleLevel(_24, _2058.zy, 0.0f) * _1972);
        float2 _2081 = (_2078.xz * 2.0f) - 1.0f.xx;
        float _2092 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2081.x, _2078.y, _2081.y), (floor(_451 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2093 = _2092 * _2092;
        float _2096 = _2093 * ((_2093 * 2.0f) * _1993);
        float3 _2097 = 1.0f.xxx * _2096;
        _2103 = ((cross(_2044, _562) * _2029.x) + (_2044 * _2029.y)) + (_562 * _2029.z);
        _2104 = _1928 + _2096;
        _2105 = lerp(lerp(_1929, 0.89999997615814208984375f, clamp(_1993 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2096);
        _2106 = lerp(_1930 * _2005, 0.3079999983310699462890625f.xxx, _2007) + (_2097 * 0.5f);
        _2107 = lerp(_1931 * _2005, 0.87999999523162841796875f.xxx, _2007) + _2097;
        _2108 = lerp(_490, 0.0f, _1993);
    }
    else
    {
        _2103 = _562;
        _2104 = _1928;
        _2105 = _1929;
        _2106 = _1930;
        _2107 = _1931;
        _2108 = _490;
    }
    float _2110 = 0.959999978542327880859375f - (_2108 * 0.959999978542327880859375f);
    float3 _2111 = _2107 * _2110;
    float3 _2114 = lerp(0.039999999105930328369140625f.xxx * _489.y, _2107, _2108.xxx);
    float3 _2115 = _2106 * _2110;
    float _2117 = max(_2105 * _2105, 0.0078125f);
    float2 _2130 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2130.y = -_2130.y;
    float2 _2143 = ((sqrt(sqrt(abs(_2130 * 0.5f))) * float2(int2(sign(_2130)))) * 0.5f) + 0.5f.xx;
    float4 _2146 = float4(_2143.x, _2143.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2146.z = 1.0f;
    _2146.w = (_2104 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2159 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2163 = normalize(float3(_2159.x, 6.103515625e-05f, _2159.z));
    float3 _2173 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2177 = _2173 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _2181 = int(_565.x);
    int _2182 = int(_565.y);
    float4 _2186 = _40.Load(int3(int3(_2181, _2182, 0).xy, 0));
    float _2191 = _2186.y;
    float _2194 = lerp(lerp(1.0f, _2186.x, _38_m6.x), 1.0f, _19_m80.z);
    float _2195 = dot(_2103, _2159);
    float3 _2202 = _2115 * _19_m79.z;
    float3 _2203 = _2202 * 0.64999997615814208984375f;
    float _2207 = dot(_2111, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2220 = clamp(-dot(_2163.xz, normalize(_575.xz)), 0.0f, 1.0f);
    float _2224 = 1.0f - _19_m91.x;
    float _2232 = smoothstep(0.25f, 1.0f, clamp(lerp(_2195, ((-_2195) * ((_2195 * 0.5f) - 1.0f)) + 0.5f, (_2220 * smoothstep(0.25f, 0.75f, 1.0f - abs(_575.y))) * _2224) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _2239 = max(max(_2232, _2232), _2232) - min(min(_2232, _2232), _2232);
    float _2241 = smoothstep(0.25f, 1.0f, dot(_2103, _575));
    float _2242 = _492 * _2191;
    float _2249 = min(min(_2191, _492), _2232);
    float _2250 = _2241 * _2242;
    float3 _2254 = ((clamp(dot(_562, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1116, 1.0f.xxx, (_19_m80.y * _2249).xxx);
    float3 _2256 = _2249.xxx;
    float3 _2279 = _2194.xxx;
    float3 _2280 = lerp((_2254 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1117), 1.5f), clamp(_1117, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2177, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2177, _2256) + ((_2254 * clamp(_1117, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2173 * _19_m91.y)))) * _19_m79.y, _2279);
    float3 _2281 = lerp(lerp(lerp(dot(_2203, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2203, 1.2000000476837158203125f.xxx), _2202, clamp((_2242 * _2241) + _2232, 0.0f, 1.0f).xxx), _2111, _2256);
    float3 _2287 = _2281 * ((1.0f - _2239).xxx + (_2232.xxxx.xyz * _2239));
    float3 _2296 = lerp(lerp(_2202, lerp(_2207.xxx, _2111, 1.2000000476837158203125f.xxx), _2250.xxx), _2287 * clamp(dot(_2281, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2287, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2279);
    float4 _2300 = float4(_2296, _2194);
    float _2302 = lerp(_2250, _2249, _2194);
    float _2305 = lerp(_19_m79.z, 1.0f, _2302);
    float3 _2313 = float3(_575.x, lerp(0.5f, _2159.y, _2194), _575.z);
    float _2326 = clamp(dot(_1925, _451), 0.0f, 1.0f);
    float _2327 = dot(_1925, normalize(((_2159 * _2194) + ((_2313 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2313, _2313)))) * 2.0f)) + (_451 * (2.0f + _2194))));
    float _2328 = _2117 * _2117;
    float _2332 = (((_2327 * _2328) - _2327) * _2327) + 1.0f;
    float _2333 = _2332 * _2332;
    float _2337 = 2.0f * _2326;
    float _2339 = (1.0f + _2326) - _2326;
    float _2356 = (1.0f - _49_m6) + (_498 * _49_m6);
    float3 _2358 = ((_2280 * _2296) * _2356) + (((_2114 * clamp((((_2328 != _2333) ? (_2328 / _2333) : 1.0f) * (0.5f / ((_2337 + (_2117 * _2339)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2280 * (((_2302 * 0.5f) + 0.5f) * _2305)) * 1.0f)) * _19_m92.w);
    float _2359 = dot(_2358, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2362 = clamp(_2359 - 0.5f, 0.0f, 0.5f);
    float3 _2398 = normalize(cross(_575, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _2404 = dot(_451, _2103);
    float _2406 = 1.0f - abs(_2404);
    float _2428 = dot(_2163, _2103);
    float _2440 = 1.0f - _2194;
    float _2467 = lerp(_2105, _1927, _1926);
    float _2468 = _2467 * _2467;
    float _2469 = _2326 * _2326;
    float _2470 = _2469 * _2326;
    float2 _2471 = float2(1.0f, _2326);
    float2 _2474 = float2(1.0f, _2468);
    float3 _2477 = float3(1.0f, _2468, (_2468 * _2468) * _2468);
    float _2482 = dot(mul(_2471, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2474) / dot(mul(float3(1.0f, _2469, _2470), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2477);
    float _2487 = dot(mul(_2471, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2474) / dot(mul(float3(1.0f, _2326, _2470), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2477);
    float3 _2490 = (_2114 * _2482) + _2487.xxx;
    float _2491 = _2482 + _2487;
    float3 _2497 = -_451;
    float3 _2516 = lerp(_2359.xxx, _2358, ((_2362 * _2362) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _2406)) * _19_m87.w) * min(min(clamp(dot(_542, _2398) + 1.0f, 0.0f, 1.0f), _492), _2191)) * (lerp(0.25f.xxx, _2111, _19_m88.z.xxx) * clamp(dot(_2398, _2103), 0.0f, 1.0f))) + ((((((lerp(_1115 * (1.0f / max(max(max(_1115.x, _1115.y), _1115.z) * 0.5f, 1.0f)), _2177, _2279) * clamp(lerp(dot(_1114.xyz, _2103) * _1114.w, ((-_2428) * ((_2428 * 0.5f) - 1.0f)) + 0.5f, _2194), 0.0f, 1.0f)) * ((_2440 + (_2220 * _2194)) * _2224)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2406)) * min(_492, _2191)) * (_2440 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2207) * _2194))) * max(0.1500000059604644775390625f.xxx, _2111)));
    float2 _2519 = float2(_565);
    float2 _2521 = floor(_2519 * 0.03125f);
    int _2529 = int((_2521.x + (_2521.y * _34_m5)) * 8.0f);
    float _2536 = floor(_432 - (_19_m3.y * _34_m11));
    float _2540 = clamp(_2536, 0.0f, _34_m7 - 1.0f);
    int _2542 = int(_2540 * 8.0f);
    float3 _2544;
    _2544 = (_2516 + (((_49_m34.xyz * _1214.x) * _498) * _2356)) + (((_60.SampleLevel(_25, reflect(_2497, _1925), (1.2000000476837158203125f * log2(max(_2467, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2490 + ((_2114 * ((1.0f - _2491) / _2491)) * _2490)) * 1.0f)) * ((clamp(_1117, 0.5f, 1.5f) * _19_m79.w) * _2305)) * _1116);
    float3 _2545;
    [loop]
    for (int _2547 = 0; _2547 <= 7; _2544 = _2545, _2547++)
    {
        uint _2565 = (_2536 <= _2540) ? (_30.Load(uint(_2529 + _2547) * 4 + 0) & _30.Load(uint((_19_m21.y + _2542) + _2547) * 4 + 0)) : 0u;
        uint _2566 = uint(_2547);
        _2545 = _2544;
        uint _2571;
        float3 _2568;
        [loop]
        for (uint _2570 = _2565; _2570 != 0u; _2545 = _2568, _2570 = _2571)
        {
            uint _2575 = firstbitlow(_2570);
            _2571 = _2570 ^ (1u << (_2575 & 31u));
            int _2581 = int((32u * _2566) + _2575) * 8;
            int _2584 = _2581 + 1;
            int _2587 = _2581 + 2;
            int _2590 = _2581 + 3;
            int _2593 = _2581 + 4;
            int _2596 = _2581 + 5;
            int _2599 = _2581 + 6;
            int _2602 = _2581 + 7;
            uint _2606 = uint(_36_m6[_2596].w);
            float _2681;
            if ((_2606 & 1u) == 1u)
            {
                uint _2612 = asuint(_36_m6[_2596].x);
                uint _2619 = asuint(_36_m6[_2596].y);
                uint _2626 = asuint(_36_m6[_2596].z);
                uint _2633 = asuint(_36_m6[_2599].x);
                uint _2640 = asuint(_36_m6[_2599].y);
                uint _2647 = asuint(_36_m6[_2599].z);
                float3 _2666 = abs(mul(float4(_535 - _36_m6[_2584].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2612).x, spvUnpackHalf2x16(_2626).x, spvUnpackHalf2x16(_2640).x, 0.0f), float4(spvUnpackHalf2x16(_2612 >> 16u).x, spvUnpackHalf2x16(_2626 >> 16u).x, spvUnpackHalf2x16(_2640 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2619).x, spvUnpackHalf2x16(_2633).x, spvUnpackHalf2x16(_2647).x, 0.0f), float4(spvUnpackHalf2x16(_2619 >> 16u).x, spvUnpackHalf2x16(_2633 >> 16u).x, spvUnpackHalf2x16(_2647 >> 16u).x, 0.0f))).xyz);
                float _2673 = _36_m6[_2602].x * 0.5f;
                float _2679 = 1.0f - clamp((max(max(_2666.x, _2666.y), _2666.z) - (_2673 + 0.5f)) / (0.5f - _2673), 0.0f, 1.0f);
                _2681 = _2679 * _2679;
            }
            else
            {
                _2681 = 1.0f;
            }
            if (false || (_2681 < 0.001000000047497451305389404296875f))
            {
                _2568 = _2545;
                continue;
            }
            float3 _3374;
            if (_36_m6[_2581].w < 1.5f)
            {
                float3 _3373;
                do
                {
                    uint _2694 = asuint(_36_m6[_2590].w);
                    if ((_2694 == 16u) || ((_36_m6[_2590].z + _19_m91.z) < 0.5f))
                    {
                        _3373 = _2545;
                        break;
                    }
                    bool _2706 = (uint(_36_m6[_2581].w) & 1u) == 0u;
                    bool _2710 = (!_2706) && (_36_m6[_2587].z > 0.0f);
                    bool _2711 = _2694 == 4u;
                    float _2712 = float(_2706);
                    float _2720 = (0.5f + (0.5f * _36_m6[_2587].y)) - abs(_36_m6[_2587].x);
                    float _2721 = _36_m6[_2587].y - _2720;
                    float _2728 = abs(max((1.0f - abs(_2720)) - abs(_2721), 0.00048828125f));
                    float3 _2732 = normalize(float3(_2720, _2721, (_36_m6[_2587].x >= 0.0f) ? _2728 : (-_2728)));
                    float _2738 = lerp(_36_m6[_2599].w, max(2.0f * _36_m6[_2593].y, 0.100000001490116119384765625f), float(_2711));
                    float3 _2743 = _36_m6[_2584].xyz - _535;
                    float3 _2744 = -_2732;
                    float3 _2749 = lerp(_2743, _2744 * dot(_2743, _2744), (float(_2711 && (_36_m6[_2593].z > 0.5f)) * _2712).xxx);
                    float _2750 = dot(_2749, _2749);
                    float _2751 = rsqrt(_2750);
                    float3 _2752 = _2749 * _2751;
                    float3 _2785;
                    float _2786;
                    if (_2710)
                    {
                        float3 _2756 = (_2732 * _36_m6[_2587].z) * 0.5f;
                        float3 _2757 = _2749 - _2756;
                        float3 _2758 = _2749 + _2756;
                        float _2759 = length(_2757);
                        float _2760 = length(_2758);
                        float3 _2769 = normalize(cross(cross(_2732, _2752), _2732));
                        _2785 = _2769;
                        _2786 = ((1.0f / ((((_2759 * _2760) + dot(_2757, _2758)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2769, _2757) / _2759) + (dot(_2769, _2758) / _2760)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2587].z * _2751, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2785 = _2752;
                        _2786 = 1.0f;
                    }
                    float _2808;
                    if (_2738 < 0.0f)
                    {
                        float _2796 = _2750 * (_36_m6[_2584].w * _36_m6[_2584].w);
                        float _2799 = clamp(1.0f - (_2796 * _2796), 0.0f, 1.0f);
                        _2808 = lerp(1.0f / (_2750 + 1.0f), _2786, float(_2710)) * (_2799 * _2799);
                    }
                    else
                    {
                        float3 _2802 = _2749 * _36_m6[_2584].w;
                        _2808 = _2786 * pow(1.0f - clamp(dot(_2802, _2802), 0.0f, 1.0f), _2738);
                    }
                    float _2813 = clamp((dot(_2785, _2744) - _36_m6[_2587].z) * _36_m6[_2587].w, 0.0f, 1.0f);
                    float _2816 = _2808 * lerp(1.0f, _2813 * _2813, _2712);
                    int _2818 = int(_36_m6[_2602].w);
                    float _2922;
                    if ((!_2710) && (_2818 >= 0))
                    {
                        uint _2824 = uint(_2818);
                        float2 _2915;
                        [branch]
                        if (_2712 != 0.0f)
                        {
                            float4 _2836 = mul(_63_m1[_2824], float4(_535.x, _607, _535.z, 1.0f));
                            _2915 = _63_m0[_2824].xy + (clamp(_2836.xy / _2836.w.xx, 0.0f.xx, 1.0f.xx) * _63_m0[_2824].zw);
                        }
                        else
                        {
                            float3 _2856 = mul(float4(-_2749, 0.0f), _63_m1[_2824]).xyz;
                            float3 _421 = _2856;
                            float3 _420 = _2856;
                            float3 _419 = abs(_2856);
                            uint _2865 = uint(int(_419.y > _419.x));
                            uint _2871 = (_419.z > _419[_2865]) ? 2u : _2865;
                            uint _2877 = (_2871 * 2u) + uint(_420[_2871] < 0.0f);
                            float _2881 = abs(_421[_2877 / 2u]);
                            float _2901 = 0.5f - (0.000244140625f / _63_m0[_2824].w);
                            _2915 = _63_m0[_2824].xy + (clamp(float2((float(_2877) + ((((_421[uint(_370[_2877].x)] * _371[_2877].x) / _2881) * _2901) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_421[uint(_370[_2877].y)] * _371[_2877].y) / _2881) * _2901)), 0.0f.xx, 1.0f.xx) * _63_m0[_2824].zw);
                        }
                        _2922 = _2816 * _61.SampleLevel(_25, _2915, 0.0f).x;
                    }
                    else
                    {
                        _2922 = _2816;
                    }
                    float _2923 = _2922 * _2681;
                    float3 _3372;
                    do
                    {
                        float3 _3371;
                        [branch]
                        if (_2923 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2711)
                            {
                                _3372 = lerp(_2545, _36_m6[_2581].xyz, (_2923 * (_36_m6[_2593].x * ((1.0f - _36_m6[_2593].w) + (smoothstep(-0.5f, 0.5f, dot(_563, _2785)) * _36_m6[_2593].w)))).xxx);
                                break;
                            }
                            float _2943 = dot(_2103, _2785);
                            float _2944 = clamp(_2943, 0.0f, 1.0f);
                            float _3247;
                            if (_2694 != 0u)
                            {
                                bool _2950 = _2706 || ((_2606 & 2u) != 0u);
                                int _2999;
                                if (_2950)
                                {
                                    _2999 = int(_36_m6[_2590].x);
                                }
                                else
                                {
                                    uint _2956 = asuint(_36_m6[_2587].w);
                                    uint _2958 = asuint(_36_m6[_2590].x);
                                    float3 _2959 = _535 - _36_m6[_2584].xyz;
                                    float3 _2960 = abs(_2959);
                                    float _2961 = _2960.x;
                                    float _2962 = _2960.y;
                                    float _2964 = _2960.z;
                                    int _2996;
                                    if ((_2961 > _2962) && (_2961 > _2964))
                                    {
                                        _2996 = int((_2959.x > 0.0f) ? (_2956 >> 24u) : ((_2956 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2995;
                                        if (_2962 > _2964)
                                        {
                                            _2995 = int((_2959.y > 0.0f) ? ((_2956 >> 8u) & 255u) : (_2956 & 255u));
                                        }
                                        else
                                        {
                                            _2995 = int((_2959.z > 0.0f) ? ((_2958 >> 8u) & 255u) : (_2958 & 255u));
                                        }
                                        _2996 = _2995;
                                    }
                                    _2999 = (_2996 < 80) ? _2996 : (-1);
                                }
                                bool _3000 = _2999 >= 0;
                                float _3246;
                                if (_3000)
                                {
                                    float3 _3004 = _535 - _36_m6[_2584].xyz;
                                    float4 _3024 = mul(_38_m10[_2999], float4((_535 - ((_3004 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3004, _3004)))) * _38_m11[_2999].x)) + (_563 * (_38_m11[_2999].y * 5.0f)), 1.0f));
                                    float _3025 = _3024.w;
                                    float3 _3028 = _3024.xyz / _3025.xxx;
                                    float2 _3029 = _3028.xy;
                                    float3 _3037 = _3028.xyz;
                                    bool3 _3038 = bool3(_3037.x <= 0.0f.xxx.x, _3037.y <= 0.0f.xxx.y, _3037.z <= 0.0f.xxx.z);
                                    bool3 _3039 = bool3(_3037.x >= 1.0f.xxx.x, _3037.y >= 1.0f.xxx.y, _3037.z >= 1.0f.xxx.z);
                                    float _3042 = _3028.z;
                                    float2 _3053 = ((_3029 * (_38_m12[_2999].zw - _38_m12[_2999].xy)) + _38_m12[_2999].xy).xy * _38_m13.zw;
                                    float2 _3055 = floor(_3053 + 0.5f.xx);
                                    float2 _3056 = _3053 - _3055;
                                    float _3058 = _3056.x + 0.5f;
                                    float _3059 = _3058 * _3058;
                                    float _3062 = 1.0f - _3056.x;
                                    float _3063 = min(_3056.x, 0.0f);
                                    float _3066 = _3056.x + 1.0f;
                                    float _3067 = max(_3056.x, 0.0f);
                                    float _3079 = _3056.y + 0.5f;
                                    float _3080 = _3079 * _3079;
                                    float _3083 = 1.0f - _3056.y;
                                    float _3084 = min(_3056.y, 0.0f);
                                    float _3087 = _3056.y + 1.0f;
                                    float _3088 = max(_3056.y, 0.0f);
                                    float3 _3100 = float3(0.1599999964237213134765625f * _3062, 0.1599999964237213134765625f * ((_3066 - (_3067 * _3067)) + 1.0f), _3059 * 0.07999999821186065673828125f);
                                    float3 _3101 = float3(0.1599999964237213134765625f * ((_3059 * 0.5f) - _3056.x), 0.1599999964237213134765625f * ((_3062 - (_3063 * _3063)) + 1.0f), 0.1599999964237213134765625f * _3066) + _3100;
                                    float3 _3103 = float3(0.1599999964237213134765625f * _3083, 0.1599999964237213134765625f * ((_3087 - (_3088 * _3088)) + 1.0f), _3080 * 0.07999999821186065673828125f);
                                    float3 _3104 = float3(0.1599999964237213134765625f * ((_3080 * 0.5f) - _3056.y), 0.1599999964237213134765625f * ((_3083 - (_3084 * _3084)) + 1.0f), 0.1599999964237213134765625f * _3087) + _3103;
                                    float3 _3110 = ((_3100 / _3101) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _3112 = ((_3103 / _3104) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _3114 = _3055 * _38_m13.xy;
                                    float _3115 = _3110.x;
                                    float _3116 = _3112.x;
                                    float _3119 = _3110.y;
                                    float _3122 = _3110.z;
                                    float _3125 = _3112.y;
                                    float _3132 = _3112.z;
                                    float _3139 = _3101.x;
                                    float _3140 = _3104.x;
                                    float _3142 = _3101.y;
                                    float _3144 = _3101.z;
                                    float _3146 = _3104.y;
                                    float _3150 = _3104.z;
                                    float _3208 = (((((((_3139 * _3140) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3115, _3116), _413).xy, _3042)) + ((_3142 * _3140) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3119, _3116), _413).xy, _3042))) + ((_3144 * _3140) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3122, _3116), _413).xy, _3042))) + ((_3139 * _3146) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3115, _3125), _413).xy, _3042))) + ((_3142 * _3146) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3119, _3125), _413).xy, _3042))) + ((_3144 * _3146) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3122, _3125), _413).xy, _3042))) + ((_3139 * _3150) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3115, _3132), _413).xy, _3042));
                                    float2 _3229 = min(_3029, 1.0f.xx - _3029);
                                    _3246 = _3000 ? lerp(1.0f, (any(bool3(_3038.x || _3039.x, _3038.y || _3039.y, _3038.z || _3039.z)) || ((asuint(_3042) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3208 + ((_3142 * _3150) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3119, _3132), _413).xy, _3042))) + ((_3144 * _3150) * _39.SampleCmpLevelZero(_27, float3(_3114 + float2(_3122, _3132), _413).xy, _3042))), _2950 ? min(_38_m11[_2999].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2999].z - _3025) * 0.25f, min(_3229.x, _3229.y)))) : _38_m11[_2999].w) : 1.0f;
                                }
                                else
                                {
                                    _3246 = clamp(dot(_542, _2785) + 1.0f, 0.0f, 1.0f);
                                }
                                _3247 = _3246;
                            }
                            else
                            {
                                _3247 = 1.0f;
                            }
                            float _3327;
                            float3 _3328;
                            float _3329;
                            float3 _3330;
                            float3 _3331;
                            float _3332;
                            float _3333;
                            [branch]
                            if (_2694 == 0u)
                            {
                                float3 _3253 = _36_m6[_2581].xyz * _2923;
                                float3 _3266 = _2300.xyz;
                                _3327 = _2923;
                                _3328 = (_36_m6[_2581].xyz * ((1.0f - _36_m6[_2593].y) + ((1.0f / max(1.0f, max(max(_3253.x, _3253.y), _3253.z) * lerp(0.75f, 0.5f, _2440))) * _36_m6[_2593].y))) * lerp(0.25f * _36_m6[_2593].x, 1.0f, clamp(_2943 + 0.5f, 0.0f, 1.0f));
                                _3329 = _2944;
                                _3330 = _3266;
                                _3331 = _3266;
                                _3332 = 1.0f;
                                _3333 = 0.0f;
                            }
                            else
                            {
                                float _3321;
                                float _3322;
                                float3 _3323;
                                float3 _3324;
                                float _3325;
                                float _3326;
                                if (_2694 == 3u)
                                {
                                    _3321 = _2923 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2593].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2593].x), _2406) * _3247);
                                    _3322 = clamp(dot(_2103, -normalize(cross(_575, cross(_575, _2785)))), 0.0f, 1.0f);
                                    _3323 = lerp(0.5f.xxx, _2111, _36_m6[_2593].y.xxx);
                                    _3324 = 0.0f.xxx;
                                    _3325 = 1.0f;
                                    _3326 = 0.0f;
                                }
                                else
                                {
                                    bool _3291 = _2694 == 1u;
                                    float _3315;
                                    float3 _3316;
                                    float _3317;
                                    float _3318;
                                    if (_3291)
                                    {
                                        _3315 = clamp(clamp(_2943 + _36_m6[_2593].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3247;
                                        _3316 = _2115 * _36_m6[_2593].y;
                                        _3317 = 1.0f;
                                        _3318 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3301 = _2694 == 2u;
                                        float _3313;
                                        if (_3301)
                                        {
                                            _3313 = smoothstep(_36_m6[_2593].x + 0.0500000007450580596923828125f, _36_m6[_2593].x - 0.0500000007450580596923828125f, _2105) * ((1.0f - _36_m6[_2593].z) + (step(0.5f, _2108) * _36_m6[_2593].z));
                                        }
                                        else
                                        {
                                            _3313 = 1.0f;
                                        }
                                        _3315 = _2944;
                                        _3316 = 0.0f.xxx;
                                        _3317 = _3313;
                                        _3318 = _3301 ? _36_m6[_2593].y : 0.0f;
                                    }
                                    bool3 _3319 = _3291.xxx;
                                    _3321 = _2923;
                                    _3322 = _3315;
                                    _3323 = float3(_3319.x ? _2111.x : 0.0f.xxx.x, _3319.y ? _2111.y : 0.0f.xxx.y, _3319.z ? _2111.z : 0.0f.xxx.z);
                                    _3324 = _3316;
                                    _3325 = _3317;
                                    _3326 = _3318;
                                }
                                _3327 = _3321;
                                _3328 = _36_m6[_2581].xyz;
                                _3329 = _3322;
                                _3330 = _3323;
                                _3331 = _3324;
                                _3332 = _3325;
                                _3333 = _3326;
                            }
                            float3 _3361;
                            [branch]
                            if (_2694 != 3u)
                            {
                                float _3338 = lerp(_2117, 0.00999999977648258209228515625f, _3333);
                                float _3341 = dot(_1925, normalize(_2785 + _451));
                                float _3342 = _3338 * _3338;
                                float _3346 = (((_3341 * _3342) - _3341) * _3341) + 1.0f;
                                float _3347 = _3346 * _3346;
                                _3361 = ((_2114 * clamp((((_3342 != _3347) ? (_3342 / _3347) : 1.0f) * (0.5f / ((_2337 + (_3338 * _2339)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3332) * _36_m6[_2602].z;
                            }
                            else
                            {
                                _3361 = 0.0f.xxx;
                            }
                            float3 _3364 = _3328 * _3327;
                            _3371 = _2545 + (((_3364 * lerp(_3331, _3330, _3329.xxx)) * _2356) + ((_3364 * _3361) * _3329));
                        }
                        else
                        {
                            _3371 = _2545;
                        }
                        _3372 = _3371;
                        break;
                    } while(false);
                    _3373 = _3372;
                    break;
                } while(false);
                _3374 = _3373;
            }
            else
            {
                _3374 = _2545;
            }
            _2568 = _3374;
        }
    }
    float3 _3414;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _3414 = lerp(lerp(0.5f.xxx, lerp(dot(_2544, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2544, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2404, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _3414 = _2544;
    }
    float4 _3421 = float4(_3414 * _19_m20.y, _498);
    _3421.w = (_49_m8 == 1.0f) ? _498 : 1.0f;
    float4 _3808;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _3445 = _607 * _19_m46.w;
        float _3450 = max(0.00999999977648258209228515625f, _3445 + _19_m47.w);
        float3 _3464 = exp(_19_m45.xyz * ((-max(0.0f, (_452 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3450)) / _3450) * exp(_3445 + _19_m48.w))));
        float _3467 = dot(_2497, _19_m44.xyz);
        float _3473 = _19_m45.w * _19_m45.w;
        float _3477 = (1.0f + _3473) - ((2.0f * _19_m45.w) * _3467);
        float3 _3800;
        float _3801;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3522 = (uint3(int3(_2181, _2182, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3523 = _3522.y;
            uint _3524 = _3522.z;
            uint _3527 = _3522.x + (_3523 * _3524);
            uint _3529 = _3523 + (_3524 * _3527);
            uint _3531 = _3524 + (_3527 * _3529);
            uint _3533 = _3527 + (_3529 * _3531);
            float _3558 = dot(_2497, -_17_m0[2].xyz);
            float3 _3565 = _535 - _17_m11.xyz;
            float _3567 = (_19_m55.w * ((_3558 > 5.9604644775390625e-08f) ? (1.0f / _3558) : 0.0f)) * (1.0f / _452);
            float _3568 = _3565.y;
            float _3569 = _3567 * _3568;
            float _3571 = _17_m11.y + _3569;
            float _3572 = _3568 - _3569;
            float _3574 = (1.0f - _3567) * _452;
            float _3588 = max(-127.0f, _19_m49.z * _3572);
            float _3612 = max(-127.0f, _19_m52.x * _3572);
            float _3623 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3571 - _19_m49.x)))) * ((abs(_3588) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3588)) / _3588) : (0.693147182464599609375f - (0.2402265071868896484375f * _3588)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3571 - _19_m52.z)))) * ((abs(_3612) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3612)) / _3612) : (0.693147182464599609375f - (0.2402265071868896484375f * _3612))));
            float _3645 = clamp((_452 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3648 = clamp((max(clamp(exp2(-(_3623 * _3574)), 0.0f, 1.0f), _19_m51.w) + clamp((_452 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3645, 0.0f, 1.0f);
            float4 _3688 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _66.SampleLevel(_25, float3((_2519 + ((((float3(uint3(_3533, _3529 + (_3531 * _3533), _417) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_432 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_432 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3800 = _3688.xyz + (((_19_m51.xyz * (1.0f - _3648)) + (((_19_m54.xyz * pow(clamp(dot(_451, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3623 * max(_3574 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3645))) * _3688.w);
            _3801 = _3688.w * _3648;
        }
        else
        {
            float3 _3694 = _535 - _17_m11.xyz;
            float _3696 = _3694.y;
            float _3710 = max(-127.0f, _19_m49.z * _3696);
            float _3734 = max(-127.0f, _19_m52.x * _3696);
            float _3745 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3710) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3710)) / _3710) : (0.693147182464599609375f - (0.2402265071868896484375f * _3710)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3734) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3734)) / _3734) : (0.693147182464599609375f - (0.2402265071868896484375f * _3734))));
            float _3767 = clamp((_452 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3770 = clamp((max(clamp(exp2(-(_3745 * _452)), 0.0f, 1.0f), _19_m51.w) + clamp((_452 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3767, 0.0f, 1.0f);
            _3800 = (_19_m51.xyz * (1.0f - _3770)) + (((_19_m54.xyz * pow(clamp(dot(_451, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3745 * max(_452 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3767));
            _3801 = _3770;
        }
        float3 _3806 = (_3421.xyz * (_3464 * _3801)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3467 * _3467)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3473) / max((12.56637096405029296875f * _3477) * sqrt(_3477), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3464)) * _3801) + _3800);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3806 = (_3806 * 0.65f) + (_3421.xyz * 0.35f);

        }
        _3808 = float4(_3806.x, _3806.y, _3806.z, _3421.w);
    }
    else
    {
        _3808 = _3421;
    }
    _14 = _3808;
    _15 = _2146;
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
