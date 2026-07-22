#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x48C2ED6A.
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

struct _49
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

[[vk::binding(50, 0)]] ByteAddressBuffer _35 : register(t50);
[[vk::binding(8, 1)]]
cbuffer _46_47 : register(b8)
{
    float _47_m0 : packoffset(c0);
    float _47_m1 : packoffset(c0.y);
    float _47_m2 : packoffset(c0.z);
    float _47_m3 : packoffset(c0.w);
    float _47_m4 : packoffset(c1);
    float _47_m5 : packoffset(c1.y);
    float _47_m6 : packoffset(c1.z);
    float _47_m7 : packoffset(c1.w);
    float _47_m8 : packoffset(c2);
    float _47_m9 : packoffset(c2.y);
    float _47_m10 : packoffset(c2.z);
    float _47_m11 : packoffset(c2.w);
    float _47_m12 : packoffset(c3);
    float _47_m13 : packoffset(c3.y);
    float _47_m14 : packoffset(c3.z);
    float _47_m15 : packoffset(c3.w);
    float _47_m16 : packoffset(c4);
    float _47_m17 : packoffset(c4.y);
    float _47_m18 : packoffset(c4.z);
    float _47_m19 : packoffset(c4.w);
    float _47_m20 : packoffset(c5);
    float _47_m21 : packoffset(c5.y);
    float _47_m22 : packoffset(c5.z);
    float _47_m23 : packoffset(c5.w);
    float _47_m24 : packoffset(c6);
    float _47_m25 : packoffset(c6.y);
    float _47_m26 : packoffset(c6.z);
    float _47_m27 : packoffset(c6.w);
    float _47_m28 : packoffset(c7);
    float _47_m29 : packoffset(c7.y);
    float _47_m30 : packoffset(c7.z);
    float _47_m31 : packoffset(c7.w);
    float4 _47_m32 : packoffset(c8);
    float4 _47_m33 : packoffset(c9);
    float4 _47_m34 : packoffset(c10);
    float4 _47_m35 : packoffset(c11);
    float4 _47_m36 : packoffset(c12);
    float4 _47_m37 : packoffset(c13);
    float4 _47_m38 : packoffset(c14);
    float4 _47_m39 : packoffset(c15);
    float4 _47_m40 : packoffset(c16);
    float4 _47_m41 : packoffset(c17);
    float4 _47_m42 : packoffset(c18);
    float4 _47_m43 : packoffset(c19);
    float4 _47_m44 : packoffset(c20);
    float4 _47_m45 : packoffset(c21);
    float _47_m46 : packoffset(c22);
    float _47_m47 : packoffset(c22.y);
    float _47_m48 : packoffset(c22.z);
    float _47_m49 : packoffset(c22.w);
    float _47_m50 : packoffset(c23);
    float _47_m51 : packoffset(c23.y);
    float _47_m52 : packoffset(c23.z);
    float _47_m53 : packoffset(c23.w);
    float4 _47_m54 : packoffset(c24);
    float4 _47_m55 : packoffset(c25);
    float _47_m56 : packoffset(c26);
    float _47_m57 : packoffset(c26.y);
    float _47_m58 : packoffset(c26.z);
    float _47_m59 : packoffset(c26.w);
};

[[vk::binding(17, 0)]]
cbuffer _48_50 : register(b17)
{
    float4 _50_m0 : packoffset(c0);
    float4 _50_m1 : packoffset(c1);
    float4 _50_m2 : packoffset(c2);
    float4 _50_m3 : packoffset(c3);
    _49 _50_m4[32] : packoffset(c4);
};

[[vk::binding(47, 0)]]
cbuffer _51_52 : register(b47)
{
    int _52_m0 : packoffset(c0);
    int _52_m1 : packoffset(c0.y);
    int _52_m2 : packoffset(c0.z);
    int _52_m3 : packoffset(c0.w);
    float _52_m4 : packoffset(c1);
    float _52_m5 : packoffset(c1.y);
    float _52_m6 : packoffset(c1.z);
    float _52_m7 : packoffset(c1.w);
    float _52_m8 : packoffset(c2);
    float _52_m9 : packoffset(c2.y);
    float _52_m10 : packoffset(c2.z);
    float _52_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _53_54 : register(b14)
{
    float4 _54_m0 : packoffset(c0);
    float4 _54_m1 : packoffset(c1);
    float4 _54_m2 : packoffset(c2);
    float4 _54_m3 : packoffset(c3);
    float4 _54_m4 : packoffset(c4);
    uint4 _54_m5 : packoffset(c5);
    float4 _54_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _55_56 : register(b15)
{
    column_major float4x4 _56_m0[5] : packoffset(c0);
    float4 _56_m1[4] : packoffset(c20);
    float4 _56_m2[4] : packoffset(c24);
    float4 _56_m3[4] : packoffset(c28);
    float4 _56_m4 : packoffset(c32);
    float4 _56_m5 : packoffset(c33);
    float4 _56_m6 : packoffset(c34);
    float4 _56_m7 : packoffset(c35);
    float4 _56_m8 : packoffset(c36);
    float4 _56_m9[27] : packoffset(c37);
    column_major float4x4 _56_m10[56] : packoffset(c64);
    float4 _56_m11[56] : packoffset(c288);
    float4 _56_m12[56] : packoffset(c344);
    float4 _56_m13 : packoffset(c400);
    float4 _56_m14[47] : packoffset(c401);
    column_major float4x4 _56_m15[15] : packoffset(c448);
    float4 _56_m16[15] : packoffset(c508);
    float4 _56_m17[15] : packoffset(c523);
    float4 _56_m18[15] : packoffset(c538);
    float4 _56_m19 : packoffset(c553);
    float4 _56_m20 : packoffset(c554);
    float4 _56_m21[21] : packoffset(c555);
    column_major float4x4 _56_m22 : packoffset(c576);
    column_major float4x4 _56_m23 : packoffset(c580);
    float4 _56_m24 : packoffset(c584);
    float4 _56_m25 : packoffset(c585);
    float4 _56_m26 : packoffset(c586);
    float4 _56_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _73_74 : register(b49)
{
    float4 _74_m0[32] : packoffset(c0);
    column_major float4x4 _74_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3);
[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _29 : register(t45);
[[vk::binding(23, 0)]] Texture2D<float4> _30 : register(t23);
[[vk::binding(24, 0)]] Texture2D<float4> _31 : register(t24);
[[vk::binding(25, 0)]] Texture2DArray<float4> _33 : register(t25);
[[vk::binding(7, 1)]] Texture2D<float4> _36 : register(t7);
[[vk::binding(3, 1)]] SamplerState _37 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _38 : register(t5);
[[vk::binding(1, 1)]] SamplerState _39 : register(s1);
[[vk::binding(6, 1)]] Texture2D<float4> _40 : register(t6);
[[vk::binding(2, 1)]] SamplerState _41 : register(s2);
[[vk::binding(22, 0)]] Texture2D<float4> _42 : register(t22);
[[vk::binding(4, 1)]] Texture2D<float4> _43 : register(t4);
[[vk::binding(0, 1)]] SamplerState _44 : register(s0);
[[vk::binding(20, 0)]] SamplerState _45 : register(s20);
[[vk::binding(9, 0)]] Texture2D<float4> _57 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _58 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _59 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _60 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _61 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _64 : register(t27);
[[vk::binding(34, 0)]] Texture3D<float4> _65 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _66 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _67 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _68 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _69 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _70 : register(t29);
[[vk::binding(35, 0)]] Texture3D<float4> _71 : register(t35);
[[vk::binding(28, 0)]] Texture2D<float4> _72 : register(t28);

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
    float _417 = abs(mul(_16_m0, _414).z);
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
    float2 _469 = (lerp(_4, _5, _47_m12.xx) * _47_m36.xy) + _47_m36.zw;
    float4 _483 = _36.SampleBias(_37, (lerp(_4, _5, _47_m11.xx) * _47_m35.xy) + _47_m35.zw, _18_m16);
    float4 _487 = _38.SampleBias(_39, _469, _47_m13 + _18_m16);
    _487.w = _487.w * _487.x;
    float2 _495 = ((_487.wy * 2.0f) - 1.0f.xx).xy;
    float2 _501 = _495 * _47_m0;
    float4 _503 = _40.SampleBias(_41, _469, _18_m16);
    float3 _518 = lerp(clamp((_483.xyz * _47_m32.xyz) * _47_m18, 0.0f.xxx, 1.0f.xxx), _47_m32.xyz, _47_m16.xxx);
    float _522 = _483.w * _47_m32.w;
    float _528 = lerp(_522, _522 * _8.x, _47_m56);
    float _533 = lerp(_47_m2, _47_m3, _503.y);
    float _543 = lerp(_503.x, _47_m17, clamp(_47_m15 - 1.0f, 0.0f, 1.0f));
    float3 _558 = normalize(((_7.xyz * _501.x) + ((cross(_6, float4(_7.xyz, _421).xyz) * _421) * _501.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_495, _495), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_47_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _584 = dot(_558, _447);
    float3 _585 = -_447;
    float2 _613 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_585, _558, _47_m48) * lerp(_47_m49, _47_m49 / max(gl_FragCoord.z * _584, 0.5f), _47_m50)).xy, ((_43.SampleBias(_44, (_4 * _47_m55.xy) + _47_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _47_m47, _47_m46.xx).xy;
    float2 _614 = _397 + _613;
    float2 _616 = _397 + (_613 * 0.25f);
    float4 _620 = _29.SampleBias(_23, _614, _18_m16);
    float4 _632 = _29.SampleBias(_23, _616, _18_m16);
    float4 _644 = _42.SampleBias(_45, lerp(lerp(_397, _616, step(_417, 1.0f / ((_18_m2.z * _632.x) + _18_m2.w)).xx), _614, step(_417, 1.0f / ((_18_m2.z * _620.x) + _18_m2.w)).xx), _18_m16);
    float _662 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _675 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _675.y = -_675.y;
    float _701 = 0.07999999821186065673828125f * _47_m1;
    float3 _702 = _518 * _543;
    float3 _703 = _518 - _702;
    float3 _707 = (_701 - (_701 * _543)).xxx + _702;
    float4 _710 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _533) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _711 = _710.x;
    float2 _721 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_711 * _711, exp2((-9.27999973297119140625f) * max(0.0f, _584))) * _711) + _710.y)) + _710.zw;
    uint2 _757;
    float _758;
    if (_18_m24.y == 1.0f)
    {
        float4 _738 = mul(_18_m135, _414);
        float4 _741 = _738;
        _741.y = -_738.y;
        float4 _744 = _741 * (1.0f / _738.w);
        _757 = uint2(clamp(((_744.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _758 = 1.0f / ((_18_m2.z * _744.z) + _18_m2.w);
    }
    else
    {
        _757 = uint2(gl_FragCoord.xy);
        _758 = _417;
    }
    float3 _760 = _410 + (_558 * 0.25f);
    float3 _770 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _779 = _760 - (_18_m105.xyz + (_770 * (-_18_m107.w)));
    float _793 = max(clamp((max(abs(_779.x), abs(_779.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_779.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1095;
    float4 _1096;
    float4 _1097;
    float _1098;
    float _1099;
    if ((_18_m105.w != 0.0f) && (_793 < 1.0f))
    {
        float3 _806 = _760 - (_18_m105.xyz + (_770 * (-_18_m107.y)));
        float _820 = max(clamp((max(abs(_806.x), abs(_806.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_806.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _896;
        float4 _897;
        float4 _898;
        float4 _899;
        if (_820 < 1.0f)
        {
            float3 _829 = ((_760 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _831 = _829 - floor(_829);
            float4 _835 = _65.SampleLevel(_25, _831, 0.0f);
            float _836 = 1.0f - _820;
            float _840 = _18_m106.y * 0.5f;
            float _845 = _831.x;
            float _846 = clamp(_831.y, _840, 1.0f - _840) * 0.3333333432674407958984375f;
            float _847 = _831.z;
            float4 _850 = _66.SampleLevel(_24, float3(_845, _846, _847), 0.0f);
            float _866 = _835.x;
            float3 _867 = ((_850.xyz * 4.0f) - 2.0f.xxx) * _866;
            float _876 = _835.y;
            float3 _877 = ((_66.SampleLevel(_24, float3(_845, _846 + 0.3333333432674407958984375f, _847), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _876;
            float _886 = _835.z;
            float3 _887 = ((_66.SampleLevel(_24, float3(_845, _846 + 0.666666686534881591796875f, _847), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _886;
            _896 = _793 + (_850.w * _836);
            _897 = float4(_887, _886) * _836;
            _898 = float4(_877, _876) * _836;
            _899 = float4(_867, _866) * _836;
        }
        else
        {
            _896 = _793;
            _897 = 0.0f.xxxx;
            _898 = 0.0f.xxxx;
            _899 = 0.0f.xxxx;
        }
        float3 _905 = _760 - (_18_m105.xyz + (_770 * (-_18_m107.z)));
        float _919 = max(clamp((max(abs(_905.x), abs(_905.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_905.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _999;
        float4 _1000;
        float4 _1001;
        float4 _1002;
        if (_919 < 1.0f)
        {
            float3 _928 = ((_760 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _930 = _928 - floor(_928);
            float4 _934 = _67.SampleLevel(_25, _930, 0.0f);
            float _936 = _820 * (1.0f - _919);
            float _940 = _18_m106.y * 0.5f;
            float _945 = _930.x;
            float _946 = clamp(_930.y, _940, 1.0f - _940) * 0.3333333432674407958984375f;
            float _947 = _930.z;
            float4 _950 = _68.SampleLevel(_24, float3(_945, _946, _947), 0.0f);
            float _966 = _934.x;
            float3 _967 = ((_950.xyz * 4.0f) - 2.0f.xxx) * _966;
            float _977 = _934.y;
            float3 _978 = ((_68.SampleLevel(_24, float3(_945, _946 + 0.3333333432674407958984375f, _947), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _977;
            float _988 = _934.z;
            float3 _989 = ((_68.SampleLevel(_24, float3(_945, _946 + 0.666666686534881591796875f, _947), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _988;
            _999 = _896 + (_950.w * _936);
            _1000 = _897 + (float4(_989, _988) * _936);
            _1001 = _898 + (float4(_978, _977) * _936);
            _1002 = _899 + (float4(_967, _966) * _936);
        }
        else
        {
            _999 = _896;
            _1000 = _897;
            _1001 = _898;
            _1002 = _899;
        }
        float4 _1085;
        float4 _1086;
        float4 _1087;
        float _1088;
        if (_919 > 0.0f)
        {
            float3 _1011 = ((_760 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1014 = _18_m106.xyz * 0.5f;
            float3 _1016 = clamp(_1011 - floor(_1011), _1014, 1.0f.xxx - _1014);
            float4 _1020 = _69.SampleLevel(_25, _1016, 0.0f);
            float _1022 = _919 * (1.0f - _793);
            float _1026 = _18_m106.y * 0.5f;
            float _1031 = _1016.x;
            float _1032 = clamp(_1016.y, _1026, 1.0f - _1026) * 0.3333333432674407958984375f;
            float _1033 = _1016.z;
            float4 _1036 = _70.SampleLevel(_24, float3(_1031, _1032, _1033), 0.0f);
            _1085 = _1000 + (float4(((_70.SampleLevel(_24, float3(_1031, _1032 + 0.666666686534881591796875f, _1033), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1020.z, _1020.z) * _1022);
            _1086 = _1001 + (float4(((_70.SampleLevel(_24, float3(_1031, _1032 + 0.3333333432674407958984375f, _1033), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1020.y, _1020.y) * _1022);
            _1087 = _1002 + (float4(((_1036.xyz * 4.0f) - 2.0f.xxx) * _1020.x, _1020.x) * _1022);
            _1088 = _999 + (_1036.w * _1022);
        }
        else
        {
            _1085 = _1000;
            _1086 = _1001;
            _1087 = _1002;
            _1088 = _999;
        }
        float _1091 = clamp((_1088 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1095 = _1085;
        _1096 = _1086;
        _1097 = _1087;
        _1098 = _1091 - _793;
        _1099 = (_1091 + _793) * 0.5f;
    }
    else
    {
        _1095 = 0.0f.xxxx;
        _1096 = 0.0f.xxxx;
        _1097 = 0.0f.xxxx;
        _1098 = 0.0f;
        _1099 = 1.0f;
    }
    float4 _1119 = _1097 + float4(_18_m108.x * _1099, (_18_m108.y * _1099) + ((_18_m108.w * _1098) * 0.5f), _18_m108.z * _1099, (_18_m108.w * _1099) + ((_18_m108.y * _1098) * 0.375f));
    float4 _1139 = _1096 + float4(_18_m109.x * _1099, (_18_m109.y * _1099) + ((_18_m109.w * _1098) * 0.5f), _18_m109.z * _1099, (_18_m109.w * _1099) + ((_18_m109.y * _1098) * 0.375f));
    float4 _1159 = _1095 + float4(_18_m110.x * _1099, (_18_m110.y * _1099) + ((_18_m110.w * _1098) * 0.5f), _18_m110.z * _1099, (_18_m110.w * _1099) + ((_18_m110.y * _1098) * 0.375f));
    float _1164 = max(0.0f, dot(_1119.xyz, _558) + _1119.w);
    float _1169 = max(0.0f, dot(_1139.xyz, _558) + _1139.w);
    float _1174 = max(0.0f, dot(_1159.xyz, _558) + _1159.w);
    float3 _1184 = reflect(_585, _558);
    float _1192 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_533, 0.001000000047497451305389404296875f))));
    float2 _1193 = float2(_757);
    float2 _1197 = floor(_1193 * _50_m0.w);
    float _1214 = floor(_758 - _50_m2.y);
    float _1218 = clamp(_1214, 0.0f, _50_m1.x - 1.0f);
    uint _1228 = (_1214 <= _1218) ? (_35.Load(uint(_18_m21.z + int(_1197.x + (_1197.y * _50_m0.x))) * 4 + 0) & _35.Load(uint(_18_m21.w + int(_1218)) * 4 + 0)) : 0u;
    float _1231 = dot(float4(_1164, _1169, _1174, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1233;
    float _1236;
    uint _1238;
    _1233 = 0.0f.xxx;
    _1236 = 1.0f;
    _1238 = _1228;
    uint _1239;
    float3 _1234;
    float _1237;
    bool _1241;
    [loop]
    for (;;)
    {
        _1241 = _1236 > 0.00999999977648258209228515625f;
        if ((_1238 != 0u) && _1241)
        {
            uint _1245 = firstbitlow(_1238);
            _1239 = _1238 ^ (1u << (_1245 & 31u));
            float3 _1265 = float3(dot(_50_m4[_1245]._m2, _414), dot(_50_m4[_1245]._m3, _414), dot(_50_m4[_1245]._m4, _414));
            float3 _1266 = abs(_1265);
            if (all(bool3(_1266.x <= _50_m4[_1245]._m1.xyz.x, _1266.y <= _50_m4[_1245]._m1.xyz.y, _1266.z <= _50_m4[_1245]._m1.xyz.z)))
            {
                float3 _1275 = _50_m4[_1245]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1277 = _1266 * 0.100000001490116119384765625f;
                float3 _1278 = _1277 * _1277;
                float3 _1281 = (_50_m4[_1245]._m1.xyz - _1266) * _50_m4[_1245]._m5.xyz;
                float3 _1329;
                [branch]
                if (_50_m4[_1245]._m6.x == 1.0f)
                {
                    float3 _1314 = float3(dot(_50_m4[_1245]._m2.xyz, _1184), dot(_50_m4[_1245]._m3.xyz, _1184), dot(_50_m4[_1245]._m4.xyz, _1184));
                    float3 _1316 = (_50_m4[_1245]._m1.xyz - _1265) / _1314;
                    float3 _1319 = ((-_50_m4[_1245]._m1.xyz) - _1265) / _1314;
                    bool3 _1320 = bool3(_1314.x > 0.0f.xxx.x, _1314.y > 0.0f.xxx.y, _1314.z > 0.0f.xxx.z);
                    float3 _1321 = float3(_1320.x ? _1316.x : _1319.x, _1320.y ? _1316.y : _1319.y, _1320.z ? _1316.z : _1319.z);
                    _1329 = _1265 + (_1314 * min(min(_1321.x, _1321.y), _1321.z));
                }
                else
                {
                    _1329 = _1184;
                }
                float3 _1330 = normalize(_1329);
                float3 _1333 = float3(int3(sign(_1330)));
                float3 _1336 = _1330 / dot(_1330, _1333).xxx;
                float3 _1350;
                if (_1336.z < 0.0f)
                {
                    float3 _1341 = abs(_1336);
                    float2 _1348 = _1333.xy * float2(1.0f - _1341.y, 1.0f - _1341.x);
                    _1350 = float3(_1348.x, _1348.y, _1336.z);
                }
                else
                {
                    _1350 = _1336;
                }
                float _1375 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_50_m4[_1245]._m0, float4(_558, 1.0f))));
                float _1388 = clamp((min(_1281.x, min(_1281.y, _1281.z)) * _50_m4[_1245]._m6.y) + ((((((_1275 * _1275).x - ((_1278.x + _1278.y) + _1278.z)) * _50_m4[_1245]._m5.x) * _50_m4[_1245]._m5.x) * (1.0f - _50_m4[_1245]._m6.y)) * 100.0f), 0.0f, 1.0f) * _50_m4[_1245]._m6.w;
                _1234 = _1233 + ((((_33.SampleLevel(_26, float3((((_1350.xy * 0.5f) + 0.5f.xx) * _50_m1.w) + _50_m2.w.xx, _50_m4[_1245]._m1.w), _1192).xyz * _50_m4[_1245]._m5.w) * ((((((clamp(abs(_1231 / _1375), 0.0f, 1.0f) * 2.0f) + _1231) / (2.0f + _1375)) - 1.0f) * _18_m23.w) + 1.0f)) * _1388) * _1236);
                _1237 = _1236 * (1.0f - _1388);
            }
            else
            {
                _1234 = _1233;
                _1237 = _1236;
            }
            _1233 = _1234;
            _1236 = _1237;
            _1238 = _1239;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1457;
    if (_1241)
    {
        float3 _1396 = normalize(_1184);
        float3 _1399 = float3(int3(sign(_1396)));
        float3 _1402 = _1396 / dot(_1396, _1399).xxx;
        float3 _1416;
        if (_1402.z < 0.0f)
        {
            float3 _1407 = abs(_1402);
            float2 _1414 = _1399.xy * float2(1.0f - _1407.y, 1.0f - _1407.x);
            _1416 = float3(_1414.x, _1414.y, _1402.z);
        }
        else
        {
            _1416 = _1402;
        }
        float _1443 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_50_m3, float4(_558, 1.0f))));
        _1457 = _1233 + ((_33.SampleLevel(_26, float3((((_1416.xy * 0.5f) + 0.5f.xx) * _50_m1.w) + _50_m2.w.xx, 0.0f), _1192).xyz * ((((((clamp(abs(_1231 / _1443), 0.0f, 1.0f) * 2.0f) + _1231) / (2.0f + _1443)) - 1.0f) * _18_m23.w) + 1.0f)) * _1236);
    }
    else
    {
        _1457 = _1233;
    }
    float3 _1463 = (_1457 * _18_m23.z) * _18_m22.y;
    float3 _1484;
    [branch]
    if (_18_m23.y != 0.0f)
    {
        float4 _1478 = _31.SampleBias(_24, _397, _18_m16);
        float _1479 = _1478.x;
        _1484 = (_30.SampleBias(_24, _397, _18_m16).xyz * _1479) + (_1463 * (1.0f - _1479));
    }
    else
    {
        _1484 = _1463;
    }
    float2 _1999;
    do
    {
        if (_56_m7.w >= 0.9900000095367431640625f)
        {
            _1999 = float2(_56_m7.z, 1.0f);
            break;
        }
        int _1500 = int(_56_m7.x);
        bool3 _1502 = (_1500 == 2).xxx;
        float3 _1510 = _410 - float3(_1502.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1502.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1502.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
        float _1521 = max(clamp((_56_m6.w - dot(_1510, _1510)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
        float _1738;
        bool _1739;
        if (_1521 > 0.0f)
        {
            float _1736;
            bool _1737;
            if (_1500 > 0)
            {
                float3 _1528 = _410 - _56_m1[0].xyz;
                float3 _1532 = _410 - _56_m1[1].xyz;
                float3 _1536 = _410 - _56_m1[2].xyz;
                float3 _1540 = _410 - _56_m1[3].xyz;
                float4 _1545 = float4(dot(_1528, _1528), dot(_1532, _1532), dot(_1536, _1536), dot(_1540, _1540));
                float4 _1554 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
                float4 _1556 = float4(bool4(_1545.x < _1554.x, _1545.y < _1554.y, _1545.z < _1554.z, _1545.w < _1554.w));
                float3 _1560 = clamp(_1556.yzw - _1556.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1564 = clamp(4.0f - dot(float4(_1556.x, _1560.x, _1560.y, _1560.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1566 = clamp(_1564 + 1.0f, 0.0f, 3.0f);
                uint _1567 = uint(_1564);
                uint _1575 = uint(_1566);
                float _1581 = dot(_1545, _348[_1575]) / _56_m1[_1575].w;
                float _1598;
                if (((_1566 > _1564) && (_1581 >= 0.0f)) && (_1581 <= 1.0f))
                {
                    _1598 = _1564 + step(frac(52.98291778564453125f * frac(dot(_1193 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1545, _348[_1567]) / _56_m1[_1567].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1598 = _1564;
                }
                float _1599 = clamp(_1598, 0.0f, 4.0f);
                float4 _1603 = mul(_56_m0[uint(_1599)], _414);
                float _1606 = _1603.z;
                float4 _1607 = float4(_1603.xy, _1606, _1599);
                float3 _1608 = _1607.xyz;
                bool3 _1609 = bool3(_1608.x <= 0.0f.xxx.x, _1608.y <= 0.0f.xxx.y, _1608.z <= 0.0f.xxx.z);
                bool3 _1610 = bool3(_1608.x >= 1.0f.xxx.x, _1608.y >= 1.0f.xxx.y, _1608.z >= 1.0f.xxx.z);
                bool _1616 = any(bool3(_1609.x || _1610.x, _1609.y || _1610.y, _1609.z || _1610.z)) || ((asuint(_1606) & 2147483647u) > 2139095040u);
                int _1617 = int(_1599);
                float2 _1634 = float4(_56_m3[_1617].xy + (_1607.xy * _56_m3[_1617].zw), _1606, _1599).xy * _56_m4.zw;
                float2 _1636 = floor(_1634 + 0.5f.xx);
                float2 _1637 = _1634 - _1636;
                float _1638 = _1637.x;
                float _1639 = _1638 + 0.5f;
                float _1641 = (_1639 * _1639) * 0.5f;
                float _1644 = min(_1638, 0.0f);
                float _1648 = max(_1638, 0.0f);
                float4 _1652 = float4(_1641 - _1638, (1.0f - _1638) - (_1644 * _1644), (_1638 + 1.0f) - (_1648 * _1648), _1641) * 0.44444000720977783203125f;
                float _1653 = _1637.y;
                float _1654 = _1653 + 0.5f;
                float _1656 = (_1654 * _1654) * 0.5f;
                float _1659 = min(_1653, 0.0f);
                float _1663 = max(_1653, 0.0f);
                float4 _1667 = float4(_1656 - _1653, (1.0f - _1653) - (_1659 * _1659), (_1653 + 1.0f) - (_1663 * _1663), _1656) * 0.44444000720977783203125f;
                float2 _1669 = _1652.yw;
                float2 _1670 = _1652.xz + _1669;
                float2 _1672 = _1667.yw;
                float2 _1673 = _1667.xz + _1672;
                float2 _1679 = ((_1669 / _1670) + float2(-1.5f, 0.5f)) * _56_m4.xx;
                float2 _1681 = ((_1672 / _1673) + float2(-1.5f, 0.5f)) * _56_m4.yy;
                float2 _1683 = _1636 * _56_m4.xy;
                float _1684 = _1679.x;
                float _1685 = _1681.x;
                float _1688 = _1679.y;
                float _1691 = _1681.y;
                float _1696 = _1670.x;
                float _1697 = _1673.x;
                float _1699 = _1670.y;
                float _1701 = _1673.y;
                _1736 = _1616 ? 1.0f : (((((_1696 * _1697) * _57.SampleCmpLevelZero(_27, float3(_1683 + float2(_1684, _1685), _368).xy, _1606)) + ((_1699 * _1697) * _57.SampleCmpLevelZero(_27, float3(_1683 + float2(_1688, _1685), _368).xy, _1606))) + ((_1696 * _1701) * _57.SampleCmpLevelZero(_27, float3(_1683 + float2(_1684, _1691), _368).xy, _1606))) + ((_1699 * _1701) * _57.SampleCmpLevelZero(_27, float3(_1683 + float2(_1688, _1691), _368).xy, _1606)));
                _1737 = _1616;
            }
            else
            {
                _1736 = 1.0f;
                _1737 = false;
            }
            _1738 = _1736;
            _1739 = _1737;
        }
        else
        {
            _1738 = 1.0f;
            _1739 = false;
        }
        float _1939;
        float _1940;
        if ((_1521 < 1.0f) || (_56_m8.x > 0.5f))
        {
            float _1750 = 1.0f - clamp(dot(_558, _54_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1761 = (_410 - (_54_m0.xyz * (_1750 * _56_m24.x))) + (_558 * (_1750 * _56_m24.y));
            float4 _1767 = float4(_1761, 1.0f);
            float4 _1768 = mul(_56_m23, _1767);
            float2 _1769 = _1768.xy;
            float _1937;
            if (all(bool2(_1769.x > 0.0f.xx.x, _1769.y > 0.0f.xx.y)) && all(bool2(_1769.x < 1.0f.xx.x, _1769.y < 1.0f.xx.y)))
            {
                uint _1788 = clamp(uint((floor(_1768.y * _56_m25.z) + _1768.x) * _56_m25.y), 0u, 127u);
                uint _1792 = asuint(_56_m27[_1788].x);
                float2 _1793 = spvUnpackHalf2x16(_1792);
                float _1794 = _1793.x;
                float _1936;
                if (_1794 >= 0.0f)
                {
                    float4x4 _1803 = _56_m22;
                    _1803[0].w = _56_m27[_1788].y;
                    _1803[1].w = _56_m27[_1788].z;
                    _1803[2].w = _56_m27[_1788].w;
                    float4 _1810 = mul(_1803, _1767);
                    float3 _1811 = _1810.xyz;
                    float _1935;
                    if (all(bool3(_1811.x > 0.0f.xxx.x, _1811.y > 0.0f.xxx.y, _1811.z > 0.0f.xxx.z)) && all(bool3(_1811.x < 1.0f.xxx.x, _1811.y < 1.0f.xxx.y, _1811.z < 1.0f.xxx.z)))
                    {
                        float _1828 = _1810.z;
                        float2 _1834 = float4((_1810.xy * _56_m24.zw) + float2(_1794, spvUnpackHalf2x16(_1792 >> 16u).x), _1828, 1.0f).xy * _56_m26.zw;
                        float2 _1836 = floor(_1834 + 0.5f.xx);
                        float2 _1837 = _1834 - _1836;
                        float _1838 = _1837.x;
                        float _1839 = _1838 + 0.5f;
                        float _1841 = (_1839 * _1839) * 0.5f;
                        float _1844 = min(_1838, 0.0f);
                        float _1848 = max(_1838, 0.0f);
                        float4 _1852 = float4(_1841 - _1838, (1.0f - _1838) - (_1844 * _1844), (_1838 + 1.0f) - (_1848 * _1848), _1841) * 0.44444000720977783203125f;
                        float _1853 = _1837.y;
                        float _1854 = _1853 + 0.5f;
                        float _1856 = (_1854 * _1854) * 0.5f;
                        float _1859 = min(_1853, 0.0f);
                        float _1863 = max(_1853, 0.0f);
                        float4 _1867 = float4(_1856 - _1853, (1.0f - _1853) - (_1859 * _1859), (_1853 + 1.0f) - (_1863 * _1863), _1856) * 0.44444000720977783203125f;
                        float2 _1869 = _1852.yw;
                        float2 _1870 = _1852.xz + _1869;
                        float2 _1872 = _1867.yw;
                        float2 _1873 = _1867.xz + _1872;
                        float2 _1879 = ((_1869 / _1870) + float2(-1.5f, 0.5f)) * _56_m26.xx;
                        float2 _1881 = ((_1872 / _1873) + float2(-1.5f, 0.5f)) * _56_m26.yy;
                        float2 _1883 = _1836 * _56_m26.xy;
                        float _1884 = _1879.x;
                        float _1885 = _1881.x;
                        float _1888 = _1879.y;
                        float _1891 = _1881.y;
                        float _1896 = _1870.x;
                        float _1897 = _1873.x;
                        float _1899 = _1870.y;
                        float _1901 = _1873.y;
                        _1935 = ((((_1896 * _1897) * _60.SampleCmpLevelZero(_27, float3(_1883 + float2(_1884, _1885), _368).xy, _1828)) + ((_1899 * _1897) * _60.SampleCmpLevelZero(_27, float3(_1883 + float2(_1888, _1885), _368).xy, _1828))) + ((_1896 * _1901) * _60.SampleCmpLevelZero(_27, float3(_1883 + float2(_1884, _1891), _368).xy, _1828))) + ((_1899 * _1901) * _60.SampleCmpLevelZero(_27, float3(_1883 + float2(_1888, _1891), _368).xy, _1828));
                    }
                    else
                    {
                        _1935 = 1.0f;
                    }
                    _1936 = _1935;
                }
                else
                {
                    _1936 = 1.0f;
                }
                _1937 = _1936;
            }
            else
            {
                _1937 = 1.0f;
            }
            _1939 = _1739 ? _1937 : _1738;
            _1940 = _1937;
        }
        else
        {
            _1939 = _1738;
            _1940 = 1.0f;
        }
        float _1943 = lerp(lerp(_1940, _1939, _1521), min(_1940, _1939), _56_m8.x);
        float _1994;
        if (_1943 > 0.001000000047497451305389404296875f)
        {
            float3 _1950 = _410 - _18_m65.xyz;
            float2 _1960 = (_1950 + (_18_m68.xyz * _1950.y)).xz * _18_m66.z;
            float2 _1969 = _18_m67.xy * _18_m75.w;
            _1994 = _1943 * lerp(1.0f, lerp(_59.SampleLevel(_25, _1960 + _1969, 0.0f), _59.SampleLevel(_25, (_1960 * _18_m67.w) + _1969, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1950.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1994 = _1943;
        }
        _1999 = float2(lerp(_1994, _56_m7.z, _56_m7.w), _1994);
        break;
    } while(false);
    float _2004 = lerp(1.0f, min(1.0f, _1999.x), _56_m6.x);
    float4 _2143;
    if (_2004 > 0.001000000047497451305389404296875f)
    {
        float3 _2014 = -_54_m0.xyz;
        float _2019 = dot(_2014, _1184);
        float3 _2021 = _1184 - (_2014 * _2019);
        bool3 _2023 = (_2019 < _54_m4.z).xxx;
        float3 _2031 = normalize((_2014 * _54_m4.z) + ((_2021 * rsqrt(max(6.103515625e-05f, dot(_2021, _2021)))) * _54_m4.y));
        float3 _2032 = float3(_2023.x ? _2031.x : _1184.x, _2023.y ? _2031.y : _1184.y, _2023.z ? _2031.z : _1184.z);
        float3 _2036 = _2032 + _447;
        float3 _2040 = _2036 * rsqrt(max(6.103515625e-05f, dot(_2036, _2036)));
        float _2041 = clamp(dot(_2032, _558), 0.0f, 1.0f);
        float _2043 = clamp(dot(_558, _2040), 0.0f, 1.0f);
        float _2046 = clamp(_584, 0.0f, 1.0f);
        float _2047 = _533 * _533;
        float _2048 = _2047 * _2047;
        float _2069 = (((_2043 * _2048) - _2043) * _2043) + 1.0f;
        float _2072 = 1.0f - clamp(dot(_447, _2040), 0.0f, 1.0f);
        float _2073 = _2072 * _2072;
        float _2075 = (_2072 * _2073) * _2073;
        float _2099 = 1.0f - _533;
        float _2106 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2099 * (1.04997003078460693359375f + (_2099 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2099))))));
        float _2107 = 1.0f - _2106;
        float3 _2110 = _707 + ((1.0f.xxx - _707) * 0.0476190485060214996337890625f);
        float3 _2129 = (clamp((clamp((min(((_707 * (1.0f - _2075)) + _2075.xxx) * ((_2048 / (_2069 * _2069)) * (0.5f / (((_2041 * sqrt(((((-_2046) * _2048) + _2046) * _2046) + _2048)) + (_2046 * sqrt(((((-_2041) * _2048) + _2041) * _2041) + _2048))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2110 * (((_64.SampleLevel(_24, (float2(_2046, _533) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2041, _533) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2106) / _2107)) * _2110) / (1.0f.xxx - (_2110 * _2107)))) * _54_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_528, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2041) + ((_703 * 1.0f) * _2041);
        float3 _2130 = _2129 * _54_m1.xyz;
        float3 _2141 = lerp(_2130, _2130 * _61.SampleBias(_24, float2(_2004, 0.5f), _18_m16).xyz, (1.0f - _2004).xxx) * 1.0f;
        _2143 = float4(_2141.x, _2141.y, _2141.z, 0.0f.xxxx.w);
    }
    else
    {
        _2143 = 0.0f.xxxx;
    }
    float2 _2145 = floor(_1193 * 0.03125f);
    int _2153 = int((_2145.x + (_2145.y * _52_m5)) * 8.0f);
    float _2160 = floor(_758 - (_18_m3.y * _52_m11));
    float _2164 = clamp(_2160, 0.0f, _52_m7 - 1.0f);
    int _2166 = int(_2164 * 8.0f);
    float3 _2168;
    float _2171;
    _2168 = 0.0f.xxx;
    _2171 = 1.0f;
    float3 _2169;
    float _2172;
    [loop]
    for (int _2173 = 0; _2173 <= 7; _2168 = _2169, _2171 = _2172, _2173++)
    {
        uint _2191 = (_2160 <= _2164) ? (_35.Load(uint(_2153 + _2173) * 4 + 0) & _35.Load(uint((_18_m21.y + _2166) + _2173) * 4 + 0)) : 0u;
        uint _2192 = uint(_2173);
        float3 _2196;
        _2172 = _2171;
        _2196 = 0.0f.xxx;
        uint _2199;
        float _2194;
        float3 _2197;
        [loop]
        for (uint _2198 = _2191; _2198 != 0u; _2172 = _2194, _2196 = _2197, _2198 = _2199)
        {
            uint _2203 = firstbitlow(_2198);
            _2199 = _2198 ^ (1u << (_2203 & 31u));
            int _2209 = int((32u * _2192) + _2203) * 8;
            int _2212 = _2209 + 1;
            int _2215 = _2209 + 2;
            int _2218 = _2209 + 3;
            int _2221 = _2209 + 5;
            int _2224 = _2209 + 6;
            int _2227 = _2209 + 7;
            uint _2231 = uint(_54_m6[_2221].w);
            float _2306;
            if ((_2231 & 1u) == 1u)
            {
                uint _2237 = asuint(_54_m6[_2221].x);
                uint _2244 = asuint(_54_m6[_2221].y);
                uint _2251 = asuint(_54_m6[_2221].z);
                uint _2258 = asuint(_54_m6[_2224].x);
                uint _2265 = asuint(_54_m6[_2224].y);
                uint _2272 = asuint(_54_m6[_2224].z);
                float3 _2291 = abs(mul(float4(_410 - _54_m6[_2212].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2237).x, spvUnpackHalf2x16(_2251).x, spvUnpackHalf2x16(_2265).x, 0.0f), float4(spvUnpackHalf2x16(_2237 >> 16u).x, spvUnpackHalf2x16(_2251 >> 16u).x, spvUnpackHalf2x16(_2265 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2244).x, spvUnpackHalf2x16(_2258).x, spvUnpackHalf2x16(_2272).x, 0.0f), float4(spvUnpackHalf2x16(_2244 >> 16u).x, spvUnpackHalf2x16(_2258 >> 16u).x, spvUnpackHalf2x16(_2272 >> 16u).x, 0.0f))).xyz);
                float _2298 = _54_m6[_2227].x * 0.5f;
                float _2304 = 1.0f - clamp((max(max(_2291.x, _2291.y), _2291.z) - (_2298 + 0.5f)) / (0.5f - _2298), 0.0f, 1.0f);
                _2306 = _2304 * _2304;
            }
            else
            {
                _2306 = 1.0f;
            }
            bool _2310 = _54_m6[_2218].z > 0.5f;
            if ((false || (_2306 < 0.001000000047497451305389404296875f)) || _2310)
            {
                _2194 = _2172;
                _2197 = _2196;
                continue;
            }
            float _3421;
            float3 _3422;
            if (_54_m6[_2209].w < 1.5f)
            {
                float3 _2798 = float3(0.100000001490116119384765625f, _533, 1.0f);
                float _2807 = (0.5f + (0.5f * _54_m6[_2215].y)) - abs(_54_m6[_2215].x);
                float _2808 = _54_m6[_2215].y - _2807;
                float _2815 = abs(max((1.0f - abs(_2807)) - abs(_2808), 0.00048828125f));
                float3 _2819 = normalize(float3(_2807, _2808, (_54_m6[_2215].x >= 0.0f) ? _2815 : (-_2815)));
                float3 _2820 = _54_m6[_2212].xyz - _410;
                float _2821 = dot(_2820, _2820);
                float _2822 = rsqrt(_2821);
                float3 _2823 = _2820 * _2822;
                float _2827 = clamp(_54_m6[_2227].y * _2822, 0.0f, 1.0f);
                int _2832 = int(_54_m6[_2227].w);
                float3 _2833 = _2819 * _54_m6[_2215].z;
                float3 _2834 = _2833 * 0.5f;
                float3 _2835 = _2820 - _2834;
                float3 _2836 = _2820 + _2834;
                bool _2839 = (uint(_54_m6[_2209].w) & 1u) == 0u;
                bool _2842 = _2839 || ((_2231 & 2u) != 0u);
                bool _2845 = (!_2839) && (_54_m6[_2215].z > 0.0f);
                float _2864;
                float _2865;
                if (_2845)
                {
                    float _2849 = length(_2835);
                    float _2850 = length(_2836);
                    _2864 = clamp(0.5f * ((dot(_558, _2835) / _2849) + (dot(_558, _2836) / _2850)), 0.0f, 1.0f);
                    _2865 = 1.0f / ((((_2849 * _2850) + dot(_2835, _2836)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2864 = clamp(dot(_558, _2823), 0.0f, 1.0f);
                    _2865 = 1.0f;
                }
                float _2887;
                if (_54_m6[_2224].w < 0.0f)
                {
                    float _2881 = _2821 * (_54_m6[_2212].w * _54_m6[_2212].w);
                    float _2884 = clamp(1.0f - (_2881 * _2881), 0.0f, 1.0f);
                    _2887 = lerp(1.0f / (_2821 + 1.0f), _2865, float(_2845)) * (_2884 * _2884);
                }
                else
                {
                    float3 _2870 = _2820 * _54_m6[_2212].w;
                    _2887 = _2865 * pow(1.0f - clamp(dot(_2870, _2870), 0.0f, 1.0f), _54_m6[_2224].w);
                }
                float _2893 = clamp((dot(_2823, -_2819) - _54_m6[_2215].z) * _54_m6[_2215].w, 0.0f, 1.0f);
                float _2897 = _2887 * lerp(1.0f, _2893 * _2893, float(_2839));
                float _2997;
                if ((!_2845) && (_2832 >= 0))
                {
                    uint _2903 = uint(_2832);
                    float2 _2990;
                    [branch]
                    if (_2839)
                    {
                        float4 _2980 = mul(_74_m1[_2903], _414);
                        _2990 = _74_m0[_2903].xy + (clamp(_2980.xy / _2980.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_2903].zw);
                    }
                    else
                    {
                        float3 _2917 = mul(float4(-_2820, 0.0f), _74_m1[_2903]).xyz;
                        float3 _375 = _2917;
                        float3 _374 = _2917;
                        float3 _373 = abs(_2917);
                        uint _2926 = uint(int(_373.y > _373.x));
                        uint _2932 = (_373.z > _373[_2926]) ? 2u : _2926;
                        uint _2938 = (_2932 * 2u) + uint(_374[_2932] < 0.0f);
                        float _2942 = abs(_375[_2938 / 2u]);
                        float _2962 = 0.5f - (0.000244140625f / _74_m0[_2903].w);
                        _2990 = _74_m0[_2903].xy + (clamp(float2((float(_2938) + ((((_375[uint(_349[_2938].x)] * _350[_2938].x) / _2942) * _2962) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_349[_2938].y)] * _350[_2938].y) / _2942) * _2962)), 0.0f.xx, 1.0f.xx) * _74_m0[_2903].zw);
                    }
                    _2997 = _2897 * _72.SampleLevel(_24, _2990, 0.0f).x;
                }
                else
                {
                    _2997 = _2897;
                }
                bool _2998 = _2997 > 0.0f;
                float _3286;
                if (_2998)
                {
                    int _3050;
                    if (_2842)
                    {
                        _3050 = int(_54_m6[_2218].x);
                    }
                    else
                    {
                        uint _3005 = asuint(_54_m6[_2215].w);
                        uint _3007 = asuint(_54_m6[_2218].x);
                        float3 _3008 = _410 - _54_m6[_2212].xyz;
                        float3 _3009 = abs(_3008);
                        float _3010 = _3009.x;
                        float _3011 = _3009.y;
                        float _3013 = _3009.z;
                        int _3045;
                        if ((_3010 > _3011) && (_3010 > _3013))
                        {
                            _3045 = int((_3008.x > 0.0f) ? (_3005 >> 24u) : ((_3005 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3037;
                            if (_3011 > _3013)
                            {
                                _3037 = int((_3008.y > 0.0f) ? ((_3005 >> 8u) & 255u) : (_3005 & 255u));
                            }
                            else
                            {
                                _3037 = int((_3008.z > 0.0f) ? ((_3007 >> 8u) & 255u) : (_3007 & 255u));
                            }
                            _3045 = _3037;
                        }
                        _3050 = (_3045 < 80) ? _3045 : (-1);
                    }
                    float3 _3060 = (_410 - ((-_2823) * _56_m11[_3050].x)) + (_558 * (_56_m11[_3050].y * 5.0f));
                    float4 _3067 = mul(_56_m10[_3050], float4(_3060, 1.0f));
                    float _3068 = _3067.w;
                    float3 _3071 = _3067.xyz / _3068.xxx;
                    float2 _3072 = _3071.xy;
                    float3 _3080 = _3071.xyz;
                    bool3 _3081 = bool3(_3080.x <= 0.0f.xxx.x, _3080.y <= 0.0f.xxx.y, _3080.z <= 0.0f.xxx.z);
                    bool3 _3082 = bool3(_3080.x >= 1.0f.xxx.x, _3080.y >= 1.0f.xxx.y, _3080.z >= 1.0f.xxx.z);
                    float _3085 = _3071.z;
                    float2 _3096 = ((_3072 * (_56_m12[_3050].zw - _56_m12[_3050].xy)) + _56_m12[_3050].xy).xy * _56_m13.zw;
                    float2 _3098 = floor(_3096 + 0.5f.xx);
                    float2 _3099 = _3096 - _3098;
                    float _3100 = _3099.x;
                    float _3101 = _3100 + 0.5f;
                    float _3102 = _3101 * _3101;
                    float _3105 = 1.0f - _3100;
                    float _3106 = min(_3100, 0.0f);
                    float _3109 = _3100 + 1.0f;
                    float _3110 = max(_3100, 0.0f);
                    float _3121 = _3099.y;
                    float _3122 = _3121 + 0.5f;
                    float _3123 = _3122 * _3122;
                    float _3126 = 1.0f - _3121;
                    float _3127 = min(_3121, 0.0f);
                    float _3130 = _3121 + 1.0f;
                    float _3131 = max(_3121, 0.0f);
                    float3 _3143 = float3(0.1599999964237213134765625f * _3105, 0.1599999964237213134765625f * ((_3109 - (_3110 * _3110)) + 1.0f), _3102 * 0.07999999821186065673828125f);
                    float3 _3144 = float3(0.1599999964237213134765625f * ((_3102 * 0.5f) - _3100), 0.1599999964237213134765625f * ((_3105 - (_3106 * _3106)) + 1.0f), 0.1599999964237213134765625f * _3109) + _3143;
                    float3 _3146 = float3(0.1599999964237213134765625f * _3126, 0.1599999964237213134765625f * ((_3130 - (_3131 * _3131)) + 1.0f), _3123 * 0.07999999821186065673828125f);
                    float3 _3147 = float3(0.1599999964237213134765625f * ((_3123 * 0.5f) - _3121), 0.1599999964237213134765625f * ((_3126 - (_3127 * _3127)) + 1.0f), 0.1599999964237213134765625f * _3130) + _3146;
                    float3 _3153 = ((_3143 / _3144) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                    float3 _3155 = ((_3146 / _3147) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                    float2 _3157 = _3098 * _56_m13.xy;
                    float _3158 = _3153.x;
                    float _3159 = _3155.x;
                    float _3162 = _3153.y;
                    float _3165 = _3153.z;
                    float _3168 = _3155.y;
                    float _3175 = _3155.z;
                    float _3182 = _3144.x;
                    float _3183 = _3147.x;
                    float _3185 = _3144.y;
                    float _3187 = _3144.z;
                    float _3189 = _3147.y;
                    float _3193 = _3147.z;
                    float _3251 = (((((((_3182 * _3183) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3158, _3159), _368).xy, _3085)) + ((_3185 * _3183) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3162, _3159), _368).xy, _3085))) + ((_3187 * _3183) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3165, _3159), _368).xy, _3085))) + ((_3182 * _3189) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3158, _3168), _368).xy, _3085))) + ((_3185 * _3189) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3162, _3168), _368).xy, _3085))) + ((_3187 * _3189) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3165, _3168), _368).xy, _3085))) + ((_3182 * _3193) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3158, _3175), _368).xy, _3085));
                    float2 _3272 = min(_3072, 1.0f.xx - _3072);
                    _3286 = (_3050 >= 0) ? lerp(1.0f, (any(bool3(_3081.x || _3082.x, _3081.y || _3082.y, _3081.z || _3082.z)) || ((asuint(_3085) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3251 + ((_3185 * _3193) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3162, _3175), _368).xy, _3085))) + ((_3187 * _3193) * _58.SampleCmpLevelZero(_27, float3(_3157 + float2(_3165, _3175), _368).xy, _3085))), _2842 ? min(_56_m11[_3050].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_3050].z - _3068) * 0.25f, min(_3272.x, _3272.y)))) : _56_m11[_3050].w) : 1.0f;
                }
                else
                {
                    _3286 = 1.0f;
                }
                float3 _3309;
                float3 _3310;
                if (_2845)
                {
                    float3 _3289 = _2798 * _2798;
                    float _3298 = dot(_1184, _2833);
                    _3309 = _3289 / clamp(_3289 + (0.5f * clamp(_54_m6[_2215].z * _2822, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3310 = normalize(_2835 + (_2833 * clamp(dot(_2835, (_1184 * _3298) - _2833) / ((_54_m6[_2215].z * _54_m6[_2215].z) - (_3298 * _3298)), 0.0f, 1.0f)));
                }
                else
                {
                    _3309 = 1.0f.xxx;
                    _3310 = _2823;
                }
                float3 _3311 = _3310 + _447;
                float3 _3315 = _3311 * rsqrt(max(6.103515625e-05f, dot(_3311, _3311)));
                float3 _3420;
                if (_2998)
                {
                    float _3318 = clamp(_2864, 0.0f, 1.0f);
                    float _3320 = clamp(dot(_558, _3315), 0.0f, 1.0f);
                    float _3322 = clamp(dot(_447, _3315), 0.0f, 1.0f);
                    float _3323 = clamp(_584, 0.0f, 1.0f);
                    float _3324 = _533 * _533;
                    float _3334;
                    if (_2827 > 0.0f)
                    {
                        _3334 = clamp(_3324 + ((_2827 * _2827) / ((_3322 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3334 = _3324;
                    }
                    float _3335 = _3334 * _3334;
                    float _3356 = (((_3320 * _3335) - _3320) * _3320) + 1.0f;
                    float _3361 = 1.0f - _3322;
                    float _3362 = _3361 * _3361;
                    float _3364 = (_3361 * _3362) * _3362;
                    float _3388 = 1.0f - _533;
                    float _3395 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3388 * (1.04997003078460693359375f + (_3388 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3388))))));
                    float _3396 = 1.0f - _3395;
                    float3 _3399 = _707 + ((1.0f.xxx - _707) * 0.0476190485060214996337890625f);
                    float3 _3419 = ((clamp((min(((_707 * (1.0f - _3364)) + _3364.xxx) * (((_3335 / (_3356 * _3356)) * _3309.y) * (0.5f / (((_3318 * sqrt(((((-_3323) * _3335) + _3323) * _3323) + _3335)) + (_3323 * sqrt(((((-_3318) * _3335) + _3318) * _3318) + _3335))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3399 * (((_64.SampleLevel(_24, (float2(_3323, _533) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_3318, _533) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3395) / _3396)) * _3399) / (1.0f.xxx - (_3399 * _3396)))) * _54_m6[_2227].z, 0.0f.xxx, 1000.0f.xxx) * _2864) + ((_703 * _3309.z) * _2864)) * (((_54_m6[_2209].xyz * _2997) * _3286) * _2306);
                    _3420 = _3419;
                }
                else
                {
                    _3420 = 0.0f.xxx;
                }
                _3421 = _2172;
                _3422 = _3420;
            }
            else
            {
                float _2796;
                do
                {
                    if (_2310)
                    {
                        _2796 = 1.0f;
                        break;
                    }
                    float _2330 = (0.5f + (0.5f * _54_m6[_2215].y)) - abs(_54_m6[_2215].x);
                    float _2331 = _54_m6[_2215].y - _2330;
                    float _2338 = abs(max((1.0f - abs(_2330)) - abs(_2331), 0.00048828125f));
                    float3 _2342 = normalize(float3(_2330, _2331, (_54_m6[_2215].x >= 0.0f) ? _2338 : (-_2338)));
                    float3 _2343 = _54_m6[_2212].xyz - _410;
                    float _2344 = dot(_2343, _2343);
                    float3 _2346 = _2343 * rsqrt(_2344);
                    int _2349 = int(_54_m6[_2227].w);
                    float3 _2351 = (_2342 * _54_m6[_2215].z) * 0.5f;
                    float3 _2352 = _2343 - _2351;
                    float3 _2353 = _2343 + _2351;
                    bool _2356 = (uint(_54_m6[_2209].w) & 1u) == 0u;
                    bool _2359 = _2356 || ((_2231 & 2u) != 0u);
                    bool _2362 = (!_2356) && (_54_m6[_2215].z > 0.0f);
                    float _2374;
                    if (_2362)
                    {
                        _2374 = 1.0f / ((((length(_2352) * length(_2353)) + dot(_2352, _2353)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2374 = 1.0f;
                    }
                    float _2396;
                    if (_54_m6[_2224].w < 0.0f)
                    {
                        float _2390 = _2344 * (_54_m6[_2212].w * _54_m6[_2212].w);
                        float _2393 = clamp(1.0f - (_2390 * _2390), 0.0f, 1.0f);
                        _2396 = lerp(1.0f / (_2344 + 1.0f), _2374, float(_2362)) * (_2393 * _2393);
                    }
                    else
                    {
                        float3 _2379 = _2343 * _54_m6[_2212].w;
                        _2396 = _2374 * pow(1.0f - clamp(dot(_2379, _2379), 0.0f, 1.0f), _54_m6[_2224].w);
                    }
                    float _2402 = clamp((dot(_2346, -_2342) - _54_m6[_2215].z) * _54_m6[_2215].w, 0.0f, 1.0f);
                    float _2406 = _2396 * lerp(1.0f, _2402 * _2402, float(_2356));
                    float _2506;
                    if ((!_2362) && (_2349 >= 0))
                    {
                        uint _2412 = uint(_2349);
                        float2 _2499;
                        [branch]
                        if (_2356)
                        {
                            float4 _2489 = mul(_74_m1[_2412], _414);
                            _2499 = _74_m0[_2412].xy + (clamp(_2489.xy / _2489.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_2412].zw);
                        }
                        else
                        {
                            float3 _2426 = mul(float4(-_2343, 0.0f), _74_m1[_2412]).xyz;
                            float3 _378 = _2426;
                            float3 _377 = _2426;
                            float3 _376 = abs(_2426);
                            uint _2435 = uint(int(_376.y > _376.x));
                            uint _2441 = (_376.z > _376[_2435]) ? 2u : _2435;
                            uint _2447 = (_2441 * 2u) + uint(_377[_2441] < 0.0f);
                            float _2451 = abs(_378[_2447 / 2u]);
                            float _2471 = 0.5f - (0.000244140625f / _74_m0[_2412].w);
                            _2499 = _74_m0[_2412].xy + (clamp(float2((float(_2447) + ((((_378[uint(_349[_2447].x)] * _350[_2447].x) / _2451) * _2471) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_378[uint(_349[_2447].y)] * _350[_2447].y) / _2451) * _2471)), 0.0f.xx, 1.0f.xx) * _74_m0[_2412].zw);
                        }
                        _2506 = _2406 * _72.SampleLevel(_24, _2499, 0.0f).x;
                    }
                    else
                    {
                        _2506 = _2406;
                    }
                    float _2795;
                    if (_2506 > 0.0f)
                    {
                        int _2559;
                        if (_2359)
                        {
                            _2559 = int(_54_m6[_2218].x);
                        }
                        else
                        {
                            uint _2514 = asuint(_54_m6[_2215].w);
                            uint _2516 = asuint(_54_m6[_2218].x);
                            float3 _2517 = _410 - _54_m6[_2212].xyz;
                            float3 _2518 = abs(_2517);
                            float _2519 = _2518.x;
                            float _2520 = _2518.y;
                            float _2522 = _2518.z;
                            int _2554;
                            if ((_2519 > _2520) && (_2519 > _2522))
                            {
                                _2554 = int((_2517.x > 0.0f) ? (_2514 >> 24u) : ((_2514 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2546;
                                if (_2520 > _2522)
                                {
                                    _2546 = int((_2517.y > 0.0f) ? ((_2514 >> 8u) & 255u) : (_2514 & 255u));
                                }
                                else
                                {
                                    _2546 = int((_2517.z > 0.0f) ? ((_2516 >> 8u) & 255u) : (_2516 & 255u));
                                }
                                _2554 = _2546;
                            }
                            _2559 = (_2554 < 80) ? _2554 : (-1);
                        }
                        float3 _2569 = (_410 - ((-_2346) * _56_m11[_2559].x)) + (_558 * (_56_m11[_2559].y * 5.0f));
                        float4 _2576 = mul(_56_m10[_2559], float4(_2569, 1.0f));
                        float _2577 = _2576.w;
                        float3 _2580 = _2576.xyz / _2577.xxx;
                        float2 _2581 = _2580.xy;
                        float3 _2589 = _2580.xyz;
                        bool3 _2590 = bool3(_2589.x <= 0.0f.xxx.x, _2589.y <= 0.0f.xxx.y, _2589.z <= 0.0f.xxx.z);
                        bool3 _2591 = bool3(_2589.x >= 1.0f.xxx.x, _2589.y >= 1.0f.xxx.y, _2589.z >= 1.0f.xxx.z);
                        float _2594 = _2580.z;
                        float2 _2605 = ((_2581 * (_56_m12[_2559].zw - _56_m12[_2559].xy)) + _56_m12[_2559].xy).xy * _56_m13.zw;
                        float2 _2607 = floor(_2605 + 0.5f.xx);
                        float2 _2608 = _2605 - _2607;
                        float _2609 = _2608.x;
                        float _2610 = _2609 + 0.5f;
                        float _2611 = _2610 * _2610;
                        float _2614 = 1.0f - _2609;
                        float _2615 = min(_2609, 0.0f);
                        float _2618 = _2609 + 1.0f;
                        float _2619 = max(_2609, 0.0f);
                        float _2630 = _2608.y;
                        float _2631 = _2630 + 0.5f;
                        float _2632 = _2631 * _2631;
                        float _2635 = 1.0f - _2630;
                        float _2636 = min(_2630, 0.0f);
                        float _2639 = _2630 + 1.0f;
                        float _2640 = max(_2630, 0.0f);
                        float3 _2652 = float3(0.1599999964237213134765625f * _2614, 0.1599999964237213134765625f * ((_2618 - (_2619 * _2619)) + 1.0f), _2611 * 0.07999999821186065673828125f);
                        float3 _2653 = float3(0.1599999964237213134765625f * ((_2611 * 0.5f) - _2609), 0.1599999964237213134765625f * ((_2614 - (_2615 * _2615)) + 1.0f), 0.1599999964237213134765625f * _2618) + _2652;
                        float3 _2655 = float3(0.1599999964237213134765625f * _2635, 0.1599999964237213134765625f * ((_2639 - (_2640 * _2640)) + 1.0f), _2632 * 0.07999999821186065673828125f);
                        float3 _2656 = float3(0.1599999964237213134765625f * ((_2632 * 0.5f) - _2630), 0.1599999964237213134765625f * ((_2635 - (_2636 * _2636)) + 1.0f), 0.1599999964237213134765625f * _2639) + _2655;
                        float3 _2662 = ((_2652 / _2653) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.xxx;
                        float3 _2664 = ((_2655 / _2656) + float3(-2.5f, -0.5f, 1.5f)) * _56_m13.yyy;
                        float2 _2666 = _2607 * _56_m13.xy;
                        float _2667 = _2662.x;
                        float _2668 = _2664.x;
                        float _2671 = _2662.y;
                        float _2674 = _2662.z;
                        float _2677 = _2664.y;
                        float _2684 = _2664.z;
                        float _2691 = _2653.x;
                        float _2692 = _2656.x;
                        float _2694 = _2653.y;
                        float _2696 = _2653.z;
                        float _2698 = _2656.y;
                        float _2702 = _2656.z;
                        float _2760 = (((((((_2691 * _2692) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2667, _2668), _368).xy, _2594)) + ((_2694 * _2692) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2671, _2668), _368).xy, _2594))) + ((_2696 * _2692) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2674, _2668), _368).xy, _2594))) + ((_2691 * _2698) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2667, _2677), _368).xy, _2594))) + ((_2694 * _2698) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2671, _2677), _368).xy, _2594))) + ((_2696 * _2698) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2674, _2677), _368).xy, _2594))) + ((_2691 * _2702) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2667, _2684), _368).xy, _2594));
                        float2 _2781 = min(_2581, 1.0f.xx - _2581);
                        _2795 = (_2559 >= 0) ? lerp(1.0f, (any(bool3(_2590.x || _2591.x, _2590.y || _2591.y, _2590.z || _2591.z)) || ((asuint(_2594) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2760 + ((_2694 * _2702) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2671, _2684), _368).xy, _2594))) + ((_2696 * _2702) * _58.SampleCmpLevelZero(_27, float3(_2666 + float2(_2674, _2684), _368).xy, _2594))), _2359 ? min(_56_m11[_2559].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_56_m11[_2559].z - _2577) * 0.25f, min(_2781.x, _2781.y)))) : _56_m11[_2559].w) : 1.0f;
                    }
                    else
                    {
                        _2795 = 1.0f;
                    }
                    _2796 = _2795;
                    break;
                } while(false);
                _3421 = _2172 * _2796;
                _3422 = 0.0f.xxx;
            }
            _2194 = _3421;
            _2197 = _2196 + _3422;
        }
        _2169 = _2168 + _2196;
    }
    float3 _3432 = ((((float3(_1164, _1169, _1174) * (_703 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _503.z, _47_m4)) * _18_m22.x) + (((_1484 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * ((_707 * _721.x) + (clamp(50.0f * _707.y, 0.0f, 1.0f) * _721.y).xxx)) * 1.0f)) + lerp((_2143.xyz + ((_2168 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2171)).xyz, (_644.xyz * (_47_m54.xyz * _47_m52)).xyz, clamp((1.0f - _528) / max(1.0f - _47_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
    float4 _3433 = float4(_3432.x, _3432.y, _3432.z, _370.w);
    _3433.w = _528;
    float _3450 = _410.y * _18_m46.w;
    float _3455 = max(0.00999999977648258209228515625f, _3450 + _18_m47.w);
    float3 _3469 = exp(_18_m45.xyz * ((-max(0.0f, (_448 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3455)) / _3455) * exp(_3450 + _18_m48.w))));
    float _3472 = dot(_585, _18_m44.xyz);
    float _3478 = _18_m45.w * _18_m45.w;
    float _3482 = (1.0f + _3478) - ((2.0f * _18_m45.w) * _3472);
    float3 _3812;
    float _3813;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3640 = (uint3(int3(int(_757.x), int(_757.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3641 = _3640.y;
        uint _3642 = _3640.z;
        uint _3645 = _3640.x + (_3641 * _3642);
        uint _3647 = _3641 + (_3642 * _3645);
        uint _3649 = _3642 + (_3645 * _3647);
        uint _3651 = _3645 + (_3647 * _3649);
        float _3673 = dot(_585, -_16_m0[2].xyz);
        float3 _3683 = _410 - _16_m11.xyz;
        float _3685 = (_18_m55.w * ((_3673 > 5.9604644775390625e-08f) ? (1.0f / _3673) : 0.0f)) * (1.0f / _448);
        float _3686 = _3683.y;
        float _3687 = _3685 * _3686;
        float _3689 = _16_m11.y + _3687;
        float _3690 = _3686 - _3687;
        float _3692 = (1.0f - _3685) * _448;
        float _3706 = max(-127.0f, _18_m49.z * _3690);
        float _3730 = max(-127.0f, _18_m52.x * _3690);
        float _3741 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3689 - _18_m49.x)))) * ((abs(_3706) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3706)) / _3706) : (0.693147182464599609375f - (0.2402265071868896484375f * _3706)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3689 - _18_m52.z)))) * ((abs(_3730) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3730)) / _3730) : (0.693147182464599609375f - (0.2402265071868896484375f * _3730))));
        float _3763 = clamp((_448 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3766 = clamp((max(clamp(exp2(-(_3741 * _3692)), 0.0f, 1.0f), _18_m51.w) + clamp((_448 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3763, 0.0f, 1.0f);
        float4 _3806 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_24, float3((_1193 + ((((float3(uint3(_3651, _3647 + (_3649 * _3651), _371) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_758 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_758 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3812 = _3806.xyz + (((_18_m51.xyz * (1.0f - _3766)) + (((_18_m54.xyz * pow(clamp(dot(_447, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3741 * max(_3692 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3763))) * _3806.w);
        _3813 = _3806.w * _3766;
    }
    else
    {
        float3 _3512 = _410 - _16_m11.xyz;
        float _3514 = _3512.y;
        float _3528 = max(-127.0f, _18_m49.z * _3514);
        float _3552 = max(-127.0f, _18_m52.x * _3514);
        float _3563 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3528) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3528)) / _3528) : (0.693147182464599609375f - (0.2402265071868896484375f * _3528)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3552) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3552)) / _3552) : (0.693147182464599609375f - (0.2402265071868896484375f * _3552))));
        float _3585 = clamp((_448 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3588 = clamp((max(clamp(exp2(-(_3563 * _448)), 0.0f, 1.0f), _18_m51.w) + clamp((_448 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3585, 0.0f, 1.0f);
        _3812 = (_18_m51.xyz * (1.0f - _3588)) + (((_18_m54.xyz * pow(clamp(dot(_447, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3563 * max(_448 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3585));
        _3813 = _3588;
    }
    float3 _3819 = ((_3433.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3469 * _3813)) : (_3469 * _3813))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3472 * _3472)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3478) / max((12.56637096405029296875f * _3482) * sqrt(_3482), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3469)) * _3813 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3812 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
    float3 _3829 = lerp(dot(_3819, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3819, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3839 = min(lerp(((sqrt(sqrt(abs(_675 * 0.5f))) * float2(int2(sign(_675)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _662.xx), 1.0f.xx);
    float4 _3840 = float4(_3839.x, _3839.y, _370.z, _370.w);
    _3840.z = float(clamp(max(dot(_3829.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _528, _528) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3840.w = lerp(0.0f, 0.699999988079071044921875f, _662);
    float3 renodx_output_color = float3(_3829.x, _3829.y, _3829.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3433.w);
    _14 = _3840;
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
