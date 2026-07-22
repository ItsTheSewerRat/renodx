#include "../shared.h"

// Current Vulkan shader mapped from DX11 0x96F91C3D.
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

static float _360 = (float)0;
static float4 _362 = (float4)0;
static uint _363 = (uint)0;

static const float4 _340[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _341[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _342[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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
[[vk::binding(6, 1)]]
cbuffer _38_39 : register(b6)
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
[[vk::binding(5, 1)]] Texture2D<float4> _32 : register(t5);
[[vk::binding(2, 1)]] SamplerState _33 : register(s2);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0);
[[vk::binding(4, 1)]] Texture2D<float4> _36 : register(t4);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1);
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
    float _387 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
    float _392 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _394 = abs(_392);
    if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _394 : (-_394)), (1.0f - _387) - _392) < 0.0f)
    {
        discard;
    }
    float2 _414 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _417 = float4(_414, gl_FragCoord.z, 1.0f);
    _417.y = -_414.y;
    float4 _420 = mul(_16_m6, _417);
    float3 _424 = _420.xyz / _420.w.xxx;
    float4 _428 = float4(_424, 1.0f);
    float _435 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _457;
    do
    {
        if (_18_m4.w == 0.0f)
        {
            _457 = _16_m11.xyz - _424;
            break;
        }
        else
        {
            _457 = _16_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _458 = dot(_457, _457);
    float _460 = rsqrt(max(_458, 9.9999999392252902907785028219223e-09f));
    float3 _461 = _457 * _460;
    float _462 = _458 * _460;
    float2 _483 = (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw;
    float4 _497 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
    float4 _501 = _34.SampleBias(_35, _483, _39_m13 + _18_m16);
    _501.w = _501.w * _501.x;
    float2 _509 = ((_501.wy * 2.0f) - 1.0f.xx).xy;
    float2 _515 = _509 * _39_m0;
    float4 _517 = _36.SampleBias(_37, _483, _18_m16);
    float3 _532 = lerp(clamp((_497.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx);
    float _536 = _497.w * _39_m32.w;
    float _542 = lerp(_536, _536 * _8.x, _39_m46);
    float _547 = lerp(_39_m2, _39_m3, _517.y);
    float _557 = lerp(_517.x, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
    float3 _572 = normalize(((_7.xyz * _515.x) + ((cross(_6, float4(_7.xyz, _435).xyz) * _435) * _515.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_509, _509), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f)))));
    float _579 = clamp(float(int(sign(_387 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
    float2 _592 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _592.y = -_592.y;
    float _618 = 0.07999999821186065673828125f * _39_m1;
    float3 _619 = _532 * _557;
    float3 _620 = _532 - _619;
    float3 _624 = (_618 - (_618 * _557)).xxx + _619;
    float _625 = dot(_572, _461);
    float4 _628 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _547) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _629 = _628.x;
    float2 _639 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_629 * _629, exp2((-9.27999973297119140625f) * max(0.0f, _625))) * _629) + _628.y)) + _628.zw;
    uint2 _679;
    float _680;
    if (_18_m24.y == 1.0f)
    {
        float4 _656 = mul(_18_m135, _428);
        float4 _659 = _656;
        _659.y = -_656.y;
        float4 _662 = _659 * (1.0f / _656.w);
        _679 = uint2(clamp(((_662.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
        _680 = 1.0f / ((_18_m2.z * _662.z) + _18_m2.w);
    }
    else
    {
        _679 = uint2(gl_FragCoord.xy);
        _680 = abs(mul(_16_m0, _428).z);
    }
    float3 _682 = _424 + (_572 * 0.25f);
    float3 _692 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _701 = _682 - (_18_m105.xyz + (_692 * (-_18_m107.w)));
    float _715 = max(clamp((max(abs(_701.x), abs(_701.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_701.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1017;
    float4 _1018;
    float4 _1019;
    float _1020;
    float _1021;
    if ((_18_m105.w != 0.0f) && (_715 < 1.0f))
    {
        float3 _728 = _682 - (_18_m105.xyz + (_692 * (-_18_m107.y)));
        float _742 = max(clamp((max(abs(_728.x), abs(_728.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_728.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _818;
        float4 _819;
        float4 _820;
        float4 _821;
        if (_742 < 1.0f)
        {
            float3 _751 = ((_682 * 2.0f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _753 = _751 - floor(_751);
            float4 _757 = _57.SampleLevel(_24, _753, 0.0f);
            float _758 = 1.0f - _742;
            float _762 = _18_m106.y * 0.5f;
            float _767 = _753.x;
            float _768 = clamp(_753.y, _762, 1.0f - _762) * 0.3333333432674407958984375f;
            float _769 = _753.z;
            float4 _772 = _58.SampleLevel(_23, float3(_767, _768, _769), 0.0f);
            float _788 = _757.x;
            float3 _789 = ((_772.xyz * 4.0f) - 2.0f.xxx) * _788;
            float _798 = _757.y;
            float3 _799 = ((_58.SampleLevel(_23, float3(_767, _768 + 0.3333333432674407958984375f, _769), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _798;
            float _808 = _757.z;
            float3 _809 = ((_58.SampleLevel(_23, float3(_767, _768 + 0.666666686534881591796875f, _769), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _808;
            _818 = _715 + (_772.w * _758);
            _819 = float4(_809, _808) * _758;
            _820 = float4(_799, _798) * _758;
            _821 = float4(_789, _788) * _758;
        }
        else
        {
            _818 = _715;
            _819 = 0.0f.xxxx;
            _820 = 0.0f.xxxx;
            _821 = 0.0f.xxxx;
        }
        float3 _827 = _682 - (_18_m105.xyz + (_692 * (-_18_m107.z)));
        float _841 = max(clamp((max(abs(_827.x), abs(_827.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_827.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _921;
        float4 _922;
        float4 _923;
        float4 _924;
        if (_841 < 1.0f)
        {
            float3 _850 = ((_682 * 0.5f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _852 = _850 - floor(_850);
            float4 _856 = _59.SampleLevel(_24, _852, 0.0f);
            float _858 = _742 * (1.0f - _841);
            float _862 = _18_m106.y * 0.5f;
            float _867 = _852.x;
            float _868 = clamp(_852.y, _862, 1.0f - _862) * 0.3333333432674407958984375f;
            float _869 = _852.z;
            float4 _872 = _60.SampleLevel(_23, float3(_867, _868, _869), 0.0f);
            float _888 = _856.x;
            float3 _889 = ((_872.xyz * 4.0f) - 2.0f.xxx) * _888;
            float _899 = _856.y;
            float3 _900 = ((_60.SampleLevel(_23, float3(_867, _868 + 0.3333333432674407958984375f, _869), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _899;
            float _910 = _856.z;
            float3 _911 = ((_60.SampleLevel(_23, float3(_867, _868 + 0.666666686534881591796875f, _869), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _910;
            _921 = _818 + (_872.w * _858);
            _922 = _819 + (float4(_911, _910) * _858);
            _923 = _820 + (float4(_900, _899) * _858);
            _924 = _821 + (float4(_889, _888) * _858);
        }
        else
        {
            _921 = _818;
            _922 = _819;
            _923 = _820;
            _924 = _821;
        }
        float4 _1007;
        float4 _1008;
        float4 _1009;
        float _1010;
        if (_841 > 0.0f)
        {
            float3 _933 = ((_682 * 0.125f) + 0.5f.xxx) * _18_m106.xyz;
            float3 _936 = _18_m106.xyz * 0.5f;
            float3 _938 = clamp(_933 - floor(_933), _936, 1.0f.xxx - _936);
            float4 _942 = _61.SampleLevel(_24, _938, 0.0f);
            float _944 = _841 * (1.0f - _715);
            float _948 = _18_m106.y * 0.5f;
            float _953 = _938.x;
            float _954 = clamp(_938.y, _948, 1.0f - _948) * 0.3333333432674407958984375f;
            float _955 = _938.z;
            float4 _958 = _62.SampleLevel(_23, float3(_953, _954, _955), 0.0f);
            _1007 = _922 + (float4(((_62.SampleLevel(_23, float3(_953, _954 + 0.666666686534881591796875f, _955), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _942.z, _942.z) * _944);
            _1008 = _923 + (float4(((_62.SampleLevel(_23, float3(_953, _954 + 0.3333333432674407958984375f, _955), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _942.y, _942.y) * _944);
            _1009 = _924 + (float4(((_958.xyz * 4.0f) - 2.0f.xxx) * _942.x, _942.x) * _944);
            _1010 = _921 + (_958.w * _944);
        }
        else
        {
            _1007 = _922;
            _1008 = _923;
            _1009 = _924;
            _1010 = _921;
        }
        float _1013 = clamp((_1010 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1017 = _1007;
        _1018 = _1008;
        _1019 = _1009;
        _1020 = _1013 - _715;
        _1021 = (_1013 + _715) * 0.5f;
    }
    else
    {
        _1017 = 0.0f.xxxx;
        _1018 = 0.0f.xxxx;
        _1019 = 0.0f.xxxx;
        _1020 = 0.0f;
        _1021 = 1.0f;
    }
    float4 _1041 = _1019 + float4(_18_m108.x * _1021, (_18_m108.y * _1021) + ((_18_m108.w * _1020) * 0.5f), _18_m108.z * _1021, (_18_m108.w * _1021) + ((_18_m108.y * _1020) * 0.375f));
    float4 _1061 = _1018 + float4(_18_m109.x * _1021, (_18_m109.y * _1021) + ((_18_m109.w * _1020) * 0.5f), _18_m109.z * _1021, (_18_m109.w * _1021) + ((_18_m109.y * _1020) * 0.375f));
    float4 _1081 = _1017 + float4(_18_m110.x * _1021, (_18_m110.y * _1021) + ((_18_m110.w * _1020) * 0.5f), _18_m110.z * _1021, (_18_m110.w * _1021) + ((_18_m110.y * _1020) * 0.375f));
    float _1086 = max(0.0f, dot(_1041.xyz, _572) + _1041.w);
    float _1091 = max(0.0f, dot(_1061.xyz, _572) + _1061.w);
    float _1096 = max(0.0f, dot(_1081.xyz, _572) + _1081.w);
    float3 _1106 = -_461;
    float3 _1107 = reflect(_1106, _572);
    float _1115 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_547, 0.001000000047497451305389404296875f))));
    float2 _1116 = float2(_679);
    float2 _1120 = floor(_1116 * _42_m0.w);
    float _1137 = floor(_680 - _42_m2.y);
    float _1141 = clamp(_1137, 0.0f, _42_m1.x - 1.0f);
    uint _1151 = (_1137 <= _1141) ? (_31.Load(uint(_18_m21.z + int(_1120.x + (_1120.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1141)) * 4 + 0)) : 0u;
    float _1154 = dot(float4(_1086, _1091, _1096, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1156;
    float _1159;
    uint _1161;
    _1156 = 0.0f.xxx;
    _1159 = 1.0f;
    _1161 = _1151;
    uint _1162;
    float3 _1157;
    float _1160;
    bool _1164;
    [loop]
    for (;;)
    {
        _1164 = _1159 > 0.00999999977648258209228515625f;
        if ((_1161 != 0u) && _1164)
        {
            uint _1168 = firstbitlow(_1161);
            _1162 = _1161 ^ (1u << (_1168 & 31u));
            float3 _1188 = float3(dot(_42_m4[_1168]._m2, _428), dot(_42_m4[_1168]._m3, _428), dot(_42_m4[_1168]._m4, _428));
            float3 _1189 = abs(_1188);
            if (all(bool3(_1189.x <= _42_m4[_1168]._m1.xyz.x, _1189.y <= _42_m4[_1168]._m1.xyz.y, _1189.z <= _42_m4[_1168]._m1.xyz.z)))
            {
                float3 _1198 = _42_m4[_1168]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1200 = _1189 * 0.100000001490116119384765625f;
                float3 _1201 = _1200 * _1200;
                float3 _1204 = (_42_m4[_1168]._m1.xyz - _1189) * _42_m4[_1168]._m5.xyz;
                float3 _1252;
                [branch]
                if (_42_m4[_1168]._m6.x == 1.0f)
                {
                    float3 _1237 = float3(dot(_42_m4[_1168]._m2.xyz, _1107), dot(_42_m4[_1168]._m3.xyz, _1107), dot(_42_m4[_1168]._m4.xyz, _1107));
                    float3 _1239 = (_42_m4[_1168]._m1.xyz - _1188) / _1237;
                    float3 _1242 = ((-_42_m4[_1168]._m1.xyz) - _1188) / _1237;
                    bool3 _1243 = bool3(_1237.x > 0.0f.xxx.x, _1237.y > 0.0f.xxx.y, _1237.z > 0.0f.xxx.z);
                    float3 _1244 = float3(_1243.x ? _1239.x : _1242.x, _1243.y ? _1239.y : _1242.y, _1243.z ? _1239.z : _1242.z);
                    _1252 = _1188 + (_1237 * min(min(_1244.x, _1244.y), _1244.z));
                }
                else
                {
                    _1252 = _1107;
                }
                float3 _1253 = normalize(_1252);
                float3 _1256 = float3(int3(sign(_1253)));
                float3 _1259 = _1253 / dot(_1253, _1256).xxx;
                float3 _1273;
                if (_1259.z < 0.0f)
                {
                    float3 _1264 = abs(_1259);
                    float2 _1271 = _1256.xy * float2(1.0f - _1264.y, 1.0f - _1264.x);
                    _1273 = float3(_1271.x, _1271.y, _1259.z);
                }
                else
                {
                    _1273 = _1259;
                }
                float _1298 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1168]._m0, float4(_572, 1.0f))));
                float _1311 = clamp((min(_1204.x, min(_1204.y, _1204.z)) * _42_m4[_1168]._m6.y) + ((((((_1198 * _1198).x - ((_1201.x + _1201.y) + _1201.z)) * _42_m4[_1168]._m5.x) * _42_m4[_1168]._m5.x) * (1.0f - _42_m4[_1168]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1168]._m6.w;
                _1157 = _1156 + ((((_29.SampleLevel(_25, float3((((_1273.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1168]._m1.w), _1115).xyz * _42_m4[_1168]._m5.w) * ((((((clamp(abs(_1154 / _1298), 0.0f, 1.0f) * 2.0f) + _1154) / (2.0f + _1298)) - 1.0f) * _18_m23.w) + 1.0f)) * _1311) * _1159);
                _1160 = _1159 * (1.0f - _1311);
            }
            else
            {
                _1157 = _1156;
                _1160 = _1159;
            }
            _1156 = _1157;
            _1159 = _1160;
            _1161 = _1162;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1380;
    if (_1164)
    {
        float3 _1319 = normalize(_1107);
        float3 _1322 = float3(int3(sign(_1319)));
        float3 _1325 = _1319 / dot(_1319, _1322).xxx;
        float3 _1339;
        if (_1325.z < 0.0f)
        {
            float3 _1330 = abs(_1325);
            float2 _1337 = _1322.xy * float2(1.0f - _1330.y, 1.0f - _1330.x);
            _1339 = float3(_1337.x, _1337.y, _1325.z);
        }
        else
        {
            _1339 = _1325;
        }
        float _1366 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_572, 1.0f))));
        _1380 = _1156 + ((_29.SampleLevel(_25, float3((((_1339.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1115).xyz * ((((((clamp(abs(_1154 / _1366), 0.0f, 1.0f) * 2.0f) + _1154) / (2.0f + _1366)) - 1.0f) * _18_m23.w) + 1.0f)) * _1159);
    }
    else
    {
        _1380 = _1156;
    }
    float2 _1901;
    do
    {
        if (_48_m7.w >= 0.9900000095367431640625f)
        {
            _1901 = float2(_48_m7.z, 1.0f);
            break;
        }
        int _1402 = int(_48_m7.x);
        bool3 _1404 = (_1402 == 2).xxx;
        float3 _1412 = _424 - float3(_1404.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1404.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1404.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
        float _1423 = max(clamp((_48_m6.w - dot(_1412, _1412)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
        float _1640;
        bool _1641;
        if (_1423 > 0.0f)
        {
            float _1638;
            bool _1639;
            if (_1402 > 0)
            {
                float3 _1430 = _424 - _48_m1[0].xyz;
                float3 _1434 = _424 - _48_m1[1].xyz;
                float3 _1438 = _424 - _48_m1[2].xyz;
                float3 _1442 = _424 - _48_m1[3].xyz;
                float4 _1447 = float4(dot(_1430, _1430), dot(_1434, _1434), dot(_1438, _1438), dot(_1442, _1442));
                float4 _1456 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
                float4 _1458 = float4(bool4(_1447.x < _1456.x, _1447.y < _1456.y, _1447.z < _1456.z, _1447.w < _1456.w));
                float3 _1462 = clamp(_1458.yzw - _1458.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1466 = clamp(4.0f - dot(float4(_1458.x, _1462.x, _1462.y, _1462.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1468 = clamp(_1466 + 1.0f, 0.0f, 3.0f);
                uint _1469 = uint(_1466);
                uint _1477 = uint(_1468);
                float _1483 = dot(_1447, _340[_1477]) / _48_m1[_1477].w;
                float _1500;
                if (((_1468 > _1466) && (_1483 >= 0.0f)) && (_1483 <= 1.0f))
                {
                    _1500 = _1466 + step(frac(52.98291778564453125f * frac(dot(_1116 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1447, _340[_1469]) / _48_m1[_1469].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1500 = _1466;
                }
                float _1501 = clamp(_1500, 0.0f, 4.0f);
                float4 _1505 = mul(_48_m0[uint(_1501)], _428);
                float _1508 = _1505.z;
                float4 _1509 = float4(_1505.xy, _1508, _1501);
                float3 _1510 = _1509.xyz;
                bool3 _1511 = bool3(_1510.x <= 0.0f.xxx.x, _1510.y <= 0.0f.xxx.y, _1510.z <= 0.0f.xxx.z);
                bool3 _1512 = bool3(_1510.x >= 1.0f.xxx.x, _1510.y >= 1.0f.xxx.y, _1510.z >= 1.0f.xxx.z);
                bool _1518 = any(bool3(_1511.x || _1512.x, _1511.y || _1512.y, _1511.z || _1512.z)) || ((asuint(_1508) & 2147483647u) > 2139095040u);
                int _1519 = int(_1501);
                float2 _1536 = float4(_48_m3[_1519].xy + (_1509.xy * _48_m3[_1519].zw), _1508, _1501).xy * _48_m4.zw;
                float2 _1538 = floor(_1536 + 0.5f.xx);
                float2 _1539 = _1536 - _1538;
                float _1540 = _1539.x;
                float _1541 = _1540 + 0.5f;
                float _1543 = (_1541 * _1541) * 0.5f;
                float _1546 = min(_1540, 0.0f);
                float _1550 = max(_1540, 0.0f);
                float4 _1554 = float4(_1543 - _1540, (1.0f - _1540) - (_1546 * _1546), (_1540 + 1.0f) - (_1550 * _1550), _1543) * 0.44444000720977783203125f;
                float _1555 = _1539.y;
                float _1556 = _1555 + 0.5f;
                float _1558 = (_1556 * _1556) * 0.5f;
                float _1561 = min(_1555, 0.0f);
                float _1565 = max(_1555, 0.0f);
                float4 _1569 = float4(_1558 - _1555, (1.0f - _1555) - (_1561 * _1561), (_1555 + 1.0f) - (_1565 * _1565), _1558) * 0.44444000720977783203125f;
                float2 _1571 = _1554.yw;
                float2 _1572 = _1554.xz + _1571;
                float2 _1574 = _1569.yw;
                float2 _1575 = _1569.xz + _1574;
                float2 _1581 = ((_1571 / _1572) + float2(-1.5f, 0.5f)) * _48_m4.xx;
                float2 _1583 = ((_1574 / _1575) + float2(-1.5f, 0.5f)) * _48_m4.yy;
                float2 _1585 = _1538 * _48_m4.xy;
                float _1586 = _1581.x;
                float _1587 = _1583.x;
                float _1590 = _1581.y;
                float _1593 = _1583.y;
                float _1598 = _1572.x;
                float _1599 = _1575.x;
                float _1601 = _1572.y;
                float _1603 = _1575.y;
                _1638 = _1518 ? 1.0f : (((((_1598 * _1599) * _49.SampleCmpLevelZero(_26, float3(_1585 + float2(_1586, _1587), _360).xy, _1508)) + ((_1601 * _1599) * _49.SampleCmpLevelZero(_26, float3(_1585 + float2(_1590, _1587), _360).xy, _1508))) + ((_1598 * _1603) * _49.SampleCmpLevelZero(_26, float3(_1585 + float2(_1586, _1593), _360).xy, _1508))) + ((_1601 * _1603) * _49.SampleCmpLevelZero(_26, float3(_1585 + float2(_1590, _1593), _360).xy, _1508)));
                _1639 = _1518;
            }
            else
            {
                _1638 = 1.0f;
                _1639 = false;
            }
            _1640 = _1638;
            _1641 = _1639;
        }
        else
        {
            _1640 = 1.0f;
            _1641 = false;
        }
        float _1841;
        float _1842;
        if ((_1423 < 1.0f) || (_48_m8.x > 0.5f))
        {
            float _1652 = 1.0f - clamp(dot(_572, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float3 _1663 = (_424 - (_46_m0.xyz * (_1652 * _48_m24.x))) + (_572 * (_1652 * _48_m24.y));
            float4 _1669 = float4(_1663, 1.0f);
            float4 _1670 = mul(_48_m23, _1669);
            float2 _1671 = _1670.xy;
            float _1839;
            if (all(bool2(_1671.x > 0.0f.xx.x, _1671.y > 0.0f.xx.y)) && all(bool2(_1671.x < 1.0f.xx.x, _1671.y < 1.0f.xx.y)))
            {
                uint _1690 = clamp(uint((floor(_1670.y * _48_m25.z) + _1670.x) * _48_m25.y), 0u, 127u);
                uint _1694 = asuint(_48_m27[_1690].x);
                float2 _1695 = spvUnpackHalf2x16(_1694);
                float _1696 = _1695.x;
                float _1838;
                if (_1696 >= 0.0f)
                {
                    float4x4 _1705 = _48_m22;
                    _1705[0].w = _48_m27[_1690].y;
                    _1705[1].w = _48_m27[_1690].z;
                    _1705[2].w = _48_m27[_1690].w;
                    float4 _1712 = mul(_1705, _1669);
                    float3 _1713 = _1712.xyz;
                    float _1837;
                    if (all(bool3(_1713.x > 0.0f.xxx.x, _1713.y > 0.0f.xxx.y, _1713.z > 0.0f.xxx.z)) && all(bool3(_1713.x < 1.0f.xxx.x, _1713.y < 1.0f.xxx.y, _1713.z < 1.0f.xxx.z)))
                    {
                        float _1730 = _1712.z;
                        float2 _1736 = float4((_1712.xy * _48_m24.zw) + float2(_1696, spvUnpackHalf2x16(_1694 >> 16u).x), _1730, 1.0f).xy * _48_m26.zw;
                        float2 _1738 = floor(_1736 + 0.5f.xx);
                        float2 _1739 = _1736 - _1738;
                        float _1740 = _1739.x;
                        float _1741 = _1740 + 0.5f;
                        float _1743 = (_1741 * _1741) * 0.5f;
                        float _1746 = min(_1740, 0.0f);
                        float _1750 = max(_1740, 0.0f);
                        float4 _1754 = float4(_1743 - _1740, (1.0f - _1740) - (_1746 * _1746), (_1740 + 1.0f) - (_1750 * _1750), _1743) * 0.44444000720977783203125f;
                        float _1755 = _1739.y;
                        float _1756 = _1755 + 0.5f;
                        float _1758 = (_1756 * _1756) * 0.5f;
                        float _1761 = min(_1755, 0.0f);
                        float _1765 = max(_1755, 0.0f);
                        float4 _1769 = float4(_1758 - _1755, (1.0f - _1755) - (_1761 * _1761), (_1755 + 1.0f) - (_1765 * _1765), _1758) * 0.44444000720977783203125f;
                        float2 _1771 = _1754.yw;
                        float2 _1772 = _1754.xz + _1771;
                        float2 _1774 = _1769.yw;
                        float2 _1775 = _1769.xz + _1774;
                        float2 _1781 = ((_1771 / _1772) + float2(-1.5f, 0.5f)) * _48_m26.xx;
                        float2 _1783 = ((_1774 / _1775) + float2(-1.5f, 0.5f)) * _48_m26.yy;
                        float2 _1785 = _1738 * _48_m26.xy;
                        float _1786 = _1781.x;
                        float _1787 = _1783.x;
                        float _1790 = _1781.y;
                        float _1793 = _1783.y;
                        float _1798 = _1772.x;
                        float _1799 = _1775.x;
                        float _1801 = _1772.y;
                        float _1803 = _1775.y;
                        _1837 = ((((_1798 * _1799) * _52.SampleCmpLevelZero(_26, float3(_1785 + float2(_1786, _1787), _360).xy, _1730)) + ((_1801 * _1799) * _52.SampleCmpLevelZero(_26, float3(_1785 + float2(_1790, _1787), _360).xy, _1730))) + ((_1798 * _1803) * _52.SampleCmpLevelZero(_26, float3(_1785 + float2(_1786, _1793), _360).xy, _1730))) + ((_1801 * _1803) * _52.SampleCmpLevelZero(_26, float3(_1785 + float2(_1790, _1793), _360).xy, _1730));
                    }
                    else
                    {
                        _1837 = 1.0f;
                    }
                    _1838 = _1837;
                }
                else
                {
                    _1838 = 1.0f;
                }
                _1839 = _1838;
            }
            else
            {
                _1839 = 1.0f;
            }
            _1841 = _1641 ? _1839 : _1640;
            _1842 = _1839;
        }
        else
        {
            _1841 = _1640;
            _1842 = 1.0f;
        }
        float _1845 = lerp(lerp(_1842, _1841, _1423), min(_1842, _1841), _48_m8.x);
        float _1896;
        if (_1845 > 0.001000000047497451305389404296875f)
        {
            float3 _1852 = _424 - _18_m65.xyz;
            float2 _1862 = (_1852 + (_18_m68.xyz * _1852.y)).xz * _18_m66.z;
            float2 _1871 = _18_m67.xy * _18_m75.w;
            _1896 = _1845 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1862 + _1871, 0.0f), _51.SampleLevel(_24, (_1862 * _18_m67.w) + _1871, 0.0f), smoothstep(_18_m66.x, _18_m66.y, length(_1852.xz)).xxxx).x, _18_m67.z);
        }
        else
        {
            _1896 = _1845;
        }
        _1901 = float2(lerp(_1896, _48_m7.z, _48_m7.w), _1896);
        break;
    } while(false);
    float _1906 = lerp(1.0f, min(1.0f, _1901.x), _48_m6.x);
    float4 _2041;
    if (_1906 > 0.001000000047497451305389404296875f)
    {
        float3 _1916 = -_46_m0.xyz;
        float _1921 = dot(_1916, _1107);
        float3 _1923 = _1107 - (_1916 * _1921);
        bool3 _1925 = (_1921 < _46_m4.z).xxx;
        float3 _1933 = normalize((_1916 * _46_m4.z) + ((_1923 * rsqrt(max(6.103515625e-05f, dot(_1923, _1923)))) * _46_m4.y));
        float3 _1934 = float3(_1925.x ? _1933.x : _1107.x, _1925.y ? _1933.y : _1107.y, _1925.z ? _1933.z : _1107.z);
        float3 _1938 = _1934 + _461;
        float3 _1942 = _1938 * rsqrt(max(6.103515625e-05f, dot(_1938, _1938)));
        float _1943 = clamp(dot(_1934, _572), 0.0f, 1.0f);
        float _1945 = clamp(dot(_572, _1942), 0.0f, 1.0f);
        float _1948 = clamp(_625, 0.0f, 1.0f);
        float _1949 = _547 * _547;
        float _1950 = _1949 * _1949;
        float _1971 = (((_1945 * _1950) - _1945) * _1945) + 1.0f;
        float _1974 = 1.0f - clamp(dot(_461, _1942), 0.0f, 1.0f);
        float _1975 = _1974 * _1974;
        float _1977 = (_1974 * _1975) * _1975;
        float _2001 = 1.0f - _547;
        float _2008 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2001 * (1.04997003078460693359375f + (_2001 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2001))))));
        float _2009 = 1.0f - _2008;
        float3 _2012 = _624 + ((1.0f.xxx - _624) * 0.0476190485060214996337890625f);
        float3 _2028 = (((clamp((min(((_624 * (1.0f - _1977)) + _1977.xxx) * ((_1950 / (_1971 * _1971)) * (0.5f / (((_1943 * sqrt(((((-_1948) * _1950) + _1948) * _1948) + _1950)) + (_1948 * sqrt(((((-_1943) * _1950) + _1943) * _1943) + _1950))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2012 * (((_56.SampleLevel(_23, (float2(_1948, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1943, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2008) / _2009)) * _2012) / (1.0f.xxx - (_2012 * _2009)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _1943) + ((_620 * 1.0f) * _1943)) * _46_m1.xyz;
        float3 _2039 = lerp(_2028, _2028 * _53.SampleBias(_23, float2(_1906, 0.5f), _18_m16).xyz, (1.0f - _1906).xxx) * 1.0f;
        _2041 = float4(_2039.x, _2039.y, _2039.z, 0.0f.xxxx.w);
    }
    else
    {
        _2041 = 0.0f.xxxx;
    }
    float2 _2043 = floor(_1116 * 0.03125f);
    int _2051 = int((_2043.x + (_2043.y * _44_m5)) * 8.0f);
    float _2058 = floor(_680 - (_18_m3.y * _44_m11));
    float _2062 = clamp(_2058, 0.0f, _44_m7 - 1.0f);
    int _2064 = int(_2062 * 8.0f);
    float3 _2066;
    float _2069;
    _2066 = 0.0f.xxx;
    _2069 = 1.0f;
    float3 _2067;
    float _2070;
    [loop]
    for (int _2071 = 0; _2071 <= 7; _2066 = _2067, _2069 = _2070, _2071++)
    {
        uint _2089 = (_2058 <= _2062) ? (_31.Load(uint(_2051 + _2071) * 4 + 0) & _31.Load(uint((_18_m21.y + _2064) + _2071) * 4 + 0)) : 0u;
        uint _2090 = uint(_2071);
        float3 _2094;
        _2070 = _2069;
        _2094 = 0.0f.xxx;
        uint _2097;
        float _2092;
        float3 _2095;
        [loop]
        for (uint _2096 = _2089; _2096 != 0u; _2070 = _2092, _2094 = _2095, _2096 = _2097)
        {
            uint _2101 = firstbitlow(_2096);
            _2097 = _2096 ^ (1u << (_2101 & 31u));
            int _2107 = int((32u * _2090) + _2101) * 8;
            int _2110 = _2107 + 1;
            int _2113 = _2107 + 2;
            int _2116 = _2107 + 3;
            int _2119 = _2107 + 5;
            int _2122 = _2107 + 6;
            int _2125 = _2107 + 7;
            uint _2129 = uint(_46_m6[_2119].w);
            float _2204;
            if ((_2129 & 1u) == 1u)
            {
                uint _2135 = asuint(_46_m6[_2119].x);
                uint _2142 = asuint(_46_m6[_2119].y);
                uint _2149 = asuint(_46_m6[_2119].z);
                uint _2156 = asuint(_46_m6[_2122].x);
                uint _2163 = asuint(_46_m6[_2122].y);
                uint _2170 = asuint(_46_m6[_2122].z);
                float3 _2189 = abs(mul(float4(_424 - _46_m6[_2110].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2135).x, spvUnpackHalf2x16(_2149).x, spvUnpackHalf2x16(_2163).x, 0.0f), float4(spvUnpackHalf2x16(_2135 >> 16u).x, spvUnpackHalf2x16(_2149 >> 16u).x, spvUnpackHalf2x16(_2163 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2142).x, spvUnpackHalf2x16(_2156).x, spvUnpackHalf2x16(_2170).x, 0.0f), float4(spvUnpackHalf2x16(_2142 >> 16u).x, spvUnpackHalf2x16(_2156 >> 16u).x, spvUnpackHalf2x16(_2170 >> 16u).x, 0.0f))).xyz);
                float _2196 = _46_m6[_2125].x * 0.5f;
                float _2202 = 1.0f - clamp((max(max(_2189.x, _2189.y), _2189.z) - (_2196 + 0.5f)) / (0.5f - _2196), 0.0f, 1.0f);
                _2204 = _2202 * _2202;
            }
            else
            {
                _2204 = 1.0f;
            }
            bool _2208 = _46_m6[_2116].z > 0.5f;
            if ((false || (_2204 < 0.001000000047497451305389404296875f)) || _2208)
            {
                _2092 = _2070;
                _2095 = _2094;
                continue;
            }
            float _3319;
            float3 _3320;
            if (_46_m6[_2107].w < 1.5f)
            {
                float3 _2696 = float3(0.100000001490116119384765625f, _547, 1.0f);
                float _2705 = (0.5f + (0.5f * _46_m6[_2113].y)) - abs(_46_m6[_2113].x);
                float _2706 = _46_m6[_2113].y - _2705;
                float _2713 = abs(max((1.0f - abs(_2705)) - abs(_2706), 0.00048828125f));
                float3 _2717 = normalize(float3(_2705, _2706, (_46_m6[_2113].x >= 0.0f) ? _2713 : (-_2713)));
                float3 _2718 = _46_m6[_2110].xyz - _424;
                float _2719 = dot(_2718, _2718);
                float _2720 = rsqrt(_2719);
                float3 _2721 = _2718 * _2720;
                float _2725 = clamp(_46_m6[_2125].y * _2720, 0.0f, 1.0f);
                int _2730 = int(_46_m6[_2125].w);
                float3 _2731 = _2717 * _46_m6[_2113].z;
                float3 _2732 = _2731 * 0.5f;
                float3 _2733 = _2718 - _2732;
                float3 _2734 = _2718 + _2732;
                bool _2737 = (uint(_46_m6[_2107].w) & 1u) == 0u;
                bool _2740 = _2737 || ((_2129 & 2u) != 0u);
                bool _2743 = (!_2737) && (_46_m6[_2113].z > 0.0f);
                float _2762;
                float _2763;
                if (_2743)
                {
                    float _2747 = length(_2733);
                    float _2748 = length(_2734);
                    _2762 = clamp(0.5f * ((dot(_572, _2733) / _2747) + (dot(_572, _2734) / _2748)), 0.0f, 1.0f);
                    _2763 = 1.0f / ((((_2747 * _2748) + dot(_2733, _2734)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2762 = clamp(dot(_572, _2721), 0.0f, 1.0f);
                    _2763 = 1.0f;
                }
                float _2785;
                if (_46_m6[_2122].w < 0.0f)
                {
                    float _2779 = _2719 * (_46_m6[_2110].w * _46_m6[_2110].w);
                    float _2782 = clamp(1.0f - (_2779 * _2779), 0.0f, 1.0f);
                    _2785 = lerp(1.0f / (_2719 + 1.0f), _2763, float(_2743)) * (_2782 * _2782);
                }
                else
                {
                    float3 _2768 = _2718 * _46_m6[_2110].w;
                    _2785 = _2763 * pow(1.0f - clamp(dot(_2768, _2768), 0.0f, 1.0f), _46_m6[_2122].w);
                }
                float _2791 = clamp((dot(_2721, -_2717) - _46_m6[_2113].z) * _46_m6[_2113].w, 0.0f, 1.0f);
                float _2795 = _2785 * lerp(1.0f, _2791 * _2791, float(_2737));
                float _2895;
                if ((!_2743) && (_2730 >= 0))
                {
                    uint _2801 = uint(_2730);
                    float2 _2888;
                    [branch]
                    if (_2737)
                    {
                        float4 _2878 = mul(_66_m1[_2801], _428);
                        _2888 = _66_m0[_2801].xy + (clamp(_2878.xy / _2878.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2801].zw);
                    }
                    else
                    {
                        float3 _2815 = mul(float4(-_2718, 0.0f), _66_m1[_2801]).xyz;
                        float3 _367 = _2815;
                        float3 _366 = _2815;
                        float3 _365 = abs(_2815);
                        uint _2824 = uint(int(_365.y > _365.x));
                        uint _2830 = (_365.z > _365[_2824]) ? 2u : _2824;
                        uint _2836 = (_2830 * 2u) + uint(_366[_2830] < 0.0f);
                        float _2840 = abs(_367[_2836 / 2u]);
                        float _2860 = 0.5f - (0.000244140625f / _66_m0[_2801].w);
                        _2888 = _66_m0[_2801].xy + (clamp(float2((float(_2836) + ((((_367[uint(_341[_2836].x)] * _342[_2836].x) / _2840) * _2860) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_367[uint(_341[_2836].y)] * _342[_2836].y) / _2840) * _2860)), 0.0f.xx, 1.0f.xx) * _66_m0[_2801].zw);
                    }
                    _2895 = _2795 * _64.SampleLevel(_23, _2888, 0.0f).x;
                }
                else
                {
                    _2895 = _2795;
                }
                bool _2896 = _2895 > 0.0f;
                float _3184;
                if (_2896)
                {
                    int _2948;
                    if (_2740)
                    {
                        _2948 = int(_46_m6[_2116].x);
                    }
                    else
                    {
                        uint _2903 = asuint(_46_m6[_2113].w);
                        uint _2905 = asuint(_46_m6[_2116].x);
                        float3 _2906 = _424 - _46_m6[_2110].xyz;
                        float3 _2907 = abs(_2906);
                        float _2908 = _2907.x;
                        float _2909 = _2907.y;
                        float _2911 = _2907.z;
                        int _2943;
                        if ((_2908 > _2909) && (_2908 > _2911))
                        {
                            _2943 = int((_2906.x > 0.0f) ? (_2903 >> 24u) : ((_2903 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2935;
                            if (_2909 > _2911)
                            {
                                _2935 = int((_2906.y > 0.0f) ? ((_2903 >> 8u) & 255u) : (_2903 & 255u));
                            }
                            else
                            {
                                _2935 = int((_2906.z > 0.0f) ? ((_2905 >> 8u) & 255u) : (_2905 & 255u));
                            }
                            _2943 = _2935;
                        }
                        _2948 = (_2943 < 80) ? _2943 : (-1);
                    }
                    float3 _2958 = (_424 - ((-_2721) * _48_m11[_2948].x)) + (_572 * (_48_m11[_2948].y * 5.0f));
                    float4 _2965 = mul(_48_m10[_2948], float4(_2958, 1.0f));
                    float _2966 = _2965.w;
                    float3 _2969 = _2965.xyz / _2966.xxx;
                    float2 _2970 = _2969.xy;
                    float3 _2978 = _2969.xyz;
                    bool3 _2979 = bool3(_2978.x <= 0.0f.xxx.x, _2978.y <= 0.0f.xxx.y, _2978.z <= 0.0f.xxx.z);
                    bool3 _2980 = bool3(_2978.x >= 1.0f.xxx.x, _2978.y >= 1.0f.xxx.y, _2978.z >= 1.0f.xxx.z);
                    float _2983 = _2969.z;
                    float2 _2994 = ((_2970 * (_48_m12[_2948].zw - _48_m12[_2948].xy)) + _48_m12[_2948].xy).xy * _48_m13.zw;
                    float2 _2996 = floor(_2994 + 0.5f.xx);
                    float2 _2997 = _2994 - _2996;
                    float _2998 = _2997.x;
                    float _2999 = _2998 + 0.5f;
                    float _3000 = _2999 * _2999;
                    float _3003 = 1.0f - _2998;
                    float _3004 = min(_2998, 0.0f);
                    float _3007 = _2998 + 1.0f;
                    float _3008 = max(_2998, 0.0f);
                    float _3019 = _2997.y;
                    float _3020 = _3019 + 0.5f;
                    float _3021 = _3020 * _3020;
                    float _3024 = 1.0f - _3019;
                    float _3025 = min(_3019, 0.0f);
                    float _3028 = _3019 + 1.0f;
                    float _3029 = max(_3019, 0.0f);
                    float3 _3041 = float3(0.1599999964237213134765625f * _3003, 0.1599999964237213134765625f * ((_3007 - (_3008 * _3008)) + 1.0f), _3000 * 0.07999999821186065673828125f);
                    float3 _3042 = float3(0.1599999964237213134765625f * ((_3000 * 0.5f) - _2998), 0.1599999964237213134765625f * ((_3003 - (_3004 * _3004)) + 1.0f), 0.1599999964237213134765625f * _3007) + _3041;
                    float3 _3044 = float3(0.1599999964237213134765625f * _3024, 0.1599999964237213134765625f * ((_3028 - (_3029 * _3029)) + 1.0f), _3021 * 0.07999999821186065673828125f);
                    float3 _3045 = float3(0.1599999964237213134765625f * ((_3021 * 0.5f) - _3019), 0.1599999964237213134765625f * ((_3024 - (_3025 * _3025)) + 1.0f), 0.1599999964237213134765625f * _3028) + _3044;
                    float3 _3051 = ((_3041 / _3042) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                    float3 _3053 = ((_3044 / _3045) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                    float2 _3055 = _2996 * _48_m13.xy;
                    float _3056 = _3051.x;
                    float _3057 = _3053.x;
                    float _3060 = _3051.y;
                    float _3063 = _3051.z;
                    float _3066 = _3053.y;
                    float _3073 = _3053.z;
                    float _3080 = _3042.x;
                    float _3081 = _3045.x;
                    float _3083 = _3042.y;
                    float _3085 = _3042.z;
                    float _3087 = _3045.y;
                    float _3091 = _3045.z;
                    float _3149 = (((((((_3080 * _3081) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3056, _3057), _360).xy, _2983)) + ((_3083 * _3081) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3060, _3057), _360).xy, _2983))) + ((_3085 * _3081) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3063, _3057), _360).xy, _2983))) + ((_3080 * _3087) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3056, _3066), _360).xy, _2983))) + ((_3083 * _3087) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3060, _3066), _360).xy, _2983))) + ((_3085 * _3087) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3063, _3066), _360).xy, _2983))) + ((_3080 * _3091) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3056, _3073), _360).xy, _2983));
                    float2 _3170 = min(_2970, 1.0f.xx - _2970);
                    _3184 = (_2948 >= 0) ? lerp(1.0f, (any(bool3(_2979.x || _2980.x, _2979.y || _2980.y, _2979.z || _2980.z)) || ((asuint(_2983) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3149 + ((_3083 * _3091) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3060, _3073), _360).xy, _2983))) + ((_3085 * _3091) * _50.SampleCmpLevelZero(_26, float3(_3055 + float2(_3063, _3073), _360).xy, _2983))), _2740 ? min(_48_m11[_2948].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2948].z - _2966) * 0.25f, min(_3170.x, _3170.y)))) : _48_m11[_2948].w) : 1.0f;
                }
                else
                {
                    _3184 = 1.0f;
                }
                float3 _3207;
                float3 _3208;
                if (_2743)
                {
                    float3 _3187 = _2696 * _2696;
                    float _3196 = dot(_1107, _2731);
                    _3207 = _3187 / clamp(_3187 + (0.5f * clamp(_46_m6[_2113].z * _2720, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3208 = normalize(_2733 + (_2731 * clamp(dot(_2733, (_1107 * _3196) - _2731) / ((_46_m6[_2113].z * _46_m6[_2113].z) - (_3196 * _3196)), 0.0f, 1.0f)));
                }
                else
                {
                    _3207 = 1.0f.xxx;
                    _3208 = _2721;
                }
                float3 _3209 = _3208 + _461;
                float3 _3213 = _3209 * rsqrt(max(6.103515625e-05f, dot(_3209, _3209)));
                float3 _3318;
                if (_2896)
                {
                    float _3216 = clamp(_2762, 0.0f, 1.0f);
                    float _3218 = clamp(dot(_572, _3213), 0.0f, 1.0f);
                    float _3220 = clamp(dot(_461, _3213), 0.0f, 1.0f);
                    float _3221 = clamp(_625, 0.0f, 1.0f);
                    float _3222 = _547 * _547;
                    float _3232;
                    if (_2725 > 0.0f)
                    {
                        _3232 = clamp(_3222 + ((_2725 * _2725) / ((_3220 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3232 = _3222;
                    }
                    float _3233 = _3232 * _3232;
                    float _3254 = (((_3218 * _3233) - _3218) * _3218) + 1.0f;
                    float _3259 = 1.0f - _3220;
                    float _3260 = _3259 * _3259;
                    float _3262 = (_3259 * _3260) * _3260;
                    float _3286 = 1.0f - _547;
                    float _3293 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3286 * (1.04997003078460693359375f + (_3286 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3286))))));
                    float _3294 = 1.0f - _3293;
                    float3 _3297 = _624 + ((1.0f.xxx - _624) * 0.0476190485060214996337890625f);
                    float3 _3317 = ((clamp((min(((_624 * (1.0f - _3262)) + _3262.xxx) * (((_3233 / (_3254 * _3254)) * _3207.y) * (0.5f / (((_3216 * sqrt(((((-_3221) * _3233) + _3221) * _3221) + _3233)) + (_3221 * sqrt(((((-_3216) * _3233) + _3216) * _3216) + _3233))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3297 * (((_56.SampleLevel(_23, (float2(_3221, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_3216, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3293) / _3294)) * _3297) / (1.0f.xxx - (_3297 * _3294)))) * _46_m6[_2125].z, 0.0f.xxx, 1000.0f.xxx) * _2762) + ((_620 * _3207.z) * _2762)) * (((_46_m6[_2107].xyz * _2895) * _3184) * _2204);
                    _3318 = _3317;
                }
                else
                {
                    _3318 = 0.0f.xxx;
                }
                _3319 = _2070;
                _3320 = _3318;
            }
            else
            {
                float _2694;
                do
                {
                    if (_2208)
                    {
                        _2694 = 1.0f;
                        break;
                    }
                    float _2228 = (0.5f + (0.5f * _46_m6[_2113].y)) - abs(_46_m6[_2113].x);
                    float _2229 = _46_m6[_2113].y - _2228;
                    float _2236 = abs(max((1.0f - abs(_2228)) - abs(_2229), 0.00048828125f));
                    float3 _2240 = normalize(float3(_2228, _2229, (_46_m6[_2113].x >= 0.0f) ? _2236 : (-_2236)));
                    float3 _2241 = _46_m6[_2110].xyz - _424;
                    float _2242 = dot(_2241, _2241);
                    float3 _2244 = _2241 * rsqrt(_2242);
                    int _2247 = int(_46_m6[_2125].w);
                    float3 _2249 = (_2240 * _46_m6[_2113].z) * 0.5f;
                    float3 _2250 = _2241 - _2249;
                    float3 _2251 = _2241 + _2249;
                    bool _2254 = (uint(_46_m6[_2107].w) & 1u) == 0u;
                    bool _2257 = _2254 || ((_2129 & 2u) != 0u);
                    bool _2260 = (!_2254) && (_46_m6[_2113].z > 0.0f);
                    float _2272;
                    if (_2260)
                    {
                        _2272 = 1.0f / ((((length(_2250) * length(_2251)) + dot(_2250, _2251)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2272 = 1.0f;
                    }
                    float _2294;
                    if (_46_m6[_2122].w < 0.0f)
                    {
                        float _2288 = _2242 * (_46_m6[_2110].w * _46_m6[_2110].w);
                        float _2291 = clamp(1.0f - (_2288 * _2288), 0.0f, 1.0f);
                        _2294 = lerp(1.0f / (_2242 + 1.0f), _2272, float(_2260)) * (_2291 * _2291);
                    }
                    else
                    {
                        float3 _2277 = _2241 * _46_m6[_2110].w;
                        _2294 = _2272 * pow(1.0f - clamp(dot(_2277, _2277), 0.0f, 1.0f), _46_m6[_2122].w);
                    }
                    float _2300 = clamp((dot(_2244, -_2240) - _46_m6[_2113].z) * _46_m6[_2113].w, 0.0f, 1.0f);
                    float _2304 = _2294 * lerp(1.0f, _2300 * _2300, float(_2254));
                    float _2404;
                    if ((!_2260) && (_2247 >= 0))
                    {
                        uint _2310 = uint(_2247);
                        float2 _2397;
                        [branch]
                        if (_2254)
                        {
                            float4 _2387 = mul(_66_m1[_2310], _428);
                            _2397 = _66_m0[_2310].xy + (clamp(_2387.xy / _2387.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_2310].zw);
                        }
                        else
                        {
                            float3 _2324 = mul(float4(-_2241, 0.0f), _66_m1[_2310]).xyz;
                            float3 _370 = _2324;
                            float3 _369 = _2324;
                            float3 _368 = abs(_2324);
                            uint _2333 = uint(int(_368.y > _368.x));
                            uint _2339 = (_368.z > _368[_2333]) ? 2u : _2333;
                            uint _2345 = (_2339 * 2u) + uint(_369[_2339] < 0.0f);
                            float _2349 = abs(_370[_2345 / 2u]);
                            float _2369 = 0.5f - (0.000244140625f / _66_m0[_2310].w);
                            _2397 = _66_m0[_2310].xy + (clamp(float2((float(_2345) + ((((_370[uint(_341[_2345].x)] * _342[_2345].x) / _2349) * _2369) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_370[uint(_341[_2345].y)] * _342[_2345].y) / _2349) * _2369)), 0.0f.xx, 1.0f.xx) * _66_m0[_2310].zw);
                        }
                        _2404 = _2304 * _64.SampleLevel(_23, _2397, 0.0f).x;
                    }
                    else
                    {
                        _2404 = _2304;
                    }
                    float _2693;
                    if (_2404 > 0.0f)
                    {
                        int _2457;
                        if (_2257)
                        {
                            _2457 = int(_46_m6[_2116].x);
                        }
                        else
                        {
                            uint _2412 = asuint(_46_m6[_2113].w);
                            uint _2414 = asuint(_46_m6[_2116].x);
                            float3 _2415 = _424 - _46_m6[_2110].xyz;
                            float3 _2416 = abs(_2415);
                            float _2417 = _2416.x;
                            float _2418 = _2416.y;
                            float _2420 = _2416.z;
                            int _2452;
                            if ((_2417 > _2418) && (_2417 > _2420))
                            {
                                _2452 = int((_2415.x > 0.0f) ? (_2412 >> 24u) : ((_2412 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2444;
                                if (_2418 > _2420)
                                {
                                    _2444 = int((_2415.y > 0.0f) ? ((_2412 >> 8u) & 255u) : (_2412 & 255u));
                                }
                                else
                                {
                                    _2444 = int((_2415.z > 0.0f) ? ((_2414 >> 8u) & 255u) : (_2414 & 255u));
                                }
                                _2452 = _2444;
                            }
                            _2457 = (_2452 < 80) ? _2452 : (-1);
                        }
                        float3 _2467 = (_424 - ((-_2244) * _48_m11[_2457].x)) + (_572 * (_48_m11[_2457].y * 5.0f));
                        float4 _2474 = mul(_48_m10[_2457], float4(_2467, 1.0f));
                        float _2475 = _2474.w;
                        float3 _2478 = _2474.xyz / _2475.xxx;
                        float2 _2479 = _2478.xy;
                        float3 _2487 = _2478.xyz;
                        bool3 _2488 = bool3(_2487.x <= 0.0f.xxx.x, _2487.y <= 0.0f.xxx.y, _2487.z <= 0.0f.xxx.z);
                        bool3 _2489 = bool3(_2487.x >= 1.0f.xxx.x, _2487.y >= 1.0f.xxx.y, _2487.z >= 1.0f.xxx.z);
                        float _2492 = _2478.z;
                        float2 _2503 = ((_2479 * (_48_m12[_2457].zw - _48_m12[_2457].xy)) + _48_m12[_2457].xy).xy * _48_m13.zw;
                        float2 _2505 = floor(_2503 + 0.5f.xx);
                        float2 _2506 = _2503 - _2505;
                        float _2507 = _2506.x;
                        float _2508 = _2507 + 0.5f;
                        float _2509 = _2508 * _2508;
                        float _2512 = 1.0f - _2507;
                        float _2513 = min(_2507, 0.0f);
                        float _2516 = _2507 + 1.0f;
                        float _2517 = max(_2507, 0.0f);
                        float _2528 = _2506.y;
                        float _2529 = _2528 + 0.5f;
                        float _2530 = _2529 * _2529;
                        float _2533 = 1.0f - _2528;
                        float _2534 = min(_2528, 0.0f);
                        float _2537 = _2528 + 1.0f;
                        float _2538 = max(_2528, 0.0f);
                        float3 _2550 = float3(0.1599999964237213134765625f * _2512, 0.1599999964237213134765625f * ((_2516 - (_2517 * _2517)) + 1.0f), _2509 * 0.07999999821186065673828125f);
                        float3 _2551 = float3(0.1599999964237213134765625f * ((_2509 * 0.5f) - _2507), 0.1599999964237213134765625f * ((_2512 - (_2513 * _2513)) + 1.0f), 0.1599999964237213134765625f * _2516) + _2550;
                        float3 _2553 = float3(0.1599999964237213134765625f * _2533, 0.1599999964237213134765625f * ((_2537 - (_2538 * _2538)) + 1.0f), _2530 * 0.07999999821186065673828125f);
                        float3 _2554 = float3(0.1599999964237213134765625f * ((_2530 * 0.5f) - _2528), 0.1599999964237213134765625f * ((_2533 - (_2534 * _2534)) + 1.0f), 0.1599999964237213134765625f * _2537) + _2553;
                        float3 _2560 = ((_2550 / _2551) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.xxx;
                        float3 _2562 = ((_2553 / _2554) + float3(-2.5f, -0.5f, 1.5f)) * _48_m13.yyy;
                        float2 _2564 = _2505 * _48_m13.xy;
                        float _2565 = _2560.x;
                        float _2566 = _2562.x;
                        float _2569 = _2560.y;
                        float _2572 = _2560.z;
                        float _2575 = _2562.y;
                        float _2582 = _2562.z;
                        float _2589 = _2551.x;
                        float _2590 = _2554.x;
                        float _2592 = _2551.y;
                        float _2594 = _2551.z;
                        float _2596 = _2554.y;
                        float _2600 = _2554.z;
                        float _2658 = (((((((_2589 * _2590) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2565, _2566), _360).xy, _2492)) + ((_2592 * _2590) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2569, _2566), _360).xy, _2492))) + ((_2594 * _2590) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2572, _2566), _360).xy, _2492))) + ((_2589 * _2596) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2565, _2575), _360).xy, _2492))) + ((_2592 * _2596) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2569, _2575), _360).xy, _2492))) + ((_2594 * _2596) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2572, _2575), _360).xy, _2492))) + ((_2589 * _2600) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2565, _2582), _360).xy, _2492));
                        float2 _2679 = min(_2479, 1.0f.xx - _2479);
                        _2693 = (_2457 >= 0) ? lerp(1.0f, (any(bool3(_2488.x || _2489.x, _2488.y || _2489.y, _2488.z || _2489.z)) || ((asuint(_2492) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2658 + ((_2592 * _2600) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2569, _2582), _360).xy, _2492))) + ((_2594 * _2600) * _50.SampleCmpLevelZero(_26, float3(_2564 + float2(_2572, _2582), _360).xy, _2492))), _2257 ? min(_48_m11[_2457].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_48_m11[_2457].z - _2475) * 0.25f, min(_2679.x, _2679.y)))) : _48_m11[_2457].w) : 1.0f;
                    }
                    else
                    {
                        _2693 = 1.0f;
                    }
                    _2694 = _2693;
                    break;
                } while(false);
                _3319 = _2070 * _2694;
                _3320 = 0.0f.xxx;
            }
            _2092 = _3319;
            _2095 = _2094 + _3320;
        }
        _2067 = _2066 + _2094;
    }
    float3 _3326 = ((((float3(_1086, _1091, _1096) * (_620 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _517.z, _39_m4)) * _18_m22.x) + (((((_1380 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_624 * _639.x) + (clamp(50.0f * _624.y, 0.0f, 1.0f) * _639.y).xxx)) * 1.0f)) + (_2041.xyz + ((_2066 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2069)).xyz;
    float4 _3327 = float4(_3326.x, _3326.y, _3326.z, _362.w);
    _3327.w = _542;
    float _3344 = _424.y * _18_m46.w;
    float _3349 = max(0.00999999977648258209228515625f, _3344 + _18_m47.w);
    float3 _3363 = exp(_18_m45.xyz * ((-max(0.0f, (_462 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3349)) / _3349) * exp(_3344 + _18_m48.w))));
    float _3366 = dot(_1106, _18_m44.xyz);
    float _3372 = _18_m45.w * _18_m45.w;
    float _3376 = (1.0f + _3372) - ((2.0f * _18_m45.w) * _3366);
    float3 _3708;
    float _3709;
    if (_18_m55.z > 0.0f)
    {
        uint3 _3534 = (uint3(int3(int(_679.x), int(_679.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3535 = _3534.y;
        uint _3536 = _3534.z;
        uint _3539 = _3534.x + (_3535 * _3536);
        uint _3541 = _3535 + (_3536 * _3539);
        uint _3543 = _3536 + (_3539 * _3541);
        uint _3545 = _3539 + (_3541 * _3543);
        float _3569 = dot(_1106, -_16_m0[2].xyz);
        float3 _3579 = _424 - _16_m11.xyz;
        float _3581 = (_18_m55.w * ((_3569 > 5.9604644775390625e-08f) ? (1.0f / _3569) : 0.0f)) * (1.0f / _462);
        float _3582 = _3579.y;
        float _3583 = _3581 * _3582;
        float _3585 = _16_m11.y + _3583;
        float _3586 = _3582 - _3583;
        float _3588 = (1.0f - _3581) * _462;
        float _3602 = max(-127.0f, _18_m49.z * _3586);
        float _3626 = max(-127.0f, _18_m52.x * _3586);
        float _3637 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3585 - _18_m49.x)))) * ((abs(_3602) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3602)) / _3602) : (0.693147182464599609375f - (0.2402265071868896484375f * _3602)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3585 - _18_m52.z)))) * ((abs(_3626) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3626)) / _3626) : (0.693147182464599609375f - (0.2402265071868896484375f * _3626))));
        float _3659 = clamp((_462 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3662 = clamp((max(clamp(exp2(-(_3637 * _3588)), 0.0f, 1.0f), _18_m51.w) + clamp((_462 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3659, 0.0f, 1.0f);
        float4 _3702 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1116 + ((((float3(uint3(_3545, _3541 + (_3543 * _3545), _363) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_680 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_680 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3708 = _3702.xyz + (((_18_m51.xyz * (1.0f - _3662)) + (((_18_m54.xyz * pow(clamp(dot(_461, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3637 * max(_3588 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3659))) * _3702.w);
        _3709 = _3702.w * _3662;
    }
    else
    {
        float3 _3406 = _424 - _16_m11.xyz;
        float _3408 = _3406.y;
        float _3422 = max(-127.0f, _18_m49.z * _3408);
        float _3446 = max(-127.0f, _18_m52.x * _3408);
        float _3457 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3422) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3422)) / _3422) : (0.693147182464599609375f - (0.2402265071868896484375f * _3422)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3446) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3446)) / _3446) : (0.693147182464599609375f - (0.2402265071868896484375f * _3446))));
        float _3479 = clamp((_462 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
        float _3482 = clamp((max(clamp(exp2(-(_3457 * _462)), 0.0f, 1.0f), _18_m51.w) + clamp((_462 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3479, 0.0f, 1.0f);
        _3708 = (_18_m51.xyz * (1.0f - _3482)) + (((_18_m54.xyz * pow(clamp(dot(_461, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3457 * max(_462 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3479));
        _3709 = _3482;
    }
    float3 _3715 = ((_3327.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_3363 * _3709)) : (_3363 * _3709))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3366 * _3366)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3372) / max((12.56637096405029296875f * _3376) * sqrt(_3376), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3363)) * _3709 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_3708 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
    float3 _3725 = lerp(dot(_3715, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3715, _18_m76.w.xxx) * _18_m76.xyz;
    float2 _3735 = min(lerp(((sqrt(sqrt(abs(_592 * 0.5f))) * float2(int2(sign(_592)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _579.xx), 1.0f.xx);
    float4 _3736 = float4(_3735.x, _3735.y, _362.z, _362.w);
    _3736.z = float(clamp(max(dot(_3725.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _542, _542) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3736.w = lerp(0.0f, 0.699999988079071044921875f, _579);
    float3 renodx_output_color = float3(_3725.x, _3725.y, _3725.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _13 = float4(renodx_output_color, _3327.w);
    _14 = _3736;
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
