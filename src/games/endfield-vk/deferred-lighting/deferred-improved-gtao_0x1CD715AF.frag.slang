// DX11 0xC181EA40 -> Vulkan 0x1CD715AF
struct _27
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

static float _364 = 0.0f;
static uint _366 = 0u;

static const int2 _340[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _341[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

[[vk::binding(35, 3)]]
cbuffer _6_7 : register(b35)
{
    column_major float4x4 _7_m0 : packoffset(c0);
    column_major float4x4 _7_m1 : packoffset(c4);
    column_major float4x4 _7_m2 : packoffset(c8);
    column_major float4x4 _7_m3 : packoffset(c12);
    column_major float4x4 _7_m4 : packoffset(c16);
    column_major float4x4 _7_m5 : packoffset(c20);
    column_major float4x4 _7_m6 : packoffset(c24);
    column_major float4x4 _7_m7 : packoffset(c28);
    column_major float4x4 _7_m8 : packoffset(c32);
    column_major float4x4 _7_m9 : packoffset(c36);
    column_major float4x4 _7_m10 : packoffset(c40);
    float4 _7_m11 : packoffset(c44);
    column_major float4x4 _7_m12 : packoffset(c45);
    column_major float4x4 _7_m13 : packoffset(c49);
    column_major float4x4 _7_m14 : packoffset(c53);
    column_major float4x4 _7_m15 : packoffset(c57);
    column_major float4x4 _7_m16 : packoffset(c61);
    column_major float4x4 _7_m17 : packoffset(c65);
    column_major float4x4 _7_m18 : packoffset(c69);
    column_major float4x4 _7_m19 : packoffset(c73);
    column_major float4x4 _7_m20 : packoffset(c77);
    float4 _7_m21 : packoffset(c81);
};

[[vk::binding(40, 3)]]
cbuffer _8_9 : register(b40)
{
    float4 _9_m0 : packoffset(c0);
    float4 _9_m1 : packoffset(c1);
    float4 _9_m2 : packoffset(c2);
    float4 _9_m3 : packoffset(c3);
    float4 _9_m4 : packoffset(c4);
    float4 _9_m5 : packoffset(c5);
    float4 _9_m6[6] : packoffset(c6);
    float4 _9_m7[6] : packoffset(c12);
    float4 _9_m8 : packoffset(c18);
    float4 _9_m9 : packoffset(c19);
    float4 _9_m10 : packoffset(c20);
    float4 _9_m11 : packoffset(c21);
    float4 _9_m12 : packoffset(c22);
    float4 _9_m13 : packoffset(c23);
    float4 _9_m14 : packoffset(c24);
    float4 _9_m15 : packoffset(c25);
    float _9_m16 : packoffset(c26);
    float _9_m17 : packoffset(c26.y);
    float _9_m18 : packoffset(c26.z);
    uint _9_m19 : packoffset(c26.w);
    float4 _9_m20 : packoffset(c27);
    int4 _9_m21 : packoffset(c28);
    float4 _9_m22 : packoffset(c29);
    float4 _9_m23 : packoffset(c30);
    float4 _9_m24 : packoffset(c31);
    float4 _9_m25 : packoffset(c32);
    float4 _9_m26 : packoffset(c33);
    float4 _9_m27 : packoffset(c34);
    float4 _9_m28 : packoffset(c35);
    float4 _9_m29 : packoffset(c36);
    float4 _9_m30 : packoffset(c37);
    float4 _9_m31 : packoffset(c38);
    float4 _9_m32[4] : packoffset(c39);
    float4 _9_m33[4] : packoffset(c43);
    float4 _9_m34[4] : packoffset(c47);
    float4 _9_m35[4] : packoffset(c51);
    float4 _9_m36 : packoffset(c55);
    float4 _9_m37 : packoffset(c56);
    float4 _9_m38[4] : packoffset(c57);
    float4 _9_m39[4] : packoffset(c61);
    float4 _9_m40[4] : packoffset(c65);
    float4 _9_m41 : packoffset(c69);
    float4 _9_m42 : packoffset(c70);
    float4 _9_m43 : packoffset(c71);
    float4 _9_m44 : packoffset(c72);
    float4 _9_m45 : packoffset(c73);
    float4 _9_m46 : packoffset(c74);
    float4 _9_m47 : packoffset(c75);
    float4 _9_m48 : packoffset(c76);
    float4 _9_m49 : packoffset(c77);
    float4 _9_m50 : packoffset(c78);
    float4 _9_m51 : packoffset(c79);
    float4 _9_m52 : packoffset(c80);
    float4 _9_m53 : packoffset(c81);
    float4 _9_m54 : packoffset(c82);
    float4 _9_m55 : packoffset(c83);
    float4 _9_m56 : packoffset(c84);
    float4 _9_m57 : packoffset(c85);
    float4 _9_m58 : packoffset(c86);
    float4 _9_m59 : packoffset(c87);
    float4 _9_m60 : packoffset(c88);
    float4 _9_m61 : packoffset(c89);
    float4 _9_m62 : packoffset(c90);
    float4 _9_m63 : packoffset(c91);
    float4 _9_m64 : packoffset(c92);
    float4 _9_m65 : packoffset(c93);
    float4 _9_m66 : packoffset(c94);
    float4 _9_m67 : packoffset(c95);
    float4 _9_m68 : packoffset(c96);
    float4 _9_m69 : packoffset(c97);
    float4 _9_m70 : packoffset(c98);
    float4 _9_m71 : packoffset(c99);
    float4 _9_m72 : packoffset(c100);
    float4 _9_m73 : packoffset(c101);
    float4 _9_m74 : packoffset(c102);
    float4 _9_m75 : packoffset(c103);
    float4 _9_m76 : packoffset(c104);
    float4 _9_m77 : packoffset(c105);
    float4 _9_m78 : packoffset(c106);
    float4 _9_m79 : packoffset(c107);
    float4 _9_m80 : packoffset(c108);
    float4 _9_m81 : packoffset(c109);
    float4 _9_m82 : packoffset(c110);
    float4 _9_m83 : packoffset(c111);
    float4 _9_m84 : packoffset(c112);
    float4 _9_m85 : packoffset(c113);
    float4 _9_m86 : packoffset(c114);
    float4 _9_m87 : packoffset(c115);
    float4 _9_m88 : packoffset(c116);
    float4 _9_m89 : packoffset(c117);
    float4 _9_m90 : packoffset(c118);
    float4 _9_m91 : packoffset(c119);
    float4 _9_m92 : packoffset(c120);
    float4 _9_m93 : packoffset(c121);
    float4 _9_m94 : packoffset(c122);
    float4 _9_m95 : packoffset(c123);
    float4 _9_m96 : packoffset(c124);
    float4 _9_m97 : packoffset(c125);
    float4 _9_m98 : packoffset(c126);
    float4 _9_m99[2] : packoffset(c127);
    float4 _9_m100[2] : packoffset(c129);
    float _9_m101 : packoffset(c131);
    float _9_m102 : packoffset(c131.y);
    float _9_m103 : packoffset(c131.z);
    float _9_m104 : packoffset(c131.w);
    float4 _9_m105 : packoffset(c132);
    float4 _9_m106 : packoffset(c133);
    float4 _9_m107 : packoffset(c134);
    float4 _9_m108 : packoffset(c135);
    float4 _9_m109 : packoffset(c136);
    float4 _9_m110 : packoffset(c137);
    float4 _9_m111 : packoffset(c138);
    float4 _9_m112 : packoffset(c139);
    float4 _9_m113 : packoffset(c140);
    float4 _9_m114 : packoffset(c141);
    float4 _9_m115 : packoffset(c142);
    float4 _9_m116 : packoffset(c143);
    float4 _9_m117 : packoffset(c144);
    float4 _9_m118 : packoffset(c145);
    float4 _9_m119 : packoffset(c146);
    float4 _9_m120 : packoffset(c147);
    float4 _9_m121 : packoffset(c148);
    float4 _9_m122 : packoffset(c149);
    float4 _9_m123 : packoffset(c150);
    float4 _9_m124 : packoffset(c151);
    float4 _9_m125 : packoffset(c152);
    float4 _9_m126 : packoffset(c153);
    float4 _9_m127 : packoffset(c154);
    float4 _9_m128 : packoffset(c155);
    float4 _9_m129 : packoffset(c156);
    float4 _9_m130 : packoffset(c157);
    float4 _9_m131 : packoffset(c158);
    float4 _9_m132 : packoffset(c159);
    float4 _9_m133 : packoffset(c160);
    float4 _9_m134 : packoffset(c161);
    column_major float4x4 _9_m135 : packoffset(c162);
    float4 _9_m136 : packoffset(c166);
    float4 _9_m137 : packoffset(c167);
    float4 _9_m138[32] : packoffset(c168);
};

[[vk::binding(44, 3)]] ByteAddressBuffer _25 : register(t44);
[[vk::binding(41, 3)]]
cbuffer _26_28 : register(b41)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(37, 3)]]
cbuffer _29_30 : register(b37)
{
    int _30_m0 : packoffset(c0);
    int _30_m1 : packoffset(c0.y);
    int _30_m2 : packoffset(c0.z);
    int _30_m3 : packoffset(c0.w);
    float _30_m4 : packoffset(c1);
    float _30_m5 : packoffset(c1.y);
    float _30_m6 : packoffset(c1.z);
    float _30_m7 : packoffset(c1.w);
    float _30_m8 : packoffset(c2);
    float _30_m9 : packoffset(c2.y);
    float _30_m10 : packoffset(c2.z);
    float _30_m11 : packoffset(c2.w);
};

[[vk::binding(36, 3)]]
cbuffer _31_32 : register(b36)
{
    float4 _32_m0 : packoffset(c0);
    float4 _32_m1 : packoffset(c1);
    float4 _32_m2 : packoffset(c2);
    float4 _32_m3 : packoffset(c3);
    float4 _32_m4 : packoffset(c4);
    uint4 _32_m5 : packoffset(c5);
    float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(39, 3)]]
cbuffer _33_34 : register(b39)
{
    column_major float4x4 _34_m0[5] : packoffset(c0);
    float4 _34_m1[4] : packoffset(c20);
    float4 _34_m2[4] : packoffset(c24);
    float4 _34_m3[4] : packoffset(c28);
    float4 _34_m4 : packoffset(c32);
    float4 _34_m5 : packoffset(c33);
    float4 _34_m6 : packoffset(c34);
    float4 _34_m7 : packoffset(c35);
    float4 _34_m8 : packoffset(c36);
    float4 _34_m9[27] : packoffset(c37);
    column_major float4x4 _34_m10[56] : packoffset(c64);
    float4 _34_m11[56] : packoffset(c288);
    float4 _34_m12[56] : packoffset(c344);
    float4 _34_m13 : packoffset(c400);
    float4 _34_m14[47] : packoffset(c401);
    column_major float4x4 _34_m15[15] : packoffset(c448);
    float4 _34_m16[15] : packoffset(c508);
    float4 _34_m17[15] : packoffset(c523);
    float4 _34_m18[15] : packoffset(c538);
    float4 _34_m19 : packoffset(c553);
    float4 _34_m20 : packoffset(c554);
    float4 _34_m21[21] : packoffset(c555);
    column_major float4x4 _34_m22 : packoffset(c576);
    column_major float4x4 _34_m23 : packoffset(c580);
    float4 _34_m24 : packoffset(c584);
    float4 _34_m25 : packoffset(c585);
    float4 _34_m26 : packoffset(c586);
    float4 _34_m27[128] : packoffset(c587);
};

[[vk::binding(43, 3)]]
cbuffer _35_36 : register(b43)
{
    column_major float4x4 _36_m0[32] : packoffset(c0);
    float4 _36_m1[32] : packoffset(c128);
    uint4 _36_m2[56] : packoffset(c160);
    int4 _36_m3 : packoffset(c216);
    float4 _36_m4 : packoffset(c217);
    float4 _36_m5[4] : packoffset(c218);
    float4 _36_m6 : packoffset(c222);
};

[[vk::binding(34, 3)]]
cbuffer _42_43 : register(b34)
{
    column_major float4x4 _43_m0 : packoffset(c0);
    float4 _43_m1 : packoffset(c4);
};

[[vk::binding(42, 3)]]
cbuffer _49_50 : register(b42)
{
    float4 _50_m0[32] : packoffset(c0);
    column_major float4x4 _50_m1[32] : packoffset(c32);
};

[[vk::binding(38, 3)]]
cbuffer _54_55 : register(b38)
{
    float4 _55_m0 : packoffset(c0);
    float4 _55_m1 : packoffset(c1);
    float4 _55_m2 : packoffset(c2);
    float4 _55_m3 : packoffset(c3);
    float4 _55_m4 : packoffset(c4);
    uint4 _55_m5 : packoffset(c5);
    float4 _55_m6 : packoffset(c6);
    float4 _55_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3);
[[vk::binding(31, 3)]] Texture2D<float4> _19 : register(t31);
[[vk::binding(10, 3)]] Texture2D<float4> _20 : register(t10);
[[vk::binding(11, 3)]] Texture2D<float4> _21 : register(t11);
[[vk::binding(24, 3)]] Texture2D<float4> _22 : register(t24);
[[vk::binding(12, 3)]] Texture2DArray<float4> _23 : register(t12);
[[vk::binding(14, 3)]] Texture2D<float4> _37 : register(t14);
[[vk::binding(9, 3)]] Texture2D<float4> _38 : register(t9);
[[vk::binding(26, 3)]] Texture2D<float4> _39 : register(t26);
[[vk::binding(32, 3)]] Texture2D<float4> _40 : register(t32);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8);
[[vk::binding(13, 3)]] Texture3D<float4> _45 : register(t13);
[[vk::binding(15, 3)]] Texture2D<float4> _46 : register(t15);
[[vk::binding(30, 3)]] Texture2D<float4> _47 : register(t30);
[[vk::binding(16, 3)]] Texture2D<float4> _48 : register(t16);
[[vk::binding(23, 3)]] Texture3D<float4> _53 : register(t23);
[[vk::binding(33, 3)]] Texture2D<float4> _56 : register(t33);
[[vk::binding(7, 3)]] Texture2D<float4> _57 : register(t7);
[[vk::binding(22, 3)]] Texture3D<float4> _58 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _59 : register(t19);
[[vk::binding(21, 3)]] Texture3D<float4> _60 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _61 : register(t18);
[[vk::binding(20, 3)]] Texture3D<float4> _62 : register(t20);
[[vk::binding(17, 3)]] Texture3D<float4> _63 : register(t17);
[[vk::binding(6, 3)]] Texture2D<float4> _64 : register(t6);
[[vk::binding(29, 3)]] Texture2D<float4> _65 : register(t29);
[[vk::binding(28, 3)]] Texture2D<float4> _66 : register(t28);
[[vk::binding(27, 3)]] Texture2D<float4> _67 : register(t27);
[[vk::binding(25, 3)]] Texture3D<float4> _68 : register(t25);

static float4 gl_FragCoord;
static float2 _4;
static float4 _5;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _4 : TEXCOORD0;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 _5 : SV_Target0;
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
    uint2 _379 = uint2(gl_FragCoord.xy);
    int _382 = int(_379.x);
    int _383 = int(_379.y);
    int2 _385 = int3(_382, _383, 0).xy;
    float4 _387 = _65.Load(int3(_385, 0));
    float4 _389 = _66.Load(int3(_385, 0));
    float4 _391 = _67.Load(int3(_385, 0));
    uint _395 = uint(_387.x * 1023.0f);
    float _399 = float((_395 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    float _407 = float(((_395 & 7u) << 2u) | (uint(_387.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
    uint _411 = uint(round(_387.y * 1023.0f));
    float _416 = float((_411 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    uint _421 = uint(_387.z * 1023.0f);
    float2 _436 = (_389.xy * 2.0f) - 1.0f.xx;
    float _440 = 1.0f - dot(1.0f.xx, abs(_436));
    float3 _442 = float3(_436.x, _440, _436.y);
    float3 _454;
    if (_440 < 0.0f)
    {
        float2 _449 = _442.xz;
        bool2 _450 = bool2(_449.x >= 0.0f.xx.x, _449.y >= 0.0f.xx.y);
        float2 _452 = (1.0f.xx - abs(_442.zx)) * float2(_450.x ? 1.0f.xx.x : (-1.0f).xx.x, _450.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _454 = float3(_452.x, _442.y, _452.y);
    }
    else
    {
        _454 = _442;
    }
    float3 _455 = normalize(_454);
    float _456 = _389.z;
    float _458 = _391.w;
    float _460 = (float(_411 & 7u) * 0.107142865657806396484375f) + 0.5f;
    float2 _463 = float2(_379);
    float2 _468 = (_463 + 0.5f.xx) * _9_m0.zw;
    float2 _476 = gl_FragCoord.xy * _9_m0.zw;
    float2 _478 = (_476 * 2.0f) - 1.0f.xx;
    float4 _481 = float4(_478, _19.SampleLevel(_12, _468, 0.0f).x, 1.0f);
    _481.y = -_478.y;
    float4 _484 = mul(_7_m6, _481);
    float3 _488 = _484.xyz / _484.w.xxx;
    float4 _492 = float4(_488, 1.0f);
    float _495 = abs(mul(_7_m0, _492).z);
    float3 _510;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _510 = _7_m11.xyz - _488;
            break;
        }
        else
        {
            _510 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _511 = dot(_510, _510);
    float _513 = rsqrt(max(_511, 9.9999999392252902907785028219223e-09f));
    float3 _514 = _510 * _513;
    float _515 = _511 * _513;
    float3 _516 = -_514;
    float2 _529;
    if (_9_m129.x > 0.00048828125f)
    {
        _529 = _64.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _529 = 1.0f.xx;
    }
    float _530 = dot(_455, float3(0.0f, -1.0f, 0.0f));
    float3 _585;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _557 = abs(_455.x);
        float _559 = abs(_455.y);
        float _561 = abs(_455.z);
        float3 _566 = float3(_557, _559, _561) * (1.0f / ((_557 + _559) + _561));
        _585 = ((((float3(0.0f, 0.0f, 1.0f) * _566.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _566.y)) + (float3(1.0f, 0.0f, 0.0f) * _566.z)) * ((_45.SampleLevel(_14, _488 * _9_m124.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_530)));
    }
    else
    {
        _585 = 0.0f.xxx;
    }
    float4 _599 = mul(_43_m0, float4((_488 + ((((_455 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_530, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _530), 0.100000001490116119384765625f, 1.0f)))) + _585, 1.0f));
    float2 _602 = (_599.xy * 0.5f) + 0.5f.xx;
    float4 _603 = float4(_602.x, _602.y, _599.z, _599.w);
    _603.y = 1.0f - _602.y;
    float _624;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _624 = _41.SampleCmpLevelZero(_17, (_603.xy + _43_m1.xy).xy, max(_599.z, 0.00048828125f));
    }
    else
    {
        _624 = 1.0f;
    }
    float _629 = lerp(_9_m125.w, 1.0f, clamp(_455.y, 0.0f, 1.0f));
    float2 _638 = abs(_488.xz - _7_m11.xz);
    float _641 = max(_638.x, _638.y);
    float _660 = 1.0f - (_529 * (1.0f - lerp(lerp(_9_m125.z * _629, 1.0f, lerp(_629 * _624, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _641))), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _641)))).x;
    float _661 = 1.0f - _456;
    float _668 = clamp((_661 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f);
    float3 _676 = _391.xyz * lerp(1.0f, 0.25f, (_9_m117.x * _668) * _660);
    float _686 = lerp(_661, clamp(_661 + (((0.60000002384185791015625f - (0.4000000059604644775390625f * _668)) * _661) * (_456 + (-0.300000011920928955078125f))), _661, 0.699999988079071044921875f), (_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _660);
    float _687 = 1.0f - _686;
    float3 _689 = (0.07999999821186065673828125f * _460).xxx;
    float _690 = dot(_455, _514);
    float _691 = max(0.0f, _690);
    float4 _693 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _687) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _694 = _693.x;
    float2 _704 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_694 * _694, exp2((-9.27999973297119140625f) * _691)) * _694) + _693.y)) + _693.zw;
    float4 _716 = _47.SampleLevel(_13, _476, 0.0f);
    float _717 = _716.x;
    float4 _721 = _38.Load(int3(_385, 0));
    float _722 = _721.x;
    float4 _904;
    if (_722 > 0.001000000047497451305389404296875f)
    {
        float3 _732 = reflect(_516, _455);
        float3 _733 = -_32_m0.xyz;
        float _738 = dot(_733, _732);
        float3 _740 = _732 - (_733 * _738);
        bool3 _742 = (_738 < _32_m4.z).xxx;
        float3 _750 = normalize((_733 * _32_m4.z) + ((_740 * rsqrt(max(6.103515625e-05f, dot(_740, _740)))) * _32_m4.y));
        float3 _751 = float3(_742.x ? _750.x : _732.x, _742.y ? _750.y : _732.y, _742.z ? _750.z : _732.z);
        float3 _755 = _751 + _514;
        float3 _759 = _755 * rsqrt(max(6.103515625e-05f, dot(_755, _755)));
        float _760 = dot(_455, _751);
        float _761 = clamp(dot(_751, _455), 0.0f, 1.0f);
        float _763 = clamp(dot(_455, _759), 0.0f, 1.0f);
        float _766 = dot(_514, _751);
        float _768 = clamp(_690, 0.0f, 1.0f);
        float _769 = _687 * _687;
        float _770 = _769 * _769;
        float _791 = (((_763 * _770) - _763) * _763) + 1.0f;
        float _794 = 1.0f - clamp(dot(_514, _759), 0.0f, 1.0f);
        float _795 = _794 * _794;
        float _797 = (_794 * _795) * _795;
        float _827 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_686 * (1.04997003078460693359375f + (_686 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _686))))));
        float _828 = 1.0f - _827;
        float3 _831 = _689 + ((1.0f.xxx - _689) * 0.0476190485060214996337890625f);
        float _862 = clamp(-_766, 0.0f, 1.0f);
        float _866 = (((_862 * 0.36000001430511474609375f) - _862) * _862) + 1.0f;
        float _867 = _866 * _866;
        float3 _879 = ((min(((_689 * (1.0f - _797)) + _797.xxx) * ((_770 / (_791 * _791)) * (0.5f / (((_761 * sqrt(((((-_768) * _770) + _768) * _768) + _770)) + (_768 * sqrt(((((-_761) * _770) + _761) * _761) + _770))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_831 * (((_46.SampleLevel(_13, (float2(_768, _687) * 0.96875f) + 0.015625f.xx, 0.0f).x * _46.SampleLevel(_13, (float2(_761, _687) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _827) / _828)) * _831) / (1.0f.xxx - (_831 * _828)))) * lerp(clamp(_690 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_766, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_766 + 1.0f, 0.0f, 1.0f))) * _416;
        float3 _889 = _32_m1.xyz * (((((_676 * _416) * 1.0f) * (float((_421 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_879 * _32_m4.x, 0.0f.xxx, 1000.0f.xxx) * _761)) + (((((_676 / max(0.00999999977648258209228515625f, max(max(_676.x, _676.y), _676.z)).xxx) * _399) * (clamp(0.5f - _760, 0.0f, 1.0f) * ((0.36000001430511474609375f != _867) ? (0.36000001430511474609375f / _867) : 1.0f))) + (_676 * (clamp(_760 + _407, 0.0f, 1.0f) - clamp(_761, 0.0f, 1.0f)))) * _416));
        float3 _902 = lerp(_889, _889 * _40.SampleBias(_13, float2(_722, 0.5f), _9_m16).xyz, (1.0f - _722).xxx) * lerp(_717, max(_717, _416), _407);
        _904 = float4(_902.x, _902.y, _902.z, 0.0f.xxxx.w);
    }
    else
    {
        _904 = 0.0f.xxxx;
    }
    float2 _906 = floor(_463 * 0.03125f);
    int _914 = int((_906.x + (_906.y * _30_m5)) * 8.0f);
    float _921 = floor(_495 - (_9_m3.y * _30_m11));
    float _925 = clamp(_921, 0.0f, _30_m7 - 1.0f);
    int _927 = int(_925 * 8.0f);
    float4 _933 = _39.SampleBias(_13, _468, _9_m16);
    float3 _935;
    float _938;
    _935 = 0.0f.xxx;
    _938 = 1.0f;
    float3 _936;
    float _939;
    [loop]
    for (int _940 = 0; _940 <= 7; _935 = _936, _938 = _939, _940++)
    {
        uint _958 = (_921 <= _925) ? (_25.Load(uint(_914 + _940) * 4 + 0) & _25.Load(uint((_9_m21.y + _927) + _940) * 4 + 0)) : 0u;
        uint _959 = uint(_940);
        float3 _963;
        _939 = _938;
        _963 = 0.0f.xxx;
        uint _966;
        float _961;
        float3 _964;
        [loop]
        for (uint _965 = _958; _965 != 0u; _939 = _961, _963 = _964, _965 = _966)
        {
            uint _970 = firstbitlow(_965);
            _966 = _965 ^ (1u << (_970 & 31u));
            int _976 = int((32u * _959) + _970) * 8;
            int _979 = _976 + 1;
            int _982 = _976 + 2;
            int _985 = _976 + 3;
            int _988 = _976 + 5;
            int _991 = _976 + 6;
            int _994 = _976 + 7;
            uint _998 = uint(_32_m6[_988].w);
            float _1073;
            if ((_998 & 1u) == 1u)
            {
                uint _1004 = asuint(_32_m6[_988].x);
                uint _1011 = asuint(_32_m6[_988].y);
                uint _1018 = asuint(_32_m6[_988].z);
                uint _1025 = asuint(_32_m6[_991].x);
                uint _1032 = asuint(_32_m6[_991].y);
                uint _1039 = asuint(_32_m6[_991].z);
                float3 _1058 = abs(mul(float4(_488 - _32_m6[_979].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1004).x, spvUnpackHalf2x16(_1018).x, spvUnpackHalf2x16(_1032).x, 0.0f), float4(spvUnpackHalf2x16(_1004 >> 16u).x, spvUnpackHalf2x16(_1018 >> 16u).x, spvUnpackHalf2x16(_1032 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1011).x, spvUnpackHalf2x16(_1025).x, spvUnpackHalf2x16(_1039).x, 0.0f), float4(spvUnpackHalf2x16(_1011 >> 16u).x, spvUnpackHalf2x16(_1025 >> 16u).x, spvUnpackHalf2x16(_1039 >> 16u).x, 0.0f))).xyz);
                float _1065 = _32_m6[_994].x * 0.5f;
                float _1071 = 1.0f - clamp((max(max(_1058.x, _1058.y), _1058.z) - (_1065 + 0.5f)) / (0.5f - _1065), 0.0f, 1.0f);
                _1073 = _1071 * _1071;
            }
            else
            {
                _1073 = 1.0f;
            }
            bool _1077 = _32_m6[_985].z > 0.5f;
            if ((false || (_1073 < 0.001000000047497451305389404296875f)) || _1077)
            {
                _961 = _939;
                _964 = _963;
                continue;
            }
            float _2273;
            float3 _2274;
            if (_32_m6[_976].w < 1.5f)
            {
                float3 _1585 = float3(0.100000001490116119384765625f, _687, 1.0f);
                float _1594 = (0.5f + (0.5f * _32_m6[_982].y)) - abs(_32_m6[_982].x);
                float _1595 = _32_m6[_982].y - _1594;
                float _1602 = abs(max((1.0f - abs(_1594)) - abs(_1595), 0.00048828125f));
                float3 _1606 = normalize(float3(_1594, _1595, (_32_m6[_982].x >= 0.0f) ? _1602 : (-_1602)));
                float3 _1607 = _32_m6[_979].xyz - _488;
                float _1608 = dot(_1607, _1607);
                float _1609 = rsqrt(_1608);
                float3 _1610 = _1607 * _1609;
                float _1614 = clamp(_32_m6[_994].y * _1609, 0.0f, 1.0f);
                int _1619 = int(_32_m6[_994].w);
                float3 _1620 = _1606 * _32_m6[_982].z;
                float3 _1621 = _1620 * 0.5f;
                float3 _1622 = _1607 - _1621;
                float3 _1623 = _1607 + _1621;
                bool _1626 = (uint(_32_m6[_976].w) & 1u) == 0u;
                bool _1629 = _1626 || ((_998 & 2u) != 0u);
                bool _1632 = (!_1626) && (_32_m6[_982].z > 0.0f);
                float _1651;
                float _1652;
                if (_1632)
                {
                    float _1636 = length(_1622);
                    float _1637 = length(_1623);
                    _1651 = clamp(0.5f * ((dot(_455, _1622) / _1636) + (dot(_455, _1623) / _1637)), 0.0f, 1.0f);
                    _1652 = 1.0f / ((((_1636 * _1637) + dot(_1622, _1623)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1651 = clamp(dot(_455, _1610), 0.0f, 1.0f);
                    _1652 = 1.0f;
                }
                float _1674;
                if (_32_m6[_991].w < 0.0f)
                {
                    float _1668 = _1608 * (_32_m6[_979].w * _32_m6[_979].w);
                    float _1671 = clamp(1.0f - (_1668 * _1668), 0.0f, 1.0f);
                    _1674 = lerp(1.0f / (_1608 + 1.0f), _1652, float(_1632)) * (_1671 * _1671);
                }
                else
                {
                    float3 _1657 = _1607 * _32_m6[_979].w;
                    _1674 = _1652 * pow(1.0f - clamp(dot(_1657, _1657), 0.0f, 1.0f), _32_m6[_991].w);
                }
                float _1680 = clamp((dot(_1610, -_1606) - _32_m6[_982].z) * _32_m6[_982].w, 0.0f, 1.0f);
                float _1684 = _1674 * lerp(1.0f, _1680 * _1680, float(_1626));
                float _1784;
                if ((!_1632) && (_1619 >= 0))
                {
                    uint _1690 = uint(_1619);
                    float2 _1777;
                    [branch]
                    if (_1626)
                    {
                        float4 _1767 = mul(_50_m1[_1690], _492);
                        _1777 = _50_m0[_1690].xy + (clamp(_1767.xy / _1767.w.xx, 0.0f.xx, 1.0f.xx) * _50_m0[_1690].zw);
                    }
                    else
                    {
                        float3 _1704 = mul(float4(-_1607, 0.0f), _50_m1[_1690]).xyz;
                        float3 _371 = _1704;
                        float3 _370 = _1704;
                        float3 _369 = abs(_1704);
                        uint _1713 = uint(int(_369.y > _369.x));
                        uint _1719 = (_369.z > _369[_1713]) ? 2u : _1713;
                        uint _1725 = (_1719 * 2u) + uint(_370[_1719] < 0.0f);
                        float _1729 = abs(_371[_1725 / 2u]);
                        float _1749 = 0.5f - (0.000244140625f / _50_m0[_1690].w);
                        _1777 = _50_m0[_1690].xy + (clamp(float2((float(_1725) + ((((_371[uint(_340[_1725].x)] * _341[_1725].x) / _1729) * _1749) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_371[uint(_340[_1725].y)] * _341[_1725].y) / _1729) * _1749)), 0.0f.xx, 1.0f.xx) * _50_m0[_1690].zw);
                    }
                    _1784 = _1684 * _48.SampleLevel(_13, _1777, 0.0f).x;
                }
                else
                {
                    _1784 = _1684;
                }
                bool _1785 = _1784 > 0.0f;
                float _2093;
                if (_1785)
                {
                    int _1837;
                    if (_1629)
                    {
                        _1837 = int(_32_m6[_985].x);
                    }
                    else
                    {
                        uint _1792 = asuint(_32_m6[_982].w);
                        uint _1794 = asuint(_32_m6[_985].x);
                        float3 _1795 = _488 - _32_m6[_979].xyz;
                        float3 _1796 = abs(_1795);
                        float _1797 = _1796.x;
                        float _1798 = _1796.y;
                        float _1800 = _1796.z;
                        int _1832;
                        if ((_1797 > _1798) && (_1797 > _1800))
                        {
                            _1832 = int((_1795.x > 0.0f) ? (_1792 >> 24u) : ((_1792 >> 16u) & 255u));
                        }
                        else
                        {
                            int _1824;
                            if (_1798 > _1800)
                            {
                                _1824 = int((_1795.y > 0.0f) ? ((_1792 >> 8u) & 255u) : (_1792 & 255u));
                            }
                            else
                            {
                                _1824 = int((_1795.z > 0.0f) ? ((_1794 >> 8u) & 255u) : (_1794 & 255u));
                            }
                            _1832 = _1824;
                        }
                        _1837 = (_1832 < 80) ? _1832 : (-1);
                    }
                    float _2091;
                    do
                    {
                        if (_36_m2[_1837].y > 0u)
                        {
                            uint _1855 = uint(_1837);
                            float4 _368 = _933;
                            float _1866;
                            do
                            {
                                if (_36_m2[_1855].y == 0u)
                                {
                                    _1866 = 1.0f;
                                    break;
                                }
                                _1866 = _368[_36_m2[_1855].y - 1u];
                                break;
                            } while(false);
                            _2091 = _1866;
                            break;
                        }
                        float4 _1873 = mul(_34_m10[_1837], float4((_488 - ((-_1610) * _34_m11[_1837].x)) + (_455 * (_34_m11[_1837].y * 5.0f)), 1.0f));
                        float _1874 = _1873.w;
                        float3 _1877 = _1873.xyz / _1874.xxx;
                        float2 _1878 = _1877.xy;
                        float3 _1886 = _1877.xyz;
                        bool3 _1887 = bool3(_1886.x <= 0.0f.xxx.x, _1886.y <= 0.0f.xxx.y, _1886.z <= 0.0f.xxx.z);
                        bool3 _1888 = bool3(_1886.x >= 1.0f.xxx.x, _1886.y >= 1.0f.xxx.y, _1886.z >= 1.0f.xxx.z);
                        float _1891 = _1877.z;
                        float2 _1902 = ((_1878 * (_34_m12[_1837].zw - _34_m12[_1837].xy)) + _34_m12[_1837].xy).xy * _34_m13.zw;
                        float2 _1904 = floor(_1902 + 0.5f.xx);
                        float2 _1905 = _1902 - _1904;
                        float _1906 = _1905.x;
                        float _1907 = _1906 + 0.5f;
                        float _1908 = _1907 * _1907;
                        float _1911 = 1.0f - _1906;
                        float _1912 = min(_1906, 0.0f);
                        float _1915 = _1906 + 1.0f;
                        float _1916 = max(_1906, 0.0f);
                        float _1927 = _1905.y;
                        float _1928 = _1927 + 0.5f;
                        float _1929 = _1928 * _1928;
                        float _1932 = 1.0f - _1927;
                        float _1933 = min(_1927, 0.0f);
                        float _1936 = _1927 + 1.0f;
                        float _1937 = max(_1927, 0.0f);
                        float3 _1949 = float3(0.1599999964237213134765625f * _1911, 0.1599999964237213134765625f * ((_1915 - (_1916 * _1916)) + 1.0f), _1908 * 0.07999999821186065673828125f);
                        float3 _1950 = float3(0.1599999964237213134765625f * ((_1908 * 0.5f) - _1906), 0.1599999964237213134765625f * ((_1911 - (_1912 * _1912)) + 1.0f), 0.1599999964237213134765625f * _1915) + _1949;
                        float3 _1952 = float3(0.1599999964237213134765625f * _1932, 0.1599999964237213134765625f * ((_1936 - (_1937 * _1937)) + 1.0f), _1929 * 0.07999999821186065673828125f);
                        float3 _1953 = float3(0.1599999964237213134765625f * ((_1929 * 0.5f) - _1927), 0.1599999964237213134765625f * ((_1932 - (_1933 * _1933)) + 1.0f), 0.1599999964237213134765625f * _1936) + _1952;
                        float3 _1959 = ((_1949 / _1950) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                        float3 _1961 = ((_1952 / _1953) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                        float2 _1963 = _1904 * _34_m13.xy;
                        float _1964 = _1959.x;
                        float _1965 = _1961.x;
                        float2 _1967 = _1963 + float2(_1964, _1965);
                        float _1968 = _1959.y;
                        float2 _1970 = _1963 + float2(_1968, _1965);
                        float _1971 = _1959.z;
                        float2 _1973 = _1963 + float2(_1971, _1965);
                        float _1974 = _1961.y;
                        float2 _1976 = _1963 + float2(_1964, _1974);
                        float2 _1978 = _1963 + float2(_1968, _1974);
                        float2 _1980 = _1963 + float2(_1971, _1974);
                        float _1981 = _1961.z;
                        float2 _1983 = _1963 + float2(_1964, _1981);
                        float2 _1985 = _1963 + float2(_1968, _1981);
                        float2 _1987 = _1963 + float2(_1971, _1981);
                        float _1988 = _1950.x;
                        float _1989 = _1953.x;
                        float _1991 = _1950.y;
                        float _1993 = _1950.z;
                        float _1995 = _1953.y;
                        float _1999 = _1953.z;
                        float _2065 = ((((((((_1988 * _1989) * _37.SampleCmpLevelZero(_16, float3(_1967, _364).xy, _1891)) + ((_1991 * _1989) * _37.SampleCmpLevelZero(_16, float3(_1970, _364).xy, _1891))) + ((_1993 * _1989) * _37.SampleCmpLevelZero(_16, float3(_1973, _364).xy, _1891))) + ((_1988 * _1995) * _37.SampleCmpLevelZero(_16, float3(_1976, _364).xy, _1891))) + ((_1991 * _1995) * _37.SampleCmpLevelZero(_16, float3(_1978, _364).xy, _1891))) + ((_1993 * _1995) * _37.SampleCmpLevelZero(_16, float3(_1980, _364).xy, _1891))) + ((_1988 * _1999) * _37.SampleCmpLevelZero(_16, float3(_1983, _364).xy, _1891))) + ((_1991 * _1999) * _37.SampleCmpLevelZero(_16, float3(_1985, _364).xy, _1891));
                        float2 _2078 = min(_1878, 1.0f.xx - _1878);
                        _2091 = lerp(1.0f, (any(bool3(_1887.x || _1888.x, _1887.y || _1888.y, _1887.z || _1888.z)) || ((asuint(_1891) & 2147483647u) > 2139095040u)) ? 1.0f : (_2065 + ((_1993 * _1999) * _37.SampleCmpLevelZero(_16, float3(_1987, _364).xy, _1891))), _1629 ? min(_34_m11[_1837].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_1837].z - _1874) * 0.25f, min(_2078.x, _2078.y)))) : _34_m11[_1837].w);
                        break;
                    } while(false);
                    _2093 = (_1837 >= 0) ? _2091 : 1.0f;
                }
                else
                {
                    _2093 = 1.0f;
                }
                float3 _2117;
                float3 _2118;
                if (_1632)
                {
                    float3 _2096 = _1585 * _1585;
                    float3 _2097 = reflect(_516, _455);
                    float _2106 = dot(_2097, _1620);
                    _2117 = _2096 / clamp(_2096 + (0.5f * clamp(_32_m6[_982].z * _1609, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2118 = normalize(_1622 + (_1620 * clamp(dot(_1622, (_2097 * _2106) - _1620) / ((_32_m6[_982].z * _32_m6[_982].z) - (_2106 * _2106)), 0.0f, 1.0f)));
                }
                else
                {
                    _2117 = 1.0f.xxx;
                    _2118 = _1610;
                }
                float3 _2119 = _2118 + _514;
                float3 _2123 = _2119 * rsqrt(max(6.103515625e-05f, dot(_2119, _2119)));
                float3 _2272;
                if (_1785)
                {
                    float _2126 = dot(_455, _2118);
                    float _2127 = clamp(_1651, 0.0f, 1.0f);
                    float _2129 = clamp(dot(_455, _2123), 0.0f, 1.0f);
                    float _2131 = clamp(dot(_514, _2123), 0.0f, 1.0f);
                    float _2132 = dot(_514, _2118);
                    float _2134 = clamp(_690, 0.0f, 1.0f);
                    float _2135 = _687 * _687;
                    float _2145;
                    if (_1614 > 0.0f)
                    {
                        _2145 = clamp(_2135 + ((_1614 * _1614) / ((_2131 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2145 = _2135;
                    }
                    float _2146 = _2145 * _2145;
                    float _2167 = (((_2129 * _2146) - _2129) * _2129) + 1.0f;
                    float _2172 = 1.0f - _2131;
                    float _2173 = _2172 * _2172;
                    float _2175 = (_2172 * _2173) * _2173;
                    float _2205 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_686 * (1.04997003078460693359375f + (_686 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _686))))));
                    float _2206 = 1.0f - _2205;
                    float3 _2209 = _689 + ((1.0f.xxx - _689) * 0.0476190485060214996337890625f);
                    float _2240 = clamp(-_2132, 0.0f, 1.0f);
                    float _2244 = (((_2240 * 0.36000001430511474609375f) - _2240) * _2240) + 1.0f;
                    float _2245 = _2244 * _2244;
                    float3 _2257 = ((min(((_689 * (1.0f - _2175)) + _2175.xxx) * (((_2146 / (_2167 * _2167)) * _2117.y) * (0.5f / (((_2127 * sqrt(((((-_2134) * _2146) + _2134) * _2134) + _2146)) + (_2134 * sqrt(((((-_2127) * _2146) + _2127) * _2127) + _2146))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2209 * (((_46.SampleLevel(_13, (float2(_2134, _687) * 0.96875f) + 0.015625f.xx, 0.0f).x * _46.SampleLevel(_13, (float2(_2127, _687) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2205) / _2206)) * _2209) / (1.0f.xxx - (_2209 * _2206)))) * lerp(clamp(_690 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_2132, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_2132 + 1.0f, 0.0f, 1.0f))) * _416;
                    _2272 = (((clamp(_2257 * _32_m6[_994].z, 0.0f.xxx, 1000.0f.xxx) * _1651) + (((((_676 / max(0.00999999977648258209228515625f, max(max(_676.x, _676.y), _676.z)).xxx) * _399) * (clamp(0.5f - _2126, 0.0f, 1.0f) * ((0.36000001430511474609375f != _2245) ? (0.36000001430511474609375f / _2245) : 1.0f))) + (_676 * (clamp(_2126 + _407, 0.0f, 1.0f) - clamp(_2127, 0.0f, 1.0f)))) * _416)) + (((_676 * _416) * _2117.z) * _1651)) * (((_32_m6[_976].xyz * _1784) * _2093) * _1073);
                }
                else
                {
                    _2272 = 0.0f.xxx;
                }
                _2273 = _939;
                _2274 = _2272;
            }
            else
            {
                float _1583;
                do
                {
                    if (_1077)
                    {
                        _1583 = 1.0f;
                        break;
                    }
                    float _1097 = (0.5f + (0.5f * _32_m6[_982].y)) - abs(_32_m6[_982].x);
                    float _1098 = _32_m6[_982].y - _1097;
                    float _1105 = abs(max((1.0f - abs(_1097)) - abs(_1098), 0.00048828125f));
                    float3 _1109 = normalize(float3(_1097, _1098, (_32_m6[_982].x >= 0.0f) ? _1105 : (-_1105)));
                    float3 _1110 = _32_m6[_979].xyz - _488;
                    float _1111 = dot(_1110, _1110);
                    float3 _1113 = _1110 * rsqrt(_1111);
                    int _1116 = int(_32_m6[_994].w);
                    float3 _1118 = (_1109 * _32_m6[_982].z) * 0.5f;
                    float3 _1119 = _1110 - _1118;
                    float3 _1120 = _1110 + _1118;
                    bool _1123 = (uint(_32_m6[_976].w) & 1u) == 0u;
                    bool _1126 = _1123 || ((_998 & 2u) != 0u);
                    bool _1129 = (!_1123) && (_32_m6[_982].z > 0.0f);
                    float _1141;
                    if (_1129)
                    {
                        _1141 = 1.0f / ((((length(_1119) * length(_1120)) + dot(_1119, _1120)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _1141 = 1.0f;
                    }
                    float _1163;
                    if (_32_m6[_991].w < 0.0f)
                    {
                        float _1157 = _1111 * (_32_m6[_979].w * _32_m6[_979].w);
                        float _1160 = clamp(1.0f - (_1157 * _1157), 0.0f, 1.0f);
                        _1163 = lerp(1.0f / (_1111 + 1.0f), _1141, float(_1129)) * (_1160 * _1160);
                    }
                    else
                    {
                        float3 _1146 = _1110 * _32_m6[_979].w;
                        _1163 = _1141 * pow(1.0f - clamp(dot(_1146, _1146), 0.0f, 1.0f), _32_m6[_991].w);
                    }
                    float _1169 = clamp((dot(_1113, -_1109) - _32_m6[_982].z) * _32_m6[_982].w, 0.0f, 1.0f);
                    float _1173 = _1163 * lerp(1.0f, _1169 * _1169, float(_1123));
                    float _1273;
                    if ((!_1129) && (_1116 >= 0))
                    {
                        uint _1179 = uint(_1116);
                        float2 _1266;
                        [branch]
                        if (_1123)
                        {
                            float4 _1256 = mul(_50_m1[_1179], _492);
                            _1266 = _50_m0[_1179].xy + (clamp(_1256.xy / _1256.w.xx, 0.0f.xx, 1.0f.xx) * _50_m0[_1179].zw);
                        }
                        else
                        {
                            float3 _1193 = mul(float4(-_1110, 0.0f), _50_m1[_1179]).xyz;
                            float3 _375 = _1193;
                            float3 _374 = _1193;
                            float3 _373 = abs(_1193);
                            uint _1202 = uint(int(_373.y > _373.x));
                            uint _1208 = (_373.z > _373[_1202]) ? 2u : _1202;
                            uint _1214 = (_1208 * 2u) + uint(_374[_1208] < 0.0f);
                            float _1218 = abs(_375[_1214 / 2u]);
                            float _1238 = 0.5f - (0.000244140625f / _50_m0[_1179].w);
                            _1266 = _50_m0[_1179].xy + (clamp(float2((float(_1214) + ((((_375[uint(_340[_1214].x)] * _341[_1214].x) / _1218) * _1238) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_375[uint(_340[_1214].y)] * _341[_1214].y) / _1218) * _1238)), 0.0f.xx, 1.0f.xx) * _50_m0[_1179].zw);
                        }
                        _1273 = _1173 * _48.SampleLevel(_13, _1266, 0.0f).x;
                    }
                    else
                    {
                        _1273 = _1173;
                    }
                    float _1582;
                    if (_1273 > 0.0f)
                    {
                        int _1326;
                        if (_1126)
                        {
                            _1326 = int(_32_m6[_985].x);
                        }
                        else
                        {
                            uint _1281 = asuint(_32_m6[_982].w);
                            uint _1283 = asuint(_32_m6[_985].x);
                            float3 _1284 = _488 - _32_m6[_979].xyz;
                            float3 _1285 = abs(_1284);
                            float _1286 = _1285.x;
                            float _1287 = _1285.y;
                            float _1289 = _1285.z;
                            int _1321;
                            if ((_1286 > _1287) && (_1286 > _1289))
                            {
                                _1321 = int((_1284.x > 0.0f) ? (_1281 >> 24u) : ((_1281 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1313;
                                if (_1287 > _1289)
                                {
                                    _1313 = int((_1284.y > 0.0f) ? ((_1281 >> 8u) & 255u) : (_1281 & 255u));
                                }
                                else
                                {
                                    _1313 = int((_1284.z > 0.0f) ? ((_1283 >> 8u) & 255u) : (_1283 & 255u));
                                }
                                _1321 = _1313;
                            }
                            _1326 = (_1321 < 80) ? _1321 : (-1);
                        }
                        float _1580;
                        do
                        {
                            if (_36_m2[_1326].y > 0u)
                            {
                                uint _1344 = uint(_1326);
                                float4 _372 = _933;
                                float _1355;
                                do
                                {
                                    if (_36_m2[_1344].y == 0u)
                                    {
                                        _1355 = 1.0f;
                                        break;
                                    }
                                    _1355 = _372[_36_m2[_1344].y - 1u];
                                    break;
                                } while(false);
                                _1580 = _1355;
                                break;
                            }
                            float4 _1362 = mul(_34_m10[_1326], float4((_488 - ((-_1113) * _34_m11[_1326].x)) + (_455 * (_34_m11[_1326].y * 5.0f)), 1.0f));
                            float _1363 = _1362.w;
                            float3 _1366 = _1362.xyz / _1363.xxx;
                            float2 _1367 = _1366.xy;
                            float3 _1375 = _1366.xyz;
                            bool3 _1376 = bool3(_1375.x <= 0.0f.xxx.x, _1375.y <= 0.0f.xxx.y, _1375.z <= 0.0f.xxx.z);
                            bool3 _1377 = bool3(_1375.x >= 1.0f.xxx.x, _1375.y >= 1.0f.xxx.y, _1375.z >= 1.0f.xxx.z);
                            float _1380 = _1366.z;
                            float2 _1391 = ((_1367 * (_34_m12[_1326].zw - _34_m12[_1326].xy)) + _34_m12[_1326].xy).xy * _34_m13.zw;
                            float2 _1393 = floor(_1391 + 0.5f.xx);
                            float2 _1394 = _1391 - _1393;
                            float _1395 = _1394.x;
                            float _1396 = _1395 + 0.5f;
                            float _1397 = _1396 * _1396;
                            float _1400 = 1.0f - _1395;
                            float _1401 = min(_1395, 0.0f);
                            float _1404 = _1395 + 1.0f;
                            float _1405 = max(_1395, 0.0f);
                            float _1416 = _1394.y;
                            float _1417 = _1416 + 0.5f;
                            float _1418 = _1417 * _1417;
                            float _1421 = 1.0f - _1416;
                            float _1422 = min(_1416, 0.0f);
                            float _1425 = _1416 + 1.0f;
                            float _1426 = max(_1416, 0.0f);
                            float3 _1438 = float3(0.1599999964237213134765625f * _1400, 0.1599999964237213134765625f * ((_1404 - (_1405 * _1405)) + 1.0f), _1397 * 0.07999999821186065673828125f);
                            float3 _1439 = float3(0.1599999964237213134765625f * ((_1397 * 0.5f) - _1395), 0.1599999964237213134765625f * ((_1400 - (_1401 * _1401)) + 1.0f), 0.1599999964237213134765625f * _1404) + _1438;
                            float3 _1441 = float3(0.1599999964237213134765625f * _1421, 0.1599999964237213134765625f * ((_1425 - (_1426 * _1426)) + 1.0f), _1418 * 0.07999999821186065673828125f);
                            float3 _1442 = float3(0.1599999964237213134765625f * ((_1418 * 0.5f) - _1416), 0.1599999964237213134765625f * ((_1421 - (_1422 * _1422)) + 1.0f), 0.1599999964237213134765625f * _1425) + _1441;
                            float3 _1448 = ((_1438 / _1439) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                            float3 _1450 = ((_1441 / _1442) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                            float2 _1452 = _1393 * _34_m13.xy;
                            float _1453 = _1448.x;
                            float _1454 = _1450.x;
                            float2 _1456 = _1452 + float2(_1453, _1454);
                            float _1457 = _1448.y;
                            float2 _1459 = _1452 + float2(_1457, _1454);
                            float _1460 = _1448.z;
                            float2 _1462 = _1452 + float2(_1460, _1454);
                            float _1463 = _1450.y;
                            float2 _1465 = _1452 + float2(_1453, _1463);
                            float2 _1467 = _1452 + float2(_1457, _1463);
                            float2 _1469 = _1452 + float2(_1460, _1463);
                            float _1470 = _1450.z;
                            float2 _1472 = _1452 + float2(_1453, _1470);
                            float2 _1474 = _1452 + float2(_1457, _1470);
                            float2 _1476 = _1452 + float2(_1460, _1470);
                            float _1477 = _1439.x;
                            float _1478 = _1442.x;
                            float _1480 = _1439.y;
                            float _1482 = _1439.z;
                            float _1484 = _1442.y;
                            float _1488 = _1442.z;
                            float _1554 = ((((((((_1477 * _1478) * _37.SampleCmpLevelZero(_16, float3(_1456, _364).xy, _1380)) + ((_1480 * _1478) * _37.SampleCmpLevelZero(_16, float3(_1459, _364).xy, _1380))) + ((_1482 * _1478) * _37.SampleCmpLevelZero(_16, float3(_1462, _364).xy, _1380))) + ((_1477 * _1484) * _37.SampleCmpLevelZero(_16, float3(_1465, _364).xy, _1380))) + ((_1480 * _1484) * _37.SampleCmpLevelZero(_16, float3(_1467, _364).xy, _1380))) + ((_1482 * _1484) * _37.SampleCmpLevelZero(_16, float3(_1469, _364).xy, _1380))) + ((_1477 * _1488) * _37.SampleCmpLevelZero(_16, float3(_1472, _364).xy, _1380))) + ((_1480 * _1488) * _37.SampleCmpLevelZero(_16, float3(_1474, _364).xy, _1380));
                            float2 _1567 = min(_1367, 1.0f.xx - _1367);
                            _1580 = lerp(1.0f, (any(bool3(_1376.x || _1377.x, _1376.y || _1377.y, _1376.z || _1377.z)) || ((asuint(_1380) & 2147483647u) > 2139095040u)) ? 1.0f : (_1554 + ((_1482 * _1488) * _37.SampleCmpLevelZero(_16, float3(_1476, _364).xy, _1380))), _1126 ? min(_34_m11[_1326].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_1326].z - _1363) * 0.25f, min(_1567.x, _1567.y)))) : _34_m11[_1326].w);
                            break;
                        } while(false);
                        _1582 = (_1326 >= 0) ? _1580 : 1.0f;
                    }
                    else
                    {
                        _1582 = 1.0f;
                    }
                    _1583 = _1582;
                    break;
                } while(false);
                _2273 = _939 * _1583;
                _2274 = 0.0f.xxx;
            }
            _961 = _2273;
            _964 = _963 + _2274;
        }
        _936 = _935 + _963;
    }
    float3 _2278 = _904.xyz + (_935 * _938);
    float3 _2280 = _458.xxx;
    float3 _2315;
    float3 _2316;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2291 = min(_22.SampleBias(_12, _4, _9_m16).x, _458);
        _2315 = clamp((pow(abs(_691 + _2291), exp2(((-16.0f) * _687) - 1.0f)) - 1.0f) + _2291, 0.0f, 1.0f).xxx;
        _2316 = max(_2291.xxx, ((((((_676 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2291) + ((_676 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2291) + ((_676 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2291);
    }
    else
    {
        _2315 = _2280;
        _2316 = _2280;
    }
    _2278 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2315 : 1.0f.xxx;
    float3 _2326 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2335 = _488 - (_9_m105.xyz + (_2326 * (-_9_m107.w)));
    float _2349 = max(clamp((max(abs(_2335.x), abs(_2335.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2335.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2651;
    float4 _2652;
    float4 _2653;
    float _2654;
    float _2655;
    if ((_9_m105.w != 0.0f) && (_2349 < 1.0f))
    {
        float3 _2362 = _488 - (_9_m105.xyz + (_2326 * (-_9_m107.y)));
        float _2376 = max(clamp((max(abs(_2362.x), abs(_2362.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2362.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2452;
        float4 _2453;
        float4 _2454;
        float4 _2455;
        if (_2376 < 1.0f)
        {
            float3 _2385 = ((_488 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2387 = _2385 - floor(_2385);
            float4 _2391 = _58.SampleLevel(_14, _2387, 0.0f);
            float _2392 = 1.0f - _2376;
            float _2396 = _9_m106.y * 0.5f;
            float _2401 = _2387.x;
            float _2402 = clamp(_2387.y, _2396, 1.0f - _2396) * 0.3333333432674407958984375f;
            float _2403 = _2387.z;
            float4 _2406 = _59.SampleLevel(_13, float3(_2401, _2402, _2403), 0.0f);
            float _2422 = _2391.x;
            float _2432 = _2391.y;
            float _2442 = _2391.z;
            _2452 = _2349 + (_2406.w * _2392);
            _2453 = float4(((_59.SampleLevel(_13, float3(_2401, _2402 + 0.666666686534881591796875f, _2403), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2442, _2442) * _2392;
            _2454 = float4(((_59.SampleLevel(_13, float3(_2401, _2402 + 0.3333333432674407958984375f, _2403), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2432, _2432) * _2392;
            _2455 = float4(((_2406.xyz * 4.0f) - 2.0f.xxx) * _2422, _2422) * _2392;
        }
        else
        {
            _2452 = _2349;
            _2453 = 0.0f.xxxx;
            _2454 = 0.0f.xxxx;
            _2455 = 0.0f.xxxx;
        }
        float3 _2461 = _488 - (_9_m105.xyz + (_2326 * (-_9_m107.z)));
        float _2475 = max(clamp((max(abs(_2461.x), abs(_2461.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2461.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2555;
        float4 _2556;
        float4 _2557;
        float4 _2558;
        if (_2475 < 1.0f)
        {
            float3 _2484 = ((_488 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2486 = _2484 - floor(_2484);
            float4 _2490 = _60.SampleLevel(_14, _2486, 0.0f);
            float _2492 = _2376 * (1.0f - _2475);
            float _2496 = _9_m106.y * 0.5f;
            float _2501 = _2486.x;
            float _2502 = clamp(_2486.y, _2496, 1.0f - _2496) * 0.3333333432674407958984375f;
            float _2503 = _2486.z;
            float4 _2506 = _61.SampleLevel(_13, float3(_2501, _2502, _2503), 0.0f);
            float _2522 = _2490.x;
            float _2533 = _2490.y;
            float _2544 = _2490.z;
            _2555 = _2452 + (_2506.w * _2492);
            _2556 = _2453 + (float4(((_61.SampleLevel(_13, float3(_2501, _2502 + 0.666666686534881591796875f, _2503), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2544, _2544) * _2492);
            _2557 = _2454 + (float4(((_61.SampleLevel(_13, float3(_2501, _2502 + 0.3333333432674407958984375f, _2503), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2533, _2533) * _2492);
            _2558 = _2455 + (float4(((_2506.xyz * 4.0f) - 2.0f.xxx) * _2522, _2522) * _2492);
        }
        else
        {
            _2555 = _2452;
            _2556 = _2453;
            _2557 = _2454;
            _2558 = _2455;
        }
        float4 _2641;
        float4 _2642;
        float4 _2643;
        float _2644;
        if (_2475 > 0.0f)
        {
            float3 _2567 = ((_488 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2570 = _9_m106.xyz * 0.5f;
            float3 _2572 = clamp(_2567 - floor(_2567), _2570, 1.0f.xxx - _2570);
            float4 _2576 = _62.SampleLevel(_14, _2572, 0.0f);
            float _2578 = _2475 * (1.0f - _2349);
            float _2582 = _9_m106.y * 0.5f;
            float _2587 = _2572.x;
            float _2588 = clamp(_2572.y, _2582, 1.0f - _2582) * 0.3333333432674407958984375f;
            float _2589 = _2572.z;
            float4 _2592 = _63.SampleLevel(_13, float3(_2587, _2588, _2589), 0.0f);
            float _2608 = _2576.x;
            float _2619 = _2576.y;
            float _2630 = _2576.z;
            _2641 = _2556 + (float4(((_63.SampleLevel(_13, float3(_2587, _2588 + 0.666666686534881591796875f, _2589), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2630, _2630) * _2578);
            _2642 = _2557 + (float4(((_63.SampleLevel(_13, float3(_2587, _2588 + 0.3333333432674407958984375f, _2589), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2619, _2619) * _2578);
            _2643 = _2558 + (float4(((_2592.xyz * 4.0f) - 2.0f.xxx) * _2608, _2608) * _2578);
            _2644 = _2555 + (_2592.w * _2578);
        }
        else
        {
            _2641 = _2556;
            _2642 = _2557;
            _2643 = _2558;
            _2644 = _2555;
        }
        float _2647 = clamp((_2644 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _2651 = _2641;
        _2652 = _2642;
        _2653 = _2643;
        _2654 = _2647 - _2349;
        _2655 = (_2647 + _2349) * 0.5f;
    }
    else
    {
        _2651 = 0.0f.xxxx;
        _2652 = 0.0f.xxxx;
        _2653 = 0.0f.xxxx;
        _2654 = 0.0f;
        _2655 = 1.0f;
    }
    float4 _2675 = _2653 + float4(_9_m108.x * _2655, (_9_m108.y * _2655) + ((_9_m108.w * _2654) * 0.5f), _9_m108.z * _2655, (_9_m108.w * _2655) + ((_9_m108.y * _2654) * 0.375f));
    float4 _2695 = _2652 + float4(_9_m109.x * _2655, (_9_m109.y * _2655) + ((_9_m109.w * _2654) * 0.5f), _9_m109.z * _2655, (_9_m109.w * _2655) + ((_9_m109.y * _2654) * 0.375f));
    float4 _2715 = _2651 + float4(_9_m110.x * _2655, (_9_m110.y * _2655) + ((_9_m110.w * _2654) * 0.5f), _9_m110.z * _2655, (_9_m110.w * _2655) + ((_9_m110.y * _2654) * 0.375f));
    float4 _2873;
    float4 _2874;
    float4 _2875;
    [branch]
    if (all(bool2(_476.x >= 0.0f.xx.x, _476.y >= 0.0f.xx.y)))
    {
        float4 _2723 = _57.SampleLevel(_13, _476, 0.0f);
        float4 _2724 = abs(_2723);
        float4 _2870;
        float4 _2871;
        float4 _2872;
        [branch]
        if (any(bool4(_2724.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2724.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2724.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2724.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _2730 = length(_2723.yzw);
            uint _2732;
            float _2735;
            _2732 = 0u;
            _2735 = 1.0f;
            for (float _2737 = _2730; _2737 > 4.599999904632568359375f; )
            {
                _2732++;
                _2735 *= 0.5f;
                _2737 *= 0.5f;
                continue;
            }
            float4 _2741 = _2723 * _2735;
            float4 _2746 = float4(0.0f, _2741.yzw);
            float2 _2768 = (_56.SampleLevel(_13, float2(((((length(_2746) * _55_m3.x) + _55_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _55_m2.xy) + _55_m2.zw;
            float4 _2782;
            _2782 = float4(_2768.x * 3.5449078083038330078125f, _2746.yzw * _2768.y) * exp(_2741.x * 0.282094776630401611328125f);
            for (uint _2785 = 0u; _2785 < _2732; )
            {
                _2782 = mul(float4x4(_2782, float4(_2782.yx, 0.0f, 0.0f), float4(_2782.z, 0.0f, _2782.x, 0.0f), float4(_2782.w, 0.0f, 0.0f, _2782.x)) * 0.282094776630401611328125f, _2782);
                _2785++;
                continue;
            }
            float4x4 _2806 = float4x4(_2782, float4(_2782.yx, 0.0f, 0.0f), float4(_2782.z, 0.0f, _2782.x, 0.0f), float4(_2782.w, 0.0f, 0.0f, _2782.x)) * 0.282094776630401611328125f;
            float4 _2816 = mul(_2806, float4(_2675.w * 1.1283791065216064453125f, _2675.y * (-0.977204978466033935546875f), _2675.z * 0.977204978466033935546875f, _2675.x * (-0.977204978466033935546875f)));
            float4 _2836 = mul(_2806, float4(_2695.w * 1.1283791065216064453125f, _2695.y * (-0.977204978466033935546875f), _2695.z * 0.977204978466033935546875f, _2695.x * (-0.977204978466033935546875f)));
            float4 _2856 = mul(_2806, float4(_2715.w * 1.1283791065216064453125f, _2715.y * (-0.977204978466033935546875f), _2715.z * 0.977204978466033935546875f, _2715.x * (-0.977204978466033935546875f)));
            _2870 = float4(_2816.x * 0.886226952075958251953125f, _2816.w * (-1.02332675457000732421875f), _2816.y * (-1.02332675457000732421875f), _2816.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2871 = float4(_2836.x * 0.886226952075958251953125f, _2836.w * (-1.02332675457000732421875f), _2836.y * (-1.02332675457000732421875f), _2836.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2872 = float4(_2856.x * 0.886226952075958251953125f, _2856.w * (-1.02332675457000732421875f), _2856.y * (-1.02332675457000732421875f), _2856.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _2870 = _2675;
            _2871 = _2695;
            _2872 = _2715;
        }
        _2873 = _2870;
        _2874 = _2871;
        _2875 = _2872;
    }
    else
    {
        _2873 = _2675;
        _2874 = _2695;
        _2875 = _2715;
    }
    float4 _2878 = float4(_455, 1.0f);
    float3 _2883 = max(float3(dot(_2873, _2878), dot(_2874, _2878), dot(_2875, _2878)), 0.0f.xxx);
    float4 _2888 = float4(-_455, 1.0f);
    float3 _2905 = reflect(_516, _455);
    float _2913 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_687, 0.001000000047497451305389404296875f))));
    float2 _2917 = floor(_463 * _28_m0.w);
    float _2934 = floor(_495 - _28_m2.y);
    float _2938 = clamp(_2934, 0.0f, _28_m1.x - 1.0f);
    uint _2948 = (_2934 <= _2938) ? (_25.Load(uint(_9_m21.z + int(_2917.x + (_2917.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_2938)) * 4 + 0)) : 0u;
    float _2951 = dot(float4(_2883, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2953;
    float _2956;
    uint _2958;
    _2953 = 0.0f.xxx;
    _2956 = 1.0f;
    _2958 = _2948;
    uint _2959;
    float3 _2954;
    float _2957;
    bool _2961;
    [loop]
    for (;;)
    {
        _2961 = _2956 > 0.00999999977648258209228515625f;
        if ((_2958 != 0u) && _2961)
        {
            uint _2965 = firstbitlow(_2958);
            _2959 = _2958 ^ (1u << (_2965 & 31u));
            float3 _2985 = float3(dot(_28_m4[_2965]._m2, _492), dot(_28_m4[_2965]._m3, _492), dot(_28_m4[_2965]._m4, _492));
            float3 _2986 = abs(_2985);
            if (all(bool3(_2986.x <= _28_m4[_2965]._m1.xyz.x, _2986.y <= _28_m4[_2965]._m1.xyz.y, _2986.z <= _28_m4[_2965]._m1.xyz.z)))
            {
                float3 _2995 = _28_m4[_2965]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2997 = _2986 * 0.100000001490116119384765625f;
                float3 _2998 = _2997 * _2997;
                float3 _3001 = (_28_m4[_2965]._m1.xyz - _2986) * _28_m4[_2965]._m5.xyz;
                float3 _3049;
                [branch]
                if (_28_m4[_2965]._m6.x == 1.0f)
                {
                    float3 _3034 = float3(dot(_28_m4[_2965]._m2.xyz, _2905), dot(_28_m4[_2965]._m3.xyz, _2905), dot(_28_m4[_2965]._m4.xyz, _2905));
                    float3 _3036 = (_28_m4[_2965]._m1.xyz - _2985) / _3034;
                    float3 _3039 = ((-_28_m4[_2965]._m1.xyz) - _2985) / _3034;
                    bool3 _3040 = bool3(_3034.x > 0.0f.xxx.x, _3034.y > 0.0f.xxx.y, _3034.z > 0.0f.xxx.z);
                    float3 _3041 = float3(_3040.x ? _3036.x : _3039.x, _3040.y ? _3036.y : _3039.y, _3040.z ? _3036.z : _3039.z);
                    _3049 = _2985 + (_3034 * min(min(_3041.x, _3041.y), _3041.z));
                }
                else
                {
                    _3049 = _2905;
                }
                float3 _3050 = normalize(_3049);
                float3 _3053 = float3(int3(sign(_3050)));
                float3 _3056 = _3050 / dot(_3050, _3053).xxx;
                float3 _3070;
                if (_3056.z < 0.0f)
                {
                    float3 _3061 = abs(_3056);
                    float2 _3068 = _3053.xy * float2(1.0f - _3061.y, 1.0f - _3061.x);
                    _3070 = float3(_3068.x, _3068.y, _3056.z);
                }
                else
                {
                    _3070 = _3056;
                }
                float _3091 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_2965]._m0, _2878)));
                float _3104 = clamp((min(_3001.x, min(_3001.y, _3001.z)) * _28_m4[_2965]._m6.y) + ((((((_2995 * _2995).x - ((_2998.x + _2998.y) + _2998.z)) * _28_m4[_2965]._m5.x) * _28_m4[_2965]._m5.x) * (1.0f - _28_m4[_2965]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_2965]._m6.w;
                _2954 = _2953 + ((((_23.SampleLevel(_15, float3((((_3070.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_2965]._m1.w), _2913).xyz * _28_m4[_2965]._m5.w) * ((((((clamp(abs(_2951 / _3091), 0.0f, 1.0f) * 2.0f) + _2951) / (2.0f + _3091)) - 1.0f) * _9_m23.w) + 1.0f)) * _3104) * _2956);
                _2957 = _2956 * (1.0f - _3104);
            }
            else
            {
                _2954 = _2953;
                _2957 = _2956;
            }
            _2953 = _2954;
            _2956 = _2957;
            _2958 = _2959;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _3169;
    if (_2961)
    {
        float3 _3112 = normalize(_2905);
        float3 _3115 = float3(int3(sign(_3112)));
        float3 _3118 = _3112 / dot(_3112, _3115).xxx;
        float3 _3132;
        if (_3118.z < 0.0f)
        {
            float3 _3123 = abs(_3118);
            float2 _3130 = _3115.xy * float2(1.0f - _3123.y, 1.0f - _3123.x);
            _3132 = float3(_3130.x, _3130.y, _3118.z);
        }
        else
        {
            _3132 = _3118;
        }
        float _3155 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, _2878)));
        _3169 = _2953 + ((_23.SampleLevel(_15, float3((((_3132.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _2913).xyz * ((((((clamp(abs(_2951 / _3155), 0.0f, 1.0f) * 2.0f) + _2951) / (2.0f + _3155)) - 1.0f) * _9_m23.w) + 1.0f)) * _2956);
    }
    else
    {
        _3169 = _2953;
    }
    float3 _3175 = (_3169 * _9_m23.z) * _9_m22.y;
    float3 _3196;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _3190 = _21.SampleBias(_13, _4, _9_m16);
        float _3191 = _3190.x;
        _3196 = (_20.SampleBias(_13, _4, _9_m16).xyz * _3191) + (_3175 * (1.0f - _3191));
    }
    else
    {
        _3196 = _3175;
    }
    float3 _3217 = ((((_2883 * _676) * _9_m22.x) * _2316) + ((_3196 * ((_689 * _704.x) + (clamp(_460 * 4.0f, 0.0f, 1.0f) * _704.y).xxx)) * _2315)) + (((((max(float3(dot(_2873, _2888), dot(_2874, _2888), dot(_2875, _2888)), 0.0f.xxx) * _9_m22.x) * _2316) * (_676 / max(0.00999999977648258209228515625f, max(max(_676.x, _676.y), _676.z)).xxx)) * ((_399 * clamp(dot(_514, _455), 0.0f, 1.0f)) + (float(((_421 & 7u) << 2u) | (uint(_389.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
    float4 _3219 = float4(_2278.x, _2278.y, _2278.z, _904.w) + float4(_3217.x, _3217.y, _3217.z, 0.0f.xxxx.w);
    float3 _3222 = clamp(_3219.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _3237 = _488.y * _9_m46.w;
    float _3242 = max(0.00999999977648258209228515625f, _3237 + _9_m47.w);
    float3 _3256 = exp(_9_m45.xyz * ((-max(0.0f, (_515 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3242)) / _3242) * exp(_3237 + _9_m48.w))));
    float _3259 = dot(_516, _9_m44.xyz);
    float _3265 = _9_m45.w * _9_m45.w;
    float _3269 = (1.0f + _3265) - ((2.0f * _9_m45.w) * _3259);
    float3 _3593;
    float _3594;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3421 = (uint3(int3(_382, _383, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3422 = _3421.y;
        uint _3423 = _3421.z;
        uint _3426 = _3421.x + (_3422 * _3423);
        uint _3428 = _3422 + (_3423 * _3426);
        uint _3430 = _3423 + (_3426 * _3428);
        uint _3432 = _3426 + (_3428 * _3430);
        float _3456 = dot(_516, -_7_m0[2].xyz);
        float3 _3464 = _488 - _7_m11.xyz;
        float _3466 = (_9_m55.w * ((_3456 > 5.9604644775390625e-08f) ? (1.0f / _3456) : 0.0f)) * (1.0f / _515);
        float _3467 = _3464.y;
        float _3468 = _3466 * _3467;
        float _3470 = _7_m11.y + _3468;
        float _3471 = _3467 - _3468;
        float _3473 = (1.0f - _3466) * _515;
        float _3487 = max(-127.0f, _9_m49.z * _3471);
        float _3511 = max(-127.0f, _9_m52.x * _3471);
        float _3522 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3470 - _9_m49.x)))) * ((abs(_3487) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3487)) / _3487) : (0.693147182464599609375f - (0.2402265071868896484375f * _3487)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3470 - _9_m52.z)))) * ((abs(_3511) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3511)) / _3511) : (0.693147182464599609375f - (0.2402265071868896484375f * _3511))));
        float _3544 = clamp((_515 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3547 = clamp((max(clamp(exp2(-(_3522 * _3473)), 0.0f, 1.0f), _9_m51.w) + clamp((_515 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3544, 0.0f, 1.0f);
        float4 _3587 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _53.SampleLevel(_13, float3((_463 + ((((float3(uint3(_3432, _3428 + (_3430 * _3432), _366) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_495 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_495 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3589 = _3587.w;
        _3593 = _3587.xyz + (((_9_m51.xyz * (1.0f - _3547)) + (((_9_m54.xyz * pow(clamp(dot(_514, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3522 * max(_3473 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3544))) * _3589);
        _3594 = _3589 * _3547;
    }
    else
    {
        float3 _3297 = _488 - _7_m11.xyz;
        float _3299 = _3297.y;
        float _3313 = max(-127.0f, _9_m49.z * _3299);
        float _3337 = max(-127.0f, _9_m52.x * _3299);
        float _3348 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3313) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3313)) / _3313) : (0.693147182464599609375f - (0.2402265071868896484375f * _3313)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3337) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3337)) / _3337) : (0.693147182464599609375f - (0.2402265071868896484375f * _3337))));
        float _3370 = clamp((_515 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3373 = clamp((max(clamp(exp2(-(_3348 * _515)), 0.0f, 1.0f), _9_m51.w) + clamp((_515 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3370, 0.0f, 1.0f);
        _3593 = (_9_m51.xyz * (1.0f - _3373)) + (((_9_m54.xyz * pow(clamp(dot(_514, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3348 * max(_515 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3370));
        _3594 = _3373;
    }
    float3 _3597 = _3256 * _3594;
    float3 _3599 = (_3222 * _3597) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3259 * _3259)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3265) / max((12.56637096405029296875f * _3269) * sqrt(_3269), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3256)) * _3594) + _3593);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3599 = (_3599 * 0.65f) + (_3222 * 0.35f);

    }
    float _3600 = dot(_3597, 0.3333333432674407958984375f.xxx);
    float4 _3601 = float4(_3599.x, _3599.y, _3599.z, _3219.w);
    _3601.w = _3600;
    float _3628 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _488) * _9_m61.z), 0.0f, 1.0f);
    float3 _3636 = lerp(_3222, _3601.xyz, min((1.0f - _3628) + ((_68.SampleLevel(_14, (_488 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _3628), 1.0f + _3600).xxx);
    _5 = float4(_3636.x, _3636.y, _3636.z, _3601.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    _4 = stage_input._4;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._5 = _5;
    return stage_output;
}
