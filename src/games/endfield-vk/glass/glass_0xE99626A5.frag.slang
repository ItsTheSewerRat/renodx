#include "../shared.h"

// Current Vulkan shader mapped from DX11 0xEC75B2AD.
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
    float2 _395 = gl_FragCoord.xy * _18_m0.zw;
    float2 _398 = (_395 * 2.0f) - 1.0f.xx;
    float4 _401 = float4(_398, gl_FragCoord.z, 1.0f);
    _401.y = -_398.y;
    float4 _404 = mul(_16_m6, _401);
    float3 _408 = _404.xyz / _404.w.xxx;
    float4 _412 = float4(_408, 1.0f);
    float _415 = abs(mul(_16_m0, _412).z);
    float _419 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _441;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _441 = _16_m11.xyz - _408;
            break;
        }
        else
        {
            _441 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _442 = dot(_441, _441);
    float _444 = rsqrt(max(_442, 9.9999999392252902907785028219223e-09f));
    float3 _445 = _441 * _444;
    float _446 = _442 * _444;
    float2 _467 = (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw;
    float4 _481 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
    float4 _485 = _36.SampleBias(_37, _467, _45_m13 + _18_m16);
    _485.w = _485.w * _485.x;
    float2 _493 = ((_485.wy * 2.0f) - 1.0f.xx).xy;
    float2 _499 = _493 * _45_m0;
    float4 _501 = _38.SampleBias(_39, _467, _18_m16);
    float3 _516 = lerp(clamp((_481.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
    float _520 = _481.w * _45_m32.w;
    float _526 = lerp(_520, _520 * _8.x, _45_m56);
    float _531 = lerp(_45_m2, _45_m3, _501.y);
    float _541 = lerp(_501.x, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
    float3 _556 = normalize(((_7.xyz * _499.x) + ((cross(_6, float4(_7.xyz, _419).xyz) * _419) * _499.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_493, _493), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _582 = dot(_556, _445);
    float3 _583 = -_445;
    float2 _611 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_583, _556, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _582, 0.5f), _45_m50)).xy, ((_41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
    float2 _612 = _395 + _611;
    float2 _614 = _395 + (_611 * 0.25f);
    float4 _618 = _29.SampleBias(_23, _612, _18_m16);
    float4 _630 = _29.SampleBias(_23, _614, _18_m16);
    float4 _642 = _40.SampleBias(_43, lerp(lerp(_395, _614, step(_415, 1.0f / ((_18_m2.z * _630.x) + _18_m2.w)).xx), _612, step(_415, 1.0f / ((_18_m2.z * _618.x) + _18_m2.w)).xx), _18_m16);
    float _660 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _673 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _673.y = -_673.y;
    float _699 = 0.07999999821186065673828125f * _45_m1;
    float3 _700 = _516 * _541;
    float3 _701 = _516 - _700;
    float3 _705 = (_699 - (_699 * _541)).xxx + _700;
    float4 _708 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _531) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _709 = _708.x;
    float2 _719 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_709 * _709, exp2((-9.27999973297119140625f) * max(0.0f, _582))) * _709) + _708.y)) + _708.zw;
    uint2 _755;
    float _756;
    if (_18_m24.y == 1.0f)
    {
        float4 _736 = mul(_18_m135, _412);
        float4 _739 = _736;
        _739.y = -_736.y;
        float4 _742 = _739 * (1.0f / _736.w);
        _755 = uint2(clamp(((_742.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _756 = 1.0f / ((_18_m2.z * _742.z) + _18_m2.w);
    }
    else
    {
        _755 = uint2(gl_FragCoord.xy);
        _756 = _415;
    }
    float3 _758 = _408 + (_556 * 0.25f);
    float3 _768 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _777 = _758 - (_18_m105.xyz + (_768 * (-_18_m107.w)));
    float _791 = max(clamp((max(abs(_777.x), abs(_777.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_777.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1093;
    float4 _1094;
    float4 _1095;
    float _1096;
    float _1097;
    if ((_18_m105.w != 0.0f) && (_791 < 1.0f))
    {
        float3 _804 = _758 - (_18_m105.xyz + (_768 * (-_18_m107.y)));
        float _818 = max(clamp((max(abs(_804.x), abs(_804.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_804.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _894;
        float4 _895;
        float4 _896;
        float4 _897;
        if (_818 < 1.0f)
        {
            float3 _827 = ((_758 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _829 = _827 - floor(_827);
            float4 _833 = _63.SampleLevel(_25, _829, 0.0f);
            float _834 = 1.0f - _818;
            float _838 = _18_m106.y * 0.5f;
            float _843 = _829.x;
            float _844 = clamp(_829.y, _838, 1.0f - _838) * 0.3333333432674407958984375f;
            float _845 = _829.z;
            float4 _848 = _64.SampleLevel(_24, float3(_843, _844, _845), 0.0f);
            float _864 = _833.x;
            float3 _865 = ((_848.xyz * 4.0f) - 2.0f.xxx) * _864;
            float _874 = _833.y;
            float3 _875 = ((_64.SampleLevel(_24, float3(_843, _844 + 0.3333333432674407958984375f, _845), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _874;
            float _884 = _833.z;
            float3 _885 = ((_64.SampleLevel(_24, float3(_843, _844 + 0.666666686534881591796875f, _845), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _884;
            _894 = _791 + (_848.w * _834);
            _895 = float4(_885, _884) * _834;
            _896 = float4(_875, _874) * _834;
            _897 = float4(_865, _864) * _834;
        }
        else
        {
            _894 = _791;
            _895 = 0.0f.xxxx;
            _896 = 0.0f.xxxx;
            _897 = 0.0f.xxxx;
        }
        float3 _903 = _758 - (_18_m105.xyz + (_768 * (-_18_m107.z)));
        float _917 = max(clamp((max(abs(_903.x), abs(_903.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_903.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _997;
        float4 _998;
        float4 _999;
        float4 _1000;
        if (_917 < 1.0f)
        {
            float3 _926 = ((_758 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _928 = _926 - floor(_926);
            float4 _932 = _65.SampleLevel(_25, _928, 0.0f);
            float _934 = _818 * (1.0f - _917);
            float _938 = _18_m106.y * 0.5f;
            float _943 = _928.x;
            float _944 = clamp(_928.y, _938, 1.0f - _938) * 0.3333333432674407958984375f;
            float _945 = _928.z;
            float4 _948 = _66.SampleLevel(_24, float3(_943, _944, _945), 0.0f);
            float _964 = _932.x;
            float3 _965 = ((_948.xyz * 4.0f) - 2.0f.xxx) * _964;
            float _975 = _932.y;
            float3 _976 = ((_66.SampleLevel(_24, float3(_943, _944 + 0.3333333432674407958984375f, _945), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _975;
            float _986 = _932.z;
            float3 _987 = ((_66.SampleLevel(_24, float3(_943, _944 + 0.666666686534881591796875f, _945), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _986;
            _997 = _894 + (_948.w * _934);
            _998 = _895 + (float4(_987, _986) * _934);
            _999 = _896 + (float4(_976, _975) * _934);
            _1000 = _897 + (float4(_965, _964) * _934);
        }
        else
        {
            _997 = _894;
            _998 = _895;
            _999 = _896;
            _1000 = _897;
        }
        float4 _1083;
        float4 _1084;
        float4 _1085;
        float _1086;
        if (_917 > 0.0f)
        {
            float3 _1009 = ((_758 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1012 = _18_m106.xyz * 0.5f;
            float3 _1014 = clamp(_1009 - floor(_1009), _1012, 1.0f.xxx - _1012);
            float4 _1018 = _67.SampleLevel(_25, _1014, 0.0f);
            float _1020 = _917 * (1.0f - _791);
            float _1024 = _18_m106.y * 0.5f;
            float _1029 = _1014.x;
            float _1030 = clamp(_1014.y, _1024, 1.0f - _1024) * 0.3333333432674407958984375f;
            float _1031 = _1014.z;
            float4 _1034 = _68.SampleLevel(_24, float3(_1029, _1030, _1031), 0.0f);
            _1083 = _998 + (float4(((_68.SampleLevel(_24, float3(_1029, _1030 + 0.666666686534881591796875f, _1031), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1018.z, _1018.z) * _1020);
            _1084 = _999 + (float4(((_68.SampleLevel(_24, float3(_1029, _1030 + 0.3333333432674407958984375f, _1031), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1018.y, _1018.y) * _1020);
            _1085 = _1000 + (float4(((_1034.xyz * 4.0f) - 2.0f.xxx) * _1018.x, _1018.x) * _1020);
            _1086 = _997 + (_1034.w * _1020);
        }
        else
        {
            _1083 = _998;
            _1084 = _999;
            _1085 = _1000;
            _1086 = _997;
        }
        float _1089 = clamp((_1086 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1093 = _1083;
        _1094 = _1084;
        _1095 = _1085;
        _1096 = _1089 - _791;
        _1097 = (_1089 + _791) * 0.5f;
    }
    else
    {
        _1093 = 0.0f.xxxx;
        _1094 = 0.0f.xxxx;
        _1095 = 0.0f.xxxx;
        _1096 = 0.0f;
        _1097 = 1.0f;
    }
    float4 _1117 = _1095 + float4(_18_m108.x * _1097, (_18_m108.y * _1097) + ((_18_m108.w * _1096) * 0.5f), _18_m108.z * _1097, (_18_m108.w * _1097) + ((_18_m108.y * _1096) * 0.375f));
    float4 _1137 = _1094 + float4(_18_m109.x * _1097, (_18_m109.y * _1097) + ((_18_m109.w * _1096) * 0.5f), _18_m109.z * _1097, (_18_m109.w * _1097) + ((_18_m109.y * _1096) * 0.375f));
    float4 _1157 = _1093 + float4(_18_m110.x * _1097, (_18_m110.y * _1097) + ((_18_m110.w * _1096) * 0.5f), _18_m110.z * _1097, (_18_m110.w * _1097) + ((_18_m110.y * _1096) * 0.375f));
    float _1162 = max(0.0f, dot(_1117.xyz, _556) + _1117.w);
    float _1167 = max(0.0f, dot(_1137.xyz, _556) + _1137.w);
    float _1172 = max(0.0f, dot(_1157.xyz, _556) + _1157.w);
    float3 _1182 = reflect(_583, _556);
    float _1190 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_531, 0.001000000047497451305389404296875f))));
    float2 _1191 = float2(_755);
    float2 _1195 = floor(_1191 * _48_m0.w);
    float _1212 = floor(_756 - _48_m2.y);
    float _1216 = clamp(_1212, 0.0f, _48_m1.x - 1.0f);
    uint _1226 = (_1212 <= _1216) ? (_33.Load(uint(_18_m21.z + int(_1195.x + (_1195.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1216)) * 4 + 0)) : 0u;
    float _1229 = dot(float4(_1162, _1167, _1172, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1231;
    float _1234;
    uint _1236;
    _1231 = 0.0f.xxx;
    _1234 = 1.0f;
    _1236 = _1226;
    uint _1237;
    float3 _1232;
    float _1235;
    bool _1239;
    [loop]
    for (;;)
    {
        _1239 = _1234 > 0.00999999977648258209228515625f;
        if ((_1236 != 0u) && _1239)
        {
            uint _1243 = firstbitlow(_1236);
            _1237 = _1236 ^ (1u << (_1243 & 31u));
            float3 _1263 = float3(dot(_48_m4[_1243]._m2, _412), dot(_48_m4[_1243]._m3, _412), dot(_48_m4[_1243]._m4, _412));
            float3 _1264 = abs(_1263);
            if (all(bool3(_1264.x <= _48_m4[_1243]._m1.xyz.x, _1264.y <= _48_m4[_1243]._m1.xyz.y, _1264.z <= _48_m4[_1243]._m1.xyz.z)))
            {
                float3 _1273 = _48_m4[_1243]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1275 = _1264 * 0.100000001490116119384765625f;
                float3 _1276 = _1275 * _1275;
                float3 _1279 = (_48_m4[_1243]._m1.xyz - _1264) * _48_m4[_1243]._m5.xyz;
                float3 _1327;
                [branch]
                if (_48_m4[_1243]._m6.x == 1.0f)
                {
                    float3 _1312 = float3(dot(_48_m4[_1243]._m2.xyz, _1182), dot(_48_m4[_1243]._m3.xyz, _1182), dot(_48_m4[_1243]._m4.xyz, _1182));
                    float3 _1314 = (_48_m4[_1243]._m1.xyz - _1263) / _1312;
                    float3 _1317 = ((-_48_m4[_1243]._m1.xyz) - _1263) / _1312;
                    bool3 _1318 = bool3(_1312.x > 0.0f.xxx.x, _1312.y > 0.0f.xxx.y, _1312.z > 0.0f.xxx.z);
                    float3 _1319 = float3(_1318.x ? _1314.x : _1317.x, _1318.y ? _1314.y : _1317.y, _1318.z ? _1314.z : _1317.z);
                    _1327 = _1263 + (_1312 * min(min(_1319.x, _1319.y), _1319.z));
                }
                else
                {
                    _1327 = _1182;
                }
                float3 _1328 = normalize(_1327);
                float3 _1331 = float3(int3(sign(_1328)));
                float3 _1334 = _1328 / dot(_1328, _1331).xxx;
                float3 _1348;
                if (_1334.z < 0.0f)
                {
                    float3 _1339 = abs(_1334);
                    float2 _1346 = _1331.xy * float2(1.0f - _1339.y, 1.0f - _1339.x);
                    _1348 = float3(_1346.x, _1346.y, _1334.z);
                }
                else
                {
                    _1348 = _1334;
                }
                float _1373 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1243]._m0, float4(_556, 1.0f))));
                float _1386 = clamp((min(_1279.x, min(_1279.y, _1279.z)) * _48_m4[_1243]._m6.y) + ((((((_1273 * _1273).x - ((_1276.x + _1276.y) + _1276.z)) * _48_m4[_1243]._m5.x) * _48_m4[_1243]._m5.x) * (1.0f - _48_m4[_1243]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1243]._m6.w;
                _1232 = _1231 + ((((_31.SampleLevel(_26, float3((((_1348.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1243]._m1.w), _1190).xyz * _48_m4[_1243]._m5.w) * ((((((clamp(abs(_1229 / _1373), 0.0f, 1.0f) * 2.0f) + _1229) / (2.0f + _1373)) - 1.0f) * _18_m23.w) + 1.0f)) * _1386) * _1234);
                _1235 = _1234 * (1.0f - _1386);
            }
            else
            {
                _1232 = _1231;
                _1235 = _1234;
            }
            _1231 = _1232;
            _1234 = _1235;
            _1236 = _1237;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1455;
    if (_1239)
    {
        float3 _1394 = normalize(_1182);
        float3 _1397 = float3(int3(sign(_1394)));
        float3 _1400 = _1394 / dot(_1394, _1397).xxx;
        float3 _1414;
        if (_1400.z < 0.0f)
        {
            float3 _1405 = abs(_1400);
            float2 _1412 = _1397.xy * float2(1.0f - _1405.y, 1.0f - _1405.x);
            _1414 = float3(_1412.x, _1412.y, _1400.z);
        }
        else
        {
            _1414 = _1400;
        }
        float _1441 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_556, 1.0f))));
        _1455 = _1231 + ((_31.SampleLevel(_26, float3((((_1414.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1190).xyz * ((((((clamp(abs(_1229 / _1441), 0.0f, 1.0f) * 2.0f) + _1229) / (2.0f + _1441)) - 1.0f) * _18_m23.w) + 1.0f)) * _1234);
    }
    else
    {
        _1455 = _1231;
    }
    float2 _1976;
    do
    {
        if (_54_m7.w >= 0.9900000095367431640625f)
        {
            _1976 = float2(_54_m7.z, 1.0f);
            break;
        }
        int _1477 = int(_54_m7.x);
        bool3 _1479 = (_1477 == 2).xxx;
        float3 _1487 = _408 - float3(_1479.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1479.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1479.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
        float _1498 = max(clamp((_54_m6.w - dot(_1487, _1487)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
        float _1715;
        bool _1716;
        if (_1498 > 0.0f)
        {
            float _1713;
            bool _1714;
            if (_1477 > 0)
            {
                float3 _1505 = _408 - _54_m1[0].xyz;
                float3 _1509 = _408 - _54_m1[1].xyz;
                float3 _1513 = _408 - _54_m1[2].xyz;
                float3 _1517 = _408 - _54_m1[3].xyz;
                float4 _1522 = float4(dot(_1505, _1505), dot(_1509, _1509), dot(_1513, _1513), dot(_1517, _1517));
                float4 _1531 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
                float4 _1533 = float4(bool4(_1522.x < _1531.x, _1522.y < _1531.y, _1522.z < _1531.z, _1522.w < _1531.w));
                float3 _1537 = clamp(_1533.yzw - _1533.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1541 = clamp(4.0f - dot(float4(_1533.x, _1537.x, _1537.y, _1537.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1543 = clamp(_1541 + 1.0f, 0.0f, 3.0f);
                uint _1544 = uint(_1541);
                uint _1552 = uint(_1543);
                float _1558 = dot(_1522, _346[_1552]) / _54_m1[_1552].w;
                float _1575;
                if (((_1543 > _1541) && (_1558 >= 0.0f)) && (_1558 <= 1.0f))
                {
                    _1575 = _1541 + step(frac(52.98291778564453125f * frac(dot(_1191 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1522, _346[_1544]) / _54_m1[_1544].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1575 = _1541;
                }
                float _1576 = clamp(_1575, 0.0f, 4.0f);
                float4 _1580 = mul(_54_m0[uint(_1576)], _412);
                float _1583 = _1580.z;
                float4 _1584 = float4(_1580.xy, _1583, _1576);
                float3 _1585 = _1584.xyz;
                bool3 _1586 = bool3(_1585.x <= 0.0f.xxx.x, _1585.y <= 0.0f.xxx.y, _1585.z <= 0.0f.xxx.z);
                bool3 _1587 = bool3(_1585.x >= 1.0f.xxx.x, _1585.y >= 1.0f.xxx.y, _1585.z >= 1.0f.xxx.z);
                bool _1593 = any(bool3(_1586.x || _1587.x, _1586.y || _1587.y, _1586.z || _1587.z)) || ((asuint(_1583) & 2147483647u) > 2139095040u);
                int _1594 = int(_1576);
                float2 _1611 = float4(_54_m3[_1594].xy + (_1584.xy * _54_m3[_1594].zw), _1583, _1576).xy * _54_m4.zw;
                float2 _1613 = floor(_1611 + 0.5f.xx);
                float2 _1614 = _1611 - _1613;
                float _1615 = _1614.x;
                float _1616 = _1615 + 0.5f;
                float _1618 = (_1616 * _1616) * 0.5f;
                float _1621 = min(_1615, 0.0f);
                float _1625 = max(_1615, 0.0f);
                float4 _1629 = float4(_1618 - _1615, (1.0f - _1615) - (_1621 * _1621), (_1615 + 1.0f) - (_1625 * _1625), _1618) * 0.44444000720977783203125f;
                float _1630 = _1614.y;
                float _1631 = _1630 + 0.5f;
                float _1633 = (_1631 * _1631) * 0.5f;
                float _1636 = min(_1630, 0.0f);
                float _1640 = max(_1630, 0.0f);
                float4 _1644 = float4(_1633 - _1630, (1.0f - _1630) - (_1636 * _1636), (_1630 + 1.0f) - (_1640 * _1640), _1633) * 0.44444000720977783203125f;
                float2 _1646 = _1629.yw;
                float2 _1647 = _1629.xz + _1646;
                float2 _1649 = _1644.yw;
                float2 _1650 = _1644.xz + _1649;
                float2 _1656 = ((_1646 / _1647) + float2(-1.5f, 0.5f)) * _54_m4.xx;
                float2 _1658 = ((_1649 / _1650) + float2(-1.5f, 0.5f)) * _54_m4.yy;
                float2 _1660 = _1613 * _54_m4.xy;
                float _1661 = _1656.x;
                float _1662 = _1658.x;
                float _1665 = _1656.y;
                float _1668 = _1658.y;
                float _1673 = _1647.x;
                float _1674 = _1650.x;
                float _1676 = _1647.y;
                float _1678 = _1650.y;
                _1713 = _1593 ? 1.0f : (((((_1673 * _1674) * _55.SampleCmpLevelZero(_27, float3(_1660 + float2(_1661, _1662), _366).xy, _1583)) + ((_1676 * _1674) * _55.SampleCmpLevelZero(_27, float3(_1660 + float2(_1665, _1662), _366).xy, _1583))) + ((_1673 * _1678) * _55.SampleCmpLevelZero(_27, float3(_1660 + float2(_1661, _1668), _366).xy, _1583))) + ((_1676 * _1678) * _55.SampleCmpLevelZero(_27, float3(_1660 + float2(_1665, _1668), _366).xy, _1583)));
                _1714 = _1593;
            }
            else
            {
                _1713 = 1.0f;
                _1714 = false;
            }
            _1715 = _1713;
            _1716 = _1714;
        }
        else
        {
            _1715 = 1.0f;
            _1716 = false;
        }
        float _1916;
        float _1917;
        if ((_1498 < 1.0f) || (_54_m8.x > 0.5f))
        {
            float _1727 = 1.0f - clamp(dot(_556, _52_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1738 = (_408 - (_52_m0.xyz * (_1727 * _54_m24.x))) + (_556 * (_1727 * _54_m24.y));
            float4 _1744 = float4(_1738, 1.0f);
            float4 _1745 = mul(_54_m23, _1744);
            float2 _1746 = _1745.xy;
            float _1914;
            if (all(bool2(_1746.x > 0.0f.xx.x, _1746.y > 0.0f.xx.y)) && all(bool2(_1746.x < 1.0f.xx.x, _1746.y < 1.0f.xx.y)))
            {
                uint _1765 = clamp(uint((floor(_1745.y * _54_m25.z) + _1745.x) * _54_m25.y), 0u, 127u);
                uint _1769 = asuint(_54_m27[_1765].x);
                float2 _1770 = spvUnpackHalf2x16(_1769);
                float _1771 = _1770.x;
                float _1913;
                if (_1771 >= 0.0f)
                {
                    float4x4 _1780 = _54_m22;
                    _1780[0].w = _54_m27[_1765].y;
                    _1780[1].w = _54_m27[_1765].z;
                    _1780[2].w = _54_m27[_1765].w;
                    float4 _1787 = mul(_1780, _1744);
                    float3 _1788 = _1787.xyz;
                    float _1912;
                    if (all(bool3(_1788.x > 0.0f.xxx.x, _1788.y > 0.0f.xxx.y, _1788.z > 0.0f.xxx.z)) && all(bool3(_1788.x < 1.0f.xxx.x, _1788.y < 1.0f.xxx.y, _1788.z < 1.0f.xxx.z)))
                    {
                        float _1805 = _1787.z;
                        float2 _1811 = float4((_1787.xy * _54_m24.zw) + float2(_1771, spvUnpackHalf2x16(_1769 >> 16u).x), _1805, 1.0f).xy * _54_m26.zw;
                        float2 _1813 = floor(_1811 + 0.5f.xx);
                        float2 _1814 = _1811 - _1813;
                        float _1815 = _1814.x;
                        float _1816 = _1815 + 0.5f;
                        float _1818 = (_1816 * _1816) * 0.5f;
                        float _1821 = min(_1815, 0.0f);
                        float _1825 = max(_1815, 0.0f);
                        float4 _1829 = float4(_1818 - _1815, (1.0f - _1815) - (_1821 * _1821), (_1815 + 1.0f) - (_1825 * _1825), _1818) * 0.44444000720977783203125f;
                        float _1830 = _1814.y;
                        float _1831 = _1830 + 0.5f;
                        float _1833 = (_1831 * _1831) * 0.5f;
                        float _1836 = min(_1830, 0.0f);
                        float _1840 = max(_1830, 0.0f);
                        float4 _1844 = float4(_1833 - _1830, (1.0f - _1830) - (_1836 * _1836), (_1830 + 1.0f) - (_1840 * _1840), _1833) * 0.44444000720977783203125f;
                        float2 _1846 = _1829.yw;
                        float2 _1847 = _1829.xz + _1846;
                        float2 _1849 = _1844.yw;
                        float2 _1850 = _1844.xz + _1849;
                        float2 _1856 = ((_1846 / _1847) + float2(-1.5f, 0.5f)) * _54_m26.xx;
                        float2 _1858 = ((_1849 / _1850) + float2(-1.5f, 0.5f)) * _54_m26.yy;
                        float2 _1860 = _1813 * _54_m26.xy;
                        float _1861 = _1856.x;
                        float _1862 = _1858.x;
                        float _1865 = _1856.y;
                        float _1868 = _1858.y;
                        float _1873 = _1847.x;
                        float _1874 = _1850.x;
                        float _1876 = _1847.y;
                        float _1878 = _1850.y;
                        _1912 = ((((_1873 * _1874) * _58.SampleCmpLevelZero(_27, float3(_1860 + float2(_1861, _1862), _366).xy, _1805)) + ((_1876 * _1874) * _58.SampleCmpLevelZero(_27, float3(_1860 + float2(_1865, _1862), _366).xy, _1805))) + ((_1873 * _1878) * _58.SampleCmpLevelZero(_27, float3(_1860 + float2(_1861, _1868), _366).xy, _1805))) + ((_1876 * _1878) * _58.SampleCmpLevelZero(_27, float3(_1860 + float2(_1865, _1868), _366).xy, _1805));
                    }
                    else
                    {
                        _1912 = 1.0f;
                    }
                    _1913 = _1912;
                }
                else
                {
                    _1913 = 1.0f;
                }
                _1914 = _1913;
            }
            else
            {
                _1914 = 1.0f;
            }
            _1916 = _1716 ? _1914 : _1715;
            _1917 = _1914;
        }
        else
        {
            _1916 = _1715;
            _1917 = 1.0f;
        }
        float _1920 = lerp(lerp(_1917, _1916, _1498), min(_1917, _1916), _54_m8.x);
        float _1971;
        if (_1920 > 0.001000000047497451305389404296875f)
        {
            float3 _1927 = _408 - _18_m65.xyz;
            float2 _1937 = (_1927 + (_18_m68.xyz * _1927.y)).xz * _18_m66.z;
            float2 _1946 = _18_m67.xy * _18_m75.w;
            _1971 = _1920 * lerp(1.0f, lerp(_57.SampleLevel(_25, _1937 + _1946, 0.0f), _57.SampleLevel(_25, (_1937 * _18_m67.w) + _1946, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1927.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1971 = _1920;
        }
        _1976 = float2(lerp(_1971, _54_m7.z, _54_m7.w), _1971);
        break;
    } while(false);
    float _1981 = lerp(1.0f, min(1.0f, _1976.x), _54_m6.x);
    float4 _2120;
    if (_1981 > 0.001000000047497451305389404296875f)
    {
        float3 _1991 = -_52_m0.xyz;
        float _1996 = dot(_1991, _1182);
        float3 _1998 = _1182 - (_1991 * _1996);
        bool3 _2000 = (_1996 < _52_m4.z).xxx;
        float3 _2008 = normalize((_1991 * _52_m4.z) + ((_1998 * rsqrt(max(6.103515625e-05f, dot(_1998, _1998)))) * _52_m4.y));
        float3 _2009 = float3(_2000.x ? _2008.x : _1182.x, _2000.y ? _2008.y : _1182.y, _2000.z ? _2008.z : _1182.z);
        float3 _2013 = _2009 + _445;
        float3 _2017 = _2013 * rsqrt(max(6.103515625e-05f, dot(_2013, _2013)));
        float _2018 = clamp(dot(_2009, _556), 0.0f, 1.0f);
        float _2020 = clamp(dot(_556, _2017), 0.0f, 1.0f);
        float _2023 = clamp(_582, 0.0f, 1.0f);
        float _2024 = _531 * _531;
        float _2025 = _2024 * _2024;
        float _2046 = (((_2020 * _2025) - _2020) * _2020) + 1.0f;
        float _2049 = 1.0f - clamp(dot(_445, _2017), 0.0f, 1.0f);
        float _2050 = _2049 * _2049;
        float _2052 = (_2049 * _2050) * _2050;
        float _2076 = 1.0f - _531;
        float _2083 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2076 * (1.04997003078460693359375f + (_2076 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2076))))));
        float _2084 = 1.0f - _2083;
        float3 _2087 = _705 + ((1.0f.xxx - _705) * 0.0476190485060214996337890625f);
        float3 _2106 = (clamp((clamp((min(((_705 * (1.0f - _2052)) + _2052.xxx) * ((_2025 / (_2046 * _2046)) * (0.5f / (((_2018 * sqrt(((((-_2023) * _2025) + _2023) * _2023) + _2025)) + (_2023 * sqrt(((((-_2018) * _2025) + _2018) * _2018) + _2025))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2087 * (((_62.SampleLevel(_24, (float2(_2023, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_2018, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2083) / _2084)) * _2087) / (1.0f.xxx - (_2087 * _2084)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_526, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2018) + ((_701 * 1.0f) * _2018);
        float3 _2107 = _2106 * _52_m1.xyz;
        float3 _2118 = lerp(_2107, _2107 * _59.SampleBias(_24, float2(_1981, 0.5f), _18_m16).xyz, (1.0f - _1981).xxx) * 1.0f;
        _2120 = float4(_2118.x, _2118.y, _2118.z, 0.0f.xxxx.w);
    }
    else
    {
        _2120 = 0.0f.xxxx;
    }
    float2 _2122 = floor(_1191 * 0.03125f);
    int _2130 = int((_2122.x + (_2122.y * _50_m5)) * 8.0f);
    float _2137 = floor(_756 - (_18_m3.y * _50_m11));
    float _2141 = clamp(_2137, 0.0f, _50_m7 - 1.0f);
    int _2143 = int(_2141 * 8.0f);
    float3 _2145;
    float _2148;
    _2145 = 0.0f.xxx;
    _2148 = 1.0f;
    float3 _2146;
    float _2149;
    [loop]
    for (int _2150 = 0; _2150 <= 7; _2145 = _2146, _2148 = _2149, _2150++)
    {
        uint _2168 = (_2137 <= _2141) ? (_33.Load(uint(_2130 + _2150) * 4 + 0) & _33.Load(uint((_18_m21.y + _2143) + _2150) * 4 + 0)) : 0u;
        uint _2169 = uint(_2150);
        float3 _2173;
        _2149 = _2148;
        _2173 = 0.0f.xxx;
        uint _2176;
        float _2171;
        float3 _2174;
        [loop]
        for (uint _2175 = _2168; _2175 != 0u; _2149 = _2171, _2173 = _2174, _2175 = _2176)
        {
            uint _2180 = firstbitlow(_2175);
            _2176 = _2175 ^ (1u << (_2180 & 31u));
            int _2186 = int((32u * _2169) + _2180) * 8;
            int _2189 = _2186 + 1;
            int _2192 = _2186 + 2;
            int _2195 = _2186 + 3;
            int _2198 = _2186 + 5;
            int _2201 = _2186 + 6;
            int _2204 = _2186 + 7;
            uint _2208 = uint(_52_m6[_2198].w);
            float _2283;
            if ((_2208 & 1u) == 1u)
            {
                uint _2214 = asuint(_52_m6[_2198].x);
                uint _2221 = asuint(_52_m6[_2198].y);
                uint _2228 = asuint(_52_m6[_2198].z);
                uint _2235 = asuint(_52_m6[_2201].x);
                uint _2242 = asuint(_52_m6[_2201].y);
                uint _2249 = asuint(_52_m6[_2201].z);
                float3 _2268 = abs(mul(float4(_408 - _52_m6[_2189].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2214).x, spvUnpackHalf2x16(_2228).x, spvUnpackHalf2x16(_2242).x, 0.0f), float4(spvUnpackHalf2x16(_2214 >> 16u).x, spvUnpackHalf2x16(_2228 >> 16u).x, spvUnpackHalf2x16(_2242 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2221).x, spvUnpackHalf2x16(_2235).x, spvUnpackHalf2x16(_2249).x, 0.0f), float4(spvUnpackHalf2x16(_2221 >> 16u).x, spvUnpackHalf2x16(_2235 >> 16u).x, spvUnpackHalf2x16(_2249 >> 16u).x, 0.0f))).xyz);
                float _2275 = _52_m6[_2204].x * 0.5f;
                float _2281 = 1.0f - clamp((max(max(_2268.x, _2268.y), _2268.z) - (_2275 + 0.5f)) / (0.5f - _2275), 0.0f, 1.0f);
                _2283 = _2281 * _2281;
            }
            else
            {
                _2283 = 1.0f;
            }
            bool _2287 = _52_m6[_2195].z > 0.5f;
            if ((false || (_2283 < 0.001000000047497451305389404296875f)) || _2287)
            {
                _2171 = _2149;
                _2174 = _2173;
                continue;
            }
            float _3398;
            float3 _3399;
            if (_52_m6[_2186].w < 1.5f)
            {
                float3 _2775 = float3(0.100000001490116119384765625f, _531, 1.0f);
                float _2784 = (0.5f + (0.5f * _52_m6[_2192].y)) - abs(_52_m6[_2192].x);
                float _2785 = _52_m6[_2192].y - _2784;
                float _2792 = abs(max((1.0f - abs(_2784)) - abs(_2785), 0.00048828125f));
                float3 _2796 = normalize(float3(_2784, _2785, (_52_m6[_2192].x >= 0.0f) ? _2792 : (-_2792)));
                float3 _2797 = _52_m6[_2189].xyz - _408;
                float _2798 = dot(_2797, _2797);
                float _2799 = rsqrt(_2798);
                float3 _2800 = _2797 * _2799;
                float _2804 = clamp(_52_m6[_2204].y * _2799, 0.0f, 1.0f);
                int _2809 = int(_52_m6[_2204].w);
                float3 _2810 = _2796 * _52_m6[_2192].z;
                float3 _2811 = _2810 * 0.5f;
                float3 _2812 = _2797 - _2811;
                float3 _2813 = _2797 + _2811;
                bool _2816 = (uint(_52_m6[_2186].w) & 1u) == 0u;
                bool _2819 = _2816 || ((_2208 & 2u) != 0u);
                bool _2822 = (!_2816) && (_52_m6[_2192].z > 0.0f);
                float _2841;
                float _2842;
                if (_2822)
                {
                    float _2826 = length(_2812);
                    float _2827 = length(_2813);
                    _2841 = clamp(0.5f * ((dot(_556, _2812) / _2826) + (dot(_556, _2813) / _2827)), 0.0f, 1.0f);
                    _2842 = 1.0f / ((((_2826 * _2827) + dot(_2812, _2813)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2841 = clamp(dot(_556, _2800), 0.0f, 1.0f);
                    _2842 = 1.0f;
                }
                float _2864;
                if (_52_m6[_2201].w < 0.0f)
                {
                    float _2858 = _2798 * (_52_m6[_2189].w * _52_m6[_2189].w);
                    float _2861 = clamp(1.0f - (_2858 * _2858), 0.0f, 1.0f);
                    _2864 = lerp(1.0f / (_2798 + 1.0f), _2842, float(_2822)) * (_2861 * _2861);
                }
                else
                {
                    float3 _2847 = _2797 * _52_m6[_2189].w;
                    _2864 = _2842 * pow(1.0f - clamp(dot(_2847, _2847), 0.0f, 1.0f), _52_m6[_2201].w);
                }
                float _2870 = clamp((dot(_2800, -_2796) - _52_m6[_2192].z) * _52_m6[_2192].w, 0.0f, 1.0f);
                float _2874 = _2864 * lerp(1.0f, _2870 * _2870, float(_2816));
                float _2974;
                if ((!_2822) && (_2809 >= 0))
                {
                    uint _2880 = uint(_2809);
                    float2 _2967;
                    [branch]
                    if (_2816)
                    {
                        float4 _2957 = mul(_72_m1[_2880], _412);
                        _2967 = _72_m0[_2880].xy + (clamp(_2957.xy / _2957.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2880].zw);
                    }
                    else
                    {
                        float3 _2894 = mul(float4(-_2797, 0.0f), _72_m1[_2880]).xyz;
                        float3 _373 = _2894;
                        float3 _372 = _2894;
                        float3 _371 = abs(_2894);
                        uint _2903 = uint(int(_371.y > _371.x));
                        uint _2909 = (_371.z > _371[_2903]) ? 2u : _2903;
                        uint _2915 = (_2909 * 2u) + uint(_372[_2909] < 0.0f);
                        float _2919 = abs(_373[_2915 / 2u]);
                        float _2939 = 0.5f - (0.000244140625f / _72_m0[_2880].w);
                        _2967 = _72_m0[_2880].xy + (clamp(float2((float(_2915) + ((((_373[uint(_347[_2915].x)] * _348[_2915].x) / _2919) * _2939) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_373[uint(_347[_2915].y)] * _348[_2915].y) / _2919) * _2939)), 0.0f.xx, 1.0f.xx) * _72_m0[_2880].zw);
                    }
                    _2974 = _2874 * _70.SampleLevel(_24, _2967, 0.0f).x;
                }
                else
                {
                    _2974 = _2874;
                }
                bool _2975 = _2974 > 0.0f;
                float _3263;
                if (_2975)
                {
                    int _3027;
                    if (_2819)
                    {
                        _3027 = int(_52_m6[_2195].x);
                    }
                    else
                    {
                        uint _2982 = asuint(_52_m6[_2192].w);
                        uint _2984 = asuint(_52_m6[_2195].x);
                        float3 _2985 = _408 - _52_m6[_2189].xyz;
                        float3 _2986 = abs(_2985);
                        float _2987 = _2986.x;
                        float _2988 = _2986.y;
                        float _2990 = _2986.z;
                        int _3022;
                        if ((_2987 > _2988) && (_2987 > _2990))
                        {
                            _3022 = int((_2985.x > 0.0f) ? (_2982 >> 24u) : ((_2982 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3014;
                            if (_2988 > _2990)
                            {
                                _3014 = int((_2985.y > 0.0f) ? ((_2982 >> 8u) & 255u) : (_2982 & 255u));
                            }
                            else
                            {
                                _3014 = int((_2985.z > 0.0f) ? ((_2984 >> 8u) & 255u) : (_2984 & 255u));
                            }
                            _3022 = _3014;
                        }
                        _3027 = (_3022 < 80) ? _3022 : (-1);
                    }
                    float3 _3037 = (_408 - ((-_2800) * _54_m11[_3027].x)) + (_556 * (_54_m11[_3027].y * 5.0f));
                    float4 _3044 = mul(_54_m10[_3027], float4(_3037, 1.0f));
                    float _3045 = _3044.w;
                    float3 _3048 = _3044.xyz / _3045.xxx;
                    float2 _3049 = _3048.xy;
                    float3 _3057 = _3048.xyz;
                    bool3 _3058 = bool3(_3057.x <= 0.0f.xxx.x, _3057.y <= 0.0f.xxx.y, _3057.z <= 0.0f.xxx.z);
                    bool3 _3059 = bool3(_3057.x >= 1.0f.xxx.x, _3057.y >= 1.0f.xxx.y, _3057.z >= 1.0f.xxx.z);
                    float _3062 = _3048.z;
                    float2 _3073 = ((_3049 * (_54_m12[_3027].zw - _54_m12[_3027].xy)) + _54_m12[_3027].xy).xy * _54_m13.zw;
                    float2 _3075 = floor(_3073 + 0.5f.xx);
                    float2 _3076 = _3073 - _3075;
                    float _3077 = _3076.x;
                    float _3078 = _3077 + 0.5f;
                    float _3079 = _3078 * _3078;
                    float _3082 = 1.0f - _3077;
                    float _3083 = min(_3077, 0.0f);
                    float _3086 = _3077 + 1.0f;
                    float _3087 = max(_3077, 0.0f);
                    float _3098 = _3076.y;
                    float _3099 = _3098 + 0.5f;
                    float _3100 = _3099 * _3099;
                    float _3103 = 1.0f - _3098;
                    float _3104 = min(_3098, 0.0f);
                    float _3107 = _3098 + 1.0f;
                    float _3108 = max(_3098, 0.0f);
                    float3 _3120 = float3(0.1599999964237213134765625f * _3082, 0.1599999964237213134765625f * ((_3086 - (_3087 * _3087)) + 1.0f), _3079 * 0.07999999821186065673828125f);
                    float3 _3121 = float3(0.1599999964237213134765625f * ((_3079 * 0.5f) - _3077), 0.1599999964237213134765625f * ((_3082 - (_3083 * _3083)) + 1.0f), 0.1599999964237213134765625f * _3086) + _3120;
                    float3 _3123 = float3(0.1599999964237213134765625f * _3103, 0.1599999964237213134765625f * ((_3107 - (_3108 * _3108)) + 1.0f), _3100 * 0.07999999821186065673828125f);
                    float3 _3124 = float3(0.1599999964237213134765625f * ((_3100 * 0.5f) - _3098), 0.1599999964237213134765625f * ((_3103 - (_3104 * _3104)) + 1.0f), 0.1599999964237213134765625f * _3107) + _3123;
                    float3 _3130 = ((_3120 / _3121) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.xxx;
                    float3 _3132 = ((_3123 / _3124) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.yyy;
                    float2 _3134 = _3075 * _54_m13.xy;
                    float _3135 = _3130.x;
                    float _3136 = _3132.x;
                    float _3139 = _3130.y;
                    float _3142 = _3130.z;
                    float _3145 = _3132.y;
                    float _3152 = _3132.z;
                    float _3159 = _3121.x;
                    float _3160 = _3124.x;
                    float _3162 = _3121.y;
                    float _3164 = _3121.z;
                    float _3166 = _3124.y;
                    float _3170 = _3124.z;
                    float _3228 = (((((((_3159 * _3160) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3135, _3136), _366).xy, _3062)) + ((_3162 * _3160) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3139, _3136), _366).xy, _3062))) + ((_3164 * _3160) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3142, _3136), _366).xy, _3062))) + ((_3159 * _3166) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3135, _3145), _366).xy, _3062))) + ((_3162 * _3166) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3139, _3145), _366).xy, _3062))) + ((_3164 * _3166) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3142, _3145), _366).xy, _3062))) + ((_3159 * _3170) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3135, _3152), _366).xy, _3062));
                    float2 _3249 = min(_3049, 1.0f.xx - _3049);
                    _3263 = (_3027 >= 0) ? lerp(1.0f, (any(bool3(_3058.x || _3059.x, _3058.y || _3059.y, _3058.z || _3059.z)) || ((asuint(_3062) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3228 + ((_3162 * _3170) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3139, _3152), _366).xy, _3062))) + ((_3164 * _3170) * _56.SampleCmpLevelZero(_27, float3(_3134 + float2(_3142, _3152), _366).xy, _3062))), _2819 ? min(_54_m11[_3027].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_54_m11[_3027].z - _3045) * 0.25f, min(_3249.x, _3249.y)))) : _54_m11[_3027].w) : 1.0f;
                }
                else
                {
                    _3263 = 1.0f;
                }
                float3 _3286;
                float3 _3287;
                if (_2822)
                {
                    float3 _3266 = _2775 * _2775;
                    float _3275 = dot(_1182, _2810);
                    _3286 = _3266 / clamp(_3266 + (0.5f * clamp(_52_m6[_2192].z * _2799, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3287 = normalize(_2812 + (_2810 * clamp(dot(_2812, (_1182 * _3275) - _2810) / ((_52_m6[_2192].z * _52_m6[_2192].z) - (_3275 * _3275)), 0.0f, 1.0f)));
                }
                else
                {
                    _3286 = 1.0f.xxx;
                    _3287 = _2800;
                }
                float3 _3288 = _3287 + _445;
                float3 _3292 = _3288 * rsqrt(max(6.103515625e-05f, dot(_3288, _3288)));
                float3 _3397;
                if (_2975)
                {
                    float _3295 = clamp(_2841, 0.0f, 1.0f);
                    float _3297 = clamp(dot(_556, _3292), 0.0f, 1.0f);
                    float _3299 = clamp(dot(_445, _3292), 0.0f, 1.0f);
                    float _3300 = clamp(_582, 0.0f, 1.0f);
                    float _3301 = _531 * _531;
                    float _3311;
                    if (_2804 > 0.0f)
                    {
                        _3311 = clamp(_3301 + ((_2804 * _2804) / ((_3299 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3311 = _3301;
                    }
                    float _3312 = _3311 * _3311;
                    float _3333 = (((_3297 * _3312) - _3297) * _3297) + 1.0f;
                    float _3338 = 1.0f - _3299;
                    float _3339 = _3338 * _3338;
                    float _3341 = (_3338 * _3339) * _3339;
                    float _3365 = 1.0f - _531;
                    float _3372 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3365 * (1.04997003078460693359375f + (_3365 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3365))))));
                    float _3373 = 1.0f - _3372;
                    float3 _3376 = _705 + ((1.0f.xxx - _705) * 0.0476190485060214996337890625f);
                    float3 _3396 = ((clamp((min(((_705 * (1.0f - _3341)) + _3341.xxx) * (((_3312 / (_3333 * _3333)) * _3286.y) * (0.5f / (((_3295 * sqrt(((((-_3300) * _3312) + _3300) * _3300) + _3312)) + (_3300 * sqrt(((((-_3295) * _3312) + _3295) * _3295) + _3312))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3376 * (((_62.SampleLevel(_24, (float2(_3300, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_3295, _531) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3372) / _3373)) * _3376) / (1.0f.xxx - (_3376 * _3373)))) * _52_m6[_2204].z, 0.0f.xxx, 1000.0f.xxx) * _2841) + ((_701 * _3286.z) * _2841)) * (((_52_m6[_2186].xyz * _2974) * _3263) * _2283);
                    _3397 = _3396;
                }
                else
                {
                    _3397 = 0.0f.xxx;
                }
                _3398 = _2149;
                _3399 = _3397;
            }
            else
            {
                float _2773;
                do
                {
                    if (_2287)
                    {
                        _2773 = 1.0f;
                        break;
                    }
                    float _2307 = (0.5f + (0.5f * _52_m6[_2192].y)) - abs(_52_m6[_2192].x);
                    float _2308 = _52_m6[_2192].y - _2307;
                    float _2315 = abs(max((1.0f - abs(_2307)) - abs(_2308), 0.00048828125f));
                    float3 _2319 = normalize(float3(_2307, _2308, (_52_m6[_2192].x >= 0.0f) ? _2315 : (-_2315)));
                    float3 _2320 = _52_m6[_2189].xyz - _408;
                    float _2321 = dot(_2320, _2320);
                    float3 _2323 = _2320 * rsqrt(_2321);
                    int _2326 = int(_52_m6[_2204].w);
                    float3 _2328 = (_2319 * _52_m6[_2192].z) * 0.5f;
                    float3 _2329 = _2320 - _2328;
                    float3 _2330 = _2320 + _2328;
                    bool _2333 = (uint(_52_m6[_2186].w) & 1u) == 0u;
                    bool _2336 = _2333 || ((_2208 & 2u) != 0u);
                    bool _2339 = (!_2333) && (_52_m6[_2192].z > 0.0f);
                    float _2351;
                    if (_2339)
                    {
                        _2351 = 1.0f / ((((length(_2329) * length(_2330)) + dot(_2329, _2330)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2351 = 1.0f;
                    }
                    float _2373;
                    if (_52_m6[_2201].w < 0.0f)
                    {
                        float _2367 = _2321 * (_52_m6[_2189].w * _52_m6[_2189].w);
                        float _2370 = clamp(1.0f - (_2367 * _2367), 0.0f, 1.0f);
                        _2373 = lerp(1.0f / (_2321 + 1.0f), _2351, float(_2339)) * (_2370 * _2370);
                    }
                    else
                    {
                        float3 _2356 = _2320 * _52_m6[_2189].w;
                        _2373 = _2351 * pow(1.0f - clamp(dot(_2356, _2356), 0.0f, 1.0f), _52_m6[_2201].w);
                    }
                    float _2379 = clamp((dot(_2323, -_2319) - _52_m6[_2192].z) * _52_m6[_2192].w, 0.0f, 1.0f);
                    float _2383 = _2373 * lerp(1.0f, _2379 * _2379, float(_2333));
                    float _2483;
                    if ((!_2339) && (_2326 >= 0))
                    {
                        uint _2389 = uint(_2326);
                        float2 _2476;
                        [branch]
                        if (_2333)
                        {
                            float4 _2466 = mul(_72_m1[_2389], _412);
                            _2476 = _72_m0[_2389].xy + (clamp(_2466.xy / _2466.w.xx, 0.0f.xx, 1.0f.xx) * _72_m0[_2389].zw);
                        }
                        else
                        {
                            float3 _2403 = mul(float4(-_2320, 0.0f), _72_m1[_2389]).xyz;
                            float3 _376 = _2403;
                            float3 _375 = _2403;
                            float3 _374 = abs(_2403);
                            uint _2412 = uint(int(_374.y > _374.x));
                            uint _2418 = (_374.z > _374[_2412]) ? 2u : _2412;
                            uint _2424 = (_2418 * 2u) + uint(_375[_2418] < 0.0f);
                            float _2428 = abs(_376[_2424 / 2u]);
                            float _2448 = 0.5f - (0.000244140625f / _72_m0[_2389].w);
                            _2476 = _72_m0[_2389].xy + (clamp(float2((float(_2424) + ((((_376[uint(_347[_2424].x)] * _348[_2424].x) / _2428) * _2448) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_376[uint(_347[_2424].y)] * _348[_2424].y) / _2428) * _2448)), 0.0f.xx, 1.0f.xx) * _72_m0[_2389].zw);
                        }
                        _2483 = _2383 * _70.SampleLevel(_24, _2476, 0.0f).x;
                    }
                    else
                    {
                        _2483 = _2383;
                    }
                    float _2772;
                    if (_2483 > 0.0f)
                    {
                        int _2536;
                        if (_2336)
                        {
                            _2536 = int(_52_m6[_2195].x);
                        }
                        else
                        {
                            uint _2491 = asuint(_52_m6[_2192].w);
                            uint _2493 = asuint(_52_m6[_2195].x);
                            float3 _2494 = _408 - _52_m6[_2189].xyz;
                            float3 _2495 = abs(_2494);
                            float _2496 = _2495.x;
                            float _2497 = _2495.y;
                            float _2499 = _2495.z;
                            int _2531;
                            if ((_2496 > _2497) && (_2496 > _2499))
                            {
                                _2531 = int((_2494.x > 0.0f) ? (_2491 >> 24u) : ((_2491 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2523;
                                if (_2497 > _2499)
                                {
                                    _2523 = int((_2494.y > 0.0f) ? ((_2491 >> 8u) & 255u) : (_2491 & 255u));
                                }
                                else
                                {
                                    _2523 = int((_2494.z > 0.0f) ? ((_2493 >> 8u) & 255u) : (_2493 & 255u));
                                }
                                _2531 = _2523;
                            }
                            _2536 = (_2531 < 80) ? _2531 : (-1);
                        }
                        float3 _2546 = (_408 - ((-_2323) * _54_m11[_2536].x)) + (_556 * (_54_m11[_2536].y * 5.0f));
                        float4 _2553 = mul(_54_m10[_2536], float4(_2546, 1.0f));
                        float _2554 = _2553.w;
                        float3 _2557 = _2553.xyz / _2554.xxx;
                        float2 _2558 = _2557.xy;
                        float3 _2566 = _2557.xyz;
                        bool3 _2567 = bool3(_2566.x <= 0.0f.xxx.x, _2566.y <= 0.0f.xxx.y, _2566.z <= 0.0f.xxx.z);
                        bool3 _2568 = bool3(_2566.x >= 1.0f.xxx.x, _2566.y >= 1.0f.xxx.y, _2566.z >= 1.0f.xxx.z);
                        float _2571 = _2557.z;
                        float2 _2582 = ((_2558 * (_54_m12[_2536].zw - _54_m12[_2536].xy)) + _54_m12[_2536].xy).xy * _54_m13.zw;
                        float2 _2584 = floor(_2582 + 0.5f.xx);
                        float2 _2585 = _2582 - _2584;
                        float _2586 = _2585.x;
                        float _2587 = _2586 + 0.5f;
                        float _2588 = _2587 * _2587;
                        float _2591 = 1.0f - _2586;
                        float _2592 = min(_2586, 0.0f);
                        float _2595 = _2586 + 1.0f;
                        float _2596 = max(_2586, 0.0f);
                        float _2607 = _2585.y;
                        float _2608 = _2607 + 0.5f;
                        float _2609 = _2608 * _2608;
                        float _2612 = 1.0f - _2607;
                        float _2613 = min(_2607, 0.0f);
                        float _2616 = _2607 + 1.0f;
                        float _2617 = max(_2607, 0.0f);
                        float3 _2629 = float3(0.1599999964237213134765625f * _2591, 0.1599999964237213134765625f * ((_2595 - (_2596 * _2596)) + 1.0f), _2588 * 0.07999999821186065673828125f);
                        float3 _2630 = float3(0.1599999964237213134765625f * ((_2588 * 0.5f) - _2586), 0.1599999964237213134765625f * ((_2591 - (_2592 * _2592)) + 1.0f), 0.1599999964237213134765625f * _2595) + _2629;
                        float3 _2632 = float3(0.1599999964237213134765625f * _2612, 0.1599999964237213134765625f * ((_2616 - (_2617 * _2617)) + 1.0f), _2609 * 0.07999999821186065673828125f);
                        float3 _2633 = float3(0.1599999964237213134765625f * ((_2609 * 0.5f) - _2607), 0.1599999964237213134765625f * ((_2612 - (_2613 * _2613)) + 1.0f), 0.1599999964237213134765625f * _2616) + _2632;
                        float3 _2639 = ((_2629 / _2630) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.xxx;
                        float3 _2641 = ((_2632 / _2633) + float3(-2.5f, -0.5f, 1.5f)) * _54_m13.yyy;
                        float2 _2643 = _2584 * _54_m13.xy;
                        float _2644 = _2639.x;
                        float _2645 = _2641.x;
                        float _2648 = _2639.y;
                        float _2651 = _2639.z;
                        float _2654 = _2641.y;
                        float _2661 = _2641.z;
                        float _2668 = _2630.x;
                        float _2669 = _2633.x;
                        float _2671 = _2630.y;
                        float _2673 = _2630.z;
                        float _2675 = _2633.y;
                        float _2679 = _2633.z;
                        float _2737 = (((((((_2668 * _2669) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2644, _2645), _366).xy, _2571)) + ((_2671 * _2669) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2648, _2645), _366).xy, _2571))) + ((_2673 * _2669) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2651, _2645), _366).xy, _2571))) + ((_2668 * _2675) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2644, _2654), _366).xy, _2571))) + ((_2671 * _2675) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2648, _2654), _366).xy, _2571))) + ((_2673 * _2675) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2651, _2654), _366).xy, _2571))) + ((_2668 * _2679) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2644, _2661), _366).xy, _2571));
                        float2 _2758 = min(_2558, 1.0f.xx - _2558);
                        _2772 = (_2536 >= 0) ? lerp(1.0f, (any(bool3(_2567.x || _2568.x, _2567.y || _2568.y, _2567.z || _2568.z)) || ((asuint(_2571) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2737 + ((_2671 * _2679) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2648, _2661), _366).xy, _2571))) + ((_2673 * _2679) * _56.SampleCmpLevelZero(_27, float3(_2643 + float2(_2651, _2661), _366).xy, _2571))), _2336 ? min(_54_m11[_2536].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_54_m11[_2536].z - _2554) * 0.25f, min(_2758.x, _2758.y)))) : _54_m11[_2536].w) : 1.0f;
                    }
                    else
                    {
                        _2772 = 1.0f;
                    }
                    _2773 = _2772;
                    break;
                } while(false);
                _3398 = _2149 * _2773;
                _3399 = 0.0f.xxx;
            }
            _2171 = _3398;
            _2174 = _2173 + _3399;
        }
        _2146 = _2145 + _2173;
    }
    float3 _3409 = ((((float3(_1162, _1167, _1172) * (_701 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _501.z, _45_m4)) * _18_m22.x) + (((((_1455 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_705 * _719.x) + (clamp(50.0f * _705.y, 0.0f, 1.0f) * _719.y).xxx)) * 1.0f)) + lerp((_2120.xyz + ((_2145 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2148)).xyz, (_642.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _526) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3410 = float4(_3409.x, _3409.y, _3409.z, _368.w);
    _3410.w = _526;
    float _3427 = _408.y * _18_m46.w;
    float _3432 = max(0.00999999977648258209228515625f, _3427 + _18_m47.w);
    float3 _3446 = exp(_18_m45.xyz * ((-max(0.0f, (_446 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3432)) / _3432) * exp(_3427 + _18_m48.w))));
    float _3449 = dot(_583, _18_m44.xyz);
    float _3455 = _18_m45.w * _18_m45.w;
    float _3459 = (1.0f + _3455) - ((2.0f * _18_m45.w) * _3449);
    float3 _3789;
    float _3790;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3617 = (uint3(int3(int(_755.x), int(_755.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3618 = _3617.y;
        uint _3619 = _3617.z;
        uint _3622 = _3617.x + (_3618 * _3619);
        uint _3624 = _3618 + (_3619 * _3622);
        uint _3626 = _3619 + (_3622 * _3624);
        uint _3628 = _3622 + (_3624 * _3626);
        float _3650 = dot(_583, -_16_m0[2].xyz);
        float3 _3660 = _408 - _16_m11.xyz;
        float _3662 = (_18_m55.w * ((_3650 > 5.9604644775390625e-08f) ? (1.0f / _3650) : 0.0f)) * (1.0f / _446);
        float _3663 = _3660.y;
        float _3664 = _3662 * _3663;
        float _3666 = _16_m11.y + _3664;
        float _3667 = _3663 - _3664;
        float _3669 = (1.0f - _3662) * _446;
        float _3683 = max(-127.0f, _18_m49.z * _3667);
        float _3707 = max(-127.0f, _18_m52.x * _3667);
        float _3718 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3666 - _18_m49.x)))) * ((abs(_3683) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3683)) / _3683) : (0.693147182464599609375f - (0.2402265071868896484375f * _3683)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3666 - _18_m52.z)))) * ((abs(_3707) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3707)) / _3707) : (0.693147182464599609375f - (0.2402265071868896484375f * _3707))));
        float _3740 = clamp((_446 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3743 = clamp((max(clamp(exp2(-(_3718 * _3669)), 0.0f, 1.0f), _18_m51.w) + clamp((_446 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3740, 0.0f, 1.0f);
        float4 _3783 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _69.SampleLevel(_24, float3((_1191 + ((((float3(uint3(_3628, _3624 + (_3626 * _3628), _369) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_756 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_756 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3789 = _3783.xyz + (((_18_m51.xyz * (1.0f - _3743)) + (((_18_m54.xyz * pow(clamp(dot(_445, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3718 * max(_3669 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3740))) * _3783.w);
        _3790 = _3783.w * _3743;
    }
    else
    {
        float3 _3489 = _408 - _16_m11.xyz;
        float _3491 = _3489.y;
        float _3505 = max(-127.0f, _18_m49.z * _3491);
        float _3529 = max(-127.0f, _18_m52.x * _3491);
        float _3540 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3505) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3505)) / _3505) : (0.693147182464599609375f - (0.2402265071868896484375f * _3505)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3529) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3529)) / _3529) : (0.693147182464599609375f - (0.2402265071868896484375f * _3529))));
        float _3562 = clamp((_446 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3565 = clamp((max(clamp(exp2(-(_3540 * _446)), 0.0f, 1.0f), _18_m51.w) + clamp((_446 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3562, 0.0f, 1.0f);
        _3789 = (_18_m51.xyz * (1.0f - _3565)) + (((_18_m54.xyz * pow(clamp(dot(_445, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3540 * max(_446 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3562));
        _3790 = _3565;
    }
    float3 _3796 = ((_3410.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3446 * _3790)) : (_3446 * _3790))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3449 * _3449)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3455) / max((12.56637096405029296875f * _3459) * sqrt(_3459), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3446)) * _3790 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3789 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    float3 _3806 = lerp(dot(_3796, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3796, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3816 = min(lerp(((sqrt(sqrt(abs(_673 * 0.5f))) * float2(int2(sign(_673)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _660.xx), 1.0f.xx);
    float4 _3817 = float4(_3816.x, _3816.y, _368.z, _368.w);
    _3817.z = float(clamp(max(dot(_3806.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _526, _526) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3817.w = lerp(0.0f, 0.699999988079071044921875f, _660);
    float3 renodx_output_color = float3(_3806.x, _3806.y, _3806.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3410.w);
    _14 = _3817;
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
