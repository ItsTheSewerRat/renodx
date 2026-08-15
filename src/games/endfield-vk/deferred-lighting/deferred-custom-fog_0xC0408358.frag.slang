// DX11 0x0175FC4A -> Vulkan 0xC0408358
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

static const int2 _339[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _340[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
    float3 _1379;
    float3 _1380;
    float _1381;
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
        _1378 = lerp(lerp(_1216, 0.89999997615814208984375f, clamp(_1281 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _1371);
        _1379 = lerp(_483 * 1.0f, 0.3079999983310699462890625f.xxx, _1283) + (_1372 * 0.5f);
        _1380 = lerp(_1126 * 1.0f, 0.87999999523162841796875f.xxx, _1283) + _1372;
        _1381 = lerp(_49_m2, 0.0f, _1281);
    }
    else
    {
        _1377 = _517;
        _1378 = _1216;
        _1379 = _483;
        _1380 = _1126;
        _1381 = _49_m2;
    }
    float _1383 = 0.959999978542327880859375f - (_1381 * 0.959999978542327880859375f);
    float3 _1384 = _1380 * _1383;
    float3 _1387 = lerp(0.039999999105930328369140625f.xxx * _1213, _1380, _1381.xxx);
    float3 _1388 = _1379 * _1383;
    float _1390 = max(_1378 * _1378, 0.0078125f);
    bool _1397 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _1410 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _1410.y = -_1410.y;
    float2 _1426 = lerp(((sqrt(sqrt(abs(_1410 * 0.5f))) * float2(int2(sign(_1410)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1397).xx);
    float4 _1428 = float4(_1426.x, _1426.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1428.z = 1.0f;
    _1428.w = _1397 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1441 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1455 = lerp(_36_m3.xyz, _19_m83.xyz, _19_m91.y.xxx);
    float3 _1459 = _1455 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    int _1463 = int(_519.x);
    int _1464 = int(_519.y);
    float4 _1468 = _40.Load(int3(int3(_1463, _1464, 0).xy, 0));
    float _1473 = _1468.y;
    float _1476 = lerp(lerp(1.0f, _1468.x, _38_m6.x), 1.0f, _19_m80.z);
    float3 _1484 = _1388 * _19_m79.z;
    float3 _1485 = _1484 * 0.64999997615814208984375f;
    float3 _1499 = mul(_1441, _533);
    float3 _1500 = float3(_1499.x, _1499.y, _1499.z);
    _1500.y = 6.103515625e-05f;
    float3 _1502 = normalize(_1500);
    float _1505 = float(_1502.x > 0.0f);
    float2 _1509 = _374;
    _1509.x = lerp(1.0f - _374.x, _374.x, _1505);
    float4 _1513 = _57.SampleLevel(_25, _1509, 0.0f);
    float _1515 = _1513.z * 2.0f;
    float _1518 = lerp(1.0f - _1515, _1515 - 1.0f, _1505);
    float3 _1523 = mul(_533, normalize(float3(_1518, 6.103515625e-05f, 1.0f - abs(_1518))));
    float3 _1530 = normalize(lerp((_1523 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1523, _1523)))).xyz, _1377, _591));
    float _1531 = _1513.w;
    float _1532 = _1502.z;
    float _1533 = -_1532;
    float _1548 = lerp(_1532, (_1533 * ((_1532 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1441.x, 6.103515625e-05f, _1441.z)).xz, normalize(_529.xz)), 0.0f, 1.0f) * clamp(_1533, 0.0f, 1.0f)) * (1.0f - _19_m91.x)) * 0.5f;
    float _1550 = clamp(0.5f - _1548, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float _1556 = (_1513.x + _1513.y) * 0.5f;
    float _1567 = _19_m94.z * 0.5f;
    float _1569 = clamp(0.5f - _1567, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float4 _1590 = _50.SampleLevel(_25, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1550 - (1.0f - _1550), 0.0f), min(_1550 + _1550, 1.0f), _1556)) - (_1548 * ceil(_1548)))), clamp(dot(_1377, _1441) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f), _489) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _1591 = _1590.w;
    float _1593 = _1590.x;
    float _1594 = _1590.y;
    float _1595 = _1590.z;
    float _1600 = max(max(_1593, _1594), _1595) - min(min(_1593, _1594), _1595);
    float _1603 = max(_489, _490 * smoothstep(0.75f, 0.25f, _541));
    float _1606 = (1.0f - _1603) + (_1473 * _1603);
    float _1607 = 1.0f - _489;
    float _1616 = min(min(_1606, _1214), _1591);
    float _1617 = _1214 * _1606;
    float3 _1621 = ((clamp(dot(_593, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1084, 1.0f.xxx, (_19_m80.y * _1616).xxx);
    float3 _1623 = _1616.xxx;
    float3 _1646 = _1476.xxx;
    float3 _1647 = lerp((_1621 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1085), 1.5f), clamp(_1085, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1459, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1459, _1623) + ((_1621 * clamp(_1085, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1455 * _19_m91.y)))) * _19_m79.y, _1646);
    float3 _1648 = lerp(lerp(lerp(dot(_1485, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1485, 1.2000000476837158203125f.xxx), _1484, clamp((_1214 * (_1607 + (_1606 * _489))) + _1591, 0.0f, 1.0f).xxx), _1384, _1623);
    float3 _1654 = _1648 * ((1.0f - _1600).xxx + (_1590.xyz * _1600));
    float3 _1663 = lerp(lerp(_1484, lerp(dot(_1384, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1384, 1.2000000476837158203125f.xxx), _1617.xxx), _1654 * clamp(dot(_1648, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1654, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1646);
    float4 _1667 = float4(_1663, _1476);
    float _1669 = lerp(_1617, _1616, _1476);
    float3 _1680 = float3(_529.x, lerp(0.5f, _1441.y, _1476), _529.z);
    float _1693 = clamp(dot(_1215, _403), 0.0f, 1.0f);
    float _1694 = dot(_1215, normalize(((_1441 * _1476) + ((_1680 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1680, _1680)))) * 2.0f)) + (_403 * (2.0f + _1476))));
    float _1695 = _1390 * _1390;
    float _1699 = (((_1694 * _1695) - _1694) * _1694) + 1.0f;
    float _1700 = _1699 * _1699;
    float _1704 = 2.0f * _1693;
    float _1706 = (1.0f + _1693) - _1693;
    float3 _1747;
    if (_1217 > 0.001000000047497451305389404296875f)
    {
        _1747 = ((_53.SampleBias(_25, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1215)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1606) * (clamp(_1085, 0.5f, 1.5f) * _19_m79.w)) * (_1217 * _1217);
    }
    else
    {
        _1747 = 0.0f.xxx;
    }
    float3 _1750 = ((_1647 * _1663) * 1.0f) + ((((_1387 * clamp((((_1695 != _1700) ? (_1695 / _1700) : 1.0f) * (0.5f / ((_1704 + (_1390 * _1706)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1647 * (((_1669 * 0.5f) + 0.5f) * lerp(_19_m79.z, 1.0f, _1669))) * 1.0f)) * _19_m92.w) + _1747);
    float _1751 = dot(_1750, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1754 = clamp(_1751 - 0.5f, 0.0f, 0.5f);
    float3 _1790 = normalize(cross(_529, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1796 = dot(_403, _1530);
    float _1798 = 1.0f - abs(_1796);
    float _1803 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_541));
    float3 _1842 = lerp(_1751.xxx, _1750, ((_1754 * _1754) + 1.0f).xxx) + (((((_19_m87.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1798) * _1803, max(_1803, float(dot(_529, _1790) < (-0.00999999977648258209228515625f))) * _491, clamp((_19_m88.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m87.w) * min(min(clamp(dot(_502, _1790) + 1.0f, 0.0f, 1.0f), _1214), _1473)) * (lerp(0.25f.xxx, _1384, _19_m88.z.xxx) * clamp(dot(_1790, _1530), 0.0f, 1.0f))) + (((_19_m93.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1569 - (1.0f - _1569), 0.0f), min(_1569 + _1569, 1.0f), _1556)) - (_1567 * ceil(_1567))))) * _1607)) * _19_m93.w) * _1384));
    float2 _1843 = float2(_519);
    float2 _1845 = floor(_1843 * 0.03125f);
    int _1853 = int((_1845.x + (_1845.y * _34_m5)) * 8.0f);
    float _1860 = floor(_384 - (_19_m3.y * _34_m11));
    float _1864 = clamp(_1860, 0.0f, _34_m7 - 1.0f);
    int _1866 = int(_1864 * 8.0f);
    float3 _1868;
    _1868 = _1842;
    float3 _1869;
    [loop]
    for (int _1871 = 0; _1871 <= 7; _1868 = _1869, _1871++)
    {
        uint _1889 = (_1860 <= _1864) ? (_30.Load(uint(_1853 + _1871) * 4 + 0) & _30.Load(uint((_19_m21.y + _1866) + _1871) * 4 + 0)) : 0u;
        uint _1890 = uint(_1871);
        _1869 = _1868;
        uint _1895;
        float3 _1892;
        [loop]
        for (uint _1894 = _1889; _1894 != 0u; _1869 = _1892, _1894 = _1895)
        {
            uint _1899 = firstbitlow(_1894);
            _1895 = _1894 ^ (1u << (_1899 & 31u));
            int _1905 = int((32u * _1890) + _1899) * 8;
            int _1908 = _1905 + 1;
            int _1911 = _1905 + 2;
            int _1914 = _1905 + 3;
            int _1917 = _1905 + 4;
            int _1920 = _1905 + 5;
            int _1923 = _1905 + 6;
            int _1926 = _1905 + 7;
            uint _1930 = uint(_36_m6[_1920].w);
            float _2005;
            if ((_1930 & 1u) == 1u)
            {
                uint _1936 = asuint(_36_m6[_1920].x);
                uint _1943 = asuint(_36_m6[_1920].y);
                uint _1950 = asuint(_36_m6[_1920].z);
                uint _1957 = asuint(_36_m6[_1923].x);
                uint _1964 = asuint(_36_m6[_1923].y);
                uint _1971 = asuint(_36_m6[_1923].z);
                float3 _1990 = abs(mul(float4(_495 - _36_m6[_1908].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1936).x, spvUnpackHalf2x16(_1950).x, spvUnpackHalf2x16(_1964).x, 0.0f), float4(spvUnpackHalf2x16(_1936 >> 16u).x, spvUnpackHalf2x16(_1950 >> 16u).x, spvUnpackHalf2x16(_1964 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1943).x, spvUnpackHalf2x16(_1957).x, spvUnpackHalf2x16(_1971).x, 0.0f), float4(spvUnpackHalf2x16(_1943 >> 16u).x, spvUnpackHalf2x16(_1957 >> 16u).x, spvUnpackHalf2x16(_1971 >> 16u).x, 0.0f))).xyz);
                float _1997 = _36_m6[_1926].x * 0.5f;
                float _2003 = 1.0f - clamp((max(max(_1990.x, _1990.y), _1990.z) - (_1997 + 0.5f)) / (0.5f - _1997), 0.0f, 1.0f);
                _2005 = _2003 * _2003;
            }
            else
            {
                _2005 = 1.0f;
            }
            if (false || (_2005 < 0.001000000047497451305389404296875f))
            {
                _1892 = _1869;
                continue;
            }
            float3 _2722;
            if (_36_m6[_1905].w < 1.5f)
            {
                float3 _2721;
                do
                {
                    uint _2018 = asuint(_36_m6[_1914].w);
                    if ((_2018 == 16u) || ((_36_m6[_1914].z + _19_m91.z) < 0.5f))
                    {
                        _2721 = _1869;
                        break;
                    }
                    bool _2030 = (uint(_36_m6[_1905].w) & 1u) == 0u;
                    bool _2034 = (!_2030) && (_36_m6[_1911].z > 0.0f);
                    bool _2035 = _2018 == 4u;
                    float _2036 = float(_2030);
                    float _2044 = (0.5f + (0.5f * _36_m6[_1911].y)) - abs(_36_m6[_1911].x);
                    float _2045 = _36_m6[_1911].y - _2044;
                    float _2052 = abs(max((1.0f - abs(_2044)) - abs(_2045), 0.00048828125f));
                    float3 _2056 = normalize(float3(_2044, _2045, (_36_m6[_1911].x >= 0.0f) ? _2052 : (-_2052)));
                    float _2062 = lerp(_36_m6[_1923].w, max(2.0f * _36_m6[_1917].y, 0.100000001490116119384765625f), float(_2035));
                    float3 _2067 = _36_m6[_1908].xyz - _495;
                    float3 _2068 = -_2056;
                    float3 _2073 = lerp(_2067, _2068 * dot(_2067, _2068), (float(_2035 && (_36_m6[_1917].z > 0.5f)) * _2036).xxx);
                    float _2074 = dot(_2073, _2073);
                    float _2075 = rsqrt(_2074);
                    float3 _2076 = _2073 * _2075;
                    float3 _2109;
                    float _2110;
                    if (_2034)
                    {
                        float3 _2080 = (_2056 * _36_m6[_1911].z) * 0.5f;
                        float3 _2081 = _2073 - _2080;
                        float3 _2082 = _2073 + _2080;
                        float _2083 = length(_2081);
                        float _2084 = length(_2082);
                        float3 _2093 = normalize(cross(cross(_2056, _2076), _2056));
                        _2109 = _2093;
                        _2110 = ((1.0f / ((((_2083 * _2084) + dot(_2081, _2082)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2093, _2081) / _2083) + (dot(_2093, _2082) / _2084)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_1911].z * _2075, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2109 = _2076;
                        _2110 = 1.0f;
                    }
                    float _2132;
                    if (_2062 < 0.0f)
                    {
                        float _2126 = _2074 * (_36_m6[_1908].w * _36_m6[_1908].w);
                        float _2129 = clamp(1.0f - (_2126 * _2126), 0.0f, 1.0f);
                        _2132 = lerp(1.0f / (_2074 + 1.0f), _2110, float(_2034)) * (_2129 * _2129);
                    }
                    else
                    {
                        float3 _2115 = _2073 * _36_m6[_1908].w;
                        _2132 = _2110 * pow(1.0f - clamp(dot(_2115, _2115), 0.0f, 1.0f), _2062);
                    }
                    float _2137 = clamp((dot(_2109, _2068) - _36_m6[_1911].z) * _36_m6[_1911].w, 0.0f, 1.0f);
                    float _2140 = _2132 * lerp(1.0f, _2137 * _2137, _2036);
                    int _2142 = int(_36_m6[_1926].w);
                    float _2246;
                    if ((!_2034) && (_2142 >= 0))
                    {
                        uint _2148 = uint(_2142);
                        float2 _2239;
                        [branch]
                        if (_2036 != 0.0f)
                        {
                            float4 _2229 = mul(_61_m1[_2148], float4(_495.x, _573, _495.z, 1.0f));
                            _2239 = _61_m0[_2148].xy + (clamp(_2229.xy / _2229.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2148].zw);
                        }
                        else
                        {
                            float3 _2163 = mul(float4(-_2073, 0.0f), _61_m1[_2148]).xyz;
                            float3 _373 = _2163;
                            float3 _372 = _2163;
                            float3 _371 = abs(_2163);
                            uint _2172 = uint(int(_371.y > _371.x));
                            uint _2178 = (_371.z > _371[_2172]) ? 2u : _2172;
                            uint _2184 = (_2178 * 2u) + uint(_372[_2178] < 0.0f);
                            float _2188 = abs(_373[_2184 / 2u]);
                            float _2208 = 0.5f - (0.000244140625f / _61_m0[_2148].w);
                            _2239 = _61_m0[_2148].xy + (clamp(float2((float(_2184) + ((((_373[uint(_339[_2184].x)] * _340[_2184].x) / _2188) * _2208) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_373[uint(_339[_2184].y)] * _340[_2184].y) / _2188) * _2208)), 0.0f.xx, 1.0f.xx) * _61_m0[_2148].zw);
                        }
                        _2246 = _2140 * _59.SampleLevel(_25, _2239, 0.0f).x;
                    }
                    else
                    {
                        _2246 = _2140;
                    }
                    float _2247 = _2246 * _2005;
                    float3 _2720;
                    do
                    {
                        float3 _2719;
                        [branch]
                        if (_2247 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_2035)
                            {
                                _2720 = lerp(_1869, _36_m6[_1905].xyz, (_2247 * (_36_m6[_1917].x * ((1.0f - _36_m6[_1917].w) + (smoothstep(-0.5f, 0.5f, dot(_517, _2109)) * _36_m6[_1917].w)))).xxx);
                                break;
                            }
                            float _2267 = dot(_1530, _2109);
                            float _2268 = clamp(_2267, 0.0f, 1.0f);
                            float _2571;
                            if (_2018 != 0u)
                            {
                                bool _2274 = _2030 || ((_1930 & 2u) != 0u);
                                int _2323;
                                if (_2274)
                                {
                                    _2323 = int(_36_m6[_1914].x);
                                }
                                else
                                {
                                    uint _2278 = asuint(_36_m6[_1911].w);
                                    uint _2280 = asuint(_36_m6[_1914].x);
                                    float3 _2281 = _495 - _36_m6[_1908].xyz;
                                    float3 _2282 = abs(_2281);
                                    float _2283 = _2282.x;
                                    float _2284 = _2282.y;
                                    float _2286 = _2282.z;
                                    int _2318;
                                    if ((_2283 > _2284) && (_2283 > _2286))
                                    {
                                        _2318 = int((_2281.x > 0.0f) ? (_2278 >> 24u) : ((_2278 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2310;
                                        if (_2284 > _2286)
                                        {
                                            _2310 = int((_2281.y > 0.0f) ? ((_2278 >> 8u) & 255u) : (_2278 & 255u));
                                        }
                                        else
                                        {
                                            _2310 = int((_2281.z > 0.0f) ? ((_2280 >> 8u) & 255u) : (_2280 & 255u));
                                        }
                                        _2318 = _2310;
                                    }
                                    _2323 = (_2318 < 80) ? _2318 : (-1);
                                }
                                bool _2324 = _2323 >= 0;
                                float _2570;
                                if (_2324)
                                {
                                    float3 _2331 = _495 - _36_m6[_1908].xyz;
                                    float4 _2351 = mul(_38_m10[_2323], float4((_495 - ((_2331 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2331, _2331)))) * _38_m11[_2323].x)) + (_517 * (_38_m11[_2323].y * 5.0f)), 1.0f));
                                    float _2352 = _2351.w;
                                    float3 _2355 = _2351.xyz / _2352.xxx;
                                    float2 _2356 = _2355.xy;
                                    float3 _2364 = _2355.xyz;
                                    bool3 _2365 = bool3(_2364.x <= 0.0f.xxx.x, _2364.y <= 0.0f.xxx.y, _2364.z <= 0.0f.xxx.z);
                                    bool3 _2366 = bool3(_2364.x >= 1.0f.xxx.x, _2364.y >= 1.0f.xxx.y, _2364.z >= 1.0f.xxx.z);
                                    float _2369 = _2355.z;
                                    float2 _2380 = ((_2356 * (_38_m12[_2323].zw - _38_m12[_2323].xy)) + _38_m12[_2323].xy).xy * _38_m13.zw;
                                    float2 _2382 = floor(_2380 + 0.5f.xx);
                                    float2 _2383 = _2380 - _2382;
                                    float _2385 = _2383.x + 0.5f;
                                    float _2386 = _2385 * _2385;
                                    float _2389 = 1.0f - _2383.x;
                                    float _2390 = min(_2383.x, 0.0f);
                                    float _2393 = _2383.x + 1.0f;
                                    float _2394 = max(_2383.x, 0.0f);
                                    float _2406 = _2383.y + 0.5f;
                                    float _2407 = _2406 * _2406;
                                    float _2410 = 1.0f - _2383.y;
                                    float _2411 = min(_2383.y, 0.0f);
                                    float _2414 = _2383.y + 1.0f;
                                    float _2415 = max(_2383.y, 0.0f);
                                    float3 _2427 = float3(0.1599999964237213134765625f * _2389, 0.1599999964237213134765625f * ((_2393 - (_2394 * _2394)) + 1.0f), _2386 * 0.07999999821186065673828125f);
                                    float3 _2428 = float3(0.1599999964237213134765625f * ((_2386 * 0.5f) - _2383.x), 0.1599999964237213134765625f * ((_2389 - (_2390 * _2390)) + 1.0f), 0.1599999964237213134765625f * _2393) + _2427;
                                    float3 _2430 = float3(0.1599999964237213134765625f * _2410, 0.1599999964237213134765625f * ((_2414 - (_2415 * _2415)) + 1.0f), _2407 * 0.07999999821186065673828125f);
                                    float3 _2431 = float3(0.1599999964237213134765625f * ((_2407 * 0.5f) - _2383.y), 0.1599999964237213134765625f * ((_2410 - (_2411 * _2411)) + 1.0f), 0.1599999964237213134765625f * _2414) + _2430;
                                    float3 _2437 = ((_2427 / _2428) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.xxx;
                                    float3 _2439 = ((_2430 / _2431) + float3(-2.5f, -0.5f, 1.5f)) * _38_m13.yyy;
                                    float2 _2441 = _2382 * _38_m13.xy;
                                    float _2442 = _2437.x;
                                    float _2443 = _2439.x;
                                    float _2446 = _2437.y;
                                    float _2449 = _2437.z;
                                    float _2452 = _2439.y;
                                    float _2459 = _2439.z;
                                    float _2466 = _2428.x;
                                    float _2467 = _2431.x;
                                    float _2469 = _2428.y;
                                    float _2471 = _2428.z;
                                    float _2473 = _2431.y;
                                    float _2477 = _2431.z;
                                    float _2535 = (((((((_2466 * _2467) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2442, _2443), _364).xy, _2369)) + ((_2469 * _2467) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2446, _2443), _364).xy, _2369))) + ((_2471 * _2467) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2449, _2443), _364).xy, _2369))) + ((_2466 * _2473) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2442, _2452), _364).xy, _2369))) + ((_2469 * _2473) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2446, _2452), _364).xy, _2369))) + ((_2471 * _2473) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2449, _2452), _364).xy, _2369))) + ((_2466 * _2477) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2442, _2459), _364).xy, _2369));
                                    float2 _2556 = min(_2356, 1.0f.xx - _2356);
                                    _2570 = _2324 ? lerp(1.0f, (any(bool3(_2365.x || _2366.x, _2365.y || _2366.y, _2365.z || _2366.z)) || ((asuint(_2369) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2535 + ((_2469 * _2477) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2446, _2459), _364).xy, _2369))) + ((_2471 * _2477) * _39.SampleCmpLevelZero(_27, float3(_2441 + float2(_2449, _2459), _364).xy, _2369))), _2274 ? min(_38_m11[_2323].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_38_m11[_2323].z - _2352) * 0.25f, min(_2556.x, _2556.y)))) : _38_m11[_2323].w) : 1.0f;
                                }
                                else
                                {
                                    _2570 = clamp(dot(_502, _2109) + 1.0f, 0.0f, 1.0f);
                                }
                                _2571 = _2570;
                            }
                            else
                            {
                                _2571 = 1.0f;
                            }
                            float _2675;
                            float3 _2676;
                            float _2677;
                            float3 _2678;
                            float3 _2679;
                            float _2680;
                            float _2681;
                            [branch]
                            if (_2018 == 0u)
                            {
                                float3 _2649 = _36_m6[_1905].xyz * _2247;
                                float3 _2662 = _1667.xyz;
                                _2675 = _2247;
                                _2676 = (_36_m6[_1905].xyz * ((1.0f - _36_m6[_1917].y) + ((1.0f / max(1.0f, max(max(_2649.x, _2649.y), _2649.z) * lerp(0.75f, 0.5f, 1.0f - _1476))) * _36_m6[_1917].y))) * lerp(0.5f * _36_m6[_1917].x, 1.0f, clamp(dot(normalize(lerp(float3(_502.x, 6.103515625e-05f, _502.z), _1530, _591)), _2109) + 0.5f, 0.0f, 1.0f));
                                _2677 = _2268;
                                _2678 = _2662;
                                _2679 = _2662;
                                _2680 = 1.0f;
                                _2681 = 0.0f;
                            }
                            else
                            {
                                float _2641;
                                float _2642;
                                float3 _2643;
                                float3 _2644;
                                float _2645;
                                float _2646;
                                if (_2018 == 3u)
                                {
                                    float3 _2621 = -normalize(cross(_529, cross(_529, _2109)));
                                    _2641 = _2247 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_1917].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_1917].x), _1798) * _1803, max(_1803, float(dot(_529, _2621) < (-0.00999999977648258209228515625f))) * _491, clamp((_36_m6[_1917].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2571);
                                    _2642 = clamp(dot(_1530, _2621), 0.0f, 1.0f);
                                    _2643 = lerp(0.5f.xxx, _1384, _36_m6[_1917].y.xxx);
                                    _2644 = 0.0f.xxx;
                                    _2645 = 1.0f;
                                    _2646 = 0.0f;
                                }
                                else
                                {
                                    bool _2580 = _2018 == 1u;
                                    float _2611;
                                    float3 _2612;
                                    float _2613;
                                    float _2614;
                                    if (_2580)
                                    {
                                        _2611 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1531 - _36_m6[_1917].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _489), clamp(_2267 + _36_m6[_1917].x, -1.0f, 1.0f) + (_36_m6[_1917].z * _1607)) * _2571);
                                        _2612 = _1388 * _36_m6[_1917].y;
                                        _2613 = 1.0f;
                                        _2614 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2584 = _2018 == 2u;
                                        float _2596;
                                        if (_2584)
                                        {
                                            _2596 = smoothstep(_36_m6[_1917].x + 0.0500000007450580596923828125f, _36_m6[_1917].x - 0.0500000007450580596923828125f, _1378) * ((1.0f - _36_m6[_1917].z) + (step(0.5f, _1381) * _36_m6[_1917].z));
                                        }
                                        else
                                        {
                                            _2596 = 1.0f;
                                        }
                                        _2611 = _2268;
                                        _2612 = 0.0f.xxx;
                                        _2613 = _2596;
                                        _2614 = _2584 ? _36_m6[_1917].y : 0.0f;
                                    }
                                    bool3 _2615 = _2580.xxx;
                                    _2641 = _2247;
                                    _2642 = _2611;
                                    _2643 = float3(_2615.x ? _1384.x : 0.0f.xxx.x, _2615.y ? _1384.y : 0.0f.xxx.y, _2615.z ? _1384.z : 0.0f.xxx.z);
                                    _2644 = _2612;
                                    _2645 = _2613;
                                    _2646 = _2614;
                                }
                                _2675 = _2641;
                                _2676 = _36_m6[_1905].xyz;
                                _2677 = _2642;
                                _2678 = _2643;
                                _2679 = _2644;
                                _2680 = _2645;
                                _2681 = _2646;
                            }
                            float3 _2709;
                            [branch]
                            if (_2018 != 3u)
                            {
                                float _2686 = lerp(_1390, 0.00999999977648258209228515625f, _2681);
                                float _2689 = dot(_1215, normalize(_2109 + _403));
                                float _2690 = _2686 * _2686;
                                float _2694 = (((_2689 * _2690) - _2689) * _2689) + 1.0f;
                                float _2695 = _2694 * _2694;
                                _2709 = ((_1387 * clamp((((_2690 != _2695) ? (_2690 / _2695) : 1.0f) * (0.5f / ((_1704 + (_2686 * _1706)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2680) * _36_m6[_1926].z;
                            }
                            else
                            {
                                _2709 = 0.0f.xxx;
                            }
                            float3 _2712 = _2676 * _2675;
                            _2719 = _1869 + (((_2712 * lerp(_2679, _2678, _2677.xxx)) * 1.0f) + ((_2712 * _2709) * _2677));
                        }
                        else
                        {
                            _2719 = _1869;
                        }
                        _2720 = _2719;
                        break;
                    } while(false);
                    _2721 = _2720;
                    break;
                } while(false);
                _2722 = _2721;
            }
            else
            {
                _2722 = _1869;
            }
            _1892 = _2722;
        }
    }
    float3 _2763;
    [branch]
    if (_49_m12 > 0.5f)
    {
        _2763 = lerp(lerp(0.5f.xxx, lerp(dot(_1868, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1868, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * (smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_1796, 0.0f, 1.0f)) * _1104)) * _49_m17);
    }
    else
    {
        _2763 = _1868;
    }
    float4 _2770 = float4(_2763 * _19_m20.y, 1.0f);
    _2770.w = 1.0f;
    float4 _3154;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float3 _2775 = -_403;
        float _2791 = _573 * _19_m46.w;
        float _2796 = max(0.00999999977648258209228515625f, _2791 + _19_m47.w);
        float3 _2810 = exp(_19_m45.xyz * ((-max(0.0f, (_404 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2796)) / _2796) * exp(_2791 + _19_m48.w))));
        float _2813 = dot(_2775, _19_m44.xyz);
        float _2819 = _19_m45.w * _19_m45.w;
        float _2823 = (1.0f + _2819) - ((2.0f * _19_m45.w) * _2813);
        float3 _3146;
        float _3147;
        if (_19_m55.z > 0.0f)
        {
            uint3 _2974 = (uint3(int3(_1463, _1464, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _2975 = _2974.y;
            uint _2976 = _2974.z;
            uint _2979 = _2974.x + (_2975 * _2976);
            uint _2981 = _2975 + (_2976 * _2979);
            uint _2983 = _2976 + (_2979 * _2981);
            uint _2985 = _2979 + (_2981 * _2983);
            float _3010 = dot(_2775, -_17_m0[2].xyz);
            float3 _3017 = _495 - _17_m11.xyz;
            float _3019 = (_19_m55.w * ((_3010 > 5.9604644775390625e-08f) ? (1.0f / _3010) : 0.0f)) * (1.0f / _404);
            float _3020 = _3017.y;
            float _3021 = _3019 * _3020;
            float _3023 = _17_m11.y + _3021;
            float _3024 = _3020 - _3021;
            float _3026 = (1.0f - _3019) * _404;
            float _3040 = max(-127.0f, _19_m49.z * _3024);
            float _3064 = max(-127.0f, _19_m52.x * _3024);
            float _3075 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3023 - _19_m49.x)))) * ((abs(_3040) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3040)) / _3040) : (0.693147182464599609375f - (0.2402265071868896484375f * _3040)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3023 - _19_m52.z)))) * ((abs(_3064) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3064)) / _3064) : (0.693147182464599609375f - (0.2402265071868896484375f * _3064))));
            float _3097 = clamp((_404 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3100 = clamp((max(clamp(exp2(-(_3075 * _3026)), 0.0f, 1.0f), _19_m51.w) + clamp((_404 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3097, 0.0f, 1.0f);
            float4 _3140 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _64.SampleLevel(_25, float3((_1843 + ((((float3(uint3(_2985, _2981 + (_2983 * _2985), _369) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_384 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_384 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3146 = _3140.xyz + (((_19_m51.xyz * (1.0f - _3100)) + (((_19_m54.xyz * pow(clamp(dot(_403, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3075 * max(_3026 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3097))) * _3140.w);
            _3147 = _3140.w * _3100;
        }
        else
        {
            float3 _2850 = _495 - _17_m11.xyz;
            float _2852 = _2850.y;
            float _2866 = max(-127.0f, _19_m49.z * _2852);
            float _2890 = max(-127.0f, _19_m52.x * _2852);
            float _2901 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2866) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2866)) / _2866) : (0.693147182464599609375f - (0.2402265071868896484375f * _2866)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2890) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2890)) / _2890) : (0.693147182464599609375f - (0.2402265071868896484375f * _2890))));
            float _2923 = clamp((_404 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2926 = clamp((max(clamp(exp2(-(_2901 * _404)), 0.0f, 1.0f), _19_m51.w) + clamp((_404 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2923, 0.0f, 1.0f);
            _3146 = (_19_m51.xyz * (1.0f - _2926)) + (((_19_m54.xyz * pow(clamp(dot(_403, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2901 * max(_404 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2923));
            _3147 = _2926;
        }
        float3 _3152 = (_2770.xyz * (_2810 * _3147)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2813 * _2813)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2819) / max((12.56637096405029296875f * _2823) * sqrt(_2823), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2810)) * _3147) + _3146);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3152 = (_3152 * 0.65f) + (_2770.xyz * 0.35f);

        }
        _3154 = float4(_3152.x, _3152.y, _3152.z, _2770.w);
    }
    else
    {
        _3154 = _2770;
    }
    _14 = _3154;
    _15 = _1428;
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
