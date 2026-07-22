#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x63D71B7E.
struct _19
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

static float _355 = (float)0;
static float4 _356 = (float4)0;
static uint _359 = (uint)0;

static const float4 _336[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _337[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _338[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _14_15 : register(b12)
{
    column_major float4x4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c4);
    column_major float4x4 _15_m2 : packoffset(c8);
    column_major float4x4 _15_m3 : packoffset(c12);
    column_major float4x4 _15_m4 : packoffset(c16);
    column_major float4x4 _15_m5 : packoffset(c20);
    column_major float4x4 _15_m6 : packoffset(c24);
    column_major float4x4 _15_m7 : packoffset(c28);
    column_major float4x4 _15_m8 : packoffset(c32);
    column_major float4x4 _15_m9 : packoffset(c36);
    column_major float4x4 _15_m10 : packoffset(c40);
    float4 _15_m11 : packoffset(c44);
    column_major float4x4 _15_m12 : packoffset(c45);
    column_major float4x4 _15_m13 : packoffset(c49);
    column_major float4x4 _15_m14 : packoffset(c53);
    column_major float4x4 _15_m15 : packoffset(c57);
    column_major float4x4 _15_m16 : packoffset(c61);
    column_major float4x4 _15_m17 : packoffset(c65);
    column_major float4x4 _15_m18 : packoffset(c69);
    column_major float4x4 _15_m19 : packoffset(c73);
    column_major float4x4 _15_m20 : packoffset(c77);
    float4 _15_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _16_17 : register(b16)
{
    float4 _17_m0 : packoffset(c0);
    float4 _17_m1 : packoffset(c1);
    float4 _17_m2 : packoffset(c2);
    float4 _17_m3 : packoffset(c3);
    float4 _17_m4 : packoffset(c4);
    float4 _17_m5 : packoffset(c5);
    float4 _17_m6[6] : packoffset(c6);
    float4 _17_m7[6] : packoffset(c12);
    float4 _17_m8 : packoffset(c18);
    float4 _17_m9 : packoffset(c19);
    float4 _17_m10 : packoffset(c20);
    float4 _17_m11 : packoffset(c21);
    float4 _17_m12 : packoffset(c22);
    float4 _17_m13 : packoffset(c23);
    float4 _17_m14 : packoffset(c24);
    float4 _17_m15 : packoffset(c25);
    float _17_m16 : packoffset(c26);
    float _17_m17 : packoffset(c26.y);
    float _17_m18 : packoffset(c26.z);
    uint _17_m19 : packoffset(c26.w);
    float4 _17_m20 : packoffset(c27);
    int4 _17_m21 : packoffset(c28);
    float4 _17_m22 : packoffset(c29);
    float4 _17_m23 : packoffset(c30);
    float4 _17_m24 : packoffset(c31);
    float4 _17_m25 : packoffset(c32);
    float4 _17_m26 : packoffset(c33);
    float4 _17_m27 : packoffset(c34);
    float4 _17_m28 : packoffset(c35);
    float4 _17_m29 : packoffset(c36);
    float4 _17_m30 : packoffset(c37);
    float4 _17_m31 : packoffset(c38);
    float4 _17_m32[4] : packoffset(c39);
    float4 _17_m33[4] : packoffset(c43);
    float4 _17_m34[4] : packoffset(c47);
    float4 _17_m35[4] : packoffset(c51);
    float4 _17_m36 : packoffset(c55);
    float4 _17_m37 : packoffset(c56);
    float4 _17_m38[4] : packoffset(c57);
    float4 _17_m39[4] : packoffset(c61);
    float4 _17_m40[4] : packoffset(c65);
    float4 _17_m41 : packoffset(c69);
    float4 _17_m42 : packoffset(c70);
    float4 _17_m43 : packoffset(c71);
    float4 _17_m44 : packoffset(c72);
    float4 _17_m45 : packoffset(c73);
    float4 _17_m46 : packoffset(c74);
    float4 _17_m47 : packoffset(c75);
    float4 _17_m48 : packoffset(c76);
    float4 _17_m49 : packoffset(c77);
    float4 _17_m50 : packoffset(c78);
    float4 _17_m51 : packoffset(c79);
    float4 _17_m52 : packoffset(c80);
    float4 _17_m53 : packoffset(c81);
    float4 _17_m54 : packoffset(c82);
    float4 _17_m55 : packoffset(c83);
    float4 _17_m56 : packoffset(c84);
    float4 _17_m57 : packoffset(c85);
    float4 _17_m58 : packoffset(c86);
    float4 _17_m59 : packoffset(c87);
    float4 _17_m60 : packoffset(c88);
    float4 _17_m61 : packoffset(c89);
    float4 _17_m62 : packoffset(c90);
    float4 _17_m63 : packoffset(c91);
    float4 _17_m64 : packoffset(c92);
    float4 _17_m65 : packoffset(c93);
    float4 _17_m66 : packoffset(c94);
    float4 _17_m67 : packoffset(c95);
    float4 _17_m68 : packoffset(c96);
    float4 _17_m69 : packoffset(c97);
    float4 _17_m70 : packoffset(c98);
    float4 _17_m71 : packoffset(c99);
    float4 _17_m72 : packoffset(c100);
    float4 _17_m73 : packoffset(c101);
    float4 _17_m74 : packoffset(c102);
    float4 _17_m75 : packoffset(c103);
    float4 _17_m76 : packoffset(c104);
    float4 _17_m77 : packoffset(c105);
    float4 _17_m78 : packoffset(c106);
    float4 _17_m79 : packoffset(c107);
    float4 _17_m80 : packoffset(c108);
    float4 _17_m81 : packoffset(c109);
    float4 _17_m82 : packoffset(c110);
    float4 _17_m83 : packoffset(c111);
    float4 _17_m84 : packoffset(c112);
    float4 _17_m85 : packoffset(c113);
    float4 _17_m86 : packoffset(c114);
    float4 _17_m87 : packoffset(c115);
    float4 _17_m88 : packoffset(c116);
    float4 _17_m89 : packoffset(c117);
    float4 _17_m90 : packoffset(c118);
    float4 _17_m91 : packoffset(c119);
    float4 _17_m92 : packoffset(c120);
    float4 _17_m93 : packoffset(c121);
    float4 _17_m94 : packoffset(c122);
    float4 _17_m95 : packoffset(c123);
    float4 _17_m96 : packoffset(c124);
    float4 _17_m97 : packoffset(c125);
    float4 _17_m98 : packoffset(c126);
    float4 _17_m99[2] : packoffset(c127);
    float4 _17_m100[2] : packoffset(c129);
    float _17_m101 : packoffset(c131);
    float _17_m102 : packoffset(c131.y);
    float _17_m103 : packoffset(c131.z);
    float _17_m104 : packoffset(c131.w);
    float4 _17_m105 : packoffset(c132);
    float4 _17_m106 : packoffset(c133);
    float4 _17_m107 : packoffset(c134);
    float4 _17_m108 : packoffset(c135);
    float4 _17_m109 : packoffset(c136);
    float4 _17_m110 : packoffset(c137);
    float4 _17_m111 : packoffset(c138);
    float4 _17_m112 : packoffset(c139);
    float4 _17_m113 : packoffset(c140);
    float4 _17_m114 : packoffset(c141);
    float4 _17_m115 : packoffset(c142);
    float4 _17_m116 : packoffset(c143);
    float4 _17_m117 : packoffset(c144);
    float4 _17_m118 : packoffset(c145);
    float4 _17_m119 : packoffset(c146);
    float4 _17_m120 : packoffset(c147);
    float4 _17_m121 : packoffset(c148);
    float4 _17_m122 : packoffset(c149);
    float4 _17_m123 : packoffset(c150);
    float4 _17_m124 : packoffset(c151);
    float4 _17_m125 : packoffset(c152);
    float4 _17_m126 : packoffset(c153);
    float4 _17_m127 : packoffset(c154);
    float4 _17_m128 : packoffset(c155);
    float4 _17_m129 : packoffset(c156);
    float4 _17_m130 : packoffset(c157);
    float4 _17_m131 : packoffset(c158);
    float4 _17_m132 : packoffset(c159);
    float4 _17_m133 : packoffset(c160);
    float4 _17_m134 : packoffset(c161);
    column_major float4x4 _17_m135 : packoffset(c162);
    float4 _17_m136 : packoffset(c166);
    float4 _17_m137 : packoffset(c167);
    float4 _17_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _18_20 : register(b0)
{
    _19 _20_m0[256] : packoffset(c0);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _27 : register(t52);
[[vk::binding(2, 1)]]
cbuffer _32_33 : register(b2)
{
    float _33_m0 : packoffset(c0);
    float _33_m1 : packoffset(c0.y);
    float _33_m2 : packoffset(c0.z);
    float _33_m3 : packoffset(c0.w);
    float _33_m4 : packoffset(c1);
    float _33_m5 : packoffset(c1.y);
    float _33_m6 : packoffset(c1.z);
    float _33_m7 : packoffset(c1.w);
    float _33_m8 : packoffset(c2);
    float _33_m9 : packoffset(c2.y);
    float _33_m10 : packoffset(c2.z);
    float _33_m11 : packoffset(c2.w);
    float _33_m12 : packoffset(c3);
    float _33_m13 : packoffset(c3.y);
    float _33_m14 : packoffset(c3.z);
    float _33_m15 : packoffset(c3.w);
    float4 _33_m16 : packoffset(c4);
    float _33_m17 : packoffset(c5);
    float _33_m18 : packoffset(c5.y);
    float _33_m19 : packoffset(c5.z);
    float _33_m20 : packoffset(c5.w);
    float4 _33_m21 : packoffset(c6);
    float4 _33_m22 : packoffset(c7);
    float4 _33_m23 : packoffset(c8);
    float4 _33_m24 : packoffset(c9);
    float4 _33_m25 : packoffset(c10);
    float _33_m26 : packoffset(c11);
    float _33_m27 : packoffset(c11.y);
    float _33_m28 : packoffset(c11.z);
    float _33_m29 : packoffset(c11.w);
    float4 _33_m30 : packoffset(c12);
    float4 _33_m31 : packoffset(c13);
    float4 _33_m32 : packoffset(c14);
    float4 _33_m33 : packoffset(c15);
    float _33_m34 : packoffset(c16);
    float _33_m35 : packoffset(c16.y);
    float _33_m36 : packoffset(c16.z);
    float _33_m37 : packoffset(c16.w);
    float4 _33_m38 : packoffset(c17);
    float4 _33_m39 : packoffset(c18);
    float4 _33_m40 : packoffset(c19);
    float _33_m41 : packoffset(c20);
    float _33_m42 : packoffset(c20.y);
    float _33_m43 : packoffset(c20.z);
    float _33_m44 : packoffset(c20.w);
    float _33_m45 : packoffset(c21);
    float _33_m46 : packoffset(c21.y);
    float _33_m47 : packoffset(c21.z);
    float _33_m48 : packoffset(c21.w);
    float _33_m49 : packoffset(c22);
    float _33_m50 : packoffset(c22.y);
    float _33_m51 : packoffset(c22.z);
    float _33_m52 : packoffset(c22.w);
    float _33_m53 : packoffset(c23);
    float _33_m54 : packoffset(c23.y);
    float4 _33_m55 : packoffset(c24);
    float4 _33_m56 : packoffset(c25);
    float4 _33_m57 : packoffset(c26);
    float4 _33_m58 : packoffset(c27);
    float4 _33_m59 : packoffset(c28);
    float4 _33_m60 : packoffset(c29);
    float4 _33_m61 : packoffset(c30);
    float4 _33_m62 : packoffset(c31);
    float4 _33_m63 : packoffset(c32);
    float4 _33_m64 : packoffset(c33);
    float4 _33_m65 : packoffset(c34);
    float4 _33_m66 : packoffset(c35);
    float4 _33_m67 : packoffset(c36);
    float4 _33_m68 : packoffset(c37);
    float _33_m69 : packoffset(c38);
    float _33_m70 : packoffset(c38.y);
    float _33_m71 : packoffset(c38.z);
    float _33_m72 : packoffset(c38.w);
    float _33_m73 : packoffset(c39);
    float _33_m74 : packoffset(c39.y);
    float _33_m75 : packoffset(c39.z);
    float _33_m76 : packoffset(c39.w);
    float _33_m77 : packoffset(c40);
    float _33_m78 : packoffset(c40.y);
    float _33_m79 : packoffset(c40.z);
    float _33_m80 : packoffset(c40.w);
    float _33_m81 : packoffset(c41);
    float _33_m82 : packoffset(c41.y);
    float _33_m83 : packoffset(c41.z);
    float _33_m84 : packoffset(c41.w);
    float _33_m85 : packoffset(c42);
    float _33_m86 : packoffset(c42.y);
    float _33_m87 : packoffset(c42.z);
    float _33_m88 : packoffset(c42.w);
    float4 _33_m89 : packoffset(c43);
    float4 _33_m90 : packoffset(c44);
};

[[vk::binding(49, 0)]]
cbuffer _42_43 : register(b49)
{
    int _43_m0 : packoffset(c0);
    int _43_m1 : packoffset(c0.y);
    int _43_m2 : packoffset(c0.z);
    int _43_m3 : packoffset(c0.w);
    float _43_m4 : packoffset(c1);
    float _43_m5 : packoffset(c1.y);
    float _43_m6 : packoffset(c1.z);
    float _43_m7 : packoffset(c1.w);
    float _43_m8 : packoffset(c2);
    float _43_m9 : packoffset(c2.y);
    float _43_m10 : packoffset(c2.z);
    float _43_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _44_45 : register(b14)
{
    float4 _45_m0 : packoffset(c0);
    float4 _45_m1 : packoffset(c1);
    float4 _45_m2 : packoffset(c2);
    float4 _45_m3 : packoffset(c3);
    float4 _45_m4 : packoffset(c4);
    uint4 _45_m5 : packoffset(c5);
    float4 _45_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _46_47 : register(b15)
{
    column_major float4x4 _47_m0[5] : packoffset(c0);
    float4 _47_m1[4] : packoffset(c20);
    float4 _47_m2[4] : packoffset(c24);
    float4 _47_m3[4] : packoffset(c28);
    float4 _47_m4 : packoffset(c32);
    float4 _47_m5 : packoffset(c33);
    float4 _47_m6 : packoffset(c34);
    float4 _47_m7 : packoffset(c35);
    float4 _47_m8 : packoffset(c36);
    float4 _47_m9[27] : packoffset(c37);
    column_major float4x4 _47_m10[56] : packoffset(c64);
    float4 _47_m11[56] : packoffset(c288);
    float4 _47_m12[56] : packoffset(c344);
    float4 _47_m13 : packoffset(c400);
    float4 _47_m14[47] : packoffset(c401);
    column_major float4x4 _47_m15[15] : packoffset(c448);
    float4 _47_m16[15] : packoffset(c508);
    float4 _47_m17[15] : packoffset(c523);
    float4 _47_m18[15] : packoffset(c538);
    float4 _47_m19 : packoffset(c553);
    float4 _47_m20 : packoffset(c554);
    float4 _47_m21[21] : packoffset(c555);
    column_major float4x4 _47_m22 : packoffset(c576);
    column_major float4x4 _47_m23 : packoffset(c580);
    float4 _47_m24 : packoffset(c584);
    float4 _47_m25 : packoffset(c585);
    float4 _47_m26 : packoffset(c586);
    float4 _47_m27[128] : packoffset(c587);
};

[[vk::binding(51, 0)]]
cbuffer _58_59 : register(b51)
{
    float4 _59_m0[32] : packoffset(c0);
    column_major float4x4 _59_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _22 : register(s6);
[[vk::binding(4, 0)]] SamplerState _23 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _24 : register(s7);
[[vk::binding(5, 1)]] Texture2D<float4> _28 : register(t5);
[[vk::binding(3, 1)]] SamplerState _29 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _30 : register(t6);
[[vk::binding(4, 1)]] SamplerState _31 : register(s4);
[[vk::binding(37, 0)]] Texture3D<float4> _35 : register(t37);
[[vk::binding(36, 0)]] Texture3D<float4> _36 : register(t36);
[[vk::binding(33, 0)]] Texture3D<float4> _37 : register(t33);
[[vk::binding(35, 0)]] Texture3D<float4> _38 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _39 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _40 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _41 : register(t31);
[[vk::binding(9, 0)]] Texture2D<float4> _48 : register(t9);
[[vk::binding(28, 0)]] Texture2D<float4> _49 : register(t28);
[[vk::binding(8, 0)]] Texture2D<float4> _50 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _51 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _52 : register(t10);
[[vk::binding(29, 0)]] Texture2D<float4> _54 : register(t29);
[[vk::binding(22, 0)]] Texture2D<float4> _55 : register(t22);
[[vk::binding(21, 0)]] Texture2D<float4> _56 : register(t21);
[[vk::binding(30, 0)]] Texture2D<float4> _57 : register(t30);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
static float3 _6 = (float3)0;
static float4 _7 = (float4)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static uint _10 = (uint)0;
static float4 _12 = (float4)0;
static float4 _13 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _10 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _12 : SV_Target0;
    [[vk::location(1)]] float4 _13 : SV_Target1;
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
    float2 _385 = gl_FragCoord.xy * _17_m0.zw;
    float2 _388 = (_385 * 2.0f) - 1.0f.xx;
    float4 _391 = float4(_388, gl_FragCoord.z, 1.0f);
    _391.y = -_388.y;
    float4 _394 = mul(_15_m6, _391);
    float3 _398 = _394.xyz / _394.w.xxx;
    float4 _402 = float4(_398, 1.0f);
    float _405 = abs(mul(_15_m0, _402).z);
    float3 _406 = _6 * 1.0f;
    float3 _421;
    do
    {
        if (_17_m4.w == 0.0f)
        {
            _421 = _15_m11.xyz - _398;
            break;
        }
        else
        {
            _421 = _15_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _422 = dot(_421, _421);
    float _424 = rsqrt(max(_422, 9.9999999392252902907785028219223e-09f));
    float3 _425 = _421 * _424;
    float _426 = _422 * _424;
    float2 _449 = ((_4.zw * _33_m4) - (_5.xy * _33_m4)) + _5.xy;
    float4 _450 = _5 * _33_m4;
    float2 _486 = ((mul(((((_4.xy * _33_m23.x) + (_449 * _33_m23.y)) + (_33_m21.xy * _17_m75.w)) + (_33_m21.zw * _450.x)) - 0.5f.xx, float2x2(float2(_33_m22.xy), float2(_33_m22.zw))) + 0.5f.xx) * _33_m24.xy) + _33_m24.zw;
    float _531 = lerp(0.0f, frac((_20_m0[_10]._m0[0].w + _20_m0[_10]._m0[1].w) + _20_m0[_10]._m0[2].w), _33_m83);
    _486.y = _486.y * (1.0f + min(_531, 0.5f));
    float4 _556 = _30.SampleBias(_31, float4(((mul(((((_4.xy * _33_m33.x) + (_449 * _33_m33.y)) + (_33_m31.xy * _17_m75.w)) + (_33_m31.zw * _450.y)) - 0.5f.xx, float2x2(float2(_33_m32.xy), float2(_33_m32.zw))) + 0.5f.xx) * _33_m30.xy) + _33_m30.zw, 0.0f, 0.0f).xy, _17_m16);
    float _560 = (_556.x * (_33_m26 + 1.0f)) - _33_m26;
    float2 _563 = float2(_560 * _33_m28, _560 * _33_m29);
    float4 _566 = _556;
    _566.w = _556.w * _560;
    float2 _572 = (((_566.wy * 2.0f) - 1.0f.xx).xy * _33_m28).xy;
    bool2 _574 = (_33_m27 != 0.0f).xx;
    float4 _586 = _28.SampleBias(_29, (_486 + _531.xx) + ((float2(_574.x ? _572.x : _563.x, _574.y ? _572.y : _563.y) * 1.0f) * _33_m17), _17_m16);
    float4 _591 = ((_33_m16 * lerp(_7, 1.0f.xxxx, _33_m5.xxxx)) * float4(_33_m6, _33_m6, _33_m6, _33_m7)) * lerp(_586, float4(1.0f, 1.0f, 1.0f, _586.x), _33_m18.xxxx);
    bool3 _615 = (gl_FrontFacing ? true : false).xxx;
    float3 _616 = -_406;
    float3 _617 = float3(_615.x ? _406.x : _616.x, _615.y ? _406.y : _616.y, _615.z ? _406.z : _616.z);
    float _651 = clamp((((_591.w * ((_33_m41 != 0.0f) ? (clamp((_405 - _33_m42) / (_33_m43 - _33_m42), 0.0f, 1.0f) * clamp((_405 - _33_m44) / (_33_m45 - _33_m44), 0.0f, 1.0f)) : 1.0f)) * lerp(1.0f, _7.w, _33_m81)) * lerp(1.0f, pow(abs(dot(_6, _425)), _33_m74), _33_m76)) * (1.0f - _20_m0[_10]._m1.y), 0.0f, 1.0f);
    float3 _652 = clamp((_591.xyz * ((1.0f - _33_m12) + (_17_m20.y * _33_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _655 = _652 * _33_m77;
    float2 _710;
    if (clamp((_33_m3 + 1.0f) - _33_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _696 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _696.y = -_696.y;
        _710 = ((sqrt(sqrt(abs(_696 * 0.5f))) * float2(int2(sign(_696)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _710 = 0.0f.xx;
    }
    float _711 = 0.07999999821186065673828125f * _33_m80;
    float3 _712 = _655 * _33_m78;
    float3 _713 = _655 - _712;
    float3 _717 = (_711 - (_711 * _33_m78)).xxx + _712;
    uint2 _748;
    float _749;
    if (_17_m24.y == 1.0f)
    {
        float4 _725 = mul(_17_m135, _402);
        float4 _728 = _725;
        _728.y = -_725.y;
        float4 _731 = _728 * (1.0f / _725.w);
        _748 = uint2(clamp(((_731.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _17_m0.xy);
        _749 = 1.0f / ((_17_m2.z * _731.z) + _17_m2.w);
    }
    else
    {
        _748 = uint2(gl_FragCoord.xy);
        _749 = _405;
    }
    float3 _751 = _398 + (_617 * 0.25f);
    float3 _761 = mul(float3x3(_15_m1[0].xyz, _15_m1[1].xyz, _15_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _770 = _751 - (_17_m105.xyz + (_761 * (-_17_m107.w)));
    float _784 = max(clamp((max(abs(_770.x), abs(_770.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_770.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1086;
    float4 _1087;
    float4 _1088;
    float _1089;
    float _1090;
    if ((_17_m105.w != 0.0f) && (_784 < 1.0f))
    {
        float3 _797 = _751 - (_17_m105.xyz + (_761 * (-_17_m107.y)));
        float _811 = max(clamp((max(abs(_797.x), abs(_797.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_797.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _887;
        float4 _888;
        float4 _889;
        float4 _890;
        if (_811 < 1.0f)
        {
            float3 _820 = ((_751 * 2.0f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _822 = _820 - floor(_820);
            float4 _826 = _36.SampleLevel(_23, _822, 0.0f);
            float _827 = 1.0f - _811;
            float _831 = _17_m106.y * 0.5f;
            float _836 = _822.x;
            float _837 = clamp(_822.y, _831, 1.0f - _831) * 0.3333333432674407958984375f;
            float _838 = _822.z;
            float4 _841 = _37.SampleLevel(_22, float3(_836, _837, _838), 0.0f);
            float _857 = _826.x;
            float _867 = _826.y;
            float _877 = _826.z;
            _887 = _784 + (_841.w * _827);
            _888 = float4(((_37.SampleLevel(_22, float3(_836, _837 + 0.666666686534881591796875f, _838), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _877, _877) * _827;
            _889 = float4(((_37.SampleLevel(_22, float3(_836, _837 + 0.3333333432674407958984375f, _838), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _867, _867) * _827;
            _890 = float4(((_841.xyz * 4.0f) - 2.0f.xxx) * _857, _857) * _827;
        }
        else
        {
            _887 = _784;
            _888 = 0.0f.xxxx;
            _889 = 0.0f.xxxx;
            _890 = 0.0f.xxxx;
        }
        float3 _896 = _751 - (_17_m105.xyz + (_761 * (-_17_m107.z)));
        float _910 = max(clamp((max(abs(_896.x), abs(_896.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_896.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _990;
        float4 _991;
        float4 _992;
        float4 _993;
        if (_910 < 1.0f)
        {
            float3 _919 = ((_751 * 0.5f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _921 = _919 - floor(_919);
            float4 _925 = _38.SampleLevel(_23, _921, 0.0f);
            float _927 = _811 * (1.0f - _910);
            float _931 = _17_m106.y * 0.5f;
            float _936 = _921.x;
            float _937 = clamp(_921.y, _931, 1.0f - _931) * 0.3333333432674407958984375f;
            float _938 = _921.z;
            float4 _941 = _39.SampleLevel(_22, float3(_936, _937, _938), 0.0f);
            float _957 = _925.x;
            float _968 = _925.y;
            float _979 = _925.z;
            _990 = _887 + (_941.w * _927);
            _991 = _888 + (float4(((_39.SampleLevel(_22, float3(_936, _937 + 0.666666686534881591796875f, _938), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _979, _979) * _927);
            _992 = _889 + (float4(((_39.SampleLevel(_22, float3(_936, _937 + 0.3333333432674407958984375f, _938), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _968, _968) * _927);
            _993 = _890 + (float4(((_941.xyz * 4.0f) - 2.0f.xxx) * _957, _957) * _927);
        }
        else
        {
            _990 = _887;
            _991 = _888;
            _992 = _889;
            _993 = _890;
        }
        float4 _1076;
        float4 _1077;
        float4 _1078;
        float _1079;
        if (_910 > 0.0f)
        {
            float3 _1002 = ((_751 * 0.125f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _1005 = _17_m106.xyz * 0.5f;
            float3 _1007 = clamp(_1002 - floor(_1002), _1005, 1.0f.xxx - _1005);
            float4 _1011 = _40.SampleLevel(_23, _1007, 0.0f);
            float _1013 = _910 * (1.0f - _784);
            float _1017 = _17_m106.y * 0.5f;
            float _1022 = _1007.x;
            float _1023 = clamp(_1007.y, _1017, 1.0f - _1017) * 0.3333333432674407958984375f;
            float _1024 = _1007.z;
            float4 _1027 = _41.SampleLevel(_22, float3(_1022, _1023, _1024), 0.0f);
            float _1043 = _1011.x;
            float _1054 = _1011.y;
            float _1065 = _1011.z;
            _1076 = _991 + (float4(((_41.SampleLevel(_22, float3(_1022, _1023 + 0.666666686534881591796875f, _1024), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1065, _1065) * _1013);
            _1077 = _992 + (float4(((_41.SampleLevel(_22, float3(_1022, _1023 + 0.3333333432674407958984375f, _1024), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1054, _1054) * _1013);
            _1078 = _993 + (float4(((_1027.xyz * 4.0f) - 2.0f.xxx) * _1043, _1043) * _1013);
            _1079 = _990 + (_1027.w * _1013);
        }
        else
        {
            _1076 = _991;
            _1077 = _992;
            _1078 = _993;
            _1079 = _990;
        }
        float _1082 = clamp((_1079 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1086 = _1076;
        _1087 = _1077;
        _1088 = _1078;
        _1089 = _1082 - _784;
        _1090 = (_1082 + _784) * 0.5f;
    }
    else
    {
        _1086 = 0.0f.xxxx;
        _1087 = 0.0f.xxxx;
        _1088 = 0.0f.xxxx;
        _1089 = 0.0f;
        _1090 = 1.0f;
    }
    float4 _1110 = _1088 + float4(_17_m108.x * _1090, (_17_m108.y * _1090) + ((_17_m108.w * _1089) * 0.5f), _17_m108.z * _1090, (_17_m108.w * _1090) + ((_17_m108.y * _1089) * 0.375f));
    float4 _1130 = _1087 + float4(_17_m109.x * _1090, (_17_m109.y * _1090) + ((_17_m109.w * _1089) * 0.5f), _17_m109.z * _1090, (_17_m109.w * _1090) + ((_17_m109.y * _1089) * 0.375f));
    float4 _1150 = _1086 + float4(_17_m110.x * _1090, (_17_m110.y * _1090) + ((_17_m110.w * _1089) * 0.5f), _17_m110.z * _1090, (_17_m110.w * _1090) + ((_17_m110.y * _1089) * 0.375f));
    float3 _1171 = ((float3(max(0.0f, dot(_1110.xyz, _617) + _1110.w), max(0.0f, dot(_1130.xyz, _617) + _1130.w), max(0.0f, dot(_1150.xyz, _617) + _1150.w)) * _713) * 1.0f) * _17_m22.x;
    float3 _1180 = (((_1171.x + _1171.y) + _1171.z) * 0.3333333432674407958984375f).xxx;
    float3 _1185 = (_1180 + ((_1171 - _1180) * _33_m75)) + ((-0.0f).xxx * _33_m75);
    float3 _1191 = _17_m76.w.xxx;
    float _1199 = 1.0f - _33_m11;
    float3 _1202 = _398 + (_617 * 0.5f);
    float2 _1652;
    do
    {
        if (_47_m7.w >= 0.9900000095367431640625f)
        {
            _1652 = float2(_47_m7.z, 1.0f);
            break;
        }
        int _1215 = int(_47_m7.x);
        bool3 _1217 = (_1215 == 2).xxx;
        float3 _1225 = _1202 - float3(_1217.x ? _47_m1[0].xyz.x : _15_m11.xyz.x, _1217.y ? _47_m1[0].xyz.y : _15_m11.xyz.y, _1217.z ? _47_m1[0].xyz.z : _15_m11.xyz.z);
        float _1236 = max(clamp((_47_m6.w - dot(_1225, _1225)) * _47_m6.z, 0.0f, 1.0f), _47_m8.x);
        float _1393;
        bool _1394;
        if (_1236 > 0.0f)
        {
            float _1391;
            bool _1392;
            if (_1215 > 0)
            {
                float3 _1243 = _1202 - _47_m1[0].xyz;
                float3 _1247 = _1202 - _47_m1[1].xyz;
                float3 _1251 = _1202 - _47_m1[2].xyz;
                float3 _1255 = _1202 - _47_m1[3].xyz;
                float4 _1260 = float4(dot(_1243, _1243), dot(_1247, _1247), dot(_1251, _1251), dot(_1255, _1255));
                float4 _1269 = float4(_47_m1[0].w, _47_m1[1].w, _47_m1[2].w, _47_m1[3].w);
                float4 _1271 = float4(bool4(_1260.x < _1269.x, _1260.y < _1269.y, _1260.z < _1269.z, _1260.w < _1269.w));
                float3 _1275 = clamp(_1271.yzw - _1271.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1279 = clamp(4.0f - dot(float4(_1271.x, _1275.x, _1275.y, _1275.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1281 = clamp(_1279 + 1.0f, 0.0f, 3.0f);
                uint _1282 = uint(_1279);
                uint _1290 = uint(_1281);
                float _1296 = dot(_1260, _336[_1290]) / _47_m1[_1290].w;
                float _1314;
                if (((_1281 > _1279) && (_1296 >= 0.0f)) && (_1296 <= 1.0f))
                {
                    _1314 = _1279 + step(frac(52.98291778564453125f * frac(dot(float2(_748) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1260, _336[_1282]) / _47_m1[_1282].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1314 = _1279;
                }
                float _1315 = clamp(_1314, 0.0f, 4.0f);
                float4 _1323 = mul(_47_m0[uint(_1315)], float4(_1202, 1.0f));
                float _1326 = _1323.z;
                float4 _1327 = float4(_1323.xy, _1326, _1315);
                float3 _1328 = _1327.xyz;
                bool3 _1329 = bool3(_1328.x <= 0.0f.xxx.x, _1328.y <= 0.0f.xxx.y, _1328.z <= 0.0f.xxx.z);
                bool3 _1330 = bool3(_1328.x >= 1.0f.xxx.x, _1328.y >= 1.0f.xxx.y, _1328.z >= 1.0f.xxx.z);
                bool _1336 = any(bool3(_1329.x || _1330.x, _1329.y || _1330.y, _1329.z || _1330.z)) || ((asuint(_1326) & 2147483647u) > 2139095040u);
                int _1337 = int(_1315);
                float2 _1352 = float4(_47_m3[_1337].xy + (_1327.xy * _47_m3[_1337].zw), _1326, _1315).xy;
                _1391 = _1336 ? 1.0f : (0.25f * (((_48.SampleCmpLevelZero(_24, float3(_1352 + (_47_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _355).xy, _1326) + _48.SampleCmpLevelZero(_24, float3(_1352 + (_47_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _355).xy, _1326)) + _48.SampleCmpLevelZero(_24, float3(_1352 + (_47_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _355).xy, _1326)) + _48.SampleCmpLevelZero(_24, float3(_1352 + (_47_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _355).xy, _1326)));
                _1392 = _1336;
            }
            else
            {
                _1391 = 1.0f;
                _1392 = false;
            }
            _1393 = _1391;
            _1394 = _1392;
        }
        else
        {
            _1393 = 1.0f;
            _1394 = false;
        }
        float _1594;
        float _1595;
        if ((_1236 < 1.0f) || (_47_m8.x > 0.5f))
        {
            float _1405 = 1.0f - clamp(dot(_617, _45_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1422 = float4((_1202 - (_45_m0.xyz * (_1405 * _47_m24.x))) + (_617 * (_1405 * _47_m24.y)), 1.0f);
            float4 _1423 = mul(_47_m23, _1422);
            float2 _1424 = _1423.xy;
            float _1592;
            if (all(bool2(_1424.x > 0.0f.xx.x, _1424.y > 0.0f.xx.y)) && all(bool2(_1424.x < 1.0f.xx.x, _1424.y < 1.0f.xx.y)))
            {
                uint _1443 = clamp(uint((floor(_1423.y * _47_m25.z) + _1423.x) * _47_m25.y), 0u, 127u);
                uint _1447 = asuint(_47_m27[_1443].x);
                float2 _1448 = spvUnpackHalf2x16(_1447);
                float _1449 = _1448.x;
                float _1591;
                if (_1449 >= 0.0f)
                {
                    float4x4 _1458 = _47_m22;
                    _1458[0].w = _47_m27[_1443].y;
                    _1458[1].w = _47_m27[_1443].z;
                    _1458[2].w = _47_m27[_1443].w;
                    float4 _1465 = mul(_1458, _1422);
                    float3 _1466 = _1465.xyz;
                    float _1590;
                    if (all(bool3(_1466.x > 0.0f.xxx.x, _1466.y > 0.0f.xxx.y, _1466.z > 0.0f.xxx.z)) && all(bool3(_1466.x < 1.0f.xxx.x, _1466.y < 1.0f.xxx.y, _1466.z < 1.0f.xxx.z)))
                    {
                        float2 _1478 = (_1465.xy * _47_m24.zw) + float2(_1449, spvUnpackHalf2x16(_1447 >> 16u).x);
                        float _1483 = _1465.z;
                        float2 _1489 = float4(_1478, _1483, 1.0f).xy * _47_m26.zw;
                        float2 _1491 = floor(_1489 + 0.5f.xx);
                        float2 _1492 = _1489 - _1491;
                        float _1493 = _1492.x;
                        float _1494 = _1493 + 0.5f;
                        float _1496 = (_1494 * _1494) * 0.5f;
                        float _1499 = min(_1493, 0.0f);
                        float _1503 = max(_1493, 0.0f);
                        float4 _1507 = float4(_1496 - _1493, (1.0f - _1493) - (_1499 * _1499), (_1493 + 1.0f) - (_1503 * _1503), _1496) * 0.44444000720977783203125f;
                        float _1508 = _1492.y;
                        float _1509 = _1508 + 0.5f;
                        float _1511 = (_1509 * _1509) * 0.5f;
                        float _1514 = min(_1508, 0.0f);
                        float _1518 = max(_1508, 0.0f);
                        float4 _1522 = float4(_1511 - _1508, (1.0f - _1508) - (_1514 * _1514), (_1508 + 1.0f) - (_1518 * _1518), _1511) * 0.44444000720977783203125f;
                        float2 _1524 = _1507.yw;
                        float2 _1525 = _1507.xz + _1524;
                        float2 _1527 = _1522.yw;
                        float2 _1528 = _1522.xz + _1527;
                        float2 _1534 = ((_1524 / _1525) + float2(-1.5f, 0.5f)) * _47_m26.xx;
                        float2 _1536 = ((_1527 / _1528) + float2(-1.5f, 0.5f)) * _47_m26.yy;
                        float2 _1538 = _1491 * _47_m26.xy;
                        float _1539 = _1534.x;
                        float _1540 = _1536.x;
                        float2 _1542 = _1538 + float2(_1539, _1540);
                        float _1543 = _1534.y;
                        float2 _1545 = _1538 + float2(_1543, _1540);
                        float _1546 = _1536.y;
                        float2 _1548 = _1538 + float2(_1539, _1546);
                        float2 _1550 = _1538 + float2(_1543, _1546);
                        float _1551 = _1525.x;
                        float _1552 = _1528.x;
                        float _1554 = _1525.y;
                        float _1556 = _1528.y;
                        _1590 = ((((_1551 * _1552) * _51.SampleCmpLevelZero(_24, float3(_1542, _355).xy, _1483)) + ((_1554 * _1552) * _51.SampleCmpLevelZero(_24, float3(_1545, _355).xy, _1483))) + ((_1551 * _1556) * _51.SampleCmpLevelZero(_24, float3(_1548, _355).xy, _1483))) + ((_1554 * _1556) * _51.SampleCmpLevelZero(_24, float3(_1550, _355).xy, _1483));
                    }
                    else
                    {
                        _1590 = 1.0f;
                    }
                    _1591 = _1590;
                }
                else
                {
                    _1591 = 1.0f;
                }
                _1592 = _1591;
            }
            else
            {
                _1592 = 1.0f;
            }
            _1594 = _1394 ? _1592 : _1393;
            _1595 = _1592;
        }
        else
        {
            _1594 = _1393;
            _1595 = 1.0f;
        }
        float _1598 = lerp(lerp(_1595, _1594, _1236), min(_1595, _1594), _47_m8.x);
        float _1647;
        if (_1598 > 0.001000000047497451305389404296875f)
        {
            float3 _1605 = _1202 - _17_m65.xyz;
            float2 _1615 = (_1605 + (_17_m68.xyz * _1605.y)).xz * _17_m66.z;
            float2 _1622 = _17_m67.xy * _17_m75.w;
            _1647 = _1598 * lerp(1.0f, lerp(_50.SampleLevel(_23, _1615 + _1622, 0.0f), _50.SampleLevel(_23, (_1615 * _17_m67.w) + _1622, 0.0f), smoothstep(_17_m66.x, _17_m66.y, length(_1605.xz)).xxxx).x, _17_m67.z);
        }
        else
        {
            _1647 = _1598;
        }
        _1652 = float2(lerp(_1647, _47_m7.z, _47_m7.w), _1647);
        break;
    } while(false);
    float _1657 = lerp(1.0f, min(1.0f, _1652.x), _47_m6.x);
    float4 _1802;
    if (_1657 > 0.001000000047497451305389404296875f)
    {
        float3 _1668 = reflect(-_425, _617);
        float3 _1669 = -_45_m0.xyz;
        float _1674 = dot(_1669, _1668);
        float3 _1676 = _1668 - (_1669 * _1674);
        bool3 _1678 = (_1674 < _45_m4.z).xxx;
        float3 _1686 = normalize((_1669 * _45_m4.z) + ((_1676 * rsqrt(max(6.103515625e-05f, dot(_1676, _1676)))) * _45_m4.y));
        float3 _1687 = float3(_1678.x ? _1686.x : _1668.x, _1678.y ? _1686.y : _1668.y, _1678.z ? _1686.z : _1668.z);
        float3 _1691 = _1687 + _425;
        float3 _1695 = _1691 * rsqrt(max(6.103515625e-05f, dot(_1691, _1691)));
        float _1696 = clamp(dot(_1687, _617), 0.0f, 1.0f);
        float _1698 = clamp(dot(_617, _1695), 0.0f, 1.0f);
        float _1702 = clamp(dot(_617, _425), 0.0f, 1.0f);
        float _1703 = _33_m79 * _33_m79;
        float _1704 = _1703 * _1703;
        float _1725 = (((_1698 * _1704) - _1698) * _1698) + 1.0f;
        float _1728 = 1.0f - clamp(dot(_425, _1695), 0.0f, 1.0f);
        float _1729 = _1728 * _1728;
        float _1731 = (_1728 * _1729) * _1729;
        float _1755 = 1.0f - _33_m79;
        float _1762 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1755 * (1.04997003078460693359375f + (_1755 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1755))))));
        float _1763 = 1.0f - _1762;
        float3 _1766 = _717 + ((1.0f.xxx - _717) * 0.0476190485060214996337890625f);
        float3 _1785 = clamp(clamp((min(((_717 * (1.0f - _1731)) + _1731.xxx) * ((_1704 / (_1725 * _1725)) * (0.5f / (((_1696 * sqrt(((((-_1702) * _1704) + _1702) * _1702) + _1704)) + (_1702 * sqrt(((((-_1696) * _1704) + _1696) * _1696) + _1704))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1766 * (((_54.SampleLevel(_22, (float2(_1702, _33_m79) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_22, (float2(_1696, _33_m79) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1762) / _1763)) * _1766) / (1.0f.xxx - (_1766 * _1763)))) * _45_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_651, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _33_m73;
        float3 _1789 = ((_1785 * _1696) + ((_713 * 1.0f) * _1696)) * _45_m1.xyz;
        float3 _1800 = lerp(_1789, _1789 * _52.SampleBias(_22, float2(_1657, 0.5f), _17_m16).xyz, (1.0f - _1657).xxx) * 1.0f;
        _1802 = float4(_1800.x, _1800.y, _1800.z, 0.0f.xxxx.w);
    }
    else
    {
        _1802 = 0.0f.xxxx;
    }
    float2 _1803 = float2(_748);
    float2 _1805 = floor(_1803 * 0.03125f);
    int _1813 = int((_1805.x + (_1805.y * _43_m5)) * 8.0f);
    float _1820 = floor(_749 - (_17_m3.y * _43_m11));
    float _1824 = clamp(_1820, 0.0f, _43_m7 - 1.0f);
    int _1826 = int(_1824 * 8.0f);
    float3 _1828;
    float _1831;
    _1828 = 0.0f.xxx;
    _1831 = 1.0f;
    float3 _1829;
    float _1832;
    [loop]
    for (int _1833 = 0; _1833 <= 7; _1828 = _1829, _1831 = _1832, _1833++)
    {
        uint _1851 = (_1820 <= _1824) ? (_27.Load(uint(_1813 + _1833) * 4 + 0) & _27.Load(uint((_17_m21.y + _1826) + _1833) * 4 + 0)) : 0u;
        uint _1852 = uint(_1833);
        float3 _1856;
        _1832 = _1831;
        _1856 = 0.0f.xxx;
        uint _1859;
        float _1854;
        float3 _1857;
        [loop]
        for (uint _1858 = _1851; _1858 != 0u; _1832 = _1854, _1856 = _1857, _1858 = _1859)
        {
            uint _1863 = firstbitlow(_1858);
            _1859 = _1858 ^ (1u << (_1863 & 31u));
            int _1869 = int((32u * _1852) + _1863) * 8;
            int _1872 = _1869 + 1;
            int _1875 = _1869 + 2;
            int _1878 = _1869 + 3;
            int _1881 = _1869 + 5;
            int _1884 = _1869 + 6;
            int _1887 = _1869 + 7;
            uint _1891 = uint(_45_m6[_1881].w);
            float _1966;
            if ((_1891 & 1u) == 1u)
            {
                uint _1897 = asuint(_45_m6[_1881].x);
                uint _1904 = asuint(_45_m6[_1881].y);
                uint _1911 = asuint(_45_m6[_1881].z);
                uint _1918 = asuint(_45_m6[_1884].x);
                uint _1925 = asuint(_45_m6[_1884].y);
                uint _1932 = asuint(_45_m6[_1884].z);
                float3 _1951 = abs(mul(float4(_398 - _45_m6[_1872].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1897).x, spvUnpackHalf2x16(_1911).x, spvUnpackHalf2x16(_1925).x, 0.0f), float4(spvUnpackHalf2x16(_1897 >> 16u).x, spvUnpackHalf2x16(_1911 >> 16u).x, spvUnpackHalf2x16(_1925 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1904).x, spvUnpackHalf2x16(_1918).x, spvUnpackHalf2x16(_1932).x, 0.0f), float4(spvUnpackHalf2x16(_1904 >> 16u).x, spvUnpackHalf2x16(_1918 >> 16u).x, spvUnpackHalf2x16(_1932 >> 16u).x, 0.0f))).xyz);
                float _1958 = _45_m6[_1887].x * 0.5f;
                float _1964 = 1.0f - clamp((max(max(_1951.x, _1951.y), _1951.z) - (_1958 + 0.5f)) / (0.5f - _1958), 0.0f, 1.0f);
                _1966 = _1964 * _1964;
            }
            else
            {
                _1966 = 1.0f;
            }
            bool _1970 = _45_m6[_1878].z > 0.5f;
            if ((false || (_1966 < 0.001000000047497451305389404296875f)) || _1970)
            {
                _1854 = _1832;
                _1857 = _1856;
                continue;
            }
            float _3084;
            float3 _3085;
            if (_45_m6[_1869].w < 1.5f)
            {
                float3 _2458 = float3(0.100000001490116119384765625f, _33_m79, 1.0f);
                float _2467 = (0.5f + (0.5f * _45_m6[_1875].y)) - abs(_45_m6[_1875].x);
                float _2468 = _45_m6[_1875].y - _2467;
                float _2475 = abs(max((1.0f - abs(_2467)) - abs(_2468), 0.00048828125f));
                float3 _2479 = normalize(float3(_2467, _2468, (_45_m6[_1875].x >= 0.0f) ? _2475 : (-_2475)));
                float3 _2480 = _45_m6[_1872].xyz - _398;
                float _2481 = dot(_2480, _2480);
                float _2482 = rsqrt(_2481);
                float3 _2483 = _2480 * _2482;
                float _2487 = clamp(_45_m6[_1887].y * _2482, 0.0f, 1.0f);
                int _2492 = int(_45_m6[_1887].w);
                float3 _2493 = _2479 * _45_m6[_1875].z;
                float3 _2494 = _2493 * 0.5f;
                float3 _2495 = _2480 - _2494;
                float3 _2496 = _2480 + _2494;
                bool _2499 = (uint(_45_m6[_1869].w) & 1u) == 0u;
                bool _2502 = _2499 || ((_1891 & 2u) != 0u);
                bool _2505 = (!_2499) && (_45_m6[_1875].z > 0.0f);
                float _2524;
                float _2525;
                if (_2505)
                {
                    float _2509 = length(_2495);
                    float _2510 = length(_2496);
                    _2524 = clamp(0.5f * ((dot(_617, _2495) / _2509) + (dot(_617, _2496) / _2510)), 0.0f, 1.0f);
                    _2525 = 1.0f / ((((_2509 * _2510) + dot(_2495, _2496)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2524 = clamp(dot(_617, _2483), 0.0f, 1.0f);
                    _2525 = 1.0f;
                }
                float _2547;
                if (_45_m6[_1884].w < 0.0f)
                {
                    float _2541 = _2481 * (_45_m6[_1872].w * _45_m6[_1872].w);
                    float _2544 = clamp(1.0f - (_2541 * _2541), 0.0f, 1.0f);
                    _2547 = lerp(1.0f / (_2481 + 1.0f), _2525, float(_2505)) * (_2544 * _2544);
                }
                else
                {
                    float3 _2530 = _2480 * _45_m6[_1872].w;
                    _2547 = _2525 * pow(1.0f - clamp(dot(_2530, _2530), 0.0f, 1.0f), _45_m6[_1884].w);
                }
                float _2553 = clamp((dot(_2483, -_2479) - _45_m6[_1875].z) * _45_m6[_1875].w, 0.0f, 1.0f);
                float _2557 = _2547 * lerp(1.0f, _2553 * _2553, float(_2499));
                float _2657;
                if ((!_2505) && (_2492 >= 0))
                {
                    uint _2563 = uint(_2492);
                    float2 _2650;
                    [branch]
                    if (_2499)
                    {
                        float4 _2640 = mul(_59_m1[_2563], _402);
                        _2650 = _59_m0[_2563].xy + (clamp(_2640.xy / _2640.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2563].zw);
                    }
                    else
                    {
                        float3 _2577 = mul(float4(-_2480, 0.0f), _59_m1[_2563]).xyz;
                        float3 _363 = _2577;
                        float3 _362 = _2577;
                        float3 _361 = abs(_2577);
                        uint _2586 = uint(int(_361.y > _361.x));
                        uint _2592 = (_361.z > _361[_2586]) ? 2u : _2586;
                        uint _2598 = (_2592 * 2u) + uint(_362[_2592] < 0.0f);
                        float _2602 = abs(_363[_2598 / 2u]);
                        float _2622 = 0.5f - (0.000244140625f / _59_m0[_2563].w);
                        _2650 = _59_m0[_2563].xy + (clamp(float2((float(_2598) + ((((_363[uint(_337[_2598].x)] * _338[_2598].x) / _2602) * _2622) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_363[uint(_337[_2598].y)] * _338[_2598].y) / _2602) * _2622)), 0.0f.xx, 1.0f.xx) * _59_m0[_2563].zw);
                    }
                    _2657 = _2557 * _57.SampleLevel(_22, _2650, 0.0f).x;
                }
                else
                {
                    _2657 = _2557;
                }
                bool _2658 = _2657 > 0.0f;
                float _2946;
                if (_2658)
                {
                    int _2710;
                    if (_2502)
                    {
                        _2710 = int(_45_m6[_1878].x);
                    }
                    else
                    {
                        uint _2665 = asuint(_45_m6[_1875].w);
                        uint _2667 = asuint(_45_m6[_1878].x);
                        float3 _2668 = _398 - _45_m6[_1872].xyz;
                        float3 _2669 = abs(_2668);
                        float _2670 = _2669.x;
                        float _2671 = _2669.y;
                        float _2673 = _2669.z;
                        int _2705;
                        if ((_2670 > _2671) && (_2670 > _2673))
                        {
                            _2705 = int((_2668.x > 0.0f) ? (_2665 >> 24u) : ((_2665 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2697;
                            if (_2671 > _2673)
                            {
                                _2697 = int((_2668.y > 0.0f) ? ((_2665 >> 8u) & 255u) : (_2665 & 255u));
                            }
                            else
                            {
                                _2697 = int((_2668.z > 0.0f) ? ((_2667 >> 8u) & 255u) : (_2667 & 255u));
                            }
                            _2705 = _2697;
                        }
                        _2710 = (_2705 < 80) ? _2705 : (-1);
                    }
                    float4 _2727 = mul(_47_m10[_2710], float4((_398 - ((-_2483) * _47_m11[_2710].x)) + (_617 * (_47_m11[_2710].y * 5.0f)), 1.0f));
                    float _2728 = _2727.w;
                    float3 _2731 = _2727.xyz / _2728.xxx;
                    float2 _2732 = _2731.xy;
                    float3 _2740 = _2731.xyz;
                    bool3 _2741 = bool3(_2740.x <= 0.0f.xxx.x, _2740.y <= 0.0f.xxx.y, _2740.z <= 0.0f.xxx.z);
                    bool3 _2742 = bool3(_2740.x >= 1.0f.xxx.x, _2740.y >= 1.0f.xxx.y, _2740.z >= 1.0f.xxx.z);
                    float _2745 = _2731.z;
                    float2 _2756 = ((_2732 * (_47_m12[_2710].zw - _47_m12[_2710].xy)) + _47_m12[_2710].xy).xy * _47_m13.zw;
                    float2 _2758 = floor(_2756 + 0.5f.xx);
                    float2 _2759 = _2756 - _2758;
                    float _2760 = _2759.x;
                    float _2761 = _2760 + 0.5f;
                    float _2762 = _2761 * _2761;
                    float _2765 = 1.0f - _2760;
                    float _2766 = min(_2760, 0.0f);
                    float _2769 = _2760 + 1.0f;
                    float _2770 = max(_2760, 0.0f);
                    float _2781 = _2759.y;
                    float _2782 = _2781 + 0.5f;
                    float _2783 = _2782 * _2782;
                    float _2786 = 1.0f - _2781;
                    float _2787 = min(_2781, 0.0f);
                    float _2790 = _2781 + 1.0f;
                    float _2791 = max(_2781, 0.0f);
                    float3 _2803 = float3(0.1599999964237213134765625f * _2765, 0.1599999964237213134765625f * ((_2769 - (_2770 * _2770)) + 1.0f), _2762 * 0.07999999821186065673828125f);
                    float3 _2804 = float3(0.1599999964237213134765625f * ((_2762 * 0.5f) - _2760), 0.1599999964237213134765625f * ((_2765 - (_2766 * _2766)) + 1.0f), 0.1599999964237213134765625f * _2769) + _2803;
                    float3 _2806 = float3(0.1599999964237213134765625f * _2786, 0.1599999964237213134765625f * ((_2790 - (_2791 * _2791)) + 1.0f), _2783 * 0.07999999821186065673828125f);
                    float3 _2807 = float3(0.1599999964237213134765625f * ((_2783 * 0.5f) - _2781), 0.1599999964237213134765625f * ((_2786 - (_2787 * _2787)) + 1.0f), 0.1599999964237213134765625f * _2790) + _2806;
                    float3 _2813 = ((_2803 / _2804) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.xxx;
                    float3 _2815 = ((_2806 / _2807) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.yyy;
                    float2 _2817 = _2758 * _47_m13.xy;
                    float _2818 = _2813.x;
                    float _2819 = _2815.x;
                    float _2822 = _2813.y;
                    float _2825 = _2813.z;
                    float _2828 = _2815.y;
                    float _2835 = _2815.z;
                    float _2842 = _2804.x;
                    float _2843 = _2807.x;
                    float _2845 = _2804.y;
                    float _2847 = _2804.z;
                    float _2849 = _2807.y;
                    float _2853 = _2807.z;
                    float _2911 = (((((((_2842 * _2843) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2818, _2819), _355).xy, _2745)) + ((_2845 * _2843) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2822, _2819), _355).xy, _2745))) + ((_2847 * _2843) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2825, _2819), _355).xy, _2745))) + ((_2842 * _2849) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2818, _2828), _355).xy, _2745))) + ((_2845 * _2849) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2822, _2828), _355).xy, _2745))) + ((_2847 * _2849) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2825, _2828), _355).xy, _2745))) + ((_2842 * _2853) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2818, _2835), _355).xy, _2745));
                    float2 _2932 = min(_2732, 1.0f.xx - _2732);
                    _2946 = (_2710 >= 0) ? lerp(1.0f, (any(bool3(_2741.x || _2742.x, _2741.y || _2742.y, _2741.z || _2742.z)) || ((asuint(_2745) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2911 + ((_2845 * _2853) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2822, _2835), _355).xy, _2745))) + ((_2847 * _2853) * _49.SampleCmpLevelZero(_24, float3(_2817 + float2(_2825, _2835), _355).xy, _2745))), _2502 ? min(_47_m11[_2710].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_47_m11[_2710].z - _2728) * 0.25f, min(_2932.x, _2932.y)))) : _47_m11[_2710].w) : 1.0f;
                }
                else
                {
                    _2946 = 1.0f;
                }
                float3 _2971;
                float3 _2972;
                if (_2505)
                {
                    float3 _2949 = _2458 * _2458;
                    float3 _2951 = reflect(-_425, _617);
                    float _2960 = dot(_2951, _2493);
                    _2971 = _2949 / clamp(_2949 + (0.5f * clamp(_45_m6[_1875].z * _2482, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2972 = normalize(_2495 + (_2493 * clamp(dot(_2495, (_2951 * _2960) - _2493) / ((_45_m6[_1875].z * _45_m6[_1875].z) - (_2960 * _2960)), 0.0f, 1.0f)));
                }
                else
                {
                    _2971 = 1.0f.xxx;
                    _2972 = _2483;
                }
                float3 _2973 = _2972 + _425;
                float3 _2977 = _2973 * rsqrt(max(6.103515625e-05f, dot(_2973, _2973)));
                float3 _3083;
                if (_2658)
                {
                    float _2980 = clamp(_2524, 0.0f, 1.0f);
                    float _2982 = clamp(dot(_617, _2977), 0.0f, 1.0f);
                    float _2984 = clamp(dot(_425, _2977), 0.0f, 1.0f);
                    float _2986 = clamp(dot(_617, _425), 0.0f, 1.0f);
                    float _2987 = _33_m79 * _33_m79;
                    float _2997;
                    if (_2487 > 0.0f)
                    {
                        _2997 = clamp(_2987 + ((_2487 * _2487) / ((_2984 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2997 = _2987;
                    }
                    float _2998 = _2997 * _2997;
                    float _3019 = (((_2982 * _2998) - _2982) * _2982) + 1.0f;
                    float _3024 = 1.0f - _2984;
                    float _3025 = _3024 * _3024;
                    float _3027 = (_3024 * _3025) * _3025;
                    float _3051 = 1.0f - _33_m79;
                    float _3058 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3051 * (1.04997003078460693359375f + (_3051 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3051))))));
                    float _3059 = 1.0f - _3058;
                    float3 _3062 = _717 + ((1.0f.xxx - _717) * 0.0476190485060214996337890625f);
                    float3 _3081 = (clamp((min(((_717 * (1.0f - _3027)) + _3027.xxx) * (((_2998 / (_3019 * _3019)) * _2971.y) * (0.5f / (((_2980 * sqrt(((((-_2986) * _2998) + _2986) * _2986) + _2998)) + (_2986 * sqrt(((((-_2980) * _2998) + _2980) * _2980) + _2998))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3062 * (((_54.SampleLevel(_22, (float2(_2986, _33_m79) * 0.96875f) + 0.015625f.xx, 0.0f).x * _54.SampleLevel(_22, (float2(_2980, _33_m79) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3058) / _3059)) * _3062) / (1.0f.xxx - (_3062 * _3059)))) * _45_m6[_1887].z, 0.0f.xxx, 1000.0f.xxx) * _2524) + ((_713 * _2971.z) * _2524);
                    _3083 = _3081 * (((_45_m6[_1869].xyz * _2657) * _2946) * _1966);
                }
                else
                {
                    _3083 = 0.0f.xxx;
                }
                _3084 = _1832;
                _3085 = _3083;
            }
            else
            {
                float _2456;
                do
                {
                    if (_1970)
                    {
                        _2456 = 1.0f;
                        break;
                    }
                    float _1990 = (0.5f + (0.5f * _45_m6[_1875].y)) - abs(_45_m6[_1875].x);
                    float _1991 = _45_m6[_1875].y - _1990;
                    float _1998 = abs(max((1.0f - abs(_1990)) - abs(_1991), 0.00048828125f));
                    float3 _2002 = normalize(float3(_1990, _1991, (_45_m6[_1875].x >= 0.0f) ? _1998 : (-_1998)));
                    float3 _2003 = _45_m6[_1872].xyz - _398;
                    float _2004 = dot(_2003, _2003);
                    float3 _2006 = _2003 * rsqrt(_2004);
                    int _2009 = int(_45_m6[_1887].w);
                    float3 _2011 = (_2002 * _45_m6[_1875].z) * 0.5f;
                    float3 _2012 = _2003 - _2011;
                    float3 _2013 = _2003 + _2011;
                    bool _2016 = (uint(_45_m6[_1869].w) & 1u) == 0u;
                    bool _2019 = _2016 || ((_1891 & 2u) != 0u);
                    bool _2022 = (!_2016) && (_45_m6[_1875].z > 0.0f);
                    float _2034;
                    if (_2022)
                    {
                        _2034 = 1.0f / ((((length(_2012) * length(_2013)) + dot(_2012, _2013)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2034 = 1.0f;
                    }
                    float _2056;
                    if (_45_m6[_1884].w < 0.0f)
                    {
                        float _2050 = _2004 * (_45_m6[_1872].w * _45_m6[_1872].w);
                        float _2053 = clamp(1.0f - (_2050 * _2050), 0.0f, 1.0f);
                        _2056 = lerp(1.0f / (_2004 + 1.0f), _2034, float(_2022)) * (_2053 * _2053);
                    }
                    else
                    {
                        float3 _2039 = _2003 * _45_m6[_1872].w;
                        _2056 = _2034 * pow(1.0f - clamp(dot(_2039, _2039), 0.0f, 1.0f), _45_m6[_1884].w);
                    }
                    float _2062 = clamp((dot(_2006, -_2002) - _45_m6[_1875].z) * _45_m6[_1875].w, 0.0f, 1.0f);
                    float _2066 = _2056 * lerp(1.0f, _2062 * _2062, float(_2016));
                    float _2166;
                    if ((!_2022) && (_2009 >= 0))
                    {
                        uint _2072 = uint(_2009);
                        float2 _2159;
                        [branch]
                        if (_2016)
                        {
                            float4 _2149 = mul(_59_m1[_2072], _402);
                            _2159 = _59_m0[_2072].xy + (clamp(_2149.xy / _2149.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2072].zw);
                        }
                        else
                        {
                            float3 _2086 = mul(float4(-_2003, 0.0f), _59_m1[_2072]).xyz;
                            float3 _366 = _2086;
                            float3 _365 = _2086;
                            float3 _364 = abs(_2086);
                            uint _2095 = uint(int(_364.y > _364.x));
                            uint _2101 = (_364.z > _364[_2095]) ? 2u : _2095;
                            uint _2107 = (_2101 * 2u) + uint(_365[_2101] < 0.0f);
                            float _2111 = abs(_366[_2107 / 2u]);
                            float _2131 = 0.5f - (0.000244140625f / _59_m0[_2072].w);
                            _2159 = _59_m0[_2072].xy + (clamp(float2((float(_2107) + ((((_366[uint(_337[_2107].x)] * _338[_2107].x) / _2111) * _2131) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_366[uint(_337[_2107].y)] * _338[_2107].y) / _2111) * _2131)), 0.0f.xx, 1.0f.xx) * _59_m0[_2072].zw);
                        }
                        _2166 = _2066 * _57.SampleLevel(_22, _2159, 0.0f).x;
                    }
                    else
                    {
                        _2166 = _2066;
                    }
                    float _2455;
                    if (_2166 > 0.0f)
                    {
                        int _2219;
                        if (_2019)
                        {
                            _2219 = int(_45_m6[_1878].x);
                        }
                        else
                        {
                            uint _2174 = asuint(_45_m6[_1875].w);
                            uint _2176 = asuint(_45_m6[_1878].x);
                            float3 _2177 = _398 - _45_m6[_1872].xyz;
                            float3 _2178 = abs(_2177);
                            float _2179 = _2178.x;
                            float _2180 = _2178.y;
                            float _2182 = _2178.z;
                            int _2214;
                            if ((_2179 > _2180) && (_2179 > _2182))
                            {
                                _2214 = int((_2177.x > 0.0f) ? (_2174 >> 24u) : ((_2174 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2206;
                                if (_2180 > _2182)
                                {
                                    _2206 = int((_2177.y > 0.0f) ? ((_2174 >> 8u) & 255u) : (_2174 & 255u));
                                }
                                else
                                {
                                    _2206 = int((_2177.z > 0.0f) ? ((_2176 >> 8u) & 255u) : (_2176 & 255u));
                                }
                                _2214 = _2206;
                            }
                            _2219 = (_2214 < 80) ? _2214 : (-1);
                        }
                        float4 _2236 = mul(_47_m10[_2219], float4((_398 - ((-_2006) * _47_m11[_2219].x)) + (_617 * (_47_m11[_2219].y * 5.0f)), 1.0f));
                        float _2237 = _2236.w;
                        float3 _2240 = _2236.xyz / _2237.xxx;
                        float2 _2241 = _2240.xy;
                        float3 _2249 = _2240.xyz;
                        bool3 _2250 = bool3(_2249.x <= 0.0f.xxx.x, _2249.y <= 0.0f.xxx.y, _2249.z <= 0.0f.xxx.z);
                        bool3 _2251 = bool3(_2249.x >= 1.0f.xxx.x, _2249.y >= 1.0f.xxx.y, _2249.z >= 1.0f.xxx.z);
                        float _2254 = _2240.z;
                        float2 _2265 = ((_2241 * (_47_m12[_2219].zw - _47_m12[_2219].xy)) + _47_m12[_2219].xy).xy * _47_m13.zw;
                        float2 _2267 = floor(_2265 + 0.5f.xx);
                        float2 _2268 = _2265 - _2267;
                        float _2269 = _2268.x;
                        float _2270 = _2269 + 0.5f;
                        float _2271 = _2270 * _2270;
                        float _2274 = 1.0f - _2269;
                        float _2275 = min(_2269, 0.0f);
                        float _2278 = _2269 + 1.0f;
                        float _2279 = max(_2269, 0.0f);
                        float _2290 = _2268.y;
                        float _2291 = _2290 + 0.5f;
                        float _2292 = _2291 * _2291;
                        float _2295 = 1.0f - _2290;
                        float _2296 = min(_2290, 0.0f);
                        float _2299 = _2290 + 1.0f;
                        float _2300 = max(_2290, 0.0f);
                        float3 _2312 = float3(0.1599999964237213134765625f * _2274, 0.1599999964237213134765625f * ((_2278 - (_2279 * _2279)) + 1.0f), _2271 * 0.07999999821186065673828125f);
                        float3 _2313 = float3(0.1599999964237213134765625f * ((_2271 * 0.5f) - _2269), 0.1599999964237213134765625f * ((_2274 - (_2275 * _2275)) + 1.0f), 0.1599999964237213134765625f * _2278) + _2312;
                        float3 _2315 = float3(0.1599999964237213134765625f * _2295, 0.1599999964237213134765625f * ((_2299 - (_2300 * _2300)) + 1.0f), _2292 * 0.07999999821186065673828125f);
                        float3 _2316 = float3(0.1599999964237213134765625f * ((_2292 * 0.5f) - _2290), 0.1599999964237213134765625f * ((_2295 - (_2296 * _2296)) + 1.0f), 0.1599999964237213134765625f * _2299) + _2315;
                        float3 _2322 = ((_2312 / _2313) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.xxx;
                        float3 _2324 = ((_2315 / _2316) + float3(-2.5f, -0.5f, 1.5f)) * _47_m13.yyy;
                        float2 _2326 = _2267 * _47_m13.xy;
                        float _2327 = _2322.x;
                        float _2328 = _2324.x;
                        float _2331 = _2322.y;
                        float _2334 = _2322.z;
                        float _2337 = _2324.y;
                        float _2344 = _2324.z;
                        float _2351 = _2313.x;
                        float _2352 = _2316.x;
                        float _2354 = _2313.y;
                        float _2356 = _2313.z;
                        float _2358 = _2316.y;
                        float _2362 = _2316.z;
                        float _2420 = (((((((_2351 * _2352) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2327, _2328), _355).xy, _2254)) + ((_2354 * _2352) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2331, _2328), _355).xy, _2254))) + ((_2356 * _2352) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2334, _2328), _355).xy, _2254))) + ((_2351 * _2358) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2327, _2337), _355).xy, _2254))) + ((_2354 * _2358) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2331, _2337), _355).xy, _2254))) + ((_2356 * _2358) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2334, _2337), _355).xy, _2254))) + ((_2351 * _2362) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2327, _2344), _355).xy, _2254));
                        float2 _2441 = min(_2241, 1.0f.xx - _2241);
                        _2455 = (_2219 >= 0) ? lerp(1.0f, (any(bool3(_2250.x || _2251.x, _2250.y || _2251.y, _2250.z || _2251.z)) || ((asuint(_2254) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2420 + ((_2354 * _2362) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2331, _2344), _355).xy, _2254))) + ((_2356 * _2362) * _49.SampleCmpLevelZero(_24, float3(_2326 + float2(_2334, _2344), _355).xy, _2254))), _2019 ? min(_47_m11[_2219].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_47_m11[_2219].z - _2237) * 0.25f, min(_2441.x, _2441.y)))) : _47_m11[_2219].w) : 1.0f;
                    }
                    else
                    {
                        _2455 = 1.0f;
                    }
                    _2456 = _2455;
                    break;
                } while(false);
                _3084 = _1832 * _2456;
                _3085 = 0.0f.xxx;
            }
            _1854 = _3084;
            _1857 = _1856 + _3085;
        }
        _1829 = _1828 + _1856;
    }
    float3 _3095 = -_425;
    float _3096 = 1.0f - _33_m1;
    float _3111 = _398.y * _17_m46.w;
    float _3116 = max(0.00999999977648258209228515625f, _3111 + _17_m47.w);
    float3 _3130 = exp(_17_m45.xyz * ((-max(0.0f, (_426 * _17_m44.w) - _17_m43.w)) * (((1.0f - exp(-_3116)) / _3116) * exp(_3111 + _17_m48.w))));
    float _3133 = dot(_3095, _17_m44.xyz);
    float _3139 = _17_m45.w * _17_m45.w;
    float _3143 = (1.0f + _3139) - ((2.0f * _17_m45.w) * _3133);
    float3 _3475;
    float _3476;
    if (_17_m55.z > 0.0f)
    {
        uint3 _3301 = (uint3(int3(int(_748.x), int(_748.y), int(_17_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3302 = _3301.y;
        uint _3303 = _3301.z;
        uint _3306 = _3301.x + (_3302 * _3303);
        uint _3308 = _3302 + (_3303 * _3306);
        uint _3310 = _3303 + (_3306 * _3308);
        uint _3312 = _3306 + (_3308 * _3310);
        float _3336 = dot(_3095, -_15_m0[2].xyz);
        float3 _3346 = _398 - _15_m11.xyz;
        float _3348 = (_17_m55.w * ((_3336 > 5.9604644775390625e-08f) ? (1.0f / _3336) : 0.0f)) * (1.0f / _426);
        float _3349 = _3346.y;
        float _3350 = _3348 * _3349;
        float _3352 = _15_m11.y + _3350;
        float _3353 = _3349 - _3350;
        float _3355 = (1.0f - _3348) * _426;
        float _3369 = max(-127.0f, _17_m49.z * _3353);
        float _3393 = max(-127.0f, _17_m52.x * _3353);
        float _3404 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_3352 - _17_m49.x)))) * ((abs(_3369) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3369)) / _3369) : (0.693147182464599609375f - (0.2402265071868896484375f * _3369)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_3352 - _17_m52.z)))) * ((abs(_3393) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3393)) / _3393) : (0.693147182464599609375f - (0.2402265071868896484375f * _3393))));
        float _3426 = clamp((_426 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3429 = clamp((max(clamp(exp2(-(_3404 * _3355)), 0.0f, 1.0f), _17_m51.w) + clamp((_426 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3426, 0.0f, 1.0f);
        float4 _3469 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _35.SampleLevel(_22, float3((_1803 + ((((float3(uint3(_3312, _3308 + (_3310 * _3312), _359) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _17_m59.w).xy) * _17_m57.xy, (log2((_749 * _17_m56.x) + _17_m56.y) * _17_m56.z) / _17_m55.z), 0.0f), clamp((_749 - _17_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3475 = _3469.xyz + (((_17_m51.xyz * (1.0f - _3429)) + (((_17_m54.xyz * pow(clamp(dot(_425, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3404 * max(_3355 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3426))) * _3469.w);
        _3476 = _3469.w * _3429;
    }
    else
    {
        float3 _3173 = _398 - _15_m11.xyz;
        float _3175 = _3173.y;
        float _3189 = max(-127.0f, _17_m49.z * _3175);
        float _3213 = max(-127.0f, _17_m52.x * _3175);
        float _3224 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_15_m11.y - _17_m49.x)))) * ((abs(_3189) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3189)) / _3189) : (0.693147182464599609375f - (0.2402265071868896484375f * _3189)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_15_m11.y - _17_m52.z)))) * ((abs(_3213) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3213)) / _3213) : (0.693147182464599609375f - (0.2402265071868896484375f * _3213))));
        float _3246 = clamp((_426 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3249 = clamp((max(clamp(exp2(-(_3224 * _426)), 0.0f, 1.0f), _17_m51.w) + clamp((_426 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3246, 0.0f, 1.0f);
        _3475 = (_17_m51.xyz * (1.0f - _3249)) + (((_17_m54.xyz * pow(clamp(dot(_425, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3224 * max(_426 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3246));
        _3476 = _3249;
    }
    float3 _3485 = (((((((lerp(dot(_1185, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1185, _1191) * _17_m76.xyz) * _33_m11) + (_1185 * _1199)) + (_652 * (1.0f - _33_m77))) + (_1802.xyz + (_1828 * _1831)).xyz).xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3130 * _3476)) : (_3130 * _3476))) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3133 * _3133)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _3139) / max((12.56637096405029296875f * _3143) * sqrt(_3143), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3130)) * _3476 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3475 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _3096)).xyz * _651;
    float4 _3486 = float4(_3485.x, _3485.y, _3485.z, _356.w);
    float _3487 = _651 * _3096;
    _3486.w = _3487;
    float4 _3545;
    [branch]
    if (_17_m137.x > 0.0f)
    {
        float4 _3498 = _56.SampleLevel(_22, _385, 0.0f);
        float _3499 = _3498.x;
        float _3508 = (0.100000001490116119384765625f + ((9999.900390625f * (1.0f - _3499)) / (1.0f + (50.0f * _3499)))) + _17_m137.w;
        float _3518 = min((gl_FragCoord.z == 0.0f) ? 10000.0f : (1.0f / ((_17_m2.z * gl_FragCoord.z) + _17_m2.w)), 10000.0f);
        float4 _3529 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _55.SampleLevel(_22, _385, 0.0f), clamp((_3518 - _3508) * _17_m137.z, 0.0f, 1.0f).xxxx);
        float4 _3544;
        [flatten]
        if (_3518 > _3508)
        {
            float3 _3542 = ((_3529.xyz * _3487) * max(0.0f, 1.0f - float(int(_33_m1)))) + (_3486.xyz * _3529.w);
            _3544 = float4(_3542.x, _3542.y, _3542.z, _3486.w);
        }
        else
        {
            _3544 = _3486;
        }
        _3545 = _3544;
    }
    else
    {
        _3545 = _3486;
    }
    float3 _3553 = ((lerp(dot(_3545.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3545.xyz, _1191) * _17_m76.xyz) * _33_m11) + (_3545.xyz * _1199);
    float2 _3564 = min(_710, 1.0f.xx);
    float4 _3565 = float4(_3564.x, _3564.y, _356.z, _356.w);
    _3565.z = float(clamp(max(dot(_3553.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3545.w, _3545.w) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3565.w = (_33_m2 * _33_m0) * float(clamp(max(dot(_652, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _651, _651) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3553.x, _3553.y, _3553.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _12 = float4(renodx_output_color, _3545.w);
    _13 = _3565;
    if (GLASS_TRANSPARENCY > 0.5f) _13.w = 0.0f;
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
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._12 = _12;
    stage_output._13 = _13;
    return stage_output;
}
