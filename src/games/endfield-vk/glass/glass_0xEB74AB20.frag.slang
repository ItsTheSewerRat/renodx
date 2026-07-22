#include "../shared.h"

// Current Vulkan shader mapped from DX11 0xFB0D073D.
struct _20
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

struct _47
{
    float4 _m0;
    float4 _m1;
    float4 _m2;
    float4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
};

static float _366 = (float)0;
static float4 _368 = (float4)0;
static uint _369 = (uint)0;

static const float4 _346[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _347[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _348[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _15_16 : register(b12)
{
    column_major float4x4 _16_m0 : packoffset(c0);
    column_major float4x4 _16_m1 : packoffset(c4);
    column_major float4x4 _16_m2 : packoffset(c8);
    column_major float4x4 _16_m3 : packoffset(c12);
    column_major float4x4 _16_m4 : packoffset(c16);
    column_major float4x4 _16_m5 : packoffset(c20);
    column_major float4x4 _16_m6 : packoffset(c24);
    column_major float4x4 _16_m7 : packoffset(c28);
    column_major float4x4 _16_m8 : packoffset(c32);
    column_major float4x4 _16_m9 : packoffset(c36);
    column_major float4x4 _16_m10 : packoffset(c40);
    float4 _16_m11 : packoffset(c44);
    column_major float4x4 _16_m12 : packoffset(c45);
    column_major float4x4 _16_m13 : packoffset(c49);
    column_major float4x4 _16_m14 : packoffset(c53);
    column_major float4x4 _16_m15 : packoffset(c57);
    column_major float4x4 _16_m16 : packoffset(c61);
    column_major float4x4 _16_m17 : packoffset(c65);
    column_major float4x4 _16_m18 : packoffset(c69);
    column_major float4x4 _16_m19 : packoffset(c73);
    column_major float4x4 _16_m20 : packoffset(c77);
    float4 _16_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _17_18 : register(b16)
{
    float4 _18_m0 : packoffset(c0);
    float4 _18_m1 : packoffset(c1);
    float4 _18_m2 : packoffset(c2);
    float4 _18_m3 : packoffset(c3);
    float4 _18_m4 : packoffset(c4);
    float4 _18_m5 : packoffset(c5);
    float4 _18_m6[6] : packoffset(c6);
    float4 _18_m7[6] : packoffset(c12);
    float4 _18_m8 : packoffset(c18);
    float4 _18_m9 : packoffset(c19);
    float4 _18_m10 : packoffset(c20);
    float4 _18_m11 : packoffset(c21);
    float4 _18_m12 : packoffset(c22);
    float4 _18_m13 : packoffset(c23);
    float4 _18_m14 : packoffset(c24);
    float4 _18_m15 : packoffset(c25);
    float _18_m16 : packoffset(c26);
    float _18_m17 : packoffset(c26.y);
    float _18_m18 : packoffset(c26.z);
    uint _18_m19 : packoffset(c26.w);
    float4 _18_m20 : packoffset(c27);
    int4 _18_m21 : packoffset(c28);
    float4 _18_m22 : packoffset(c29);
    float4 _18_m23 : packoffset(c30);
    float4 _18_m24 : packoffset(c31);
    float4 _18_m25 : packoffset(c32);
    float4 _18_m26 : packoffset(c33);
    float4 _18_m27 : packoffset(c34);
    float4 _18_m28 : packoffset(c35);
    float4 _18_m29 : packoffset(c36);
    float4 _18_m30 : packoffset(c37);
    float4 _18_m31 : packoffset(c38);
    float4 _18_m32[4] : packoffset(c39);
    float4 _18_m33[4] : packoffset(c43);
    float4 _18_m34[4] : packoffset(c47);
    float4 _18_m35[4] : packoffset(c51);
    float4 _18_m36 : packoffset(c55);
    float4 _18_m37 : packoffset(c56);
    float4 _18_m38[4] : packoffset(c57);
    float4 _18_m39[4] : packoffset(c61);
    float4 _18_m40[4] : packoffset(c65);
    float4 _18_m41 : packoffset(c69);
    float4 _18_m42 : packoffset(c70);
    float4 _18_m43 : packoffset(c71);
    float4 _18_m44 : packoffset(c72);
    float4 _18_m45 : packoffset(c73);
    float4 _18_m46 : packoffset(c74);
    float4 _18_m47 : packoffset(c75);
    float4 _18_m48 : packoffset(c76);
    float4 _18_m49 : packoffset(c77);
    float4 _18_m50 : packoffset(c78);
    float4 _18_m51 : packoffset(c79);
    float4 _18_m52 : packoffset(c80);
    float4 _18_m53 : packoffset(c81);
    float4 _18_m54 : packoffset(c82);
    float4 _18_m55 : packoffset(c83);
    float4 _18_m56 : packoffset(c84);
    float4 _18_m57 : packoffset(c85);
    float4 _18_m58 : packoffset(c86);
    float4 _18_m59 : packoffset(c87);
    float4 _18_m60 : packoffset(c88);
    float4 _18_m61 : packoffset(c89);
    float4 _18_m62 : packoffset(c90);
    float4 _18_m63 : packoffset(c91);
    float4 _18_m64 : packoffset(c92);
    float4 _18_m65 : packoffset(c93);
    float4 _18_m66 : packoffset(c94);
    float4 _18_m67 : packoffset(c95);
    float4 _18_m68 : packoffset(c96);
    float4 _18_m69 : packoffset(c97);
    float4 _18_m70 : packoffset(c98);
    float4 _18_m71 : packoffset(c99);
    float4 _18_m72 : packoffset(c100);
    float4 _18_m73 : packoffset(c101);
    float4 _18_m74 : packoffset(c102);
    float4 _18_m75 : packoffset(c103);
    float4 _18_m76 : packoffset(c104);
    float4 _18_m77 : packoffset(c105);
    float4 _18_m78 : packoffset(c106);
    float4 _18_m79 : packoffset(c107);
    float4 _18_m80 : packoffset(c108);
    float4 _18_m81 : packoffset(c109);
    float4 _18_m82 : packoffset(c110);
    float4 _18_m83 : packoffset(c111);
    float4 _18_m84 : packoffset(c112);
    float4 _18_m85 : packoffset(c113);
    float4 _18_m86 : packoffset(c114);
    float4 _18_m87 : packoffset(c115);
    float4 _18_m88 : packoffset(c116);
    float4 _18_m89 : packoffset(c117);
    float4 _18_m90 : packoffset(c118);
    float4 _18_m91 : packoffset(c119);
    float4 _18_m92 : packoffset(c120);
    float4 _18_m93 : packoffset(c121);
    float4 _18_m94 : packoffset(c122);
    float4 _18_m95 : packoffset(c123);
    float4 _18_m96 : packoffset(c124);
    float4 _18_m97 : packoffset(c125);
    float4 _18_m98 : packoffset(c126);
    float4 _18_m99[2] : packoffset(c127);
    float4 _18_m100[2] : packoffset(c129);
    float _18_m101 : packoffset(c131);
    float _18_m102 : packoffset(c131.y);
    float _18_m103 : packoffset(c131.z);
    float _18_m104 : packoffset(c131.w);
    float4 _18_m105 : packoffset(c132);
    float4 _18_m106 : packoffset(c133);
    float4 _18_m107 : packoffset(c134);
    float4 _18_m108 : packoffset(c135);
    float4 _18_m109 : packoffset(c136);
    float4 _18_m110 : packoffset(c137);
    float4 _18_m111 : packoffset(c138);
    float4 _18_m112 : packoffset(c139);
    float4 _18_m113 : packoffset(c140);
    float4 _18_m114 : packoffset(c141);
    float4 _18_m115 : packoffset(c142);
    float4 _18_m116 : packoffset(c143);
    float4 _18_m117 : packoffset(c144);
    float4 _18_m118 : packoffset(c145);
    float4 _18_m119 : packoffset(c146);
    float4 _18_m120 : packoffset(c147);
    float4 _18_m121 : packoffset(c148);
    float4 _18_m122 : packoffset(c149);
    float4 _18_m123 : packoffset(c150);
    float4 _18_m124 : packoffset(c151);
    float4 _18_m125 : packoffset(c152);
    float4 _18_m126 : packoffset(c153);
    float4 _18_m127 : packoffset(c154);
    float4 _18_m128 : packoffset(c155);
    float4 _18_m129 : packoffset(c156);
    float4 _18_m130 : packoffset(c157);
    float4 _18_m131 : packoffset(c158);
    float4 _18_m132 : packoffset(c159);
    float4 _18_m133 : packoffset(c160);
    float4 _18_m134 : packoffset(c161);
    column_major float4x4 _18_m135 : packoffset(c162);
    float4 _18_m136 : packoffset(c166);
    float4 _18_m137 : packoffset(c167);
    float4 _18_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _19_21 : register(b0)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _33 : register(t50);
[[vk::binding(8, 1)]]
cbuffer _44_45 : register(b8)
{
    float _45_m0 : packoffset(c0);
    float _45_m1 : packoffset(c0.y);
    float _45_m2 : packoffset(c0.z);
    float _45_m3 : packoffset(c0.w);
    float _45_m4 : packoffset(c1);
    float _45_m5 : packoffset(c1.y);
    float _45_m6 : packoffset(c1.z);
    float _45_m7 : packoffset(c1.w);
    float _45_m8 : packoffset(c2);
    float _45_m9 : packoffset(c2.y);
    float _45_m10 : packoffset(c2.z);
    float _45_m11 : packoffset(c2.w);
    float _45_m12 : packoffset(c3);
    float _45_m13 : packoffset(c3.y);
    float _45_m14 : packoffset(c3.z);
    float _45_m15 : packoffset(c3.w);
    float _45_m16 : packoffset(c4);
    float _45_m17 : packoffset(c4.y);
    float _45_m18 : packoffset(c4.z);
    float _45_m19 : packoffset(c4.w);
    float _45_m20 : packoffset(c5);
    float _45_m21 : packoffset(c5.y);
    float _45_m22 : packoffset(c5.z);
    float _45_m23 : packoffset(c5.w);
    float _45_m24 : packoffset(c6);
    float _45_m25 : packoffset(c6.y);
    float _45_m26 : packoffset(c6.z);
    float _45_m27 : packoffset(c6.w);
    float _45_m28 : packoffset(c7);
    float _45_m29 : packoffset(c7.y);
    float _45_m30 : packoffset(c7.z);
    float _45_m31 : packoffset(c7.w);
    float4 _45_m32 : packoffset(c8);
    float4 _45_m33 : packoffset(c9);
    float4 _45_m34 : packoffset(c10);
    float4 _45_m35 : packoffset(c11);
    float4 _45_m36 : packoffset(c12);
    float4 _45_m37 : packoffset(c13);
    float4 _45_m38 : packoffset(c14);
    float4 _45_m39 : packoffset(c15);
    float4 _45_m40 : packoffset(c16);
    float4 _45_m41 : packoffset(c17);
    float4 _45_m42 : packoffset(c18);
    float4 _45_m43 : packoffset(c19);
    float4 _45_m44 : packoffset(c20);
    float4 _45_m45 : packoffset(c21);
    float _45_m46 : packoffset(c22);
    float _45_m47 : packoffset(c22.y);
    float _45_m48 : packoffset(c22.z);
    float _45_m49 : packoffset(c22.w);
    float _45_m50 : packoffset(c23);
    float _45_m51 : packoffset(c23.y);
    float _45_m52 : packoffset(c23.z);
    float _45_m53 : packoffset(c23.w);
    float4 _45_m54 : packoffset(c24);
    float4 _45_m55 : packoffset(c25);
    float _45_m56 : packoffset(c26);
    float _45_m57 : packoffset(c26.y);
    float _45_m58 : packoffset(c26.z);
    float _45_m59 : packoffset(c26.w);
};

[[vk::binding(17, 0)]]
cbuffer _46_48 : register(b17)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    _47 _48_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _49_50 : register(b47)
{
    int _50_m0 : packoffset(c0);
    int _50_m1 : packoffset(c0.y);
    int _50_m2 : packoffset(c0.z);
    int _50_m3 : packoffset(c0.w);
    float _50_m4 : packoffset(c1);
    float _50_m5 : packoffset(c1.y);
    float _50_m6 : packoffset(c1.z);
    float _50_m7 : packoffset(c1.w);
    float _50_m8 : packoffset(c2);
    float _50_m9 : packoffset(c2.y);
    float _50_m10 : packoffset(c2.z);
    float _50_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _51_52 : register(b14)
{
    float4 _52_m0 : packoffset(c0);
    float4 _52_m1 : packoffset(c1);
    float4 _52_m2 : packoffset(c2);
    float4 _52_m3 : packoffset(c3);
    float4 _52_m4 : packoffset(c4);
    uint4 _52_m5 : packoffset(c5);
    float4 _52_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _53_54 : register(b15)
{
    column_major float4x4 _54_m0[5] : packoffset(c0);
    float4 _54_m1[4] : packoffset(c20);
    float4 _54_m2[4] : packoffset(c24);
    float4 _54_m3[4] : packoffset(c28);
    float4 _54_m4 : packoffset(c32);
    float4 _54_m5 : packoffset(c33);
    float4 _54_m6 : packoffset(c34);
    float4 _54_m7 : packoffset(c35);
    float4 _54_m8 : packoffset(c36);
    float4 _54_m9[27] : packoffset(c37);
    column_major float4x4 _54_m10[56] : packoffset(c64);
    float4 _54_m11[56] : packoffset(c288);
    float4 _54_m12[56] : packoffset(c344);
    float4 _54_m13 : packoffset(c400);
    float4 _54_m14[47] : packoffset(c401);
    column_major float4x4 _54_m15[15] : packoffset(c448);
    float4 _54_m16[15] : packoffset(c508);
    float4 _54_m17[15] : packoffset(c523);
    float4 _54_m18[15] : packoffset(c538);
    float4 _54_m19 : packoffset(c553);
    float4 _54_m20 : packoffset(c554);
    float4 _54_m21[21] : packoffset(c555);
    column_major float4x4 _54_m22 : packoffset(c576);
    column_major float4x4 _54_m23 : packoffset(c580);
    float4 _54_m24 : packoffset(c584);
    float4 _54_m25 : packoffset(c585);
    float4 _54_m26 : packoffset(c586);
    float4 _54_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _71_72 : register(b49)
{
    float4 _72_m0[32] : packoffset(c0);
    column_major float4x4 _72_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _29 : register(t45);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25);
[[vk::binding(7, 1)]] Texture2D<float4> _34 : register(t7);
[[vk::binding(3, 1)]] SamplerState _35 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _36 : register(t5);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1);
[[vk::binding(6, 1)]] Texture2D<float4> _38 : register(t6);
[[vk::binding(2, 1)]] SamplerState _39 : register(s2);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22);
[[vk::binding(4, 1)]] Texture2D<float4> _41 : register(t4);
[[vk::binding(0, 1)]] SamplerState _42 : register(s0);
[[vk::binding(20, 0)]] SamplerState _43 : register(s20);
[[vk::binding(9, 0)]] Texture2D<float4> _55 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _56 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _57 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _58 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _59 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _62 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _63 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _64 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _65 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _66 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _67 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _68 : register(t29);
[[vk::binding(35, 0)]] Texture3D<float4> _69 : register(t35);
[[vk::binding(28, 0)]] Texture2D<float4> _70 : register(t28);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _4 = (float2)0;
static float2 _5 = (float2)0;
static float3 _6 = (float3)0;
static float4 _7 = (float4)0;
static float4 _8 = (float4)0;
static float3 _9 = (float3)0;
static float3 _10 = (float3)0;
static uint _11 = (uint)0;
static float4 _13 = (float4)0;
static float4 _14 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _4 : TEXCOORD0;
    [[vk::location(1)]] float2 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(4)]] float4 _8 : TEXCOORD4;
    [[vk::location(5)]] float3 _9 : TEXCOORD5;
    [[vk::location(6)]] float3 _10 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _11 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _13 : SV_Target0;
    [[vk::location(1)]] float4 _14 : SV_Target1;
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
    float _393 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _398 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _400 = abs(_398);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _400 : (-_400)), (1.0f - _393) - _398) < 0.0f)
    {
        discard;
    }
    float2 _417 = gl_FragCoord.xy * _18_m0.zw;
    float2 _420 = (_417 * 2.0f) - 1.0f.xx;
    float4 _423 = float4(_420, gl_FragCoord.z, 1.0f);
    _423.y = -_420.y;
    float4 _426 = mul(_16_m6, _423);
    float3 _430 = _426.xyz / _426.w.xxx;
    float4 _434 = float4(_430, 1.0f);
    float _437 = abs(mul(_16_m0, _434).z);
    float _441 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _463;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _463 = _16_m11.xyz - _430;
            break;
        }
        else
        {
            _463 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _464 = dot(_463, _463);
    float _466 = rsqrt(max(_464, 9.9999999392252902907785028219223e-09f));
    float3 _467 = _463 * _466;
    float _468 = _464 * _466;
    float2 _489 = (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw;
    float4 _503 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
    float4 _507 = _36.SampleBias(_37, _489, _45_m13 + _18_m16);
    _507.w = _507.w * _507.x;
    float2 _515 = ((_507.wy * 2.0f) - 1.0f.xx).xy;
    float2 _521 = _515 * _45_m0;
    float4 _523 = _38.SampleBias(_39, _489, _18_m16);
    float3 _538 = lerp(clamp((_503.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
    float _542 = _503.w * _45_m32.w;
    float _548 = lerp(_542, _542 * _8.x, _45_m56);
    float _553 = lerp(_45_m2, _45_m3, _523.y);
    float _563 = lerp(_523.x, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
    float3 _578 = normalize(((_7.xyz * _521.x) + ((cross(_6, float4(_7.xyz, _441).xyz) * _441) * _521.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_515, _515), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _604 = dot(_578, _467);
    float3 _605 = -_467;
    float2 _633 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_605, _578, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _604, 0.5f), _45_m50)).xy, ((_41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
    float2 _634 = _417 + _633;
    float2 _636 = _417 + (_633 * 0.25f);
    float4 _640 = _29.SampleBias(_23, _634, _18_m16);
    float4 _652 = _29.SampleBias(_23, _636, _18_m16);
    float4 _664 = _40.SampleBias(_43, lerp(lerp(_417, _636, step(_437, 1.0f / ((_18_m2.z * _652.x) + _18_m2.w)).xx), _634, step(_437, 1.0f / ((_18_m2.z * _640.x) + _18_m2.w)).xx), _18_m16);
    float _677 = clamp(float(int(sign(_393 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _690 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _690.y = -_690.y;
    float _716 = 0.07999999821186065673828125f * _45_m1;
    float3 _717 = _538 * _563;
    float3 _718 = _538 - _717;
    float3 _722 = (_716 - (_716 * _563)).xxx + _717;
    float4 _725 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _553) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _726 = _725.x;
    float2 _736 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_726 * _726, exp2((-9.27999973297119140625f) * max(0.0f, _604))) * _726) + _725.y)) + _725.zw;
    uint2 _772;
    float _773;
    if (_18_m24.y == 1.0f)
    {
        float4 _753 = mul(_18_m135, _434);
        float4 _756 = _753;
        _756.y = -_753.y;
        float4 _759 = _756 * (1.0f / _753.w);
        _772 = uint2(clamp(((_759.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _773 = 1.0f / ((_18_m2.z * _759.z) + _18_m2.w);
    }
    else
    {
        _772 = uint2(gl_FragCoord.xy);
        _773 = _437;
    }
    float3 _775 = _430 + (_578 * 0.25f);
    float3 _785 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _794 = _775 - (_18_m105.xyz + (_785 * (-_18_m107.w)));
    float _808 = max(clamp((max(abs(_794.x), abs(_794.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_794.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1110;
    float4 _1111;
    float4 _1112;
    float _1113;
    float _1114;
    if ((_18_m105.w != 0.0f) && (_808 < 1.0f))
    {
        float3 _821 = _775 - (_18_m105.xyz + (_785 * (-_18_m107.y)));
        float _835 = max(clamp((max(abs(_821.x), abs(_821.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_821.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _911;
        float4 _912;
        float4 _913;
        float4 _914;
        if (_835 < 1.0f)
        {
            float3 _844 = ((_775 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _846 = _844 - floor(_844);
            float4 _850 = _63.SampleLevel(_25, _846, 0.0f);
            float _851 = 1.0f - _835;
            float _855 = _18_m106.y * 0.5f;
            float _860 = _846.x;
            float _861 = clamp(_846.y, _855, 1.0f - _855) * 0.3333333432674407958984375f;
            float _862 = _846.z;
            float4 _865 = _64.SampleLevel(_24, float3(_860, _861, _862), 0.0f);
            float _881 = _850.x;
            float3 _882 = ((_865.xyz * 4.0f) - 2.0f.xxx) * _881;
            float _891 = _850.y;
            float3 _892 = ((_64.SampleLevel(_24, float3(_860, _861 + 0.3333333432674407958984375f, _862), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _891;
            float _901 = _850.z;
            float3 _902 = ((_64.SampleLevel(_24, float3(_860, _861 + 0.666666686534881591796875f, _862), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _901;
            _911 = _808 + (_865.w * _851);
            _912 = float4(_902, _901) * _851;
            _913 = float4(_892, _891) * _851;
            _914 = float4(_882, _881) * _851;
        }
        else
        {
            _911 = _808;
            _912 = 0.0f.xxxx;
            _913 = 0.0f.xxxx;
            _914 = 0.0f.xxxx;
        }
        float3 _920 = _775 - (_18_m105.xyz + (_785 * (-_18_m107.z)));
        float _934 = max(clamp((max(abs(_920.x), abs(_920.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_920.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1014;
        float4 _1015;
        float4 _1016;
        float4 _1017;
        if (_934 < 1.0f)
        {
            float3 _943 = ((_775 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _945 = _943 - floor(_943);
            float4 _949 = _65.SampleLevel(_25, _945, 0.0f);
            float _951 = _835 * (1.0f - _934);
            float _955 = _18_m106.y * 0.5f;
            float _960 = _945.x;
            float _961 = clamp(_945.y, _955, 1.0f - _955) * 0.3333333432674407958984375f;
            float _962 = _945.z;
            float4 _965 = _66.SampleLevel(_24, float3(_960, _961, _962), 0.0f);
            float _981 = _949.x;
            float3 _982 = ((_965.xyz * 4.0f) - 2.0f.xxx) * _981;
            float _992 = _949.y;
            float3 _993 = ((_66.SampleLevel(_24, float3(_960, _961 + 0.3333333432674407958984375f, _962), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _992;
            float _1003 = _949.z;
            float3 _1004 = ((_66.SampleLevel(_24, float3(_960, _961 + 0.666666686534881591796875f, _962), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1003;
            _1014 = _911 + (_965.w * _951);
            _1015 = _912 + (float4(_1004, _1003) * _951);
            _1016 = _913 + (float4(_993, _992) * _951);
            _1017 = _914 + (float4(_982, _981) * _951);
        }
        else
        {
            _1014 = _911;
            _1015 = _912;
            _1016 = _913;
            _1017 = _914;
        }
        float4 _1100;
        float4 _1101;
        float4 _1102;
        float _1103;
        if (_934 > 0.0f)
        {
            float3 _1026 = ((_775 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1029 = _18_m106.xyz * 0.5f;
            float3 _1031 = clamp(_1026 - floor(_1026), _1029, 1.0f.xxx - _1029);
            float4 _1035 = _67.SampleLevel(_25, _1031, 0.0f);
            float _1037 = _934 * (1.0f - _808);
            float _1041 = _18_m106.y * 0.5f;
            float _1046 = _1031.x;
            float _1047 = clamp(_1031.y, _1041, 1.0f - _1041) * 0.3333333432674407958984375f;
            float _1048 = _1031.z;
            float4 _1051 = _68.SampleLevel(_24, float3(_1046, _1047, _1048), 0.0f);
            _1100 = _1015 + (float4(((_68.SampleLevel(_24, float3(_1046, _1047 + 0.666666686534881591796875f, _1048), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1035.z, _1035.z) * _1037);
            _1101 = _1016 + (float4(((_68.SampleLevel(_24, float3(_1046, _1047 + 0.3333333432674407958984375f, _1048), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1035.y, _1035.y) * _1037);
            _1102 = _1017 + (float4(((_1051.xyz * 4.0f) - 2.0f.xxx) * _1035.x, _1035.x) * _1037);
            _1103 = _1014 + (_1051.w * _1037);
        }
        else
        {
            _1100 = _1015;
            _1101 = _1016;
            _1102 = _1017;
            _1103 = _1014;
        }
        float _1106 = clamp((_1103 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1110 = _1100;
        _1111 = _1101;
        _1112 = _1102;
        _1113 = _1106 - _808;
        _1114 = (_1106 + _808) * 0.5f;
    }
    else
    {
        _1110 = 0.0f.xxxx;
        _1111 = 0.0f.xxxx;
        _1112 = 0.0f.xxxx;
        _1113 = 0.0f;
        _1114 = 1.0f;
    }
    float4 _1134 = _1112 + float4(_18_m108.x * _1114, (_18_m108.y * _1114) + ((_18_m108.w * _1113) * 0.5f), _18_m108.z * _1114, (_18_m108.w * _1114) + ((_18_m108.y * _1113) * 0.375f));
    float4 _1154 = _1111 + float4(_18_m109.x * _1114, (_18_m109.y * _1114) + ((_18_m109.w * _1113) * 0.5f), _18_m109.z * _1114, (_18_m109.w * _1114) + ((_18_m109.y * _1113) * 0.375f));
    float4 _1174 = _1110 + float4(_18_m110.x * _1114, (_18_m110.y * _1114) + ((_18_m110.w * _1113) * 0.5f), _18_m110.z * _1114, (_18_m110.w * _1114) + ((_18_m110.y * _1113) * 0.375f));
    float _1179 = max(0.0f, dot(_1134.xyz, _578) + _1134.w);
    float _1184 = max(0.0f, dot(_1154.xyz, _578) + _1154.w);
    float _1189 = max(0.0f, dot(_1174.xyz, _578) + _1174.w);
    float3 _1199 = reflect(_605, _578);
    float _1207 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_553, 0.001000000047497451305389404296875f))));
    float2 _1208 = float2(_772);
    float2 _1212 = floor(_1208 * _48_m0.w);
    float _1229 = floor(_773 - _48_m2.y);
    float _1233 = clamp(_1229, 0.0f, _48_m1.x - 1.0f);
    uint _1243 = (_1229 <= _1233) ? (_33.Load(uint(_18_m21.z + int(_1212.x + (_1212.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1233)) * 4 + 0)) : 0u;
    float _1246 = dot(float4(_1179, _1184, _1189, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1248;
    float _1251;
    uint _1253;
    _1248 = 0.0f.xxx;
    _1251 = 1.0f;
    _1253 = _1243;
    uint _1254;
    float3 _1249;
    float _1252;
    bool _1256;
    [loop]
    for (;;)
    {
        _1256 = _1251 > 0.00999999977648258209228515625f;
        if ((_1253 != 0u) && _1256)
        {
            uint _1260 = firstbitlow(_1253);
            _1254 = _1253 ^ (1u << (_1260 & 31u));
            float3 _1280 = float3(dot(_48_m4[_1260]._m2, _434), dot(_48_m4[_1260]._m3, _434), dot(_48_m4[_1260]._m4, _434));
            float3 _1281 = abs(_1280);
            if (all(bool3(_1281.x <= _48_m4[_1260]._m1.xyz.x, _1281.y <= _48_m4[_1260]._m1.xyz.y, _1281.z <= _48_m4[_1260]._m1.xyz.z)))
            {
                float3 _1290 = _48_m4[_1260]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1292 = _1281 * 0.100000001490116119384765625f;
                float3 _1293 = _1292 * _1292;
                float3 _1296 = (_48_m4[_1260]._m1.xyz - _1281) * _48_m4[_1260]._m5.xyz;
                float3 _1344;
                [branch]
                if (_48_m4[_1260]._m6.x == 1.0f)
                {
                    float3 _1329 = float3(dot(_48_m4[_1260]._m2.xyz, _1199), dot(_48_m4[_1260]._m3.xyz, _1199), dot(_48_m4[_1260]._m4.xyz, _1199));
                    float3 _1331 = (_48_m4[_1260]._m1.xyz - _1280) / _1329;
                    float3 _1334 = ((-_48_m4[_1260]._m1.xyz) - _1280) / _1329;
                    bool3 _1335 = bool3(_1329.x > 0.0f.xxx.x, _1329.y > 0.0f.xxx.y, _1329.z > 0.0f.xxx.z);
                    float3 _1336 = float3(_1335.x ? _1331.x : _1334.x, _1335.y ? _1331.y : _1334.y, _1335.z ? _1331.z : _1334.z);
                    _1344 = _1280 + (_1329 * min(min(_1336.x, _1336.y), _1336.z));
                }
                else
                {
                    _1344 = _1199;
                }
                float3 _1345 = normalize(_1344);
                float3 _1348 = float3(int3(sign(_1345)));
                float3 _1351 = _1345 / dot(_1345, _1348).xxx;
                float3 _1365;
                if (_1351.z < 0.0f)
                {
                    float3 _1356 = abs(_1351);
                    float2 _1363 = _1348.xy * float2(1.0f - _1356.y, 1.0f - _1356.x);
                    _1365 = float3(_1363.x, _1363.y, _1351.z);
                }
                else
                {
                    _1365 = _1351;
                }
                float _1390 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1260]._m0, float4(_578, 1.0f))));
                float _1403 = clamp((min(_1296.x, min(_1296.y, _1296.z)) * _48_m4[_1260]._m6.y) + ((((((_1290 * _1290).x - ((_1293.x + _1293.y) + _1293.z)) * _48_m4[_1260]._m5.x) * _48_m4[_1260]._m5.x) * (1.0f - _48_m4[_1260]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1260]._m6.w;
                _1249 = _1248 + ((((_31.SampleLevel(_26, float3((((_1365.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1260]._m1.w), _1207).xyz * _48_m4[_1260]._m5.w) * ((((((clamp(abs(_1246 / _1390), 0.0f, 1.0f) * 2.0f) + _1246) / (2.0f + _1390)) - 1.0f) * _18_m23.w) + 1.0f)) * _1403) * _1251);
                _1252 = _1251 * (1.0f - _1403);
            }
            else
            {
                _1249 = _1248;
                _1252 = _1251;
            }
            _1248 = _1249;
            _1251 = _1252;
            _1253 = _1254;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1472;
    if (_1256)
    {
        float3 _1411 = normalize(_1199);
        float3 _1414 = float3(int3(sign(_1411)));
        float3 _1417 = _1411 / dot(_1411, _1414).xxx;
        float3 _1431;
        if (_1417.z < 0.0f)
        {
            float3 _1422 = abs(_1417);
            float2 _1429 = _1414.xy * float2(1.0f - _1422.y, 1.0f - _1422.x);
            _1431 = float3(_1429.x, _1429.y, _1417.z);
        }
        else
        {
            _1431 = _1417;
        }
        float _1458 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_578, 1.0f))));
        _1472 = _1248 + ((_31.SampleLevel(_26, float3((((_1431.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1207).xyz * ((((((clamp(abs(_1246 / _1458), 0.0f, 1.0f) * 2.0f) + _1246) / (2.0f + _1458)) - 1.0f) * _18_m23.w) + 1.0f)) * _1251);
    }
    else
    {
        _1472 = _1248;
    }
    float2 _1993;
    do
    {
        if (_54_m7.w >= 0.9900000095367431640625f)
        {
            _1993 = float2(_54_m7.z, 1.0f);
            break;
        }
        int _1494 = int(_54_m7.x);
        bool3 _1496 = (_1494 == 2).xxx;
        float3 _1504 = _430 - float3(_1496.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1496.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1496.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
        float _1515 = max(clamp((_54_m6.w - dot(_1504, _1504)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
        float _1732;
        bool _1733;
        if (_1515 > 0.0f)
        {
            float _1730;
            bool _1731;
            if (_1494 > 0)
            {
                float3 _1522 = _430 - _54_m1[0].xyz;
                float3 _1526 = _430 - _54_m1[1].xyz;
                float3 _1530 = _430 - _54_m1[2].xyz;
                float3 _1534 = _430 - _54_m1[3].xyz;
                float4 _1539 = float4(dot(_1522, _1522), dot(_1526, _1526), dot(_1530, _1530), dot(_1534, _1534));
                float4 _1548 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
                float4 _1550 = float4(bool4(_1539.x < _1548.x, _1539.y < _1548.y, _1539.z < _1548.z, _1539.w < _1548.w));
                float3 _1554 = clamp(_1550.yzw - _1550.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1558 = clamp(4.0f - dot(float4(_1550.x, _1554.x, _1554.y, _1554.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1560 = clamp(_1558 + 1.0f, 0.0f, 3.0f);
                uint _1561 = uint(_1558);
                uint _1569 = uint(_1560);
                float _1575 = dot(_1539, _346[_1569]) / _54_m1[_1569].w;
                float _1592;
                if (((_1560 > _1558) && (_1575 >= 0.0f)) && (_1575 <= 1.0f))
                {
                    _1592 = _1558 + step(frac(52.98291778564453125f * frac(dot(_1208 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1539, _346[_1561]) / _54_m1[_1561].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1592 = _1558;
                }
                float _1593 = clamp(_1592, 0.0f, 4.0f);
                float4 _1597 = mul(_54_m0[uint(_1593)], _434);
                float _1600 = _1597.z;
                float4 _1601 = float4(_1597.xy, _1600, _1593);
                float3 _1602 = _1601.xyz;
                bool3 _1603 = bool3(_1602.x <= 0.0f.xxx.x, _1602.y <= 0.0f.xxx.y, _1602.z <= 0.0f.xxx.z);
                bool3 _1604 = bool3(_1602.x >= 1.0f.xxx.x, _1602.y >= 1.0f.xxx.y, _1602.z >= 1.0f.xxx.z);
                bool _1610 = any(bool3(_1603.x || _1604.x, _1603.y || _1604.y, _1603.z || _1604.z)) || ((asuint(_1600) & 2147483647u) > 2139095040u);
                int _1611 = int(_1593);
                float2 _1628 = float4(_54_m3[_1611].xy + (_1601.xy * _54_m3[_1611].zw), _1600, _1593).xy * _54_m4.zw;
                float2 _1630 = floor(_1628 + 0.5f.xx);
                float2 _1631 = _1628 - _1630;
                float _1632 = _1631.x;
                float _1633 = _1632 + 0.5f;
                float _1635 = (_1633 * _1633) * 0.5f;
                float _1638 = min(_1632, 0.0f);
                float _1642 = max(_1632, 0.0f);
                float4 _1646 = float4(_1635 - _1632, (1.0f - _1632) - (_1638 * _1638), (_1632 + 1.0f) - (_1642 * _1642), _1635) * 0.44444000720977783203125f;
                float _1647 = _1631.y;
                float _1648 = _1647 + 0.5f;
                float _1650 = (_1648 * _1648) * 0.5f;
                float _1653 = min(_1647, 0.0f);
                float _1657 = max(_1647, 0.0f);
                float4 _1661 = float4(_1650 - _1647, (1.0f - _1647) - (_1653 * _1653), (_1647 + 1.0f) - (_1657 * _1657), _1650) * 0.44444000720977783203125f;
                float2 _1663 = _1646.yw;
                float2 _1664 = _1646.xz + _1663;
                float2 _1666 = _1661.yw;
                float2 _1667 = _1661.xz + _1666;
                float2 _1673 = ((_1663 / _1664) + float2(-1.5f, 0.5f)) * _54_m4.xx;
                float2 _1675 = ((_1666 / _1667) + float2(-1.5f, 0.5f)) * _54_m4.yy;
                float2 _1677 = _1630 * _54_m4.xy;
                float _1678 = _1673.x;
                float _1679 = _1675.x;
                float _1682 = _1673.y;
                float _1685 = _1675.y;
                float _1690 = _1664.x;
                float _1691 = _1667.x;
                float _1693 = _1664.y;
                float _1695 = _1667.y;
                _1730 = _1610 ? 1.0f : (((((_1690 * _1691) * _55.SampleCmpLevelZero(_27, float3(_1677 + float2(_1678, _1679), _366).xy, _1600)) + ((_1693 * _1691) * _55.SampleCmpLevelZero(_27, float3(_1677 + float2(_1682, _1679), _366).xy, _1600))) + ((_1690 * _1695) * _55.SampleCmpLevelZero(_27, float3(_1677 + float2(_1678, _1685), _366).xy, _1600))) + ((_1693 * _1695) * _55.SampleCmpLevelZero(_27, float3(_1677 + float2(_1682, _1685), _366).xy, _1600)));
                _1731 = _1610;
            }
            else
            {
                _1730 = 1.0f;
                _1731 = false;
            }
            _1732 = _1730;
            _1733 = _1731;
        }
        else
        {
            _1732 = 1.0f;
            _1733 = false;
        }
        float _1933;
        float _1934;
        if ((_1515 < 1.0f) || (_54_m8.x > 0.5f))
        {
            float _1744 = 1.0f - clamp(dot(_578, _52_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1755 = (_430 - (_52_m0.xyz * (_1744 * _54_m24.x))) + (_578 * (_1744 * _54_m24.y));
            float4 _1761 = float4(_1755, 1.0f);
            float4 _1762 = mul(_54_m23, _1761);
            float2 _1763 = _1762.xy;
            float _1931;
            if (all(bool2(_1763.x > 0.0f.xx.x, _1763.y > 0.0f.xx.y)) && all(bool2(_1763.x < 1.0f.xx.x, _1763.y < 1.0f.xx.y)))
            {
                uint _1782 = clamp(uint((floor(_1762.y * _54_m25.z) + _1762.x) * _54_m25.y), 0u, 127u);
                uint _1786 = asuint(_54_m27[_1782].x);
                float2 _1787 = spvUnpackHalf2x16(_1786);
                float _1788 = _1787.x;
                float _1930;
                if (_1788 >= 0.0f)
                {
                    float4x4 _1797 = _54_m22;
                    _1797[0].w = _54_m27[_1782].y;
                    _1797[1].w = _54_m27[_1782].z;
                    _1797[2].w = _54_m27[_1782].w;
                    float4 _1804 = mul(_1797, _1761);
                    float3 _1805 = _1804.xyz;
                    float _1929;
                    if (all(bool3(_1805.x > 0.0f.xxx.x, _1805.y > 0.0f.xxx.y, _1805.z > 0.0f.xxx.z)) && all(bool3(_1805.x < 1.0f.xxx.x, _1805.y < 1.0f.xxx.y, _1805.z < 1.0f.xxx.z)))
                    {
                        float _1822 = _1804.z;
                        float2 _1828 = float4((_1804.xy * _54_m24.zw) + float2(_1788, spvUnpackHalf2x16(_1786 >> 16u).x), _1822, 1.0f).xy * _54_m26.zw;
                        float2 _1830 = floor(_1828 + 0.5f.xx);
                        float2 _1831 = _1828 - _1830;
                        float _1832 = _1831.x;
                        float _1833 = _1832 + 0.5f;
                        float _1835 = (_1833 * _1833) * 0.5f;
                        float _1838 = min(_1832, 0.0f);
                        float _1842 = max(_1832, 0.0f);
                        float4 _1846 = float4(_1835 - _1832, (1.0f - _1832) - (_1838 * _1838), (_1832 + 1.0f) - (_1842 * _1842), _1835) * 0.44444000720977783203125f;
                        float _1847 = _1831.y;
                        float _1848 = _1847 + 0.5f;
                        float _1850 = (_1848 * _1848) * 0.5f;
                        float _1853 = min(_1847, 0.0f);
                        float _1857 = max(_1847, 0.0f);
                        float4 _1861 = float4(_1850 - _1847, (1.0f - _1847) - (_1853 * _1853), (_1847 + 1.0f) - (_1857 * _1857), _1850) * 0.44444000720977783203125f;
                        float2 _1863 = _1846.yw;
                        float2 _1864 = _1846.xz + _1863;
                        float2 _1866 = _1861.yw;
                        float2 _1867 = _1861.xz + _1866;
                        float2 _1873 = ((_1863 / _1864) + float2(-1.5f, 0.5f)) * _54_m26.xx;
                        float2 _1875 = ((_1866 / _1867) + float2(-1.5f, 0.5f)) * _54_m26.yy;
                        float2 _1877 = _1830 * _54_m26.xy;
                        float _1878 = _1873.x;
                        float _1879 = _1875.x;
                        float _1882 = _1873.y;
                        float _1885 = _1875.y;
                        float _1890 = _1864.x;
                        float _1891 = _1867.x;
                        float _1893 = _1864.y;
                        float _1895 = _1867.y;
                        _1929 = ((((_1890 * _1891) * _58.SampleCmpLevelZero(_27, float3(_1877 + float2(_1878, _1879), _366).xy, _1822)) + ((_1893 * _1891) * _58.SampleCmpLevelZero(_27, float3(_1877 + float2(_1882, _1879), _366).xy, _1822))) + ((_1890 * _1895) * _58.SampleCmpLevelZero(_27, float3(_1877 + float2(_1878, _1885), _366).xy, _1822))) + ((_1893 * _1895) * _58.SampleCmpLevelZero(_27, float3(_1877 + float2(_1882, _1885), _366).xy, _1822));
                    }
                    else
                    {
                        _1929 = 1.0f;
                    }
                    _1930 = _1929;
                }
                else
                {
                    _1930 = 1.0f;
                }
                _1931 = _1930;
            }
            else
            {
                _1931 = 1.0f;
            }
            _1933 = _1733 ? _1931 : _1732;
            _1934 = _1931;
        }
        else
        {
            _1933 = _1732;
            _1934 = 1.0f;
        }
        float _1937 = lerp(lerp(_1934, _1933, _1515), min(_1934, _1933), _54_m8.x);
        float _1988;
        if (_1937 > 0.001000000047497451305389404296875f)
        {
            float3 _1944 = _430 - _18_m65.xyz;
            float2 _1954 = (_1944 + (_18_m68.xyz * _1944.y)).xz * _18_m66.z;
            float2 _1963 = _18_m67.xy * _18_m75.w;
            _1988 = _1937 * lerp(1.0f, lerp(_57.SampleLevel(_25, _1954 + _1963, 0.0f), _57.SampleLevel(_25, (_1954 * _18_m67.w) + _1963, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1944.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1988 = _1937;
        }
        _1993 = float2(lerp(_1988, _54_m7.z, _54_m7.w), _1988);
        break;
    } while(false);
    float _1998 = lerp(1.0f, min(1.0f, _1993.x), _54_m6.x);
    float4 _2137;
    if (_1998 > 0.001000000047497451305389404296875f)
    {
        float3 _2008 = -_52_m0.xyz;
        float _2013 = dot(_2008, _1199);
        float3 _2015 = _1199 - (_2008 * _2013);
        bool3 _2017 = (_2013 < _52_m4.z).xxx;
        float3 _2025 = normalize((_2008 * _52_m4.z) + ((_2015 * rsqrt(max(6.103515625e-05f, dot(_2015, _2015)))) * _52_m4.y));
        float3 _2026 = float3(_2017.x ? _2025.x : _1199.x, _2017.y ? _2025.y : _1199.y, _2017.z ? _2025.z : _1199.z);
        float3 _2030 = _2026 + _467;
        float3 _2034 = _2030 * rsqrt(max(6.103515625e-05f, dot(_2030, _2030)));
        float _2035 = clamp(dot(_2026, _578), 0.0f, 1.0f);
        float _2037 = clamp(dot(_578, _2034), 0.0f, 1.0f);
        float _2040 = clamp(_604, 0.0f, 1.0f);
        float _2041 = _553 * _553;
        float _2042 = _2041 * _2041;
        float _2063 = (((_2037 * _2042) - _2037) * _2037) + 1.0f;
        float _2066 = 1.0f - clamp(dot(_467, _2034), 0.0f, 1.0f);
        float _2067 = _2066 * _2066;
        float _2069 = (_2066 * _2067) * _2067;
        float _2093 = 1.0f - _553;
        float _2100 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2093 * (1.04997003078460693359375f + (_2093 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2093))))));
        float _2101 = 1.0f - _2100;
        float3 _2104 = _722 + ((1.0f.xxx - _722) * 0.0476190485060214996337890625f);
        float3 _2123 = (clamp((clamp((min(((_722 * (1.0f - _2069)) + _2069.xxx) * ((_2042 / (_2063 * _2063)) * (0.5f / (((_2035 * sqrt(((((-_2040) * _2042) + _2040) * _2040) + _2042)) + (_2040 * sqrt(((((-_2035) * _2042) + _2035) * _2035) + _2042))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2104 * (((_62.SampleLevel(_24, (float2(_2040, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_2035, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2100) / _2101)) * _2104) / (1.0f.xxx - (_2104 * _2101)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_548, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2035) + ((_718 * 1.0f) * _2035);
        float3 _2124 = _2123 * _52_m1.xyz;
        float3 _2135 = lerp(_2124, _2124 * _59.SampleBias(_24, float2(_1998, 0.5f), _18_m16).xyz, (1.0f - _1998).xxx) * 1.0f;
        _2137 = float4(_2135.x, _2135.y, _2135.z, 0.0f.xxxx.w);
    }
    else
    {
        _2137 = 0.0f.xxxx;
    }
    float2 _2139 = floor(_1208 * 0.03125f);
    int _2147 = int((_2139.x + (_2139.y * _50_m5)) * 8.0f);
    float _2154 = floor(_773 - (_18_m3.y * _50_m11));
    float _2158 = clamp(_2154, 0.0f, _50_m7 - 1.0f);
    int _2160 = int(_2158 * 8.0f);
    float3 _2162;
    float _2165;
    _2162 = 0.0f.xxx;
    _2165 = 1.0f;
    float3 _2163;
    float _2166;
    [loop]
    for (int _2167 = 0; _2167 <= 7; _2162 = _2163, _2165 = _2166, _2167++)
    {
        uint _2185 = (_2154 <= _2158) ? (_33.Load(uint(_2147 + _2167) * 4 + 0) & _33.Load(uint((_18_m21.y + _2160) + _2167) * 4 + 0)) : 0u;
        uint _2186 = uint(_2167);
        float3 _2190;
        _2166 = _2165;
        _2190 = 0.0f.xxx;
        uint _2193;
        float _2188;
        float3 _2191;
        [loop]
        for (uint _2192 = _2185; _2192 != 0u; _2166 = _2188, _2190 = _2191, _2192 = _2193)
        {
            uint _2197 = firstbitlow(_2192);
            _2193 = _2192 ^ (1u << (_2197 & 31u));
            int _2203 = int((32u * _2186) + _2197) * 8;
            int _2206 = _2203 + 1;
            int _2209 = _2203 + 2;
            int _2212 = _2203 + 3;
            int _2215 = _2203 + 5;
            int _2218 = _2203 + 6;
            int _2221 = _2203 + 7;
            uint _2225 = uint(_52_m6[_2215].w);
            float _2300;
            if ((_2225 & 1u) == 1u)
            {
                uint _2231 = asuint(_52_m6[_2215].x);
                uint _2238 = asuint(_52_m6[_2215].y);
                uint _2245 = asuint(_52_m6[_2215].z);
                uint _2252 = asuint(_52_m6[_2218].x);
                uint _2259 = asuint(_52_m6[_2218].y);
                uint _2266 = asuint(_52_m6[_2218].z);
                float3 _2285 = abs(mul(float4(_430 - _52_m6[_2206].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2231).x, spvUnpackHalf2x16(_2245).x, spvUnpackHalf2x16(_2259).x, 0.0f), float4(spvUnpackHalf2x16(_2231 >> 16u).x, spvUnpackHalf2x16(_2245 >> 16u).x, spvUnpackHalf2x16(_2259 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2238).x, spvUnpackHalf2x16(_2252).x, spvUnpackHalf2x16(_2266).x, 0.0f), float4(spvUnpackHalf2x16(_2238 >> 16u).x, spvUnpackHalf2x16(_2252 >> 16u).x, spvUnpackHalf2x16(_2266 >> 16u).x, 0.0f))).xyz);
                float _2292 = _52_m6[_2221].x * 0.5f;
                float _2298 = 1.0f - clamp((max(max(_2285.x, _2285.y), _2285.z) - (_2292 + 0.5f)) / (0.5f - _2292), 0.0f, 1.0f);
                _2300 = _2298 * _2298;
            }
            else
            {
                _2300 = 1.0f;
            }
            bool _2304 = _52_m6[_2212].z > 0.5f;
            if ((false || (_2300 < 0.001000000047497451305389404296875f)) || _2304)
            {
                _2188 = _2166;
                _2191 = _2190;
                continue;
            }
            float _3415;
            float3 _3416;
            if (_52_m6[_2203].w < 1.5f)
            {
                float3 _2792 = float3(0.100000001490116119384765625f, _553, 1.0f);
                float _2801 = (0.5f + (0.5f * _52_m6[_2209].y)) - abs(_52_m6[_2209].x);
                float _2802 = _52_m6[_2209].y - _2801;
                float _2809 = abs(max((1.0f - abs(_2801)) - abs(_2802), 0.00048828125f));
                float3 _2813 = normalize(float3(_2801, _2802, (_52_m6[_2209].x >= 0.0f) ? _2809 : (-_2809)));
                float3 _2814 = _52_m6[_2206].xyz - _430;
                float _2815 = dot(_2814, _2814);
                float _2816 = rsqrt(_2815);
                float3 _2817 = _2814 * _2816;
                float _2821 = clamp(_52_m6[_2221].y * _2816, 0.0f, 1.0f);
                int _2826 = int(_52_m6[_2221].w);
                float3 _2827 = _2813 * _52_m6[_2209].z;
                float3 _2828 = _2827 * 0.5f;
                float3 _2829 = _2814 - _2828;
                float3 _2830 = _2814 + _2828;
                bool _2833 = (uint(_52_m6[_2203].w) & 1u) == 0u;
                bool _2836 = _2833 || ((_2225 & 2u) != 0u);
                bool _2839 = (!_2833) && (_52_m6[_2209].z > 0.0f);
                float _2858;
                float _2859;
                if (_2839)
                {
                    float _2843 = length(_2829);
                    float _2844 = length(_2830);
                    _2858 = clamp(0.5f * ((dot(_578, _2829) / _2843) + (dot(_578, _2830) / _2844)), 0.0f, 1.0f);
                    _2859 = 1.0f / ((((_2843 * _2844) + dot(_2829, _2830)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2858 = clamp(dot(_578, _2817), 0.0f, 1.0f);
                    _2859 = 1.0f;
                }
                float _2881;
                if (_52_m6[_2218].w < 0.0f)
                {
                    float _2875 = _2815 * (_52_m6[_2206].w * _52_m6[_2206].w);
                    float _2878 = clamp(1.0f - (_2875 * _2875), 0.0f, 1.0f);
                    _2881 = lerp(1.0f / (_2815 + 1.0f), _2859, float(_2839)) * (_2878 * _2878);
                }
                else
                {
                    float3 _2864 = _2814 * _52_m6[_2206].w;
                    _2881 = _2859 * pow(1.0f - clamp(dot(_2864, _2864), 0.0f, 1.0f), _52_m6[_2218].w);
                }
                float _2887 = clamp((dot(_2817, -_2813) - _52_m6[_2209].z) * _52_m6[_2209].w, 0.0f, 1.0f);
                float _2891 = _2881 * lerp(1.0f, _2887 * _2887, float(_2833));
                float _2991;
                if ((!_2839) && (_2826 >= 0))
                {
                    uint _2897 = uint(_2826);
                    float2 _2984;
                    [branch]
                    if (_2833)
                    {
                        float4 _2974 = mul(_72_m1[_2897], _434);
                        _2984 = _72_m0[_2897].xy + (clamp(_2974.xy / _2974.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2897].zw);
                    }
                    else
                    {
                        float3 _2911 = mul(float4(-_2814, 0.0f), _72_m1[_2897]).xyz;
                        float3 _373 = _2911;
                        float3 _372 = _2911;
                        float3 _371 = abs(_2911);
                        uint _2920 = uint(int(_371.y > _371.x));
                        uint _2926 = (_371.z > _371[_2920]) ? 2u : _2920;
                        uint _2932 = (_2926 * 2u) + uint(_372[_2926] < 0.0f);
                        float _2936 = abs(_373[_2932 / 2u]);
                        float _2956 = 0.5f - (0.000244140625f / _72_m0[_2897].w);
                        _2984 = _72_m0[_2897].xy + (clamp(float2((float(_2932) + ((((_373[uint(_347[_2932].x)] * _348[_2932].x) / _2936) * _2956) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_373[uint(_347[_2932].y)] * _348[_2932].y) / _2936) * _2956)), 0.0f.xx, 1.0f.xx) * _72_m0[_2897].zw);
                    }
                    _2991 = _2891 * _70.SampleLevel(_24, _2984, 0.0f).x;
                }
                else
                {
                    _2991 = _2891;
                }
                bool _2992 = _2991 > 0.0f;
                float _3280;
                if (_2992)
                {
                    int _3044;
                    if (_2836)
                    {
                        _3044 = int(_52_m6[_2212].x);
                    }
                    else
                    {
                        uint _2999 = asuint(_52_m6[_2209].w);
                        uint _3001 = asuint(_52_m6[_2212].x);
                        float3 _3002 = _430 - _52_m6[_2206].xyz;
                        float3 _3003 = abs(_3002);
                        float _3004 = _3003.x;
                        float _3005 = _3003.y;
                        float _3007 = _3003.z;
                        int _3039;
                        if ((_3004 > _3005) && (_3004 > _3007))
                        {
                            _3039 = int((_3002.x > 0.0f) ? (_2999 >> 24u) : ((_2999 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3031;
                            if (_3005 > _3007)
                            {
                                _3031 = int((_3002.y > 0.0f) ? ((_2999 >> 8u) & 255u) : (_2999 & 255u));
                            }
                            else
                            {
                                _3031 = int((_3002.z > 0.0f) ? ((_3001 >> 8u) & 255u) : (_3001 & 255u));
                            }
                            _3039 = _3031;
                        }
                        _3044 = (_3039 < 80) ? _3039 : (-1);
                    }
                    float3 _3054 = (_430 - ((-_2817) * _54_m11[_3044].x)) + (_578 * (_54_m11[_3044].y * 5.0f));
                    float4 _3061 = mul(_54_m10[_3044], float4(_3054, 1.0f));
                    float _3062 = _3061.w;
                    float3 _3065 = _3061.xyz / _3062.xxx;
                    float2 _3066 = _3065.xy;
                    float3 _3074 = _3065.xyz;
                    bool3 _3075 = bool3(_3074.x <= 0.0f.xxx.x, _3074.y <= 0.0f.xxx.y, _3074.z <= 0.0f.xxx.z);
                    bool3 _3076 = bool3(_3074.x >= 1.0f.xxx.x, _3074.y >= 1.0f.xxx.y, _3074.z >= 1.0f.xxx.z);
                    float _3079 = _3065.z;
                    float2 _3090 = ((_3066 * (_54_m12[_3044].zw - _54_m12[_3044].xy)) + _54_m12[_3044].xy).xy * _54_m13.zw;
                    float2 _3092 = floor(_3090 + 0.5f.xx);
                    float2 _3093 = _3090 - _3092;
                    float _3094 = _3093.x;
                    float _3095 = _3094 + 0.5f;
                    float _3096 = _3095 * _3095;
                    float _3099 = 1.0f - _3094;
                    float _3100 = min(_3094, 0.0f);
                    float _3103 = _3094 + 1.0f;
                    float _3104 = max(_3094, 0.0f);
                    float _3115 = _3093.y;
                    float _3116 = _3115 + 0.5f;
                    float _3117 = _3116 * _3116;
                    float _3120 = 1.0f - _3115;
                    float _3121 = min(_3115, 0.0f);
                    float _3124 = _3115 + 1.0f;
                    float _3125 = max(_3115, 0.0f);
                    float3 _3137 = float3(0.1599999964237213134765625f * _3099, 0.1599999964237213134765625f * ((_3103 - (_3104 * _3104)) + 1.0f), _3096 * 0.07999999821186065673828125f);
                    float3 _3138 = float3(0.1599999964237213134765625f * ((_3096 * 0.5f) - _3094), 0.1599999964237213134765625f * ((_3099 - (_3100 * _3100)) + 1.0f), 0.1599999964237213134765625f * _3103) + _3137;
                    float3 _3140 = float3(0.1599999964237213134765625f * _3120, 0.1599999964237213134765625f * ((_3124 - (_3125 * _3125)) + 1.0f), _3117 * 0.07999999821186065673828125f);
                    float3 _3141 = float3(0.1599999964237213134765625f * ((_3117 * 0.5f) - _3115), 0.1599999964237213134765625f * ((_3120 - (_3121 * _3121)) + 1.0f), 0.1599999964237213134765625f * _3124) + _3140;
                    float3 _3147 = ((_3137 / _3138) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.xxx;
                    float3 _3149 = ((_3140 / _3141) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.yyy;
                    float2 _3151 = _3092 * _54_m13.xy;
                    float _3152 = _3147.x;
                    float _3153 = _3149.x;
                    float _3156 = _3147.y;
                    float _3159 = _3147.z;
                    float _3162 = _3149.y;
                    float _3169 = _3149.z;
                    float _3176 = _3138.x;
                    float _3177 = _3141.x;
                    float _3179 = _3138.y;
                    float _3181 = _3138.z;
                    float _3183 = _3141.y;
                    float _3187 = _3141.z;
                    float _3245 = (((((((_3176 * _3177) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3152, _3153), _366).xy, _3079)) + ((_3179 * _3177) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3156, _3153), _366).xy, _3079))) + ((_3181 * _3177) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3159, _3153), _366).xy, _3079))) + ((_3176 * _3183) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3152, _3162), _366).xy, _3079))) + ((_3179 * _3183) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3156, _3162), _366).xy, _3079))) + ((_3181 * _3183) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3159, _3162), _366).xy, _3079))) + ((_3176 * _3187) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3152, _3169), _366).xy, _3079));
                    float2 _3266 = min(_3066, 1.0f.xx - _3066);
                    _3280 = (_3044 >= 0) ? lerp(1.0f, (any(bool3(_3075.x || _3076.x, _3075.y || _3076.y, _3075.z || _3076.z)) || ((asuint(_3079) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3245 + ((_3179 * _3187) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3156, _3169), _366).xy, _3079))) + ((_3181 * _3187) * _56.SampleCmpLevelZero(_27, float3(_3151 + float2(_3159, _3169), _366).xy, _3079))), _2836 ? min(_54_m11[_3044].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_54_m11[_3044].z - _3062) * 0.25f, min(_3266.x, _3266.y)))) : _54_m11[_3044].w) : 1.0f;
                }
                else
                {
                    _3280 = 1.0f;
                }
                float3 _3303;
                float3 _3304;
                if (_2839)
                {
                    float3 _3283 = _2792 * _2792;
                    float _3292 = dot(_1199, _2827);
                    _3303 = _3283 / clamp(_3283 + (0.5f * clamp(_52_m6[_2209].z * _2816, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3304 = normalize(_2829 + (_2827 * clamp(dot(_2829, (_1199 * _3292) - _2827) / ((_52_m6[_2209].z * _52_m6[_2209].z) - (_3292 * _3292)), 0.0f, 1.0f)));
                }
                else
                {
                    _3303 = 1.0f.xxx;
                    _3304 = _2817;
                }
                float3 _3305 = _3304 + _467;
                float3 _3309 = _3305 * rsqrt(max(6.103515625e-05f, dot(_3305, _3305)));
                float3 _3414;
                if (_2992)
                {
                    float _3312 = clamp(_2858, 0.0f, 1.0f);
                    float _3314 = clamp(dot(_578, _3309), 0.0f, 1.0f);
                    float _3316 = clamp(dot(_467, _3309), 0.0f, 1.0f);
                    float _3317 = clamp(_604, 0.0f, 1.0f);
                    float _3318 = _553 * _553;
                    float _3328;
                    if (_2821 > 0.0f)
                    {
                        _3328 = clamp(_3318 + ((_2821 * _2821) / ((_3316 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3328 = _3318;
                    }
                    float _3329 = _3328 * _3328;
                    float _3350 = (((_3314 * _3329) - _3314) * _3314) + 1.0f;
                    float _3355 = 1.0f - _3316;
                    float _3356 = _3355 * _3355;
                    float _3358 = (_3355 * _3356) * _3356;
                    float _3382 = 1.0f - _553;
                    float _3389 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3382 * (1.04997003078460693359375f + (_3382 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3382))))));
                    float _3390 = 1.0f - _3389;
                    float3 _3393 = _722 + ((1.0f.xxx - _722) * 0.0476190485060214996337890625f);
                    float3 _3413 = ((clamp((min(((_722 * (1.0f - _3358)) + _3358.xxx) * (((_3329 / (_3350 * _3350)) * _3303.y) * (0.5f / (((_3312 * sqrt(((((-_3317) * _3329) + _3317) * _3317) + _3329)) + (_3317 * sqrt(((((-_3312) * _3329) + _3312) * _3312) + _3329))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3393 * (((_62.SampleLevel(_24, (float2(_3317, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_3312, _553) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3389) / _3390)) * _3393) / (1.0f.xxx - (_3393 * _3390)))) * _52_m6[_2221].z, 0.0f.xxx, 1000.0f.xxx) * _2858) + ((_718 * _3303.z) * _2858)) * (((_52_m6[_2203].xyz * _2991) * _3280) * _2300);
                    _3414 = _3413;
                }
                else
                {
                    _3414 = 0.0f.xxx;
                }
                _3415 = _2166;
                _3416 = _3414;
            }
            else
            {
                float _2790;
                do
                {
                    if (_2304)
                    {
                        _2790 = 1.0f;
                        break;
                    }
                    float _2324 = (0.5f + (0.5f * _52_m6[_2209].y)) - abs(_52_m6[_2209].x);
                    float _2325 = _52_m6[_2209].y - _2324;
                    float _2332 = abs(max((1.0f - abs(_2324)) - abs(_2325), 0.00048828125f));
                    float3 _2336 = normalize(float3(_2324, _2325, (_52_m6[_2209].x >= 0.0f) ? _2332 : (-_2332)));
                    float3 _2337 = _52_m6[_2206].xyz - _430;
                    float _2338 = dot(_2337, _2337);
                    float3 _2340 = _2337 * rsqrt(_2338);
                    int _2343 = int(_52_m6[_2221].w);
                    float3 _2345 = (_2336 * _52_m6[_2209].z) * 0.5f;
                    float3 _2346 = _2337 - _2345;
                    float3 _2347 = _2337 + _2345;
                    bool _2350 = (uint(_52_m6[_2203].w) & 1u) == 0u;
                    bool _2353 = _2350 || ((_2225 & 2u) != 0u);
                    bool _2356 = (!_2350) && (_52_m6[_2209].z > 0.0f);
                    float _2368;
                    if (_2356)
                    {
                        _2368 = 1.0f / ((((length(_2346) * length(_2347)) + dot(_2346, _2347)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2368 = 1.0f;
                    }
                    float _2390;
                    if (_52_m6[_2218].w < 0.0f)
                    {
                        float _2384 = _2338 * (_52_m6[_2206].w * _52_m6[_2206].w);
                        float _2387 = clamp(1.0f - (_2384 * _2384), 0.0f, 1.0f);
                        _2390 = lerp(1.0f / (_2338 + 1.0f), _2368, float(_2356)) * (_2387 * _2387);
                    }
                    else
                    {
                        float3 _2373 = _2337 * _52_m6[_2206].w;
                        _2390 = _2368 * pow(1.0f - clamp(dot(_2373, _2373), 0.0f, 1.0f), _52_m6[_2218].w);
                    }
                    float _2396 = clamp((dot(_2340, -_2336) - _52_m6[_2209].z) * _52_m6[_2209].w, 0.0f, 1.0f);
                    float _2400 = _2390 * lerp(1.0f, _2396 * _2396, float(_2350));
                    float _2500;
                    if ((!_2356) && (_2343 >= 0))
                    {
                        uint _2406 = uint(_2343);
                        float2 _2493;
                        [branch]
                        if (_2350)
                        {
                            float4 _2483 = mul(_72_m1[_2406], _434);
                            _2493 = _72_m0[_2406].xy + (clamp(_2483.xy / _2483.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2406].zw);
                        }
                        else
                        {
                            float3 _2420 = mul(float4(-_2337, 0.0f), _72_m1[_2406]).xyz;
                            float3 _376 = _2420;
                            float3 _375 = _2420;
                            float3 _374 = abs(_2420);
                            uint _2429 = uint(int(_374.y > _374.x));
                            uint _2435 = (_374.z > _374[_2429]) ? 2u : _2429;
                            uint _2441 = (_2435 * 2u) + uint(_375[_2435] < 0.0f);
                            float _2445 = abs(_376[_2441 / 2u]);
                            float _2465 = 0.5f - (0.000244140625f / _72_m0[_2406].w);
                            _2493 = _72_m0[_2406].xy + (clamp(float2((float(_2441) + ((((_376[uint(_347[_2441].x)] * _348[_2441].x) / _2445) * _2465) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_376[uint(_347[_2441].y)] * _348[_2441].y) / _2445) * _2465)), 0.0f.xx, 1.0f.xx) * _72_m0[_2406].zw);
                        }
                        _2500 = _2400 * _70.SampleLevel(_24, _2493, 0.0f).x;
                    }
                    else
                    {
                        _2500 = _2400;
                    }
                    float _2789;
                    if (_2500 > 0.0f)
                    {
                        int _2553;
                        if (_2353)
                        {
                            _2553 = int(_52_m6[_2212].x);
                        }
                        else
                        {
                            uint _2508 = asuint(_52_m6[_2209].w);
                            uint _2510 = asuint(_52_m6[_2212].x);
                            float3 _2511 = _430 - _52_m6[_2206].xyz;
                            float3 _2512 = abs(_2511);
                            float _2513 = _2512.x;
                            float _2514 = _2512.y;
                            float _2516 = _2512.z;
                            int _2548;
                            if ((_2513 > _2514) && (_2513 > _2516))
                            {
                                _2548 = int((_2511.x > 0.0f) ? (_2508 >> 24u) : ((_2508 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2540;
                                if (_2514 > _2516)
                                {
                                    _2540 = int((_2511.y > 0.0f) ? ((_2508 >> 8u) & 255u) : (_2508 & 255u));
                                }
                                else
                                {
                                    _2540 = int((_2511.z > 0.0f) ? ((_2510 >> 8u) & 255u) : (_2510 & 255u));
                                }
                                _2548 = _2540;
                            }
                            _2553 = (_2548 < 80) ? _2548 : (-1);
                        }
                        float3 _2563 = (_430 - ((-_2340) * _54_m11[_2553].x)) + (_578 * (_54_m11[_2553].y * 5.0f));
                        float4 _2570 = mul(_54_m10[_2553], float4(_2563, 1.0f));
                        float _2571 = _2570.w;
                        float3 _2574 = _2570.xyz / _2571.xxx;
                        float2 _2575 = _2574.xy;
                        float3 _2583 = _2574.xyz;
                        bool3 _2584 = bool3(_2583.x <= 0.0f.xxx.x, _2583.y <= 0.0f.xxx.y, _2583.z <= 0.0f.xxx.z);
                        bool3 _2585 = bool3(_2583.x >= 1.0f.xxx.x, _2583.y >= 1.0f.xxx.y, _2583.z >= 1.0f.xxx.z);
                        float _2588 = _2574.z;
                        float2 _2599 = ((_2575 * (_54_m12[_2553].zw - _54_m12[_2553].xy)) + _54_m12[_2553].xy).xy * _54_m13.zw;
                        float2 _2601 = floor(_2599 + 0.5f.xx);
                        float2 _2602 = _2599 - _2601;
                        float _2603 = _2602.x;
                        float _2604 = _2603 + 0.5f;
                        float _2605 = _2604 * _2604;
                        float _2608 = 1.0f - _2603;
                        float _2609 = min(_2603, 0.0f);
                        float _2612 = _2603 + 1.0f;
                        float _2613 = max(_2603, 0.0f);
                        float _2624 = _2602.y;
                        float _2625 = _2624 + 0.5f;
                        float _2626 = _2625 * _2625;
                        float _2629 = 1.0f - _2624;
                        float _2630 = min(_2624, 0.0f);
                        float _2633 = _2624 + 1.0f;
                        float _2634 = max(_2624, 0.0f);
                        float3 _2646 = float3(0.1599999964237213134765625f * _2608, 0.1599999964237213134765625f * ((_2612 - (_2613 * _2613)) + 1.0f), _2605 * 0.07999999821186065673828125f);
                        float3 _2647 = float3(0.1599999964237213134765625f * ((_2605 * 0.5f) - _2603), 0.1599999964237213134765625f * ((_2608 - (_2609 * _2609)) + 1.0f), 0.1599999964237213134765625f * _2612) + _2646;
                        float3 _2649 = float3(0.1599999964237213134765625f * _2629, 0.1599999964237213134765625f * ((_2633 - (_2634 * _2634)) + 1.0f), _2626 * 0.07999999821186065673828125f);
                        float3 _2650 = float3(0.1599999964237213134765625f * ((_2626 * 0.5f) - _2624), 0.1599999964237213134765625f * ((_2629 - (_2630 * _2630)) + 1.0f), 0.1599999964237213134765625f * _2633) + _2649;
                        float3 _2656 = ((_2646 / _2647) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.xxx;
                        float3 _2658 = ((_2649 / _2650) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.yyy;
                        float2 _2660 = _2601 * _54_m13.xy;
                        float _2661 = _2656.x;
                        float _2662 = _2658.x;
                        float _2665 = _2656.y;
                        float _2668 = _2656.z;
                        float _2671 = _2658.y;
                        float _2678 = _2658.z;
                        float _2685 = _2647.x;
                        float _2686 = _2650.x;
                        float _2688 = _2647.y;
                        float _2690 = _2647.z;
                        float _2692 = _2650.y;
                        float _2696 = _2650.z;
                        float _2754 = (((((((_2685 * _2686) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2661, _2662), _366).xy, _2588)) + ((_2688 * _2686) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2665, _2662), _366).xy, _2588))) + ((_2690 * _2686) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2668, _2662), _366).xy, _2588))) + ((_2685 * _2692) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2661, _2671), _366).xy, _2588))) + ((_2688 * _2692) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2665, _2671), _366).xy, _2588))) + ((_2690 * _2692) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2668, _2671), _366).xy, _2588))) + ((_2685 * _2696) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2661, _2678), _366).xy, _2588));
                        float2 _2775 = min(_2575, 1.0f.xx - _2575);
                        _2789 = (_2553 >= 0) ? lerp(1.0f, (any(bool3(_2584.x || _2585.x, _2584.y || _2585.y, _2584.z || _2585.z)) || ((asuint(_2588) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2754 + ((_2688 * _2696) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2665, _2678), _366).xy, _2588))) + ((_2690 * _2696) * _56.SampleCmpLevelZero(_27, float3(_2660 + float2(_2668, _2678), _366).xy, _2588))), _2353 ? min(_54_m11[_2553].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_54_m11[_2553].z - _2571) * 0.25f, min(_2775.x, _2775.y)))) : _54_m11[_2553].w) : 1.0f;
                    }
                    else
                    {
                        _2789 = 1.0f;
                    }
                    _2790 = _2789;
                    break;
                } while(false);
                _3415 = _2166 * _2790;
                _3416 = 0.0f.xxx;
            }
            _2188 = _3415;
            _2191 = _2190 + _3416;
        }
        _2163 = _2162 + _2190;
    }
    float3 _3426 = ((((float3(_1179, _1184, _1189) * (_718 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _523.z, _45_m4)) * _18_m22.x) + (((((_1472 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_722 * _736.x) + (clamp(50.0f * _722.y, 0.0f, 1.0f) * _736.y).xxx)) * 1.0f)) + lerp((_2137.xyz + ((_2162 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2165)).xyz, (_664.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _548) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3427 = float4(_3426.x, _3426.y, _3426.z, _368.w);
    _3427.w = _548;
    float _3444 = _430.y * _18_m46.w;
    float _3449 = max(0.00999999977648258209228515625f, _3444 + _18_m47.w);
    float3 _3463 = exp(_18_m45.xyz * ((-max(0.0f, (_468 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3449)) / _3449) * exp(_3444 + _18_m48.w))));
    float _3466 = dot(_605, _18_m44.xyz);
    float _3472 = _18_m45.w * _18_m45.w;
    float _3476 = (1.0f + _3472) - ((2.0f * _18_m45.w) * _3466);
    float3 _3806;
    float _3807;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3634 = (uint3(int3(int(_772.x), int(_772.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3635 = _3634.y;
        uint _3636 = _3634.z;
        uint _3639 = _3634.x + (_3635 * _3636);
        uint _3641 = _3635 + (_3636 * _3639);
        uint _3643 = _3636 + (_3639 * _3641);
        uint _3645 = _3639 + (_3641 * _3643);
        float _3667 = dot(_605, -_16_m0[2].xyz);
        float3 _3677 = _430 - _16_m11.xyz;
        float _3679 = (_18_m55.w * ((_3667 > 5.9604644775390625e-08f) ? (1.0f / _3667) : 0.0f)) * (1.0f / _468);
        float _3680 = _3677.y;
        float _3681 = _3679 * _3680;
        float _3683 = _16_m11.y + _3681;
        float _3684 = _3680 - _3681;
        float _3686 = (1.0f - _3679) * _468;
        float _3700 = max(-127.0f, _18_m49.z * _3684);
        float _3724 = max(-127.0f, _18_m52.x * _3684);
        float _3735 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3683 - _18_m49.x)))) * ((abs(_3700) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3700)) / _3700) : (0.693147182464599609375f - (0.2402265071868896484375f * _3700)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3683 - _18_m52.z)))) * ((abs(_3724) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3724)) / _3724) : (0.693147182464599609375f - (0.2402265071868896484375f * _3724))));
        float _3757 = clamp((_468 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3760 = clamp((max(clamp(exp2(-(_3735 * _3686)), 0.0f, 1.0f), _18_m51.w) + clamp((_468 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3757, 0.0f, 1.0f);
        float4 _3800 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _69.SampleLevel(_24, float3((_1208 + ((((float3(uint3(_3645, _3641 + (_3643 * _3645), _369) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_773 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_773 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3806 = _3800.xyz + (((_18_m51.xyz * (1.0f - _3760)) + (((_18_m54.xyz * pow(clamp(dot(_467, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3735 * max(_3686 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3757))) * _3800.w);
        _3807 = _3800.w * _3760;
    }
    else
    {
        float3 _3506 = _430 - _16_m11.xyz;
        float _3508 = _3506.y;
        float _3522 = max(-127.0f, _18_m49.z * _3508);
        float _3546 = max(-127.0f, _18_m52.x * _3508);
        float _3557 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3522) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3522)) / _3522) : (0.693147182464599609375f - (0.2402265071868896484375f * _3522)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3546) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3546)) / _3546) : (0.693147182464599609375f - (0.2402265071868896484375f * _3546))));
        float _3579 = clamp((_468 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3582 = clamp((max(clamp(exp2(-(_3557 * _468)), 0.0f, 1.0f), _18_m51.w) + clamp((_468 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3579, 0.0f, 1.0f);
        _3806 = (_18_m51.xyz * (1.0f - _3582)) + (((_18_m54.xyz * pow(clamp(dot(_467, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3557 * max(_468 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3579));
        _3807 = _3582;
    }
    float3 _3813 = ((_3427.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3463 * _3807)) : (_3463 * _3807))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3466 * _3466)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3472) / max((12.56637096405029296875f * _3476) * sqrt(_3476), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3463)) * _3807 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3806 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
    float3 _3823 = lerp(dot(_3813, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3813, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3833 = min(lerp(((sqrt(sqrt(abs(_690 * 0.5f))) * float2(int2(sign(_690)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _677.xx), 1.0f.xx);
    float4 _3834 = float4(_3833.x, _3833.y, _368.z, _368.w);
    _3834.z = float(clamp(max(dot(_3823.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _548, _548) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3834.w = lerp(0.0f, 0.699999988079071044921875f, _677);
    float3 renodx_output_color = float3(_3823.x, _3823.y, _3823.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3427.w);
    _14 = _3834;
    if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    _11 = stage_input._11;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._13 = _13;
    stage_output._14 = _14;
    return stage_output;
}
