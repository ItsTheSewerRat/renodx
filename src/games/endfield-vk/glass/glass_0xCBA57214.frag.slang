#include "../shared.h"

// Vulkan shader 0xCBA57214, decompiled from the matching game shader dump.

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

static float _362 = 0.0f;
static float4 _364 = 0.0f.xxxx;
static uint _365 = 0u;

static const float4 _342[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _343[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _344[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]] cbuffer _15_16 : register(b12)
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

[[vk::binding(16, 0)]] cbuffer _17_18 : register(b16)
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

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _33 : register(t50);
[[vk::binding(6, 1)]] cbuffer _40_41 : register(b6)
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

[[vk::binding(17, 0)]] cbuffer _42_44 : register(b17)
{
    float4 _44_m0 : packoffset(c0);
    float4 _44_m1 : packoffset(c1);
    float4 _44_m2 : packoffset(c2);
    float4 _44_m3 : packoffset(c3);
    _43 _44_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]] cbuffer _45_46 : register(b47)
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

[[vk::binding(14, 0)]] cbuffer _47_48 : register(b14)
{
    float4 _48_m0 : packoffset(c0);
    float4 _48_m1 : packoffset(c1);
    float4 _48_m2 : packoffset(c2);
    float4 _48_m3 : packoffset(c3);
    float4 _48_m4 : packoffset(c4);
    uint4 _48_m5 : packoffset(c5);
    float4 _48_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]] cbuffer _49_50 : register(b15)
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

[[vk::binding(49, 0)]] cbuffer _67_68 : register(b49)
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

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _4;
static float2 _5;
static float3 _6;
static float4 _7;
static float4 _8;
static float3 _9;
static float3 _10;
static uint _11;
static float4 _13;
static float4 _14;

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
    float _389 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _394 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _396 = abs(_394);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _396 : (-_396)), (1.0f - _389) - _394) < 0.0f)
    {
        discard;
    }
    float2 _413 = gl_FragCoord.xy * _18_m0.zw;
    float2 _416 = (_413 * 2.0f) - 1.0f.xx;
    float4 _419 = float4(_416, gl_FragCoord.z, 1.0f);
    _419.y = -_416.y;
    float4 _422 = mul(_16_m6, _419);
    float3 _426 = _422.xyz / _422.w.xxx;
    float4 _430 = float4(_426, 1.0f);
    float _437 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _459 = 0.0f.xxx;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _459 = _16_m11.xyz - _426;
            break;
        }
        else
        {
            _459 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _460 = dot(_459, _459);
    float _462 = rsqrt(max(_460, 9.9999999392252902907785028219223e-09f));
    float3 _463 = _459 * _462;
    float _464 = _460 * _462;
    float2 _485 = (lerp(_4, _5, _41_m12.xx) * _41_m36.xy) + _41_m36.zw;
    float4 _499 = _34.SampleBias(_35, (lerp(_4, _5, _41_m11.xx) * _41_m35.xy) + _41_m35.zw, _18_m16);
    float4 _503 = _36.SampleBias(_37, _485, _41_m13 + _18_m16);
    _503.w = _503.w * _503.x;
    float2 _511 = ((_503.wy * 2.0f) - 1.0f.xx).xy;
    float2 _517 = _511 * _41_m0;
    float4 _519 = _38.SampleBias(_39, _485, _18_m16);
    float3 _534 = lerp(clamp((_499.xyz * _41_m32.xyz) * _41_m18, 0.0f.xxx, 1.0f.xxx), _41_m32.xyz, _41_m16.xxx);
    float _538 = _499.w * _41_m32.w;
    float _544 = lerp(_538, _538 * _8.x, _41_m46);
    float _549 = lerp(_41_m2, _41_m3, _519.y);
    float _559 = lerp(_519.x, _41_m17, clamp(_41_m15 - 1.0f, 0.0f, 1.0f));
    float3 _574 = normalize(((_7.xyz * _517.x) + ((cross(_6, float4(_7.xyz, _437).xyz) * _437) * _517.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_511, _511), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_41_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _581 = clamp(float(int(sign(_389 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _594 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _594.y = -_594.y;
    float _620 = 0.07999999821186065673828125f * _41_m1;
    float3 _621 = _534 * _559;
    float3 _622 = _534 - _621;
    float3 _626 = (_620 - (_620 * _559)).xxx + _621;
    float _627 = dot(_574, _463);
    float4 _630 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _549) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _631 = _630.x;
    float2 _641 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_631 * _631, exp2((-9.27999973297119140625f) * max(0.0f, _627))) * _631) + _630.y)) + _630.zw;
    uint2 _681 = uint2(0u, 0u);
    float _682 = 0.0f;
    if (_18_m24.y == 1.0f)
    {
        float4 _658 = mul(_18_m135, _430);
        float4 _661 = _658;
        _661.y = -_658.y;
        float4 _664 = _661 * (1.0f / _658.w);
        _681 = uint2(clamp(((_664.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _682 = 1.0f / ((_18_m2.z * _664.z) + _18_m2.w);
    }
    else
    {
        _681 = uint2(gl_FragCoord.xy);
        _682 = abs(mul(_16_m0, _430).z);
    }
    float3 _684 = _426 + (_574 * 0.25f);
    float3 _694 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _703 = _684 - (_18_m105.xyz + (_694 * (-_18_m107.w)));
    float _717 = max(clamp((max(abs(_703.x), abs(_703.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_703.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1019 = 0.0f.xxxx;
    float4 _1020 = 0.0f.xxxx;
    float4 _1021 = 0.0f.xxxx;
    float _1022 = 0.0f;
    float _1023 = 0.0f;
    if ((_18_m105.w != 0.0f) && (_717 < 1.0f))
    {
        float3 _730 = _684 - (_18_m105.xyz + (_694 * (-_18_m107.y)));
        float _744 = max(clamp((max(abs(_730.x), abs(_730.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_730.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _820 = 0.0f;
        float4 _821 = 0.0f.xxxx;
        float4 _822 = 0.0f.xxxx;
        float4 _823 = 0.0f.xxxx;
        if (_744 < 1.0f)
        {
            float3 _753 = ((_684 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _755 = _753 - floor(_753);
            float4 _759 = _59.SampleLevel(_24, _755, 0.0f);
            float _760 = 1.0f - _744;
            float _764 = _18_m106.y * 0.5f;
            float _769 = _755.x;
            float _770 = clamp(_755.y, _764, 1.0f - _764) * 0.3333333432674407958984375f;
            float _771 = _755.z;
            float4 _774 = _60.SampleLevel(_23, float3(_769, _770, _771), 0.0f);
            float _790 = _759.x;
            float3 _791 = ((_774.xyz * 4.0f) - 2.0f.xxx) * _790;
            float _800 = _759.y;
            float3 _801 = ((_60.SampleLevel(_23, float3(_769, _770 + 0.3333333432674407958984375f, _771), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _800;
            float _810 = _759.z;
            float3 _811 = ((_60.SampleLevel(_23, float3(_769, _770 + 0.666666686534881591796875f, _771), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _810;
            _820 = _717 + (_774.w * _760);
            _821 = float4(_811, _810) * _760;
            _822 = float4(_801, _800) * _760;
            _823 = float4(_791, _790) * _760;
        }
        else
        {
            _820 = _717;
            _821 = 0.0f.xxxx;
            _822 = 0.0f.xxxx;
            _823 = 0.0f.xxxx;
        }
        float3 _829 = _684 - (_18_m105.xyz + (_694 * (-_18_m107.z)));
        float _843 = max(clamp((max(abs(_829.x), abs(_829.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_829.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _923 = 0.0f;
        float4 _924 = 0.0f.xxxx;
        float4 _925 = 0.0f.xxxx;
        float4 _926 = 0.0f.xxxx;
        if (_843 < 1.0f)
        {
            float3 _852 = ((_684 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _854 = _852 - floor(_852);
            float4 _858 = _61.SampleLevel(_24, _854, 0.0f);
            float _860 = _744 * (1.0f - _843);
            float _864 = _18_m106.y * 0.5f;
            float _869 = _854.x;
            float _870 = clamp(_854.y, _864, 1.0f - _864) * 0.3333333432674407958984375f;
            float _871 = _854.z;
            float4 _874 = _62.SampleLevel(_23, float3(_869, _870, _871), 0.0f);
            float _890 = _858.x;
            float3 _891 = ((_874.xyz * 4.0f) - 2.0f.xxx) * _890;
            float _901 = _858.y;
            float3 _902 = ((_62.SampleLevel(_23, float3(_869, _870 + 0.3333333432674407958984375f, _871), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _901;
            float _912 = _858.z;
            float3 _913 = ((_62.SampleLevel(_23, float3(_869, _870 + 0.666666686534881591796875f, _871), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _912;
            _923 = _820 + (_874.w * _860);
            _924 = _821 + (float4(_913, _912) * _860);
            _925 = _822 + (float4(_902, _901) * _860);
            _926 = _823 + (float4(_891, _890) * _860);
        }
        else
        {
            _923 = _820;
            _924 = _821;
            _925 = _822;
            _926 = _823;
        }
        float4 _1009 = 0.0f.xxxx;
        float4 _1010 = 0.0f.xxxx;
        float4 _1011 = 0.0f.xxxx;
        float _1012 = 0.0f;
        if (_843 > 0.0f)
        {
            float3 _935 = ((_684 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _938 = _18_m106.xyz * 0.5f;
            float3 _940 = clamp(_935 - floor(_935), _938, 1.0f.xxx - _938);
            float4 _944 = _63.SampleLevel(_24, _940, 0.0f);
            float _946 = _843 * (1.0f - _717);
            float _950 = _18_m106.y * 0.5f;
            float _955 = _940.x;
            float _956 = clamp(_940.y, _950, 1.0f - _950) * 0.3333333432674407958984375f;
            float _957 = _940.z;
            float4 _960 = _64.SampleLevel(_23, float3(_955, _956, _957), 0.0f);
            _1009 = _924 + (float4(((_64.SampleLevel(_23, float3(_955, _956 + 0.666666686534881591796875f, _957), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _944.z, _944.z) * _946);
            _1010 = _925 + (float4(((_64.SampleLevel(_23, float3(_955, _956 + 0.3333333432674407958984375f, _957), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _944.y, _944.y) * _946);
            _1011 = _926 + (float4(((_960.xyz * 4.0f) - 2.0f.xxx) * _944.x, _944.x) * _946);
            _1012 = _923 + (_960.w * _946);
        }
        else
        {
            _1009 = _924;
            _1010 = _925;
            _1011 = _926;
            _1012 = _923;
        }
        float _1015 = clamp((_1012 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1019 = _1009;
        _1020 = _1010;
        _1021 = _1011;
        _1022 = _1015 - _717;
        _1023 = (_1015 + _717) * 0.5f;
    }
    else
    {
        _1019 = 0.0f.xxxx;
        _1020 = 0.0f.xxxx;
        _1021 = 0.0f.xxxx;
        _1022 = 0.0f;
        _1023 = 1.0f;
    }
    float4 _1043 = _1021 + float4(_18_m108.x * _1023, (_18_m108.y * _1023) + ((_18_m108.w * _1022) * 0.5f), _18_m108.z * _1023, (_18_m108.w * _1023) + ((_18_m108.y * _1022) * 0.375f));
    float4 _1063 = _1020 + float4(_18_m109.x * _1023, (_18_m109.y * _1023) + ((_18_m109.w * _1022) * 0.5f), _18_m109.z * _1023, (_18_m109.w * _1023) + ((_18_m109.y * _1022) * 0.375f));
    float4 _1083 = _1019 + float4(_18_m110.x * _1023, (_18_m110.y * _1023) + ((_18_m110.w * _1022) * 0.5f), _18_m110.z * _1023, (_18_m110.w * _1023) + ((_18_m110.y * _1022) * 0.375f));
    float _1088 = max(0.0f, dot(_1043.xyz, _574) + _1043.w);
    float _1093 = max(0.0f, dot(_1063.xyz, _574) + _1063.w);
    float _1098 = max(0.0f, dot(_1083.xyz, _574) + _1083.w);
    float3 _1108 = -_463;
    float3 _1109 = reflect(_1108, _574);
    float _1117 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_549, 0.001000000047497451305389404296875f))));
    float2 _1118 = float2(_681);
    float2 _1122 = floor(_1118 * _44_m0.w);
    float _1139 = floor(_682 - _44_m2.y);
    float _1143 = clamp(_1139, 0.0f, _44_m1.x - 1.0f);
    uint _1153 = (_1139 <= _1143) ? (_33.Load(uint(_18_m21.z + int(_1122.x + (_1122.y * _44_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1143)) * 4 + 0)) : 0u;
    float _1156 = dot(float4(_1088, _1093, _1098, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1158 = 0.0f.xxx;
    float _1161 = 0.0f;
    uint _1163 = 0u;
    _1158 = 0.0f.xxx;
    _1161 = 1.0f;
    _1163 = _1153;
    uint _1164 = 0u;
    float3 _1159 = 0.0f.xxx;
    float _1162 = 0.0f;
    bool _1166 = false;
    [loop]
    for (;;)
    {
        _1166 = _1161 > 0.00999999977648258209228515625f;
        if ((_1163 != 0u) && _1166)
        {
            uint _1170 = firstbitlow(_1163);
            _1164 = _1163 ^ (1u << (_1170 & 31u));
            float3 _1190 = float3(dot(_44_m4[_1170]._m2, _430), dot(_44_m4[_1170]._m3, _430), dot(_44_m4[_1170]._m4, _430));
            float3 _1191 = abs(_1190);
            if (all(bool3(_1191.x <= _44_m4[_1170]._m1.xyz.x, _1191.y <= _44_m4[_1170]._m1.xyz.y, _1191.z <= _44_m4[_1170]._m1.xyz.z)))
            {
                float3 _1200 = _44_m4[_1170]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1202 = _1191 * 0.100000001490116119384765625f;
                float3 _1203 = _1202 * _1202;
                float3 _1206 = (_44_m4[_1170]._m1.xyz - _1191) * _44_m4[_1170]._m5.xyz;
                float3 _1254 = 0.0f.xxx;
                [branch]
                if (_44_m4[_1170]._m6.x == 1.0f)
                {
                    float3 _1239 = float3(dot(_44_m4[_1170]._m2.xyz, _1109), dot(_44_m4[_1170]._m3.xyz, _1109), dot(_44_m4[_1170]._m4.xyz, _1109));
                    float3 _1241 = (_44_m4[_1170]._m1.xyz - _1190) / _1239;
                    float3 _1244 = ((-_44_m4[_1170]._m1.xyz) - _1190) / _1239;
                    bool3 _1245 = bool3(_1239.x > 0.0f.xxx.x, _1239.y > 0.0f.xxx.y, _1239.z > 0.0f.xxx.z);
                    float3 _1246 = float3(_1245.x ? _1241.x : _1244.x, _1245.y ? _1241.y : _1244.y, _1245.z ? _1241.z : _1244.z);
                    _1254 = _1190 + (_1239 * min(min(_1246.x, _1246.y), _1246.z));
                }
                else
                {
                    _1254 = _1109;
                }
                float3 _1255 = normalize(_1254);
                float3 _1258 = float3(int3(sign(_1255)));
                float3 _1261 = _1255 / dot(_1255, _1258).xxx;
                float3 _1275 = 0.0f.xxx;
                if (_1261.z < 0.0f)
                {
                    float3 _1266 = abs(_1261);
                    float2 _1273 = _1258.xy * float2(1.0f - _1266.y, 1.0f - _1266.x);
                    _1275 = float3(_1273.x, _1273.y, _1261.z);
                }
                else
                {
                    _1275 = _1261;
                }
                float _1300 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m4[_1170]._m0, float4(_574, 1.0f))));
                float _1313 = clamp((min(_1206.x, min(_1206.y, _1206.z)) * _44_m4[_1170]._m6.y) + ((((((_1200 * _1200).x - ((_1203.x + _1203.y) + _1203.z)) * _44_m4[_1170]._m5.x) * _44_m4[_1170]._m5.x) * (1.0f - _44_m4[_1170]._m6.y)) * 100.0f), 0.0f, 1.0f) * _44_m4[_1170]._m6.w;
                _1159 = _1158 + ((((_31.SampleLevel(_25, float3((((_1275.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, _44_m4[_1170]._m1.w), _1117).xyz * _44_m4[_1170]._m5.w) * ((((((clamp(abs(_1156 / _1300), 0.0f, 1.0f) * 2.0f) + _1156) / (2.0f + _1300)) - 1.0f) * _18_m23.w) + 1.0f)) * _1313) * _1161);
                _1162 = _1161 * (1.0f - _1313);
            }
            else
            {
                _1159 = _1158;
                _1162 = _1161;
            }
            _1158 = _1159;
            _1161 = _1162;
            _1163 = _1164;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1382 = 0.0f.xxx;
    if (_1166)
    {
        float3 _1321 = normalize(_1109);
        float3 _1324 = float3(int3(sign(_1321)));
        float3 _1327 = _1321 / dot(_1321, _1324).xxx;
        float3 _1341 = 0.0f.xxx;
        if (_1327.z < 0.0f)
        {
            float3 _1332 = abs(_1327);
            float2 _1339 = _1324.xy * float2(1.0f - _1332.y, 1.0f - _1332.x);
            _1341 = float3(_1339.x, _1339.y, _1327.z);
        }
        else
        {
            _1341 = _1327;
        }
        float _1368 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m3, float4(_574, 1.0f))));
        _1382 = _1158 + ((_31.SampleLevel(_25, float3((((_1341.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, 0.0f), _1117).xyz * ((((((clamp(abs(_1156 / _1368), 0.0f, 1.0f) * 2.0f) + _1156) / (2.0f + _1368)) - 1.0f) * _18_m23.w) + 1.0f)) * _1161);
    }
    else
    {
        _1382 = _1158;
    }
    float3 _1388 = (_1382 * _18_m23.z) * _18_m22.y;
    float3 _1409 = 0.0f.xxx;
    [branch]
    if (_18_m23.y != 0.0f)
    {
        float4 _1403 = _29.SampleBias(_23, _413, _18_m16);
        float _1404 = _1403.x;
        _1409 = (_28.SampleBias(_23, _413, _18_m16).xyz * _1404) + (_1388 * (1.0f - _1404));
    }
    else
    {
        _1409 = _1388;
    }
    float2 _1924 = 0.0f.xx;
    do
    {
        if (_50_m7.w >= 0.9900000095367431640625f)
        {
            _1924 = float2(_50_m7.z, 1.0f);
            break;
        }
        int _1425 = int(_50_m7.x);
        bool3 _1427 = (_1425 == 2).xxx;
        float3 _1435 = _426 - float3(_1427.x ? _50_m1[0].xyz.x : _16_m11.xyz.x, _1427.y ? _50_m1[0].xyz.y : _16_m11.xyz.y, _1427.z ? _50_m1[0].xyz.z : _16_m11.xyz.z);
        float _1446 = max(clamp((_50_m6.w - dot(_1435, _1435)) * _50_m6.z, 0.0f, 1.0f), _50_m8.x);
        float _1663 = 0.0f;
        bool _1664 = false;
        if (_1446 > 0.0f)
        {
            float _1661 = 0.0f;
            bool _1662 = false;
            if (_1425 > 0)
            {
                float3 _1453 = _426 - _50_m1[0].xyz;
                float3 _1457 = _426 - _50_m1[1].xyz;
                float3 _1461 = _426 - _50_m1[2].xyz;
                float3 _1465 = _426 - _50_m1[3].xyz;
                float4 _1470 = float4(dot(_1453, _1453), dot(_1457, _1457), dot(_1461, _1461), dot(_1465, _1465));
                float4 _1479 = float4(_50_m1[0].w, _50_m1[1].w, _50_m1[2].w, _50_m1[3].w);
                float4 _1481 = float4(bool4(_1470.x < _1479.x, _1470.y < _1479.y, _1470.z < _1479.z, _1470.w < _1479.w));
                float3 _1485 = clamp(_1481.yzw - _1481.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1489 = clamp(4.0f - dot(float4(_1481.x, _1485.x, _1485.y, _1485.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1491 = clamp(_1489 + 1.0f, 0.0f, 3.0f);
                uint _1492 = uint(_1489);
                uint _1500 = uint(_1491);
                float _1506 = dot(_1470, _342[_1500]) / _50_m1[_1500].w;
                float _1523 = 0.0f;
                if (((_1491 > _1489) && (_1506 >= 0.0f)) && (_1506 <= 1.0f))
                {
                    _1523 = _1489 + step(frac(52.98291778564453125f * frac(dot(_1118 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1470, _342[_1492]) / _50_m1[_1492].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1523 = _1489;
                }
                float _1524 = clamp(_1523, 0.0f, 4.0f);
                float4 _1528 = mul(_50_m0[uint(_1524)], _430);
                float _1531 = _1528.z;
                float4 _1532 = float4(_1528.xy, _1531, _1524);
                float3 _1533 = _1532.xyz;
                bool3 _1534 = bool3(_1533.x <= 0.0f.xxx.x, _1533.y <= 0.0f.xxx.y, _1533.z <= 0.0f.xxx.z);
                bool3 _1535 = bool3(_1533.x >= 1.0f.xxx.x, _1533.y >= 1.0f.xxx.y, _1533.z >= 1.0f.xxx.z);
                bool _1541 = any(bool3(_1534.x || _1535.x, _1534.y || _1535.y, _1534.z || _1535.z)) || ((asuint(_1531) & 2147483647u) > 2139095040u);
                int _1542 = int(_1524);
                float2 _1559 = float4(_50_m3[_1542].xy + (_1532.xy * _50_m3[_1542].zw), _1531, _1524).xy * _50_m4.zw;
                float2 _1561 = floor(_1559 + 0.5f.xx);
                float2 _1562 = _1559 - _1561;
                float _1563 = _1562.x;
                float _1564 = _1563 + 0.5f;
                float _1566 = (_1564 * _1564) * 0.5f;
                float _1569 = min(_1563, 0.0f);
                float _1573 = max(_1563, 0.0f);
                float4 _1577 = float4(_1566 - _1563, (1.0f - _1563) - (_1569 * _1569), (_1563 + 1.0f) - (_1573 * _1573), _1566) * 0.44444000720977783203125f;
                float _1578 = _1562.y;
                float _1579 = _1578 + 0.5f;
                float _1581 = (_1579 * _1579) * 0.5f;
                float _1584 = min(_1578, 0.0f);
                float _1588 = max(_1578, 0.0f);
                float4 _1592 = float4(_1581 - _1578, (1.0f - _1578) - (_1584 * _1584), (_1578 + 1.0f) - (_1588 * _1588), _1581) * 0.44444000720977783203125f;
                float2 _1594 = _1577.yw;
                float2 _1595 = _1577.xz + _1594;
                float2 _1597 = _1592.yw;
                float2 _1598 = _1592.xz + _1597;
                float2 _1604 = ((_1594 / _1595) + float2(-1.5f, 0.5f)) * _50_m4.xx;
                float2 _1606 = ((_1597 / _1598) + float2(-1.5f, 0.5f)) * _50_m4.yy;
                float2 _1608 = _1561 * _50_m4.xy;
                float _1609 = _1604.x;
                float _1610 = _1606.x;
                float _1613 = _1604.y;
                float _1616 = _1606.y;
                float _1621 = _1595.x;
                float _1622 = _1598.x;
                float _1624 = _1595.y;
                float _1626 = _1598.y;
                _1661 = _1541 ? 1.0f : (((((_1621 * _1622) * _51.SampleCmpLevelZero(_26, float3(_1608 + float2(_1609, _1610), _362).xy, _1531)) + ((_1624 * _1622) * _51.SampleCmpLevelZero(_26, float3(_1608 + float2(_1613, _1610), _362).xy, _1531))) + ((_1621 * _1626) * _51.SampleCmpLevelZero(_26, float3(_1608 + float2(_1609, _1616), _362).xy, _1531))) + ((_1624 * _1626) * _51.SampleCmpLevelZero(_26, float3(_1608 + float2(_1613, _1616), _362).xy, _1531)));
                _1662 = _1541;
            }
            else
            {
                _1661 = 1.0f;
                _1662 = false;
            }
            _1663 = _1661;
            _1664 = _1662;
        }
        else
        {
            _1663 = 1.0f;
            _1664 = false;
        }
        float _1864 = 0.0f;
        float _1865 = 0.0f;
        if ((_1446 < 1.0f) || (_50_m8.x > 0.5f))
        {
            float _1675 = 1.0f - clamp(dot(_574, _48_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1686 = (_426 - (_48_m0.xyz * (_1675 * _50_m24.x))) + (_574 * (_1675 * _50_m24.y));
            float4 _1692 = float4(_1686, 1.0f);
            float4 _1693 = mul(_50_m23, _1692);
            float2 _1694 = _1693.xy;
            float _1862 = 0.0f;
            if (all(bool2(_1694.x > 0.0f.xx.x, _1694.y > 0.0f.xx.y)) && all(bool2(_1694.x < 1.0f.xx.x, _1694.y < 1.0f.xx.y)))
            {
                uint _1713 = clamp(uint((floor(_1693.y * _50_m25.z) + _1693.x) * _50_m25.y), 0u, 127u);
                uint _1717 = asuint(_50_m27[_1713].x);
                float2 _1718 = spvUnpackHalf2x16(_1717);
                float _1719 = _1718.x;
                float _1861 = 0.0f;
                if (_1719 >= 0.0f)
                {
                    float4x4 _1728 = _50_m22;
                    _1728[0].w = _50_m27[_1713].y;
                    _1728[1].w = _50_m27[_1713].z;
                    _1728[2].w = _50_m27[_1713].w;
                    float4 _1735 = mul(_1728, _1692);
                    float3 _1736 = _1735.xyz;
                    float _1860 = 0.0f;
                    if (all(bool3(_1736.x > 0.0f.xxx.x, _1736.y > 0.0f.xxx.y, _1736.z > 0.0f.xxx.z)) && all(bool3(_1736.x < 1.0f.xxx.x, _1736.y < 1.0f.xxx.y, _1736.z < 1.0f.xxx.z)))
                    {
                        float _1753 = _1735.z;
                        float2 _1759 = float4((_1735.xy * _50_m24.zw) + float2(_1719, spvUnpackHalf2x16(_1717 >> 16u).x), _1753, 1.0f).xy * _50_m26.zw;
                        float2 _1761 = floor(_1759 + 0.5f.xx);
                        float2 _1762 = _1759 - _1761;
                        float _1763 = _1762.x;
                        float _1764 = _1763 + 0.5f;
                        float _1766 = (_1764 * _1764) * 0.5f;
                        float _1769 = min(_1763, 0.0f);
                        float _1773 = max(_1763, 0.0f);
                        float4 _1777 = float4(_1766 - _1763, (1.0f - _1763) - (_1769 * _1769), (_1763 + 1.0f) - (_1773 * _1773), _1766) * 0.44444000720977783203125f;
                        float _1778 = _1762.y;
                        float _1779 = _1778 + 0.5f;
                        float _1781 = (_1779 * _1779) * 0.5f;
                        float _1784 = min(_1778, 0.0f);
                        float _1788 = max(_1778, 0.0f);
                        float4 _1792 = float4(_1781 - _1778, (1.0f - _1778) - (_1784 * _1784), (_1778 + 1.0f) - (_1788 * _1788), _1781) * 0.44444000720977783203125f;
                        float2 _1794 = _1777.yw;
                        float2 _1795 = _1777.xz + _1794;
                        float2 _1797 = _1792.yw;
                        float2 _1798 = _1792.xz + _1797;
                        float2 _1804 = ((_1794 / _1795) + float2(-1.5f, 0.5f)) * _50_m26.xx;
                        float2 _1806 = ((_1797 / _1798) + float2(-1.5f, 0.5f)) * _50_m26.yy;
                        float2 _1808 = _1761 * _50_m26.xy;
                        float _1809 = _1804.x;
                        float _1810 = _1806.x;
                        float _1813 = _1804.y;
                        float _1816 = _1806.y;
                        float _1821 = _1795.x;
                        float _1822 = _1798.x;
                        float _1824 = _1795.y;
                        float _1826 = _1798.y;
                        _1860 = ((((_1821 * _1822) * _54.SampleCmpLevelZero(_26, float3(_1808 + float2(_1809, _1810), _362).xy, _1753)) + ((_1824 * _1822) * _54.SampleCmpLevelZero(_26, float3(_1808 + float2(_1813, _1810), _362).xy, _1753))) + ((_1821 * _1826) * _54.SampleCmpLevelZero(_26, float3(_1808 + float2(_1809, _1816), _362).xy, _1753))) + ((_1824 * _1826) * _54.SampleCmpLevelZero(_26, float3(_1808 + float2(_1813, _1816), _362).xy, _1753));
                    }
                    else
                    {
                        _1860 = 1.0f;
                    }
                    _1861 = _1860;
                }
                else
                {
                    _1861 = 1.0f;
                }
                _1862 = _1861;
            }
            else
            {
                _1862 = 1.0f;
            }
            _1864 = _1664 ? _1862 : _1663;
            _1865 = _1862;
        }
        else
        {
            _1864 = _1663;
            _1865 = 1.0f;
        }
        float _1868 = lerp(lerp(_1865, _1864, _1446), min(_1865, _1864), _50_m8.x);
        float _1919 = 0.0f;
        if (_1868 > 0.001000000047497451305389404296875f)
        {
            float3 _1875 = _426 - _18_m65.xyz;
            float2 _1885 = (_1875 + (_18_m68.xyz * _1875.y)).xz * _18_m66.z;
            float2 _1894 = _18_m67.xy * _18_m75.w;
            _1919 = _1868 * lerp(1.0f, lerp(_53.SampleLevel(_24, _1885 + _1894, 0.0f), _53.SampleLevel(_24, (_1885 * _18_m67.w) + _1894, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1875.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1919 = _1868;
        }
        _1924 = float2(lerp(_1919, _50_m7.z, _50_m7.w), _1919);
        break;
    } while(false);
    float _1929 = lerp(1.0f, min(1.0f, _1924.x), _50_m6.x);
    float4 _2064 = 0.0f.xxxx;
    if (_1929 > 0.001000000047497451305389404296875f)
    {
        float3 _1939 = -_48_m0.xyz;
        float _1944 = dot(_1939, _1109);
        float3 _1946 = _1109 - (_1939 * _1944);
        bool3 _1948 = (_1944 < _48_m4.z).xxx;
        float3 _1956 = normalize((_1939 * _48_m4.z) + ((_1946 * rsqrt(max(6.103515625e-05f, dot(_1946, _1946)))) * _48_m4.y));
        float3 _1957 = float3(_1948.x ? _1956.x : _1109.x, _1948.y ? _1956.y : _1109.y, _1948.z ? _1956.z : _1109.z);
        float3 _1961 = _1957 + _463;
        float3 _1965 = _1961 * rsqrt(max(6.103515625e-05f, dot(_1961, _1961)));
        float _1966 = clamp(dot(_1957, _574), 0.0f, 1.0f);
        float _1968 = clamp(dot(_574, _1965), 0.0f, 1.0f);
        float _1971 = clamp(_627, 0.0f, 1.0f);
        float _1972 = _549 * _549;
        float _1973 = _1972 * _1972;
        float _1994 = (((_1968 * _1973) - _1968) * _1968) + 1.0f;
        float _1997 = 1.0f - clamp(dot(_463, _1965), 0.0f, 1.0f);
        float _1998 = _1997 * _1997;
        float _2000 = (_1997 * _1998) * _1998;
        float _2024 = 1.0f - _549;
        float _2031 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2024 * (1.04997003078460693359375f + (_2024 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2024))))));
        float _2032 = 1.0f - _2031;
        float3 _2035 = _626 + ((1.0f.xxx - _626) * 0.0476190485060214996337890625f);
        float3 _2051 = ((clamp((min(((_626 * (1.0f - _2000)) + _2000.xxx) * ((_1973 / (_1994 * _1994)) * (0.5f / (((_1966 * sqrt(((((-_1971) * _1973) + _1971) * _1971) + _1973)) + (_1971 * sqrt(((((-_1966) * _1973) + _1966) * _1966) + _1973))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2035 * (((_58.SampleLevel(_23, (float2(_1971, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_1966, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2031) / _2032)) * _2035) / (1.0f.xxx - (_2035 * _2032)))) * _48_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1966) + ((_622 * 1.0f) * _1966)) * _48_m1.xyz;
        float3 _2062 = lerp(_2051, _2051 * _55.SampleBias(_23, float2(_1929, 0.5f), _18_m16).xyz, (1.0f - _1929).xxx) * 1.0f;
        _2064 = float4(_2062.x, _2062.y, _2062.z, 0.0f.xxxx.w);
    }
    else
    {
        _2064 = 0.0f.xxxx;
    }
    float2 _2066 = floor(_1118 * 0.03125f);
    int _2074 = int((_2066.x + (_2066.y * _46_m5)) * 8.0f);
    float _2081 = floor(_682 - (_18_m3.y * _46_m11));
    float _2085 = clamp(_2081, 0.0f, _46_m7 - 1.0f);
    int _2087 = int(_2085 * 8.0f);
    float3 _2089 = 0.0f.xxx;
    float _2092 = 0.0f;
    _2089 = 0.0f.xxx;
    _2092 = 1.0f;
    float3 _2090 = 0.0f.xxx;
    float _2093 = 0.0f;
    [loop]
    for (int _2094 = 0; _2094 <= 7; _2089 = _2090, _2092 = _2093, _2094++)
    {
        uint _2112 = (_2081 <= _2085) ? (_33.Load(uint(_2074 + _2094) * 4 + 0) & _33.Load(uint((_18_m21.y + _2087) + _2094) * 4 + 0)) : 0u;
        uint _2113 = uint(_2094);
        float3 _2117 = 0.0f.xxx;
        _2093 = _2092;
        _2117 = 0.0f.xxx;
        uint _2120 = 0u;
        float _2115 = 0.0f;
        float3 _2118 = 0.0f.xxx;
        [loop]
        for (uint _2119 = _2112; _2119 != 0u; _2093 = _2115, _2117 = _2118, _2119 = _2120)
        {
            uint _2124 = firstbitlow(_2119);
            _2120 = _2119 ^ (1u << (_2124 & 31u));
            int _2130 = int((32u * _2113) + _2124) * 8;
            int _2133 = _2130 + 1;
            int _2136 = _2130 + 2;
            int _2139 = _2130 + 3;
            int _2142 = _2130 + 5;
            int _2145 = _2130 + 6;
            int _2148 = _2130 + 7;
            uint _2152 = uint(_48_m6[_2142].w);
            float _2227 = 0.0f;
            if ((_2152 & 1u) == 1u)
            {
                uint _2158 = asuint(_48_m6[_2142].x);
                uint _2165 = asuint(_48_m6[_2142].y);
                uint _2172 = asuint(_48_m6[_2142].z);
                uint _2179 = asuint(_48_m6[_2145].x);
                uint _2186 = asuint(_48_m6[_2145].y);
                uint _2193 = asuint(_48_m6[_2145].z);
                float3 _2212 = abs(mul(float4(_426 - _48_m6[_2133].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2158).x, spvUnpackHalf2x16(_2172).x, spvUnpackHalf2x16(_2186).x, 0.0f), float4(spvUnpackHalf2x16(_2158 >> 16u).x, spvUnpackHalf2x16(_2172 >> 16u).x, spvUnpackHalf2x16(_2186 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2165).x, spvUnpackHalf2x16(_2179).x, spvUnpackHalf2x16(_2193).x, 0.0f), float4(spvUnpackHalf2x16(_2165 >> 16u).x, spvUnpackHalf2x16(_2179 >> 16u).x, spvUnpackHalf2x16(_2193 >> 16u).x, 0.0f))).xyz);
                float _2219 = _48_m6[_2148].x * 0.5f;
                float _2225 = 1.0f - clamp((max(max(_2212.x, _2212.y), _2212.z) - (_2219 + 0.5f)) / (0.5f - _2219), 0.0f, 1.0f);
                _2227 = _2225 * _2225;
            }
            else
            {
                _2227 = 1.0f;
            }
            bool _2231 = _48_m6[_2139].z > 0.5f;
            if ((false || (_2227 < 0.001000000047497451305389404296875f)) || _2231)
            {
                _2115 = _2093;
                _2118 = _2117;
                continue;
            }
            float _3342 = 0.0f;
            float3 _3343 = 0.0f.xxx;
            if (_48_m6[_2130].w < 1.5f)
            {
                float3 _2719 = float3(0.100000001490116119384765625f, _549, 1.0f);
                float _2728 = (0.5f + (0.5f * _48_m6[_2136].y)) - abs(_48_m6[_2136].x);
                float _2729 = _48_m6[_2136].y - _2728;
                float _2736 = abs(max((1.0f - abs(_2728)) - abs(_2729), 0.00048828125f));
                float3 _2740 = normalize(float3(_2728, _2729, (_48_m6[_2136].x >= 0.0f) ? _2736 : (-_2736)));
                float3 _2741 = _48_m6[_2133].xyz - _426;
                float _2742 = dot(_2741, _2741);
                float _2743 = rsqrt(_2742);
                float3 _2744 = _2741 * _2743;
                float _2748 = clamp(_48_m6[_2148].y * _2743, 0.0f, 1.0f);
                int _2753 = int(_48_m6[_2148].w);
                float3 _2754 = _2740 * _48_m6[_2136].z;
                float3 _2755 = _2754 * 0.5f;
                float3 _2756 = _2741 - _2755;
                float3 _2757 = _2741 + _2755;
                bool _2760 = (uint(_48_m6[_2130].w) & 1u) == 0u;
                bool _2763 = _2760 || ((_2152 & 2u) != 0u);
                bool _2766 = (!_2760) && (_48_m6[_2136].z > 0.0f);
                float _2785 = 0.0f;
                float _2786 = 0.0f;
                if (_2766)
                {
                    float _2770 = length(_2756);
                    float _2771 = length(_2757);
                    _2785 = clamp(0.5f * ((dot(_574, _2756) / _2770) + (dot(_574, _2757) / _2771)), 0.0f, 1.0f);
                    _2786 = 1.0f / ((((_2770 * _2771) + dot(_2756, _2757)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2785 = clamp(dot(_574, _2744), 0.0f, 1.0f);
                    _2786 = 1.0f;
                }
                float _2808 = 0.0f;
                if (_48_m6[_2145].w < 0.0f)
                {
                    float _2802 = _2742 * (_48_m6[_2133].w * _48_m6[_2133].w);
                    float _2805 = clamp(1.0f - (_2802 * _2802), 0.0f, 1.0f);
                    _2808 = lerp(1.0f / (_2742 + 1.0f), _2786, float(_2766)) * (_2805 * _2805);
                }
                else
                {
                    float3 _2791 = _2741 * _48_m6[_2133].w;
                    _2808 = _2786 * pow(1.0f - clamp(dot(_2791, _2791), 0.0f, 1.0f), _48_m6[_2145].w);
                }
                float _2814 = clamp((dot(_2744, -_2740) - _48_m6[_2136].z) * _48_m6[_2136].w, 0.0f, 1.0f);
                float _2818 = _2808 * lerp(1.0f, _2814 * _2814, float(_2760));
                float _2918 = 0.0f;
                if ((!_2766) && (_2753 >= 0))
                {
                    uint _2824 = uint(_2753);
                    float2 _2911 = 0.0f.xx;
                    [branch]
                    if (_2760)
                    {
                        float4 _2901 = mul(_68_m1[_2824], _430);
                        _2911 = _68_m0[_2824].xy + (clamp(_2901.xy / _2901.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_2824].zw);
                    }
                    else
                    {
                        float3 _2838 = mul(float4(-_2741, 0.0f), _68_m1[_2824]).xyz;
                        float3 _369 = _2838;
                        float3 _368 = _2838;
                        float3 _367 = abs(_2838);
                        uint _2847 = uint(int(_367.y > _367.x));
                        uint _2853 = (_367.z > _367[_2847]) ? 2u : _2847;
                        uint _2859 = (_2853 * 2u) + uint(_368[_2853] < 0.0f);
                        float _2863 = abs(_369[_2859 / 2u]);
                        float _2883 = 0.5f - (0.000244140625f / _68_m0[_2824].w);
                        _2911 = _68_m0[_2824].xy + (clamp(float2((float(_2859) + ((((_369[uint(_343[_2859].x)] * _344[_2859].x) / _2863) * _2883) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_369[uint(_343[_2859].y)] * _344[_2859].y) / _2863) * _2883)), 0.0f.xx, 1.0f.xx) * _68_m0[_2824].zw);
                    }
                    _2918 = _2818 * _66.SampleLevel(_23, _2911, 0.0f).x;
                }
                else
                {
                    _2918 = _2818;
                }
                bool _2919 = _2918 > 0.0f;
                float _3207 = 0.0f;
                if (_2919)
                {
                    int _2971 = 0;
                    if (_2763)
                    {
                        _2971 = int(_48_m6[_2139].x);
                    }
                    else
                    {
                        uint _2926 = asuint(_48_m6[_2136].w);
                        uint _2928 = asuint(_48_m6[_2139].x);
                        float3 _2929 = _426 - _48_m6[_2133].xyz;
                        float3 _2930 = abs(_2929);
                        float _2931 = _2930.x;
                        float _2932 = _2930.y;
                        float _2934 = _2930.z;
                        int _2966 = 0;
                        if ((_2931 > _2932) && (_2931 > _2934))
                        {
                            _2966 = int((_2929.x > 0.0f) ? (_2926 >> 24u) : ((_2926 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2958 = 0;
                            if (_2932 > _2934)
                            {
                                _2958 = int((_2929.y > 0.0f) ? ((_2926 >> 8u) & 255u) : (_2926 & 255u));
                            }
                            else
                            {
                                _2958 = int((_2929.z > 0.0f) ? ((_2928 >> 8u) & 255u) : (_2928 & 255u));
                            }
                            _2966 = _2958;
                        }
                        _2971 = (_2966 < 80) ? _2966 : (-1);
                    }
                    float3 _2981 = (_426 - ((-_2744) * _50_m11[_2971].x)) + (_574 * (_50_m11[_2971].y * 5.0f));
                    float4 _2988 = mul(_50_m10[_2971], float4(_2981, 1.0f));
                    float _2989 = _2988.w;
                    float3 _2992 = _2988.xyz / _2989.xxx;
                    float2 _2993 = _2992.xy;
                    float3 _3001 = _2992.xyz;
                    bool3 _3002 = bool3(_3001.x <= 0.0f.xxx.x, _3001.y <= 0.0f.xxx.y, _3001.z <= 0.0f.xxx.z);
                    bool3 _3003 = bool3(_3001.x >= 1.0f.xxx.x, _3001.y >= 1.0f.xxx.y, _3001.z >= 1.0f.xxx.z);
                    float _3006 = _2992.z;
                    float2 _3017 = ((_2993 * (_50_m12[_2971].zw - _50_m12[_2971].xy)) + _50_m12[_2971].xy).xy * _50_m13.zw;
                    float2 _3019 = floor(_3017 + 0.5f.xx);
                    float2 _3020 = _3017 - _3019;
                    float _3021 = _3020.x;
                    float _3022 = _3021 + 0.5f;
                    float _3023 = _3022 * _3022;
                    float _3026 = 1.0f - _3021;
                    float _3027 = min(_3021, 0.0f);
                    float _3030 = _3021 + 1.0f;
                    float _3031 = max(_3021, 0.0f);
                    float _3042 = _3020.y;
                    float _3043 = _3042 + 0.5f;
                    float _3044 = _3043 * _3043;
                    float _3047 = 1.0f - _3042;
                    float _3048 = min(_3042, 0.0f);
                    float _3051 = _3042 + 1.0f;
                    float _3052 = max(_3042, 0.0f);
                    float3 _3064 = float3(0.1599999964237213134765625f * _3026, 0.1599999964237213134765625f * ((_3030 - (_3031 * _3031)) + 1.0f), _3023 * 0.07999999821186065673828125f);
                    float3 _3065 = float3(0.1599999964237213134765625f * ((_3023 * 0.5f) - _3021), 0.1599999964237213134765625f * ((_3026 - (_3027 * _3027)) + 1.0f), 0.1599999964237213134765625f * _3030) + _3064;
                    float3 _3067 = float3(0.1599999964237213134765625f * _3047, 0.1599999964237213134765625f * ((_3051 - (_3052 * _3052)) + 1.0f), _3044 * 0.07999999821186065673828125f);
                    float3 _3068 = float3(0.1599999964237213134765625f * ((_3044 * 0.5f) - _3042), 0.1599999964237213134765625f * ((_3047 - (_3048 * _3048)) + 1.0f), 0.1599999964237213134765625f * _3051) + _3067;
                    float3 _3074 = ((_3064 / _3065) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                    float3 _3076 = ((_3067 / _3068) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                    float2 _3078 = _3019 * _50_m13.xy;
                    float _3079 = _3074.x;
                    float _3080 = _3076.x;
                    float _3083 = _3074.y;
                    float _3086 = _3074.z;
                    float _3089 = _3076.y;
                    float _3096 = _3076.z;
                    float _3103 = _3065.x;
                    float _3104 = _3068.x;
                    float _3106 = _3065.y;
                    float _3108 = _3065.z;
                    float _3110 = _3068.y;
                    float _3114 = _3068.z;
                    float _3172 = (((((((_3103 * _3104) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3079, _3080), _362).xy, _3006)) + ((_3106 * _3104) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3083, _3080), _362).xy, _3006))) + ((_3108 * _3104) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3086, _3080), _362).xy, _3006))) + ((_3103 * _3110) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3079, _3089), _362).xy, _3006))) + ((_3106 * _3110) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3083, _3089), _362).xy, _3006))) + ((_3108 * _3110) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3086, _3089), _362).xy, _3006))) + ((_3103 * _3114) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3079, _3096), _362).xy, _3006));
                    float2 _3193 = min(_2993, 1.0f.xx - _2993);
                    _3207 = (_2971 >= 0) ? lerp(1.0f, (any(bool3(_3002.x || _3003.x, _3002.y || _3003.y, _3002.z || _3003.z)) || ((asuint(_3006) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3172 + ((_3106 * _3114) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3083, _3096), _362).xy, _3006))) + ((_3108 * _3114) * _52.SampleCmpLevelZero(_26, float3(_3078 + float2(_3086, _3096), _362).xy, _3006))), _2763 ? min(_50_m11[_2971].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2971].z - _2989) * 0.25f, min(_3193.x, _3193.y)))) : _50_m11[_2971].w) : 1.0f;
                }
                else
                {
                    _3207 = 1.0f;
                }
                float3 _3230 = 0.0f.xxx;
                float3 _3231 = 0.0f.xxx;
                if (_2766)
                {
                    float3 _3210 = _2719 * _2719;
                    float _3219 = dot(_1109, _2754);
                    _3230 = _3210 / clamp(_3210 + (0.5f * clamp(_48_m6[_2136].z * _2743, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3231 = normalize(_2756 + (_2754 * clamp(dot(_2756, (_1109 * _3219) - _2754) / ((_48_m6[_2136].z * _48_m6[_2136].z) - (_3219 * _3219)), 0.0f, 1.0f)));
                }
                else
                {
                    _3230 = 1.0f.xxx;
                    _3231 = _2744;
                }
                float3 _3232 = _3231 + _463;
                float3 _3236 = _3232 * rsqrt(max(6.103515625e-05f, dot(_3232, _3232)));
                float3 _3341 = 0.0f.xxx;
                if (_2919)
                {
                    float _3239 = clamp(_2785, 0.0f, 1.0f);
                    float _3241 = clamp(dot(_574, _3236), 0.0f, 1.0f);
                    float _3243 = clamp(dot(_463, _3236), 0.0f, 1.0f);
                    float _3244 = clamp(_627, 0.0f, 1.0f);
                    float _3245 = _549 * _549;
                    float _3255 = 0.0f;
                    if (_2748 > 0.0f)
                    {
                        _3255 = clamp(_3245 + ((_2748 * _2748) / ((_3243 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3255 = _3245;
                    }
                    float _3256 = _3255 * _3255;
                    float _3277 = (((_3241 * _3256) - _3241) * _3241) + 1.0f;
                    float _3282 = 1.0f - _3243;
                    float _3283 = _3282 * _3282;
                    float _3285 = (_3282 * _3283) * _3283;
                    float _3309 = 1.0f - _549;
                    float _3316 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3309 * (1.04997003078460693359375f + (_3309 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3309))))));
                    float _3317 = 1.0f - _3316;
                    float3 _3320 = _626 + ((1.0f.xxx - _626) * 0.0476190485060214996337890625f);
                    float3 _3340 = ((clamp((min(((_626 * (1.0f - _3285)) + _3285.xxx) * (((_3256 / (_3277 * _3277)) * _3230.y) * (0.5f / (((_3239 * sqrt(((((-_3244) * _3256) + _3244) * _3244) + _3256)) + (_3244 * sqrt(((((-_3239) * _3256) + _3239) * _3239) + _3256))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3320 * (((_58.SampleLevel(_23, (float2(_3244, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_3239, _549) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3316) / _3317)) * _3320) / (1.0f.xxx - (_3320 * _3317)))) * _48_m6[_2148].z, 0.0f.xxx, 1000.0f.xxx) * _2785) + ((_622 * _3230.z) * _2785)) * (((_48_m6[_2130].xyz * _2918) * _3207) * _2227);
                    _3341 = _3340;
                }
                else
                {
                    _3341 = 0.0f.xxx;
                }
                _3342 = _2093;
                _3343 = _3341;
            }
            else
            {
                float _2717 = 0.0f;
                do
                {
                    if (_2231)
                    {
                        _2717 = 1.0f;
                        break;
                    }
                    float _2251 = (0.5f + (0.5f * _48_m6[_2136].y)) - abs(_48_m6[_2136].x);
                    float _2252 = _48_m6[_2136].y - _2251;
                    float _2259 = abs(max((1.0f - abs(_2251)) - abs(_2252), 0.00048828125f));
                    float3 _2263 = normalize(float3(_2251, _2252, (_48_m6[_2136].x >= 0.0f) ? _2259 : (-_2259)));
                    float3 _2264 = _48_m6[_2133].xyz - _426;
                    float _2265 = dot(_2264, _2264);
                    float3 _2267 = _2264 * rsqrt(_2265);
                    int _2270 = int(_48_m6[_2148].w);
                    float3 _2272 = (_2263 * _48_m6[_2136].z) * 0.5f;
                    float3 _2273 = _2264 - _2272;
                    float3 _2274 = _2264 + _2272;
                    bool _2277 = (uint(_48_m6[_2130].w) & 1u) == 0u;
                    bool _2280 = _2277 || ((_2152 & 2u) != 0u);
                    bool _2283 = (!_2277) && (_48_m6[_2136].z > 0.0f);
                    float _2295 = 0.0f;
                    if (_2283)
                    {
                        _2295 = 1.0f / ((((length(_2273) * length(_2274)) + dot(_2273, _2274)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2295 = 1.0f;
                    }
                    float _2317 = 0.0f;
                    if (_48_m6[_2145].w < 0.0f)
                    {
                        float _2311 = _2265 * (_48_m6[_2133].w * _48_m6[_2133].w);
                        float _2314 = clamp(1.0f - (_2311 * _2311), 0.0f, 1.0f);
                        _2317 = lerp(1.0f / (_2265 + 1.0f), _2295, float(_2283)) * (_2314 * _2314);
                    }
                    else
                    {
                        float3 _2300 = _2264 * _48_m6[_2133].w;
                        _2317 = _2295 * pow(1.0f - clamp(dot(_2300, _2300), 0.0f, 1.0f), _48_m6[_2145].w);
                    }
                    float _2323 = clamp((dot(_2267, -_2263) - _48_m6[_2136].z) * _48_m6[_2136].w, 0.0f, 1.0f);
                    float _2327 = _2317 * lerp(1.0f, _2323 * _2323, float(_2277));
                    float _2427 = 0.0f;
                    if ((!_2283) && (_2270 >= 0))
                    {
                        uint _2333 = uint(_2270);
                        float2 _2420 = 0.0f.xx;
                        [branch]
                        if (_2277)
                        {
                            float4 _2410 = mul(_68_m1[_2333], _430);
                            _2420 = _68_m0[_2333].xy + (clamp(_2410.xy / _2410.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_2333].zw);
                        }
                        else
                        {
                            float3 _2347 = mul(float4(-_2264, 0.0f), _68_m1[_2333]).xyz;
                            float3 _372 = _2347;
                            float3 _371 = _2347;
                            float3 _370 = abs(_2347);
                            uint _2356 = uint(int(_370.y > _370.x));
                            uint _2362 = (_370.z > _370[_2356]) ? 2u : _2356;
                            uint _2368 = (_2362 * 2u) + uint(_371[_2362] < 0.0f);
                            float _2372 = abs(_372[_2368 / 2u]);
                            float _2392 = 0.5f - (0.000244140625f / _68_m0[_2333].w);
                            _2420 = _68_m0[_2333].xy + (clamp(float2((float(_2368) + ((((_372[uint(_343[_2368].x)] * _344[_2368].x) / _2372) * _2392) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_372[uint(_343[_2368].y)] * _344[_2368].y) / _2372) * _2392)), 0.0f.xx, 1.0f.xx) * _68_m0[_2333].zw);
                        }
                        _2427 = _2327 * _66.SampleLevel(_23, _2420, 0.0f).x;
                    }
                    else
                    {
                        _2427 = _2327;
                    }
                    float _2716 = 0.0f;
                    if (_2427 > 0.0f)
                    {
                        int _2480 = 0;
                        if (_2280)
                        {
                            _2480 = int(_48_m6[_2139].x);
                        }
                        else
                        {
                            uint _2435 = asuint(_48_m6[_2136].w);
                            uint _2437 = asuint(_48_m6[_2139].x);
                            float3 _2438 = _426 - _48_m6[_2133].xyz;
                            float3 _2439 = abs(_2438);
                            float _2440 = _2439.x;
                            float _2441 = _2439.y;
                            float _2443 = _2439.z;
                            int _2475 = 0;
                            if ((_2440 > _2441) && (_2440 > _2443))
                            {
                                _2475 = int((_2438.x > 0.0f) ? (_2435 >> 24u) : ((_2435 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2467 = 0;
                                if (_2441 > _2443)
                                {
                                    _2467 = int((_2438.y > 0.0f) ? ((_2435 >> 8u) & 255u) : (_2435 & 255u));
                                }
                                else
                                {
                                    _2467 = int((_2438.z > 0.0f) ? ((_2437 >> 8u) & 255u) : (_2437 & 255u));
                                }
                                _2475 = _2467;
                            }
                            _2480 = (_2475 < 80) ? _2475 : (-1);
                        }
                        float3 _2490 = (_426 - ((-_2267) * _50_m11[_2480].x)) + (_574 * (_50_m11[_2480].y * 5.0f));
                        float4 _2497 = mul(_50_m10[_2480], float4(_2490, 1.0f));
                        float _2498 = _2497.w;
                        float3 _2501 = _2497.xyz / _2498.xxx;
                        float2 _2502 = _2501.xy;
                        float3 _2510 = _2501.xyz;
                        bool3 _2511 = bool3(_2510.x <= 0.0f.xxx.x, _2510.y <= 0.0f.xxx.y, _2510.z <= 0.0f.xxx.z);
                        bool3 _2512 = bool3(_2510.x >= 1.0f.xxx.x, _2510.y >= 1.0f.xxx.y, _2510.z >= 1.0f.xxx.z);
                        float _2515 = _2501.z;
                        float2 _2526 = ((_2502 * (_50_m12[_2480].zw - _50_m12[_2480].xy)) + _50_m12[_2480].xy).xy * _50_m13.zw;
                        float2 _2528 = floor(_2526 + 0.5f.xx);
                        float2 _2529 = _2526 - _2528;
                        float _2530 = _2529.x;
                        float _2531 = _2530 + 0.5f;
                        float _2532 = _2531 * _2531;
                        float _2535 = 1.0f - _2530;
                        float _2536 = min(_2530, 0.0f);
                        float _2539 = _2530 + 1.0f;
                        float _2540 = max(_2530, 0.0f);
                        float _2551 = _2529.y;
                        float _2552 = _2551 + 0.5f;
                        float _2553 = _2552 * _2552;
                        float _2556 = 1.0f - _2551;
                        float _2557 = min(_2551, 0.0f);
                        float _2560 = _2551 + 1.0f;
                        float _2561 = max(_2551, 0.0f);
                        float3 _2573 = float3(0.1599999964237213134765625f * _2535, 0.1599999964237213134765625f * ((_2539 - (_2540 * _2540)) + 1.0f), _2532 * 0.07999999821186065673828125f);
                        float3 _2574 = float3(0.1599999964237213134765625f * ((_2532 * 0.5f) - _2530), 0.1599999964237213134765625f * ((_2535 - (_2536 * _2536)) + 1.0f), 0.1599999964237213134765625f * _2539) + _2573;
                        float3 _2576 = float3(0.1599999964237213134765625f * _2556, 0.1599999964237213134765625f * ((_2560 - (_2561 * _2561)) + 1.0f), _2553 * 0.07999999821186065673828125f);
                        float3 _2577 = float3(0.1599999964237213134765625f * ((_2553 * 0.5f) - _2551), 0.1599999964237213134765625f * ((_2556 - (_2557 * _2557)) + 1.0f), 0.1599999964237213134765625f * _2560) + _2576;
                        float3 _2583 = ((_2573 / _2574) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.xxx;
                        float3 _2585 = ((_2576 / _2577) + float3(-2.5f, -0.5f, 1.5f)) * _50_m13.yyy;
                        float2 _2587 = _2528 * _50_m13.xy;
                        float _2588 = _2583.x;
                        float _2589 = _2585.x;
                        float _2592 = _2583.y;
                        float _2595 = _2583.z;
                        float _2598 = _2585.y;
                        float _2605 = _2585.z;
                        float _2612 = _2574.x;
                        float _2613 = _2577.x;
                        float _2615 = _2574.y;
                        float _2617 = _2574.z;
                        float _2619 = _2577.y;
                        float _2623 = _2577.z;
                        float _2681 = (((((((_2612 * _2613) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2588, _2589), _362).xy, _2515)) + ((_2615 * _2613) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2592, _2589), _362).xy, _2515))) + ((_2617 * _2613) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2595, _2589), _362).xy, _2515))) + ((_2612 * _2619) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2588, _2598), _362).xy, _2515))) + ((_2615 * _2619) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2592, _2598), _362).xy, _2515))) + ((_2617 * _2619) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2595, _2598), _362).xy, _2515))) + ((_2612 * _2623) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2588, _2605), _362).xy, _2515));
                        float2 _2702 = min(_2502, 1.0f.xx - _2502);
                        _2716 = (_2480 >= 0) ? lerp(1.0f, (any(bool3(_2511.x || _2512.x, _2511.y || _2512.y, _2511.z || _2512.z)) || ((asuint(_2515) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2681 + ((_2615 * _2623) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2592, _2605), _362).xy, _2515))) + ((_2617 * _2623) * _52.SampleCmpLevelZero(_26, float3(_2587 + float2(_2595, _2605), _362).xy, _2515))), _2280 ? min(_50_m11[_2480].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_50_m11[_2480].z - _2498) * 0.25f, min(_2702.x, _2702.y)))) : _50_m11[_2480].w) : 1.0f;
                    }
                    else
                    {
                        _2716 = 1.0f;
                    }
                    _2717 = _2716;
                    break;
                } while(false);
                _3342 = _2093 * _2717;
                _3343 = 0.0f.xxx;
            }
            _2115 = _3342;
            _2118 = _2117 + _3343;
        }
        _2090 = _2089 + _2117;
    }
    /*
    Vanilla shader code from 0xCBA57214:
    float3 _3349 = ((((float3(_1088, _1093, _1098) * _622) * lerp(1.0f, _519.z, _41_m4)) * _18_m22.x) + ((_1409 * ((_626 * _641.x) + (clamp(50.0f * _626.y, 0.0f, 1.0f) * _641.y).xxx)) * 1.0f)) + (_2064.xyz + (_2089 * _2092)).xyz;
    */
    // RenoDX code: Reduce opaque glass lighting while the glass transparency improvement is enabled.
    float3 _3349 = ((((float3(_1088, _1093, _1098) * (_622 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _519.z, _41_m4)) * _18_m22.x) + ((_1409 * ((_626 * _641.x) + (clamp(50.0f * _626.y, 0.0f, 1.0f) * _641.y).xxx)) * 1.0f)) + (_2064.xyz + ((_2089 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2092)).xyz;
    float4 _3350 = float4(_3349.x, _3349.y, _3349.z, _364.w);
    _3350.w = _544;
    float _3367 = _426.y * _18_m46.w;
    float _3372 = max(0.00999999977648258209228515625f, _3367 + _18_m47.w);
    float3 _3386 = exp(_18_m45.xyz * ((-max(0.0f, (_464 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3372)) / _3372) * exp(_3367 + _18_m48.w))));
    float _3389 = dot(_1108, _18_m44.xyz);
    float _3395 = _18_m45.w * _18_m45.w;
    float _3399 = (1.0f + _3395) - ((2.0f * _18_m45.w) * _3389);
    float3 _3731 = 0.0f.xxx;
    float _3732 = 0.0f;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3557 = (uint3(int3(int(_681.x), int(_681.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3558 = _3557.y;
        uint _3559 = _3557.z;
        uint _3562 = _3557.x + (_3558 * _3559);
        uint _3564 = _3558 + (_3559 * _3562);
        uint _3566 = _3559 + (_3562 * _3564);
        uint _3568 = _3562 + (_3564 * _3566);
        float _3592 = dot(_1108, -_16_m0[2].xyz);
        float3 _3602 = _426 - _16_m11.xyz;
        float _3604 = (_18_m55.w * ((_3592 > 5.9604644775390625e-08f) ? (1.0f / _3592) : 0.0f)) * (1.0f / _464);
        float _3605 = _3602.y;
        float _3606 = _3604 * _3605;
        float _3608 = _16_m11.y + _3606;
        float _3609 = _3605 - _3606;
        float _3611 = (1.0f - _3604) * _464;
        float _3625 = max(-127.0f, _18_m49.z * _3609);
        float _3649 = max(-127.0f, _18_m52.x * _3609);
        float _3660 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3608 - _18_m49.x)))) * ((abs(_3625) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3625)) / _3625) : (0.693147182464599609375f - (0.2402265071868896484375f * _3625)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3608 - _18_m52.z)))) * ((abs(_3649) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3649)) / _3649) : (0.693147182464599609375f - (0.2402265071868896484375f * _3649))));
        float _3682 = clamp((_464 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3685 = clamp((max(clamp(exp2(-(_3660 * _3611)), 0.0f, 1.0f), _18_m51.w) + clamp((_464 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3682, 0.0f, 1.0f);
        float4 _3725 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1118 + ((((float3(uint3(_3568, _3564 + (_3566 * _3568), _365) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_682 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_682 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3731 = _3725.xyz + (((_18_m51.xyz * (1.0f - _3685)) + (((_18_m54.xyz * pow(clamp(dot(_463, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3660 * max(_3611 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3682))) * _3725.w);
        _3732 = _3725.w * _3685;
    }
    else
    {
        float3 _3429 = _426 - _16_m11.xyz;
        float _3431 = _3429.y;
        float _3445 = max(-127.0f, _18_m49.z * _3431);
        float _3469 = max(-127.0f, _18_m52.x * _3431);
        float _3480 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3445) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3445)) / _3445) : (0.693147182464599609375f - (0.2402265071868896484375f * _3445)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3469) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3469)) / _3469) : (0.693147182464599609375f - (0.2402265071868896484375f * _3469))));
        float _3502 = clamp((_464 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3505 = clamp((max(clamp(exp2(-(_3480 * _464)), 0.0f, 1.0f), _18_m51.w) + clamp((_464 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3502, 0.0f, 1.0f);
        _3731 = (_18_m51.xyz * (1.0f - _3505)) + (((_18_m54.xyz * pow(clamp(dot(_463, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3480 * max(_464 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3502));
        _3732 = _3505;
    }
    /*
    Vanilla shader code from 0xCBA57214:
    float3 _3738 = ((_3350.xyz * (_3386 * _3732)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3389 * _3389)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3395) / max((12.56637096405029296875f * _3399) * sqrt(_3399), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3386)) * _3732) + _3731)).xyz;
    */
    // RenoDX code start: Apply the selected hue-preserving fog balance to transparent glass.
    float3 _3738 = ((_3350.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3386 * _3732)) : (_3386 * _3732))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3389 * _3389)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3395) / max((12.56637096405029296875f * _3399) * sqrt(_3399), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3386)) * _3732 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3731 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
    // RenoDX code end
    float3 _3748 = lerp(dot(_3738, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3738, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3758 = min(lerp(((sqrt(sqrt(abs(_594 * 0.5f))) * float2(int2(sign(_594)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _581.xx), 1.0f.xx);
    float4 _3759 = float4(_3758.x, _3758.y, _364.z, _364.w);
    _3759.z = float(clamp(max(dot(_3748.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _544, _544) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3759.w = lerp(0.0f, 0.699999988079071044921875f, _581);
    /*
    Vanilla shader code from 0xCBA57214:
    _13 = float4(_3748.x, _3748.y, _3748.z, _3350.w);
    */
    // RenoDX code start: Compress bright transparent output while preserving hue and clear the auxiliary alpha.
    float3 renodx_output_color = float3(_3748.x, _3748.y, _3748.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3350.w);
    _14 = _3759;
    if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
    // RenoDX code end
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
