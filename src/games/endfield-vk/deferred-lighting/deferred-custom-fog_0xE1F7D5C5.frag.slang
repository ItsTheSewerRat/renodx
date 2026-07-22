// DX11 0xA98FCD8A -> Vulkan 0xE1F7D5C5
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

static float3 _410;
static float _411 = 0.0f;
static float3 _412 = 0.0f;
static float _414 = 0.0f;
static uint _415 = 0u;

static const int2 _366[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _367[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float4 _49_m39 : packoffset(c15);
    float _49_m40 : packoffset(c16);
    float _49_m41 : packoffset(c16.y);
    float _49_m42 : packoffset(c16.z);
    float _49_m43 : packoffset(c16.w);
    float _49_m44 : packoffset(c17);
    float _49_m45 : packoffset(c17.y);
    float _49_m46 : packoffset(c17.z);
    float _49_m47 : packoffset(c17.w);
    float _49_m48 : packoffset(c18);
    float _49_m49 : packoffset(c18.y);
    float _49_m50 : packoffset(c18.z);
    float _49_m51 : packoffset(c18.w);
    float4 _49_m52 : packoffset(c19);
    float4 _49_m53 : packoffset(c20);
    float4 _49_m54 : packoffset(c21);
    float4 _49_m55 : packoffset(c22);
    float4 _49_m56 : packoffset(c23);
    float4 _49_m57 : packoffset(c24);
    float2 _49_m58 : packoffset(c25);
    float2 _49_m59 : packoffset(c25.z);
    float _49_m60 : packoffset(c26);
    float _49_m61 : packoffset(c26.y);
    float _49_m62 : packoffset(c26.z);
    float _49_m63 : packoffset(c26.w);
    float4 _49_m64 : packoffset(c27);
    float4 _49_m65 : packoffset(c28);
    float4 _49_m66 : packoffset(c29);
    float4 _49_m67 : packoffset(c30);
    float _49_m68 : packoffset(c31);
    float _49_m69 : packoffset(c31.y);
    float _49_m70 : packoffset(c31.z);
    float _49_m71 : packoffset(c31.w);
    float _49_m72 : packoffset(c32);
    float _49_m73 : packoffset(c32.y);
    float _49_m74 : packoffset(c32.z);
    float _49_m75 : packoffset(c32.w);
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
[[vk::binding(39, 0)]] Texture2D<float4> _50 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _51 : register(t37);
[[vk::binding(8, 1)]] Texture2D<float4> _52 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _53 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _54 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _55 : register(t5);
[[vk::binding(45, 0)]] TextureCube<float4> _57 : register(t45);
[[vk::binding(2, 1)]] Texture2D<float4> _58 : register(t2);
[[vk::binding(3, 1)]] Texture2D<float4> _59 : register(t3);
[[vk::binding(6, 1)]] Texture2D<float4> _60 : register(t6);
[[vk::binding(1, 1)]] SamplerState _61 : register(s1);
[[vk::binding(29, 0)]] Texture2D<float4> _62 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _67 : register(t36);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float2 _7;
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
    [[vk::location(4)]] float2 _7 : TEXCOORD4;
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
    float _429 = 1.0f / gl_FragCoord.w;
    float3 _444 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _445 = dot(_444, _444);
    float _447 = rsqrt(max(_445, 9.9999999392252902907785028219223e-09f));
    float3 _448 = _444 * _447;
    float _449 = _445 * _447;
    uint _452 = asuint(_22_m0[_12]._m2.x);
    bool _457 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _470;
    float4 _471;
    if (_457)
    {
        _470 = asfloat(_32_Load4((_452 + 2u) * 16 + 0));
        _471 = asfloat(_32_Load4(_452 * 16 + 0));
    }
    else
    {
        _470 = _22_m0[_12]._m0[2];
        _471 = _22_m0[_12]._m0[0];
    }
    float4 _483 = _52.SampleBias(_26, _3 + (_49_m58 * _19_m75.w), _19_m16);
    float3 _488 = _483.xyz * _49_m24.xyz;
    float4 _492 = _53.SampleBias(_26, _3, _19_m16);
    float _493 = _492.x;
    float _495 = _492.z;
    float _497 = 1.0f - _492.w;
    float _501 = _483.w * _49_m24.w;
    float3 _506 = _488 * _49_m18;
    float3 _510 = lerp(dot(_506, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _506, _49_m19.xxx);
    float4 _514 = _54.SampleBias(_26, _3, _19_m16);
    _514.w = _514.w * _514.x;
    float2 _523 = (_514.wy * 2.0f) - 1.0f.xx;
    float3 _524 = float3(_523.x, _523.y, _412.z);
    float2 _525 = _523.xy;
    _524.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_525, _525), 0.0f, 1.0f)));
    float2 _533 = _524.xy * _49_m3;
    float4 _542 = _55.SampleBias(_26, _3 + (_49_m59 * _19_m75.w), _19_m16);
    float3 _572 = _4 + _17_m11.xyz;
    float3 _576 = _572 - float3(_471.w, _414, _470.w);
    _576.y = 6.103515625e-05f;
    float3 _579 = normalize(_576);
    float3 _587 = _5 * 1.0f;
    float3 _589 = mul(float3(_533.x, _533.y, _524.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _587));
    float _598 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _599 = (_589 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_589, _589)))) * _598;
    float3 _600 = normalize(_5) * _598;
    uint2 _602 = uint2(gl_FragCoord.xy);
    float3 _612 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float4 _626 = float4(_414, _414, _414, float((asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x) >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _627 = _626.w;
    float _635 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1129;
    float3 _1130;
    float3 _1131;
    float _1132;
    if (_19_m80.y < 0.5f)
    {
        float3 _653 = _572 - (_19_m105.xyz + (_612 * (-_19_m107.w)));
        float _667 = max(clamp((max(abs(_653.x), abs(_653.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_653.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _969;
        float4 _970;
        float4 _971;
        float _972;
        float _973;
        if ((_19_m105.w != 0.0f) && (_667 < 1.0f))
        {
            float3 _680 = _572 - (_19_m105.xyz + (_612 * (-_19_m107.y)));
            float _694 = max(clamp((max(abs(_680.x), abs(_680.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_680.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _770;
            float4 _771;
            float4 _772;
            float4 _773;
            if (_694 < 1.0f)
            {
                float3 _703 = ((_572 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _705 = _703 - floor(_703);
                float4 _709 = _42.SampleLevel(_26, _705, 0.0f);
                float _710 = 1.0f - _694;
                float _714 = _19_m106.y * 0.5f;
                float _719 = _705.x;
                float _720 = clamp(_705.y, _714, 1.0f - _714) * 0.3333333432674407958984375f;
                float _721 = _705.z;
                float4 _724 = _43.SampleLevel(_25, float3(_719, _720, _721), 0.0f);
                float _740 = _709.x;
                float _750 = _709.y;
                float _760 = _709.z;
                _770 = _667 + (_724.w * _710);
                _771 = float4(((_43.SampleLevel(_25, float3(_719, _720 + 0.666666686534881591796875f, _721), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _760, _760) * _710;
                _772 = float4(((_43.SampleLevel(_25, float3(_719, _720 + 0.3333333432674407958984375f, _721), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _750, _750) * _710;
                _773 = float4(((_724.xyz * 4.0f) - 2.0f.xxx) * _740, _740) * _710;
            }
            else
            {
                _770 = _667;
                _771 = 0.0f.xxxx;
                _772 = 0.0f.xxxx;
                _773 = 0.0f.xxxx;
            }
            float3 _779 = _572 - (_19_m105.xyz + (_612 * (-_19_m107.z)));
            float _793 = max(clamp((max(abs(_779.x), abs(_779.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_779.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _873;
            float4 _874;
            float4 _875;
            float4 _876;
            if (_793 < 1.0f)
            {
                float3 _802 = ((_572 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _804 = _802 - floor(_802);
                float4 _808 = _44.SampleLevel(_26, _804, 0.0f);
                float _810 = _694 * (1.0f - _793);
                float _814 = _19_m106.y * 0.5f;
                float _819 = _804.x;
                float _820 = clamp(_804.y, _814, 1.0f - _814) * 0.3333333432674407958984375f;
                float _821 = _804.z;
                float4 _824 = _45.SampleLevel(_25, float3(_819, _820, _821), 0.0f);
                float _840 = _808.x;
                float _851 = _808.y;
                float _862 = _808.z;
                _873 = _770 + (_824.w * _810);
                _874 = _771 + (float4(((_45.SampleLevel(_25, float3(_819, _820 + 0.666666686534881591796875f, _821), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _862, _862) * _810);
                _875 = _772 + (float4(((_45.SampleLevel(_25, float3(_819, _820 + 0.3333333432674407958984375f, _821), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _851, _851) * _810);
                _876 = _773 + (float4(((_824.xyz * 4.0f) - 2.0f.xxx) * _840, _840) * _810);
            }
            else
            {
                _873 = _770;
                _874 = _771;
                _875 = _772;
                _876 = _773;
            }
            float4 _959;
            float4 _960;
            float4 _961;
            float _962;
            if (_793 > 0.0f)
            {
                float3 _885 = ((_572 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _888 = _19_m106.xyz * 0.5f;
                float3 _890 = clamp(_885 - floor(_885), _888, 1.0f.xxx - _888);
                float4 _894 = _46.SampleLevel(_26, _890, 0.0f);
                float _896 = _793 * (1.0f - _667);
                float _900 = _19_m106.y * 0.5f;
                float _905 = _890.x;
                float _906 = clamp(_890.y, _900, 1.0f - _900) * 0.3333333432674407958984375f;
                float _907 = _890.z;
                float4 _910 = _47.SampleLevel(_25, float3(_905, _906, _907), 0.0f);
                float _926 = _894.x;
                float _937 = _894.y;
                float _948 = _894.z;
                _959 = _874 + (float4(((_47.SampleLevel(_25, float3(_905, _906 + 0.666666686534881591796875f, _907), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _948, _948) * _896);
                _960 = _875 + (float4(((_47.SampleLevel(_25, float3(_905, _906 + 0.3333333432674407958984375f, _907), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _937, _937) * _896);
                _961 = _876 + (float4(((_910.xyz * 4.0f) - 2.0f.xxx) * _926, _926) * _896);
                _962 = _873 + (_910.w * _896);
            }
            else
            {
                _959 = _874;
                _960 = _875;
                _961 = _876;
                _962 = _873;
            }
            float _965 = clamp((_962 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _969 = _959;
            _970 = _960;
            _971 = _961;
            _972 = _965 - _667;
            _973 = (_965 + _667) * 0.5f;
        }
        else
        {
            _969 = 0.0f.xxxx;
            _970 = 0.0f.xxxx;
            _971 = 0.0f.xxxx;
            _972 = 0.0f;
            _973 = 1.0f;
        }
        float4 _993 = _971 + float4(_19_m108.x * _973, (_19_m108.y * _973) + ((_19_m108.w * _972) * 0.5f), _19_m108.z * _973, (_19_m108.w * _973) + ((_19_m108.y * _972) * 0.375f));
        float4 _1013 = _970 + float4(_19_m109.x * _973, (_19_m109.y * _973) + ((_19_m109.w * _972) * 0.5f), _19_m109.z * _973, (_19_m109.w * _973) + ((_19_m109.y * _972) * 0.375f));
        float4 _1033 = _969 + float4(_19_m110.x * _973, (_19_m110.y * _973) + ((_19_m110.w * _972) * 0.5f), _19_m110.z * _973, (_19_m110.w * _973) + ((_19_m110.y * _972) * 0.375f));
        float4 _1037 = float4(_599, 1.0f);
        float3 _1043 = max(float3(dot(_993, _1037), dot(_1013, _1037), dot(_1033, _1037)), 0.0f.xxx) * _635;
        float3 _1051 = ((_993.xyz * 0.2125999927520751953125f) + (_1013.xyz * 0.715200006961822509765625f)) + (_1033.xyz * 0.072200000286102294921875f);
        float3 _1055 = _1051 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1051, _1051)));
        float _1057 = abs(_1055.y);
        float3 _1058 = _1055;
        _1058.y = _1057;
        float4 _1059 = float4(_1058.x, _1058.y, _1058.z, 0.0f.xxxx.w);
        _1059.w = 1.0f;
        float4 _1063 = float4(_1055.x, _1057, _1055.z, 1.0f);
        float3 _1068 = max(float3(dot(_993, _1063), dot(_1013, _1063), dot(_1033, _1063)), 0.0f.xxx);
        float _1076 = _1043.z;
        float _1077 = _1043.y;
        float4 _1082 = lerp(float4(_1076, _1077, -1.0f, 0.666666686534881591796875f), float4(_1077, _1076, 0.0f, -0.3333333432674407958984375f), step(_1076, _1077).xxxx);
        float _1083 = _1043.x;
        float _1084 = _1082.x;
        float4 _1092 = lerp(float4(_1084, _1082.yw, _1083), float4(_1083, _1082.yz, _1084), step(_1084, _1083).xxxx);
        float _1093 = _1092.x;
        float _1094 = _1092.w;
        float _1095 = _1092.y;
        float _1097 = _1093 - min(_1094, _1095);
        float _1107 = frac(abs(_1092.z + ((_1094 - _1095) / ((6.0f * _1097) + 9.9999997473787516355514526367188e-05f))));
        float _1114 = min(_1097 / (_1093 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1107 - 0.5f))) * clamp(_1093, 0.0f, 1.0f));
        float _1116 = 2.0f / (2.0f - _1114);
        _1129 = _1059;
        _1130 = _1043;
        _1131 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1107, _1114, _1116).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1114.xxx) * _1116;
        _1132 = max(max(max(_1068.x, _1068.y), _1068.z), 0.0f) * _635;
    }
    else
    {
        _1129 = 0.0f.xxxx;
        _1130 = 1.0f.xxx;
        _1131 = _19_m81.xyz;
        _1132 = _635;
    }
    float _1254;
    float _1255;
    float3 _1256;
    float3 _1257;
    float _1258;
    float3 _1259;
    [branch]
    if (_627 > 0.00999999977648258209228515625f)
    {
        float2 _1153 = _3 * _19_m89.z;
        float4 _1162 = _50.SampleBias(_26, _1153, _19_m16);
        float _1173 = smoothstep(2.0f - _627, 2.349999904632568359375f - _627, (((_457 ? _10.z : _10.y) * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1162.z) * ((_495 * _495) * float(gl_FrontFacing));
        float3 _1175 = _1173.xxx;
        float2 _1181 = (_1162.xy * 2.0f) - 1.0f.xx;
        float3 _1182 = float3(_1181.x, _1181.y, _412.z);
        float2 _1183 = _1181.xy;
        _1182.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1183, _1183), 0.0f, 1.0f)));
        float2 _1191 = _1182.xy * 2.0f;
        float3 _1193 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1191.x, _1191.y, _1182.z), _1175);
        float3 _1197 = _1193 * rsqrt(max(6.103515625e-05f, dot(_1193, _1193)));
        float _1198 = _599.y;
        float _1201 = step(0.00999999977648258209228515625f, 1.0f - (_1198 * _1198));
        float _1205 = lerp(_599.z, _1198, _1201);
        float3 _1212 = (float3(0.0f, _1201, 1.0f - _1201) - (_599 * _1205)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1205 * _1205)));
        float4 _1230 = _51.SampleLevel(_24, _1153 * 4.0f, 0.0f);
        float2 _1233 = (_1230.xz * 2.0f) - 1.0f.xx;
        float _1244 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1233.x, _1230.y, _1233.y), (floor(_448 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1245 = _1244 * _1244;
        float _1248 = _1245 * ((_1245 * 2.0f) * _1173);
        float3 _1249 = 1.0f.xxx * _1248;
        _1254 = _1248;
        _1255 = lerp(lerp(_497, 0.89999997615814208984375f, clamp(_1173 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1248);
        _1256 = lerp(_510 * 1.0f, 0.3079999983310699462890625f.xxx, _1175) + (_1249 * 0.5f);
        _1257 = lerp(_488 * 1.0f, 0.87999999523162841796875f.xxx, _1175) + _1249;
        _1258 = lerp(_493, 0.0f, _1173);
        _1259 = ((cross(_1212, _599) * _1197.x) + (_1212 * _1197.y)) + (_599 * _1197.z);
    }
    else
    {
        _1254 = 0.0f;
        _1255 = _497;
        _1256 = _510;
        _1257 = _488;
        _1258 = _493;
        _1259 = _599;
    }
    bool2 _1263 = (_49_m72 != 0.0f).xx;
    float _1316 = (_49_m73 * (_49_m74 - dot(_572, _49_m67.xyz))) + ((_60.SampleBias(_61, (lerp(float2(_1263.x ? _7.x : _3.x, _1263.y ? _7.y : _3.y), mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _572 - mul(_22_m0[_12]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _49_m68.xx) * _49_m64.xy) + _49_m64.zw, _19_m16).x - ((max(_49_m70, _22_m0[_12]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _49_m75);
    if ((clamp(_1316 * _49_m69, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f)
    {
        discard;
    }
    float _1345 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _1347 = abs(_1345);
    if (min(_22_m0[_12]._m1.x - ((_22_m0[_12]._m1.x >= 0.0f) ? _1347 : (-_1347)), (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) - _1345) < 0.0f)
    {
        discard;
    }
    float3 _1362 = _49_m55.xyz * _49_m46;
    float4 _1363 = float4(_1362.x, _1362.y, _1362.z, _49_m55.w);
    _1363.w = _49_m55.w * _49_m47;
    float2 _1408;
    if (_49_m45 > 1.5f)
    {
        float2 _1382 = ((float2(_602) / _19_m5.xy) * 2.0f) - 1.0f.xx;
        _1408 = float2(_1382.x, (_1382.y / _19_m5.x) * _19_m5.y) * lerp(1.0f, max(0.0f, (-dot(_17_m0[2u], float4(_22_m0[_12]._m0[0].w, _22_m0[_12]._m0[1].w, _22_m0[_12]._m0[2].w, 1.0f))) - _19_m3.y), _49_m51);
    }
    else
    {
        _1408 = lerp(_3, _7, _49_m45.xx);
    }
    float4 _1423 = _59.SampleBias(_26, ((_1408 + (_49_m52.zw * _19_m75.w)) * _49_m57.xy) + _49_m57.zw, _19_m16);
    float _1426 = _1423.x;
    float4 _1442 = _58.SampleBias(_26, (((_1408 + (_49_m50 * _1426).xx) + (_49_m52.xy * _19_m75.w)) * _49_m56.xy) + _49_m56.zw, _19_m16);
    float4 _1449 = _1363 * lerp(_1442, float4(1.0f, 1.0f, 1.0f, _1442.x), _49_m44.xxxx);
    float _1452 = _1449.w;
    float _1465 = _1426 - ((_49_m49 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _1467 = clamp(-_1465, 0.0f, 1.0f);
    bool3 _1481 = (_49_m48 < 0.5f).xxx;
    float _1495 = pow(clamp(dot(_448, float3(_1481.x ? _587.x : _1259.x, _1481.y ? _587.y : _1259.y, _1481.z ? _587.z : _1259.z).xyz) + _49_m40, 0.0f, 1.0f), _49_m42);
    float _1497 = lerp(1.0f - _1495, _1495, _49_m43);
    float _1513 = 0.959999978542327880859375f - (_1258 * 0.959999978542327880859375f);
    float3 _1514 = _1257 * _1513;
    float3 _1517 = lerp(0.039999999105930328369140625f.xxx * _492.y, _1257, _1258.xxx);
    float3 _1518 = _1256 * _1513;
    float _1519 = _1255 * _1255;
    float _1520 = max(_1519, 0.0078125f);
    float2 _1533 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _1533.y = -_1533.y;
    float2 _1546 = ((sqrt(sqrt(abs(_1533 * 0.5f))) * float2(int2(sign(_1533)))) * 0.5f) + 0.5f.xx;
    float4 _1549 = float4(_1546.x, _1546.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1549.z = 1.0f;
    _1549.w = (_1254 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1562 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1566 = normalize(float3(_1562.x, 6.103515625e-05f, _1562.z));
    float3 _1576 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _1580 = _1576 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _1584 = int(_602.x);
    int _1585 = int(_602.y);
    float _1596 = lerp(lerp(1.0f, _40.Load(int3(int3(_1584, _1585, 0).xy, 0)).x, _38_m6.x), 1.0f, _19_m80.z);
    float _1597 = dot(_1259, _1562);
    float3 _1604 = _1518 * _19_m79.z;
    float3 _1605 = _1604 * 0.64999997615814208984375f;
    float _1609 = dot(_1514, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1622 = clamp(-dot(_1566.xz, normalize(_612.xz)), 0.0f, 1.0f);
    float _1626 = 1.0f - _19_m91.x;
    float _1634 = smoothstep(0.25f, 1.0f, clamp(lerp(_1597, ((-_1597) * ((_1597 * 0.5f) - 1.0f)) + 0.5f, (_1622 * smoothstep(0.25f, 0.75f, 1.0f - abs(_612.y))) * _1626) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f));
    float _1641 = max(max(_1634, _1634), _1634) - min(min(_1634, _1634), _1634);
    float _1643 = smoothstep(0.25f, 1.0f, dot(_1259, _612));
    float _1650 = min(min(1.0f, _495), _1634);
    float _1651 = _1643 * _495;
    float3 _1655 = ((clamp(dot(_599, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1131, 1.0f.xxx, (_19_m80.y * _1650).xxx);
    float3 _1657 = _1650.xxx;
    float3 _1680 = _1596.xxx;
    float3 _1681 = lerp((_1655 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1132), 1.5f), clamp(_1132, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1580, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1580, _1657) + ((_1655 * clamp(_1132, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1576 * _19_m91.y)))) * _19_m79.y, _1680);
    float3 _1682 = lerp(lerp(lerp(dot(_1605, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1605, 1.2000000476837158203125f.xxx), _1604, clamp((_495 * _1643) + _1634, 0.0f, 1.0f).xxx), _1514, _1657);
    float3 _1688 = _1682 * ((1.0f - _1641).xxx + (_1634.xxxx.xyz * _1641));
    float3 _1697 = lerp(lerp(_1604, lerp(_1609.xxx, _1514, 1.2000000476837158203125f.xxx), _1651.xxx), _1688 * clamp(dot(_1682, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1688, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1680);
    float4 _1701 = float4(_1697, _1596);
    float _1703 = lerp(_1651, _1650, _1596);
    float _1706 = lerp(_19_m79.z, 1.0f, _1703);
    float3 _1714 = float3(_612.x, lerp(0.5f, _1562.y, _1596), _612.z);
    float _1727 = clamp(dot(_599, _448), 0.0f, 1.0f);
    float _1728 = dot(_599, normalize(((_1562 * _1596) + ((_1714 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1714, _1714)))) * 2.0f)) + (_448 * (2.0f + _1596))));
    float _1729 = _1520 * _1520;
    float _1733 = (((_1728 * _1729) - _1728) * _1728) + 1.0f;
    float _1734 = _1733 * _1733;
    float _1738 = 2.0f * _1727;
    float _1740 = (1.0f + _1727) - _1727;
    float _1757 = (1.0f - _49_m6) + (_501 * _49_m6);
    float3 _1759 = ((_1681 * _1697) * _1757) + (((_1517 * clamp((((_1729 != _1734) ? (_1729 / _1734) : 1.0f) * (0.5f / ((_1738 + (_1520 * _1740)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1681 * (((_1703 * 0.5f) + 0.5f) * _1706)) * 1.0f)) * _19_m92.w);
    float _1760 = dot(_1759, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1763 = clamp(_1760 - 0.5f, 0.0f, 0.5f);
    float3 _1799 = normalize(cross(_612, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1805 = dot(_448, _1259);
    float _1807 = 1.0f - abs(_1805);
    float _1829 = dot(_1566, _1259);
    float _1841 = 1.0f - _1596;
    float _1868 = _1727 * _1727;
    float _1869 = _1868 * _1727;
    float2 _1870 = float2(1.0f, _1727);
    float2 _1873 = float2(1.0f, _1519);
    float3 _1876 = float3(1.0f, _1519, (_1519 * _1519) * _1519);
    float _1881 = dot(mul(_1870, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1873) / dot(mul(float3(1.0f, _1868, _1869), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1876);
    float _1886 = dot(mul(_1870, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1873) / dot(mul(float3(1.0f, _1727, _1869), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1876);
    float3 _1889 = (_1517 * _1881) + _1886.xxx;
    float _1890 = _1881 + _1886;
    float3 _1896 = -_448;
    float3 _1914 = (((((_542.xyz * _49_m25.xyz) * _49_m7) * ((_49_m60 > 0.5f) ? lerp(1.0f, lerp(_49_m62, _49_m63, (sin(_49_m61 * _19_m75.w) * 0.5f) + 0.5f), _542.w) : 1.0f)) + (_49_m66.xyz * clamp((_49_m71 - _1316) * _49_m69, 0.0f, 1.0f))) + (lerp(lerp((((_1423 * clamp((_1452 + _1423.w) * _49_m53.w, 0.0f, 1.0f)) * _49_m53) + _1449).xyz, (_49_m54.xyz * _1467) * _49_m46, _1467.xxx).xyz, _49_m54.xyz, (_49_m54.w * _1497).xxx).xyz * (clamp(_1452 * clamp(_1465, 0.0f, 1.0f), 0.0f, 1.0f) * ((1.0f - _49_m41) + (_1497 * _49_m41)))).xyz) * _1757;
    float3 _1915 = lerp(_1760.xxx, _1759, ((_1763 * _1763) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1807)) * _19_m87.w) * min(min(clamp(dot(_579, _1799) + 1.0f, 0.0f, 1.0f), _495), 1.0f)) * (lerp(0.25f.xxx, _1514, _19_m88.z.xxx) * clamp(dot(_1799, _1259), 0.0f, 1.0f))) + ((((((lerp(_1130 * (1.0f / max(max(max(_1130.x, _1130.y), _1130.z) * 0.5f, 1.0f)), _1580, _1680) * clamp(lerp(dot(_1129.xyz, _1259) * _1129.w, ((-_1829) * ((_1829 * 0.5f) - 1.0f)) + 0.5f, _1596), 0.0f, 1.0f)) * ((_1841 + (_1622 * _1596)) * _1626)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _1807)) * min(_495, 1.0f)) * (_1841 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _1609) * _1596))) * max(0.1500000059604644775390625f.xxx, _1514)));
    float2 _1918 = float2(_602);
    float2 _1920 = floor(_1918 * 0.03125f);
    int _1928 = int((_1920.x + (_1920.y * _34_m5)) * 8.0f);
    float _1935 = floor(_429 - (_19_m3.y * _34_m11));
    float _1939 = clamp(_1935, 0.0f, _34_m7 - 1.0f);
    int _1941 = int(_1939 * 8.0f);
    float3 _1943;
    _1943 = (_1915 + _1914) + (((_57.SampleLevel(_25, reflect(_1896, _599), (1.2000000476837158203125f * log2(max(_1255, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_1889 + ((_1517 * ((1.0f - _1890) / _1890)) * _1889)) * 1.0f)) * ((clamp(_1132, 0.5f, 1.5f) * _19_m79.w) * _1706)) * _1131);
    float3 _1944;
    [loop]
    for (int _1946 = 0; _1946 <= 7; _1943 = _1944, _1946++)
    {
        uint _1964 = (_1935 <= _1939) ? (_30.Load(uint(_1928 + _1946) * 4 + 0) & _30.Load(uint((_19_m21.y + _1941) + _1946) * 4 + 0)) : 0u;
        uint _1965 = uint(_1946);
        _1944 = _1943;
        uint _1970;
        float3 _1967;
        [loop]
        for (uint _1969 = _1964; _1969 != 0u; _1944 = _1967, _1969 = _1970)
        {
            uint _1974 = firstbitlow(_1969);
            _1970 = _1969 ^ (1u << (_1974 & 31u));
            int _1980 = int((32u * _1965) + _1974) * 8;
            int _1983 = _1980 + 1;
            int _1986 = _1980 + 2;
            int _1989 = _1980 + 3;
            int _1992 = _1980 + 4;
            int _1995 = _1980 + 5;
            int _1998 = _1980 + 6;
            int _2001 = _1980 + 7;
            uint _2005 = uint(_36_m6[_1995].w);
            float _2080;
            if ((_2005 & 1u) == 1u)
            {
                uint _2011 = asuint(_36_m6[_1995].x);
                uint _2018 = asuint(_36_m6[_1995].y);
                uint _2025 = asuint(_36_m6[_1995].z);
                uint _2032 = asuint(_36_m6[_1998].x);
                uint _2039 = asuint(_36_m6[_1998].y);
                uint _2046 = asuint(_36_m6[_1998].z);
                float3 _2065 = abs(mul(float4(_572 - _36_m6[_1983].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2011).x, spvUnpackHalf2x16(_2025).x, spvUnpackHalf2x16(_2039).x, 0.0f), float4(spvUnpackHalf2x16(_2011 >> 16u).x, spvUnpackHalf2x16(_2025 >> 16u).x, spvUnpackHalf2x16(_2039 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2018).x, spvUnpackHalf2x16(_2032).x, spvUnpackHalf2x16(_2046).x, 0.0f), float4(spvUnpackHalf2x16(_2018 >> 16u).x, spvUnpackHalf2x16(_2032 >> 16u).x, spvUnpackHalf2x16(_2046 >> 16u).x, 0.0f))).xyz);
                float _2072 = _36_m6[_2001].x * 0.5f;
                float _2078 = 1.0f - clamp((max(max(_2065.x, _2065.y), _2065.z) - (_2072 + 0.5f)) / (0.5f - _2072), 0.0f, 1.0f);
                _2080 = _2078 * _2078;
            }
            else
            {
                _2080 = 1.0f;
            }
            if (false || (_2080 < 0.001000000047497451305389404296875f))
            {
                _1967 = _1944;
                continue;
            }
            float3 _2774;
            if (_36_m6[_1980].w < 1.5f)
            {
                float3 _2773;
                do
                {
                    uint _2093 = asuint(_36_m6[_1989].w);
                    if ((_2093 == 16u) || ((_36_m6[_1989].z + _19_m91.z) < 0.5f))
                    {
                        _2773 = _1944;
                        break;
                    }
                    bool _2105 = (uint(_36_m6[_1980].w) & 1u) == 0u;
                    bool _2109 = (!_2105) && (_36_m6[_1986].z > 0.0f);
                    bool _2110 = _2093 == 4u;
                    float _2111 = float(_2105);
                    float _2119 = (0.5f + (0.5f * _36_m6[_1986].y)) - abs(_36_m6[_1986].x);
                    float _2120 = _36_m6[_1986].y - _2119;
                    float _2127 = abs(max((1.0f - abs(_2119)) - abs(_2120), 0.00048828125f));
                    float3 _2131 = normalize(float3(_2119, _2120, (_36_m6[_1986].x >= 0.0f) ? _2127 : (-_2127)));
                    float _2137 = lerp(_36_m6[_1998].w, max(2.0f * _36_m6[_1992].y, 0.100000001490116119384765625f), float(_2110));
                    float3 _2142 = _36_m6[_1983].xyz - _572;
                    float3 _2143 = -_2131;
                    float3 _2148 = lerp(_2142, _2143 * dot(_2142, _2143), (float(_2110 && (_36_m6[_1992].z > 0.5f)) * _2111).xxx);
                    float _2149 = dot(_2148, _2148);
                    float _2150 = rsqrt(_2149);
                    float3 _2151 = _2148 * _2150;
                    float3 _2184;
                    float _2185;
                    if (_2109)
                    {
                        float3 _2155 = (_2131 * _36_m6[_1986].z) * 0.5f;
                        float3 _2156 = _2148 - _2155;
                        float3 _2157 = _2148 + _2155;
                        float _2158 = length(_2156);
                        float _2159 = length(_2157);
                        float3 _2168 = normalize(cross(cross(_2131, _2151), _2131));
                        _2184 = _2168;
                        _2185 = ((1.0f / ((((_2158 * _2159) + dot(_2156, _2157)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2168, _2156) / _2158) + (dot(_2168, _2157) / _2159)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_1986].z * _2150, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2184 = _2151;
                        _2185 = 1.0f;
                    }
                    float _2207;
                    if (_2137 < 0.0f)
                    {
                        float _2201 = _2149 * (_36_m6[_1983].w * _36_m6[_1983].w);
                        float _2204 = clamp(1.0f - (_2201 * _2201), 0.0f, 1.0f);
                        _2207 = lerp(1.0f / (_2149 + 1.0f), _2185, float(_2109)) * (_2204 * _2204);
                    }
                    else
                    {
                        float3 _2190 = _2148 * _36_m6[_1983].w;
                        _2207 = _2185 * pow(1.0f - clamp(dot(_2190, _2190), 0.0f, 1.0f), _2137);
                    }
                    float _2212 = clamp((dot(_2184, _2143) - _36_m6[_1986].z) * _36_m6[_1986].w, 0.0f, 1.0f);
                    float _2215 = _2207 * lerp(1.0f, _2212 * _2212, _2111);
                    int _2217 = int(_36_m6[_2001].w);
                    float _2322;
                    if ((!_2109) && (_2217 >= 0))
                    {
                        uint _2223 = uint(_2217);
                        float2 _2315;
                        [branch]
                        if (_2111 != 0.0f)
                        {
                            float4 _2305 = mul(_64_m1[_2223], float4(_572, 1.0f));
                            _2315 = _64_m0[_2223].xy + (clamp(_2305.xy / _2305.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2223].zw);
                        }
                        else
                        {
                            float3 _2238 = mul(float4(-_2148, 0.0f), _64_m1[_2223]).xyz;
                            float3 _419 = _2238;
                            float3 _418 = _2238;
                            float3 _417 = abs(_2238);
                            uint _2247 = uint(int(_417.y > _417.x));
                            uint _2253 = (_417.z > _417[_2247]) ? 2u : _2247;
                            uint _2259 = (_2253 * 2u) + uint(_418[_2253] < 0.0f);
                            float _2263 = abs(_419[_2259 / 2u]);
                            float _2283 = 0.5f - (0.000244140625f / _64_m0[_2223].w);
                            _2315 = _64_m0[_2223].xy + (clamp(float2((float(_2259) + ((((_419[uint(_366[_2259].x)] * _367[_2259].x) / _2263) * _2283) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_419[uint(_366[_2259].y)] * _367[_2259].y) / _2263) * _2283)), 0.0f.xx, 1.0f.xx) * _64_m0[_2223].zw);
                        }
                        _2322 = _2215 * _62.SampleLevel(_25, _2315, 0.0f).x;
                    }
                    else
                    {
                        _2322 = _2215;
                    }
                    float _2323 = _2322 * _2080;
                    float3 _2772;
                    do
                    {
                        float3 _2771;
                        [branch]
                        if (_2323 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2110)
                            {
                                _2772 = lerp(_1944, _36_m6[_1980].xyz, (_2323 * (_36_m6[_1992].x * ((1.0f - _36_m6[_1992].w) + (smoothstep(-0.5f, 0.5f, dot(_600, _2184)) * _36_m6[_1992].w)))).xxx);
                                break;
                            }
                            float _2343 = dot(_1259, _2184);
                            float _2344 = clamp(_2343, 0.0f, 1.0f);
                            float _2647;
                            if (_2093 != 0u)
                            {
                                bool _2350 = _2105 || ((_2005 & 2u) != 0u);
                                int _2399;
                                if (_2350)
                                {
                                    _2399 = int(_36_m6[_1989].x);
                                }
                                else
                                {
                                    uint _2354 = asuint(_36_m6[_1986].w);
                                    uint _2356 = asuint(_36_m6[_1989].x);
                                    float3 _2357 = _572 - _36_m6[_1983].xyz;
                                    float3 _2358 = abs(_2357);
                                    float _2359 = _2358.x;
                                    float _2360 = _2358.y;
                                    float _2362 = _2358.z;
                                    int _2394;
                                    if ((_2359 > _2360) && (_2359 > _2362))
                                    {
                                        _2394 = int((_2357.x > 0.0f) ? (_2354 >> 24u) : ((_2354 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2386;
                                        if (_2360 > _2362)
                                        {
                                            _2386 = int((_2357.y > 0.0f) ? ((_2354 >> 8u) & 255u) : (_2354 & 255u));
                                        }
                                        else
                                        {
                                            _2386 = int((_2357.z > 0.0f) ? ((_2356 >> 8u) & 255u) : (_2356 & 255u));
                                        }
                                        _2394 = _2386;
                                    }
                                    _2399 = (_2394 < 80) ? _2394 : (-1);
                                }
                                bool _2400 = _2399 >= 0;
                                float _2646;
                                if (_2400)
                                {
                                    float3 _2407 = _572 - _36_m6[_1983].xyz;
                                    float4 _2427 = mul(_38_m10[_2399], float4((_572 - ((_2407 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2407, _2407)))) * _38_m11[_2399].x)) + (_600 * (_38_m11[_2399].y * 5.0f)), 1.0f));
                                    float _2428 = _2427.w;
                                    float3 _2431 = _2427.xyz / _2428.xxx;
                                    float2 _2432 = _2431.xy;
                                    float3 _2440 = _2431.xyz;
                                    bool3 _2441 = bool3(_2440.x <= 0.0f.xxx.x, _2440.y <= 0.0f.xxx.y, _2440.z <= 0.0f.xxx.z);
                                    bool3 _2442 = bool3(_2440.x >= 1.0f.xxx.x, _2440.y >= 1.0f.xxx.y, _2440.z >= 1.0f.xxx.z);
                                    float _2445 = _2431.z;
                                    float2 _2456 = ((_2432 * (_38_m12[_2399].zw - _38_m12[_2399].xy)) + _38_m12[_2399].xy).xy * _38_m13.zw;
                                    float2 _2458 = floor(_2456 + 0.5f.xx);
                                    float2 _2459 = _2456 - _2458;
                                    float _2461 = _2459.x + 0.5f;
                                    float _2462 = _2461 * _2461;
                                    float _2465 = 1.0f - _2459.x;
                                    float _2466 = min(_2459.x, 0.0f);
                                    float _2469 = _2459.x + 1.0f;
                                    float _2470 = max(_2459.x, 0.0f);
                                    float _2482 = _2459.y + 0.5f;
                                    float _2483 = _2482 * _2482;
                                    float _2486 = 1.0f - _2459.y;
                                    float _2487 = min(_2459.y, 0.0f);
                                    float _2490 = _2459.y + 1.0f;
                                    float _2491 = max(_2459.y, 0.0f);
                                    float3 _2503 = float3(0.1599999964237213134765625f * _2465, 0.1599999964237213134765625f * ((_2469 - (_2470 * _2470)) + 1.0f), _2462 * 0.07999999821186065673828125f);
                                    float3 _2504 = float3(0.1599999964237213134765625f * ((_2462 * 0.5f) - _2459.x), 0.1599999964237213134765625f * ((_2465 - (_2466 * _2466)) + 1.0f), 0.1599999964237213134765625f * _2469) + _2503;
                                    float3 _2506 = float3(0.1599999964237213134765625f * _2486, 0.1599999964237213134765625f * ((_2490 - (_2491 * _2491)) + 1.0f), _2483 * 0.07999999821186065673828125f);
                                    float3 _2507 = float3(0.1599999964237213134765625f * ((_2483 * 0.5f) - _2459.y), 0.1599999964237213134765625f * ((_2486 - (_2487 * _2487)) + 1.0f), 0.1599999964237213134765625f * _2490) + _2506;
                                    float3 _2513 = ((_2503 / _2504) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _2515 = ((_2506 / _2507) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _2517 = _2458 * _38_m13.xy;
                                    float _2518 = _2513.x;
                                    float _2519 = _2515.x;
                                    float _2522 = _2513.y;
                                    float _2525 = _2513.z;
                                    float _2528 = _2515.y;
                                    float _2535 = _2515.z;
                                    float _2542 = _2504.x;
                                    float _2543 = _2507.x;
                                    float _2545 = _2504.y;
                                    float _2547 = _2504.z;
                                    float _2549 = _2507.y;
                                    float _2553 = _2507.z;
                                    float _2611 = (((((((_2542 * _2543) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2518, _2519), _411).xy, _2445)) + ((_2545 * _2543) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2522, _2519), _411).xy, _2445))) + ((_2547 * _2543) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2525, _2519), _411).xy, _2445))) + ((_2542 * _2549) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2518, _2528), _411).xy, _2445))) + ((_2545 * _2549) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2522, _2528), _411).xy, _2445))) + ((_2547 * _2549) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2525, _2528), _411).xy, _2445))) + ((_2542 * _2553) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2518, _2535), _411).xy, _2445));
                                    float2 _2632 = min(_2432, 1.0f.xx - _2432);
                                    _2646 = _2400 ? lerp(1.0f, (any(bool3(_2441.x || _2442.x, _2441.y || _2442.y, _2441.z || _2442.z)) || ((asuint(_2445) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2611 + ((_2545 * _2553) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2522, _2535), _411).xy, _2445))) + ((_2547 * _2553) * _39.SampleCmpLevelZero(_27, float3(_2517 + float2(_2525, _2535), _411).xy, _2445))), _2350 ? min(_38_m11[_2399].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2399].z - _2428) * 0.25f, min(_2632.x, _2632.y)))) : _38_m11[_2399].w) : 1.0f;
                                }
                                else
                                {
                                    _2646 = clamp(dot(_579, _2184) + 1.0f, 0.0f, 1.0f);
                                }
                                _2647 = _2646;
                            }
                            else
                            {
                                _2647 = 1.0f;
                            }
                            float _2727;
                            float3 _2728;
                            float _2729;
                            float3 _2730;
                            float3 _2731;
                            float _2732;
                            float _2733;
                            [branch]
                            if (_2093 == 0u)
                            {
                                float3 _2707 = _36_m6[_1980].xyz * _2323;
                                float3 _2720 = _1701.xyz;
                                _2727 = _2323;
                                _2728 = (_36_m6[_1980].xyz * ((1.0f - _36_m6[_1992].y) + ((1.0f / max(1.0f, max(max(_2707.x, _2707.y), _2707.z) * lerp(0.75f, 0.5f, _1841))) * _36_m6[_1992].y))) * lerp(0.25f * _36_m6[_1992].x, 1.0f, clamp(_2343 + 0.5f, 0.0f, 1.0f));
                                _2729 = _2344;
                                _2730 = _2720;
                                _2731 = _2720;
                                _2732 = 1.0f;
                                _2733 = 0.0f;
                            }
                            else
                            {
                                float _2700;
                                float _2701;
                                float3 _2702;
                                float3 _2703;
                                float _2704;
                                float _2705;
                                if (_2093 == 3u)
                                {
                                    _2700 = _2323 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_1992].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_1992].x), _1807) * _2647);
                                    _2701 = clamp(dot(_1259, -normalize(cross(_612, cross(_612, _2184)))), 0.0f, 1.0f);
                                    _2702 = lerp(0.5f.xxx, _1514, _36_m6[_1992].y.xxx);
                                    _2703 = 0.0f.xxx;
                                    _2704 = 1.0f;
                                    _2705 = 0.0f;
                                }
                                else
                                {
                                    bool _2656 = _2093 == 1u;
                                    float _2680;
                                    float3 _2681;
                                    float _2682;
                                    float _2683;
                                    if (_2656)
                                    {
                                        _2680 = clamp(clamp(_2343 + _36_m6[_1992].x, -1.0f, 1.0f), 0.0f, 1.0f) * _2647;
                                        _2681 = _1518 * _36_m6[_1992].y;
                                        _2682 = 1.0f;
                                        _2683 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2660 = _2093 == 2u;
                                        float _2672;
                                        if (_2660)
                                        {
                                            _2672 = smoothstep(_36_m6[_1992].x + 0.0500000007450580596923828125f, _36_m6[_1992].x - 0.0500000007450580596923828125f, _1255) * ((1.0f - _36_m6[_1992].z) + (step(0.5f, _1258) * _36_m6[_1992].z));
                                        }
                                        else
                                        {
                                            _2672 = 1.0f;
                                        }
                                        _2680 = _2344;
                                        _2681 = 0.0f.xxx;
                                        _2682 = _2672;
                                        _2683 = _2660 ? _36_m6[_1992].y : 0.0f;
                                    }
                                    bool3 _2684 = _2656.xxx;
                                    _2700 = _2323;
                                    _2701 = _2680;
                                    _2702 = float3(_2684.x ? _1514.x : 0.0f.xxx.x, _2684.y ? _1514.y : 0.0f.xxx.y, _2684.z ? _1514.z : 0.0f.xxx.z);
                                    _2703 = _2681;
                                    _2704 = _2682;
                                    _2705 = _2683;
                                }
                                _2727 = _2700;
                                _2728 = _36_m6[_1980].xyz;
                                _2729 = _2701;
                                _2730 = _2702;
                                _2731 = _2703;
                                _2732 = _2704;
                                _2733 = _2705;
                            }
                            float3 _2761;
                            [branch]
                            if (_2093 != 3u)
                            {
                                float _2738 = lerp(_1520, 0.00999999977648258209228515625f, _2733);
                                float _2741 = dot(_599, normalize(_2184 + _448));
                                float _2742 = _2738 * _2738;
                                float _2746 = (((_2741 * _2742) - _2741) * _2741) + 1.0f;
                                float _2747 = _2746 * _2746;
                                _2761 = ((_1517 * clamp((((_2742 != _2747) ? (_2742 / _2747) : 1.0f) * (0.5f / ((_1738 + (_2738 * _1740)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2732) * _36_m6[_2001].z;
                            }
                            else
                            {
                                _2761 = 0.0f.xxx;
                            }
                            float3 _2764 = _2728 * _2727;
                            _2771 = _1944 + (((_2764 * lerp(_2731, _2730, _2729.xxx)) * _1757) + ((_2764 * _2761) * _2729));
                        }
                        else
                        {
                            _2771 = _1944;
                        }
                        _2772 = _2771;
                        break;
                    } while(false);
                    _2773 = _2772;
                    break;
                } while(false);
                _2774 = _2773;
            }
            else
            {
                _2774 = _1944;
            }
            _1967 = _2774;
        }
    }
    float3 _2814;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _2814 = lerp(lerp(0.5f.xxx, lerp(dot(_1943, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1943, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_1805, 0.0f, 1.0f))) * _49_m17);
    }
    else
    {
        _2814 = _1943;
    }
    float4 _2821 = float4(_2814 * _19_m20.y, _501);
    _2821.w = (_49_m8 == 1.0f) ? _501 : 1.0f;
    float4 _3206;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _2846 = _572.y * _19_m46.w;
        float _2851 = max(0.00999999977648258209228515625f, _2846 + _19_m47.w);
        float3 _2865 = exp(_19_m45.xyz * ((-max(0.0f, (_449 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2851)) / _2851) * exp(_2846 + _19_m48.w))));
        float _2868 = dot(_1896, _19_m44.xyz);
        float _2874 = _19_m45.w * _19_m45.w;
        float _2878 = (1.0f + _2874) - ((2.0f * _19_m45.w) * _2868);
        float3 _3198;
        float _3199;
        if (_19_m55.z > 0.0f)
        {
            uint3 _3029 = (uint3(int3(_1584, _1585, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3030 = _3029.y;
            uint _3031 = _3029.z;
            uint _3034 = _3029.x + (_3030 * _3031);
            uint _3036 = _3030 + (_3031 * _3034);
            uint _3038 = _3031 + (_3034 * _3036);
            uint _3040 = _3034 + (_3036 * _3038);
            float _3062 = dot(_1896, -_17_m0[2].xyz);
            float3 _3069 = _572 - _17_m11.xyz;
            float _3071 = (_19_m55.w * ((_3062 > 5.9604644775390625e-08f) ? (1.0f / _3062) : 0.0f)) * (1.0f / _449);
            float _3072 = _3069.y;
            float _3073 = _3071 * _3072;
            float _3075 = _17_m11.y + _3073;
            float _3076 = _3072 - _3073;
            float _3078 = (1.0f - _3071) * _449;
            float _3092 = max(-127.0f, _19_m49.z * _3076);
            float _3116 = max(-127.0f, _19_m52.x * _3076);
            float _3127 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3075 - _19_m49.x)))) * ((abs(_3092) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3092)) / _3092) : (0.693147182464599609375f - (0.2402265071868896484375f * _3092)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3075 - _19_m52.z)))) * ((abs(_3116) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3116)) / _3116) : (0.693147182464599609375f - (0.2402265071868896484375f * _3116))));
            float _3149 = clamp((_449 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3152 = clamp((max(clamp(exp2(-(_3127 * _3078)), 0.0f, 1.0f), _19_m51.w) + clamp((_449 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3149, 0.0f, 1.0f);
            float4 _3192 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_25, float3((_1918 + ((((float3(uint3(_3040, _3036 + (_3038 * _3040), _415) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_429 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_429 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3198 = _3192.xyz + (((_19_m51.xyz * (1.0f - _3152)) + (((_19_m54.xyz * pow(clamp(dot(_448, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3127 * max(_3078 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3149))) * _3192.w);
            _3199 = _3192.w * _3152;
        }
        else
        {
            float3 _2905 = _572 - _17_m11.xyz;
            float _2907 = _2905.y;
            float _2921 = max(-127.0f, _19_m49.z * _2907);
            float _2945 = max(-127.0f, _19_m52.x * _2907);
            float _2956 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2921) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2921)) / _2921) : (0.693147182464599609375f - (0.2402265071868896484375f * _2921)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2945) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2945)) / _2945) : (0.693147182464599609375f - (0.2402265071868896484375f * _2945))));
            float _2978 = clamp((_449 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2981 = clamp((max(clamp(exp2(-(_2956 * _449)), 0.0f, 1.0f), _19_m51.w) + clamp((_449 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2978, 0.0f, 1.0f);
            _3198 = (_19_m51.xyz * (1.0f - _2981)) + (((_19_m54.xyz * pow(clamp(dot(_448, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2956 * max(_449 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2978));
            _3199 = _2981;
        }
        float3 _3204 = (_2821.xyz * (_2865 * _3199)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2868 * _2868)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2874) / max((12.56637096405029296875f * _2878) * sqrt(_2878), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2865)) * _3199) + _3198);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3204 = (_3204 * 0.65f) + (_2821.xyz * 0.35f);

        }
        _3206 = float4(_3204.x, _3204.y, _3204.z, _2821.w);
    }
    else
    {
        _3206 = _2821;
    }
    _14 = _3206;
    _15 = _1549;
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
