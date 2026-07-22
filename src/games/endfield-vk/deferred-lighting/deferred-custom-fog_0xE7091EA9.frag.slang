// DX11 0x1D75F314 -> Vulkan 0xE7091EA9
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

static float3 _424;
static float _425 = 0.0f;
static float3 _426 = 0.0f;
static float _428 = 0.0f;
static uint _429 = 0u;

static const int2 _381[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _382[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

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

[[vk::binding(51, 0)]] ByteAddressBuffer _31 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _33 : register(t18);

uint4 _33_Load4(uint byte_offset)
{
    return asuint(_33[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _34_35 : register(b48)
{
    int _35_m0 : packoffset(c0);
    int _35_m1 : packoffset(c0.y);
    int _35_m2 : packoffset(c0.z);
    int _35_m3 : packoffset(c0.w);
    float _35_m4 : packoffset(c1);
    float _35_m5 : packoffset(c1.y);
    float _35_m6 : packoffset(c1.z);
    float _35_m7 : packoffset(c1.w);
    float _35_m8 : packoffset(c2);
    float _35_m9 : packoffset(c2.y);
    float _35_m10 : packoffset(c2.z);
    float _35_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _36_37 : register(b14)
{
    float4 _37_m0 : packoffset(c0);
    float4 _37_m1 : packoffset(c1);
    float4 _37_m2 : packoffset(c2);
    float4 _37_m3 : packoffset(c3);
    float4 _37_m4 : packoffset(c4);
    uint4 _37_m5 : packoffset(c5);
    float4 _37_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _38_39 : register(b15)
{
    column_major float4x4 _39_m0[5] : packoffset(c0);
    float4 _39_m1[4] : packoffset(c20);
    float4 _39_m2[4] : packoffset(c24);
    float4 _39_m3[4] : packoffset(c28);
    float4 _39_m4 : packoffset(c32);
    float4 _39_m5 : packoffset(c33);
    float4 _39_m6 : packoffset(c34);
    float4 _39_m7 : packoffset(c35);
    float4 _39_m8 : packoffset(c36);
    float4 _39_m9[27] : packoffset(c37);
    column_major float4x4 _39_m10[56] : packoffset(c64);
    float4 _39_m11[56] : packoffset(c288);
    float4 _39_m12[56] : packoffset(c344);
    float4 _39_m13 : packoffset(c400);
    float4 _39_m14[47] : packoffset(c401);
    column_major float4x4 _39_m15[15] : packoffset(c448);
    float4 _39_m16[15] : packoffset(c508);
    float4 _39_m17[15] : packoffset(c523);
    float4 _39_m18[15] : packoffset(c538);
    float4 _39_m19 : packoffset(c553);
    float4 _39_m20 : packoffset(c554);
    float4 _39_m21[21] : packoffset(c555);
    column_major float4x4 _39_m22 : packoffset(c576);
    column_major float4x4 _39_m23 : packoffset(c580);
    float4 _39_m24 : packoffset(c584);
    float4 _39_m25 : packoffset(c585);
    float4 _39_m26 : packoffset(c586);
    float4 _39_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _49_50 : register(b0)
{
    float _50_m0 : packoffset(c0);
    float _50_m1 : packoffset(c0.y);
    float _50_m2 : packoffset(c0.z);
    float _50_m3 : packoffset(c0.w);
    float _50_m4 : packoffset(c1);
    float _50_m5 : packoffset(c1.y);
    float _50_m6 : packoffset(c1.z);
    float _50_m7 : packoffset(c1.w);
    float _50_m8 : packoffset(c2);
    float _50_m9 : packoffset(c2.y);
    float _50_m10 : packoffset(c2.z);
    float _50_m11 : packoffset(c2.w);
    float _50_m12 : packoffset(c3);
    float _50_m13 : packoffset(c3.y);
    float _50_m14 : packoffset(c3.z);
    float _50_m15 : packoffset(c3.w);
    float _50_m16 : packoffset(c4);
    float _50_m17 : packoffset(c4.y);
    float _50_m18 : packoffset(c4.z);
    float _50_m19 : packoffset(c4.w);
    float _50_m20 : packoffset(c5);
    float _50_m21 : packoffset(c5.y);
    float _50_m22 : packoffset(c5.z);
    float _50_m23 : packoffset(c5.w);
    float4 _50_m24 : packoffset(c6);
    float4 _50_m25 : packoffset(c7);
    float4 _50_m26 : packoffset(c8);
    float4 _50_m27 : packoffset(c9);
    float4 _50_m28 : packoffset(c10);
    float4 _50_m29 : packoffset(c11);
    float _50_m30 : packoffset(c12);
    float _50_m31 : packoffset(c12.y);
    float _50_m32 : packoffset(c12.z);
    float _50_m33 : packoffset(c12.w);
    float4 _50_m34 : packoffset(c13);
    float4 _50_m35 : packoffset(c14);
    float _50_m36 : packoffset(c15);
    float _50_m37 : packoffset(c15.y);
    float _50_m38 : packoffset(c15.z);
    float _50_m39 : packoffset(c15.w);
    float _50_m40 : packoffset(c16);
    float _50_m41 : packoffset(c16.y);
    float _50_m42 : packoffset(c16.z);
    float _50_m43 : packoffset(c16.w);
    float _50_m44 : packoffset(c17);
    float _50_m45 : packoffset(c17.y);
    float _50_m46 : packoffset(c17.z);
    float _50_m47 : packoffset(c17.w);
    float4 _50_m48 : packoffset(c18);
    float4 _50_m49 : packoffset(c19);
    float4 _50_m50 : packoffset(c20);
    float4 _50_m51 : packoffset(c21);
    float4 _50_m52 : packoffset(c22);
    float4 _50_m53 : packoffset(c23);
    float2 _50_m54 : packoffset(c24);
    float2 _50_m55 : packoffset(c24.z);
    float _50_m56 : packoffset(c25);
    float _50_m57 : packoffset(c25.y);
    float _50_m58 : packoffset(c25.z);
    float _50_m59 : packoffset(c25.w);
    float4 _50_m60 : packoffset(c26);
    float4 _50_m61 : packoffset(c27);
    float4 _50_m62 : packoffset(c28);
    float4 _50_m63 : packoffset(c29);
    float _50_m64 : packoffset(c30);
    float _50_m65 : packoffset(c30.y);
    float _50_m66 : packoffset(c30.z);
    float _50_m67 : packoffset(c30.w);
    float _50_m68 : packoffset(c31);
    float _50_m69 : packoffset(c31.y);
    float _50_m70 : packoffset(c31.z);
    float _50_m71 : packoffset(c31.w);
};

[[vk::binding(50, 0)]]
cbuffer _66_67 : register(b50)
{
    float4 _67_m0[32] : packoffset(c0);
    column_major float4x4 _67_m1[32] : packoffset(c32);
};

[[vk::binding(2, 0)]] SamplerState _25 : register(s2);
[[vk::binding(6, 0)]] SamplerState _26 : register(s6);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _28 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _40 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _41 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _43 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _44 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _45 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _46 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _47 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _48 : register(t30);
[[vk::binding(6, 1)]] Texture2D<float4> _51 : register(t6);
[[vk::binding(3, 1)]] Texture2D<float4> _52 : register(t3);
[[vk::binding(44, 0)]] Texture2D<float4> _53 : register(t44);
[[vk::binding(41, 0)]] Texture2D<float4> _54 : register(t41);
[[vk::binding(39, 0)]] Texture2D<float4> _55 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _56 : register(t37);
[[vk::binding(8, 1)]] Texture2D<float4> _57 : register(t8);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4);
[[vk::binding(7, 1)]] Texture2D<float4> _59 : register(t7);
[[vk::binding(5, 1)]] Texture2D<float4> _60 : register(t5);
[[vk::binding(45, 0)]] TextureCube<float4> _62 : register(t45);
[[vk::binding(1, 1)]] Texture2D<float4> _63 : register(t1);
[[vk::binding(2, 1)]] Texture2D<float4> _64 : register(t2);
[[vk::binding(29, 0)]] Texture2D<float4> _65 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _70 : register(t36);

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
    [[vk::location(4)]] float2 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float3 _10 : TEXCOORD7;
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
    float _445 = 1.0f / gl_FragCoord.w;
    float3 _460 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
    float _461 = dot(_460, _460);
    float _463 = rsqrt(max(_461, 9.9999999392252902907785028219223e-09f));
    float3 _464 = _460 * _463;
    float _465 = _461 * _463;
    uint _468 = asuint(_23_m0[_13]._m2.x);
    bool _473 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
    float4 _486;
    float4 _487;
    if (_473)
    {
        _486 = asfloat(_33_Load4((_468 + 2u) * 16 + 0));
        _487 = asfloat(_33_Load4(_468 * 16 + 0));
    }
    else
    {
        _486 = _23_m0[_13]._m0[2];
        _487 = _23_m0[_13]._m0[0];
    }
    float4 _499 = _57.SampleBias(_27, _3 + (_50_m54 * _20_m75.w), _20_m16);
    float3 _504 = _499.xyz * _50_m24.xyz;
    float4 _508 = _58.SampleBias(_27, _3, _20_m16);
    float _509 = _508.x;
    float _511 = _508.z;
    float _513 = 1.0f - _508.w;
    float _517 = _499.w * _50_m24.w;
    float3 _522 = _504 * _50_m18;
    float3 _526 = lerp(dot(_522, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _522, _50_m19.xxx);
    float4 _530 = _59.SampleBias(_27, _3, _20_m16);
    _530.w = _530.w * _530.x;
    float2 _539 = (_530.wy * 2.0f) - 1.0f.xx;
    float3 _540 = float3(_539.x, _539.y, _426.z);
    float2 _541 = _539.xy;
    _540.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_541, _541), 0.0f, 1.0f)));
    float2 _549 = _540.xy * _50_m3;
    float4 _558 = _60.SampleBias(_27, _3 + (_50_m55 * _20_m75.w), _20_m16);
    float3 _588 = _4 + _18_m11.xyz;
    float3 _592 = _588 - float3(_487.w, _428, _486.w);
    _592.y = 6.103515625e-05f;
    float3 _595 = normalize(_592);
    float3 _603 = _5 * 1.0f;
    float3 _605 = mul(float3(_549.x, _549.y, _540.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _603));
    float _614 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
    float3 _615 = (_605 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_605, _605)))) * _614;
    float3 _616 = normalize(_5) * _614;
    uint2 _618 = uint2(gl_FragCoord.xy);
    float3 _628 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _637 = asuint((_20_m89.x > 0.5f) ? _20_m89.y : _23_m0[_13]._m7.x);
    float4 _650 = float4(float(_637 & 255u), float((_637 >> 8u) & 255u), float((_637 >> 16u) & 255u), float((_637 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _651 = _650.x;
    float _654 = _650.w;
    float _660 = _588.y;
    float _663 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m89.w, _20_m89.x) - _660) * _650.y;
    float _664 = max(_650.z, _663);
    float _673 = lerp(_20_m22.x, 1.0f, _20_m91.w) * _20_m20.x;
    float4 _1167;
    float3 _1168;
    float3 _1169;
    float _1170;
    if (_20_m80.y < 0.5f)
    {
        float3 _688 = _588 - (_20_m105.xyz + (_628 * (-_20_m107.w)));
        float _702 = max(clamp((max(abs(_688.x), abs(_688.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_688.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _1004;
        float4 _1005;
        float4 _1006;
        float _1007;
        float _1008;
        if ((_20_m105.w != 0.0f) && (_702 < 1.0f))
        {
            float3 _715 = _588 - (_20_m105.xyz + (_628 * (-_20_m107.y)));
            float _729 = max(clamp((max(abs(_715.x), abs(_715.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_715.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _805;
            float4 _806;
            float4 _807;
            float4 _808;
            if (_729 < 1.0f)
            {
                float3 _738 = ((_588 * 2.0f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _740 = _738 - floor(_738);
                float4 _744 = _43.SampleLevel(_27, _740, 0.0f);
                float _745 = 1.0f - _729;
                float _749 = _20_m106.y * 0.5f;
                float _754 = _740.x;
                float _755 = clamp(_740.y, _749, 1.0f - _749) * 0.3333333432674407958984375f;
                float _756 = _740.z;
                float4 _759 = _44.SampleLevel(_26, float3(_754, _755, _756), 0.0f);
                float _775 = _744.x;
                float _785 = _744.y;
                float _795 = _744.z;
                _805 = _702 + (_759.w * _745);
                _806 = float4(((_44.SampleLevel(_26, float3(_754, _755 + 0.666666686534881591796875f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _795, _795) * _745;
                _807 = float4(((_44.SampleLevel(_26, float3(_754, _755 + 0.3333333432674407958984375f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _785, _785) * _745;
                _808 = float4(((_759.xyz * 4.0f) - 2.0f.xxx) * _775, _775) * _745;
            }
            else
            {
                _805 = _702;
                _806 = 0.0f.xxxx;
                _807 = 0.0f.xxxx;
                _808 = 0.0f.xxxx;
            }
            float3 _814 = _588 - (_20_m105.xyz + (_628 * (-_20_m107.z)));
            float _828 = max(clamp((max(abs(_814.x), abs(_814.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_814.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _908;
            float4 _909;
            float4 _910;
            float4 _911;
            if (_828 < 1.0f)
            {
                float3 _837 = ((_588 * 0.5f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _839 = _837 - floor(_837);
                float4 _843 = _45.SampleLevel(_27, _839, 0.0f);
                float _845 = _729 * (1.0f - _828);
                float _849 = _20_m106.y * 0.5f;
                float _854 = _839.x;
                float _855 = clamp(_839.y, _849, 1.0f - _849) * 0.3333333432674407958984375f;
                float _856 = _839.z;
                float4 _859 = _46.SampleLevel(_26, float3(_854, _855, _856), 0.0f);
                float _875 = _843.x;
                float _886 = _843.y;
                float _897 = _843.z;
                _908 = _805 + (_859.w * _845);
                _909 = _806 + (float4(((_46.SampleLevel(_26, float3(_854, _855 + 0.666666686534881591796875f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _897, _897) * _845);
                _910 = _807 + (float4(((_46.SampleLevel(_26, float3(_854, _855 + 0.3333333432674407958984375f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _886, _886) * _845);
                _911 = _808 + (float4(((_859.xyz * 4.0f) - 2.0f.xxx) * _875, _875) * _845);
            }
            else
            {
                _908 = _805;
                _909 = _806;
                _910 = _807;
                _911 = _808;
            }
            float4 _994;
            float4 _995;
            float4 _996;
            float _997;
            if (_828 > 0.0f)
            {
                float3 _920 = ((_588 * 0.125f) + 0.5f.xxx) * _20_m106.xyz;
                float3 _923 = _20_m106.xyz * 0.5f;
                float3 _925 = clamp(_920 - floor(_920), _923, 1.0f.xxx - _923);
                float4 _929 = _47.SampleLevel(_27, _925, 0.0f);
                float _931 = _828 * (1.0f - _702);
                float _935 = _20_m106.y * 0.5f;
                float _940 = _925.x;
                float _941 = clamp(_925.y, _935, 1.0f - _935) * 0.3333333432674407958984375f;
                float _942 = _925.z;
                float4 _945 = _48.SampleLevel(_26, float3(_940, _941, _942), 0.0f);
                float _961 = _929.x;
                float _972 = _929.y;
                float _983 = _929.z;
                _994 = _909 + (float4(((_48.SampleLevel(_26, float3(_940, _941 + 0.666666686534881591796875f, _942), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _983, _983) * _931);
                _995 = _910 + (float4(((_48.SampleLevel(_26, float3(_940, _941 + 0.3333333432674407958984375f, _942), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _972, _972) * _931);
                _996 = _911 + (float4(((_945.xyz * 4.0f) - 2.0f.xxx) * _961, _961) * _931);
                _997 = _908 + (_945.w * _931);
            }
            else
            {
                _994 = _909;
                _995 = _910;
                _996 = _911;
                _997 = _908;
            }
            float _1000 = clamp((_997 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _1004 = _994;
            _1005 = _995;
            _1006 = _996;
            _1007 = _1000 - _702;
            _1008 = (_1000 + _702) * 0.5f;
        }
        else
        {
            _1004 = 0.0f.xxxx;
            _1005 = 0.0f.xxxx;
            _1006 = 0.0f.xxxx;
            _1007 = 0.0f;
            _1008 = 1.0f;
        }
        float4 _1028 = _1006 + float4(_20_m108.x * _1008, (_20_m108.y * _1008) + ((_20_m108.w * _1007) * 0.5f), _20_m108.z * _1008, (_20_m108.w * _1008) + ((_20_m108.y * _1007) * 0.375f));
        float4 _1048 = _1005 + float4(_20_m109.x * _1008, (_20_m109.y * _1008) + ((_20_m109.w * _1007) * 0.5f), _20_m109.z * _1008, (_20_m109.w * _1008) + ((_20_m109.y * _1007) * 0.375f));
        float4 _1068 = _1004 + float4(_20_m110.x * _1008, (_20_m110.y * _1008) + ((_20_m110.w * _1007) * 0.5f), _20_m110.z * _1008, (_20_m110.w * _1008) + ((_20_m110.y * _1007) * 0.375f));
        float4 _1072 = float4(_615, 1.0f);
        float3 _1078 = max(float3(dot(_1028, _1072), dot(_1048, _1072), dot(_1068, _1072)), 0.0f.xxx) * _673;
        float3 _1086 = ((_1028.xyz * 0.2125999927520751953125f) + (_1048.xyz * 0.715200006961822509765625f)) + (_1068.xyz * 0.072200000286102294921875f);
        float3 _1090 = _1086 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1086, _1086)));
        float _1092 = abs(_1090.y);
        float3 _1093 = _1090;
        _1093.y = _1092;
        float4 _1094 = float4(_1093.x, _1093.y, _1093.z, 0.0f.xxxx.w);
        _1094.w = 1.0f;
        float4 _1098 = float4(_1090.x, _1092, _1090.z, 1.0f);
        float3 _1103 = max(float3(dot(_1028, _1098), dot(_1048, _1098), dot(_1068, _1098)), 0.0f.xxx);
        float _1111 = _1078.z;
        float _1112 = _1078.y;
        float4 _1117 = lerp(float4(_1111, _1112, -1.0f, 0.666666686534881591796875f), float4(_1112, _1111, 0.0f, -0.3333333432674407958984375f), step(_1111, _1112).xxxx);
        float _1118 = _1078.x;
        float _1119 = _1117.x;
        float4 _1127 = lerp(float4(_1119, _1117.yw, _1118), float4(_1118, _1117.yz, _1119), step(_1119, _1118).xxxx);
        float _1128 = _1127.x;
        float _1129 = _1127.w;
        float _1130 = _1127.y;
        float _1132 = _1128 - min(_1129, _1130);
        float _1142 = frac(abs(_1127.z + ((_1129 - _1130) / ((6.0f * _1132) + 9.9999997473787516355514526367188e-05f))));
        float _1149 = min(_1132 / (_1128 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1142 - 0.5f))) * clamp(_1128, 0.0f, 1.0f));
        float _1151 = 2.0f / (2.0f - _1149);
        _1167 = _1094;
        _1168 = _1078;
        _1169 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1142, _1149, _1151).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1149.xxx) * _1151;
        _1170 = max(max(max(_1103.x, _1103.y), _1103.z), 0.0f) * _673;
    }
    else
    {
        _1167 = 0.0f.xxxx;
        _1168 = 1.0f.xxx;
        _1169 = _20_m81.xyz;
        _1170 = _673;
    }
    float3 _1890;
    float _1891;
    float _1892;
    float _1893;
    float _1894;
    float3 _1895;
    float3 _1896;
    [branch]
    if ((clamp(_651 + _664, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f)
    {
        float _1198 = 1.0f - _509;
        float _1201 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_504 * _1198, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1204 = _473.xxx;
        float3 _1206 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1210 = float3(_1204.x ? _1206.x : _11.x, _1204.y ? _1206.y : _11.y, _1204.z ? _1206.z : _11.z) * _20_m89.z;
        float3 _1212 = float3(_1204.x ? _10.xzy.x : _10.x, _1204.y ? _10.xzy.y : _10.y, _1204.z ? _10.xzy.z : _10.z);
        float3 _1214 = abs(_1212) - 0.20000000298023223876953125f.xxx;
        float3 _1217 = max((_1214 * _1214) * _1214, 6.103515625e-05f.xxx);
        float3 _1220 = _1217 / dot(_1217, 1.0f.xxx).xxx;
        float2 _1228 = _1210.xy;
        float2 _1233 = _1210.zy;
        float4 _1243 = ((_53.SampleBias(_27, _1210.xz, _20_m16) * _1220.y) + (_53.SampleBias(_27, _1228, _20_m16) * _1220.z)) + (_53.SampleBias(_27, _1233, _20_m16) * _1220.x);
        float _1244 = _1243.w;
        float _1246 = 1.10000002384185791015625f - _1244;
        float _1255 = max(smoothstep(0.800000011920928955078125f - _1244, _1246, clamp((_651 * _1198) + (_615.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1244, _1246, clamp(_663 * _1198, 0.0f, 1.0f)));
        float _1262 = smoothstep(0.5f, 0.75f, _509);
        float _1264 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _513) * _1201;
        float _1267 = clamp(_1264 + _1262, 0.0f, 1.0f) * max(_651, _664);
        bool _1271 = !((step(_651, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _664)) != 0.0f);
        bool2 _1272 = _1271.xx;
        float2 _1274 = (1.0f - _664).xx;
        float2 _1275 = float2(_1272.x ? float2(3.0f, 4.345600128173828125f).x : _1274.x, _1272.y ? float2(3.0f, 4.345600128173828125f).y : _1274.y);
        float _1276 = 1.0f - _1267;
        float _1279 = _1271 ? _20_m10.x : 1.0f;
        float _1281 = _1279 * _1275.x;
        float _1283 = _1279 * _1275.y;
        float3 _1284 = _1210 * 20.0f;
        float3 _1285 = _1210 * 34.345600128173828125f;
        float3 _1287 = pow(max(_1214, 0.0f.xxx), 10.0f.xxx);
        float3 _1291 = _1287 / max(dot(_1287, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1293 = _1291.y;
        float2 _1294 = _1284.xz * 1.0f;
        float2 _1295 = floor(_1294);
        float2 _1298 = frac(_1295 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1302 = _1298 + dot(_1298, _1298 + 34.345001220703125f.xx).xx;
        float _1303 = _1302.x;
        float _1304 = _1302.y;
        float2 _1308 = frac(float2(_1303 * _1304, _1303 + _1304));
        float2 _1311 = frac((_1295 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1315 = _1311 + dot(_1311, _1311 + 34.345001220703125f.xx).xx;
        float _1316 = _1315.x;
        float _1317 = _1315.y;
        float2 _1321 = frac(float2(_1316 * _1317, _1316 + _1317));
        float _1327 = _1308.x;
        float _1329 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1327);
        float2 _1330 = ((_1294 - _1295) + ((((_1321 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1333 = _1330.y;
        float2 _1337 = float2(_1330.x * 1.25f, _1333 * ((_1333 < 0.0f) ? 1.25f : 0.75f));
        float _1340 = _1281 + _1327;
        float _1344 = _1271 ? frac(_1340) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1340, 0.0f, 1.0f));
        float _1356 = _1308.y;
        float _1359 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1344) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1344)) * step(0.001000000047497451305389404296875f, smoothstep(_1329, 0.0f, length(_1337)))) * step(_1276, _1356 - 0.100000001490116119384765625f);
        float _1362 = _1359 * _1293;
        float _1370 = _1291.z;
        float2 _1371 = _1284.xy * 1.0f;
        float2 _1372 = floor(_1371);
        float2 _1375 = frac(_1372 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1379 = _1375 + dot(_1375, _1375 + 34.345001220703125f.xx).xx;
        float _1380 = _1379.x;
        float _1381 = _1379.y;
        float2 _1385 = frac(float2(_1380 * _1381, _1380 + _1381));
        float2 _1388 = frac((_1372 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1392 = _1388 + dot(_1388, _1388 + 34.345001220703125f.xx).xx;
        float _1393 = _1392.x;
        float _1394 = _1392.y;
        float2 _1398 = frac(float2(_1393 * _1394, _1393 + _1394));
        float _1404 = _1385.x;
        float _1406 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1404);
        float2 _1407 = ((_1371 - _1372) + ((((_1398 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1410 = _1407.y;
        float2 _1414 = float2(_1407.x * 1.25f, _1410 * ((_1410 < 0.0f) ? 1.25f : 0.75f));
        float _1417 = _1281 + _1404;
        float _1421 = _1271 ? frac(_1417) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1417, 0.0f, 1.0f));
        float _1433 = _1385.y;
        float _1436 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1421) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1421)) * step(0.001000000047497451305389404296875f, smoothstep(_1406, 0.0f, length(_1414)))) * step(_1276, _1433 - 0.100000001490116119384765625f);
        float _1439 = _1436 * _1370;
        float _1447 = _1291.x;
        float2 _1448 = _1284.zy * 1.0f;
        float2 _1449 = floor(_1448);
        float2 _1452 = frac(_1449 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1456 = _1452 + dot(_1452, _1452 + 34.345001220703125f.xx).xx;
        float _1457 = _1456.x;
        float _1458 = _1456.y;
        float2 _1462 = frac(float2(_1457 * _1458, _1457 + _1458));
        float2 _1465 = frac((_1449 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1469 = _1465 + dot(_1465, _1465 + 34.345001220703125f.xx).xx;
        float _1470 = _1469.x;
        float _1471 = _1469.y;
        float2 _1475 = frac(float2(_1470 * _1471, _1470 + _1471));
        float _1481 = _1462.x;
        float _1483 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1481);
        float2 _1484 = ((_1448 - _1449) + ((((_1475 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1487 = _1484.y;
        float2 _1491 = float2(_1484.x * 1.25f, _1487 * ((_1487 < 0.0f) ? 1.25f : 0.75f));
        float _1494 = _1281 + _1481;
        float _1498 = _1271 ? frac(_1494) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1494, 0.0f, 1.0f));
        float _1510 = _1462.y;
        float _1513 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1498) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1498)) * step(0.001000000047497451305389404296875f, smoothstep(_1483, 0.0f, length(_1491)))) * step(_1276, _1510 - 0.100000001490116119384765625f);
        float _1516 = _1513 * _1447;
        float2 _1529 = (float4(((clamp(_1337 / _1329.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1321.x)) * _1359) * _1293, _1362, _1356).xy + float4(((clamp(_1414 / _1406.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1398.x)) * _1436) * _1370, _1439, _1433).xy) + float4(((clamp(_1491 / _1483.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1475.x)) * _1513) * _1447, _1516, _1510).xy;
        float _1531 = max(_1516, max(_1362, _1439));
        float4 _1534 = float4(_1529, _1531, 0.0f);
        float2 _1536 = _1285.xz * 1.0f;
        float2 _1537 = floor(_1536);
        float2 _1540 = frac(_1537 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1544 = _1540 + dot(_1540, _1540 + 34.345001220703125f.xx).xx;
        float _1545 = _1544.x;
        float _1546 = _1544.y;
        float2 _1550 = frac(float2(_1545 * _1546, _1545 + _1546));
        float2 _1553 = frac((_1537 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1557 = _1553 + dot(_1553, _1553 + 34.345001220703125f.xx).xx;
        float _1558 = _1557.x;
        float _1559 = _1557.y;
        float2 _1563 = frac(float2(_1558 * _1559, _1558 + _1559));
        float _1569 = _1550.x;
        float _1571 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1569);
        float2 _1572 = ((_1536 - _1537) + ((((_1563 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1575 = _1572.y;
        float2 _1579 = float2(_1572.x * 1.25f, _1575 * ((_1575 < 0.0f) ? 1.25f : 0.75f));
        float _1582 = _1283 + _1569;
        float _1586 = _1271 ? frac(_1582) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1582, 0.0f, 1.0f));
        float _1598 = _1550.y;
        float _1601 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1586) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1586)) * step(0.001000000047497451305389404296875f, smoothstep(_1571, 0.0f, length(_1579)))) * step(_1276, _1598 - 0.100000001490116119384765625f);
        float _1604 = _1601 * _1293;
        float2 _1609 = _1285.xy * 1.0f;
        float2 _1610 = floor(_1609);
        float2 _1613 = frac(_1610 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1617 = _1613 + dot(_1613, _1613 + 34.345001220703125f.xx).xx;
        float _1618 = _1617.x;
        float _1619 = _1617.y;
        float2 _1623 = frac(float2(_1618 * _1619, _1618 + _1619));
        float2 _1626 = frac((_1610 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1630 = _1626 + dot(_1626, _1626 + 34.345001220703125f.xx).xx;
        float _1631 = _1630.x;
        float _1632 = _1630.y;
        float2 _1636 = frac(float2(_1631 * _1632, _1631 + _1632));
        float _1642 = _1623.x;
        float _1644 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1642);
        float2 _1645 = ((_1609 - _1610) + ((((_1636 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1648 = _1645.y;
        float2 _1652 = float2(_1645.x * 1.25f, _1648 * ((_1648 < 0.0f) ? 1.25f : 0.75f));
        float _1655 = _1283 + _1642;
        float _1659 = _1271 ? frac(_1655) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1655, 0.0f, 1.0f));
        float _1671 = _1623.y;
        float _1674 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1659) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1659)) * step(0.001000000047497451305389404296875f, smoothstep(_1644, 0.0f, length(_1652)))) * step(_1276, _1671 - 0.100000001490116119384765625f);
        float _1677 = _1674 * _1370;
        float2 _1682 = _1285.zy * 1.0f;
        float2 _1683 = floor(_1682);
        float2 _1686 = frac(_1683 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1690 = _1686 + dot(_1686, _1686 + 34.345001220703125f.xx).xx;
        float _1691 = _1690.x;
        float _1692 = _1690.y;
        float2 _1696 = frac(float2(_1691 * _1692, _1691 + _1692));
        float2 _1699 = frac((_1683 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1703 = _1699 + dot(_1699, _1699 + 34.345001220703125f.xx).xx;
        float _1704 = _1703.x;
        float _1705 = _1703.y;
        float2 _1709 = frac(float2(_1704 * _1705, _1704 + _1705));
        float _1715 = _1696.x;
        float _1717 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1715);
        float2 _1718 = ((_1682 - _1683) + ((((_1709 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1721 = _1718.y;
        float2 _1725 = float2(_1718.x * 1.25f, _1721 * ((_1721 < 0.0f) ? 1.25f : 0.75f));
        float _1728 = _1283 + _1715;
        float _1732 = _1271 ? frac(_1728) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1728, 0.0f, 1.0f));
        float _1744 = _1696.y;
        float _1747 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1732) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1732)) * step(0.001000000047497451305389404296875f, smoothstep(_1717, 0.0f, length(_1725)))) * step(_1276, _1744 - 0.100000001490116119384765625f);
        float _1750 = _1747 * _1447;
        float2 _1758 = (float4(((clamp(_1579 / _1571.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1563.x)) * _1601) * _1293, _1604, _1598).xy + float4(((clamp(_1652 / _1644.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1636.x)) * _1674) * _1370, _1677, _1671).xy) + float4(((clamp(_1725 / _1717.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1709.x)) * _1747) * _1447, _1750, _1744).xy;
        float4 _1763 = float4(_1758, max(_1750, max(_1604, _1677)), 0.0f);
        float _1765 = step(max(float2(_1329 * _1359, _428) * _1293, max(float2(_1406 * _1436, _428) * _1370, float2(_1483 * _1513, _428) * _1447)).x, 0.00999999977648258209228515625f);
        float2 _1769 = _1534.xy + (_1763.xy * _1765);
        float3 _1778 = float3((_1243.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1769.x, _1769.y, 0.0f.xxx.z);
        float2 _1782 = float2(0.0f, (_20_m10.x * _20_m89.z) * 0.75f);
        float3 _1785 = float3(_1212.x, 0.0f, _1212.z);
        float3 _1791 = abs(_1785 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1785, _1785)))) - 0.20000000298023223876953125f.xxx;
        float3 _1794 = max((_1791 * _1791) * _1791, 6.103515625e-05f.xxx);
        float3 _1797 = _1794 / dot(_1794, 1.0f.xxx).xxx;
        float _1816 = _1797.z;
        float _1818 = _1797.x;
        float4 _1820 = (_54.SampleBias(_27, _1228, _20_m16) * _1816) + (_54.SampleBias(_27, _1233, _20_m16) * _1818);
        float2 _1832 = _1778.xy + ((((_1820.xy * 2.0f) - 1.0f.xx) * ((_54.SampleBias(_27, _1228 + _1782, _20_m16).w * _1816) + (_54.SampleBias(_27, _1233 + _1782, _20_m16).w * _1818))) * _1267);
        float3 _1833 = float3(_1832.x, _1832.y, _1778.z);
        float _1834 = _1820.z;
        float _1839 = max(max(max(_1534.zw * step(0.00999999977648258209228515625f, _1531), _1763.zw * _1765).x, step(1.0099999904632568359375f - _1267, _1243.z)), smoothstep(1.0f - _1834, 1.10000002384185791015625f - _1834, _1267) * _1267);
        float2 _1840 = _1832.xy;
        _1833.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1840, _1840), 0.0f, 1.0f)));
        float3 _1847 = normalize(_1833);
        float3 _1848 = cross(_615, float3(0.0f, 1.0f, 0.0f));
        bool3 _1851 = (dot(_1848, _1848) > 6.103515625e-05f).xxx;
        float3 _1852 = normalize(_1848);
        float3 _1853 = float3(_1851.x ? _1852.x : float3(1.0f, 0.0f, 0.0f).x, _1851.y ? _1852.y : float3(1.0f, 0.0f, 0.0f).y, _1851.z ? _1852.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1864 = min(_513, 0.0500000007450580596923828125f);
        float _1865 = lerp(_513, _1864, _1839);
        float _1882 = lerp(1.0f, 0.5f, (_1255 * (1.0f - _1201)) * (1.0f - _1264));
        _1890 = normalize(lerp(_615, normalize(((_1853 * _1847.x) + (cross(_1853, _615) * _1847.y)) + (_615 * _1847.z)), _1839.xxx));
        _1891 = _1839;
        _1892 = _1864;
        _1893 = _1839;
        _1894 = max(_1865 - ((0.20000000298023223876953125f * _1201) * _1255), min(0.20000000298023223876953125f, _1865));
        _1895 = _526 * _1882;
        _1896 = lerp(_504, _504 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_504, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1839 * _1262).xxx) * _1882;
    }
    else
    {
        _1890 = _615;
        _1891 = 0.0f;
        _1892 = 0.00999999977648258209228515625f;
        _1893 = 0.0f;
        _1894 = _513;
        _1895 = _526;
        _1896 = _504;
    }
    float3 _2068;
    float _2069;
    float _2070;
    float3 _2071;
    float3 _2072;
    float _2073;
    [branch]
    if (_654 > 0.00999999977648258209228515625f)
    {
        bool3 _1900 = _473.xxx;
        float3 _1902 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1903 = float3(_1900.x ? _1902.x : _11.x, _1900.y ? _1902.y : _11.y, _1900.z ? _1902.z : _11.z);
        float3 _1906 = _1903 * _20_m89.z;
        float3 _1908 = float3(_1900.x ? _10.xzy.x : _10.x, _1900.y ? _10.xzy.y : _10.y, _1900.z ? _10.xzy.z : _10.z);
        float3 _1910 = abs(_1908) - 0.20000000298023223876953125f.xxx;
        float3 _1913 = max((_1910 * _1910) * _1910, 6.103515625e-05f.xxx);
        float3 _1916 = _1913 / dot(_1913, 1.0f.xxx).xxx;
        float _1932 = _1916.y;
        float _1934 = _1916.z;
        float _1937 = _1916.x;
        float4 _1939 = ((_55.SampleBias(_27, _1906.xz, _20_m16) * _1932) + (_55.SampleBias(_27, _1906.xy, _20_m16) * _1934)) + (_55.SampleBias(_27, _1906.zy, _20_m16) * _1937);
        float _1940 = _1908.y;
        float _1947 = clamp(_654 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1903.y) * clamp(_654 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1958 = smoothstep(2.0f - _1947, 2.349999904632568359375f - _1947, ((_1940 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1939.z) * ((_511 * _511) * float(gl_FrontFacing));
        float _1970 = lerp(1.0f, 0.5f, ((_1947 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1896 * (1.0f - _509), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1939.w) * ((_1940 * 0.25f) + 0.75f));
        float3 _1972 = _1958.xxx;
        float2 _1978 = (_1939.xy * 2.0f) - 1.0f.xx;
        float3 _1979 = float3(_1978.x, _1978.y, _426.z);
        float2 _1980 = _1978.xy;
        _1979.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1980, _1980), 0.0f, 1.0f)));
        float2 _1988 = _1979.xy * 2.0f;
        float3 _1990 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1988.x, _1988.y, _1979.z), _1972);
        float3 _1994 = _1990 * rsqrt(max(6.103515625e-05f, dot(_1990, _1990)));
        float _1995 = _615.y;
        float _1998 = step(0.00999999977648258209228515625f, 1.0f - (_1995 * _1995));
        float _2002 = lerp(_615.z, _1995, _1998);
        float3 _2009 = (float3(0.0f, _1998, 1.0f - _1998) - (_615 * _2002)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2002 * _2002)));
        float3 _2023 = _1906 * 4.0f;
        float4 _2043 = ((_56.SampleLevel(_25, _2023.xz, 0.0f) * _1932) + (_56.SampleLevel(_25, _2023.xy, 0.0f) * _1934)) + (_56.SampleLevel(_25, _2023.zy, 0.0f) * _1937);
        float2 _2046 = (_2043.xz * 2.0f) - 1.0f.xx;
        float _2057 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2046.x, _2043.y, _2046.y), (floor(_464 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2058 = _2057 * _2057;
        float _2061 = _2058 * ((_2058 * 2.0f) * _1958);
        float3 _2062 = 1.0f.xxx * _2061;
        _2068 = ((cross(_2009, _615) * _1994.x) + (_2009 * _1994.y)) + (_615 * _1994.z);
        _2069 = _1893 + _2061;
        _2070 = lerp(lerp(_1894, 0.89999997615814208984375f, clamp(_1958 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2061);
        _2071 = lerp(_1895 * _1970, 0.3079999983310699462890625f.xxx, _1972) + (_2062 * 0.5f);
        _2072 = lerp(_1896 * _1970, 0.87999999523162841796875f.xxx, _1972) + _2062;
        _2073 = lerp(_509, 0.0f, _1958);
    }
    else
    {
        _2068 = _615;
        _2069 = _1893;
        _2070 = _1894;
        _2071 = _1895;
        _2072 = _1896;
        _2073 = _509;
    }
    float3 _2079 = _50_m51.xyz * _50_m42;
    float4 _2080 = float4(_2079.x, _2079.y, _2079.z, _50_m51.w);
    _2080.w = _50_m51.w * _50_m43;
    float2 _2127;
    if (_50_m41 > 1.5f)
    {
        float2 _2099 = ((float2(_618) / _20_m5.xy) * 2.0f) - 1.0f.xx;
        _2127 = float2(_2099.x, (_2099.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _50_m47);
    }
    else
    {
        _2127 = lerp(_3, _7, _50_m41.xx);
    }
    float4 _2142 = _64.SampleBias(_27, ((_2127 + (_50_m48.zw * _20_m75.w)) * _50_m53.xy) + _50_m53.zw, _20_m16);
    float _2145 = _2142.x;
    float4 _2161 = _63.SampleBias(_27, (((_2127 + (_50_m46 * _2145).xx) + (_50_m48.xy * _20_m75.w)) * _50_m52.xy) + _50_m52.zw, _20_m16);
    float4 _2168 = _2080 * lerp(_2161, float4(1.0f, 1.0f, 1.0f, _2161.x), _50_m40.xxxx);
    float _2171 = _2168.w;
    float _2184 = _2145 - ((_50_m45 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _2186 = clamp(-_2184, 0.0f, 1.0f);
    bool3 _2200 = (_50_m44 < 0.5f).xxx;
    float _2214 = pow(clamp(dot(_464, float3(_2200.x ? _603.x : _2068.x, _2200.y ? _603.y : _2068.y, _2200.z ? _603.z : _2068.z).xyz) + _50_m36, 0.0f, 1.0f), _50_m38);
    float _2216 = lerp(1.0f - _2214, _2214, _50_m39);
    float _2232 = 0.959999978542327880859375f - (_2073 * 0.959999978542327880859375f);
    float3 _2233 = _2072 * _2232;
    float3 _2236 = lerp(0.039999999105930328369140625f.xxx * _508.y, _2072, _2073.xxx);
    float3 _2237 = _2071 * _2232;
    float _2239 = max(_2070 * _2070, 0.0078125f);
    float _2240 = _2239 * _2239;
    float2 _2253 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _2253.y = -_2253.y;
    float2 _2266 = ((sqrt(sqrt(abs(_2253 * 0.5f))) * float2(int2(sign(_2253)))) * 0.5f) + 0.5f.xx;
    float4 _2269 = float4(_2266.x, _2266.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2269.z = 1.0f;
    _2269.w = (_2069 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2282 = lerp(-_37_m0.xyz, _20_m90.xyz, _20_m80.w.xxx);
    float3 _2286 = normalize(float3(_2282.x, 6.103515625e-05f, _2282.z));
    float3 _2296 = lerp(_37_m3.xyz, _20_m84.xyz, _20_m91.y.xxx);
    float3 _2300 = _2296 * lerp(_37_m3.w, 1.0f, _20_m91.w);
    int _2304 = int(_618.x);
    int _2305 = int(_618.y);
    float4 _2309 = _41.Load(int3(int3(_2304, _2305, 0).xy, 0));
    float _2314 = _2309.y;
    float _2317 = lerp(lerp(1.0f, _2309.x, _39_m6.x), 1.0f, _20_m80.z);
    float _2318 = dot(_2068, _2282);
    float3 _2325 = _2237 * _20_m79.z;
    float3 _2326 = _2325 * 0.64999997615814208984375f;
    float _2330 = dot(_2233, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2343 = clamp(-dot(_2286.xz, normalize(_628.xz)), 0.0f, 1.0f);
    float _2347 = 1.0f - _20_m91.x;
    float4 _2361 = _51.SampleLevel(_26, float2((clamp(lerp(_2318, ((-_2318) * ((_2318 * 0.5f) - 1.0f)) + 0.5f, (_2343 * smoothstep(0.25f, 0.75f, 1.0f - abs(_628.y))) * _2347) + (_20_m90.w * _20_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2362 = _2361.w;
    float _2364 = _2361.x;
    float _2365 = _2361.y;
    float _2366 = _2361.z;
    float _2371 = max(max(_2364, _2365), _2366) - min(min(_2364, _2365), _2366);
    float4 _2379 = _51.SampleLevel(_26, float2((dot(_2068, _628) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2380 = _2379.w;
    float _2381 = _511 * _2314;
    float _2388 = min(min(_2314, _511), _2362);
    float _2389 = _2380 * _2381;
    float3 _2393 = ((clamp(dot(_615, _20_m85.xyz) + _20_m86.x, 0.0f, 1.0f) * _20_m86.y) + _20_m86.z).xxx * lerp(_1169, 1.0f.xxx, (_20_m80.y * _2388).xxx);
    float3 _2395 = _2388.xxx;
    float3 _2418 = _2317.xxx;
    float3 _2419 = lerp((_2393 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1170), 1.5f), clamp(_1170, 1.25f, 1.75f), _20_m80.x)) * _20_m79.w, (lerp(dot(_2300, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2300, _2395) + ((_2393 * clamp(_1170, 0.0f, 1.5f)) * ((1.0f - _20_m91.y).xxx + (_2296 * _20_m91.y)))) * _20_m79.y, _2418);
    float3 _2420 = lerp(lerp(lerp(dot(_2326, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2326, 1.2000000476837158203125f.xxx), _2325, clamp((_2381 * _2380) + _2362, 0.0f, 1.0f).xxx), _2233, _2395);
    float3 _2426 = _2420 * ((1.0f - _2371).xxx + (_2361.xyz * _2371));
    float3 _2435 = lerp(lerp(_2325, lerp(_2330.xxx, _2233, 1.2000000476837158203125f.xxx), _2389.xxx), _2426 * clamp(dot(_2420, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2426, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2418);
    float4 _2439 = float4(_2435, _2317);
    float _2441 = lerp(_2389, _2388, _2317);
    float _2444 = lerp(_20_m79.z, 1.0f, _2441);
    float3 _2452 = float3(_628.x, lerp(0.5f, _2282.y, _2317), _628.z);
    float _2465 = clamp(dot(_1890, _464), 0.0f, 1.0f);
    float _2466 = dot(_1890, normalize(((_2282 * _2317) + ((_2452 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2452, _2452)))) * 2.0f)) + (_464 * (2.0f + _2317))));
    float _2470 = (((_2466 * _2240) - _2466) * _2466) + 1.0f;
    float _2471 = _2470 * _2470;
    float _2474 = (_2240 != _2471) ? (_2240 / _2471) : 1.0f;
    float _2475 = 2.0f * _2465;
    float _2477 = (1.0f + _2465) - _2465;
    float _2486 = _2465 * _2465;
    float3 _2498 = _2236 * _52.SampleLevel(_26, float2(lerp(_2474 / min(1.0f / (_2240 + 9.9999997473787516355514526367188e-05f), 65504.0f), _2486, _50_m4), _2070 * (1.0f - _2073)), 0.0f).xyz;
    float3 _2500 = lerp(_2236, _2498, _50_m4.xxx);
    float _2513 = (1.0f - _50_m6) + (_517 * _50_m6);
    float3 _2515 = ((_2419 * _2435) * _2513) + (((_2498 * clamp((_2474 * (0.5f / ((_2475 + (_2239 * _2477)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2419 * (((_2441 * 0.5f) + 0.5f) * _2444)) * 1.0f)) * _20_m92.w);
    float _2516 = dot(_2515, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2519 = clamp(_2516 - 0.5f, 0.0f, 0.5f);
    float3 _2555 = normalize(cross(_628, lerp(float3(_20_m88.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m88.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m88.y), _20_m94.w.xxx)));
    float _2561 = dot(_464, _2068);
    float _2563 = 1.0f - abs(_2561);
    float _2585 = dot(_2286, _2068);
    float _2597 = 1.0f - _2317;
    float _2624 = lerp(_2070, _1892, _1891);
    float _2625 = _2624 * _2624;
    float _2626 = _2486 * _2465;
    float2 _2627 = float2(1.0f, _2465);
    float2 _2630 = float2(1.0f, _2625);
    float3 _2633 = float3(1.0f, _2625, (_2625 * _2625) * _2625);
    float _2638 = dot(mul(_2627, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2630) / dot(mul(float3(1.0f, _2486, _2626), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2633);
    float _2643 = dot(mul(_2627, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2630) / dot(mul(float3(1.0f, _2465, _2626), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2633);
    float3 _2646 = (_2500 * _2638) + _2643.xxx;
    float _2647 = _2638 + _2643;
    float3 _2653 = -_464;
    float3 _2671 = ((((_558.xyz * _50_m25.xyz) * _50_m7) * ((_50_m56 > 0.5f) ? lerp(1.0f, lerp(_50_m58, _50_m59, (sin(_50_m57 * _20_m75.w) * 0.5f) + 0.5f), _558.w) : 1.0f)) + (lerp(lerp((((_2142 * clamp((_2171 + _2142.w) * _50_m49.w, 0.0f, 1.0f)) * _50_m49) + _2168).xyz, (_50_m50.xyz * _2186) * _50_m42, _2186.xxx).xyz, _50_m50.xyz, (_50_m50.w * _2216).xxx).xyz * (clamp(_2171 * clamp(_2184, 0.0f, 1.0f), 0.0f, 1.0f) * ((1.0f - _50_m37) + (_2216 * _50_m37)))).xyz) * _2513;
    float3 _2672 = lerp(_2516.xxx, _2515, ((_2519 * _2519) + 1.0f).xxx) + (((((_20_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m88.w), lerp(0.89999997615814208984375f, 0.5f, _20_m88.w), _2563)) * _20_m87.w) * min(min(clamp(dot(_595, _2555) + 1.0f, 0.0f, 1.0f), _511), _2314)) * (lerp(0.25f.xxx, _2233, _20_m88.z.xxx) * clamp(dot(_2555, _2068), 0.0f, 1.0f))) + ((((((lerp(_1168 * (1.0f / max(max(max(_1168.x, _1168.y), _1168.z) * 0.5f, 1.0f)), _2300, _2418) * clamp(lerp(dot(_1167.xyz, _2068) * _1167.w, ((-_2585) * ((_2585 * 0.5f) - 1.0f)) + 0.5f, _2317), 0.0f, 1.0f)) * ((_2597 + (_2343 * _2317)) * _2347)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2563)) * min(_511, _2314)) * (_2597 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2330) * _2317))) * max(0.1500000059604644775390625f.xxx, _2233)));
    float2 _2675 = float2(_618);
    float2 _2677 = floor(_2675 * 0.03125f);
    int _2685 = int((_2677.x + (_2677.y * _35_m5)) * 8.0f);
    float _2692 = floor(_445 - (_20_m3.y * _35_m11));
    float _2696 = clamp(_2692, 0.0f, _35_m7 - 1.0f);
    int _2698 = int(_2696 * 8.0f);
    float3 _2700;
    _2700 = (_2672 + _2671) + (((_62.SampleLevel(_26, reflect(_2653, _1890), (1.2000000476837158203125f * log2(max(_2624, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2646 + ((_2500 * ((1.0f - _2647) / _2647)) * _2646)) * 1.0f)) * ((clamp(_1170, 0.5f, 1.5f) * _20_m79.w) * _2444)) * _1169);
    float3 _2701;
    [loop]
    for (int _2703 = 0; _2703 <= 7; _2700 = _2701, _2703++)
    {
        uint _2721 = (_2692 <= _2696) ? (_31.Load(uint(_2685 + _2703) * 4 + 0) & _31.Load(uint((_20_m21.y + _2698) + _2703) * 4 + 0)) : 0u;
        uint _2722 = uint(_2703);
        _2701 = _2700;
        uint _2727;
        float3 _2724;
        [loop]
        for (uint _2726 = _2721; _2726 != 0u; _2701 = _2724, _2726 = _2727)
        {
            uint _2731 = firstbitlow(_2726);
            _2727 = _2726 ^ (1u << (_2731 & 31u));
            int _2737 = int((32u * _2722) + _2731) * 8;
            int _2740 = _2737 + 1;
            int _2743 = _2737 + 2;
            int _2746 = _2737 + 3;
            int _2749 = _2737 + 4;
            int _2752 = _2737 + 5;
            int _2755 = _2737 + 6;
            int _2758 = _2737 + 7;
            uint _2762 = uint(_37_m6[_2752].w);
            float _2837;
            if ((_2762 & 1u) == 1u)
            {
                uint _2768 = asuint(_37_m6[_2752].x);
                uint _2775 = asuint(_37_m6[_2752].y);
                uint _2782 = asuint(_37_m6[_2752].z);
                uint _2789 = asuint(_37_m6[_2755].x);
                uint _2796 = asuint(_37_m6[_2755].y);
                uint _2803 = asuint(_37_m6[_2755].z);
                float3 _2822 = abs(mul(float4(_588 - _37_m6[_2740].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2768).x, spvUnpackHalf2x16(_2782).x, spvUnpackHalf2x16(_2796).x, 0.0f), float4(spvUnpackHalf2x16(_2768 >> 16u).x, spvUnpackHalf2x16(_2782 >> 16u).x, spvUnpackHalf2x16(_2796 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2775).x, spvUnpackHalf2x16(_2789).x, spvUnpackHalf2x16(_2803).x, 0.0f), float4(spvUnpackHalf2x16(_2775 >> 16u).x, spvUnpackHalf2x16(_2789 >> 16u).x, spvUnpackHalf2x16(_2803 >> 16u).x, 0.0f))).xyz);
                float _2829 = _37_m6[_2758].x * 0.5f;
                float _2835 = 1.0f - clamp((max(max(_2822.x, _2822.y), _2822.z) - (_2829 + 0.5f)) / (0.5f - _2829), 0.0f, 1.0f);
                _2837 = _2835 * _2835;
            }
            else
            {
                _2837 = 1.0f;
            }
            if (false || (_2837 < 0.001000000047497451305389404296875f))
            {
                _2724 = _2701;
                continue;
            }
            float3 _3530;
            if (_37_m6[_2737].w < 1.5f)
            {
                float3 _3529;
                do
                {
                    uint _2850 = asuint(_37_m6[_2746].w);
                    if ((_2850 == 16u) || ((_37_m6[_2746].z + _20_m91.z) < 0.5f))
                    {
                        _3529 = _2701;
                        break;
                    }
                    bool _2862 = (uint(_37_m6[_2737].w) & 1u) == 0u;
                    bool _2866 = (!_2862) && (_37_m6[_2743].z > 0.0f);
                    bool _2867 = _2850 == 4u;
                    float _2868 = float(_2862);
                    float _2876 = (0.5f + (0.5f * _37_m6[_2743].y)) - abs(_37_m6[_2743].x);
                    float _2877 = _37_m6[_2743].y - _2876;
                    float _2884 = abs(max((1.0f - abs(_2876)) - abs(_2877), 0.00048828125f));
                    float3 _2888 = normalize(float3(_2876, _2877, (_37_m6[_2743].x >= 0.0f) ? _2884 : (-_2884)));
                    float _2894 = lerp(_37_m6[_2755].w, max(2.0f * _37_m6[_2749].y, 0.100000001490116119384765625f), float(_2867));
                    float3 _2899 = _37_m6[_2740].xyz - _588;
                    float3 _2900 = -_2888;
                    float3 _2905 = lerp(_2899, _2900 * dot(_2899, _2900), (float(_2867 && (_37_m6[_2749].z > 0.5f)) * _2868).xxx);
                    float _2906 = dot(_2905, _2905);
                    float _2907 = rsqrt(_2906);
                    float3 _2908 = _2905 * _2907;
                    float3 _2941;
                    float _2942;
                    if (_2866)
                    {
                        float3 _2912 = (_2888 * _37_m6[_2743].z) * 0.5f;
                        float3 _2913 = _2905 - _2912;
                        float3 _2914 = _2905 + _2912;
                        float _2915 = length(_2913);
                        float _2916 = length(_2914);
                        float3 _2925 = normalize(cross(cross(_2888, _2908), _2888));
                        _2941 = _2925;
                        _2942 = ((1.0f / ((((_2915 * _2916) + dot(_2913, _2914)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2925, _2913) / _2915) + (dot(_2925, _2914) / _2916)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_37_m6[_2743].z * _2907, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2941 = _2908;
                        _2942 = 1.0f;
                    }
                    float _2964;
                    if (_2894 < 0.0f)
                    {
                        float _2952 = _2906 * (_37_m6[_2740].w * _37_m6[_2740].w);
                        float _2955 = clamp(1.0f - (_2952 * _2952), 0.0f, 1.0f);
                        _2964 = lerp(1.0f / (_2906 + 1.0f), _2942, float(_2866)) * (_2955 * _2955);
                    }
                    else
                    {
                        float3 _2958 = _2905 * _37_m6[_2740].w;
                        _2964 = _2942 * pow(1.0f - clamp(dot(_2958, _2958), 0.0f, 1.0f), _2894);
                    }
                    float _2969 = clamp((dot(_2941, _2900) - _37_m6[_2743].z) * _37_m6[_2743].w, 0.0f, 1.0f);
                    float _2972 = _2964 * lerp(1.0f, _2969 * _2969, _2868);
                    int _2974 = int(_37_m6[_2758].w);
                    float _3078;
                    if ((!_2866) && (_2974 >= 0))
                    {
                        uint _2980 = uint(_2974);
                        float2 _3071;
                        [branch]
                        if (_2868 != 0.0f)
                        {
                            float4 _2992 = mul(_67_m1[_2980], float4(_588.x, _660, _588.z, 1.0f));
                            _3071 = _67_m0[_2980].xy + (clamp(_2992.xy / _2992.w.xx, 0.0f.xx, 1.0f.xx) * _67_m0[_2980].zw);
                        }
                        else
                        {
                            float3 _3012 = mul(float4(-_2905, 0.0f), _67_m1[_2980]).xyz;
                            float3 _433 = _3012;
                            float3 _432 = _3012;
                            float3 _431 = abs(_3012);
                            uint _3021 = uint(int(_431.y > _431.x));
                            uint _3027 = (_431.z > _431[_3021]) ? 2u : _3021;
                            uint _3033 = (_3027 * 2u) + uint(_432[_3027] < 0.0f);
                            float _3037 = abs(_433[_3033 / 2u]);
                            float _3057 = 0.5f - (0.000244140625f / _67_m0[_2980].w);
                            _3071 = _67_m0[_2980].xy + (clamp(float2((float(_3033) + ((((_433[uint(_381[_3033].x)] * _382[_3033].x) / _3037) * _3057) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_433[uint(_381[_3033].y)] * _382[_3033].y) / _3037) * _3057)), 0.0f.xx, 1.0f.xx) * _67_m0[_2980].zw);
                        }
                        _3078 = _2972 * _65.SampleLevel(_26, _3071, 0.0f).x;
                    }
                    else
                    {
                        _3078 = _2972;
                    }
                    float _3079 = _3078 * _2837;
                    float3 _3528;
                    do
                    {
                        float3 _3527;
                        [branch]
                        if (_3079 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2867)
                            {
                                _3528 = lerp(_2701, _37_m6[_2737].xyz, (_3079 * (_37_m6[_2749].x * ((1.0f - _37_m6[_2749].w) + (smoothstep(-0.5f, 0.5f, dot(_616, _2941)) * _37_m6[_2749].w)))).xxx);
                                break;
                            }
                            float _3099 = dot(_2068, _2941);
                            float _3100 = clamp(_3099, 0.0f, 1.0f);
                            float _3403;
                            if (_2850 != 0u)
                            {
                                bool _3106 = _2862 || ((_2762 & 2u) != 0u);
                                int _3155;
                                if (_3106)
                                {
                                    _3155 = int(_37_m6[_2746].x);
                                }
                                else
                                {
                                    uint _3112 = asuint(_37_m6[_2743].w);
                                    uint _3114 = asuint(_37_m6[_2746].x);
                                    float3 _3115 = _588 - _37_m6[_2740].xyz;
                                    float3 _3116 = abs(_3115);
                                    float _3117 = _3116.x;
                                    float _3118 = _3116.y;
                                    float _3120 = _3116.z;
                                    int _3152;
                                    if ((_3117 > _3118) && (_3117 > _3120))
                                    {
                                        _3152 = int((_3115.x > 0.0f) ? (_3112 >> 24u) : ((_3112 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3151;
                                        if (_3118 > _3120)
                                        {
                                            _3151 = int((_3115.y > 0.0f) ? ((_3112 >> 8u) & 255u) : (_3112 & 255u));
                                        }
                                        else
                                        {
                                            _3151 = int((_3115.z > 0.0f) ? ((_3114 >> 8u) & 255u) : (_3114 & 255u));
                                        }
                                        _3152 = _3151;
                                    }
                                    _3155 = (_3152 < 80) ? _3152 : (-1);
                                }
                                bool _3156 = _3155 >= 0;
                                float _3402;
                                if (_3156)
                                {
                                    float3 _3160 = _588 - _37_m6[_2740].xyz;
                                    float4 _3180 = mul(_39_m10[_3155], float4((_588 - ((_3160 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3160, _3160)))) * _39_m11[_3155].x)) + (_616 * (_39_m11[_3155].y * 5.0f)), 1.0f));
                                    float _3181 = _3180.w;
                                    float3 _3184 = _3180.xyz / _3181.xxx;
                                    float2 _3185 = _3184.xy;
                                    float3 _3193 = _3184.xyz;
                                    bool3 _3194 = bool3(_3193.x <= 0.0f.xxx.x, _3193.y <= 0.0f.xxx.y, _3193.z <= 0.0f.xxx.z);
                                    bool3 _3195 = bool3(_3193.x >= 1.0f.xxx.x, _3193.y >= 1.0f.xxx.y, _3193.z >= 1.0f.xxx.z);
                                    float _3198 = _3184.z;
                                    float2 _3209 = ((_3185 * (_39_m12[_3155].zw - _39_m12[_3155].xy)) + _39_m12[_3155].xy).xy * _39_m13.zw;
                                    float2 _3211 = floor(_3209 + 0.5f.xx);
                                    float2 _3212 = _3209 - _3211;
                                    float _3214 = _3212.x + 0.5f;
                                    float _3215 = _3214 * _3214;
                                    float _3218 = 1.0f - _3212.x;
                                    float _3219 = min(_3212.x, 0.0f);
                                    float _3222 = _3212.x + 1.0f;
                                    float _3223 = max(_3212.x, 0.0f);
                                    float _3235 = _3212.y + 0.5f;
                                    float _3236 = _3235 * _3235;
                                    float _3239 = 1.0f - _3212.y;
                                    float _3240 = min(_3212.y, 0.0f);
                                    float _3243 = _3212.y + 1.0f;
                                    float _3244 = max(_3212.y, 0.0f);
                                    float3 _3256 = float3(0.1599999964237213134765625f * _3218, 0.1599999964237213134765625f * ((_3222 - (_3223 * _3223)) + 1.0f), _3215 * 0.07999999821186065673828125f);
                                    float3 _3257 = float3(0.1599999964237213134765625f * ((_3215 * 0.5f) - _3212.x), 0.1599999964237213134765625f * ((_3218 - (_3219 * _3219)) + 1.0f), 0.1599999964237213134765625f * _3222) + _3256;
                                    float3 _3259 = float3(0.1599999964237213134765625f * _3239, 0.1599999964237213134765625f * ((_3243 - (_3244 * _3244)) + 1.0f), _3236 * 0.07999999821186065673828125f);
                                    float3 _3260 = float3(0.1599999964237213134765625f * ((_3236 * 0.5f) - _3212.y), 0.1599999964237213134765625f * ((_3239 - (_3240 * _3240)) + 1.0f), 0.1599999964237213134765625f * _3243) + _3259;
                                    float3 _3266 = ((_3256 / _3257) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.xxx;
                                    float3 _3268 = ((_3259 / _3260) + float3(-2.5f, -0.5f, 1.5f)) * _39_m13.yyy;
                                    float2 _3270 = _3211 * _39_m13.xy;
                                    float _3271 = _3266.x;
                                    float _3272 = _3268.x;
                                    float _3275 = _3266.y;
                                    float _3278 = _3266.z;
                                    float _3281 = _3268.y;
                                    float _3288 = _3268.z;
                                    float _3295 = _3257.x;
                                    float _3296 = _3260.x;
                                    float _3298 = _3257.y;
                                    float _3300 = _3257.z;
                                    float _3302 = _3260.y;
                                    float _3306 = _3260.z;
                                    float _3364 = (((((((_3295 * _3296) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3271, _3272), _425).xy, _3198)) + ((_3298 * _3296) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3275, _3272), _425).xy, _3198))) + ((_3300 * _3296) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3278, _3272), _425).xy, _3198))) + ((_3295 * _3302) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3271, _3281), _425).xy, _3198))) + ((_3298 * _3302) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3275, _3281), _425).xy, _3198))) + ((_3300 * _3302) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3278, _3281), _425).xy, _3198))) + ((_3295 * _3306) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3271, _3288), _425).xy, _3198));
                                    float2 _3385 = min(_3185, 1.0f.xx - _3185);
                                    _3402 = _3156 ? lerp(1.0f, (any(bool3(_3194.x || _3195.x, _3194.y || _3195.y, _3194.z || _3195.z)) || ((asuint(_3198) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3364 + ((_3298 * _3306) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3275, _3288), _425).xy, _3198))) + ((_3300 * _3306) * _40.SampleCmpLevelZero(_28, float3(_3270 + float2(_3278, _3288), _425).xy, _3198))), _3106 ? min(_39_m11[_3155].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_39_m11[_3155].z - _3181) * 0.25f, min(_3385.x, _3385.y)))) : _39_m11[_3155].w) : 1.0f;
                                }
                                else
                                {
                                    _3402 = clamp(dot(_595, _2941) + 1.0f, 0.0f, 1.0f);
                                }
                                _3403 = _3402;
                            }
                            else
                            {
                                _3403 = 1.0f;
                            }
                            float _3483;
                            float3 _3484;
                            float _3485;
                            float3 _3486;
                            float3 _3487;
                            float _3488;
                            float _3489;
                            [branch]
                            if (_2850 == 0u)
                            {
                                float3 _3409 = _37_m6[_2737].xyz * _3079;
                                float3 _3422 = _2439.xyz;
                                _3483 = _3079;
                                _3484 = (_37_m6[_2737].xyz * ((1.0f - _37_m6[_2749].y) + ((1.0f / max(1.0f, max(max(_3409.x, _3409.y), _3409.z) * lerp(0.75f, 0.5f, _2597))) * _37_m6[_2749].y))) * lerp(0.25f * _37_m6[_2749].x, 1.0f, clamp(_3099 + 0.5f, 0.0f, 1.0f));
                                _3485 = _3100;
                                _3486 = _3422;
                                _3487 = _3422;
                                _3488 = 1.0f;
                                _3489 = 0.0f;
                            }
                            else
                            {
                                float _3477;
                                float _3478;
                                float3 _3479;
                                float3 _3480;
                                float _3481;
                                float _3482;
                                if (_2850 == 3u)
                                {
                                    _3477 = _3079 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _37_m6[_2749].x), lerp(0.89999997615814208984375f, 0.5f, _37_m6[_2749].x), _2563) * _3403);
                                    _3478 = clamp(dot(_2068, -normalize(cross(_628, cross(_628, _2941)))), 0.0f, 1.0f);
                                    _3479 = lerp(0.5f.xxx, _2233, _37_m6[_2749].y.xxx);
                                    _3480 = 0.0f.xxx;
                                    _3481 = 1.0f;
                                    _3482 = 0.0f;
                                }
                                else
                                {
                                    bool _3447 = _2850 == 1u;
                                    float _3471;
                                    float3 _3472;
                                    float _3473;
                                    float _3474;
                                    if (_3447)
                                    {
                                        _3471 = clamp(clamp(_3099 + _37_m6[_2749].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3403;
                                        _3472 = _2237 * _37_m6[_2749].y;
                                        _3473 = 1.0f;
                                        _3474 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3457 = _2850 == 2u;
                                        float _3469;
                                        if (_3457)
                                        {
                                            _3469 = smoothstep(_37_m6[_2749].x + 0.0500000007450580596923828125f, _37_m6[_2749].x - 0.0500000007450580596923828125f, _2070) * ((1.0f - _37_m6[_2749].z) + (step(0.5f, _2073) * _37_m6[_2749].z));
                                        }
                                        else
                                        {
                                            _3469 = 1.0f;
                                        }
                                        _3471 = _3100;
                                        _3472 = 0.0f.xxx;
                                        _3473 = _3469;
                                        _3474 = _3457 ? _37_m6[_2749].y : 0.0f;
                                    }
                                    bool3 _3475 = _3447.xxx;
                                    _3477 = _3079;
                                    _3478 = _3471;
                                    _3479 = float3(_3475.x ? _2233.x : 0.0f.xxx.x, _3475.y ? _2233.y : 0.0f.xxx.y, _3475.z ? _2233.z : 0.0f.xxx.z);
                                    _3480 = _3472;
                                    _3481 = _3473;
                                    _3482 = _3474;
                                }
                                _3483 = _3477;
                                _3484 = _37_m6[_2737].xyz;
                                _3485 = _3478;
                                _3486 = _3479;
                                _3487 = _3480;
                                _3488 = _3481;
                                _3489 = _3482;
                            }
                            float3 _3517;
                            [branch]
                            if (_2850 != 3u)
                            {
                                float _3494 = lerp(_2239, 0.00999999977648258209228515625f, _3489);
                                float _3497 = dot(_1890, normalize(_2941 + _464));
                                float _3498 = _3494 * _3494;
                                float _3502 = (((_3497 * _3498) - _3497) * _3497) + 1.0f;
                                float _3503 = _3502 * _3502;
                                _3517 = ((_2498 * clamp((((_3498 != _3503) ? (_3498 / _3503) : 1.0f) * (0.5f / ((_2475 + (_3494 * _2477)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3488) * _37_m6[_2758].z;
                            }
                            else
                            {
                                _3517 = 0.0f.xxx;
                            }
                            float3 _3520 = _3484 * _3483;
                            _3527 = _2701 + (((_3520 * lerp(_3487, _3486, _3485.xxx)) * _2513) + ((_3520 * _3517) * _3485));
                        }
                        else
                        {
                            _3527 = _2701;
                        }
                        _3528 = _3527;
                        break;
                    } while(false);
                    _3529 = _3528;
                    break;
                } while(false);
                _3530 = _3529;
            }
            else
            {
                _3530 = _2701;
            }
            _2724 = _3530;
        }
    }
    float3 _3570;
    [branch]
    if (_50_m12 > 0.5f)
    {
        _3570 = lerp(lerp(0.5f.xxx, lerp(dot(_2700, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2700, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_2561, 0.0f, 1.0f))) * _50_m17);
    }
    else
    {
        _3570 = _2700;
    }
    float4 _3577 = float4(_3570 * _20_m20.y, _517);
    _3577.w = (_50_m8 == 1.0f) ? _517 : 1.0f;
    float4 _3964;
    [branch]
    if (_20_m91.w < 0.5f)
    {
        float _3601 = _660 * _20_m46.w;
        float _3606 = max(0.00999999977648258209228515625f, _3601 + _20_m47.w);
        float3 _3620 = exp(_20_m45.xyz * ((-max(0.0f, (_465 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3606)) / _3606) * exp(_3601 + _20_m48.w))));
        float _3623 = dot(_2653, _20_m44.xyz);
        float _3629 = _20_m45.w * _20_m45.w;
        float _3633 = (1.0f + _3629) - ((2.0f * _20_m45.w) * _3623);
        float3 _3956;
        float _3957;
        if (_20_m55.z > 0.0f)
        {
            uint3 _3678 = (uint3(int3(_2304, _2305, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _3679 = _3678.y;
            uint _3680 = _3678.z;
            uint _3683 = _3678.x + (_3679 * _3680);
            uint _3685 = _3679 + (_3680 * _3683);
            uint _3687 = _3680 + (_3683 * _3685);
            uint _3689 = _3683 + (_3685 * _3687);
            float _3714 = dot(_2653, -_18_m0[2].xyz);
            float3 _3721 = _588 - _18_m11.xyz;
            float _3723 = (_20_m55.w * ((_3714 > 5.9604644775390625e-08f) ? (1.0f / _3714) : 0.0f)) * (1.0f / _465);
            float _3724 = _3721.y;
            float _3725 = _3723 * _3724;
            float _3727 = _18_m11.y + _3725;
            float _3728 = _3724 - _3725;
            float _3730 = (1.0f - _3723) * _465;
            float _3744 = max(-127.0f, _20_m49.z * _3728);
            float _3768 = max(-127.0f, _20_m52.x * _3728);
            float _3779 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3727 - _20_m49.x)))) * ((abs(_3744) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3744)) / _3744) : (0.693147182464599609375f - (0.2402265071868896484375f * _3744)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3727 - _20_m52.z)))) * ((abs(_3768) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3768)) / _3768) : (0.693147182464599609375f - (0.2402265071868896484375f * _3768))));
            float _3801 = clamp((_465 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3804 = clamp((max(clamp(exp2(-(_3779 * _3730)), 0.0f, 1.0f), _20_m51.w) + clamp((_465 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3801, 0.0f, 1.0f);
            float4 _3844 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _70.SampleLevel(_26, float3((_2675 + ((((float3(uint3(_3689, _3685 + (_3687 * _3689), _429) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_445 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_445 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3956 = _3844.xyz + (((_20_m51.xyz * (1.0f - _3804)) + (((_20_m54.xyz * pow(clamp(dot(_464, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3779 * max(_3730 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3801))) * _3844.w);
            _3957 = _3844.w * _3804;
        }
        else
        {
            float3 _3850 = _588 - _18_m11.xyz;
            float _3852 = _3850.y;
            float _3866 = max(-127.0f, _20_m49.z * _3852);
            float _3890 = max(-127.0f, _20_m52.x * _3852);
            float _3901 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3866) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3866)) / _3866) : (0.693147182464599609375f - (0.2402265071868896484375f * _3866)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3890) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3890)) / _3890) : (0.693147182464599609375f - (0.2402265071868896484375f * _3890))));
            float _3923 = clamp((_465 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
            float _3926 = clamp((max(clamp(exp2(-(_3901 * _465)), 0.0f, 1.0f), _20_m51.w) + clamp((_465 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3923, 0.0f, 1.0f);
            _3956 = (_20_m51.xyz * (1.0f - _3926)) + (((_20_m54.xyz * pow(clamp(dot(_464, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3901 * max(_465 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3923));
            _3957 = _3926;
        }
        float3 _3962 = (_3577.xyz * (_3620 * _3957)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3623 * _3623)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3629) / max((12.56637096405029296875f * _3633) * sqrt(_3633), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3620)) * _3957) + _3956);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3962 = (_3962 * 0.65f) + (_3577.xyz * 0.35f);

        }
        _3964 = float4(_3962.x, _3962.y, _3962.z, _3577.w);
    }
    else
    {
        _3964 = _3577;
    }
    _15 = _3964;
    _16 = _2269;
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
