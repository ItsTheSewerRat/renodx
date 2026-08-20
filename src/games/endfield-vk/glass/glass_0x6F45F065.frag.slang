#include "../shared.h"

// Current Vulkan shader mapped from DX11 0xD6BA37BD.
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

struct _41
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

static float _368 = (float)0;
static float4 _370 = (float4)0;
static uint _371 = (uint)0;

static const float4 _348[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _349[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _350[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(50, 0)]] ByteAddressBuffer _31 : register(t50);
[[vk::binding(4, 1)]]
cbuffer _38_39 : register(b4)
{
    float _39_m0 : packoffset(c0);
    float _39_m1 : packoffset(c0.y);
    float _39_m2 : packoffset(c0.z);
    float _39_m3 : packoffset(c0.w);
    float _39_m4 : packoffset(c1);
    float _39_m5 : packoffset(c1.y);
    float _39_m6 : packoffset(c1.z);
    float _39_m7 : packoffset(c1.w);
    float _39_m8 : packoffset(c2);
    float _39_m9 : packoffset(c2.y);
    float _39_m10 : packoffset(c2.z);
    float _39_m11 : packoffset(c2.w);
    float _39_m12 : packoffset(c3);
    float _39_m13 : packoffset(c3.y);
    float _39_m14 : packoffset(c3.z);
    float _39_m15 : packoffset(c3.w);
    float _39_m16 : packoffset(c4);
    float _39_m17 : packoffset(c4.y);
    float _39_m18 : packoffset(c4.z);
    float _39_m19 : packoffset(c4.w);
    float _39_m20 : packoffset(c5);
    float _39_m21 : packoffset(c5.y);
    float _39_m22 : packoffset(c5.z);
    float _39_m23 : packoffset(c5.w);
    float _39_m24 : packoffset(c6);
    float _39_m25 : packoffset(c6.y);
    float _39_m26 : packoffset(c6.z);
    float _39_m27 : packoffset(c6.w);
    float _39_m28 : packoffset(c7);
    float _39_m29 : packoffset(c7.y);
    float _39_m30 : packoffset(c7.z);
    float _39_m31 : packoffset(c7.w);
    float4 _39_m32 : packoffset(c8);
    float4 _39_m33 : packoffset(c9);
    float4 _39_m34 : packoffset(c10);
    float4 _39_m35 : packoffset(c11);
    float4 _39_m36 : packoffset(c12);
    float4 _39_m37 : packoffset(c13);
    float4 _39_m38 : packoffset(c14);
    float4 _39_m39 : packoffset(c15);
    float4 _39_m40 : packoffset(c16);
    float4 _39_m41 : packoffset(c17);
    float4 _39_m42 : packoffset(c18);
    float4 _39_m43 : packoffset(c19);
    float4 _39_m44 : packoffset(c20);
    float4 _39_m45 : packoffset(c21);
    float _39_m46 : packoffset(c22);
    float _39_m47 : packoffset(c22.y);
    float _39_m48 : packoffset(c22.z);
    float _39_m49 : packoffset(c22.w);
    float _39_m50 : packoffset(c23);
    float _39_m51 : packoffset(c23.y);
    float _39_m52 : packoffset(c23.z);
    float _39_m53 : packoffset(c23.w);
    float4 _39_m54 : packoffset(c24);
    float _39_m55 : packoffset(c25);
    float _39_m56 : packoffset(c25.y);
    float _39_m57 : packoffset(c25.z);
    float _39_m58 : packoffset(c25.w);
    float _39_m59 : packoffset(c26);
    float _39_m60 : packoffset(c26.y);
    float _39_m61 : packoffset(c26.z);
    float _39_m62 : packoffset(c26.w);
    float _39_m63 : packoffset(c27);
    float _39_m64 : packoffset(c27.y);
    float _39_m65 : packoffset(c27.z);
    float _39_m66 : packoffset(c27.w);
};

[[vk::binding(17, 0)]]
cbuffer _40_42 : register(b17)
{
    float4 _42_m0 : packoffset(c0);
    float4 _42_m1 : packoffset(c1);
    float4 _42_m2 : packoffset(c2);
    float4 _42_m3 : packoffset(c3);
    _41 _42_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _43_44 : register(b47)
{
    int _44_m0 : packoffset(c0);
    int _44_m1 : packoffset(c0.y);
    int _44_m2 : packoffset(c0.z);
    int _44_m3 : packoffset(c0.w);
    float _44_m4 : packoffset(c1);
    float _44_m5 : packoffset(c1.y);
    float _44_m6 : packoffset(c1.z);
    float _44_m7 : packoffset(c1.w);
    float _44_m8 : packoffset(c2);
    float _44_m9 : packoffset(c2.y);
    float _44_m10 : packoffset(c2.z);
    float _44_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _45_46 : register(b14)
{
    float4 _46_m0 : packoffset(c0);
    float4 _46_m1 : packoffset(c1);
    float4 _46_m2 : packoffset(c2);
    float4 _46_m3 : packoffset(c3);
    float4 _46_m4 : packoffset(c4);
    uint4 _46_m5 : packoffset(c5);
    float4 _46_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _47_48 : register(b15)
{
    column_major float4x4 _48_m0[5] : packoffset(c0);
    float4 _48_m1[4] : packoffset(c20);
    float4 _48_m2[4] : packoffset(c24);
    float4 _48_m3[4] : packoffset(c28);
    float4 _48_m4 : packoffset(c32);
    float4 _48_m5 : packoffset(c33);
    float4 _48_m6 : packoffset(c34);
    float4 _48_m7 : packoffset(c35);
    float4 _48_m8 : packoffset(c36);
    float4 _48_m9[27] : packoffset(c37);
    column_major float4x4 _48_m10[56] : packoffset(c64);
    float4 _48_m11[56] : packoffset(c288);
    float4 _48_m12[56] : packoffset(c344);
    float4 _48_m13 : packoffset(c400);
    float4 _48_m14[47] : packoffset(c401);
    column_major float4x4 _48_m15[15] : packoffset(c448);
    float4 _48_m16[15] : packoffset(c508);
    float4 _48_m17[15] : packoffset(c523);
    float4 _48_m18[15] : packoffset(c538);
    float4 _48_m19 : packoffset(c553);
    float4 _48_m20 : packoffset(c554);
    float4 _48_m21[21] : packoffset(c555);
    column_major float4x4 _48_m22 : packoffset(c576);
    column_major float4x4 _48_m23 : packoffset(c580);
    float4 _48_m24 : packoffset(c584);
    float4 _48_m25 : packoffset(c585);
    float4 _48_m26 : packoffset(c586);
    float4 _48_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _65_66 : register(b49)
{
    float4 _66_m0[32] : packoffset(c0);
    column_major float4x4 _66_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _23 : register(s6);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(25, 0)]] Texture2DArray<float4> _29 : register(t25);
[[vk::binding(3, 1)]] Texture2D<float4> _32 : register(t3);
[[vk::binding(1, 1)]] SamplerState _33 : register(s1);
[[vk::binding(2, 1)]] Texture2D<float4> _34 : register(t2);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0);
[[vk::binding(22, 0)]] Texture2D<float4> _36 : register(t22);
[[vk::binding(20, 0)]] SamplerState _37 : register(s20);
[[vk::binding(9, 0)]] Texture2D<float4> _49 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _50 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _51 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _52 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _53 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _56 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _57 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _58 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _59 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _60 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _61 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _62 : register(t29);
[[vk::binding(35, 0)]] Texture3D<float4> _63 : register(t35);
[[vk::binding(28, 0)]] Texture2D<float4> _64 : register(t28);

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
    float2 _397 = gl_FragCoord.xy * _18_m0.zw;
    float2 _400 = (_397 * 2.0f) - 1.0f.xx;
    float4 _403 = float4(_400, gl_FragCoord.z, 1.0f);
    _403.y = -_400.y;
    float4 _406 = mul(_16_m6, _403);
    float3 _410 = _406.xyz / _406.w.xxx;
    float4 _414 = float4(_410, 1.0f);
    float _421 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _443;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _443 = _16_m11.xyz - _410;
            break;
        }
        else
        {
            _443 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _444 = dot(_443, _443);
    float _446 = rsqrt(max(_444, 9.9999999392252902907785028219223e-09f));
    float3 _447 = _443 * _446;
    float _448 = _444 * _446;
    float4 _481 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float _483 = _481.w;
    float4 _486 = _34.SampleBias(_35, (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw, _39_m13 + _18_m16);
    float2 _489 = (_486.xy * 2.0f.xx) - 1.0f.xx;
    float2 _490 = abs(_489);
    bool2 _491 = bool2(_490.x < 0.01200000010430812835693359375f.xx.x, _490.y < 0.01200000010430812835693359375f.xx.y);
    float2 _492 = float2(_491.x ? 0.0f.xx.x : _489.x, _491.y ? 0.0f.xx.y : _489.y);
    float2 _493 = _492 * _39_m0;
    float _500 = _486.z;
    float _501 = _486.w;
    float _519 = lerp(_483, _501, _39_m6) * _39_m32.w;
    float _525 = lerp(_519, _519 * _8.x, _39_m63);
    float _530 = lerp(_39_m2, _39_m3, _500);
    float _540 = lerp(_483, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float _548 = clamp(_39_m56, 0.0f, 1.0f);
    float _558 = clamp((lerp(1.0f, lerp(lerp(_483, _500, clamp(_39_m56 - 1.0f, 0.0f, 1.0f)), _501, clamp(_39_m56 - 2.0f, 0.0f, 1.0f)), _548) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
    float _581 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _558);
    float3 _586 = lerp(clamp((_481.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _581).xxx + (_21_m0[_11]._m9.xyz * _581));
    float3 _609 = normalize(((_7.xyz * _493.x) + ((cross(_6, float4(_7.xyz, _421).xyz) * _421) * _493.y)) + (_6 * (sqrt(clamp(1.0f - dot(_492, _492), 0.0f, 1.0f)) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float3 _612 = -_447;
    float4 _633 = _36.SampleBias(_37, _397 + ((mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_612, _609, _39_m59)) * _39_m60).xy * _525), _18_m16);
    float _643 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _656 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _656.y = -_656.y;
    float _682 = 0.07999999821186065673828125f * _39_m1;
    float3 _683 = _586 * _540;
    float3 _684 = _586 - _683;
    float3 _688 = (_682 - (_682 * _540)).xxx + _683;
    float _689 = dot(_609, _447);
    float4 _692 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _530) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _693 = _692.x;
    float2 _703 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_693 * _693, exp2((-9.27999973297119140625f) * max(0.0f, _689))) * _693) + _692.y)) + _692.zw;
    uint2 _743;
    float _744;
    if (_18_m24.y == 1.0f)
    {
        float4 _720 = mul(_18_m135, _414);
        float4 _723 = _720;
        _723.y = -_720.y;
        float4 _726 = _723 * (1.0f / _720.w);
        _743 = uint2(clamp(((_726.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _744 = 1.0f / ((_18_m2.z * _726.z) + _18_m2.w);
    }
    else
    {
        _743 = uint2(gl_FragCoord.xy);
        _744 = abs(mul(_16_m0, _414).z);
    }
    float3 _746 = _410 + (_609 * 0.25f);
    float3 _756 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _765 = _746 - (_18_m105.xyz + (_756 * (-_18_m107.w)));
    float _779 = max(clamp((max(abs(_765.x), abs(_765.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_765.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1081;
    float4 _1082;
    float4 _1083;
    float _1084;
    float _1085;
    if ((_18_m105.w != 0.0f) && (_779 < 1.0f))
    {
        float3 _792 = _746 - (_18_m105.xyz + (_756 * (-_18_m107.y)));
        float _806 = max(clamp((max(abs(_792.x), abs(_792.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_792.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _882;
        float4 _883;
        float4 _884;
        float4 _885;
        if (_806 < 1.0f)
        {
            float3 _815 = ((_746 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _817 = _815 - floor(_815);
            float4 _821 = _57.SampleLevel(_24, _817, 0.0f);
            float _822 = 1.0f - _806;
            float _826 = _18_m106.y * 0.5f;
            float _831 = _817.x;
            float _832 = clamp(_817.y, _826, 1.0f - _826) * 0.3333333432674407958984375f;
            float _833 = _817.z;
            float4 _836 = _58.SampleLevel(_23, float3(_831, _832, _833), 0.0f);
            float _852 = _821.x;
            float _862 = _821.y;
            float _872 = _821.z;
            _882 = _779 + (_836.w * _822);
            _883 = float4(((_58.SampleLevel(_23, float3(_831, _832 + 0.666666686534881591796875f, _833), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _872, _872) * _822;
            _884 = float4(((_58.SampleLevel(_23, float3(_831, _832 + 0.3333333432674407958984375f, _833), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _862, _862) * _822;
            _885 = float4(((_836.xyz * 4.0f) - 2.0f.xxx) * _852, _852) * _822;
        }
        else
        {
            _882 = _779;
            _883 = 0.0f.xxxx;
            _884 = 0.0f.xxxx;
            _885 = 0.0f.xxxx;
        }
        float3 _891 = _746 - (_18_m105.xyz + (_756 * (-_18_m107.z)));
        float _905 = max(clamp((max(abs(_891.x), abs(_891.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_891.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _985;
        float4 _986;
        float4 _987;
        float4 _988;
        if (_905 < 1.0f)
        {
            float3 _914 = ((_746 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _916 = _914 - floor(_914);
            float4 _920 = _59.SampleLevel(_24, _916, 0.0f);
            float _922 = _806 * (1.0f - _905);
            float _926 = _18_m106.y * 0.5f;
            float _931 = _916.x;
            float _932 = clamp(_916.y, _926, 1.0f - _926) * 0.3333333432674407958984375f;
            float _933 = _916.z;
            float4 _936 = _60.SampleLevel(_23, float3(_931, _932, _933), 0.0f);
            float _952 = _920.x;
            float _963 = _920.y;
            float _974 = _920.z;
            _985 = _882 + (_936.w * _922);
            _986 = _883 + (float4(((_60.SampleLevel(_23, float3(_931, _932 + 0.666666686534881591796875f, _933), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _974, _974) * _922);
            _987 = _884 + (float4(((_60.SampleLevel(_23, float3(_931, _932 + 0.3333333432674407958984375f, _933), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _963, _963) * _922);
            _988 = _885 + (float4(((_936.xyz * 4.0f) - 2.0f.xxx) * _952, _952) * _922);
        }
        else
        {
            _985 = _882;
            _986 = _883;
            _987 = _884;
            _988 = _885;
        }
        float4 _1071;
        float4 _1072;
        float4 _1073;
        float _1074;
        if (_905 > 0.0f)
        {
            float3 _997 = ((_746 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1000 = _18_m106.xyz * 0.5f;
            float3 _1002 = clamp(_997 - floor(_997), _1000, 1.0f.xxx - _1000);
            float4 _1006 = _61.SampleLevel(_24, _1002, 0.0f);
            float _1008 = _905 * (1.0f - _779);
            float _1012 = _18_m106.y * 0.5f;
            float _1017 = _1002.x;
            float _1018 = clamp(_1002.y, _1012, 1.0f - _1012) * 0.3333333432674407958984375f;
            float _1019 = _1002.z;
            float4 _1022 = _62.SampleLevel(_23, float3(_1017, _1018, _1019), 0.0f);
            float _1038 = _1006.x;
            float _1049 = _1006.y;
            float _1060 = _1006.z;
            _1071 = _986 + (float4(((_62.SampleLevel(_23, float3(_1017, _1018 + 0.666666686534881591796875f, _1019), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1060, _1060) * _1008);
            _1072 = _987 + (float4(((_62.SampleLevel(_23, float3(_1017, _1018 + 0.3333333432674407958984375f, _1019), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1049, _1049) * _1008);
            _1073 = _988 + (float4(((_1022.xyz * 4.0f) - 2.0f.xxx) * _1038, _1038) * _1008);
            _1074 = _985 + (_1022.w * _1008);
        }
        else
        {
            _1071 = _986;
            _1072 = _987;
            _1073 = _988;
            _1074 = _985;
        }
        float _1077 = clamp((_1074 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1081 = _1071;
        _1082 = _1072;
        _1083 = _1073;
        _1084 = _1077 - _779;
        _1085 = (_1077 + _779) * 0.5f;
    }
    else
    {
        _1081 = 0.0f.xxxx;
        _1082 = 0.0f.xxxx;
        _1083 = 0.0f.xxxx;
        _1084 = 0.0f;
        _1085 = 1.0f;
    }
    float4 _1105 = _1083 + float4(_18_m108.x * _1085, (_18_m108.y * _1085) + ((_18_m108.w * _1084) * 0.5f), _18_m108.z * _1085, (_18_m108.w * _1085) + ((_18_m108.y * _1084) * 0.375f));
    float4 _1125 = _1082 + float4(_18_m109.x * _1085, (_18_m109.y * _1085) + ((_18_m109.w * _1084) * 0.5f), _18_m109.z * _1085, (_18_m109.w * _1085) + ((_18_m109.y * _1084) * 0.375f));
    float4 _1145 = _1081 + float4(_18_m110.x * _1085, (_18_m110.y * _1085) + ((_18_m110.w * _1084) * 0.5f), _18_m110.z * _1085, (_18_m110.w * _1085) + ((_18_m110.y * _1084) * 0.375f));
    float _1150 = max(0.0f, dot(_1105.xyz, _609) + _1105.w);
    float _1155 = max(0.0f, dot(_1125.xyz, _609) + _1125.w);
    float _1160 = max(0.0f, dot(_1145.xyz, _609) + _1145.w);
    float3 _1170 = reflect(_612, _609);
    float _1178 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_530, 0.001000000047497451305389404296875f))));
    float2 _1179 = float2(_743);
    float2 _1183 = floor(_1179 * _42_m0.w);
    float _1200 = floor(_744 - _42_m2.y);
    float _1204 = clamp(_1200, 0.0f, _42_m1.x - 1.0f);
    uint _1214 = (_1200 <= _1204) ? (_31.Load(uint(_18_m21.z + int(_1183.x + (_1183.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1204)) * 4 + 0)) : 0u;
    float _1217 = dot(float4(_1150, _1155, _1160, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1219;
    float _1222;
    uint _1224;
    _1219 = 0.0f.xxx;
    _1222 = 1.0f;
    _1224 = _1214;
    uint _1225;
    float3 _1220;
    float _1223;
    bool _1227;
    [loop]
    for (;;)
    {
        _1227 = _1222 > 0.00999999977648258209228515625f;
        if ((_1224 != 0u) && _1227)
        {
            uint _1231 = firstbitlow(_1224);
            _1225 = _1224 ^ (1u << (_1231 & 31u));
            float3 _1251 = float3(dot(_42_m4[_1231]._m2, _414), dot(_42_m4[_1231]._m3, _414), dot(_42_m4[_1231]._m4, _414));
            float3 _1252 = abs(_1251);
            if (all(bool3(_1252.x <= _42_m4[_1231]._m1.xyz.x, _1252.y <= _42_m4[_1231]._m1.xyz.y, _1252.z <= _42_m4[_1231]._m1.xyz.z)))
            {
                float3 _1261 = _42_m4[_1231]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1263 = _1252 * 0.100000001490116119384765625f;
                float3 _1264 = _1263 * _1263;
                float3 _1267 = (_42_m4[_1231]._m1.xyz - _1252) * _42_m4[_1231]._m5.xyz;
                float3 _1315;
                [branch]
                if (_42_m4[_1231]._m6.x == 1.0f)
                {
                    float3 _1300 = float3(dot(_42_m4[_1231]._m2.xyz, _1170), dot(_42_m4[_1231]._m3.xyz, _1170), dot(_42_m4[_1231]._m4.xyz, _1170));
                    float3 _1302 = (_42_m4[_1231]._m1.xyz - _1251) / _1300;
                    float3 _1305 = ((-_42_m4[_1231]._m1.xyz) - _1251) / _1300;
                    bool3 _1306 = bool3(_1300.x > 0.0f.xxx.x, _1300.y > 0.0f.xxx.y, _1300.z > 0.0f.xxx.z);
                    float3 _1307 = float3(_1306.x ? _1302.x : _1305.x, _1306.y ? _1302.y : _1305.y, _1306.z ? _1302.z : _1305.z);
                    _1315 = _1251 + (_1300 * min(min(_1307.x, _1307.y), _1307.z));
                }
                else
                {
                    _1315 = _1170;
                }
                float3 _1316 = normalize(_1315);
                float3 _1319 = float3(int3(sign(_1316)));
                float3 _1322 = _1316 / dot(_1316, _1319).xxx;
                float3 _1336;
                if (_1322.z < 0.0f)
                {
                    float3 _1327 = abs(_1322);
                    float2 _1334 = _1319.xy * float2(1.0f - _1327.y, 1.0f - _1327.x);
                    _1336 = float3(_1334.x, _1334.y, _1322.z);
                }
                else
                {
                    _1336 = _1322;
                }
                float _1361 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1231]._m0, float4(_609, 1.0f))));
                float _1374 = clamp((min(_1267.x, min(_1267.y, _1267.z)) * _42_m4[_1231]._m6.y) + ((((((_1261 * _1261).x - ((_1264.x + _1264.y) + _1264.z)) * _42_m4[_1231]._m5.x) * _42_m4[_1231]._m5.x) * (1.0f - _42_m4[_1231]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1231]._m6.w;
                _1220 = _1219 + ((((_29.SampleLevel(_25, float3((((_1336.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1231]._m1.w), _1178).xyz * _42_m4[_1231]._m5.w) * ((((((clamp(abs(_1217 / _1361), 0.0f, 1.0f) * 2.0f) + _1217) / (2.0f + _1361)) - 1.0f) * _18_m23.w) + 1.0f)) * _1374) * _1222);
                _1223 = _1222 * (1.0f - _1374);
            }
            else
            {
                _1220 = _1219;
                _1223 = _1222;
            }
            _1219 = _1220;
            _1222 = _1223;
            _1224 = _1225;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1443;
    if (_1227)
    {
        float3 _1382 = normalize(_1170);
        float3 _1385 = float3(int3(sign(_1382)));
        float3 _1388 = _1382 / dot(_1382, _1385).xxx;
        float3 _1402;
        if (_1388.z < 0.0f)
        {
            float3 _1393 = abs(_1388);
            float2 _1400 = _1385.xy * float2(1.0f - _1393.y, 1.0f - _1393.x);
            _1402 = float3(_1400.x, _1400.y, _1388.z);
        }
        else
        {
            _1402 = _1388;
        }
        float _1429 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_609, 1.0f))));
        _1443 = _1219 + ((_29.SampleLevel(_25, float3((((_1402.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1178).xyz * ((((((clamp(abs(_1217 / _1429), 0.0f, 1.0f) * 2.0f) + _1217) / (2.0f + _1429)) - 1.0f) * _18_m23.w) + 1.0f)) * _1222);
    }
    else
    {
        _1443 = _1219;
    }
    float2 _1964;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _1964 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1465 = int(_48_m7.x);
        bool3 _1467 = (_1465 == 2).xxx;
        float3 _1475 = _410 - float3(_1467.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1467.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1467.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1486 = max(clamp((_48_m6.w - dot(_1475, _1475)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1703;
        bool _1704;
        if (_1486 > 0.0f)
        {
            float _1701;
            bool _1702;
            if (_1465 > 0)
            {
                float3 _1493 = _410 - _48_m1[0].xyz;
                float3 _1497 = _410 - _48_m1[1].xyz;
                float3 _1501 = _410 - _48_m1[2].xyz;
                float3 _1505 = _410 - _48_m1[3].xyz;
                float4 _1510 = float4(dot(_1493, _1493), dot(_1497, _1497), dot(_1501, _1501), dot(_1505, _1505));
                float4 _1519 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1521 = float4(bool4(_1510.x < _1519.x, _1510.y < _1519.y, _1510.z < _1519.z, _1510.w < _1519.w));
                float3 _1525 = clamp(_1521.yzw - _1521.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1529 = clamp(4.0f - dot(float4(_1521.x, _1525.x, _1525.y, _1525.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1531 = clamp(_1529 + 1.0f, 0.0f, 3.0f);
                uint _1532 = uint(_1529);
                uint _1540 = uint(_1531);
                float _1546 = dot(_1510, _348[_1540]) / _48_m1[_1540].w;
                float _1563;
                if (((_1531 > _1529) && (_1546 >= 0.0f)) && (_1546 <= 1.0f))
                {
                    _1563 = _1529 + step(frac(52.98291778564453125f * frac(dot(_1179 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1510, _348[_1532]) / _48_m1[_1532].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1563 = _1529;
                }
                float _1564 = clamp(_1563, 0.0f, 4.0f);
                float4 _1568 = mul(_48_m0[uint(_1564)], _414);
                float _1571 = _1568.z;
                float4 _1572 = float4(_1568.xy, _1571, _1564);
                float3 _1573 = _1572.xyz;
                bool3 _1574 = bool3(_1573.x <= 0.0f.xxx.x, _1573.y <= 0.0f.xxx.y, _1573.z <= 0.0f.xxx.z);
                bool3 _1575 = bool3(_1573.x >= 1.0f.xxx.x, _1573.y >= 1.0f.xxx.y, _1573.z >= 1.0f.xxx.z);
                bool _1581 = any(bool3(_1574.x || _1575.x, _1574.y || _1575.y, _1574.z || _1575.z)) || ((asuint(_1571) & 2147483647u) > 2139095040u);
                int _1582 = int(_1564);
                float2 _1599 = float4(_48_m3[_1582].xy + (_1572.xy * _48_m3[_1582].zw), _1571, _1564).xy * _48_m4.zw;
                float2 _1601 = floor(_1599 + 0.5f.xx);
                float2 _1602 = _1599 - _1601;
                float _1603 = _1602.x;
                float _1604 = _1603 + 0.5f;
                float _1606 = (_1604 * _1604) * 0.5f;
                float _1609 = min(_1603, 0.0f);
                float _1613 = max(_1603, 0.0f);
                float4 _1617 = float4(_1606 - _1603, (1.0f - _1603) - (_1609 * _1609), (_1603 + 1.0f) - (_1613 * _1613), _1606) * 0.44444000720977783203125f;
                float _1618 = _1602.y;
                float _1619 = _1618 + 0.5f;
                float _1621 = (_1619 * _1619) * 0.5f;
                float _1624 = min(_1618, 0.0f);
                float _1628 = max(_1618, 0.0f);
                float4 _1632 = float4(_1621 - _1618, (1.0f - _1618) - (_1624 * _1624), (_1618 + 1.0f) - (_1628 * _1628), _1621) * 0.44444000720977783203125f;
                float2 _1634 = _1617.yw;
                float2 _1635 = _1617.xz + _1634;
                float2 _1637 = _1632.yw;
                float2 _1638 = _1632.xz + _1637;
                float2 _1644 = ((_1634 / _1635) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1646 = ((_1637 / _1638) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1648 = _1601 * _48_m4.xy;
                float _1649 = _1644.x;
                float _1650 = _1646.x;
                float _1653 = _1644.y;
                float _1656 = _1646.y;
                float _1661 = _1635.x;
                float _1662 = _1638.x;
                float _1664 = _1635.y;
                float _1666 = _1638.y;
                _1701 = _1581 ? 1.0f : (((((_1661 * _1662) * _49.SampleCmpLevelZero(_26, float3(_1648 + float2(_1649, _1650), _368).xy, _1571)) + ((_1664 * _1662) * _49.SampleCmpLevelZero(_26, float3(_1648 + float2(_1653, _1650), _368).xy, _1571))) + ((_1661 * _1666) * _49.SampleCmpLevelZero(_26, float3(_1648 + float2(_1649, _1656), _368).xy, _1571))) + ((_1664 * _1666) * _49.SampleCmpLevelZero(_26, float3(_1648 + float2(_1653, _1656), _368).xy, _1571)));
                _1702 = _1581;
            }
            else
            {
                _1701 = 1.0f;
                _1702 = false;
            }
            _1703 = _1701;
            _1704 = _1702;
        }
        else
        {
            _1703 = 1.0f;
            _1704 = false;
        }
        float _1904;
        float _1905;
        if ((_1486 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1715 = 1.0f - clamp(dot(_609, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1732 = float4((_410 - (_46_m0.xyz * (_1715 * _48_m24.x))) + (_609 * (_1715 * _48_m24.y)), 1.0f);
            float4 _1733 = mul(_48_m23, _1732);
            float2 _1734 = _1733.xy;
            float _1902;
            if (all(bool2(_1734.x > 0.0f.xx.x, _1734.y > 0.0f.xx.y)) && all(bool2(_1734.x < 1.0f.xx.x, _1734.y < 1.0f.xx.y)))
            {
                uint _1753 = clamp(uint((floor(_1733.y * _48_m25.z) + _1733.x) * _48_m25.y), 0u, 127u);
                uint _1757 = asuint(_48_m27[_1753].x);
                float2 _1758 = spvUnpackHalf2x16(_1757);
                float _1759 = _1758.x;
                float _1901;
                if (_1759 >= 0.0f)
                {
                    float4x4 _1768 = _48_m22;
                    _1768[0].w = _48_m27[_1753].y;
                    _1768[1].w = _48_m27[_1753].z;
                    _1768[2].w = _48_m27[_1753].w;
                    float4 _1775 = mul(_1768, _1732);
                    float3 _1776 = _1775.xyz;
                    float _1900;
                    if (all(bool3(_1776.x > 0.0f.xxx.x, _1776.y > 0.0f.xxx.y, _1776.z > 0.0f.xxx.z)) && all(bool3(_1776.x < 1.0f.xxx.x, _1776.y < 1.0f.xxx.y, _1776.z < 1.0f.xxx.z)))
                    {
                        float _1793 = _1775.z;
                        float2 _1799 = float4((_1775.xy * _48_m24.zw) + float2(_1759, spvUnpackHalf2x16(_1757 >> 16u).x), _1793, 1.0f).xy * _48_m26.zw;
                        float2 _1801 = floor(_1799 + 0.5f.xx);
                        float2 _1802 = _1799 - _1801;
                        float _1803 = _1802.x;
                        float _1804 = _1803 + 0.5f;
                        float _1806 = (_1804 * _1804) * 0.5f;
                        float _1809 = min(_1803, 0.0f);
                        float _1813 = max(_1803, 0.0f);
                        float4 _1817 = float4(_1806 - _1803, (1.0f - _1803) - (_1809 * _1809), (_1803 + 1.0f) - (_1813 * _1813), _1806) * 0.44444000720977783203125f;
                        float _1818 = _1802.y;
                        float _1819 = _1818 + 0.5f;
                        float _1821 = (_1819 * _1819) * 0.5f;
                        float _1824 = min(_1818, 0.0f);
                        float _1828 = max(_1818, 0.0f);
                        float4 _1832 = float4(_1821 - _1818, (1.0f - _1818) - (_1824 * _1824), (_1818 + 1.0f) - (_1828 * _1828), _1821) * 0.44444000720977783203125f;
                        float2 _1835 = _1817.xz + _1817.yw;
                        float2 _1838 = _1832.xz + _1832.yw;
                        float2 _1844 = ((_1817.yw / _1835) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1846 = ((_1832.yw / _1838) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1848 = _1801 * _48_m26.xy;
                        float _1849 = _1844.x;
                        float _1850 = _1846.x;
                        float2 _1852 = _1848 + float2(_1849, _1850);
                        float _1853 = _1844.y;
                        float2 _1855 = _1848 + float2(_1853, _1850);
                        float _1856 = _1846.y;
                        float2 _1858 = _1848 + float2(_1849, _1856);
                        float2 _1860 = _1848 + float2(_1853, _1856);
                        float _1861 = _1835.x;
                        float _1862 = _1838.x;
                        float _1864 = _1835.y;
                        float _1866 = _1838.y;
                        _1900 = ((((_1861 * _1862) * _52.SampleCmpLevelZero(_26, float3(_1852, _368).xy, _1793)) + ((_1864 * _1862) * _52.SampleCmpLevelZero(_26, float3(_1855, _368).xy, _1793))) + ((_1861 * _1866) * _52.SampleCmpLevelZero(_26, float3(_1858, _368).xy, _1793))) + ((_1864 * _1866) * _52.SampleCmpLevelZero(_26, float3(_1860, _368).xy, _1793));
                    }
                    else
                    {
                        _1900 = 1.0f;
                    }
                    _1901 = _1900;
                }
                else
                {
                    _1901 = 1.0f;
                }
                _1902 = _1901;
            }
            else
            {
                _1902 = 1.0f;
            }
            _1904 = _1704 ? _1902 : _1703;
            _1905 = _1902;
        }
        else
        {
            _1904 = _1703;
            _1905 = 1.0f;
        }
        float _1908 = lerp(lerp(_1905, _1904, _1486), min(_1905, _1904), _48_m8.x);
        float _1959;
        if (_1908 > 0.001000000047497451305389404296875f)
        {
            float3 _1915 = _410 - _18_m65.xyz;
            float2 _1925 = (_1915 + (_18_m68.xyz * _1915.y)).xz * _18_m66.z;
            float2 _1934 = _18_m67.xy * _18_m75.w;
            _1959 = _1908 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1925 + _1934, 0.0f), _51.SampleLevel(_24, (_1925 * _18_m67.w) + _1934, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1915.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1959 = _1908;
        }
        _1964 = float2(lerp(_1959, _48_m7.z, _48_m7.w), _1959);
        break;
    } while(false);
    float _1969 = lerp(1.0f, min(1.0f, _1964.x), _48_m6.x);
    float4 _2104;
    if (_1969 > 0.001000000047497451305389404296875f)
    {
        float3 _1979 = -_46_m0.xyz;
        float _1984 = dot(_1979, _1170);
        float3 _1986 = _1170 - (_1979 * _1984);
        bool3 _1988 = (_1984 < _46_m4.z).xxx;
        float3 _1996 = normalize((_1979 * _46_m4.z) + ((_1986 * rsqrt(max(6.103515625e-05f, dot(_1986, _1986)))) * _46_m4.y));
        float3 _1997 = float3(_1988.x ? _1996.x : _1170.x, _1988.y ? _1996.y : _1170.y, _1988.z ? _1996.z : _1170.z);
        float3 _2001 = _1997 + _447;
        float3 _2005 = _2001 * rsqrt(max(6.103515625e-05f, dot(_2001, _2001)));
        float _2006 = clamp(dot(_1997, _609), 0.0f, 1.0f);
        float _2008 = clamp(dot(_609, _2005), 0.0f, 1.0f);
        float _2011 = clamp(_689, 0.0f, 1.0f);
        float _2012 = _530 * _530;
        float _2013 = _2012 * _2012;
        float _2034 = (((_2008 * _2013) - _2008) * _2008) + 1.0f;
        float _2037 = 1.0f - clamp(dot(_447, _2005), 0.0f, 1.0f);
        float _2038 = _2037 * _2037;
        float _2040 = (_2037 * _2038) * _2038;
        float _2064 = 1.0f - _530;
        float _2071 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2064 * (1.04997003078460693359375f + (_2064 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2064))))));
        float _2072 = 1.0f - _2071;
        float3 _2075 = _688 + ((1.0f.xxx - _688) * 0.0476190485060214996337890625f);
        float3 _2091 = (((clamp((min(((_688 * (1.0f - _2040)) + _2040.xxx) * ((_2013 / (_2034 * _2034)) * (0.5f / (((_2006 * sqrt(((((-_2011) * _2013) + _2011) * _2011) + _2013)) + (_2011 * sqrt(((((-_2006) * _2013) + _2006) * _2006) + _2013))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2075 * (((_56.SampleLevel(_23, (float2(_2011, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_2006, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2071) / _2072)) * _2075) / (1.0f.xxx - (_2075 * _2072)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2006) + ((_684 * 1.0f) * _2006)) * _46_m1.xyz;
        float3 _2102 = lerp(_2091, _2091 * _53.SampleBias(_23, float2(_1969, 0.5f), _18_m16).xyz, (1.0f - _1969).xxx) * 1.0f;
        _2104 = float4(_2102.x, _2102.y, _2102.z, 0.0f.xxxx.w);
    }
    else
    {
        _2104 = 0.0f.xxxx;
    }
    float2 _2106 = floor(_1179 * 0.03125f);
    int _2114 = int((_2106.x + (_2106.y * _44_m5)) * 8.0f);
    float _2121 = floor(_744 - (_18_m3.y * _44_m11));
    float _2125 = clamp(_2121, 0.0f, _44_m7 - 1.0f);
    int _2127 = int(_2125 * 8.0f);
    float3 _2129;
    float _2132;
    _2129 = 0.0f.xxx;
    _2132 = 1.0f;
    float3 _2130;
    float _2133;
    [loop]
    for (int _2134 = 0; _2134 <= 7; _2129 = _2130, _2132 = _2133, _2134++)
    {
        uint _2152 = (_2121 <= _2125) ? (_31.Load(uint(_2114 + _2134) * 4 + 0) & _31.Load(uint((_18_m21.y + _2127) + _2134) * 4 + 0)) : 0u;
        uint _2153 = uint(_2134);
        float3 _2157;
        _2133 = _2132;
        _2157 = 0.0f.xxx;
        uint _2160;
        float _2155;
        float3 _2158;
        [loop]
        for (uint _2159 = _2152; _2159 != 0u; _2133 = _2155, _2157 = _2158, _2159 = _2160)
        {
            uint _2164 = firstbitlow(_2159);
            _2160 = _2159 ^ (1u << (_2164 & 31u));
            int _2170 = int((32u * _2153) + _2164) * 8;
            int _2173 = _2170 + 1;
            int _2176 = _2170 + 2;
            int _2179 = _2170 + 3;
            int _2182 = _2170 + 5;
            int _2185 = _2170 + 6;
            int _2188 = _2170 + 7;
            uint _2192 = uint(_46_m6[_2182].w);
            float _2267;
            if ((_2192 & 1u) == 1u)
            {
                uint _2198 = asuint(_46_m6[_2182].x);
                uint _2205 = asuint(_46_m6[_2182].y);
                uint _2212 = asuint(_46_m6[_2182].z);
                uint _2219 = asuint(_46_m6[_2185].x);
                uint _2226 = asuint(_46_m6[_2185].y);
                uint _2233 = asuint(_46_m6[_2185].z);
                float3 _2252 = abs(mul(float4(_410 - _46_m6[_2173].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2198).x, spvUnpackHalf2x16(_2212).x, spvUnpackHalf2x16(_2226).x, 0.0f), float4(spvUnpackHalf2x16(_2198 >> 16u).x, spvUnpackHalf2x16(_2212 >> 16u).x, spvUnpackHalf2x16(_2226 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2205).x, spvUnpackHalf2x16(_2219).x, spvUnpackHalf2x16(_2233).x, 0.0f), float4(spvUnpackHalf2x16(_2205 >> 16u).x, spvUnpackHalf2x16(_2219 >> 16u).x, spvUnpackHalf2x16(_2233 >> 16u).x, 0.0f))).xyz);
                float _2259 = _46_m6[_2188].x * 0.5f;
                float _2265 = 1.0f - clamp((max(max(_2252.x, _2252.y), _2252.z) - (_2259 + 0.5f)) / (0.5f - _2259), 0.0f, 1.0f);
                _2267 = _2265 * _2265;
            }
            else
            {
                _2267 = 1.0f;
            }
            bool _2271 = _46_m6[_2179].z > 0.5f;
            if ((false || (_2267 < 0.001000000047497451305389404296875f)) || _2271)
            {
                _2155 = _2133;
                _2158 = _2157;
                continue;
            }
            float _3382;
            float3 _3383;
            if (_46_m6[_2170].w < 1.5f)
            {
                float3 _2759 = float3(0.100000001490116119384765625f, _530, 1.0f);
                float _2768 = (0.5f + (0.5f * _46_m6[_2176].y)) - abs(_46_m6[_2176].x);
                float _2769 = _46_m6[_2176].y - _2768;
                float _2776 = abs(max((1.0f - abs(_2768)) - abs(_2769), 0.00048828125f));
                float3 _2780 = normalize(float3(_2768, _2769, (_46_m6[_2176].x >= 0.0f) ? _2776 : (-_2776)));
                float3 _2781 = _46_m6[_2173].xyz - _410;
                float _2782 = dot(_2781, _2781);
                float _2783 = rsqrt(_2782);
                float3 _2784 = _2781 * _2783;
                float _2788 = clamp(_46_m6[_2188].y * _2783, 0.0f, 1.0f);
                int _2793 = int(_46_m6[_2188].w);
                float3 _2794 = _2780 * _46_m6[_2176].z;
                float3 _2795 = _2794 * 0.5f;
                float3 _2796 = _2781 - _2795;
                float3 _2797 = _2781 + _2795;
                bool _2800 = (uint(_46_m6[_2170].w) & 1u) == 0u;
                bool _2803 = _2800 || ((_2192 & 2u) != 0u);
                bool _2806 = (!_2800) && (_46_m6[_2176].z > 0.0f);
                float _2825;
                float _2826;
                if (_2806)
                {
                    float _2810 = length(_2796);
                    float _2811 = length(_2797);
                    _2825 = clamp(0.5f * ((dot(_609, _2796) / _2810) + (dot(_609, _2797) / _2811)), 0.0f, 1.0f);
                    _2826 = 1.0f / ((((_2810 * _2811) + dot(_2796, _2797)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2825 = clamp(dot(_609, _2784), 0.0f, 1.0f);
                    _2826 = 1.0f;
                }
                float _2848;
                if (_46_m6[_2185].w < 0.0f)
                {
                    float _2842 = _2782 * (_46_m6[_2173].w * _46_m6[_2173].w);
                    float _2845 = clamp(1.0f - (_2842 * _2842), 0.0f, 1.0f);
                    _2848 = lerp(1.0f / (_2782 + 1.0f), _2826, float(_2806)) * (_2845 * _2845);
                }
                else
                {
                    float3 _2831 = _2781 * _46_m6[_2173].w;
                    _2848 = _2826 * pow(1.0f - clamp(dot(_2831, _2831), 0.0f, 1.0f), _46_m6[_2185].w);
                }
                float _2854 = clamp((dot(_2784, -_2780) - _46_m6[_2176].z) * _46_m6[_2176].w, 0.0f, 1.0f);
                float _2858 = _2848 * lerp(1.0f, _2854 * _2854, float(_2800));
                float _2958;
                if ((!_2806) && (_2793 >= 0))
                {
                    uint _2864 = uint(_2793);
                    float2 _2951;
                    [branch]
                    if (_2800)
                    {
                        float4 _2941 = mul(_66_m1[_2864], _414);
                        _2951 = _66_m0[_2864].xy + (clamp(_2941.xy / _2941.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2864].zw);
                    }
                    else
                    {
                        float3 _2878 = mul(float4(-_2781, 0.0f), _66_m1[_2864]).xyz;
                        float3 _375 = _2878;
                        float3 _374 = _2878;
                        float3 _373 = abs(_2878);
                        uint _2887 = uint(int(_373.y > _373.x));
                        uint _2893 = (_373.z > _373[_2887]) ? 2u : _2887;
                        uint _2899 = (_2893 * 2u) + uint(_374[_2893] < 0.0f);
                        float _2903 = abs(_375[_2899 / 2u]);
                        float _2923 = 0.5f - (0.000244140625f / _66_m0[_2864].w);
                        _2951 = _66_m0[_2864].xy + (clamp(float2((float(_2899) + ((((_375[uint(_349[_2899].x)] * _350[_2899].x) / _2903) * _2923) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_349[_2899].y)] * _350[_2899].y) / _2903) * _2923)), 0.0f.xx, 1.0f.xx) * _66_m0[_2864].zw);
                    }
                    _2958 = _2858 * _64.SampleLevel(_23, _2951, 0.0f).x;
                }
                else
                {
                    _2958 = _2858;
                }
                bool _2959 = _2958 > 0.0f;
                float _3247;
                if (_2959)
                {
                    int _3011;
                    if (_2803)
                    {
                        _3011 = int(_46_m6[_2179].x);
                    }
                    else
                    {
                        uint _2966 = asuint(_46_m6[_2176].w);
                        uint _2968 = asuint(_46_m6[_2179].x);
                        float3 _2969 = _410 - _46_m6[_2173].xyz;
                        float3 _2970 = abs(_2969);
                        float _2971 = _2970.x;
                        float _2972 = _2970.y;
                        float _2974 = _2970.z;
                        int _3006;
                        if ((_2971 > _2972) && (_2971 > _2974))
                        {
                            _3006 = int((_2969.x > 0.0f) ? (_2966 >> 24u) : ((_2966 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2998;
                            if (_2972 > _2974)
                            {
                                _2998 = int((_2969.y > 0.0f) ? ((_2966 >> 8u) & 255u) : (_2966 & 255u));
                            }
                            else
                            {
                                _2998 = int((_2969.z > 0.0f) ? ((_2968 >> 8u) & 255u) : (_2968 & 255u));
                            }
                            _3006 = _2998;
                        }
                        _3011 = (_3006 < 80) ? _3006 : (-1);
                    }
                    float4 _3028 = mul(_48_m10[_3011], float4((_410 - ((-_2784) * _48_m11[_3011].x)) + (_609 * (_48_m11[_3011].y * 5.0f)), 1.0f));
                    float _3029 = _3028.w;
                    float3 _3032 = _3028.xyz / _3029.xxx;
                    float2 _3033 = _3032.xy;
                    float3 _3041 = _3032.xyz;
                    bool3 _3042 = bool3(_3041.x <= 0.0f.xxx.x, _3041.y <= 0.0f.xxx.y, _3041.z <= 0.0f.xxx.z);
                    bool3 _3043 = bool3(_3041.x >= 1.0f.xxx.x, _3041.y >= 1.0f.xxx.y, _3041.z >= 1.0f.xxx.z);
                    float _3046 = _3032.z;
                    float2 _3057 = ((_3033 * (_48_m12[_3011].zw - _48_m12[_3011].xy)) + _48_m12[_3011].xy).xy * _48_m13.zw;
                    float2 _3059 = floor(_3057 + 0.5f.xx);
                    float2 _3060 = _3057 - _3059;
                    float _3061 = _3060.x;
                    float _3062 = _3061 + 0.5f;
                    float _3063 = _3062 * _3062;
                    float _3066 = 1.0f - _3061;
                    float _3067 = min(_3061, 0.0f);
                    float _3070 = _3061 + 1.0f;
                    float _3071 = max(_3061, 0.0f);
                    float _3082 = _3060.y;
                    float _3083 = _3082 + 0.5f;
                    float _3084 = _3083 * _3083;
                    float _3087 = 1.0f - _3082;
                    float _3088 = min(_3082, 0.0f);
                    float _3091 = _3082 + 1.0f;
                    float _3092 = max(_3082, 0.0f);
                    float3 _3104 = float3(0.1599999964237213134765625f * _3066, 0.1599999964237213134765625f * ((_3070 - (_3071 * _3071)) + 1.0f), _3063 * 0.07999999821186065673828125f);
                    float3 _3105 = float3(0.1599999964237213134765625f * ((_3063 * 0.5f) - _3061), 0.1599999964237213134765625f * ((_3066 - (_3067 * _3067)) + 1.0f), 0.1599999964237213134765625f * _3070) + _3104;
                    float3 _3107 = float3(0.1599999964237213134765625f * _3087, 0.1599999964237213134765625f * ((_3091 - (_3092 * _3092)) + 1.0f), _3084 * 0.07999999821186065673828125f);
                    float3 _3108 = float3(0.1599999964237213134765625f * ((_3084 * 0.5f) - _3082), 0.1599999964237213134765625f * ((_3087 - (_3088 * _3088)) + 1.0f), 0.1599999964237213134765625f * _3091) + _3107;
                    float3 _3114 = ((_3104 / _3105) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3116 = ((_3107 / _3108) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3118 = _3059 * _48_m13.xy;
                    float _3119 = _3114.x;
                    float _3120 = _3116.x;
                    float _3123 = _3114.y;
                    float _3126 = _3114.z;
                    float _3129 = _3116.y;
                    float _3136 = _3116.z;
                    float _3143 = _3105.x;
                    float _3144 = _3108.x;
                    float _3146 = _3105.y;
                    float _3148 = _3105.z;
                    float _3150 = _3108.y;
                    float _3154 = _3108.z;
                    float _3212 = (((((((_3143 * _3144) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3119, _3120), _368).xy, _3046)) + ((_3146 * _3144) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3123, _3120), _368).xy, _3046))) + ((_3148 * _3144) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3126, _3120), _368).xy, _3046))) + ((_3143 * _3150) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3119, _3129), _368).xy, _3046))) + ((_3146 * _3150) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3123, _3129), _368).xy, _3046))) + ((_3148 * _3150) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3126, _3129), _368).xy, _3046))) + ((_3143 * _3154) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3119, _3136), _368).xy, _3046));
                    float2 _3233 = min(_3033, 1.0f.xx - _3033);
                    _3247 = (_3011 >= 0) ? lerp(1.0f, (any(bool3(_3042.x || _3043.x, _3042.y || _3043.y, _3042.z || _3043.z)) || ((asuint(_3046) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3212 + ((_3146 * _3154) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3123, _3136), _368).xy, _3046))) + ((_3148 * _3154) * _50.SampleCmpLevelZero(_26, float3(_3118 + float2(_3126, _3136), _368).xy, _3046))), _2803 ? min(_48_m11[_3011].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_3011].z - _3029) * 0.25f, min(_3233.x, _3233.y)))) : _48_m11[_3011].w) : 1.0f;
                }
                else
                {
                    _3247 = 1.0f;
                }
                float3 _3270;
                float3 _3271;
                if (_2806)
                {
                    float3 _3250 = _2759 * _2759;
                    float _3259 = dot(_1170, _2794);
                    _3270 = _3250 / clamp(_3250 + (0.5f * clamp(_46_m6[_2176].z * _2783, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3271 = normalize(_2796 + (_2794 * clamp(dot(_2796, (_1170 * _3259) - _2794) / ((_46_m6[_2176].z * _46_m6[_2176].z) - (_3259 * _3259)), 0.0f, 1.0f)));
                }
                else
                {
                    _3270 = 1.0f.xxx;
                    _3271 = _2784;
                }
                float3 _3272 = _3271 + _447;
                float3 _3276 = _3272 * rsqrt(max(6.103515625e-05f, dot(_3272, _3272)));
                float3 _3381;
                if (_2959)
                {
                    float _3279 = clamp(_2825, 0.0f, 1.0f);
                    float _3281 = clamp(dot(_609, _3276), 0.0f, 1.0f);
                    float _3283 = clamp(dot(_447, _3276), 0.0f, 1.0f);
                    float _3284 = clamp(_689, 0.0f, 1.0f);
                    float _3285 = _530 * _530;
                    float _3295;
                    if (_2788 > 0.0f)
                    {
                        _3295 = clamp(_3285 + ((_2788 * _2788) / ((_3283 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3295 = _3285;
                    }
                    float _3296 = _3295 * _3295;
                    float _3317 = (((_3281 * _3296) - _3281) * _3281) + 1.0f;
                    float _3322 = 1.0f - _3283;
                    float _3323 = _3322 * _3322;
                    float _3325 = (_3322 * _3323) * _3323;
                    float _3349 = 1.0f - _530;
                    float _3356 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3349 * (1.04997003078460693359375f + (_3349 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3349))))));
                    float _3357 = 1.0f - _3356;
                    float3 _3360 = _688 + ((1.0f.xxx - _688) * 0.0476190485060214996337890625f);
                    float3 _3380 = ((clamp((min(((_688 * (1.0f - _3325)) + _3325.xxx) * (((_3296 / (_3317 * _3317)) * _3270.y) * (0.5f / (((_3279 * sqrt(((((-_3284) * _3296) + _3284) * _3284) + _3296)) + (_3284 * sqrt(((((-_3279) * _3296) + _3279) * _3279) + _3296))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3360 * (((_56.SampleLevel(_23, (float2(_3284, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3279, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3356) / _3357)) * _3360) / (1.0f.xxx - (_3360 * _3357)))) * _46_m6[_2188].z, 0.0f.xxx, 1000.0f.xxx) * _2825) + ((_684 * _3270.z) * _2825)) * (((_46_m6[_2170].xyz * _2958) * _3247) * _2267);
                    _3381 = _3380;
                }
                else
                {
                    _3381 = 0.0f.xxx;
                }
                _3382 = _2133;
                _3383 = _3381;
            }
            else
            {
                float _2757;
                do
                {
                    if (_2271)
                    {
                        _2757 = 1.0f;
                        break;
                    }
                    float _2291 = (0.5f + (0.5f * _46_m6[_2176].y)) - abs(_46_m6[_2176].x);
                    float _2292 = _46_m6[_2176].y - _2291;
                    float _2299 = abs(max((1.0f - abs(_2291)) - abs(_2292), 0.00048828125f));
                    float3 _2303 = normalize(float3(_2291, _2292, (_46_m6[_2176].x >= 0.0f) ? _2299 : (-_2299)));
                    float3 _2304 = _46_m6[_2173].xyz - _410;
                    float _2305 = dot(_2304, _2304);
                    float3 _2307 = _2304 * rsqrt(_2305);
                    int _2310 = int(_46_m6[_2188].w);
                    float3 _2312 = (_2303 * _46_m6[_2176].z) * 0.5f;
                    float3 _2313 = _2304 - _2312;
                    float3 _2314 = _2304 + _2312;
                    bool _2317 = (uint(_46_m6[_2170].w) & 1u) == 0u;
                    bool _2320 = _2317 || ((_2192 & 2u) != 0u);
                    bool _2323 = (!_2317) && (_46_m6[_2176].z > 0.0f);
                    float _2335;
                    if (_2323)
                    {
                        _2335 = 1.0f / ((((length(_2313) * length(_2314)) + dot(_2313, _2314)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2335 = 1.0f;
                    }
                    float _2357;
                    if (_46_m6[_2185].w < 0.0f)
                    {
                        float _2351 = _2305 * (_46_m6[_2173].w * _46_m6[_2173].w);
                        float _2354 = clamp(1.0f - (_2351 * _2351), 0.0f, 1.0f);
                        _2357 = lerp(1.0f / (_2305 + 1.0f), _2335, float(_2323)) * (_2354 * _2354);
                    }
                    else
                    {
                        float3 _2340 = _2304 * _46_m6[_2173].w;
                        _2357 = _2335 * pow(1.0f - clamp(dot(_2340, _2340), 0.0f, 1.0f), _46_m6[_2185].w);
                    }
                    float _2363 = clamp((dot(_2307, -_2303) - _46_m6[_2176].z) * _46_m6[_2176].w, 0.0f, 1.0f);
                    float _2367 = _2357 * lerp(1.0f, _2363 * _2363, float(_2317));
                    float _2467;
                    if ((!_2323) && (_2310 >= 0))
                    {
                        uint _2373 = uint(_2310);
                        float2 _2460;
                        [branch]
                        if (_2317)
                        {
                            float4 _2450 = mul(_66_m1[_2373], _414);
                            _2460 = _66_m0[_2373].xy + (clamp(_2450.xy / _2450.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2373].zw);
                        }
                        else
                        {
                            float3 _2387 = mul(float4(-_2304, 0.0f), _66_m1[_2373]).xyz;
                            float3 _378 = _2387;
                            float3 _377 = _2387;
                            float3 _376 = abs(_2387);
                            uint _2396 = uint(int(_376.y > _376.x));
                            uint _2402 = (_376.z > _376[_2396]) ? 2u : _2396;
                            uint _2408 = (_2402 * 2u) + uint(_377[_2402] < 0.0f);
                            float _2412 = abs(_378[_2408 / 2u]);
                            float _2432 = 0.5f - (0.000244140625f / _66_m0[_2373].w);
                            _2460 = _66_m0[_2373].xy + (clamp(float2((float(_2408) + ((((_378[uint(_349[_2408].x)] * _350[_2408].x) / _2412) * _2432) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_378[uint(_349[_2408].y)] * _350[_2408].y) / _2412) * _2432)), 0.0f.xx, 1.0f.xx) * _66_m0[_2373].zw);
                        }
                        _2467 = _2367 * _64.SampleLevel(_23, _2460, 0.0f).x;
                    }
                    else
                    {
                        _2467 = _2367;
                    }
                    float _2756;
                    if (_2467 > 0.0f)
                    {
                        int _2520;
                        if (_2320)
                        {
                            _2520 = int(_46_m6[_2179].x);
                        }
                        else
                        {
                            uint _2475 = asuint(_46_m6[_2176].w);
                            uint _2477 = asuint(_46_m6[_2179].x);
                            float3 _2478 = _410 - _46_m6[_2173].xyz;
                            float3 _2479 = abs(_2478);
                            float _2480 = _2479.x;
                            float _2481 = _2479.y;
                            float _2483 = _2479.z;
                            int _2515;
                            if ((_2480 > _2481) && (_2480 > _2483))
                            {
                                _2515 = int((_2478.x > 0.0f) ? (_2475 >> 24u) : ((_2475 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2507;
                                if (_2481 > _2483)
                                {
                                    _2507 = int((_2478.y > 0.0f) ? ((_2475 >> 8u) & 255u) : (_2475 & 255u));
                                }
                                else
                                {
                                    _2507 = int((_2478.z > 0.0f) ? ((_2477 >> 8u) & 255u) : (_2477 & 255u));
                                }
                                _2515 = _2507;
                            }
                            _2520 = (_2515 < 80) ? _2515 : (-1);
                        }
                        float4 _2537 = mul(_48_m10[_2520], float4((_410 - ((-_2307) * _48_m11[_2520].x)) + (_609 * (_48_m11[_2520].y * 5.0f)), 1.0f));
                        float _2538 = _2537.w;
                        float3 _2541 = _2537.xyz / _2538.xxx;
                        float2 _2542 = _2541.xy;
                        float3 _2550 = _2541.xyz;
                        bool3 _2551 = bool3(_2550.x <= 0.0f.xxx.x, _2550.y <= 0.0f.xxx.y, _2550.z <= 0.0f.xxx.z);
                        bool3 _2552 = bool3(_2550.x >= 1.0f.xxx.x, _2550.y >= 1.0f.xxx.y, _2550.z >= 1.0f.xxx.z);
                        float _2555 = _2541.z;
                        float2 _2566 = ((_2542 * (_48_m12[_2520].zw - _48_m12[_2520].xy)) + _48_m12[_2520].xy).xy * _48_m13.zw;
                        float2 _2568 = floor(_2566 + 0.5f.xx);
                        float2 _2569 = _2566 - _2568;
                        float _2570 = _2569.x;
                        float _2571 = _2570 + 0.5f;
                        float _2572 = _2571 * _2571;
                        float _2575 = 1.0f - _2570;
                        float _2576 = min(_2570, 0.0f);
                        float _2579 = _2570 + 1.0f;
                        float _2580 = max(_2570, 0.0f);
                        float _2591 = _2569.y;
                        float _2592 = _2591 + 0.5f;
                        float _2593 = _2592 * _2592;
                        float _2596 = 1.0f - _2591;
                        float _2597 = min(_2591, 0.0f);
                        float _2600 = _2591 + 1.0f;
                        float _2601 = max(_2591, 0.0f);
                        float3 _2613 = float3(0.1599999964237213134765625f * _2575, 0.1599999964237213134765625f * ((_2579 - (_2580 * _2580)) + 1.0f), _2572 * 0.07999999821186065673828125f);
                        float3 _2614 = float3(0.1599999964237213134765625f * ((_2572 * 0.5f) - _2570), 0.1599999964237213134765625f * ((_2575 - (_2576 * _2576)) + 1.0f), 0.1599999964237213134765625f * _2579) + _2613;
                        float3 _2616 = float3(0.1599999964237213134765625f * _2596, 0.1599999964237213134765625f * ((_2600 - (_2601 * _2601)) + 1.0f), _2593 * 0.07999999821186065673828125f);
                        float3 _2617 = float3(0.1599999964237213134765625f * ((_2593 * 0.5f) - _2591), 0.1599999964237213134765625f * ((_2596 - (_2597 * _2597)) + 1.0f), 0.1599999964237213134765625f * _2600) + _2616;
                        float3 _2623 = ((_2613 / _2614) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2625 = ((_2616 / _2617) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2627 = _2568 * _48_m13.xy;
                        float _2628 = _2623.x;
                        float _2629 = _2625.x;
                        float _2632 = _2623.y;
                        float _2635 = _2623.z;
                        float _2638 = _2625.y;
                        float _2645 = _2625.z;
                        float _2652 = _2614.x;
                        float _2653 = _2617.x;
                        float _2655 = _2614.y;
                        float _2657 = _2614.z;
                        float _2659 = _2617.y;
                        float _2663 = _2617.z;
                        float _2721 = (((((((_2652 * _2653) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2628, _2629), _368).xy, _2555)) + ((_2655 * _2653) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2632, _2629), _368).xy, _2555))) + ((_2657 * _2653) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2635, _2629), _368).xy, _2555))) + ((_2652 * _2659) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2628, _2638), _368).xy, _2555))) + ((_2655 * _2659) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2632, _2638), _368).xy, _2555))) + ((_2657 * _2659) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2635, _2638), _368).xy, _2555))) + ((_2652 * _2663) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2628, _2645), _368).xy, _2555));
                        float2 _2742 = min(_2542, 1.0f.xx - _2542);
                        _2756 = (_2520 >= 0) ? lerp(1.0f, (any(bool3(_2551.x || _2552.x, _2551.y || _2552.y, _2551.z || _2552.z)) || ((asuint(_2555) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2721 + ((_2655 * _2663) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2632, _2645), _368).xy, _2555))) + ((_2657 * _2663) * _50.SampleCmpLevelZero(_26, float3(_2627 + float2(_2635, _2645), _368).xy, _2555))), _2320 ? min(_48_m11[_2520].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2520].z - _2538) * 0.25f, min(_2742.x, _2742.y)))) : _48_m11[_2520].w) : 1.0f;
                    }
                    else
                    {
                        _2756 = 1.0f;
                    }
                    _2757 = _2756;
                    break;
                } while(false);
                _3382 = _2133 * _2757;
                _3383 = 0.0f.xxx;
            }
            _2155 = _3382;
            _2158 = _2157 + _3383;
        }
        _2130 = _2129 + _2157;
    }
    float3 _3390 = (((((float3(_1150, _1155, _1160) * (_684 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _501, _39_m4)) * _18_m22.x) + (((((_1443 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_688 * _703.x) + (clamp(50.0f * _688.y, 0.0f, 1.0f) * _703.y).xxx)) * 1.0f)) + (((lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _558) * _39_m55, _548.xxx) * lerp(_586, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2104.xyz + ((_2129 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2132)).xyz;
    float4 _3391 = float4(_3390.x, _3390.y, _3390.z, _370.w);
    _3391.w = _525;
    float _3408 = _410.y * _18_m46.w;
    float _3413 = max(0.00999999977648258209228515625f, _3408 + _18_m47.w);
    float3 _3427 = exp(_18_m45.xyz * ((-max(0.0f, (_448 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3413)) / _3413) * exp(_3408 + _18_m48.w))));
    float _3430 = dot(_612, _18_m44.xyz);
    float _3436 = _18_m45.w * _18_m45.w;
    float _3440 = (1.0f + _3436) - ((2.0f * _18_m45.w) * _3430);
    float3 _3770;
    float _3771;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3598 = (uint3(int3(int(_743.x), int(_743.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3599 = _3598.y;
        uint _3600 = _3598.z;
        uint _3603 = _3598.x + (_3599 * _3600);
        uint _3605 = _3599 + (_3600 * _3603);
        uint _3607 = _3600 + (_3603 * _3605);
        uint _3609 = _3603 + (_3605 * _3607);
        float _3631 = dot(_612, -_16_m0[2].xyz);
        float3 _3641 = _410 - _16_m11.xyz;
        float _3643 = (_18_m55.w * ((_3631 > 5.9604644775390625e-08f) ? (1.0f / _3631) : 0.0f)) * (1.0f / _448);
        float _3644 = _3641.y;
        float _3645 = _3643 * _3644;
        float _3647 = _16_m11.y + _3645;
        float _3648 = _3644 - _3645;
        float _3650 = (1.0f - _3643) * _448;
        float _3664 = max(-127.0f, _18_m49.z * _3648);
        float _3688 = max(-127.0f, _18_m52.x * _3648);
        float _3699 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3647 - _18_m49.x)))) * ((abs(_3664) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3664)) / _3664) : (0.693147182464599609375f - (0.2402265071868896484375f * _3664)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3647 - _18_m52.z)))) * ((abs(_3688) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3688)) / _3688) : (0.693147182464599609375f - (0.2402265071868896484375f * _3688))));
        float _3721 = clamp((_448 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3724 = clamp((max(clamp(exp2(-(_3699 * _3650)), 0.0f, 1.0f), _18_m51.w) + clamp((_448 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3721, 0.0f, 1.0f);
        float4 _3764 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1179 + ((((float3(uint3(_3609, _3605 + (_3607 * _3609), _371) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_744 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_744 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3770 = _3764.xyz + (((_18_m51.xyz * (1.0f - _3724)) + (((_18_m54.xyz * pow(clamp(dot(_447, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3699 * max(_3650 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3721))) * _3764.w);
        _3771 = _3764.w * _3724;
    }
    else
    {
        float3 _3470 = _410 - _16_m11.xyz;
        float _3472 = _3470.y;
        float _3486 = max(-127.0f, _18_m49.z * _3472);
        float _3510 = max(-127.0f, _18_m52.x * _3472);
        float _3521 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3486) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3486)) / _3486) : (0.693147182464599609375f - (0.2402265071868896484375f * _3486)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3510) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3510)) / _3510) : (0.693147182464599609375f - (0.2402265071868896484375f * _3510))));
        float _3543 = clamp((_448 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3546 = clamp((max(clamp(exp2(-(_3521 * _448)), 0.0f, 1.0f), _18_m51.w) + clamp((_448 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3543, 0.0f, 1.0f);
        _3770 = (_18_m51.xyz * (1.0f - _3546)) + (((_18_m54.xyz * pow(clamp(dot(_447, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3521 * max(_448 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3543));
        _3771 = _3546;
    }
    float3 _3781 = lerp(_633.xyz, ((_3391.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3427 * _3771)) : (_3427 * _3771))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3430 * _3430)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3436) / max((12.56637096405029296875f * _3440) * sqrt(_3440), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3427)) * _3771 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3770 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz, _525.xxx).xyz;
    float3 _3791 = lerp(dot(_3781, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3781, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3801 = min(lerp(((sqrt(sqrt(abs(_656 * 0.5f))) * float2(int2(sign(_656)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _643.xx), 1.0f.xx);
    float4 _3802 = float4(_3801.x, _3801.y, _370.z, _370.w);
    _3802.z = float(clamp(max(dot(_3791.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _525, _525) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3802.w = lerp(0.0f, 0.699999988079071044921875f, _643);
    float3 renodx_output_color = float3(_3791.x, _3791.y, _3791.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3391.w);
    _14 = _3802;
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
