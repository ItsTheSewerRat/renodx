#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x84E5DFA1.
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

struct _43
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

static float _362 = (float)0;
static float4 _364 = (float4)0;
static uint _365 = (uint)0;

static const float4 _342[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _343[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _344[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
[[vk::binding(6, 1)]]
cbuffer _40_41 : register(b6)
{
    float _41_m0 : packoffset(c0);
    float _41_m1 : packoffset(c0.y);
    float _41_m2 : packoffset(c0.z);
    float _41_m3 : packoffset(c0.w);
    float _41_m4 : packoffset(c1);
    float _41_m5 : packoffset(c1.y);
    float _41_m6 : packoffset(c1.z);
    float _41_m7 : packoffset(c1.w);
    float _41_m8 : packoffset(c2);
    float _41_m9 : packoffset(c2.y);
    float _41_m10 : packoffset(c2.z);
    float _41_m11 : packoffset(c2.w);
    float _41_m12 : packoffset(c3);
    float _41_m13 : packoffset(c3.y);
    float _41_m14 : packoffset(c3.z);
    float _41_m15 : packoffset(c3.w);
    float _41_m16 : packoffset(c4);
    float _41_m17 : packoffset(c4.y);
    float _41_m18 : packoffset(c4.z);
    float _41_m19 : packoffset(c4.w);
    float _41_m20 : packoffset(c5);
    float _41_m21 : packoffset(c5.y);
    float _41_m22 : packoffset(c5.z);
    float _41_m23 : packoffset(c5.w);
    float _41_m24 : packoffset(c6);
    float _41_m25 : packoffset(c6.y);
    float _41_m26 : packoffset(c6.z);
    float _41_m27 : packoffset(c6.w);
    float _41_m28 : packoffset(c7);
    float _41_m29 : packoffset(c7.y);
    float _41_m30 : packoffset(c7.z);
    float _41_m31 : packoffset(c7.w);
    float4 _41_m32 : packoffset(c8);
    float4 _41_m33 : packoffset(c9);
    float4 _41_m34 : packoffset(c10);
    float4 _41_m35 : packoffset(c11);
    float4 _41_m36 : packoffset(c12);
    float4 _41_m37 : packoffset(c13);
    float4 _41_m38 : packoffset(c14);
    float4 _41_m39 : packoffset(c15);
    float4 _41_m40 : packoffset(c16);
    float4 _41_m41 : packoffset(c17);
    float4 _41_m42 : packoffset(c18);
    float4 _41_m43 : packoffset(c19);
    float4 _41_m44 : packoffset(c20);
    float4 _41_m45 : packoffset(c21);
    float _41_m46 : packoffset(c22);
    float _41_m47 : packoffset(c22.y);
    float _41_m48 : packoffset(c22.z);
    float _41_m49 : packoffset(c22.w);
};

[[vk::binding(17, 0)]]
cbuffer _42_44 : register(b17)
{
    float4 _44_m0 : packoffset(c0);
    float4 _44_m1 : packoffset(c1);
    float4 _44_m2 : packoffset(c2);
    float4 _44_m3 : packoffset(c3);
    _43 _44_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _45_46 : register(b47)
{
    int _46_m0 : packoffset(c0);
    int _46_m1 : packoffset(c0.y);
    int _46_m2 : packoffset(c0.z);
    int _46_m3 : packoffset(c0.w);
    float _46_m4 : packoffset(c1);
    float _46_m5 : packoffset(c1.y);
    float _46_m6 : packoffset(c1.z);
    float _46_m7 : packoffset(c1.w);
    float _46_m8 : packoffset(c2);
    float _46_m9 : packoffset(c2.y);
    float _46_m10 : packoffset(c2.z);
    float _46_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _47_48 : register(b14)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    float4 _48_m4 : packoffset(c4);
    uint4 _48_m5 : packoffset(c5);
    float4 _48_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _49_50 : register(b15)
{
    column_major float4x4 _50_m0[5] : packoffset(c0);
    float4 _50_m1[4] : packoffset(c20);
    float4 _50_m2[4] : packoffset(c24);
    float4 _50_m3[4] : packoffset(c28);
    float4 _50_m4 : packoffset(c32);
    float4 _50_m5 : packoffset(c33);
    float4 _50_m6 : packoffset(c34);
    float4 _50_m7 : packoffset(c35);
    float4 _50_m8 : packoffset(c36);
    float4 _50_m9[27] : packoffset(c37);
    column_major float4x4 _50_m10[56] : packoffset(c64);
    float4 _50_m11[56] : packoffset(c288);
    float4 _50_m12[56] : packoffset(c344);
    float4 _50_m13 : packoffset(c400);
    float4 _50_m14[47] : packoffset(c401);
    column_major float4x4 _50_m15[15] : packoffset(c448);
    float4 _50_m16[15] : packoffset(c508);
    float4 _50_m17[15] : packoffset(c523);
    float4 _50_m18[15] : packoffset(c538);
    float4 _50_m19 : packoffset(c553);
    float4 _50_m20 : packoffset(c554);
    float4 _50_m21[21] : packoffset(c555);
    column_major float4x4 _50_m22 : packoffset(c576);
    column_major float4x4 _50_m23 : packoffset(c580);
    float4 _50_m24 : packoffset(c584);
    float4 _50_m25 : packoffset(c585);
    float4 _50_m26 : packoffset(c586);
    float4 _50_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _67_68 : register(b49)
{
    float4 _68_m0[32] : packoffset(c0);
    column_major float4x4 _68_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _23 : register(s6);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(23, 0)]] Texture2D<float4> _28 : register(t23);
[[vk::binding(24, 0)]] Texture2D<float4> _29 : register(t24);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25);
[[vk::binding(5, 1)]] Texture2D<float4> _34 : register(t5);
[[vk::binding(2, 1)]] SamplerState _35 : register(s2);
[[vk::binding(3, 1)]] Texture2D<float4> _36 : register(t3);
[[vk::binding(0, 1)]] SamplerState _37 : register(s0);
[[vk::binding(4, 1)]] Texture2D<float4> _38 : register(t4);
[[vk::binding(1, 1)]] SamplerState _39 : register(s1);
[[vk::binding(9, 0)]] Texture2D<float4> _51 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _52 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _53 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _54 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _55 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _59 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _60 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _61 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _62 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _63 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _64 : register(t29);
[[vk::binding(35, 0)]] Texture3D<float4> _65 : register(t35);
[[vk::binding(28, 0)]] Texture2D<float4> _66 : register(t28);

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
    float2 _391 = gl_FragCoord.xy * _18_m0.zw;
    float2 _394 = (_391 * 2.0f) - 1.0f.xx;
    float4 _397 = float4(_394, gl_FragCoord.z, 1.0f);
    _397.y = -_394.y;
    float4 _400 = mul(_16_m6, _397);
    float3 _404 = _400.xyz / _400.w.xxx;
    float4 _408 = float4(_404, 1.0f);
    float _415 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _437;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _437 = _16_m11.xyz - _404;
            break;
        }
        else
        {
            _437 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _438 = dot(_437, _437);
    float _440 = rsqrt(max(_438, 9.9999999392252902907785028219223e-09f));
    float3 _441 = _437 * _440;
    float _442 = _438 * _440;
    float2 _463 = (lerp(_4, _5, _41_m12.xx) * _41_m36.xy) + _41_m36.zw;
    float4 _477 = _34.SampleBias(_35, (lerp(_4, _5, _41_m11.xx) * _41_m35.xy) + _41_m35.zw, _18_m16);
    float4 _481 = _36.SampleBias(_37, _463, _41_m13 + _18_m16);
    _481.w = _481.w * _481.x;
    float2 _489 = ((_481.wy * 2.0f) - 1.0f.xx).xy;
    float2 _495 = _489 * _41_m0;
    float4 _497 = _38.SampleBias(_39, _463, _18_m16);
    float3 _512 = lerp(clamp((_477.xyz * _41_m32.xyz) * _41_m18, 0.0f.xxx, 1.0f.xxx), _41_m32.xyz, _41_m16.xxx);
    float _516 = _477.w * _41_m32.w;
    float _522 = lerp(_516, _516 * _8.x, _41_m46);
    float _527 = lerp(_41_m2, _41_m3, _497.y);
    float _537 = lerp(_497.x, _41_m17, clamp(_41_m15 - 1.0f, 0.0f, 1.0f));
    float3 _552 = normalize(((_7.xyz * _495.x) + ((cross(_6, float4(_7.xyz, _415).xyz) * _415) * _495.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_489, _489), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_41_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _564 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _577 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _577.y = -_577.y;
    float _603 = 0.07999999821186065673828125f * _41_m1;
    float3 _604 = _512 * _537;
    float3 _605 = _512 - _604;
    float3 _609 = (_603 - (_603 * _537)).xxx + _604;
    float _610 = dot(_552, _441);
    float4 _613 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _527) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _614 = _613.x;
    float2 _624 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_614 * _614, exp2((-9.27999973297119140625f) * max(0.0f, _610))) * _614) + _613.y)) + _613.zw;
    uint2 _664;
    float _665;
    if (_18_m24.y == 1.0f)
    {
        float4 _641 = mul(_18_m135, _408);
        float4 _644 = _641;
        _644.y = -_641.y;
        float4 _647 = _644 * (1.0f / _641.w);
        _664 = uint2(clamp(((_647.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _665 = 1.0f / ((_18_m2.z * _647.z) + _18_m2.w);
    }
    else
    {
        _664 = uint2(gl_FragCoord.xy);
        _665 = abs(mul(_16_m0, _408).z);
    }
    float3 _667 = _404 + (_552 * 0.25f);
    float3 _677 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _686 = _667 - (_18_m105.xyz + (_677 * (-_18_m107.w)));
    float _700 = max(clamp((max(abs(_686.x), abs(_686.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_686.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1002;
    float4 _1003;
    float4 _1004;
    float _1005;
    float _1006;
    if ((_18_m105.w != 0.0f) && (_700 < 1.0f))
    {
        float3 _713 = _667 - (_18_m105.xyz + (_677 * (-_18_m107.y)));
        float _727 = max(clamp((max(abs(_713.x), abs(_713.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_713.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _803;
        float4 _804;
        float4 _805;
        float4 _806;
        if (_727 < 1.0f)
        {
            float3 _736 = ((_667 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _738 = _736 - floor(_736);
            float4 _742 = _59.SampleLevel(_24, _738, 0.0f);
            float _743 = 1.0f - _727;
            float _747 = _18_m106.y * 0.5f;
            float _752 = _738.x;
            float _753 = clamp(_738.y, _747, 1.0f - _747) * 0.3333333432674407958984375f;
            float _754 = _738.z;
            float4 _757 = _60.SampleLevel(_23, float3(_752, _753, _754), 0.0f);
            float _773 = _742.x;
            float3 _774 = ((_757.xyz * 4.0f) - 2.0f.xxx) * _773;
            float _783 = _742.y;
            float3 _784 = ((_60.SampleLevel(_23, float3(_752, _753 + 0.3333333432674407958984375f, _754), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _783;
            float _793 = _742.z;
            float3 _794 = ((_60.SampleLevel(_23, float3(_752, _753 + 0.666666686534881591796875f, _754), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _793;
            _803 = _700 + (_757.w * _743);
            _804 = float4(_794, _793) * _743;
            _805 = float4(_784, _783) * _743;
            _806 = float4(_774, _773) * _743;
        }
        else
        {
            _803 = _700;
            _804 = 0.0f.xxxx;
            _805 = 0.0f.xxxx;
            _806 = 0.0f.xxxx;
        }
        float3 _812 = _667 - (_18_m105.xyz + (_677 * (-_18_m107.z)));
        float _826 = max(clamp((max(abs(_812.x), abs(_812.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_812.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _906;
        float4 _907;
        float4 _908;
        float4 _909;
        if (_826 < 1.0f)
        {
            float3 _835 = ((_667 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _837 = _835 - floor(_835);
            float4 _841 = _61.SampleLevel(_24, _837, 0.0f);
            float _843 = _727 * (1.0f - _826);
            float _847 = _18_m106.y * 0.5f;
            float _852 = _837.x;
            float _853 = clamp(_837.y, _847, 1.0f - _847) * 0.3333333432674407958984375f;
            float _854 = _837.z;
            float4 _857 = _62.SampleLevel(_23, float3(_852, _853, _854), 0.0f);
            float _873 = _841.x;
            float3 _874 = ((_857.xyz * 4.0f) - 2.0f.xxx) * _873;
            float _884 = _841.y;
            float3 _885 = ((_62.SampleLevel(_23, float3(_852, _853 + 0.3333333432674407958984375f, _854), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _884;
            float _895 = _841.z;
            float3 _896 = ((_62.SampleLevel(_23, float3(_852, _853 + 0.666666686534881591796875f, _854), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _895;
            _906 = _803 + (_857.w * _843);
            _907 = _804 + (float4(_896, _895) * _843);
            _908 = _805 + (float4(_885, _884) * _843);
            _909 = _806 + (float4(_874, _873) * _843);
        }
        else
        {
            _906 = _803;
            _907 = _804;
            _908 = _805;
            _909 = _806;
        }
        float4 _992;
        float4 _993;
        float4 _994;
        float _995;
        if (_826 > 0.0f)
        {
            float3 _918 = ((_667 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _921 = _18_m106.xyz * 0.5f;
            float3 _923 = clamp(_918 - floor(_918), _921, 1.0f.xxx - _921);
            float4 _927 = _63.SampleLevel(_24, _923, 0.0f);
            float _929 = _826 * (1.0f - _700);
            float _933 = _18_m106.y * 0.5f;
            float _938 = _923.x;
            float _939 = clamp(_923.y, _933, 1.0f - _933) * 0.3333333432674407958984375f;
            float _940 = _923.z;
            float4 _943 = _64.SampleLevel(_23, float3(_938, _939, _940), 0.0f);
            _992 = _907 + (float4(((_64.SampleLevel(_23, float3(_938, _939 + 0.666666686534881591796875f, _940), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _927.z, _927.z) * _929);
            _993 = _908 + (float4(((_64.SampleLevel(_23, float3(_938, _939 + 0.3333333432674407958984375f, _940), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _927.y, _927.y) * _929);
            _994 = _909 + (float4(((_943.xyz * 4.0f) - 2.0f.xxx) * _927.x, _927.x) * _929);
            _995 = _906 + (_943.w * _929);
        }
        else
        {
            _992 = _907;
            _993 = _908;
            _994 = _909;
            _995 = _906;
        }
        float _998 = clamp((_995 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1002 = _992;
        _1003 = _993;
        _1004 = _994;
        _1005 = _998 - _700;
        _1006 = (_998 + _700) * 0.5f;
    }
    else
    {
        _1002 = 0.0f.xxxx;
        _1003 = 0.0f.xxxx;
        _1004 = 0.0f.xxxx;
        _1005 = 0.0f;
        _1006 = 1.0f;
    }
    float4 _1026 = _1004 + float4(_18_m108.x * _1006, (_18_m108.y * _1006) + ((_18_m108.w * _1005) * 0.5f), _18_m108.z * _1006, (_18_m108.w * _1006) + ((_18_m108.y * _1005) * 0.375f));
    float4 _1046 = _1003 + float4(_18_m109.x * _1006, (_18_m109.y * _1006) + ((_18_m109.w * _1005) * 0.5f), _18_m109.z * _1006, (_18_m109.w * _1006) + ((_18_m109.y * _1005) * 0.375f));
    float4 _1066 = _1002 + float4(_18_m110.x * _1006, (_18_m110.y * _1006) + ((_18_m110.w * _1005) * 0.5f), _18_m110.z * _1006, (_18_m110.w * _1006) + ((_18_m110.y * _1005) * 0.375f));
    float _1071 = max(0.0f, dot(_1026.xyz, _552) + _1026.w);
    float _1076 = max(0.0f, dot(_1046.xyz, _552) + _1046.w);
    float _1081 = max(0.0f, dot(_1066.xyz, _552) + _1066.w);
    float3 _1091 = -_441;
    float3 _1092 = reflect(_1091, _552);
    float _1100 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_527, 0.001000000047497451305389404296875f))));
    float2 _1101 = float2(_664);
    float2 _1105 = floor(_1101 * _44_m0.w);
    float _1122 = floor(_665 - _44_m2.y);
    float _1126 = clamp(_1122, 0.0f, _44_m1.x - 1.0f);
    uint _1136 = (_1122 <= _1126) ? (_33.Load(uint(_18_m21.z + int(_1105.x + (_1105.y * _44_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1126)) * 4 + 0)) : 0u;
    float _1139 = dot(float4(_1071, _1076, _1081, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1141;
    float _1144;
    uint _1146;
    _1141 = 0.0f.xxx;
    _1144 = 1.0f;
    _1146 = _1136;
    uint _1147;
    float3 _1142;
    float _1145;
    bool _1149;
    [loop]
    for (;;)
    {
        _1149 = _1144 > 0.00999999977648258209228515625f;
        if ((_1146 != 0u) && _1149)
        {
            uint _1153 = firstbitlow(_1146);
            _1147 = _1146 ^ (1u << (_1153 & 31u));
            float3 _1173 = float3(dot(_44_m4[_1153]._m2, _408), dot(_44_m4[_1153]._m3, _408), dot(_44_m4[_1153]._m4, _408));
            float3 _1174 = abs(_1173);
            if (all(bool3(_1174.x <= _44_m4[_1153]._m1.xyz.x, _1174.y <= _44_m4[_1153]._m1.xyz.y, _1174.z <= _44_m4[_1153]._m1.xyz.z)))
            {
                float3 _1183 = _44_m4[_1153]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1185 = _1174 * 0.100000001490116119384765625f;
                float3 _1186 = _1185 * _1185;
                float3 _1189 = (_44_m4[_1153]._m1.xyz - _1174) * _44_m4[_1153]._m5.xyz;
                float3 _1237;
                [branch]
                if (_44_m4[_1153]._m6.x == 1.0f)
                {
                    float3 _1222 = float3(dot(_44_m4[_1153]._m2.xyz, _1092), dot(_44_m4[_1153]._m3.xyz, _1092), dot(_44_m4[_1153]._m4.xyz, _1092));
                    float3 _1224 = (_44_m4[_1153]._m1.xyz - _1173) / _1222;
                    float3 _1227 = ((-_44_m4[_1153]._m1.xyz) - _1173) / _1222;
                    bool3 _1228 = bool3(_1222.x > 0.0f.xxx.x, _1222.y > 0.0f.xxx.y, _1222.z > 0.0f.xxx.z);
                    float3 _1229 = float3(_1228.x ? _1224.x : _1227.x, _1228.y ? _1224.y : _1227.y, _1228.z ? _1224.z : _1227.z);
                    _1237 = _1173 + (_1222 * min(min(_1229.x, _1229.y), _1229.z));
                }
                else
                {
                    _1237 = _1092;
                }
                float3 _1238 = normalize(_1237);
                float3 _1241 = float3(int3(sign(_1238)));
                float3 _1244 = _1238 / dot(_1238, _1241).xxx;
                float3 _1258;
                if (_1244.z < 0.0f)
                {
                    float3 _1249 = abs(_1244);
                    float2 _1256 = _1241.xy * float2(1.0f - _1249.y, 1.0f - _1249.x);
                    _1258 = float3(_1256.x, _1256.y, _1244.z);
                }
                else
                {
                    _1258 = _1244;
                }
                float _1283 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m4[_1153]._m0, float4(_552, 1.0f))));
                float _1296 = clamp((min(_1189.x, min(_1189.y, _1189.z)) * _44_m4[_1153]._m6.y) + ((((((_1183 * _1183).x - ((_1186.x + _1186.y) + _1186.z)) * _44_m4[_1153]._m5.x) * _44_m4[_1153]._m5.x) * (1.0f - _44_m4[_1153]._m6.y)) * 100.0f), 0.0f, 1.0f) * _44_m4[_1153]._m6.w;
                _1142 = _1141 + ((((_31.SampleLevel(_25, float3((((_1258.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, _44_m4[_1153]._m1.w), _1100).xyz * _44_m4[_1153]._m5.w) * ((((((clamp(abs(_1139 / _1283), 0.0f, 1.0f) * 2.0f) + _1139) / (2.0f + _1283)) - 1.0f) * _18_m23.w) + 1.0f)) * _1296) * _1144);
                _1145 = _1144 * (1.0f - _1296);
            }
            else
            {
                _1142 = _1141;
                _1145 = _1144;
            }
            _1141 = _1142;
            _1144 = _1145;
            _1146 = _1147;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1365;
    if (_1149)
    {
        float3 _1304 = normalize(_1092);
        float3 _1307 = float3(int3(sign(_1304)));
        float3 _1310 = _1304 / dot(_1304, _1307).xxx;
        float3 _1324;
        if (_1310.z < 0.0f)
        {
            float3 _1315 = abs(_1310);
            float2 _1322 = _1307.xy * float2(1.0f - _1315.y, 1.0f - _1315.x);
            _1324 = float3(_1322.x, _1322.y, _1310.z);
        }
        else
        {
            _1324 = _1310;
        }
        float _1351 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m3, float4(_552, 1.0f))));
        _1365 = _1141 + ((_31.SampleLevel(_25, float3((((_1324.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, 0.0f), _1100).xyz * ((((((clamp(abs(_1139 / _1351), 0.0f, 1.0f) * 2.0f) + _1139) / (2.0f + _1351)) - 1.0f) * _18_m23.w) + 1.0f)) * _1144);
    }
    else
    {
        _1365 = _1141;
    }
    float3 _1371 = (_1365 * _18_m23.z) * _18_m22.y;
    float3 _1392;
    [branch]
    if (_18_m23.y != 0.0f)
    {
        float4 _1386 = _29.SampleBias(_23, _391, _18_m16);
        float _1387 = _1386.x;
        _1392 = (_28.SampleBias(_23, _391, _18_m16).xyz * _1387) + (_1371 * (1.0f - _1387));
    }
    else
    {
        _1392 = _1371;
    }
    float2 _1907;
    do
    {
        if (_50_m7.w >= 0.9900000095367431640625f)
        {
            _1907 = float2(_50_m7.z, 1.0f);
            break;
        }
        int _1408 = int(_50_m7.x);
        bool3 _1410 = (_1408 == 2).xxx;
        float3 _1418 = _404 - float3(_1410.x ? _50_m1[0].xyz.x : _16_m11.xyz.x, _1410.y ? _50_m1[0].xyz.y : _16_m11.xyz.y, _1410.z ? _50_m1[0].xyz.z : _16_m11.xyz.z);
        float _1429 = max(clamp((_50_m6.w - dot(_1418, _1418)) * _50_m6.z, 0.0f, 1.0f), _50_m8.x);
        float _1646;
        bool _1647;
        if (_1429 > 0.0f)
        {
            float _1644;
            bool _1645;
            if (_1408 > 0)
            {
                float3 _1436 = _404 - _50_m1[0].xyz;
                float3 _1440 = _404 - _50_m1[1].xyz;
                float3 _1444 = _404 - _50_m1[2].xyz;
                float3 _1448 = _404 - _50_m1[3].xyz;
                float4 _1453 = float4(dot(_1436, _1436), dot(_1440, _1440), dot(_1444, _1444), dot(_1448, _1448));
                float4 _1462 = float4(_50_m1[0].w, _50_m1[1].w, _50_m1[2].w, _50_m1[3].w);
                float4 _1464 = float4(bool4(_1453.x < _1462.x, _1453.y < _1462.y, _1453.z < _1462.z, _1453.w < _1462.w));
                float3 _1468 = clamp(_1464.yzw - _1464.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1472 = clamp(4.0f - dot(float4(_1464.x, _1468.x, _1468.y, _1468.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1474 = clamp(_1472 + 1.0f, 0.0f, 3.0f);
                uint _1475 = uint(_1472);
                uint _1483 = uint(_1474);
                float _1489 = dot(_1453, _342[_1483]) / _50_m1[_1483].w;
                float _1506;
                if (((_1474 > _1472) && (_1489 >= 0.0f)) && (_1489 <= 1.0f))
                {
                    _1506 = _1472 + step(frac(52.98291778564453125f * frac(dot(_1101 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1453, _342[_1475]) / _50_m1[_1475].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1506 = _1472;
                }
                float _1507 = clamp(_1506, 0.0f, 4.0f);
                float4 _1511 = mul(_50_m0[uint(_1507)], _408);
                float _1514 = _1511.z;
                float4 _1515 = float4(_1511.xy, _1514, _1507);
                float3 _1516 = _1515.xyz;
                bool3 _1517 = bool3(_1516.x <= 0.0f.xxx.x, _1516.y <= 0.0f.xxx.y, _1516.z <= 0.0f.xxx.z);
                bool3 _1518 = bool3(_1516.x >= 1.0f.xxx.x, _1516.y >= 1.0f.xxx.y, _1516.z >= 1.0f.xxx.z);
                bool _1524 = any(bool3(_1517.x || _1518.x, _1517.y || _1518.y, _1517.z || _1518.z)) || ((asuint(_1514) & 2147483647u) > 2139095040u);
                int _1525 = int(_1507);
                float2 _1542 = float4(_50_m3[_1525].xy + (_1515.xy * _50_m3[_1525].zw), _1514, _1507).xy * _50_m4.zw;
                float2 _1544 = floor(_1542 + 0.5f.xx);
                float2 _1545 = _1542 - _1544;
                float _1546 = _1545.x;
                float _1547 = _1546 + 0.5f;
                float _1549 = (_1547 * _1547) * 0.5f;
                float _1552 = min(_1546, 0.0f);
                float _1556 = max(_1546, 0.0f);
                float4 _1560 = float4(_1549 - _1546, (1.0f - _1546) - (_1552 * _1552), (_1546 + 1.0f) - (_1556 * _1556), _1549) * 0.44444000720977783203125f;
                float _1561 = _1545.y;
                float _1562 = _1561 + 0.5f;
                float _1564 = (_1562 * _1562) * 0.5f;
                float _1567 = min(_1561, 0.0f);
                float _1571 = max(_1561, 0.0f);
                float4 _1575 = float4(_1564 - _1561, (1.0f - _1561) - (_1567 * _1567), (_1561 + 1.0f) - (_1571 * _1571), _1564) * 0.44444000720977783203125f;
                float2 _1577 = _1560.yw;
                float2 _1578 = _1560.xz + _1577;
                float2 _1580 = _1575.yw;
                float2 _1581 = _1575.xz + _1580;
                float2 _1587 = ((_1577 / _1578) + float2(-1.5f, 0.5f)) * _50_m4.xx;
                float2 _1589 = ((_1580 / _1581) + float2(-1.5f, 0.5f)) * _50_m4.yy;
                float2 _1591 = _1544 * _50_m4.xy;
                float _1592 = _1587.x;
                float _1593 = _1589.x;
                float _1596 = _1587.y;
                float _1599 = _1589.y;
                float _1604 = _1578.x;
                float _1605 = _1581.x;
                float _1607 = _1578.y;
                float _1609 = _1581.y;
                _1644 = _1524 ? 1.0f : (((((_1604 * _1605) * _51.SampleCmpLevelZero(_26, float3(_1591 + float2(_1592, _1593), _362).xy, _1514)) + ((_1607 * _1605) * _51.SampleCmpLevelZero(_26, float3(_1591 + float2(_1596, _1593), _362).xy, _1514))) + ((_1604 * _1609) * _51.SampleCmpLevelZero(_26, float3(_1591 + float2(_1592, _1599), _362).xy, _1514))) + ((_1607 * _1609) * _51.SampleCmpLevelZero(_26, float3(_1591 + float2(_1596, _1599), _362).xy, _1514)));
                _1645 = _1524;
            }
            else
            {
                _1644 = 1.0f;
                _1645 = false;
            }
            _1646 = _1644;
            _1647 = _1645;
        }
        else
        {
            _1646 = 1.0f;
            _1647 = false;
        }
        float _1847;
        float _1848;
        if ((_1429 < 1.0f) || (_50_m8.x > 0.5f))
        {
            float _1658 = 1.0f - clamp(dot(_552, _48_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1669 = (_404 - (_48_m0.xyz * (_1658 * _50_m24.x))) + (_552 * (_1658 * _50_m24.y));
            float4 _1675 = float4(_1669, 1.0f);
            float4 _1676 = mul(_50_m23, _1675);
            float2 _1677 = _1676.xy;
            float _1845;
            if (all(bool2(_1677.x > 0.0f.xx.x, _1677.y > 0.0f.xx.y)) && all(bool2(_1677.x < 1.0f.xx.x, _1677.y < 1.0f.xx.y)))
            {
                uint _1696 = clamp(uint((floor(_1676.y * _50_m25.z) + _1676.x) * _50_m25.y), 0u, 127u);
                uint _1700 = asuint(_50_m27[_1696].x);
                float2 _1701 = spvUnpackHalf2x16(_1700);
                float _1702 = _1701.x;
                float _1844;
                if (_1702 >= 0.0f)
                {
                    float4x4 _1711 = _50_m22;
                    _1711[0].w = _50_m27[_1696].y;
                    _1711[1].w = _50_m27[_1696].z;
                    _1711[2].w = _50_m27[_1696].w;
                    float4 _1718 = mul(_1711, _1675);
                    float3 _1719 = _1718.xyz;
                    float _1843;
                    if (all(bool3(_1719.x > 0.0f.xxx.x, _1719.y > 0.0f.xxx.y, _1719.z > 0.0f.xxx.z)) && all(bool3(_1719.x < 1.0f.xxx.x, _1719.y < 1.0f.xxx.y, _1719.z < 1.0f.xxx.z)))
                    {
                        float _1736 = _1718.z;
                        float2 _1742 = float4((_1718.xy * _50_m24.zw) + float2(_1702, spvUnpackHalf2x16(_1700 >> 16u).x), _1736, 1.0f).xy * _50_m26.zw;
                        float2 _1744 = floor(_1742 + 0.5f.xx);
                        float2 _1745 = _1742 - _1744;
                        float _1746 = _1745.x;
                        float _1747 = _1746 + 0.5f;
                        float _1749 = (_1747 * _1747) * 0.5f;
                        float _1752 = min(_1746, 0.0f);
                        float _1756 = max(_1746, 0.0f);
                        float4 _1760 = float4(_1749 - _1746, (1.0f - _1746) - (_1752 * _1752), (_1746 + 1.0f) - (_1756 * _1756), _1749) * 0.44444000720977783203125f;
                        float _1761 = _1745.y;
                        float _1762 = _1761 + 0.5f;
                        float _1764 = (_1762 * _1762) * 0.5f;
                        float _1767 = min(_1761, 0.0f);
                        float _1771 = max(_1761, 0.0f);
                        float4 _1775 = float4(_1764 - _1761, (1.0f - _1761) - (_1767 * _1767), (_1761 + 1.0f) - (_1771 * _1771), _1764) * 0.44444000720977783203125f;
                        float2 _1777 = _1760.yw;
                        float2 _1778 = _1760.xz + _1777;
                        float2 _1780 = _1775.yw;
                        float2 _1781 = _1775.xz + _1780;
                        float2 _1787 = ((_1777 / _1778) + float2(-1.5f, 0.5f)) * _50_m26.xx;
                        float2 _1789 = ((_1780 / _1781) + float2(-1.5f, 0.5f)) * _50_m26.yy;
                        float2 _1791 = _1744 * _50_m26.xy;
                        float _1792 = _1787.x;
                        float _1793 = _1789.x;
                        float _1796 = _1787.y;
                        float _1799 = _1789.y;
                        float _1804 = _1778.x;
                        float _1805 = _1781.x;
                        float _1807 = _1778.y;
                        float _1809 = _1781.y;
                        _1843 = ((((_1804 * _1805) * _54.SampleCmpLevelZero(_26, float3(_1791 + float2(_1792, _1793), _362).xy, _1736)) + ((_1807 * _1805) * _54.SampleCmpLevelZero(_26, float3(_1791 + float2(_1796, _1793), _362).xy, _1736))) + ((_1804 * _1809) * _54.SampleCmpLevelZero(_26, float3(_1791 + float2(_1792, _1799), _362).xy, _1736))) + ((_1807 * _1809) * _54.SampleCmpLevelZero(_26, float3(_1791 + float2(_1796, _1799), _362).xy, _1736));
                    }
                    else
                    {
                        _1843 = 1.0f;
                    }
                    _1844 = _1843;
                }
                else
                {
                    _1844 = 1.0f;
                }
                _1845 = _1844;
            }
            else
            {
                _1845 = 1.0f;
            }
            _1847 = _1647 ? _1845 : _1646;
            _1848 = _1845;
        }
        else
        {
            _1847 = _1646;
            _1848 = 1.0f;
        }
        float _1851 = lerp(lerp(_1848, _1847, _1429), min(_1848, _1847), _50_m8.x);
        float _1902;
        if (_1851 > 0.001000000047497451305389404296875f)
        {
            float3 _1858 = _404 - _18_m65.xyz;
            float2 _1868 = (_1858 + (_18_m68.xyz * _1858.y)).xz * _18_m66.z;
            float2 _1877 = _18_m67.xy * _18_m75.w;
            _1902 = _1851 * lerp(1.0f, lerp(_53.SampleLevel(_24, _1868 + _1877, 0.0f), _53.SampleLevel(_24, (_1868 * _18_m67.w) + _1877, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1858.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1902 = _1851;
        }
        _1907 = float2(lerp(_1902, _50_m7.z, _50_m7.w), _1902);
        break;
    } while(false);
    float _1912 = lerp(1.0f, min(1.0f, _1907.x), _50_m6.x);
    float4 _2047;
    if (_1912 > 0.001000000047497451305389404296875f)
    {
        float3 _1922 = -_48_m0.xyz;
        float _1927 = dot(_1922, _1092);
        float3 _1929 = _1092 - (_1922 * _1927);
        bool3 _1931 = (_1927 < _48_m4.z).xxx;
        float3 _1939 = normalize((_1922 * _48_m4.z) + ((_1929 * rsqrt(max(6.103515625e-05f, dot(_1929, _1929)))) * _48_m4.y));
        float3 _1940 = float3(_1931.x ? _1939.x : _1092.x, _1931.y ? _1939.y : _1092.y, _1931.z ? _1939.z : _1092.z);
        float3 _1944 = _1940 + _441;
        float3 _1948 = _1944 * rsqrt(max(6.103515625e-05f, dot(_1944, _1944)));
        float _1949 = clamp(dot(_1940, _552), 0.0f, 1.0f);
        float _1951 = clamp(dot(_552, _1948), 0.0f, 1.0f);
        float _1954 = clamp(_610, 0.0f, 1.0f);
        float _1955 = _527 * _527;
        float _1956 = _1955 * _1955;
        float _1977 = (((_1951 * _1956) - _1951) * _1951) + 1.0f;
        float _1980 = 1.0f - clamp(dot(_441, _1948), 0.0f, 1.0f);
        float _1981 = _1980 * _1980;
        float _1983 = (_1980 * _1981) * _1981;
        float _2007 = 1.0f - _527;
        float _2014 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2007 * (1.04997003078460693359375f + (_2007 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2007))))));
        float _2015 = 1.0f - _2014;
        float3 _2018 = _609 + ((1.0f.xxx - _609) * 0.0476190485060214996337890625f);
        float3 _2034 = ((clamp((min(((_609 * (1.0f - _1983)) + _1983.xxx) * ((_1956 / (_1977 * _1977)) * (0.5f / (((_1949 * sqrt(((((-_1954) * _1956) + _1954) * _1954) + _1956)) + (_1954 * sqrt(((((-_1949) * _1956) + _1949) * _1949) + _1956))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2018 * (((_58.SampleLevel(_23, (float2(_1954, _527) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_1949, _527) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2014) / _2015)) * _2018) / (1.0f.xxx - (_2018 * _2015)))) * _48_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1949) + ((_605 * 1.0f) * _1949)) * _48_m1.xyz;
        float3 _2045 = lerp(_2034, _2034 * _55.SampleBias(_23, float2(_1912, 0.5f), _18_m16).xyz, (1.0f - _1912).xxx) * 1.0f;
        _2047 = float4(_2045.x, _2045.y, _2045.z, 0.0f.xxxx.w);
    }
    else
    {
        _2047 = 0.0f.xxxx;
    }
    float2 _2049 = floor(_1101 * 0.03125f);
    int _2057 = int((_2049.x + (_2049.y * _46_m5)) * 8.0f);
    float _2064 = floor(_665 - (_18_m3.y * _46_m11));
    float _2068 = clamp(_2064, 0.0f, _46_m7 - 1.0f);
    int _2070 = int(_2068 * 8.0f);
    float3 _2072;
    float _2075;
    _2072 = 0.0f.xxx;
    _2075 = 1.0f;
    float3 _2073;
    float _2076;
    [loop]
    for (int _2077 = 0; _2077 <= 7; _2072 = _2073, _2075 = _2076, _2077++)
    {
        uint _2095 = (_2064 <= _2068) ? (_33.Load(uint(_2057 + _2077) * 4 + 0) & _33.Load(uint((_18_m21.y + _2070) + _2077) * 4 + 0)) : 0u;
        uint _2096 = uint(_2077);
        float3 _2100;
        _2076 = _2075;
        _2100 = 0.0f.xxx;
        uint _2103;
        float _2098;
        float3 _2101;
        [loop]
        for (uint _2102 = _2095; _2102 != 0u; _2076 = _2098, _2100 = _2101, _2102 = _2103)
        {
            uint _2107 = firstbitlow(_2102);
            _2103 = _2102 ^ (1u << (_2107 & 31u));
            int _2113 = int((32u * _2096) + _2107) * 8;
            int _2116 = _2113 + 1;
            int _2119 = _2113 + 2;
            int _2122 = _2113 + 3;
            int _2125 = _2113 + 5;
            int _2128 = _2113 + 6;
            int _2131 = _2113 + 7;
            uint _2135 = uint(_48_m6[_2125].w);
            float _2210;
            if ((_2135 & 1u) == 1u)
            {
                uint _2141 = asuint(_48_m6[_2125].x);
                uint _2148 = asuint(_48_m6[_2125].y);
                uint _2155 = asuint(_48_m6[_2125].z);
                uint _2162 = asuint(_48_m6[_2128].x);
                uint _2169 = asuint(_48_m6[_2128].y);
                uint _2176 = asuint(_48_m6[_2128].z);
                float3 _2195 = abs(mul(float4(_404 - _48_m6[_2116].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2141).x, spvUnpackHalf2x16(_2155).x, spvUnpackHalf2x16(_2169).x, 0.0f), float4(spvUnpackHalf2x16(_2141 >> 16u).x, spvUnpackHalf2x16(_2155 >> 16u).x, spvUnpackHalf2x16(_2169 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2148).x, spvUnpackHalf2x16(_2162).x, spvUnpackHalf2x16(_2176).x, 0.0f), float4(spvUnpackHalf2x16(_2148 >> 16u).x, spvUnpackHalf2x16(_2162 >> 16u).x, spvUnpackHalf2x16(_2176 >> 16u).x, 0.0f))).xyz);
                float _2202 = _48_m6[_2131].x * 0.5f;
                float _2208 = 1.0f - clamp((max(max(_2195.x, _2195.y), _2195.z) - (_2202 + 0.5f)) / (0.5f - _2202), 0.0f, 1.0f);
                _2210 = _2208 * _2208;
            }
            else
            {
                _2210 = 1.0f;
            }
            bool _2214 = _48_m6[_2122].z > 0.5f;
            if ((false || (_2210 < 0.001000000047497451305389404296875f)) || _2214)
            {
                _2098 = _2076;
                _2101 = _2100;
                continue;
            }
            float _3325;
            float3 _3326;
            if (_48_m6[_2113].w < 1.5f)
            {
                float3 _2702 = float3(0.100000001490116119384765625f, _527, 1.0f);
                float _2711 = (0.5f + (0.5f * _48_m6[_2119].y)) - abs(_48_m6[_2119].x);
                float _2712 = _48_m6[_2119].y - _2711;
                float _2719 = abs(max((1.0f - abs(_2711)) - abs(_2712), 0.00048828125f));
                float3 _2723 = normalize(float3(_2711, _2712, (_48_m6[_2119].x >= 0.0f) ? _2719 : (-_2719)));
                float3 _2724 = _48_m6[_2116].xyz - _404;
                float _2725 = dot(_2724, _2724);
                float _2726 = rsqrt(_2725);
                float3 _2727 = _2724 * _2726;
                float _2731 = clamp(_48_m6[_2131].y * _2726, 0.0f, 1.0f);
                int _2736 = int(_48_m6[_2131].w);
                float3 _2737 = _2723 * _48_m6[_2119].z;
                float3 _2738 = _2737 * 0.5f;
                float3 _2739 = _2724 - _2738;
                float3 _2740 = _2724 + _2738;
                bool _2743 = (uint(_48_m6[_2113].w) & 1u) == 0u;
                bool _2746 = _2743 || ((_2135 & 2u) != 0u);
                bool _2749 = (!_2743) && (_48_m6[_2119].z > 0.0f);
                float _2768;
                float _2769;
                if (_2749)
                {
                    float _2753 = length(_2739);
                    float _2754 = length(_2740);
                    _2768 = clamp(0.5f * ((dot(_552, _2739) / _2753) + (dot(_552, _2740) / _2754)), 0.0f, 1.0f);
                    _2769 = 1.0f / ((((_2753 * _2754) + dot(_2739, _2740)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2768 = clamp(dot(_552, _2727), 0.0f, 1.0f);
                    _2769 = 1.0f;
                }
                float _2791;
                if (_48_m6[_2128].w < 0.0f)
                {
                    float _2785 = _2725 * (_48_m6[_2116].w * _48_m6[_2116].w);
                    float _2788 = clamp(1.0f - (_2785 * _2785), 0.0f, 1.0f);
                    _2791 = lerp(1.0f / (_2725 + 1.0f), _2769, float(_2749)) * (_2788 * _2788);
                }
                else
                {
                    float3 _2774 = _2724 * _48_m6[_2116].w;
                    _2791 = _2769 * pow(1.0f - clamp(dot(_2774, _2774), 0.0f, 1.0f), _48_m6[_2128].w);
                }
                float _2797 = clamp((dot(_2727, -_2723) - _48_m6[_2119].z) * _48_m6[_2119].w, 0.0f, 1.0f);
                float _2801 = _2791 * lerp(1.0f, _2797 * _2797, float(_2743));
                float _2901;
                if ((!_2749) && (_2736 >= 0))
                {
                    uint _2807 = uint(_2736);
                    float2 _2894;
                    [branch]
                    if (_2743)
                    {
                        float4 _2884 = mul(_68_m1[_2807], _408);
                        _2894 = _68_m0[_2807].xy + (clamp(_2884.xy / _2884.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_2807].zw);
                    }
                    else
                    {
                        float3 _2821 = mul(float4(-_2724, 0.0f), _68_m1[_2807]).xyz;
                        float3 _369 = _2821;
                        float3 _368 = _2821;
                        float3 _367 = abs(_2821);
                        uint _2830 = uint(int(_367.y > _367.x));
                        uint _2836 = (_367.z > _367[_2830]) ? 2u : _2830;
                        uint _2842 = (_2836 * 2u) + uint(_368[_2836] < 0.0f);
                        float _2846 = abs(_369[_2842 / 2u]);
                        float _2866 = 0.5f - (0.000244140625f / _68_m0[_2807].w);
                        _2894 = _68_m0[_2807].xy + (clamp(float2((float(_2842) + ((((_369[uint(_343[_2842].x)] * _344[_2842].x) / _2846) * _2866) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_369[uint(_343[_2842].y)] * _344[_2842].y) / _2846) * _2866)), 0.0f.xx, 1.0f.xx) * _68_m0[_2807].zw);
                    }
                    _2901 = _2801 * _66.SampleLevel(_23, _2894, 0.0f).x;
                }
                else
                {
                    _2901 = _2801;
                }
                bool _2902 = _2901 > 0.0f;
                float _3190;
                if (_2902)
                {
                    int _2954;
                    if (_2746)
                    {
                        _2954 = int(_48_m6[_2122].x);
                    }
                    else
                    {
                        uint _2909 = asuint(_48_m6[_2119].w);
                        uint _2911 = asuint(_48_m6[_2122].x);
                        float3 _2912 = _404 - _48_m6[_2116].xyz;
                        float3 _2913 = abs(_2912);
                        float _2914 = _2913.x;
                        float _2915 = _2913.y;
                        float _2917 = _2913.z;
                        int _2949;
                        if ((_2914 > _2915) && (_2914 > _2917))
                        {
                            _2949 = int((_2912.x > 0.0f) ? (_2909 >> 24u) : ((_2909 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2941;
                            if (_2915 > _2917)
                            {
                                _2941 = int((_2912.y > 0.0f) ? ((_2909 >> 8u) & 255u) : (_2909 & 255u));
                            }
                            else
                            {
                                _2941 = int((_2912.z > 0.0f) ? ((_2911 >> 8u) & 255u) : (_2911 & 255u));
                            }
                            _2949 = _2941;
                        }
                        _2954 = (_2949 < 80) ? _2949 : (-1);
                    }
                    float3 _2964 = (_404 - ((-_2727) * _50_m11[_2954].x)) + (_552 * (_50_m11[_2954].y * 5.0f));
                    float4 _2971 = mul(_50_m10[_2954], float4(_2964, 1.0f));
                    float _2972 = _2971.w;
                    float3 _2975 = _2971.xyz / _2972.xxx;
                    float2 _2976 = _2975.xy;
                    float3 _2984 = _2975.xyz;
                    bool3 _2985 = bool3(_2984.x <= 0.0f.xxx.x, _2984.y <= 0.0f.xxx.y, _2984.z <= 0.0f.xxx.z);
                    bool3 _2986 = bool3(_2984.x >= 1.0f.xxx.x, _2984.y >= 1.0f.xxx.y, _2984.z >= 1.0f.xxx.z);
                    float _2989 = _2975.z;
                    float2 _3000 = ((_2976 * (_50_m12[_2954].zw - _50_m12[_2954].xy)) + _50_m12[_2954].xy).xy * _50_m13.zw;
                    float2 _3002 = floor(_3000 + 0.5f.xx);
                    float2 _3003 = _3000 - _3002;
                    float _3004 = _3003.x;
                    float _3005 = _3004 + 0.5f;
                    float _3006 = _3005 * _3005;
                    float _3009 = 1.0f - _3004;
                    float _3010 = min(_3004, 0.0f);
                    float _3013 = _3004 + 1.0f;
                    float _3014 = max(_3004, 0.0f);
                    float _3025 = _3003.y;
                    float _3026 = _3025 + 0.5f;
                    float _3027 = _3026 * _3026;
                    float _3030 = 1.0f - _3025;
                    float _3031 = min(_3025, 0.0f);
                    float _3034 = _3025 + 1.0f;
                    float _3035 = max(_3025, 0.0f);
                    float3 _3047 = float3(0.1599999964237213134765625f * _3009, 0.1599999964237213134765625f * ((_3013 - (_3014 * _3014)) + 1.0f), _3006 * 0.07999999821186065673828125f);
                    float3 _3048 = float3(0.1599999964237213134765625f * ((_3006 * 0.5f) - _3004), 0.1599999964237213134765625f * ((_3009 - (_3010 * _3010)) + 1.0f), 0.1599999964237213134765625f * _3013) + _3047;
                    float3 _3050 = float3(0.1599999964237213134765625f * _3030, 0.1599999964237213134765625f * ((_3034 - (_3035 * _3035)) + 1.0f), _3027 * 0.07999999821186065673828125f);
                    float3 _3051 = float3(0.1599999964237213134765625f * ((_3027 * 0.5f) - _3025), 0.1599999964237213134765625f * ((_3030 - (_3031 * _3031)) + 1.0f), 0.1599999964237213134765625f * _3034) + _3050;
                    float3 _3057 = ((_3047 / _3048) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                    float3 _3059 = ((_3050 / _3051) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                    float2 _3061 = _3002 * _50_m13.xy;
                    float _3062 = _3057.x;
                    float _3063 = _3059.x;
                    float _3066 = _3057.y;
                    float _3069 = _3057.z;
                    float _3072 = _3059.y;
                    float _3079 = _3059.z;
                    float _3086 = _3048.x;
                    float _3087 = _3051.x;
                    float _3089 = _3048.y;
                    float _3091 = _3048.z;
                    float _3093 = _3051.y;
                    float _3097 = _3051.z;
                    float _3155 = (((((((_3086 * _3087) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3062, _3063), _362).xy, _2989)) + ((_3089 * _3087) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3066, _3063), _362).xy, _2989))) + ((_3091 * _3087) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3069, _3063), _362).xy, _2989))) + ((_3086 * _3093) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3062, _3072), _362).xy, _2989))) + ((_3089 * _3093) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3066, _3072), _362).xy, _2989))) + ((_3091 * _3093) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3069, _3072), _362).xy, _2989))) + ((_3086 * _3097) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3062, _3079), _362).xy, _2989));
                    float2 _3176 = min(_2976, 1.0f.xx - _2976);
                    _3190 = (_2954 >= 0) ? lerp(1.0f, (any(bool3(_2985.x || _2986.x, _2985.y || _2986.y, _2985.z || _2986.z)) || ((asuint(_2989) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3155 + ((_3089 * _3097) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3066, _3079), _362).xy, _2989))) + ((_3091 * _3097) * _52.SampleCmpLevelZero(_26, float3(_3061 + float2(_3069, _3079), _362).xy, _2989))), _2746 ? min(_50_m11[_2954].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2954].z - _2972) * 0.25f, min(_3176.x, _3176.y)))) : _50_m11[_2954].w) : 1.0f;
                }
                else
                {
                    _3190 = 1.0f;
                }
                float3 _3213;
                float3 _3214;
                if (_2749)
                {
                    float3 _3193 = _2702 * _2702;
                    float _3202 = dot(_1092, _2737);
                    _3213 = _3193 / clamp(_3193 + (0.5f * clamp(_48_m6[_2119].z * _2726, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3214 = normalize(_2739 + (_2737 * clamp(dot(_2739, (_1092 * _3202) - _2737) / ((_48_m6[_2119].z * _48_m6[_2119].z) - (_3202 * _3202)), 0.0f, 1.0f)));
                }
                else
                {
                    _3213 = 1.0f.xxx;
                    _3214 = _2727;
                }
                float3 _3215 = _3214 + _441;
                float3 _3219 = _3215 * rsqrt(max(6.103515625e-05f, dot(_3215, _3215)));
                float3 _3324;
                if (_2902)
                {
                    float _3222 = clamp(_2768, 0.0f, 1.0f);
                    float _3224 = clamp(dot(_552, _3219), 0.0f, 1.0f);
                    float _3226 = clamp(dot(_441, _3219), 0.0f, 1.0f);
                    float _3227 = clamp(_610, 0.0f, 1.0f);
                    float _3228 = _527 * _527;
                    float _3238;
                    if (_2731 > 0.0f)
                    {
                        _3238 = clamp(_3228 + ((_2731 * _2731) / ((_3226 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3238 = _3228;
                    }
                    float _3239 = _3238 * _3238;
                    float _3260 = (((_3224 * _3239) - _3224) * _3224) + 1.0f;
                    float _3265 = 1.0f - _3226;
                    float _3266 = _3265 * _3265;
                    float _3268 = (_3265 * _3266) * _3266;
                    float _3292 = 1.0f - _527;
                    float _3299 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3292 * (1.04997003078460693359375f + (_3292 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3292))))));
                    float _3300 = 1.0f - _3299;
                    float3 _3303 = _609 + ((1.0f.xxx - _609) * 0.0476190485060214996337890625f);
                    float3 _3323 = ((clamp((min(((_609 * (1.0f - _3268)) + _3268.xxx) * (((_3239 / (_3260 * _3260)) * _3213.y) * (0.5f / (((_3222 * sqrt(((((-_3227) * _3239) + _3227) * _3227) + _3239)) + (_3227 * sqrt(((((-_3222) * _3239) + _3222) * _3222) + _3239))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3303 * (((_58.SampleLevel(_23, (float2(_3227, _527) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_3222, _527) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3299) / _3300)) * _3303) / (1.0f.xxx - (_3303 * _3300)))) * _48_m6[_2131].z, 0.0f.xxx, 1000.0f.xxx) * _2768) + ((_605 * _3213.z) * _2768)) * (((_48_m6[_2113].xyz * _2901) * _3190) * _2210);
                    _3324 = _3323;
                }
                else
                {
                    _3324 = 0.0f.xxx;
                }
                _3325 = _2076;
                _3326 = _3324;
            }
            else
            {
                float _2700;
                do
                {
                    if (_2214)
                    {
                        _2700 = 1.0f;
                        break;
                    }
                    float _2234 = (0.5f + (0.5f * _48_m6[_2119].y)) - abs(_48_m6[_2119].x);
                    float _2235 = _48_m6[_2119].y - _2234;
                    float _2242 = abs(max((1.0f - abs(_2234)) - abs(_2235), 0.00048828125f));
                    float3 _2246 = normalize(float3(_2234, _2235, (_48_m6[_2119].x >= 0.0f) ? _2242 : (-_2242)));
                    float3 _2247 = _48_m6[_2116].xyz - _404;
                    float _2248 = dot(_2247, _2247);
                    float3 _2250 = _2247 * rsqrt(_2248);
                    int _2253 = int(_48_m6[_2131].w);
                    float3 _2255 = (_2246 * _48_m6[_2119].z) * 0.5f;
                    float3 _2256 = _2247 - _2255;
                    float3 _2257 = _2247 + _2255;
                    bool _2260 = (uint(_48_m6[_2113].w) & 1u) == 0u;
                    bool _2263 = _2260 || ((_2135 & 2u) != 0u);
                    bool _2266 = (!_2260) && (_48_m6[_2119].z > 0.0f);
                    float _2278;
                    if (_2266)
                    {
                        _2278 = 1.0f / ((((length(_2256) * length(_2257)) + dot(_2256, _2257)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2278 = 1.0f;
                    }
                    float _2300;
                    if (_48_m6[_2128].w < 0.0f)
                    {
                        float _2294 = _2248 * (_48_m6[_2116].w * _48_m6[_2116].w);
                        float _2297 = clamp(1.0f - (_2294 * _2294), 0.0f, 1.0f);
                        _2300 = lerp(1.0f / (_2248 + 1.0f), _2278, float(_2266)) * (_2297 * _2297);
                    }
                    else
                    {
                        float3 _2283 = _2247 * _48_m6[_2116].w;
                        _2300 = _2278 * pow(1.0f - clamp(dot(_2283, _2283), 0.0f, 1.0f), _48_m6[_2128].w);
                    }
                    float _2306 = clamp((dot(_2250, -_2246) - _48_m6[_2119].z) * _48_m6[_2119].w, 0.0f, 1.0f);
                    float _2310 = _2300 * lerp(1.0f, _2306 * _2306, float(_2260));
                    float _2410;
                    if ((!_2266) && (_2253 >= 0))
                    {
                        uint _2316 = uint(_2253);
                        float2 _2403;
                        [branch]
                        if (_2260)
                        {
                            float4 _2393 = mul(_68_m1[_2316], _408);
                            _2403 = _68_m0[_2316].xy + (clamp(_2393.xy / _2393.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_2316].zw);
                        }
                        else
                        {
                            float3 _2330 = mul(float4(-_2247, 0.0f), _68_m1[_2316]).xyz;
                            float3 _372 = _2330;
                            float3 _371 = _2330;
                            float3 _370 = abs(_2330);
                            uint _2339 = uint(int(_370.y > _370.x));
                            uint _2345 = (_370.z > _370[_2339]) ? 2u : _2339;
                            uint _2351 = (_2345 * 2u) + uint(_371[_2345] < 0.0f);
                            float _2355 = abs(_372[_2351 / 2u]);
                            float _2375 = 0.5f - (0.000244140625f / _68_m0[_2316].w);
                            _2403 = _68_m0[_2316].xy + (clamp(float2((float(_2351) + ((((_372[uint(_343[_2351].x)] * _344[_2351].x) / _2355) * _2375) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_372[uint(_343[_2351].y)] * _344[_2351].y) / _2355) * _2375)), 0.0f.xx, 1.0f.xx) * _68_m0[_2316].zw);
                        }
                        _2410 = _2310 * _66.SampleLevel(_23, _2403, 0.0f).x;
                    }
                    else
                    {
                        _2410 = _2310;
                    }
                    float _2699;
                    if (_2410 > 0.0f)
                    {
                        int _2463;
                        if (_2263)
                        {
                            _2463 = int(_48_m6[_2122].x);
                        }
                        else
                        {
                            uint _2418 = asuint(_48_m6[_2119].w);
                            uint _2420 = asuint(_48_m6[_2122].x);
                            float3 _2421 = _404 - _48_m6[_2116].xyz;
                            float3 _2422 = abs(_2421);
                            float _2423 = _2422.x;
                            float _2424 = _2422.y;
                            float _2426 = _2422.z;
                            int _2458;
                            if ((_2423 > _2424) && (_2423 > _2426))
                            {
                                _2458 = int((_2421.x > 0.0f) ? (_2418 >> 24u) : ((_2418 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2450;
                                if (_2424 > _2426)
                                {
                                    _2450 = int((_2421.y > 0.0f) ? ((_2418 >> 8u) & 255u) : (_2418 & 255u));
                                }
                                else
                                {
                                    _2450 = int((_2421.z > 0.0f) ? ((_2420 >> 8u) & 255u) : (_2420 & 255u));
                                }
                                _2458 = _2450;
                            }
                            _2463 = (_2458 < 80) ? _2458 : (-1);
                        }
                        float3 _2473 = (_404 - ((-_2250) * _50_m11[_2463].x)) + (_552 * (_50_m11[_2463].y * 5.0f));
                        float4 _2480 = mul(_50_m10[_2463], float4(_2473, 1.0f));
                        float _2481 = _2480.w;
                        float3 _2484 = _2480.xyz / _2481.xxx;
                        float2 _2485 = _2484.xy;
                        float3 _2493 = _2484.xyz;
                        bool3 _2494 = bool3(_2493.x <= 0.0f.xxx.x, _2493.y <= 0.0f.xxx.y, _2493.z <= 0.0f.xxx.z);
                        bool3 _2495 = bool3(_2493.x >= 1.0f.xxx.x, _2493.y >= 1.0f.xxx.y, _2493.z >= 1.0f.xxx.z);
                        float _2498 = _2484.z;
                        float2 _2509 = ((_2485 * (_50_m12[_2463].zw - _50_m12[_2463].xy)) + _50_m12[_2463].xy).xy * _50_m13.zw;
                        float2 _2511 = floor(_2509 + 0.5f.xx);
                        float2 _2512 = _2509 - _2511;
                        float _2513 = _2512.x;
                        float _2514 = _2513 + 0.5f;
                        float _2515 = _2514 * _2514;
                        float _2518 = 1.0f - _2513;
                        float _2519 = min(_2513, 0.0f);
                        float _2522 = _2513 + 1.0f;
                        float _2523 = max(_2513, 0.0f);
                        float _2534 = _2512.y;
                        float _2535 = _2534 + 0.5f;
                        float _2536 = _2535 * _2535;
                        float _2539 = 1.0f - _2534;
                        float _2540 = min(_2534, 0.0f);
                        float _2543 = _2534 + 1.0f;
                        float _2544 = max(_2534, 0.0f);
                        float3 _2556 = float3(0.1599999964237213134765625f * _2518, 0.1599999964237213134765625f * ((_2522 - (_2523 * _2523)) + 1.0f), _2515 * 0.07999999821186065673828125f);
                        float3 _2557 = float3(0.1599999964237213134765625f * ((_2515 * 0.5f) - _2513), 0.1599999964237213134765625f * ((_2518 - (_2519 * _2519)) + 1.0f), 0.1599999964237213134765625f * _2522) + _2556;
                        float3 _2559 = float3(0.1599999964237213134765625f * _2539, 0.1599999964237213134765625f * ((_2543 - (_2544 * _2544)) + 1.0f), _2536 * 0.07999999821186065673828125f);
                        float3 _2560 = float3(0.1599999964237213134765625f * ((_2536 * 0.5f) - _2534), 0.1599999964237213134765625f * ((_2539 - (_2540 * _2540)) + 1.0f), 0.1599999964237213134765625f * _2543) + _2559;
                        float3 _2566 = ((_2556 / _2557) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                        float3 _2568 = ((_2559 / _2560) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                        float2 _2570 = _2511 * _50_m13.xy;
                        float _2571 = _2566.x;
                        float _2572 = _2568.x;
                        float _2575 = _2566.y;
                        float _2578 = _2566.z;
                        float _2581 = _2568.y;
                        float _2588 = _2568.z;
                        float _2595 = _2557.x;
                        float _2596 = _2560.x;
                        float _2598 = _2557.y;
                        float _2600 = _2557.z;
                        float _2602 = _2560.y;
                        float _2606 = _2560.z;
                        float _2664 = (((((((_2595 * _2596) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2571, _2572), _362).xy, _2498)) + ((_2598 * _2596) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2575, _2572), _362).xy, _2498))) + ((_2600 * _2596) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2578, _2572), _362).xy, _2498))) + ((_2595 * _2602) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2571, _2581), _362).xy, _2498))) + ((_2598 * _2602) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2575, _2581), _362).xy, _2498))) + ((_2600 * _2602) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2578, _2581), _362).xy, _2498))) + ((_2595 * _2606) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2571, _2588), _362).xy, _2498));
                        float2 _2685 = min(_2485, 1.0f.xx - _2485);
                        _2699 = (_2463 >= 0) ? lerp(1.0f, (any(bool3(_2494.x || _2495.x, _2494.y || _2495.y, _2494.z || _2495.z)) || ((asuint(_2498) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2664 + ((_2598 * _2606) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2575, _2588), _362).xy, _2498))) + ((_2600 * _2606) * _52.SampleCmpLevelZero(_26, float3(_2570 + float2(_2578, _2588), _362).xy, _2498))), _2263 ? min(_50_m11[_2463].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2463].z - _2481) * 0.25f, min(_2685.x, _2685.y)))) : _50_m11[_2463].w) : 1.0f;
                    }
                    else
                    {
                        _2699 = 1.0f;
                    }
                    _2700 = _2699;
                    break;
                } while(false);
                _3325 = _2076 * _2700;
                _3326 = 0.0f.xxx;
            }
            _2098 = _3325;
            _2101 = _2100 + _3326;
        }
        _2073 = _2072 + _2100;
    }
    float3 _3332 = ((((float3(_1071, _1076, _1081) * (_605 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _497.z, _41_m4)) * _18_m22.x) + ((_1392 * ((_609 * _624.x) + (clamp(50.0f * _609.y, 0.0f, 1.0f) * _624.y).xxx)) * 1.0f)) + (_2047.xyz + ((_2072 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2075)).xyz;
    float4 _3333 = float4(_3332.x, _3332.y, _3332.z, _364.w);
    _3333.w = _522;
    float _3350 = _404.y * _18_m46.w;
    float _3355 = max(0.00999999977648258209228515625f, _3350 + _18_m47.w);
    float3 _3369 = exp(_18_m45.xyz * ((-max(0.0f, (_442 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3355)) / _3355) * exp(_3350 + _18_m48.w))));
    float _3372 = dot(_1091, _18_m44.xyz);
    float _3378 = _18_m45.w * _18_m45.w;
    float _3382 = (1.0f + _3378) - ((2.0f * _18_m45.w) * _3372);
    float3 _3714;
    float _3715;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3540 = (uint3(int3(int(_664.x), int(_664.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3541 = _3540.y;
        uint _3542 = _3540.z;
        uint _3545 = _3540.x + (_3541 * _3542);
        uint _3547 = _3541 + (_3542 * _3545);
        uint _3549 = _3542 + (_3545 * _3547);
        uint _3551 = _3545 + (_3547 * _3549);
        float _3575 = dot(_1091, -_16_m0[2].xyz);
        float3 _3585 = _404 - _16_m11.xyz;
        float _3587 = (_18_m55.w * ((_3575 > 5.9604644775390625e-08f) ? (1.0f / _3575) : 0.0f)) * (1.0f / _442);
        float _3588 = _3585.y;
        float _3589 = _3587 * _3588;
        float _3591 = _16_m11.y + _3589;
        float _3592 = _3588 - _3589;
        float _3594 = (1.0f - _3587) * _442;
        float _3608 = max(-127.0f, _18_m49.z * _3592);
        float _3632 = max(-127.0f, _18_m52.x * _3592);
        float _3643 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3591 - _18_m49.x)))) * ((abs(_3608) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3608)) / _3608) : (0.693147182464599609375f - (0.2402265071868896484375f * _3608)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3591 - _18_m52.z)))) * ((abs(_3632) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3632)) / _3632) : (0.693147182464599609375f - (0.2402265071868896484375f * _3632))));
        float _3665 = clamp((_442 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3668 = clamp((max(clamp(exp2(-(_3643 * _3594)), 0.0f, 1.0f), _18_m51.w) + clamp((_442 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3665, 0.0f, 1.0f);
        float4 _3708 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1101 + ((((float3(uint3(_3551, _3547 + (_3549 * _3551), _365) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_665 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_665 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3714 = _3708.xyz + (((_18_m51.xyz * (1.0f - _3668)) + (((_18_m54.xyz * pow(clamp(dot(_441, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3643 * max(_3594 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3665))) * _3708.w);
        _3715 = _3708.w * _3668;
    }
    else
    {
        float3 _3412 = _404 - _16_m11.xyz;
        float _3414 = _3412.y;
        float _3428 = max(-127.0f, _18_m49.z * _3414);
        float _3452 = max(-127.0f, _18_m52.x * _3414);
        float _3463 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3428) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3428)) / _3428) : (0.693147182464599609375f - (0.2402265071868896484375f * _3428)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3452) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3452)) / _3452) : (0.693147182464599609375f - (0.2402265071868896484375f * _3452))));
        float _3485 = clamp((_442 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3488 = clamp((max(clamp(exp2(-(_3463 * _442)), 0.0f, 1.0f), _18_m51.w) + clamp((_442 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3485, 0.0f, 1.0f);
        _3714 = (_18_m51.xyz * (1.0f - _3488)) + (((_18_m54.xyz * pow(clamp(dot(_441, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3463 * max(_442 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3485));
        _3715 = _3488;
    }
    float3 _3721 = ((_3333.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3369 * _3715)) : (_3369 * _3715))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3372 * _3372)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3378) / max((12.56637096405029296875f * _3382) * sqrt(_3382), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3369)) * _3715 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3714 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
    float3 _3731 = lerp(dot(_3721, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3721, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3741 = min(lerp(((sqrt(sqrt(abs(_577 * 0.5f))) * float2(int2(sign(_577)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _564.xx), 1.0f.xx);
    float4 _3742 = float4(_3741.x, _3741.y, _364.z, _364.w);
    _3742.z = float(clamp(max(dot(_3731.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _522, _522) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3742.w = lerp(0.0f, 0.699999988079071044921875f, _564);
    float3 renodx_output_color = float3(_3731.x, _3731.y, _3731.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3333.w);
    _14 = _3742;
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
