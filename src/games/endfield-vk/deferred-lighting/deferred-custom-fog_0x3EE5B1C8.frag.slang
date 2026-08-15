// DX11 0xE31759A4 -> Vulkan 0x3EE5B1C8
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

static float3 _363;
static float _364 = 0.0f;
static float3 _365 = 0.0f;
static float _368 = 0.0f;
static uint _369 = 0u;

static const int2 _338[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _339[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
cbuffer _60_61 : register(b50)
{
    float4 _61_m0[32] : packoffset(c0);
    column_major float4x4 _61_m1[32] : packoffset(c32);
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
[[vk::binding(43, 0)]] Texture2D<float4> _52 : register(t43);
[[vk::binding(42, 0)]] Texture2D<float4> _53 : register(t42);
[[vk::binding(39, 0)]] Texture2D<float4> _54 : register(t39);
[[vk::binding(37, 0)]] Texture2D<float4> _55 : register(t37);
[[vk::binding(5, 1)]] Texture2D<float4> _56 : register(t5);
[[vk::binding(3, 1)]] Texture2D<float4> _57 : register(t3);
[[vk::binding(2, 1)]] Texture2D<float4> _58 : register(t2);
[[vk::binding(29, 0)]] Texture2D<float4> _59 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _64 : register(t36);

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
    float2 _374 = _3;
    float _384 = 1.0f / gl_FragCoord.w;
    float3 _399 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _400 = dot(_399, _399);
    float _402 = rsqrt(max(_400, 9.9999999392252902907785028219223e-09f));
    float3 _403 = _399 * _402;
    float _404 = _400 * _402;
    uint _407 = asuint(_22_m0[_12]._m2.x);
    bool _412 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _429;
    float4 _430;
    float4 _431;
    if (_412)
    {
        _429 = asfloat(_32_Load4((_407 + 2u) * 16 + 0));
        _430 = asfloat(_32_Load4((_407 + 1u) * 16 + 0));
        _431 = asfloat(_32_Load4(_407 * 16 + 0));
    }
    else
    {
        _429 = _22_m0[_12]._m0[2];
        _430 = _22_m0[_12]._m0[1];
        _431 = _22_m0[_12]._m0[0];
    }
    float4 _437 = _56.SampleBias(_26, _374, _19_m16);
    float3 _442 = _437.xyz * _49_m24.xyz;
    float _449 = 1.0f - _49_m0;
    float _450 = _437.w;
    float3 _451 = _442 * 12.9200000762939453125f;
    float3 _455 = (pow(abs(_442), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _456 = bool3(_442.x <= 0.003130800090730190277099609375f.xxx.x, _442.y <= 0.003130800090730190277099609375f.xxx.y, _442.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _458 = clamp(float3(_456.x ? _451.x : _455.x, _456.y ? _451.y : _455.y, _456.z ? _451.z : _455.z), 0.0f.xxx, 1.0f.xxx);
    float _462 = _458.z * 31.0f;
    float _463 = floor(_462);
    float2 _467 = ((_458.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
    float3 _468 = float3(_467.x, _467.y, _458.z);
    _468.x = _467.x + (_463 * 0.03125f);
    float3 _483 = lerp(_51.SampleLevel(_25, _468.xy, 0.0f).xyz, _51.SampleLevel(_25, _468.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_462 - _463).xxx);
    float4 _487 = _58.SampleBias(_25, _374, _19_m16);
    float _489 = _487.y;
    float _490 = _487.z;
    float _491 = _487.w;
    float3 _495 = _4 + _17_m11.xyz;
    float3 _499 = _495 - float3(_431.w, _368, _429.w);
    _499.y = 6.103515625e-05f;
    float3 _502 = normalize(_499);
    float _516 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5));
    float3 _517 = normalize(_5) * _516;
    uint2 _519 = uint2(gl_FragCoord.xy);
    float3 _529 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3x3 _533 = float3x3(_431.xyz, _430.xyz, _429.xyz);
    float3 _534 = mul(_529, _533);
    float2 _540 = normalize((_534 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_534, _534)))).xz);
    float _541 = _540.y;
    uint _550 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _563 = float4(float(_550 & 255u), float((_550 >> 8u) & 255u), float((_550 >> 16u) & 255u), float((_550 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _564 = _563.x;
    float _567 = _563.w;
    float _573 = _495.y;
    float _577 = max(_563.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _573) * _563.y);
    float _578 = max(_564, _577);
    float _586 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float _588 = _517.z;
    float3 _591 = _489.xxx;
    float3 _593 = normalize(lerp(_502, normalize(float3(_517.x, 6.103515625e-05f, _588)), _591));
    float3 _1084;
    float _1085;
    if (_19_m80.y < 0.5f)
    {
        float3 _611 = _495 - (_19_m105.xyz + (_529 * (-_19_m107.w)));
        float _625 = max(clamp((max(abs(_611.x), abs(_611.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_611.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _927;
        float4 _928;
        float4 _929;
        float _930;
        float _931;
        if ((_19_m105.w != 0.0f) && (_625 < 1.0f))
        {
            float3 _638 = _495 - (_19_m105.xyz + (_529 * (-_19_m107.y)));
            float _652 = max(clamp((max(abs(_638.x), abs(_638.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_638.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _728;
            float4 _729;
            float4 _730;
            float4 _731;
            if (_652 < 1.0f)
            {
                float3 _661 = ((_495 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _663 = _661 - floor(_661);
                float4 _667 = _42.SampleLevel(_26, _663, 0.0f);
                float _668 = 1.0f - _652;
                float _672 = _19_m106.y * 0.5f;
                float _677 = _663.x;
                float _678 = clamp(_663.y, _672, 1.0f - _672) * 0.3333333432674407958984375f;
                float _679 = _663.z;
                float4 _682 = _43.SampleLevel(_25, float3(_677, _678, _679), 0.0f);
                float _698 = _667.x;
                float _708 = _667.y;
                float _718 = _667.z;
                _728 = _625 + (_682.w * _668);
                _729 = float4(((_43.SampleLevel(_25, float3(_677, _678 + 0.666666686534881591796875f, _679), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _718, _718) * _668;
                _730 = float4(((_43.SampleLevel(_25, float3(_677, _678 + 0.3333333432674407958984375f, _679), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _708, _708) * _668;
                _731 = float4(((_682.xyz * 4.0f) - 2.0f.xxx) * _698, _698) * _668;
            }
            else
            {
                _728 = _625;
                _729 = 0.0f.xxxx;
                _730 = 0.0f.xxxx;
                _731 = 0.0f.xxxx;
            }
            float3 _737 = _495 - (_19_m105.xyz + (_529 * (-_19_m107.z)));
            float _751 = max(clamp((max(abs(_737.x), abs(_737.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_737.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _831;
            float4 _832;
            float4 _833;
            float4 _834;
            if (_751 < 1.0f)
            {
                float3 _760 = ((_495 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _762 = _760 - floor(_760);
                float4 _766 = _44.SampleLevel(_26, _762, 0.0f);
                float _768 = _652 * (1.0f - _751);
                float _772 = _19_m106.y * 0.5f;
                float _777 = _762.x;
                float _778 = clamp(_762.y, _772, 1.0f - _772) * 0.3333333432674407958984375f;
                float _779 = _762.z;
                float4 _782 = _45.SampleLevel(_25, float3(_777, _778, _779), 0.0f);
                float _798 = _766.x;
                float _809 = _766.y;
                float _820 = _766.z;
                _831 = _728 + (_782.w * _768);
                _832 = _729 + (float4(((_45.SampleLevel(_25, float3(_777, _778 + 0.666666686534881591796875f, _779), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _820, _820) * _768);
                _833 = _730 + (float4(((_45.SampleLevel(_25, float3(_777, _778 + 0.3333333432674407958984375f, _779), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _809, _809) * _768);
                _834 = _731 + (float4(((_782.xyz * 4.0f) - 2.0f.xxx) * _798, _798) * _768);
            }
            else
            {
                _831 = _728;
                _832 = _729;
                _833 = _730;
                _834 = _731;
            }
            float4 _917;
            float4 _918;
            float4 _919;
            float _920;
            if (_751 > 0.0f)
            {
                float3 _843 = ((_495 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _846 = _19_m106.xyz * 0.5f;
                float3 _848 = clamp(_843 - floor(_843), _846, 1.0f.xxx - _846);
                float4 _852 = _46.SampleLevel(_26, _848, 0.0f);
                float _854 = _751 * (1.0f - _625);
                float _858 = _19_m106.y * 0.5f;
                float _863 = _848.x;
                float _864 = clamp(_848.y, _858, 1.0f - _858) * 0.3333333432674407958984375f;
                float _865 = _848.z;
                float4 _868 = _47.SampleLevel(_25, float3(_863, _864, _865), 0.0f);
                float _884 = _852.x;
                float _895 = _852.y;
                float _906 = _852.z;
                _917 = _832 + (float4(((_47.SampleLevel(_25, float3(_863, _864 + 0.666666686534881591796875f, _865), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _906, _906) * _854);
                _918 = _833 + (float4(((_47.SampleLevel(_25, float3(_863, _864 + 0.3333333432674407958984375f, _865), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _895, _895) * _854);
                _919 = _834 + (float4(((_868.xyz * 4.0f) - 2.0f.xxx) * _884, _884) * _854);
                _920 = _831 + (_868.w * _854);
            }
            else
            {
                _917 = _832;
                _918 = _833;
                _919 = _834;
                _920 = _831;
            }
            float _923 = clamp((_920 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _927 = _917;
            _928 = _918;
            _929 = _919;
            _930 = _923 - _625;
            _931 = (_923 + _625) * 0.5f;
        }
        else
        {
            _927 = 0.0f.xxxx;
            _928 = 0.0f.xxxx;
            _929 = 0.0f.xxxx;
            _930 = 0.0f;
            _931 = 1.0f;
        }
        float4 _951 = _929 + float4(_19_m108.x * _931, (_19_m108.y * _931) + ((_19_m108.w * _930) * 0.5f), _19_m108.z * _931, (_19_m108.w * _931) + ((_19_m108.y * _930) * 0.375f));
        float4 _971 = _928 + float4(_19_m109.x * _931, (_19_m109.y * _931) + ((_19_m109.w * _930) * 0.5f), _19_m109.z * _931, (_19_m109.w * _931) + ((_19_m109.y * _930) * 0.375f));
        float4 _991 = _927 + float4(_19_m110.x * _931, (_19_m110.y * _931) + ((_19_m110.w * _930) * 0.5f), _19_m110.z * _931, (_19_m110.w * _931) + ((_19_m110.y * _930) * 0.375f));
        float4 _995 = float4(_593, 1.0f);
        float3 _1001 = max(float3(dot(_951, _995), dot(_971, _995), dot(_991, _995)), 0.0f.xxx) * _586;
        float3 _1009 = ((_951.xyz * 0.2125999927520751953125f) + (_971.xyz * 0.715200006961822509765625f)) + (_991.xyz * 0.072200000286102294921875f);
        float3 _1013 = _1009 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1009, _1009)));
        float4 _1018 = float4(_1013.x, abs(_1013.y), _1013.z, 1.0f);
        float3 _1023 = max(float3(dot(_951, _1018), dot(_971, _1018), dot(_991, _1018)), 0.0f.xxx);
        float _1031 = _1001.z;
        float _1032 = _1001.y;
        float4 _1037 = lerp(float4(_1031, _1032, -1.0f, 0.666666686534881591796875f), float4(_1032, _1031, 0.0f, -0.3333333432674407958984375f), step(_1031, _1032).xxxx);
        float _1038 = _1001.x;
        float _1039 = _1037.x;
        float4 _1047 = lerp(float4(_1039, _1037.yw, _1038), float4(_1038, _1037.yz, _1039), step(_1039, _1038).xxxx);
        float _1048 = _1047.x;
        float _1049 = _1047.w;
        float _1050 = _1047.y;
        float _1052 = _1048 - min(_1049, _1050);
        float _1062 = frac(abs(_1047.z + ((_1049 - _1050) / ((6.0f * _1052) + 9.9999997473787516355514526367188e-05f))));
        float _1069 = min(_1052 / (_1048 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1062 - 0.5f))) * clamp(_1048, 0.0f, 1.0f));
        float _1071 = 2.0f / (2.0f - _1069);
        _1084 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1062, _1069, _1071).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1069.xxx) * _1071;
        _1085 = max(max(max(_1023.x, _1023.y), _1023.z), 0.0f) * _586;
    }
    else
    {
        _1084 = _19_m82.xyz;
        _1085 = _586;
    }
    float _1104 = _487.x * lerp(clamp(_541 + 0.5f, 0.0f, 1.0f), 1.0f, _489);
    float _1118 = clamp((1.0f - clamp((clamp(dot(_517, _403), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1104 * lerp(_49_m31, _49_m30, _490)), 0.0f, 1.0f);
    float3 _1126 = _442 * ((1.0f - _1118).xxx + (_49_m34.xyz * _1118));
    float _1127 = lerp(0.0f, _49_m1, _489);
    float _1213;
    float _1214;
    float3 _1215;
    float _1216;
    float _1217;
    [branch]
    if ((clamp(_564 + _577, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
    {
        float _1140 = _19_m10.x * 0.800000011920928955078125f;
        float4 _1145 = _52.SampleBias(_26, _374 + float2(0.0f, frac(_1140)), _19_m16);
        float4 _1159 = float4(_1145.xy, _52.SampleBias(_26, _374 + float2(0.0f, frac(_1140 + 0.004999999888241291046142578125f)), _19_m16).w, _1145.w);
        float4 _1163 = _53.SampleBias(_26, _374, _19_m16);
        float _1164 = _1163.z;
        float2 _1166 = _1159.zw * _1164;
        float _1168 = _1166.y;
        float2 _1171 = (_1159.xy * 2.0f) - 1.0f.xx;
        float _1172 = _1166.x;
        float _1175 = clamp(_1172 + _1168, 0.0f, 1.0f) * _578;
        float _1176 = (_1145.z * _1164) * _578;
        float3 _1179 = float3(_1171, 0.0f);
        float2 _1180 = _1179.xy;
        _1179.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1180, _1180), 0.0f, 1.0f)));
        float _1194 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1171.y * 0.5f) + 0.5f), 1.0f, clamp(_1172 - _1168, 0.0f, 1.0f));
        _1213 = lerp(_1127, 3.0f, clamp((_1175 * 2.0f) + _1176, 0.0f, 1.0f) * _578);
        _1214 = _450 * ((1.0f - _1175) + (lerp((1.0f - _1194) + (0.800000011920928955078125f * _1194), 0.89999997615814208984375f, _489) * _1175));
        _1215 = normalize(mul(_1179, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _516;
        _1216 = lerp(_449, 0.5f, _578);
        _1217 = clamp(clamp(_1175 + _1176, 0.0f, 1.0f), 0.0f, 1.0f);
    }
    else
    {
        _1213 = _1127;
        _1214 = _450;
        _1215 = _517;
        _1216 = _449;
        _1217 = 0.0f;
    }
    float3 _1377;
    float _1378;
    float _1379;
    float3 _1380;
    float3 _1381;
    float _1382;
    [branch]
    if (_567 > 0.00999999977648258209228515625f)
    {
        bool3 _1221 = _412.xxx;
        float3 _1223 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1224 = float3(_1221.x ? _1223.x : _10.x, _1221.y ? _1223.y : _10.y, _1221.z ? _1223.z : _10.z);
        float3 _1227 = _1224 * _19_m89.z;
        float3 _1229 = float3(_1221.x ? _9.xzy.x : _9.x, _1221.y ? _9.xzy.y : _9.y, _1221.z ? _9.xzy.z : _9.z);
        float3 _1231 = abs(_1229) - 0.20000000298023223876953125f.xxx;
        float3 _1234 = max((_1231 * _1231) * _1231, 6.103515625e-05f.xxx);
        float3 _1237 = _1234 / dot(_1234, 1.0f.xxx).xxx;
        float _1253 = _1237.y;
        float _1255 = _1237.z;
        float _1258 = _1237.x;
        float4 _1260 = ((_54.SampleBias(_26, _1227.xz, _19_m16) * _1253) + (_54.SampleBias(_26, _1227.xy, _19_m16) * _1255)) + (_54.SampleBias(_26, _1227.zy, _19_m16) * _1258);
        float _1268 = clamp(_567 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1224.y) * clamp(_567 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1281 = smoothstep(2.0f - _1268, 2.349999904632568359375f - _1268, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1229.y) + _1260.z) * 0.60000002384185791015625f, _489 * _1104)) * ((_1214 * _1214) * float(gl_FrontFacing));
        float3 _1283 = _1281.xxx;
        float2 _1289 = (_1260.xy * 2.0f) - 1.0f.xx;
        float3 _1290 = float3(_1289.x, _1289.y, _365.z);
        float2 _1291 = _1289.xy;
        _1290.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1291, _1291), 0.0f, 1.0f)));
        float2 _1299 = _1290.xy * 2.0f;
        float3 _1301 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1299.x, _1299.y, _1290.z), _1283);
        float3 _1305 = _1301 * rsqrt(max(6.103515625e-05f, dot(_1301, _1301)));
        float _1306 = _517.y;
        float _1309 = step(0.00999999977648258209228515625f, 1.0f - (_1306 * _1306));
        float _1312 = lerp(_588, _1306, _1309);
        float3 _1319 = (float3(0.0f, _1309, 1.0f - _1309) - (_517 * _1312)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1312 * _1312)));
        float3 _1333 = _1227 * 4.0f;
        float4 _1353 = ((_55.SampleLevel(_24, _1333.xz, 0.0f) * _1253) + (_55.SampleLevel(_24, _1333.xy, 0.0f) * _1255)) + (_55.SampleLevel(_24, _1333.zy, 0.0f) * _1258);
        float2 _1356 = (_1353.xz * 2.0f) - 1.0f.xx;
        float _1367 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_1356.x, _1353.y, _1356.y), (floor(_403 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _1368 = _1367 * _1367;
        float _1371 = _1368 * ((_1368 * 2.0f) * _1281);
        float3 _1372 = 1.0f.xxx * _1371;
        _1377 = ((cross(_1319, _517) * _1305.x) + (_1319 * _1305.y)) + (_517 * _1305.z);
        _1378 = _1371;
        _1379 = lerp(lerp(_1216, 0.89999997615814208984375f, clamp(_1281 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1371);
        _1380 = lerp(_483 * 1.0f, 0.3079999983310699462890625f.xxx, _1283) + (_1372 * 0.5f);
        _1381 = lerp(_1126 * 1.0f, 0.87999999523162841796875f.xxx, _1283) + _1372;
        _1382 = lerp(_49_m2, 0.0f, _1281);
    }
    else
    {
        _1377 = _517;
        _1378 = 0.0f;
        _1379 = _1216;
        _1380 = _483;
        _1381 = _1126;
        _1382 = _49_m2;
    }
    float _1384 = 0.959999978542327880859375f - (_1382 * 0.959999978542327880859375f);
    float3 _1385 = _1381 * _1384;
    float3 _1388 = lerp(0.039999999105930328369140625f.xxx * _1213, _1381, _1382.xxx);
    float3 _1389 = _1380 * _1384;
    float _1391 = max(_1379 * _1379, 0.0078125f);
    float2 _1404 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _1404.y = -_1404.y;
    float2 _1417 = ((sqrt(sqrt(abs(_1404 * 0.5f))) * float2(int2(sign(_1404)))) * 0.5f) + 0.5f.xx;
    float4 _1420 = float4(_1417.x, _1417.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1420.z = 1.0f;
    _1420.w = (_1378 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1433 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1447 = lerp(_36_m3.xyz, _19_m83.xyz, _19_m91.y.xxx);
    float3 _1451 = _1447 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _1455 = int(_519.x);
    int _1456 = int(_519.y);
    float4 _1460 = _40.Load(int3(int3(_1455, _1456, 0).xy, 0));
    float _1465 = _1460.y;
    float _1468 = lerp(lerp(1.0f, _1460.x, _38_m6.x), 1.0f, _19_m80.z);
    float3 _1476 = _1389 * _19_m79.z;
    float3 _1477 = _1476 * 0.64999997615814208984375f;
    float3 _1491 = mul(_1433, _533);
    float3 _1492 = float3(_1491.x, _1491.y, _1491.z);
    _1492.y = 6.103515625e-05f;
    float3 _1494 = normalize(_1492);
    float _1497 = float(_1494.x > 0.0f);
    float2 _1501 = _374;
    _1501.x = lerp(1.0f - _374.x, _374.x, _1497);
    float4 _1505 = _57.SampleLevel(_25, _1501, 0.0f);
    float _1507 = _1505.z * 2.0f;
    float _1510 = lerp(1.0f - _1507, _1507 - 1.0f, _1497);
    float3 _1515 = mul(_533, normalize(float3(_1510, 6.103515625e-05f, 1.0f - abs(_1510))));
    float3 _1522 = normalize(lerp((_1515 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1515, _1515)))).xyz, _1377, _591));
    float _1523 = _1505.w;
    float _1524 = _1494.z;
    float _1525 = -_1524;
    float _1540 = lerp(_1524, (_1525 * ((_1524 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1433.x, 6.103515625e-05f, _1433.z)).xz, normalize(_529.xz)), 0.0f, 1.0f) * clamp(_1525, 0.0f, 1.0f)) * (1.0f - _19_m91.x)) * 0.5f;
    float _1542 = clamp(0.5f - _1540, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float _1548 = (_1505.x + _1505.y) * 0.5f;
    float _1559 = _19_m94.z * 0.5f;
    float _1561 = clamp(0.5f - _1559, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float4 _1582 = _50.SampleLevel(_25, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1542 - (1.0f - _1542), 0.0f), min(_1542 + _1542, 1.0f), _1548)) - (_1540 * ceil(_1540)))), clamp(dot(_1377, _1433) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f), _489) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _1583 = _1582.w;
    float _1585 = _1582.x;
    float _1586 = _1582.y;
    float _1587 = _1582.z;
    float _1592 = max(max(_1585, _1586), _1587) - min(min(_1585, _1586), _1587);
    float _1595 = max(_489, _490 * smoothstep(0.75f, 0.25f, _541));
    float _1598 = (1.0f - _1595) + (_1465 * _1595);
    float _1599 = 1.0f - _489;
    float _1608 = min(min(_1598, _1214), _1583);
    float _1609 = _1214 * _1598;
    float3 _1613 = ((clamp(dot(_593, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1084, 1.0f.xxx, (_19_m80.y * _1608).xxx);
    float3 _1615 = _1608.xxx;
    float3 _1638 = _1468.xxx;
    float3 _1639 = lerp((_1613 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1085), 1.5f), clamp(_1085, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1451, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1451, _1615) + ((_1613 * clamp(_1085, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1447 * _19_m91.y)))) * _19_m79.y, _1638);
    float3 _1640 = lerp(lerp(lerp(dot(_1477, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1477, 1.2000000476837158203125f.xxx), _1476, clamp((_1214 * (_1599 + (_1598 * _489))) + _1583, 0.0f, 1.0f).xxx), _1385, _1615);
    float3 _1646 = _1640 * ((1.0f - _1592).xxx + (_1582.xyz * _1592));
    float3 _1655 = lerp(lerp(_1476, lerp(dot(_1385, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1385, 1.2000000476837158203125f.xxx), _1609.xxx), _1646 * clamp(dot(_1640, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1646, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1638);
    float4 _1659 = float4(_1655, _1468);
    float _1661 = lerp(_1609, _1608, _1468);
    float3 _1672 = float3(_529.x, lerp(0.5f, _1433.y, _1468), _529.z);
    float _1685 = clamp(dot(_1215, _403), 0.0f, 1.0f);
    float _1686 = dot(_1215, normalize(((_1433 * _1468) + ((_1672 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1672, _1672)))) * 2.0f)) + (_403 * (2.0f + _1468))));
    float _1687 = _1391 * _1391;
    float _1691 = (((_1686 * _1687) - _1686) * _1686) + 1.0f;
    float _1692 = _1691 * _1691;
    float _1696 = 2.0f * _1685;
    float _1698 = (1.0f + _1685) - _1685;
    float3 _1739;
    if (_1217 > 0.001000000047497451305389404296875f)
    {
        _1739 = ((_53.SampleBias(_25, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1215)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1598) * (clamp(_1085, 0.5f, 1.5f) * _19_m79.w)) * (_1217 * _1217);
    }
    else
    {
        _1739 = 0.0f.xxx;
    }
    float3 _1742 = ((_1639 * _1655) * 1.0f) + ((((_1388 * clamp((((_1687 != _1692) ? (_1687 / _1692) : 1.0f) * (0.5f / ((_1696 + (_1391 * _1698)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1639 * (((_1661 * 0.5f) + 0.5f) * lerp(_19_m79.z, 1.0f, _1661))) * 1.0f)) * _19_m92.w) + _1739);
    float _1743 = dot(_1742, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1746 = clamp(_1743 - 0.5f, 0.0f, 0.5f);
    float3 _1782 = normalize(cross(_529, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1788 = dot(_403, _1522);
    float _1790 = 1.0f - abs(_1788);
    float _1795 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_541));
    float3 _1834 = lerp(_1743.xxx, _1742, ((_1746 * _1746) + 1.0f).xxx) + (((((_19_m87.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1790) * _1795, max(_1795, float(dot(_529, _1782) < (-0.00999999977648258209228515625f))) * _491, clamp((_19_m88.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m87.w) * min(min(clamp(dot(_502, _1782) + 1.0f, 0.0f, 1.0f), _1214), _1465)) * (lerp(0.25f.xxx, _1385, _19_m88.z.xxx) * clamp(dot(_1782, _1522), 0.0f, 1.0f))) + (((_19_m93.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1561 - (1.0f - _1561), 0.0f), min(_1561 + _1561, 1.0f), _1548)) - (_1559 * ceil(_1559))))) * _1599)) * _19_m93.w) * _1385));
    float2 _1835 = float2(_519);
    float2 _1837 = floor(_1835 * 0.03125f);
    int _1845 = int((_1837.x + (_1837.y * _34_m5)) * 8.0f);
    float _1852 = floor(_384 - (_19_m3.y * _34_m11));
    float _1856 = clamp(_1852, 0.0f, _34_m7 - 1.0f);
    int _1858 = int(_1856 * 8.0f);
    float3 _1860;
    _1860 = _1834;
    float3 _1861;
    [loop]
    for (int _1863 = 0; _1863 <= 7; _1860 = _1861, _1863++)
    {
        uint _1881 = (_1852 <= _1856) ? (_30.Load(uint(_1845 + _1863) * 4 + 0) & _30.Load(uint((_19_m21.y + _1858) + _1863) * 4 + 0)) : 0u;
        uint _1882 = uint(_1863);
        _1861 = _1860;
        uint _1887;
        float3 _1884;
        [loop]
        for (uint _1886 = _1881; _1886 != 0u; _1861 = _1884, _1886 = _1887)
        {
            uint _1891 = firstbitlow(_1886);
            _1887 = _1886 ^ (1u << (_1891 & 31u));
            int _1897 = int((32u * _1882) + _1891) * 8;
            int _1900 = _1897 + 1;
            int _1903 = _1897 + 2;
            int _1906 = _1897 + 3;
            int _1909 = _1897 + 4;
            int _1912 = _1897 + 5;
            int _1915 = _1897 + 6;
            int _1918 = _1897 + 7;
            uint _1922 = uint(_36_m6[_1912].w);
            float _1997;
            if ((_1922 & 1u) == 1u)
            {
                uint _1928 = asuint(_36_m6[_1912].x);
                uint _1935 = asuint(_36_m6[_1912].y);
                uint _1942 = asuint(_36_m6[_1912].z);
                uint _1949 = asuint(_36_m6[_1915].x);
                uint _1956 = asuint(_36_m6[_1915].y);
                uint _1963 = asuint(_36_m6[_1915].z);
                float3 _1982 = abs(mul(float4(_495 - _36_m6[_1900].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1928).x, spvUnpackHalf2x16(_1942).x, spvUnpackHalf2x16(_1956).x, 0.0f), float4(spvUnpackHalf2x16(_1928 >> 16u).x, spvUnpackHalf2x16(_1942 >> 16u).x, spvUnpackHalf2x16(_1956 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1935).x, spvUnpackHalf2x16(_1949).x, spvUnpackHalf2x16(_1963).x, 0.0f), float4(spvUnpackHalf2x16(_1935 >> 16u).x, spvUnpackHalf2x16(_1949 >> 16u).x, spvUnpackHalf2x16(_1963 >> 16u).x, 0.0f))).xyz);
                float _1989 = _36_m6[_1918].x * 0.5f;
                float _1995 = 1.0f - clamp((max(max(_1982.x, _1982.y), _1982.z) - (_1989 + 0.5f)) / (0.5f - _1989), 0.0f, 1.0f);
                _1997 = _1995 * _1995;
            }
            else
            {
                _1997 = 1.0f;
            }
            if (false || (_1997 < 0.001000000047497451305389404296875f))
            {
                _1884 = _1861;
                continue;
            }
            float3 _2714;
            if (_36_m6[_1897].w < 1.5f)
            {
                float3 _2713;
                do
                {
                    uint _2010 = asuint(_36_m6[_1906].w);
                    if ((_2010 == 16u) || ((_36_m6[_1906].z + _19_m91.z) < 0.5f))
                    {
                        _2713 = _1861;
                        break;
                    }
                    bool _2022 = (uint(_36_m6[_1897].w) & 1u) == 0u;
                    bool _2026 = (!_2022) && (_36_m6[_1903].z > 0.0f);
                    bool _2027 = _2010 == 4u;
                    float _2028 = float(_2022);
                    float _2036 = (0.5f + (0.5f * _36_m6[_1903].y)) - abs(_36_m6[_1903].x);
                    float _2037 = _36_m6[_1903].y - _2036;
                    float _2044 = abs(max((1.0f - abs(_2036)) - abs(_2037), 0.00048828125f));
                    float3 _2048 = normalize(float3(_2036, _2037, (_36_m6[_1903].x >= 0.0f) ? _2044 : (-_2044)));
                    float _2054 = lerp(_36_m6[_1915].w, max(2.0f * _36_m6[_1909].y, 0.100000001490116119384765625f), float(_2027));
                    float3 _2059 = _36_m6[_1900].xyz - _495;
                    float3 _2060 = -_2048;
                    float3 _2065 = lerp(_2059, _2060 * dot(_2059, _2060), (float(_2027 && (_36_m6[_1909].z > 0.5f)) * _2028).xxx);
                    float _2066 = dot(_2065, _2065);
                    float _2067 = rsqrt(_2066);
                    float3 _2068 = _2065 * _2067;
                    float3 _2101;
                    float _2102;
                    if (_2026)
                    {
                        float3 _2072 = (_2048 * _36_m6[_1903].z) * 0.5f;
                        float3 _2073 = _2065 - _2072;
                        float3 _2074 = _2065 + _2072;
                        float _2075 = length(_2073);
                        float _2076 = length(_2074);
                        float3 _2085 = normalize(cross(cross(_2048, _2068), _2048));
                        _2101 = _2085;
                        _2102 = ((1.0f / ((((_2075 * _2076) + dot(_2073, _2074)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2085, _2073) / _2075) + (dot(_2085, _2074) / _2076)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_1903].z * _2067, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2101 = _2068;
                        _2102 = 1.0f;
                    }
                    float _2124;
                    if (_2054 < 0.0f)
                    {
                        float _2118 = _2066 * (_36_m6[_1900].w * _36_m6[_1900].w);
                        float _2121 = clamp(1.0f - (_2118 * _2118), 0.0f, 1.0f);
                        _2124 = lerp(1.0f / (_2066 + 1.0f), _2102, float(_2026)) * (_2121 * _2121);
                    }
                    else
                    {
                        float3 _2107 = _2065 * _36_m6[_1900].w;
                        _2124 = _2102 * pow(1.0f - clamp(dot(_2107, _2107), 0.0f, 1.0f), _2054);
                    }
                    float _2129 = clamp((dot(_2101, _2060) - _36_m6[_1903].z) * _36_m6[_1903].w, 0.0f, 1.0f);
                    float _2132 = _2124 * lerp(1.0f, _2129 * _2129, _2028);
                    int _2134 = int(_36_m6[_1918].w);
                    float _2238;
                    if ((!_2026) && (_2134 >= 0))
                    {
                        uint _2140 = uint(_2134);
                        float2 _2231;
                        [branch]
                        if (_2028 != 0.0f)
                        {
                            float4 _2221 = mul(_61_m1[_2140], float4(_495.x, _573, _495.z, 1.0f));
                            _2231 = _61_m0[_2140].xy + (clamp(_2221.xy / _2221.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2140].zw);
                        }
                        else
                        {
                            float3 _2155 = mul(float4(-_2065, 0.0f), _61_m1[_2140]).xyz;
                            float3 _373 = _2155;
                            float3 _372 = _2155;
                            float3 _371 = abs(_2155);
                            uint _2164 = uint(int(_371.y > _371.x));
                            uint _2170 = (_371.z > _371[_2164]) ? 2u : _2164;
                            uint _2176 = (_2170 * 2u) + uint(_372[_2170] < 0.0f);
                            float _2180 = abs(_373[_2176 / 2u]);
                            float _2200 = 0.5f - (0.000244140625f / _61_m0[_2140].w);
                            _2231 = _61_m0[_2140].xy + (clamp(float2((float(_2176) + ((((_373[uint(_338[_2176].x)] * _339[_2176].x) / _2180) * _2200) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_373[uint(_338[_2176].y)] * _339[_2176].y) / _2180) * _2200)), 0.0f.xx, 1.0f.xx) * _61_m0[_2140].zw);
                        }
                        _2238 = _2132 * _59.SampleLevel(_25, _2231, 0.0f).x;
                    }
                    else
                    {
                        _2238 = _2132;
                    }
                    float _2239 = _2238 * _1997;
                    float3 _2712;
                    do
                    {
                        float3 _2711;
                        [branch]
                        if (_2239 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2027)
                            {
                                _2712 = lerp(_1861, _36_m6[_1897].xyz, (_2239 * (_36_m6[_1909].x * ((1.0f - _36_m6[_1909].w) + (smoothstep(-0.5f, 0.5f, dot(_517, _2101)) * _36_m6[_1909].w)))).xxx);
                                break;
                            }
                            float _2259 = dot(_1522, _2101);
                            float _2260 = clamp(_2259, 0.0f, 1.0f);
                            float _2563;
                            if (_2010 != 0u)
                            {
                                bool _2266 = _2022 || ((_1922 & 2u) != 0u);
                                int _2315;
                                if (_2266)
                                {
                                    _2315 = int(_36_m6[_1906].x);
                                }
                                else
                                {
                                    uint _2270 = asuint(_36_m6[_1903].w);
                                    uint _2272 = asuint(_36_m6[_1906].x);
                                    float3 _2273 = _495 - _36_m6[_1900].xyz;
                                    float3 _2274 = abs(_2273);
                                    float _2275 = _2274.x;
                                    float _2276 = _2274.y;
                                    float _2278 = _2274.z;
                                    int _2310;
                                    if ((_2275 > _2276) && (_2275 > _2278))
                                    {
                                        _2310 = int((_2273.x > 0.0f) ? (_2270 >> 24u) : ((_2270 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2302;
                                        if (_2276 > _2278)
                                        {
                                            _2302 = int((_2273.y > 0.0f) ? ((_2270 >> 8u) & 255u) : (_2270 & 255u));
                                        }
                                        else
                                        {
                                            _2302 = int((_2273.z > 0.0f) ? ((_2272 >> 8u) & 255u) : (_2272 & 255u));
                                        }
                                        _2310 = _2302;
                                    }
                                    _2315 = (_2310 < 80) ? _2310 : (-1);
                                }
                                bool _2316 = _2315 >= 0;
                                float _2562;
                                if (_2316)
                                {
                                    float3 _2323 = _495 - _36_m6[_1900].xyz;
                                    float4 _2343 = mul(_38_m10[_2315], float4((_495 - ((_2323 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2323, _2323)))) * _38_m11[_2315].x)) + (_517 * (_38_m11[_2315].y * 5.0f)), 1.0f));
                                    float _2344 = _2343.w;
                                    float3 _2347 = _2343.xyz / _2344.xxx;
                                    float2 _2348 = _2347.xy;
                                    float3 _2356 = _2347.xyz;
                                    bool3 _2357 = bool3(_2356.x <= 0.0f.xxx.x, _2356.y <= 0.0f.xxx.y, _2356.z <= 0.0f.xxx.z);
                                    bool3 _2358 = bool3(_2356.x >= 1.0f.xxx.x, _2356.y >= 1.0f.xxx.y, _2356.z >= 1.0f.xxx.z);
                                    float _2361 = _2347.z;
                                    float2 _2372 = ((_2348 * (_38_m12[_2315].zw - _38_m12[_2315].xy)) + _38_m12[_2315].xy).xy * _38_m13.zw;
                                    float2 _2374 = floor(_2372 + 0.5f.xx);
                                    float2 _2375 = _2372 - _2374;
                                    float _2377 = _2375.x + 0.5f;
                                    float _2378 = _2377 * _2377;
                                    float _2381 = 1.0f - _2375.x;
                                    float _2382 = min(_2375.x, 0.0f);
                                    float _2385 = _2375.x + 1.0f;
                                    float _2386 = max(_2375.x, 0.0f);
                                    float _2398 = _2375.y + 0.5f;
                                    float _2399 = _2398 * _2398;
                                    float _2402 = 1.0f - _2375.y;
                                    float _2403 = min(_2375.y, 0.0f);
                                    float _2406 = _2375.y + 1.0f;
                                    float _2407 = max(_2375.y, 0.0f);
                                    float3 _2419 = float3(0.1599999964237213134765625f * _2381, 0.1599999964237213134765625f * ((_2385 - (_2386 * _2386)) + 1.0f), _2378 * 0.07999999821186065673828125f);
                                    float3 _2420 = float3(0.1599999964237213134765625f * ((_2378 * 0.5f) - _2375.x), 0.1599999964237213134765625f * ((_2381 - (_2382 * _2382)) + 1.0f), 0.1599999964237213134765625f * _2385) + _2419;
                                    float3 _2422 = float3(0.1599999964237213134765625f * _2402, 0.1599999964237213134765625f * ((_2406 - (_2407 * _2407)) + 1.0f), _2399 * 0.07999999821186065673828125f);
                                    float3 _2423 = float3(0.1599999964237213134765625f * ((_2399 * 0.5f) - _2375.y), 0.1599999964237213134765625f * ((_2402 - (_2403 * _2403)) + 1.0f), 0.1599999964237213134765625f * _2406) + _2422;
                                    float3 _2429 = ((_2419 / _2420) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _2431 = ((_2422 / _2423) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _2433 = _2374 * _38_m13.xy;
                                    float _2434 = _2429.x;
                                    float _2435 = _2431.x;
                                    float _2438 = _2429.y;
                                    float _2441 = _2429.z;
                                    float _2444 = _2431.y;
                                    float _2451 = _2431.z;
                                    float _2458 = _2420.x;
                                    float _2459 = _2423.x;
                                    float _2461 = _2420.y;
                                    float _2463 = _2420.z;
                                    float _2465 = _2423.y;
                                    float _2469 = _2423.z;
                                    float _2527 = (((((((_2458 * _2459) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2434, _2435), _364).xy, _2361)) + ((_2461 * _2459) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2438, _2435), _364).xy, _2361))) + ((_2463 * _2459) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2441, _2435), _364).xy, _2361))) + ((_2458 * _2465) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2434, _2444), _364).xy, _2361))) + ((_2461 * _2465) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2438, _2444), _364).xy, _2361))) + ((_2463 * _2465) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2441, _2444), _364).xy, _2361))) + ((_2458 * _2469) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2434, _2451), _364).xy, _2361));
                                    float2 _2548 = min(_2348, 1.0f.xx - _2348);
                                    _2562 = _2316 ? lerp(1.0f, (any(bool3(_2357.x || _2358.x, _2357.y || _2358.y, _2357.z || _2358.z)) || ((asuint(_2361) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2527 + ((_2461 * _2469) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2438, _2451), _364).xy, _2361))) + ((_2463 * _2469) * _39.SampleCmpLevelZero(_27, float3(_2433 + float2(_2441, _2451), _364).xy, _2361))), _2266 ? min(_38_m11[_2315].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2315].z - _2344) * 0.25f, min(_2548.x, _2548.y)))) : _38_m11[_2315].w) : 1.0f;
                                }
                                else
                                {
                                    _2562 = clamp(dot(_502, _2101) + 1.0f, 0.0f, 1.0f);
                                }
                                _2563 = _2562;
                            }
                            else
                            {
                                _2563 = 1.0f;
                            }
                            float _2667;
                            float3 _2668;
                            float _2669;
                            float3 _2670;
                            float3 _2671;
                            float _2672;
                            float _2673;
                            [branch]
                            if (_2010 == 0u)
                            {
                                float3 _2641 = _36_m6[_1897].xyz * _2239;
                                float3 _2654 = _1659.xyz;
                                _2667 = _2239;
                                _2668 = (_36_m6[_1897].xyz * ((1.0f - _36_m6[_1909].y) + ((1.0f / max(1.0f, max(max(_2641.x, _2641.y), _2641.z) * lerp(0.75f, 0.5f, 1.0f - _1468))) * _36_m6[_1909].y))) * lerp(0.5f * _36_m6[_1909].x, 1.0f, clamp(dot(normalize(lerp(float3(_502.x, 6.103515625e-05f, _502.z), _1522, _591)), _2101) + 0.5f, 0.0f, 1.0f));
                                _2669 = _2260;
                                _2670 = _2654;
                                _2671 = _2654;
                                _2672 = 1.0f;
                                _2673 = 0.0f;
                            }
                            else
                            {
                                float _2633;
                                float _2634;
                                float3 _2635;
                                float3 _2636;
                                float _2637;
                                float _2638;
                                if (_2010 == 3u)
                                {
                                    float3 _2613 = -normalize(cross(_529, cross(_529, _2101)));
                                    _2633 = _2239 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_1909].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_1909].x), _1790) * _1795, max(_1795, float(dot(_529, _2613) < (-0.00999999977648258209228515625f))) * _491, clamp((_36_m6[_1909].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2563);
                                    _2634 = clamp(dot(_1522, _2613), 0.0f, 1.0f);
                                    _2635 = lerp(0.5f.xxx, _1385, _36_m6[_1909].y.xxx);
                                    _2636 = 0.0f.xxx;
                                    _2637 = 1.0f;
                                    _2638 = 0.0f;
                                }
                                else
                                {
                                    bool _2572 = _2010 == 1u;
                                    float _2603;
                                    float3 _2604;
                                    float _2605;
                                    float _2606;
                                    if (_2572)
                                    {
                                        _2603 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1523 - _36_m6[_1909].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _489), clamp(_2259 + _36_m6[_1909].x, -1.0f, 1.0f) + (_36_m6[_1909].z * _1599)) * _2563);
                                        _2604 = _1389 * _36_m6[_1909].y;
                                        _2605 = 1.0f;
                                        _2606 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2576 = _2010 == 2u;
                                        float _2588;
                                        if (_2576)
                                        {
                                            _2588 = smoothstep(_36_m6[_1909].x + 0.0500000007450580596923828125f, _36_m6[_1909].x - 0.0500000007450580596923828125f, _1379) * ((1.0f - _36_m6[_1909].z) + (step(0.5f, _1382) * _36_m6[_1909].z));
                                        }
                                        else
                                        {
                                            _2588 = 1.0f;
                                        }
                                        _2603 = _2260;
                                        _2604 = 0.0f.xxx;
                                        _2605 = _2588;
                                        _2606 = _2576 ? _36_m6[_1909].y : 0.0f;
                                    }
                                    bool3 _2607 = _2572.xxx;
                                    _2633 = _2239;
                                    _2634 = _2603;
                                    _2635 = float3(_2607.x ? _1385.x : 0.0f.xxx.x, _2607.y ? _1385.y : 0.0f.xxx.y, _2607.z ? _1385.z : 0.0f.xxx.z);
                                    _2636 = _2604;
                                    _2637 = _2605;
                                    _2638 = _2606;
                                }
                                _2667 = _2633;
                                _2668 = _36_m6[_1897].xyz;
                                _2669 = _2634;
                                _2670 = _2635;
                                _2671 = _2636;
                                _2672 = _2637;
                                _2673 = _2638;
                            }
                            float3 _2701;
                            [branch]
                            if (_2010 != 3u)
                            {
                                float _2678 = lerp(_1391, 0.00999999977648258209228515625f, _2673);
                                float _2681 = dot(_1215, normalize(_2101 + _403));
                                float _2682 = _2678 * _2678;
                                float _2686 = (((_2681 * _2682) - _2681) * _2681) + 1.0f;
                                float _2687 = _2686 * _2686;
                                _2701 = ((_1388 * clamp((((_2682 != _2687) ? (_2682 / _2687) : 1.0f) * (0.5f / ((_1696 + (_2678 * _1698)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2672) * _36_m6[_1918].z;
                            }
                            else
                            {
                                _2701 = 0.0f.xxx;
                            }
                            float3 _2704 = _2668 * _2667;
                            _2711 = _1861 + (((_2704 * lerp(_2671, _2670, _2669.xxx)) * 1.0f) + ((_2704 * _2701) * _2669));
                        }
                        else
                        {
                            _2711 = _1861;
                        }
                        _2712 = _2711;
                        break;
                    } while(false);
                    _2713 = _2712;
                    break;
                } while(false);
                _2714 = _2713;
            }
            else
            {
                _2714 = _1861;
            }
            _1884 = _2714;
        }
    }
    float3 _2755;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _2755 = lerp(lerp(0.5f.xxx, lerp(dot(_1860, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1860, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * (smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_1788, 0.0f, 1.0f)) * _1104)) * _49_m17);
    }
    else
    {
        _2755 = _1860;
    }
    float4 _2762 = float4(_2755 * _19_m20.y, 1.0f);
    _2762.w = 1.0f;
    float4 _3146;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float3 _2767 = -_403;
        float _2783 = _573 * _19_m46.w;
        float _2788 = max(0.00999999977648258209228515625f, _2783 + _19_m47.w);
        float3 _2802 = exp(_19_m45.xyz * ((-max(0.0f, (_404 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2788)) / _2788) * exp(_2783 + _19_m48.w))));
        float _2805 = dot(_2767, _19_m44.xyz);
        float _2811 = _19_m45.w * _19_m45.w;
        float _2815 = (1.0f + _2811) - ((2.0f * _19_m45.w) * _2805);
        float3 _3138;
        float _3139;
        if (_19_m55.z > 0.0f)
        {
            uint3 _2966 = (uint3(int3(_1455, _1456, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _2967 = _2966.y;
            uint _2968 = _2966.z;
            uint _2971 = _2966.x + (_2967 * _2968);
            uint _2973 = _2967 + (_2968 * _2971);
            uint _2975 = _2968 + (_2971 * _2973);
            uint _2977 = _2971 + (_2973 * _2975);
            float _3002 = dot(_2767, -_17_m0[2].xyz);
            float3 _3009 = _495 - _17_m11.xyz;
            float _3011 = (_19_m55.w * ((_3002 > 5.9604644775390625e-08f) ? (1.0f / _3002) : 0.0f)) * (1.0f / _404);
            float _3012 = _3009.y;
            float _3013 = _3011 * _3012;
            float _3015 = _17_m11.y + _3013;
            float _3016 = _3012 - _3013;
            float _3018 = (1.0f - _3011) * _404;
            float _3032 = max(-127.0f, _19_m49.z * _3016);
            float _3056 = max(-127.0f, _19_m52.x * _3016);
            float _3067 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3015 - _19_m49.x)))) * ((abs(_3032) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3032)) / _3032) : (0.693147182464599609375f - (0.2402265071868896484375f * _3032)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3015 - _19_m52.z)))) * ((abs(_3056) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3056)) / _3056) : (0.693147182464599609375f - (0.2402265071868896484375f * _3056))));
            float _3089 = clamp((_404 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3092 = clamp((max(clamp(exp2(-(_3067 * _3018)), 0.0f, 1.0f), _19_m51.w) + clamp((_404 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3089, 0.0f, 1.0f);
            float4 _3132 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _64.SampleLevel(_25, float3((_1835 + ((((float3(uint3(_2977, _2973 + (_2975 * _2977), _369) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_384 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_384 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3138 = _3132.xyz + (((_19_m51.xyz * (1.0f - _3092)) + (((_19_m54.xyz * pow(clamp(dot(_403, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3067 * max(_3018 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3089))) * _3132.w);
            _3139 = _3132.w * _3092;
        }
        else
        {
            float3 _2842 = _495 - _17_m11.xyz;
            float _2844 = _2842.y;
            float _2858 = max(-127.0f, _19_m49.z * _2844);
            float _2882 = max(-127.0f, _19_m52.x * _2844);
            float _2893 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2858) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2858)) / _2858) : (0.693147182464599609375f - (0.2402265071868896484375f * _2858)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2882) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2882)) / _2882) : (0.693147182464599609375f - (0.2402265071868896484375f * _2882))));
            float _2915 = clamp((_404 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2918 = clamp((max(clamp(exp2(-(_2893 * _404)), 0.0f, 1.0f), _19_m51.w) + clamp((_404 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2915, 0.0f, 1.0f);
            _3138 = (_19_m51.xyz * (1.0f - _2918)) + (((_19_m54.xyz * pow(clamp(dot(_403, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2893 * max(_404 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2915));
            _3139 = _2918;
        }
        float3 _3144 = (_2762.xyz * (_2802 * _3139)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2805 * _2805)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2811) / max((12.56637096405029296875f * _2815) * sqrt(_2815), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2802)) * _3139) + _3138);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3144 = (_3144 * 0.65f) + (_2762.xyz * 0.35f);

        }
        _3146 = float4(_3144.x, _3144.y, _3144.z, _2762.w);
    }
    else
    {
        _3146 = _2762;
    }
    _14 = _3146;
    _15 = _1420;
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
