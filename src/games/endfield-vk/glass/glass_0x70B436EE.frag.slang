#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x10F48E71.
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
    float _395 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _400 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _402 = abs(_400);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _402 : (-_402)), (1.0f - _395) - _400) < 0.0f)
    {
        discard;
    }
    float2 _419 = gl_FragCoord.xy * _18_m0.zw;
    float2 _422 = (_419 * 2.0f) - 1.0f.xx;
    float4 _425 = float4(_422, gl_FragCoord.z, 1.0f);
    _425.y = -_422.y;
    float4 _428 = mul(_16_m6, _425);
    float3 _432 = _428.xyz / _428.w.xxx;
    float4 _436 = float4(_432, 1.0f);
    float _443 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _465;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _465 = _16_m11.xyz - _432;
            break;
        }
        else
        {
            _465 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _466 = dot(_465, _465);
    float _468 = rsqrt(max(_466, 9.9999999392252902907785028219223e-09f));
    float3 _469 = _465 * _468;
    float _470 = _466 * _468;
    float4 _503 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float _505 = _503.w;
    float4 _508 = _34.SampleBias(_35, (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw, _39_m13 + _18_m16);
    float2 _511 = (_508.xy * 2.0f.xx) - 1.0f.xx;
    float2 _512 = abs(_511);
    bool2 _513 = bool2(_512.x < 0.01200000010430812835693359375f.xx.x, _512.y < 0.01200000010430812835693359375f.xx.y);
    float2 _514 = float2(_513.x ? 0.0f.xx.x : _511.x, _513.y ? 0.0f.xx.y : _511.y);
    float2 _515 = _514 * _39_m0;
    float _522 = _508.z;
    float _523 = _508.w;
    float _541 = lerp(_505, _523, _39_m6) * _39_m32.w;
    float _547 = lerp(_541, _541 * _8.x, _39_m63);
    float _552 = lerp(_39_m2, _39_m3, _522);
    float _562 = lerp(_505, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float _570 = clamp(_39_m56, 0.0f, 1.0f);
    float _580 = clamp((lerp(1.0f, lerp(lerp(_505, _522, clamp(_39_m56 - 1.0f, 0.0f, 1.0f)), _523, clamp(_39_m56 - 2.0f, 0.0f, 1.0f)), _570) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
    float _603 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _580);
    float3 _608 = lerp(clamp((_503.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _603).xxx + (_21_m0[_11]._m9.xyz * _603));
    float3 _631 = normalize(((_7.xyz * _515.x) + ((cross(_6, float4(_7.xyz, _443).xyz) * _443) * _515.y)) + (_6 * (sqrt(clamp(1.0f - dot(_514, _514), 0.0f, 1.0f)) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float3 _634 = -_469;
    float4 _655 = _36.SampleBias(_37, _419 + ((mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_634, _631, _39_m59)) * _39_m60).xy * _547), _18_m16);
    float _660 = clamp(float(int(sign(_395 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _673 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _673.y = -_673.y;
    float _699 = 0.07999999821186065673828125f * _39_m1;
    float3 _700 = _608 * _562;
    float3 _701 = _608 - _700;
    float3 _705 = (_699 - (_699 * _562)).xxx + _700;
    float _706 = dot(_631, _469);
    float4 _709 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _552) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _710 = _709.x;
    float2 _720 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_710 * _710, exp2((-9.27999973297119140625f) * max(0.0f, _706))) * _710) + _709.y)) + _709.zw;
    uint2 _760;
    float _761;
    if (_18_m24.y == 1.0f)
    {
        float4 _737 = mul(_18_m135, _436);
        float4 _740 = _737;
        _740.y = -_737.y;
        float4 _743 = _740 * (1.0f / _737.w);
        _760 = uint2(clamp(((_743.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _761 = 1.0f / ((_18_m2.z * _743.z) + _18_m2.w);
    }
    else
    {
        _760 = uint2(gl_FragCoord.xy);
        _761 = abs(mul(_16_m0, _436).z);
    }
    float3 _763 = _432 + (_631 * 0.25f);
    float3 _773 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _782 = _763 - (_18_m105.xyz + (_773 * (-_18_m107.w)));
    float _796 = max(clamp((max(abs(_782.x), abs(_782.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_782.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1098;
    float4 _1099;
    float4 _1100;
    float _1101;
    float _1102;
    if ((_18_m105.w != 0.0f) && (_796 < 1.0f))
    {
        float3 _809 = _763 - (_18_m105.xyz + (_773 * (-_18_m107.y)));
        float _823 = max(clamp((max(abs(_809.x), abs(_809.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_809.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _899;
        float4 _900;
        float4 _901;
        float4 _902;
        if (_823 < 1.0f)
        {
            float3 _832 = ((_763 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _834 = _832 - floor(_832);
            float4 _838 = _57.SampleLevel(_24, _834, 0.0f);
            float _839 = 1.0f - _823;
            float _843 = _18_m106.y * 0.5f;
            float _848 = _834.x;
            float _849 = clamp(_834.y, _843, 1.0f - _843) * 0.3333333432674407958984375f;
            float _850 = _834.z;
            float4 _853 = _58.SampleLevel(_23, float3(_848, _849, _850), 0.0f);
            float _869 = _838.x;
            float _879 = _838.y;
            float _889 = _838.z;
            _899 = _796 + (_853.w * _839);
            _900 = float4(((_58.SampleLevel(_23, float3(_848, _849 + 0.666666686534881591796875f, _850), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _889, _889) * _839;
            _901 = float4(((_58.SampleLevel(_23, float3(_848, _849 + 0.3333333432674407958984375f, _850), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _879, _879) * _839;
            _902 = float4(((_853.xyz * 4.0f) - 2.0f.xxx) * _869, _869) * _839;
        }
        else
        {
            _899 = _796;
            _900 = 0.0f.xxxx;
            _901 = 0.0f.xxxx;
            _902 = 0.0f.xxxx;
        }
        float3 _908 = _763 - (_18_m105.xyz + (_773 * (-_18_m107.z)));
        float _922 = max(clamp((max(abs(_908.x), abs(_908.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_908.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1002;
        float4 _1003;
        float4 _1004;
        float4 _1005;
        if (_922 < 1.0f)
        {
            float3 _931 = ((_763 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _933 = _931 - floor(_931);
            float4 _937 = _59.SampleLevel(_24, _933, 0.0f);
            float _939 = _823 * (1.0f - _922);
            float _943 = _18_m106.y * 0.5f;
            float _948 = _933.x;
            float _949 = clamp(_933.y, _943, 1.0f - _943) * 0.3333333432674407958984375f;
            float _950 = _933.z;
            float4 _953 = _60.SampleLevel(_23, float3(_948, _949, _950), 0.0f);
            float _969 = _937.x;
            float _980 = _937.y;
            float _991 = _937.z;
            _1002 = _899 + (_953.w * _939);
            _1003 = _900 + (float4(((_60.SampleLevel(_23, float3(_948, _949 + 0.666666686534881591796875f, _950), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _991, _991) * _939);
            _1004 = _901 + (float4(((_60.SampleLevel(_23, float3(_948, _949 + 0.3333333432674407958984375f, _950), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _980, _980) * _939);
            _1005 = _902 + (float4(((_953.xyz * 4.0f) - 2.0f.xxx) * _969, _969) * _939);
        }
        else
        {
            _1002 = _899;
            _1003 = _900;
            _1004 = _901;
            _1005 = _902;
        }
        float4 _1088;
        float4 _1089;
        float4 _1090;
        float _1091;
        if (_922 > 0.0f)
        {
            float3 _1014 = ((_763 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _1017 = _18_m106.xyz * 0.5f;
            float3 _1019 = clamp(_1014 - floor(_1014), _1017, 1.0f.xxx - _1017);
            float4 _1023 = _61.SampleLevel(_24, _1019, 0.0f);
            float _1025 = _922 * (1.0f - _796);
            float _1029 = _18_m106.y * 0.5f;
            float _1034 = _1019.x;
            float _1035 = clamp(_1019.y, _1029, 1.0f - _1029) * 0.3333333432674407958984375f;
            float _1036 = _1019.z;
            float4 _1039 = _62.SampleLevel(_23, float3(_1034, _1035, _1036), 0.0f);
            float _1055 = _1023.x;
            float _1066 = _1023.y;
            float _1077 = _1023.z;
            _1088 = _1003 + (float4(((_62.SampleLevel(_23, float3(_1034, _1035 + 0.666666686534881591796875f, _1036), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1077, _1077) * _1025);
            _1089 = _1004 + (float4(((_62.SampleLevel(_23, float3(_1034, _1035 + 0.3333333432674407958984375f, _1036), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1066, _1066) * _1025);
            _1090 = _1005 + (float4(((_1039.xyz * 4.0f) - 2.0f.xxx) * _1055, _1055) * _1025);
            _1091 = _1002 + (_1039.w * _1025);
        }
        else
        {
            _1088 = _1003;
            _1089 = _1004;
            _1090 = _1005;
            _1091 = _1002;
        }
        float _1094 = clamp((_1091 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1098 = _1088;
        _1099 = _1089;
        _1100 = _1090;
        _1101 = _1094 - _796;
        _1102 = (_1094 + _796) * 0.5f;
    }
    else
    {
        _1098 = 0.0f.xxxx;
        _1099 = 0.0f.xxxx;
        _1100 = 0.0f.xxxx;
        _1101 = 0.0f;
        _1102 = 1.0f;
    }
    float4 _1122 = _1100 + float4(_18_m108.x * _1102, (_18_m108.y * _1102) + ((_18_m108.w * _1101) * 0.5f), _18_m108.z * _1102, (_18_m108.w * _1102) + ((_18_m108.y * _1101) * 0.375f));
    float4 _1142 = _1099 + float4(_18_m109.x * _1102, (_18_m109.y * _1102) + ((_18_m109.w * _1101) * 0.5f), _18_m109.z * _1102, (_18_m109.w * _1102) + ((_18_m109.y * _1101) * 0.375f));
    float4 _1162 = _1098 + float4(_18_m110.x * _1102, (_18_m110.y * _1102) + ((_18_m110.w * _1101) * 0.5f), _18_m110.z * _1102, (_18_m110.w * _1102) + ((_18_m110.y * _1101) * 0.375f));
    float _1167 = max(0.0f, dot(_1122.xyz, _631) + _1122.w);
    float _1172 = max(0.0f, dot(_1142.xyz, _631) + _1142.w);
    float _1177 = max(0.0f, dot(_1162.xyz, _631) + _1162.w);
    float3 _1187 = reflect(_634, _631);
    float _1195 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_552, 0.001000000047497451305389404296875f))));
    float2 _1196 = float2(_760);
    float2 _1200 = floor(_1196 * _42_m0.w);
    float _1217 = floor(_761 - _42_m2.y);
    float _1221 = clamp(_1217, 0.0f, _42_m1.x - 1.0f);
    uint _1231 = (_1217 <= _1221) ? (_31.Load(uint(_18_m21.z + int(_1200.x + (_1200.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1221)) * 4 + 0)) : 0u;
    float _1234 = dot(float4(_1167, _1172, _1177, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1236;
    float _1239;
    uint _1241;
    _1236 = 0.0f.xxx;
    _1239 = 1.0f;
    _1241 = _1231;
    uint _1242;
    float3 _1237;
    float _1240;
    bool _1244;
    [loop]
    for (;;)
    {
        _1244 = _1239 > 0.00999999977648258209228515625f;
        if ((_1241 != 0u) && _1244)
        {
            uint _1248 = firstbitlow(_1241);
            _1242 = _1241 ^ (1u << (_1248 & 31u));
            float3 _1268 = float3(dot(_42_m4[_1248]._m2, _436), dot(_42_m4[_1248]._m3, _436), dot(_42_m4[_1248]._m4, _436));
            float3 _1269 = abs(_1268);
            if (all(bool3(_1269.x <= _42_m4[_1248]._m1.xyz.x, _1269.y <= _42_m4[_1248]._m1.xyz.y, _1269.z <= _42_m4[_1248]._m1.xyz.z)))
            {
                float3 _1278 = _42_m4[_1248]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1280 = _1269 * 0.100000001490116119384765625f;
                float3 _1281 = _1280 * _1280;
                float3 _1284 = (_42_m4[_1248]._m1.xyz - _1269) * _42_m4[_1248]._m5.xyz;
                float3 _1332;
                [branch]
                if (_42_m4[_1248]._m6.x == 1.0f)
                {
                    float3 _1317 = float3(dot(_42_m4[_1248]._m2.xyz, _1187), dot(_42_m4[_1248]._m3.xyz, _1187), dot(_42_m4[_1248]._m4.xyz, _1187));
                    float3 _1319 = (_42_m4[_1248]._m1.xyz - _1268) / _1317;
                    float3 _1322 = ((-_42_m4[_1248]._m1.xyz) - _1268) / _1317;
                    bool3 _1323 = bool3(_1317.x > 0.0f.xxx.x, _1317.y > 0.0f.xxx.y, _1317.z > 0.0f.xxx.z);
                    float3 _1324 = float3(_1323.x ? _1319.x : _1322.x, _1323.y ? _1319.y : _1322.y, _1323.z ? _1319.z : _1322.z);
                    _1332 = _1268 + (_1317 * min(min(_1324.x, _1324.y), _1324.z));
                }
                else
                {
                    _1332 = _1187;
                }
                float3 _1333 = normalize(_1332);
                float3 _1336 = float3(int3(sign(_1333)));
                float3 _1339 = _1333 / dot(_1333, _1336).xxx;
                float3 _1353;
                if (_1339.z < 0.0f)
                {
                    float3 _1344 = abs(_1339);
                    float2 _1351 = _1336.xy * float2(1.0f - _1344.y, 1.0f - _1344.x);
                    _1353 = float3(_1351.x, _1351.y, _1339.z);
                }
                else
                {
                    _1353 = _1339;
                }
                float _1378 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1248]._m0, float4(_631, 1.0f))));
                float _1391 = clamp((min(_1284.x, min(_1284.y, _1284.z)) * _42_m4[_1248]._m6.y) + ((((((_1278 * _1278).x - ((_1281.x + _1281.y) + _1281.z)) * _42_m4[_1248]._m5.x) * _42_m4[_1248]._m5.x) * (1.0f - _42_m4[_1248]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1248]._m6.w;
                _1237 = _1236 + ((((_29.SampleLevel(_25, float3((((_1353.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1248]._m1.w), _1195).xyz * _42_m4[_1248]._m5.w) * ((((((clamp(abs(_1234 / _1378), 0.0f, 1.0f) * 2.0f) + _1234) / (2.0f + _1378)) - 1.0f) * _18_m23.w) + 1.0f)) * _1391) * _1239);
                _1240 = _1239 * (1.0f - _1391);
            }
            else
            {
                _1237 = _1236;
                _1240 = _1239;
            }
            _1236 = _1237;
            _1239 = _1240;
            _1241 = _1242;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1460;
    if (_1244)
    {
        float3 _1399 = normalize(_1187);
        float3 _1402 = float3(int3(sign(_1399)));
        float3 _1405 = _1399 / dot(_1399, _1402).xxx;
        float3 _1419;
        if (_1405.z < 0.0f)
        {
            float3 _1410 = abs(_1405);
            float2 _1417 = _1402.xy * float2(1.0f - _1410.y, 1.0f - _1410.x);
            _1419 = float3(_1417.x, _1417.y, _1405.z);
        }
        else
        {
            _1419 = _1405;
        }
        float _1446 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_631, 1.0f))));
        _1460 = _1236 + ((_29.SampleLevel(_25, float3((((_1419.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1195).xyz * ((((((clamp(abs(_1234 / _1446), 0.0f, 1.0f) * 2.0f) + _1234) / (2.0f + _1446)) - 1.0f) * _18_m23.w) + 1.0f)) * _1239);
    }
    else
    {
        _1460 = _1236;
    }
    float2 _1981;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _1981 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1482 = int(_48_m7.x);
        bool3 _1484 = (_1482 == 2).xxx;
        float3 _1492 = _432 - float3(_1484.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1484.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1484.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1503 = max(clamp((_48_m6.w - dot(_1492, _1492)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1720;
        bool _1721;
        if (_1503 > 0.0f)
        {
            float _1718;
            bool _1719;
            if (_1482 > 0)
            {
                float3 _1510 = _432 - _48_m1[0].xyz;
                float3 _1514 = _432 - _48_m1[1].xyz;
                float3 _1518 = _432 - _48_m1[2].xyz;
                float3 _1522 = _432 - _48_m1[3].xyz;
                float4 _1527 = float4(dot(_1510, _1510), dot(_1514, _1514), dot(_1518, _1518), dot(_1522, _1522));
                float4 _1536 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1538 = float4(bool4(_1527.x < _1536.x, _1527.y < _1536.y, _1527.z < _1536.z, _1527.w < _1536.w));
                float3 _1542 = clamp(_1538.yzw - _1538.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1546 = clamp(4.0f - dot(float4(_1538.x, _1542.x, _1542.y, _1542.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1548 = clamp(_1546 + 1.0f, 0.0f, 3.0f);
                uint _1549 = uint(_1546);
                uint _1557 = uint(_1548);
                float _1563 = dot(_1527, _348[_1557]) / _48_m1[_1557].w;
                float _1580;
                if (((_1548 > _1546) && (_1563 >= 0.0f)) && (_1563 <= 1.0f))
                {
                    _1580 = _1546 + step(frac(52.98291778564453125f * frac(dot(_1196 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1527, _348[_1549]) / _48_m1[_1549].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1580 = _1546;
                }
                float _1581 = clamp(_1580, 0.0f, 4.0f);
                float4 _1585 = mul(_48_m0[uint(_1581)], _436);
                float _1588 = _1585.z;
                float4 _1589 = float4(_1585.xy, _1588, _1581);
                float3 _1590 = _1589.xyz;
                bool3 _1591 = bool3(_1590.x <= 0.0f.xxx.x, _1590.y <= 0.0f.xxx.y, _1590.z <= 0.0f.xxx.z);
                bool3 _1592 = bool3(_1590.x >= 1.0f.xxx.x, _1590.y >= 1.0f.xxx.y, _1590.z >= 1.0f.xxx.z);
                bool _1598 = any(bool3(_1591.x || _1592.x, _1591.y || _1592.y, _1591.z || _1592.z)) || ((asuint(_1588) & 2147483647u) > 2139095040u);
                int _1599 = int(_1581);
                float2 _1616 = float4(_48_m3[_1599].xy + (_1589.xy * _48_m3[_1599].zw), _1588, _1581).xy * _48_m4.zw;
                float2 _1618 = floor(_1616 + 0.5f.xx);
                float2 _1619 = _1616 - _1618;
                float _1620 = _1619.x;
                float _1621 = _1620 + 0.5f;
                float _1623 = (_1621 * _1621) * 0.5f;
                float _1626 = min(_1620, 0.0f);
                float _1630 = max(_1620, 0.0f);
                float4 _1634 = float4(_1623 - _1620, (1.0f - _1620) - (_1626 * _1626), (_1620 + 1.0f) - (_1630 * _1630), _1623) * 0.44444000720977783203125f;
                float _1635 = _1619.y;
                float _1636 = _1635 + 0.5f;
                float _1638 = (_1636 * _1636) * 0.5f;
                float _1641 = min(_1635, 0.0f);
                float _1645 = max(_1635, 0.0f);
                float4 _1649 = float4(_1638 - _1635, (1.0f - _1635) - (_1641 * _1641), (_1635 + 1.0f) - (_1645 * _1645), _1638) * 0.44444000720977783203125f;
                float2 _1651 = _1634.yw;
                float2 _1652 = _1634.xz + _1651;
                float2 _1654 = _1649.yw;
                float2 _1655 = _1649.xz + _1654;
                float2 _1661 = ((_1651 / _1652) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1663 = ((_1654 / _1655) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1665 = _1618 * _48_m4.xy;
                float _1666 = _1661.x;
                float _1667 = _1663.x;
                float _1670 = _1661.y;
                float _1673 = _1663.y;
                float _1678 = _1652.x;
                float _1679 = _1655.x;
                float _1681 = _1652.y;
                float _1683 = _1655.y;
                _1718 = _1598 ? 1.0f : (((((_1678 * _1679) * _49.SampleCmpLevelZero(_26, float3(_1665 + float2(_1666, _1667), _368).xy, _1588)) + ((_1681 * _1679) * _49.SampleCmpLevelZero(_26, float3(_1665 + float2(_1670, _1667), _368).xy, _1588))) + ((_1678 * _1683) * _49.SampleCmpLevelZero(_26, float3(_1665 + float2(_1666, _1673), _368).xy, _1588))) + ((_1681 * _1683) * _49.SampleCmpLevelZero(_26, float3(_1665 + float2(_1670, _1673), _368).xy, _1588)));
                _1719 = _1598;
            }
            else
            {
                _1718 = 1.0f;
                _1719 = false;
            }
            _1720 = _1718;
            _1721 = _1719;
        }
        else
        {
            _1720 = 1.0f;
            _1721 = false;
        }
        float _1921;
        float _1922;
        if ((_1503 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1732 = 1.0f - clamp(dot(_631, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1749 = float4((_432 - (_46_m0.xyz * (_1732 * _48_m24.x))) + (_631 * (_1732 * _48_m24.y)), 1.0f);
            float4 _1750 = mul(_48_m23, _1749);
            float2 _1751 = _1750.xy;
            float _1919;
            if (all(bool2(_1751.x > 0.0f.xx.x, _1751.y > 0.0f.xx.y)) && all(bool2(_1751.x < 1.0f.xx.x, _1751.y < 1.0f.xx.y)))
            {
                uint _1770 = clamp(uint((floor(_1750.y * _48_m25.z) + _1750.x) * _48_m25.y), 0u, 127u);
                uint _1774 = asuint(_48_m27[_1770].x);
                float2 _1775 = spvUnpackHalf2x16(_1774);
                float _1776 = _1775.x;
                float _1918;
                if (_1776 >= 0.0f)
                {
                    float4x4 _1785 = _48_m22;
                    _1785[0].w = _48_m27[_1770].y;
                    _1785[1].w = _48_m27[_1770].z;
                    _1785[2].w = _48_m27[_1770].w;
                    float4 _1792 = mul(_1785, _1749);
                    float3 _1793 = _1792.xyz;
                    float _1917;
                    if (all(bool3(_1793.x > 0.0f.xxx.x, _1793.y > 0.0f.xxx.y, _1793.z > 0.0f.xxx.z)) && all(bool3(_1793.x < 1.0f.xxx.x, _1793.y < 1.0f.xxx.y, _1793.z < 1.0f.xxx.z)))
                    {
                        float _1810 = _1792.z;
                        float2 _1816 = float4((_1792.xy * _48_m24.zw) + float2(_1776, spvUnpackHalf2x16(_1774 >> 16u).x), _1810, 1.0f).xy * _48_m26.zw;
                        float2 _1818 = floor(_1816 + 0.5f.xx);
                        float2 _1819 = _1816 - _1818;
                        float _1820 = _1819.x;
                        float _1821 = _1820 + 0.5f;
                        float _1823 = (_1821 * _1821) * 0.5f;
                        float _1826 = min(_1820, 0.0f);
                        float _1830 = max(_1820, 0.0f);
                        float4 _1834 = float4(_1823 - _1820, (1.0f - _1820) - (_1826 * _1826), (_1820 + 1.0f) - (_1830 * _1830), _1823) * 0.44444000720977783203125f;
                        float _1835 = _1819.y;
                        float _1836 = _1835 + 0.5f;
                        float _1838 = (_1836 * _1836) * 0.5f;
                        float _1841 = min(_1835, 0.0f);
                        float _1845 = max(_1835, 0.0f);
                        float4 _1849 = float4(_1838 - _1835, (1.0f - _1835) - (_1841 * _1841), (_1835 + 1.0f) - (_1845 * _1845), _1838) * 0.44444000720977783203125f;
                        float2 _1852 = _1834.xz + _1834.yw;
                        float2 _1855 = _1849.xz + _1849.yw;
                        float2 _1861 = ((_1834.yw / _1852) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1863 = ((_1849.yw / _1855) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1865 = _1818 * _48_m26.xy;
                        float _1866 = _1861.x;
                        float _1867 = _1863.x;
                        float2 _1869 = _1865 + float2(_1866, _1867);
                        float _1870 = _1861.y;
                        float2 _1872 = _1865 + float2(_1870, _1867);
                        float _1873 = _1863.y;
                        float2 _1875 = _1865 + float2(_1866, _1873);
                        float2 _1877 = _1865 + float2(_1870, _1873);
                        float _1878 = _1852.x;
                        float _1879 = _1855.x;
                        float _1881 = _1852.y;
                        float _1883 = _1855.y;
                        _1917 = ((((_1878 * _1879) * _52.SampleCmpLevelZero(_26, float3(_1869, _368).xy, _1810)) + ((_1881 * _1879) * _52.SampleCmpLevelZero(_26, float3(_1872, _368).xy, _1810))) + ((_1878 * _1883) * _52.SampleCmpLevelZero(_26, float3(_1875, _368).xy, _1810))) + ((_1881 * _1883) * _52.SampleCmpLevelZero(_26, float3(_1877, _368).xy, _1810));
                    }
                    else
                    {
                        _1917 = 1.0f;
                    }
                    _1918 = _1917;
                }
                else
                {
                    _1918 = 1.0f;
                }
                _1919 = _1918;
            }
            else
            {
                _1919 = 1.0f;
            }
            _1921 = _1721 ? _1919 : _1720;
            _1922 = _1919;
        }
        else
        {
            _1921 = _1720;
            _1922 = 1.0f;
        }
        float _1925 = lerp(lerp(_1922, _1921, _1503), min(_1922, _1921), _48_m8.x);
        float _1976;
        if (_1925 > 0.001000000047497451305389404296875f)
        {
            float3 _1932 = _432 - _18_m65.xyz;
            float2 _1942 = (_1932 + (_18_m68.xyz * _1932.y)).xz * _18_m66.z;
            float2 _1951 = _18_m67.xy * _18_m75.w;
            _1976 = _1925 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1942 + _1951, 0.0f), _51.SampleLevel(_24, (_1942 * _18_m67.w) + _1951, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1932.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1976 = _1925;
        }
        _1981 = float2(lerp(_1976, _48_m7.z, _48_m7.w), _1976);
        break;
    } while(false);
    float _1986 = lerp(1.0f, min(1.0f, _1981.x), _48_m6.x);
    float4 _2121;
    if (_1986 > 0.001000000047497451305389404296875f)
    {
        float3 _1996 = -_46_m0.xyz;
        float _2001 = dot(_1996, _1187);
        float3 _2003 = _1187 - (_1996 * _2001);
        bool3 _2005 = (_2001 < _46_m4.z).xxx;
        float3 _2013 = normalize((_1996 * _46_m4.z) + ((_2003 * rsqrt(max(6.103515625e-05f, dot(_2003, _2003)))) * _46_m4.y));
        float3 _2014 = float3(_2005.x ? _2013.x : _1187.x, _2005.y ? _2013.y : _1187.y, _2005.z ? _2013.z : _1187.z);
        float3 _2018 = _2014 + _469;
        float3 _2022 = _2018 * rsqrt(max(6.103515625e-05f, dot(_2018, _2018)));
        float _2023 = clamp(dot(_2014, _631), 0.0f, 1.0f);
        float _2025 = clamp(dot(_631, _2022), 0.0f, 1.0f);
        float _2028 = clamp(_706, 0.0f, 1.0f);
        float _2029 = _552 * _552;
        float _2030 = _2029 * _2029;
        float _2051 = (((_2025 * _2030) - _2025) * _2025) + 1.0f;
        float _2054 = 1.0f - clamp(dot(_469, _2022), 0.0f, 1.0f);
        float _2055 = _2054 * _2054;
        float _2057 = (_2054 * _2055) * _2055;
        float _2081 = 1.0f - _552;
        float _2088 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2081 * (1.04997003078460693359375f + (_2081 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2081))))));
        float _2089 = 1.0f - _2088;
        float3 _2092 = _705 + ((1.0f.xxx - _705) * 0.0476190485060214996337890625f);
        float3 _2108 = (((clamp((min(((_705 * (1.0f - _2057)) + _2057.xxx) * ((_2030 / (_2051 * _2051)) * (0.5f / (((_2023 * sqrt(((((-_2028) * _2030) + _2028) * _2028) + _2030)) + (_2028 * sqrt(((((-_2023) * _2030) + _2023) * _2023) + _2030))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2092 * (((_56.SampleLevel(_23, (float2(_2028, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_2023, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2088) / _2089)) * _2092) / (1.0f.xxx - (_2092 * _2089)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2023) + ((_701 * 1.0f) * _2023)) * _46_m1.xyz;
        float3 _2119 = lerp(_2108, _2108 * _53.SampleBias(_23, float2(_1986, 0.5f), _18_m16).xyz, (1.0f - _1986).xxx) * 1.0f;
        _2121 = float4(_2119.x, _2119.y, _2119.z, 0.0f.xxxx.w);
    }
    else
    {
        _2121 = 0.0f.xxxx;
    }
    float2 _2123 = floor(_1196 * 0.03125f);
    int _2131 = int((_2123.x + (_2123.y * _44_m5)) * 8.0f);
    float _2138 = floor(_761 - (_18_m3.y * _44_m11));
    float _2142 = clamp(_2138, 0.0f, _44_m7 - 1.0f);
    int _2144 = int(_2142 * 8.0f);
    float3 _2146;
    float _2149;
    _2146 = 0.0f.xxx;
    _2149 = 1.0f;
    float3 _2147;
    float _2150;
    [loop]
    for (int _2151 = 0; _2151 <= 7; _2146 = _2147, _2149 = _2150, _2151++)
    {
        uint _2169 = (_2138 <= _2142) ? (_31.Load(uint(_2131 + _2151) * 4 + 0) & _31.Load(uint((_18_m21.y + _2144) + _2151) * 4 + 0)) : 0u;
        uint _2170 = uint(_2151);
        float3 _2174;
        _2150 = _2149;
        _2174 = 0.0f.xxx;
        uint _2177;
        float _2172;
        float3 _2175;
        [loop]
        for (uint _2176 = _2169; _2176 != 0u; _2150 = _2172, _2174 = _2175, _2176 = _2177)
        {
            uint _2181 = firstbitlow(_2176);
            _2177 = _2176 ^ (1u << (_2181 & 31u));
            int _2187 = int((32u * _2170) + _2181) * 8;
            int _2190 = _2187 + 1;
            int _2193 = _2187 + 2;
            int _2196 = _2187 + 3;
            int _2199 = _2187 + 5;
            int _2202 = _2187 + 6;
            int _2205 = _2187 + 7;
            uint _2209 = uint(_46_m6[_2199].w);
            float _2284;
            if ((_2209 & 1u) == 1u)
            {
                uint _2215 = asuint(_46_m6[_2199].x);
                uint _2222 = asuint(_46_m6[_2199].y);
                uint _2229 = asuint(_46_m6[_2199].z);
                uint _2236 = asuint(_46_m6[_2202].x);
                uint _2243 = asuint(_46_m6[_2202].y);
                uint _2250 = asuint(_46_m6[_2202].z);
                float3 _2269 = abs(mul(float4(_432 - _46_m6[_2190].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2215).x, spvUnpackHalf2x16(_2229).x, spvUnpackHalf2x16(_2243).x, 0.0f), float4(spvUnpackHalf2x16(_2215 >> 16u).x, spvUnpackHalf2x16(_2229 >> 16u).x, spvUnpackHalf2x16(_2243 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2222).x, spvUnpackHalf2x16(_2236).x, spvUnpackHalf2x16(_2250).x, 0.0f), float4(spvUnpackHalf2x16(_2222 >> 16u).x, spvUnpackHalf2x16(_2236 >> 16u).x, spvUnpackHalf2x16(_2250 >> 16u).x, 0.0f))).xyz);
                float _2276 = _46_m6[_2205].x * 0.5f;
                float _2282 = 1.0f - clamp((max(max(_2269.x, _2269.y), _2269.z) - (_2276 + 0.5f)) / (0.5f - _2276), 0.0f, 1.0f);
                _2284 = _2282 * _2282;
            }
            else
            {
                _2284 = 1.0f;
            }
            bool _2288 = _46_m6[_2196].z > 0.5f;
            if ((false || (_2284 < 0.001000000047497451305389404296875f)) || _2288)
            {
                _2172 = _2150;
                _2175 = _2174;
                continue;
            }
            float _3399;
            float3 _3400;
            if (_46_m6[_2187].w < 1.5f)
            {
                float3 _2776 = float3(0.100000001490116119384765625f, _552, 1.0f);
                float _2785 = (0.5f + (0.5f * _46_m6[_2193].y)) - abs(_46_m6[_2193].x);
                float _2786 = _46_m6[_2193].y - _2785;
                float _2793 = abs(max((1.0f - abs(_2785)) - abs(_2786), 0.00048828125f));
                float3 _2797 = normalize(float3(_2785, _2786, (_46_m6[_2193].x >= 0.0f) ? _2793 : (-_2793)));
                float3 _2798 = _46_m6[_2190].xyz - _432;
                float _2799 = dot(_2798, _2798);
                float _2800 = rsqrt(_2799);
                float3 _2801 = _2798 * _2800;
                float _2805 = clamp(_46_m6[_2205].y * _2800, 0.0f, 1.0f);
                int _2810 = int(_46_m6[_2205].w);
                float3 _2811 = _2797 * _46_m6[_2193].z;
                float3 _2812 = _2811 * 0.5f;
                float3 _2813 = _2798 - _2812;
                float3 _2814 = _2798 + _2812;
                bool _2817 = (uint(_46_m6[_2187].w) & 1u) == 0u;
                bool _2820 = _2817 || ((_2209 & 2u) != 0u);
                bool _2823 = (!_2817) && (_46_m6[_2193].z > 0.0f);
                float _2842;
                float _2843;
                if (_2823)
                {
                    float _2827 = length(_2813);
                    float _2828 = length(_2814);
                    _2842 = clamp(0.5f * ((dot(_631, _2813) / _2827) + (dot(_631, _2814) / _2828)), 0.0f, 1.0f);
                    _2843 = 1.0f / ((((_2827 * _2828) + dot(_2813, _2814)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2842 = clamp(dot(_631, _2801), 0.0f, 1.0f);
                    _2843 = 1.0f;
                }
                float _2865;
                if (_46_m6[_2202].w < 0.0f)
                {
                    float _2859 = _2799 * (_46_m6[_2190].w * _46_m6[_2190].w);
                    float _2862 = clamp(1.0f - (_2859 * _2859), 0.0f, 1.0f);
                    _2865 = lerp(1.0f / (_2799 + 1.0f), _2843, float(_2823)) * (_2862 * _2862);
                }
                else
                {
                    float3 _2848 = _2798 * _46_m6[_2190].w;
                    _2865 = _2843 * pow(1.0f - clamp(dot(_2848, _2848), 0.0f, 1.0f), _46_m6[_2202].w);
                }
                float _2871 = clamp((dot(_2801, -_2797) - _46_m6[_2193].z) * _46_m6[_2193].w, 0.0f, 1.0f);
                float _2875 = _2865 * lerp(1.0f, _2871 * _2871, float(_2817));
                float _2975;
                if ((!_2823) && (_2810 >= 0))
                {
                    uint _2881 = uint(_2810);
                    float2 _2968;
                    [branch]
                    if (_2817)
                    {
                        float4 _2958 = mul(_66_m1[_2881], _436);
                        _2968 = _66_m0[_2881].xy + (clamp(_2958.xy / _2958.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2881].zw);
                    }
                    else
                    {
                        float3 _2895 = mul(float4(-_2798, 0.0f), _66_m1[_2881]).xyz;
                        float3 _375 = _2895;
                        float3 _374 = _2895;
                        float3 _373 = abs(_2895);
                        uint _2904 = uint(int(_373.y > _373.x));
                        uint _2910 = (_373.z > _373[_2904]) ? 2u : _2904;
                        uint _2916 = (_2910 * 2u) + uint(_374[_2910] < 0.0f);
                        float _2920 = abs(_375[_2916 / 2u]);
                        float _2940 = 0.5f - (0.000244140625f / _66_m0[_2881].w);
                        _2968 = _66_m0[_2881].xy + (clamp(float2((float(_2916) + ((((_375[uint(_349[_2916].x)] * _350[_2916].x) / _2920) * _2940) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_349[_2916].y)] * _350[_2916].y) / _2920) * _2940)), 0.0f.xx, 1.0f.xx) * _66_m0[_2881].zw);
                    }
                    _2975 = _2875 * _64.SampleLevel(_23, _2968, 0.0f).x;
                }
                else
                {
                    _2975 = _2875;
                }
                bool _2976 = _2975 > 0.0f;
                float _3264;
                if (_2976)
                {
                    int _3028;
                    if (_2820)
                    {
                        _3028 = int(_46_m6[_2196].x);
                    }
                    else
                    {
                        uint _2983 = asuint(_46_m6[_2193].w);
                        uint _2985 = asuint(_46_m6[_2196].x);
                        float3 _2986 = _432 - _46_m6[_2190].xyz;
                        float3 _2987 = abs(_2986);
                        float _2988 = _2987.x;
                        float _2989 = _2987.y;
                        float _2991 = _2987.z;
                        int _3023;
                        if ((_2988 > _2989) && (_2988 > _2991))
                        {
                            _3023 = int((_2986.x > 0.0f) ? (_2983 >> 24u) : ((_2983 >> 16u) & 255u));
                        }
                        else
                        {
                            int _3015;
                            if (_2989 > _2991)
                            {
                                _3015 = int((_2986.y > 0.0f) ? ((_2983 >> 8u) & 255u) : (_2983 & 255u));
                            }
                            else
                            {
                                _3015 = int((_2986.z > 0.0f) ? ((_2985 >> 8u) & 255u) : (_2985 & 255u));
                            }
                            _3023 = _3015;
                        }
                        _3028 = (_3023 < 80) ? _3023 : (-1);
                    }
                    float4 _3045 = mul(_48_m10[_3028], float4((_432 - ((-_2801) * _48_m11[_3028].x)) + (_631 * (_48_m11[_3028].y * 5.0f)), 1.0f));
                    float _3046 = _3045.w;
                    float3 _3049 = _3045.xyz / _3046.xxx;
                    float2 _3050 = _3049.xy;
                    float3 _3058 = _3049.xyz;
                    bool3 _3059 = bool3(_3058.x <= 0.0f.xxx.x, _3058.y <= 0.0f.xxx.y, _3058.z <= 0.0f.xxx.z);
                    bool3 _3060 = bool3(_3058.x >= 1.0f.xxx.x, _3058.y >= 1.0f.xxx.y, _3058.z >= 1.0f.xxx.z);
                    float _3063 = _3049.z;
                    float2 _3074 = ((_3050 * (_48_m12[_3028].zw - _48_m12[_3028].xy)) + _48_m12[_3028].xy).xy * _48_m13.zw;
                    float2 _3076 = floor(_3074 + 0.5f.xx);
                    float2 _3077 = _3074 - _3076;
                    float _3078 = _3077.x;
                    float _3079 = _3078 + 0.5f;
                    float _3080 = _3079 * _3079;
                    float _3083 = 1.0f - _3078;
                    float _3084 = min(_3078, 0.0f);
                    float _3087 = _3078 + 1.0f;
                    float _3088 = max(_3078, 0.0f);
                    float _3099 = _3077.y;
                    float _3100 = _3099 + 0.5f;
                    float _3101 = _3100 * _3100;
                    float _3104 = 1.0f - _3099;
                    float _3105 = min(_3099, 0.0f);
                    float _3108 = _3099 + 1.0f;
                    float _3109 = max(_3099, 0.0f);
                    float3 _3121 = float3(0.1599999964237213134765625f * _3083, 0.1599999964237213134765625f * ((_3087 - (_3088 * _3088)) + 1.0f), _3080 * 0.07999999821186065673828125f);
                    float3 _3122 = float3(0.1599999964237213134765625f * ((_3080 * 0.5f) - _3078), 0.1599999964237213134765625f * ((_3083 - (_3084 * _3084)) + 1.0f), 0.1599999964237213134765625f * _3087) + _3121;
                    float3 _3124 = float3(0.1599999964237213134765625f * _3104, 0.1599999964237213134765625f * ((_3108 - (_3109 * _3109)) + 1.0f), _3101 * 0.07999999821186065673828125f);
                    float3 _3125 = float3(0.1599999964237213134765625f * ((_3101 * 0.5f) - _3099), 0.1599999964237213134765625f * ((_3104 - (_3105 * _3105)) + 1.0f), 0.1599999964237213134765625f * _3108) + _3124;
                    float3 _3131 = ((_3121 / _3122) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3133 = ((_3124 / _3125) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3135 = _3076 * _48_m13.xy;
                    float _3136 = _3131.x;
                    float _3137 = _3133.x;
                    float _3140 = _3131.y;
                    float _3143 = _3131.z;
                    float _3146 = _3133.y;
                    float _3153 = _3133.z;
                    float _3160 = _3122.x;
                    float _3161 = _3125.x;
                    float _3163 = _3122.y;
                    float _3165 = _3122.z;
                    float _3167 = _3125.y;
                    float _3171 = _3125.z;
                    float _3229 = (((((((_3160 * _3161) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3136, _3137), _368).xy, _3063)) + ((_3163 * _3161) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3140, _3137), _368).xy, _3063))) + ((_3165 * _3161) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3143, _3137), _368).xy, _3063))) + ((_3160 * _3167) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3136, _3146), _368).xy, _3063))) + ((_3163 * _3167) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3140, _3146), _368).xy, _3063))) + ((_3165 * _3167) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3143, _3146), _368).xy, _3063))) + ((_3160 * _3171) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3136, _3153), _368).xy, _3063));
                    float2 _3250 = min(_3050, 1.0f.xx - _3050);
                    _3264 = (_3028 >= 0) ? lerp(1.0f, (any(bool3(_3059.x || _3060.x, _3059.y || _3060.y, _3059.z || _3060.z)) || ((asuint(_3063) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3229 + ((_3163 * _3171) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3140, _3153), _368).xy, _3063))) + ((_3165 * _3171) * _50.SampleCmpLevelZero(_26, float3(_3135 + float2(_3143, _3153), _368).xy, _3063))), _2820 ? min(_48_m11[_3028].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_3028].z - _3046) * 0.25f, min(_3250.x, _3250.y)))) : _48_m11[_3028].w) : 1.0f;
                }
                else
                {
                    _3264 = 1.0f;
                }
                float3 _3287;
                float3 _3288;
                if (_2823)
                {
                    float3 _3267 = _2776 * _2776;
                    float _3276 = dot(_1187, _2811);
                    _3287 = _3267 / clamp(_3267 + (0.5f * clamp(_46_m6[_2193].z * _2800, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3288 = normalize(_2813 + (_2811 * clamp(dot(_2813, (_1187 * _3276) - _2811) / ((_46_m6[_2193].z * _46_m6[_2193].z) - (_3276 * _3276)), 0.0f, 1.0f)));
                }
                else
                {
                    _3287 = 1.0f.xxx;
                    _3288 = _2801;
                }
                float3 _3289 = _3288 + _469;
                float3 _3293 = _3289 * rsqrt(max(6.103515625e-05f, dot(_3289, _3289)));
                float3 _3398;
                if (_2976)
                {
                    float _3296 = clamp(_2842, 0.0f, 1.0f);
                    float _3298 = clamp(dot(_631, _3293), 0.0f, 1.0f);
                    float _3300 = clamp(dot(_469, _3293), 0.0f, 1.0f);
                    float _3301 = clamp(_706, 0.0f, 1.0f);
                    float _3302 = _552 * _552;
                    float _3312;
                    if (_2805 > 0.0f)
                    {
                        _3312 = clamp(_3302 + ((_2805 * _2805) / ((_3300 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3312 = _3302;
                    }
                    float _3313 = _3312 * _3312;
                    float _3334 = (((_3298 * _3313) - _3298) * _3298) + 1.0f;
                    float _3339 = 1.0f - _3300;
                    float _3340 = _3339 * _3339;
                    float _3342 = (_3339 * _3340) * _3340;
                    float _3366 = 1.0f - _552;
                    float _3373 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3366 * (1.04997003078460693359375f + (_3366 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3366))))));
                    float _3374 = 1.0f - _3373;
                    float3 _3377 = _705 + ((1.0f.xxx - _705) * 0.0476190485060214996337890625f);
                    float3 _3397 = ((clamp((min(((_705 * (1.0f - _3342)) + _3342.xxx) * (((_3313 / (_3334 * _3334)) * _3287.y) * (0.5f / (((_3296 * sqrt(((((-_3301) * _3313) + _3301) * _3301) + _3313)) + (_3301 * sqrt(((((-_3296) * _3313) + _3296) * _3296) + _3313))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3377 * (((_56.SampleLevel(_23, (float2(_3301, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3296, _552) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3373) / _3374)) * _3377) / (1.0f.xxx - (_3377 * _3374)))) * _46_m6[_2205].z, 0.0f.xxx, 1000.0f.xxx) * _2842) + ((_701 * _3287.z) * _2842)) * (((_46_m6[_2187].xyz * _2975) * _3264) * _2284);
                    _3398 = _3397;
                }
                else
                {
                    _3398 = 0.0f.xxx;
                }
                _3399 = _2150;
                _3400 = _3398;
            }
            else
            {
                float _2774;
                do
                {
                    if (_2288)
                    {
                        _2774 = 1.0f;
                        break;
                    }
                    float _2308 = (0.5f + (0.5f * _46_m6[_2193].y)) - abs(_46_m6[_2193].x);
                    float _2309 = _46_m6[_2193].y - _2308;
                    float _2316 = abs(max((1.0f - abs(_2308)) - abs(_2309), 0.00048828125f));
                    float3 _2320 = normalize(float3(_2308, _2309, (_46_m6[_2193].x >= 0.0f) ? _2316 : (-_2316)));
                    float3 _2321 = _46_m6[_2190].xyz - _432;
                    float _2322 = dot(_2321, _2321);
                    float3 _2324 = _2321 * rsqrt(_2322);
                    int _2327 = int(_46_m6[_2205].w);
                    float3 _2329 = (_2320 * _46_m6[_2193].z) * 0.5f;
                    float3 _2330 = _2321 - _2329;
                    float3 _2331 = _2321 + _2329;
                    bool _2334 = (uint(_46_m6[_2187].w) & 1u) == 0u;
                    bool _2337 = _2334 || ((_2209 & 2u) != 0u);
                    bool _2340 = (!_2334) && (_46_m6[_2193].z > 0.0f);
                    float _2352;
                    if (_2340)
                    {
                        _2352 = 1.0f / ((((length(_2330) * length(_2331)) + dot(_2330, _2331)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2352 = 1.0f;
                    }
                    float _2374;
                    if (_46_m6[_2202].w < 0.0f)
                    {
                        float _2368 = _2322 * (_46_m6[_2190].w * _46_m6[_2190].w);
                        float _2371 = clamp(1.0f - (_2368 * _2368), 0.0f, 1.0f);
                        _2374 = lerp(1.0f / (_2322 + 1.0f), _2352, float(_2340)) * (_2371 * _2371);
                    }
                    else
                    {
                        float3 _2357 = _2321 * _46_m6[_2190].w;
                        _2374 = _2352 * pow(1.0f - clamp(dot(_2357, _2357), 0.0f, 1.0f), _46_m6[_2202].w);
                    }
                    float _2380 = clamp((dot(_2324, -_2320) - _46_m6[_2193].z) * _46_m6[_2193].w, 0.0f, 1.0f);
                    float _2384 = _2374 * lerp(1.0f, _2380 * _2380, float(_2334));
                    float _2484;
                    if ((!_2340) && (_2327 >= 0))
                    {
                        uint _2390 = uint(_2327);
                        float2 _2477;
                        [branch]
                        if (_2334)
                        {
                            float4 _2467 = mul(_66_m1[_2390], _436);
                            _2477 = _66_m0[_2390].xy + (clamp(_2467.xy / _2467.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2390].zw);
                        }
                        else
                        {
                            float3 _2404 = mul(float4(-_2321, 0.0f), _66_m1[_2390]).xyz;
                            float3 _378 = _2404;
                            float3 _377 = _2404;
                            float3 _376 = abs(_2404);
                            uint _2413 = uint(int(_376.y > _376.x));
                            uint _2419 = (_376.z > _376[_2413]) ? 2u : _2413;
                            uint _2425 = (_2419 * 2u) + uint(_377[_2419] < 0.0f);
                            float _2429 = abs(_378[_2425 / 2u]);
                            float _2449 = 0.5f - (0.000244140625f / _66_m0[_2390].w);
                            _2477 = _66_m0[_2390].xy + (clamp(float2((float(_2425) + ((((_378[uint(_349[_2425].x)] * _350[_2425].x) / _2429) * _2449) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_378[uint(_349[_2425].y)] * _350[_2425].y) / _2429) * _2449)), 0.0f.xx, 1.0f.xx) * _66_m0[_2390].zw);
                        }
                        _2484 = _2384 * _64.SampleLevel(_23, _2477, 0.0f).x;
                    }
                    else
                    {
                        _2484 = _2384;
                    }
                    float _2773;
                    if (_2484 > 0.0f)
                    {
                        int _2537;
                        if (_2337)
                        {
                            _2537 = int(_46_m6[_2196].x);
                        }
                        else
                        {
                            uint _2492 = asuint(_46_m6[_2193].w);
                            uint _2494 = asuint(_46_m6[_2196].x);
                            float3 _2495 = _432 - _46_m6[_2190].xyz;
                            float3 _2496 = abs(_2495);
                            float _2497 = _2496.x;
                            float _2498 = _2496.y;
                            float _2500 = _2496.z;
                            int _2532;
                            if ((_2497 > _2498) && (_2497 > _2500))
                            {
                                _2532 = int((_2495.x > 0.0f) ? (_2492 >> 24u) : ((_2492 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2524;
                                if (_2498 > _2500)
                                {
                                    _2524 = int((_2495.y > 0.0f) ? ((_2492 >> 8u) & 255u) : (_2492 & 255u));
                                }
                                else
                                {
                                    _2524 = int((_2495.z > 0.0f) ? ((_2494 >> 8u) & 255u) : (_2494 & 255u));
                                }
                                _2532 = _2524;
                            }
                            _2537 = (_2532 < 80) ? _2532 : (-1);
                        }
                        float4 _2554 = mul(_48_m10[_2537], float4((_432 - ((-_2324) * _48_m11[_2537].x)) + (_631 * (_48_m11[_2537].y * 5.0f)), 1.0f));
                        float _2555 = _2554.w;
                        float3 _2558 = _2554.xyz / _2555.xxx;
                        float2 _2559 = _2558.xy;
                        float3 _2567 = _2558.xyz;
                        bool3 _2568 = bool3(_2567.x <= 0.0f.xxx.x, _2567.y <= 0.0f.xxx.y, _2567.z <= 0.0f.xxx.z);
                        bool3 _2569 = bool3(_2567.x >= 1.0f.xxx.x, _2567.y >= 1.0f.xxx.y, _2567.z >= 1.0f.xxx.z);
                        float _2572 = _2558.z;
                        float2 _2583 = ((_2559 * (_48_m12[_2537].zw - _48_m12[_2537].xy)) + _48_m12[_2537].xy).xy * _48_m13.zw;
                        float2 _2585 = floor(_2583 + 0.5f.xx);
                        float2 _2586 = _2583 - _2585;
                        float _2587 = _2586.x;
                        float _2588 = _2587 + 0.5f;
                        float _2589 = _2588 * _2588;
                        float _2592 = 1.0f - _2587;
                        float _2593 = min(_2587, 0.0f);
                        float _2596 = _2587 + 1.0f;
                        float _2597 = max(_2587, 0.0f);
                        float _2608 = _2586.y;
                        float _2609 = _2608 + 0.5f;
                        float _2610 = _2609 * _2609;
                        float _2613 = 1.0f - _2608;
                        float _2614 = min(_2608, 0.0f);
                        float _2617 = _2608 + 1.0f;
                        float _2618 = max(_2608, 0.0f);
                        float3 _2630 = float3(0.1599999964237213134765625f * _2592, 0.1599999964237213134765625f * ((_2596 - (_2597 * _2597)) + 1.0f), _2589 * 0.07999999821186065673828125f);
                        float3 _2631 = float3(0.1599999964237213134765625f * ((_2589 * 0.5f) - _2587), 0.1599999964237213134765625f * ((_2592 - (_2593 * _2593)) + 1.0f), 0.1599999964237213134765625f * _2596) + _2630;
                        float3 _2633 = float3(0.1599999964237213134765625f * _2613, 0.1599999964237213134765625f * ((_2617 - (_2618 * _2618)) + 1.0f), _2610 * 0.07999999821186065673828125f);
                        float3 _2634 = float3(0.1599999964237213134765625f * ((_2610 * 0.5f) - _2608), 0.1599999964237213134765625f * ((_2613 - (_2614 * _2614)) + 1.0f), 0.1599999964237213134765625f * _2617) + _2633;
                        float3 _2640 = ((_2630 / _2631) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2642 = ((_2633 / _2634) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2644 = _2585 * _48_m13.xy;
                        float _2645 = _2640.x;
                        float _2646 = _2642.x;
                        float _2649 = _2640.y;
                        float _2652 = _2640.z;
                        float _2655 = _2642.y;
                        float _2662 = _2642.z;
                        float _2669 = _2631.x;
                        float _2670 = _2634.x;
                        float _2672 = _2631.y;
                        float _2674 = _2631.z;
                        float _2676 = _2634.y;
                        float _2680 = _2634.z;
                        float _2738 = (((((((_2669 * _2670) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2645, _2646), _368).xy, _2572)) + ((_2672 * _2670) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2649, _2646), _368).xy, _2572))) + ((_2674 * _2670) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2652, _2646), _368).xy, _2572))) + ((_2669 * _2676) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2645, _2655), _368).xy, _2572))) + ((_2672 * _2676) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2649, _2655), _368).xy, _2572))) + ((_2674 * _2676) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2652, _2655), _368).xy, _2572))) + ((_2669 * _2680) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2645, _2662), _368).xy, _2572));
                        float2 _2759 = min(_2559, 1.0f.xx - _2559);
                        _2773 = (_2537 >= 0) ? lerp(1.0f, (any(bool3(_2568.x || _2569.x, _2568.y || _2569.y, _2568.z || _2569.z)) || ((asuint(_2572) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2738 + ((_2672 * _2680) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2649, _2662), _368).xy, _2572))) + ((_2674 * _2680) * _50.SampleCmpLevelZero(_26, float3(_2644 + float2(_2652, _2662), _368).xy, _2572))), _2337 ? min(_48_m11[_2537].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2537].z - _2555) * 0.25f, min(_2759.x, _2759.y)))) : _48_m11[_2537].w) : 1.0f;
                    }
                    else
                    {
                        _2773 = 1.0f;
                    }
                    _2774 = _2773;
                    break;
                } while(false);
                _3399 = _2150 * _2774;
                _3400 = 0.0f.xxx;
            }
            _2172 = _3399;
            _2175 = _2174 + _3400;
        }
        _2147 = _2146 + _2174;
    }
    float3 _3407 = (((((float3(_1167, _1172, _1177) * (_701 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _523, _39_m4)) * _18_m22.x) + (((((_1460 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_705 * _720.x) + (clamp(50.0f * _705.y, 0.0f, 1.0f) * _720.y).xxx)) * 1.0f)) + (((lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _580) * _39_m55, _570.xxx) * lerp(_608, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2121.xyz + ((_2146 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2149)).xyz;
    float4 _3408 = float4(_3407.x, _3407.y, _3407.z, _370.w);
    _3408.w = _547;
    float _3425 = _432.y * _18_m46.w;
    float _3430 = max(0.00999999977648258209228515625f, _3425 + _18_m47.w);
    float3 _3444 = exp(_18_m45.xyz * ((-max(0.0f, (_470 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3430)) / _3430) * exp(_3425 + _18_m48.w))));
    float _3447 = dot(_634, _18_m44.xyz);
    float _3453 = _18_m45.w * _18_m45.w;
    float _3457 = (1.0f + _3453) - ((2.0f * _18_m45.w) * _3447);
    float3 _3787;
    float _3788;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3615 = (uint3(int3(int(_760.x), int(_760.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3616 = _3615.y;
        uint _3617 = _3615.z;
        uint _3620 = _3615.x + (_3616 * _3617);
        uint _3622 = _3616 + (_3617 * _3620);
        uint _3624 = _3617 + (_3620 * _3622);
        uint _3626 = _3620 + (_3622 * _3624);
        float _3648 = dot(_634, -_16_m0[2].xyz);
        float3 _3658 = _432 - _16_m11.xyz;
        float _3660 = (_18_m55.w * ((_3648 > 5.9604644775390625e-08f) ? (1.0f / _3648) : 0.0f)) * (1.0f / _470);
        float _3661 = _3658.y;
        float _3662 = _3660 * _3661;
        float _3664 = _16_m11.y + _3662;
        float _3665 = _3661 - _3662;
        float _3667 = (1.0f - _3660) * _470;
        float _3681 = max(-127.0f, _18_m49.z * _3665);
        float _3705 = max(-127.0f, _18_m52.x * _3665);
        float _3716 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3664 - _18_m49.x)))) * ((abs(_3681) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3681)) / _3681) : (0.693147182464599609375f - (0.2402265071868896484375f * _3681)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3664 - _18_m52.z)))) * ((abs(_3705) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3705)) / _3705) : (0.693147182464599609375f - (0.2402265071868896484375f * _3705))));
        float _3738 = clamp((_470 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3741 = clamp((max(clamp(exp2(-(_3716 * _3667)), 0.0f, 1.0f), _18_m51.w) + clamp((_470 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3738, 0.0f, 1.0f);
        float4 _3781 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1196 + ((((float3(uint3(_3626, _3622 + (_3624 * _3626), _371) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_761 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_761 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3787 = _3781.xyz + (((_18_m51.xyz * (1.0f - _3741)) + (((_18_m54.xyz * pow(clamp(dot(_469, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3716 * max(_3667 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3738))) * _3781.w);
        _3788 = _3781.w * _3741;
    }
    else
    {
        float3 _3487 = _432 - _16_m11.xyz;
        float _3489 = _3487.y;
        float _3503 = max(-127.0f, _18_m49.z * _3489);
        float _3527 = max(-127.0f, _18_m52.x * _3489);
        float _3538 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3503) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3503)) / _3503) : (0.693147182464599609375f - (0.2402265071868896484375f * _3503)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3527) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3527)) / _3527) : (0.693147182464599609375f - (0.2402265071868896484375f * _3527))));
        float _3560 = clamp((_470 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3563 = clamp((max(clamp(exp2(-(_3538 * _470)), 0.0f, 1.0f), _18_m51.w) + clamp((_470 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3560, 0.0f, 1.0f);
        _3787 = (_18_m51.xyz * (1.0f - _3563)) + (((_18_m54.xyz * pow(clamp(dot(_469, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3538 * max(_470 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3560));
        _3788 = _3563;
    }
    float3 _3798 = lerp(_655.xyz, ((_3408.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3444 * _3788)) : (_3444 * _3788))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3447 * _3447)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3453) / max((12.56637096405029296875f * _3457) * sqrt(_3457), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3444)) * _3788 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3787 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz, _547.xxx).xyz;
    float3 _3808 = lerp(dot(_3798, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3798, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3818 = min(lerp(((sqrt(sqrt(abs(_673 * 0.5f))) * float2(int2(sign(_673)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _660.xx), 1.0f.xx);
    float4 _3819 = float4(_3818.x, _3818.y, _370.z, _370.w);
    _3819.z = float(clamp(max(dot(_3808.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _547, _547) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3819.w = lerp(0.0f, 0.699999988079071044921875f, _660);
    float3 renodx_output_color = float3(_3808.x, _3808.y, _3808.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3408.w);
    _14 = _3819;
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
