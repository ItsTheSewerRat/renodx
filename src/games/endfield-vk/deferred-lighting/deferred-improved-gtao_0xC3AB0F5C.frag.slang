// DX11 0x9EBC19FB -> Vulkan 0xC3AB0F5C
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

static float _420 = 0.0f;
static float _424 = 0.0f;
static uint _425 = 0u;

static const int2 _376[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _377[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

[[vk::binding(36, 3)]]
cbuffer _6_7 : register(b36)
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

[[vk::binding(41, 3)]]
cbuffer _8_9 : register(b41)
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

[[vk::binding(45, 3)]] ByteAddressBuffer _25 : register(t45);
[[vk::binding(42, 3)]]
cbuffer _26_28 : register(b42)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(38, 3)]]
cbuffer _29_30 : register(b38)
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

[[vk::binding(37, 3)]]
cbuffer _31_32 : register(b37)
{
    float4 _32_m0 : packoffset(c0);
    float4 _32_m1 : packoffset(c1);
    float4 _32_m2 : packoffset(c2);
    float4 _32_m3 : packoffset(c3);
    float4 _32_m4 : packoffset(c4);
    uint4 _32_m5 : packoffset(c5);
    float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(40, 3)]]
cbuffer _33_34 : register(b40)
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

[[vk::binding(44, 3)]]
cbuffer _35_36 : register(b44)
{
    column_major float4x4 _36_m0[32] : packoffset(c0);
    float4 _36_m1[32] : packoffset(c128);
    uint4 _36_m2[56] : packoffset(c160);
    int4 _36_m3 : packoffset(c216);
    float4 _36_m4 : packoffset(c217);
    float4 _36_m5[4] : packoffset(c218);
    float4 _36_m6 : packoffset(c222);
};

[[vk::binding(35, 3)]]
cbuffer _42_43 : register(b35)
{
    column_major float4x4 _43_m0 : packoffset(c0);
    float4 _43_m1 : packoffset(c4);
};

[[vk::binding(43, 3)]]
cbuffer _51_52 : register(b43)
{
    float4 _52_m0[32] : packoffset(c0);
    column_major float4x4 _52_m1[32] : packoffset(c32);
};

[[vk::binding(39, 3)]]
cbuffer _56_57 : register(b39)
{
    float4 _57_m0 : packoffset(c0);
    float4 _57_m1 : packoffset(c1);
    float4 _57_m2 : packoffset(c2);
    float4 _57_m3 : packoffset(c3);
    float4 _57_m4 : packoffset(c4);
    uint4 _57_m5 : packoffset(c5);
    float4 _57_m6 : packoffset(c6);
    float4 _57_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3);
[[vk::binding(32, 3)]] Texture2D<float4> _19 : register(t32);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11);
[[vk::binding(12, 3)]] Texture2D<float4> _21 : register(t12);
[[vk::binding(26, 3)]] Texture2D<float4> _22 : register(t26);
[[vk::binding(14, 3)]] Texture2DArray<float4> _23 : register(t14);
[[vk::binding(16, 3)]] Texture2D<float4> _37 : register(t16);
[[vk::binding(10, 3)]] Texture2D<float4> _38 : register(t10);
[[vk::binding(27, 3)]] Texture2D<float4> _39 : register(t27);
[[vk::binding(33, 3)]] Texture2D<float4> _40 : register(t33);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8);
[[vk::binding(15, 3)]] Texture3D<float4> _45 : register(t15);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9);
[[vk::binding(13, 3)]] Texture2D<float4> _47 : register(t13);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17);
[[vk::binding(31, 3)]] Texture2D<float4> _49 : register(t31);
[[vk::binding(18, 3)]] Texture2D<float4> _50 : register(t18);
[[vk::binding(25, 3)]] Texture3D<float4> _55 : register(t25);
[[vk::binding(34, 3)]] Texture2D<float4> _58 : register(t34);
[[vk::binding(7, 3)]] Texture2D<float4> _59 : register(t7);
[[vk::binding(24, 3)]] Texture3D<float4> _60 : register(t24);
[[vk::binding(21, 3)]] Texture3D<float4> _61 : register(t21);
[[vk::binding(23, 3)]] Texture3D<float4> _62 : register(t23);
[[vk::binding(20, 3)]] Texture3D<float4> _63 : register(t20);
[[vk::binding(22, 3)]] Texture3D<float4> _64 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _65 : register(t19);
[[vk::binding(6, 3)]] Texture2D<float4> _66 : register(t6);
[[vk::binding(30, 3)]] Texture2D<float4> _67 : register(t30);
[[vk::binding(29, 3)]] Texture2D<float4> _68 : register(t29);
[[vk::binding(28, 3)]] Texture2D<float4> _69 : register(t28);

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
    uint2 _438 = uint2(gl_FragCoord.xy);
    int _441 = int(_438.x);
    int _442 = int(_438.y);
    int2 _444 = int3(_441, _442, 0).xy;
    float4 _446 = _67.Load(int3(_444, 0));
    float4 _448 = _68.Load(int3(_444, 0));
    float _451 = _446.x;
    float _452 = _446.y;
    float _453 = _446.z;
    float2 _456 = (_448.xy * 2.0f) - 1.0f.xx;
    float _460 = 1.0f - dot(1.0f.xx, abs(_456));
    float3 _462 = float3(_456.x, _460, _456.y);
    float3 _474;
    if (_460 < 0.0f)
    {
        float2 _469 = _462.xz;
        bool2 _470 = bool2(_469.x >= 0.0f.xx.x, _469.y >= 0.0f.xx.y);
        float2 _472 = (1.0f.xx - abs(_462.zx)) * float2(_470.x ? 1.0f.xx.x : (-1.0f).xx.x, _470.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _474 = float3(_472.x, _462.y, _472.y);
    }
    else
    {
        _474 = _462;
    }
    float3 _475 = normalize(_474);
    float _476 = _448.z;
    float2 _480 = float2(_438);
    float2 _485 = (_480 + 0.5f.xx) * _9_m0.zw;
    float2 _493 = gl_FragCoord.xy * _9_m0.zw;
    float2 _495 = (_493 * 2.0f) - 1.0f.xx;
    float4 _498 = float4(_495, _19.SampleLevel(_12, _485, 0.0f).x, 1.0f);
    _498.y = -_495.y;
    float4 _501 = mul(_7_m6, _498);
    float3 _505 = _501.xyz / _501.w.xxx;
    float _506 = _505.x;
    float _507 = _505.y;
    float4 _509 = float4(_506, _507, _505.z, 1.0f);
    float _512 = abs(mul(_7_m0, _509).z);
    float3 _527;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _527 = _7_m11.xyz - _505;
            break;
        }
        else
        {
            _527 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _528 = dot(_527, _527);
    float _530 = rsqrt(max(_528, 9.9999999392252902907785028219223e-09f));
    float3 _531 = _527 * _530;
    float _532 = _528 * _530;
    float3 _533 = -_531;
    bool _536 = _9_m129.x > 0.00048828125f;
    float2 _546;
    if (_536)
    {
        _546 = _66.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _546 = 1.0f.xx;
    }
    float _547 = dot(_475, float3(0.0f, -1.0f, 0.0f));
    float3 _603;
    float3 _604;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _574 = abs(_475.x);
        float _576 = abs(_475.y);
        float _578 = abs(_475.z);
        float3 _583 = float3(_574, _576, _578) * (1.0f / ((_574 + _576) + _578));
        float4 _596 = _45.SampleLevel(_14, _505 * _9_m124.x, 0.0f);
        float _597 = _596.x;
        _603 = float3(_597, _424, _424);
        _604 = ((((float3(0.0f, 0.0f, 1.0f) * _583.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _583.y)) + (float3(1.0f, 0.0f, 0.0f) * _583.z)) * ((_597 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_547)));
    }
    else
    {
        _603 = 0.0f.xxx;
        _604 = 0.0f.xxx;
    }
    float4 _618 = mul(_43_m0, float4((_505 + ((((_475 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_547, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _547), 0.100000001490116119384765625f, 1.0f)))) + _604, 1.0f));
    float2 _621 = (_618.xy * 0.5f) + 0.5f.xx;
    float4 _622 = float4(_621.x, _621.y, _618.z, _618.w);
    _622.y = 1.0f - _621.y;
    float _643;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _643 = _41.SampleCmpLevelZero(_17, (_622.xy + _43_m1.xy).xy, max(_618.z, 0.00048828125f));
    }
    else
    {
        _643 = 1.0f;
    }
    float _646 = _475.y;
    float _647 = clamp(_646, 0.0f, 1.0f);
    float _648 = lerp(_9_m125.w, 1.0f, _647);
    float2 _652 = _505.xz;
    float2 _657 = abs(_652 - _7_m11.xz);
    float _660 = max(_657.x, _657.y);
    float _670 = lerp(_648 * _643, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _660));
    float3 _677 = ddy_fine(_505);
    float3 _678 = ddx_fine(_505);
    float3 _679 = cross(_677, _678);
    float _685 = clamp((_679 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_679, _679)))).y, 0.0f, 1.0f);
    float _688 = _9_m118.z * 0.300000011920928955078125f;
    float _690 = _688 + 0.68599998950958251953125f;
    float _697 = 1.0f - clamp((_512 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _712 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_690, 0.9700000286102294921875f), 0.9900000095367431640625f, _647) + (smoothstep(0.990999996662139892578125f, 1.0f, _685) * step(_452, (_603.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _911;
    float _912;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_688 + 0.686999976634979248046875f, _690, _685) * smoothstep(-0.5f, -0.100000001490116119384765625f, _646)) > 0.00048828125f))
    {
        float3 _721 = abs(_475);
        float3 _722 = _721 * _721;
        float3 _727 = _722 * (1.0f / (_722.x + _722.z));
        float3 _729 = normalize(cross(_475, float3(0.0f, 1.0f, 0.0f)));
        float3 _731 = normalize(cross(_729, _475));
        float3 _747 = floor((_505 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _755 = frac(sin(dot(fmod(_747.xz + _747.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _759 = (step(0.0f.xx, _475.zx) * 2.0f) - 1.0f.xx;
        float3 _762 = _505;
        _762.x = _506 * _759.x;
        _762.z = _505.z * (-_759.y);
        float _774 = _603.x * _755;
        float2 _782 = float2(frac(((-_9_m118.x) * (((1.0f - _755) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_774 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_774 * 6.0f)));
        float _785 = floor(_755 * 5.0f) + 1.0f;
        float2 _789 = frac(float2(_785, 0.100000001490116119384765625f * _785) * _507);
        float2 _801 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _789 - (_782 - 1.0f.xx)), _782 - _789), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _789 - _782), (_782 + 1.0f.xx) - _789), step(_782, _789));
        float _802 = _801.x;
        float _804 = smoothstep(0.4000000059604644775390625f, 1.0f, _802 * _802);
        float _805 = _801.y;
        float _810 = (_805 * 2.0f) - 1.0f;
        float2 _819 = float2((_603.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _804) * _810), (1.0f.xx * _603.x).y * (_603.x + (((_804 * 0.00999999977648258209228515625f) * _804) * _810)));
        float4 _843 = (_46.SampleBias(_14, (_762.zy * _9_m119.xy) + _819, _9_m16) * _727.x) + (_46.SampleBias(_14, (_762.xy * _9_m119.xy) + _819, _9_m16) * _727.z);
        float2 _846 = (_843.xy * 2.0f) - 1.0f.xx;
        float _852 = _843.w;
        float _862 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_805 + (((_804 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_852 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_810 * _852) * 0.5f) + _804, 0.0f, 1.0f)));
        float _868 = _843.z;
        float _878 = (((lerp(0.100000001490116119384765625f, (_862 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _862, 0.0f, 1.0f), 5.0f), _868)) * _868) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_670 * step(0.04500000178813934326171875f, _453))) * _697);
        float2 _881 = _846.xy;
        float _886 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_881, _881), 0.0f, 1.0f)));
        float3 _887 = float3(_846, _886);
        float2 _891 = _887.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _878) * _9_m118.y);
        float3 _892 = float3(_891.x, _891.y, _887.z);
        _892.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _886, _878);
        _911 = lerp(_475, mul(float4x4(float4(_729.x, _731.x, _475.x, 0.0f), float4(_729.y, _731.y, _646, 0.0f), float4(_729.z, _731.z, _475.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_892 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_892, _892))), 0.0f)).xyz, _878.xxx);
        _912 = (_878 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _911 = _475;
        _912 = 0.0f;
    }
    float3 _1060;
    float _1061;
    [branch]
    if (_712 > 0.00048828125f)
    {
        float2 _919 = (-_652) * _9_m123.xy;
        float2 _921 = frac(_919);
        float2 _968;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _931 = frac(sin(dot(fmod(floor(_919), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _944 = floor(frac(_9_m122.x + _931) * (_9_m123.z * _9_m123.z));
            float _946 = 1.0f / _9_m123.z;
            _968 = ((_47.SampleBias(_13, frac((lerp(_921, _921.yx, step(_931, 0.5f).xx) * _946) + float2(_946 * fmod(_944, _9_m123.z), _946 * ((_9_m123.z - 1.0f) - floor(_944 * _946)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _968 = 0.0f.xx;
        }
        float2 _1009;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _994 = _47.SampleBias(_14, (_919 + float2(0.0f, _9_m122.z)) + ((float2(_603.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _998 = _47.SampleBias(_14, (_919 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _603.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _1004 = (((float4(_994.z, _994.w, _998.z, _998.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _603.x;
            _1009 = _968 + (_1004.xy + _1004.zw);
        }
        else
        {
            _1009 = _968;
        }
        float _1017 = (((_603.x * 0.699999988079071044921875f) + (_476 * 0.300000011920928955078125f)) * clamp((_476 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _452;
        float _1021 = smoothstep(min(_1017, 0.9900000095367431640625f), clamp(_1017 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _1032 = _9_m117.x * _712;
        float3 _1042 = float3(_1009, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1009, _1009), 0.0f, 1.0f))));
        float3 _1048 = (_1042 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1042, _1042)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _1060 = lerp(_475, _1048, (((_1032 * _1021) * _670) * _697).xxx);
        _1061 = max((smoothstep(0.0f, _452 * 0.20000000298023223876953125f, (_1032 * clamp(lerp((_9_m123.w * (1.0f - _603.x)) * 0.5f, 1.0f, _1021) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1048.y) * _670) * _697, 0.0f);
    }
    else
    {
        _1060 = _911;
        _1061 = 0.0f;
    }
    float _1064 = min(_546.x, _546.y);
    float2 _1066 = _546 * (1.0f - lerp(lerp(_9_m125.z * _648, 1.0f, _670), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _660)));
    float _1067 = _1066.x;
    float _1070 = clamp((_453 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _1071 = 1.0f - _476;
    float _1087 = lerp(clamp((clamp((_1071 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _912)) + ((_1061 * 0.100000001490116119384765625f) * _476), 0.0f, 1.0f), 1.0f, _451);
    float _1089 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _547);
    float _1098 = lerp(1.0f, 0.25f, ((_9_m117.x * _1087) * (1.0f - _451)) * _1089);
    float _1114 = (1.0f - lerp(_1071, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1087) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1071)), 0.0f, 1.0f), _1071, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1089) * (1.0f - _1067))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1061, smoothstep(0.0f, 0.0500000007450580596923828125f, _912)));
    float _1119;
    float _1120;
    if (_536)
    {
        _1119 = lerp(1.0f, _546.y, _1070);
        _1120 = lerp(1.0f, 0.0f, _1070);
    }
    else
    {
        _1119 = 1.0f;
        _1120 = 1.0f;
    }
    float _1125 = lerp(lerp(min(_1119, _1114), _1114, _1064), _476, _1067);
    float3 _1127 = _69.Load(int3(_444, 0)).xyz * lerp(lerp(min(_1120, _1098), _1098, _1064), 1.0f, _1067);
    float3 _1128 = _1127 * _451;
    float3 _1129 = _1127 - _1128;
    float3 _1133 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _451)).xxx + _1128;
    float _1134 = dot(_1060, _531);
    float _1135 = max(0.0f, _1134);
    float _1136 = _1125 * _1125;
    float _1137 = _1135 * _1135;
    float _1138 = _1137 * _1135;
    float2 _1139 = float2(1.0f, _1135);
    float2 _1142 = float2(1.0f, _1136);
    float _1143 = _1136 * _1136;
    float3 _1145 = float3(1.0f, _1136, _1143 * _1136);
    float _1150 = dot(mul(_1139, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1142) / dot(mul(float3(1.0f, _1137, _1138), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1145);
    float _1155 = dot(mul(_1139, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1142) / dot(mul(float3(1.0f, _1135, _1138), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1145);
    float3 _1158 = (_1133 * _1150) + _1155.xxx;
    float _1159 = _1150 + _1155;
    float4 _1172 = _38.Load(int3(_444, 0));
    float _1173 = _1172.x;
    float4 _1311;
    if (_1173 > 0.001000000047497451305389404296875f)
    {
        float3 _1183 = reflect(_533, _1060);
        float3 _1184 = -_32_m0.xyz;
        float _1189 = dot(_1184, _1183);
        float3 _1191 = _1183 - (_1184 * _1189);
        bool3 _1193 = (_1189 < _32_m4.z).xxx;
        float3 _1201 = normalize((_1184 * _32_m4.z) + ((_1191 * rsqrt(max(6.103515625e-05f, dot(_1191, _1191)))) * _32_m4.y));
        float3 _1202 = float3(_1193.x ? _1201.x : _1183.x, _1193.y ? _1201.y : _1183.y, _1193.z ? _1201.z : _1183.z);
        float3 _1206 = _1202 + _531;
        float3 _1210 = _1206 * rsqrt(max(6.103515625e-05f, dot(_1206, _1206)));
        float _1213 = clamp(dot(_1202, _1060), 0.0f, 1.0f);
        float _1215 = clamp(dot(_1060, _1210), 0.0f, 1.0f);
        float _1218 = clamp(_1134, 0.0f, 1.0f);
        float _1239 = (((_1215 * _1143) - _1215) * _1215) + 1.0f;
        float _1242 = 1.0f - clamp(dot(_531, _1210), 0.0f, 1.0f);
        float _1243 = _1242 * _1242;
        float _1245 = (_1242 * _1243) * _1243;
        float _1269 = 1.0f - _1125;
        float _1276 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1269 * (1.04997003078460693359375f + (_1269 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1269))))));
        float _1277 = 1.0f - _1276;
        float3 _1280 = _1133 + ((1.0f.xxx - _1133) * 0.0476190485060214996337890625f);
        float3 _1296 = ((clamp((min(((_1133 * (1.0f - _1245)) + _1245.xxx) * ((_1143 / (_1239 * _1239)) * (0.5f / (((_1213 * sqrt(((((-_1218) * _1143) + _1218) * _1218) + _1143)) + (_1218 * sqrt(((((-_1213) * _1143) + _1213) * _1213) + _1143))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1280 * (((_48.SampleLevel(_13, (float2(_1218, _1125) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1213, _1125) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1276) / _1277)) * _1280) / (1.0f.xxx - (_1280 * _1277)))) * _32_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1213) + ((_1129 * 1.0f) * clamp(dot(_1202, _475), 0.0f, 1.0f))) * _32_m1.xyz;
        float3 _1309 = lerp(_1296, _1296 * _40.SampleBias(_13, float2(_1173, 0.5f), _9_m16).xyz, (1.0f - _1173).xxx) * min(_49.SampleLevel(_13, _493, 0.0f).x, 1.0f);
        _1311 = float4(_1309.x, _1309.y, _1309.z, 0.0f.xxxx.w);
    }
    else
    {
        _1311 = 0.0f.xxxx;
    }
    float2 _1313 = floor(_480 * 0.03125f);
    int _1321 = int((_1313.x + (_1313.y * _30_m5)) * 8.0f);
    float _1328 = floor(_512 - (_9_m3.y * _30_m11));
    float _1332 = clamp(_1328, 0.0f, _30_m7 - 1.0f);
    int _1334 = int(_1332 * 8.0f);
    float4 _1340 = _39.SampleBias(_13, _485, _9_m16);
    float3 _1342;
    float _1345;
    _1342 = 0.0f.xxx;
    _1345 = 1.0f;
    float3 _1343;
    float _1346;
    [loop]
    for (int _1347 = 0; _1347 <= 7; _1342 = _1343, _1345 = _1346, _1347++)
    {
        uint _1365 = (_1328 <= _1332) ? (_25.Load(uint(_1321 + _1347) * 4 + 0) & _25.Load(uint((_9_m21.y + _1334) + _1347) * 4 + 0)) : 0u;
        uint _1366 = uint(_1347);
        float3 _1370;
        _1346 = _1345;
        _1370 = 0.0f.xxx;
        uint _1373;
        float _1368;
        float3 _1371;
        [loop]
        for (uint _1372 = _1365; _1372 != 0u; _1346 = _1368, _1370 = _1371, _1372 = _1373)
        {
            uint _1377 = firstbitlow(_1372);
            _1373 = _1372 ^ (1u << (_1377 & 31u));
            int _1383 = int((32u * _1366) + _1377) * 8;
            int _1386 = _1383 + 1;
            int _1389 = _1383 + 2;
            int _1392 = _1383 + 3;
            int _1395 = _1383 + 5;
            int _1398 = _1383 + 6;
            int _1401 = _1383 + 7;
            uint _1405 = uint(_32_m6[_1395].w);
            float _1480;
            if ((_1405 & 1u) == 1u)
            {
                uint _1411 = asuint(_32_m6[_1395].x);
                uint _1418 = asuint(_32_m6[_1395].y);
                uint _1425 = asuint(_32_m6[_1395].z);
                uint _1432 = asuint(_32_m6[_1398].x);
                uint _1439 = asuint(_32_m6[_1398].y);
                uint _1446 = asuint(_32_m6[_1398].z);
                float3 _1465 = abs(mul(float4(_505 - _32_m6[_1386].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1411).x, spvUnpackHalf2x16(_1425).x, spvUnpackHalf2x16(_1439).x, 0.0f), float4(spvUnpackHalf2x16(_1411 >> 16u).x, spvUnpackHalf2x16(_1425 >> 16u).x, spvUnpackHalf2x16(_1439 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1418).x, spvUnpackHalf2x16(_1432).x, spvUnpackHalf2x16(_1446).x, 0.0f), float4(spvUnpackHalf2x16(_1418 >> 16u).x, spvUnpackHalf2x16(_1432 >> 16u).x, spvUnpackHalf2x16(_1446 >> 16u).x, 0.0f))).xyz);
                float _1472 = _32_m6[_1401].x * 0.5f;
                float _1478 = 1.0f - clamp((max(max(_1465.x, _1465.y), _1465.z) - (_1472 + 0.5f)) / (0.5f - _1472), 0.0f, 1.0f);
                _1480 = _1478 * _1478;
            }
            else
            {
                _1480 = 1.0f;
            }
            bool _1484 = _32_m6[_1392].z > 0.5f;
            if ((false || (_1480 < 0.001000000047497451305389404296875f)) || _1484)
            {
                _1368 = _1346;
                _1371 = _1370;
                continue;
            }
            float _2657;
            float3 _2658;
            if (_32_m6[_1383].w < 1.5f)
            {
                float3 _1992 = float3(0.100000001490116119384765625f, _1125, 1.0f);
                float _2001 = (0.5f + (0.5f * _32_m6[_1389].y)) - abs(_32_m6[_1389].x);
                float _2002 = _32_m6[_1389].y - _2001;
                float _2006 = (1.0f - abs(_2001)) - abs(_2002);
                bool _2008 = _32_m6[_1389].x >= 0.0f;
                float _2009 = abs(max(_2006, 0.00048828125f));
                float3 _2013 = normalize(float3(_2001, _2002, _2008 ? _2009 : (-_2009)));
                float3 _2014 = _32_m6[_1386].xyz - _505;
                float _2015 = dot(_2014, _2014);
                float _2016 = rsqrt(_2015);
                float3 _2017 = _2014 * _2016;
                float _2021 = clamp(_32_m6[_1401].y * _2016, 0.0f, 1.0f);
                float _2024 = clamp(dot(_1060, _2017), 0.0f, 1.0f);
                int _2026 = int(_32_m6[_1401].w);
                float3 _2027 = _2013 * _32_m6[_1389].z;
                float3 _2028 = _2027 * 0.5f;
                float3 _2029 = _2014 - _2028;
                float3 _2030 = _2014 + _2028;
                bool _2033 = (uint(_32_m6[_1383].w) & 1u) == 0u;
                bool _2036 = _2033 || ((_1405 & 2u) != 0u);
                bool _2039 = (!_2033) && (_32_m6[_1389].z > 0.0f);
                float _2058;
                float _2059;
                if (_2039)
                {
                    float _2043 = length(_2029);
                    float _2044 = length(_2030);
                    _2058 = clamp(0.5f * ((dot(_1060, _2029) / _2043) + (dot(_1060, _2030) / _2044)), 0.0f, 1.0f);
                    _2059 = 1.0f / ((((_2043 * _2044) + dot(_2029, _2030)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2058 = _2024;
                    _2059 = 1.0f;
                }
                float _2081;
                if (_32_m6[_1398].w < 0.0f)
                {
                    float _2075 = _2015 * (_32_m6[_1386].w * _32_m6[_1386].w);
                    float _2078 = clamp(1.0f - (_2075 * _2075), 0.0f, 1.0f);
                    _2081 = lerp(1.0f / (_2015 + 1.0f), _2059, float(_2039)) * (_2078 * _2078);
                }
                else
                {
                    float3 _2064 = _2014 * _32_m6[_1386].w;
                    _2081 = _2059 * pow(1.0f - clamp(dot(_2064, _2064), 0.0f, 1.0f), _32_m6[_1398].w);
                }
                float _2087 = clamp((dot(_2017, -_2013) - _32_m6[_1389].z) * _32_m6[_1389].w, 0.0f, 1.0f);
                float _2091 = _2081 * lerp(1.0f, _2087 * _2087, float(_2033));
                float _2191;
                if ((!_2039) && (_2026 >= 0))
                {
                    uint _2097 = uint(_2026);
                    float2 _2184;
                    [branch]
                    if (_2033)
                    {
                        float4 _2174 = mul(_52_m1[_2097], _509);
                        _2184 = _52_m0[_2097].xy + (clamp(_2174.xy / _2174.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_2097].zw);
                    }
                    else
                    {
                        float3 _2111 = mul(float4(-_2014, 0.0f), _52_m1[_2097]).xyz;
                        float3 _430 = _2111;
                        float3 _429 = _2111;
                        float3 _428 = abs(_2111);
                        uint _2120 = uint(int(_428.y > _428.x));
                        uint _2126 = (_428.z > _428[_2120]) ? 2u : _2120;
                        uint _2132 = (_2126 * 2u) + uint(_429[_2126] < 0.0f);
                        float _2136 = abs(_430[_2132 / 2u]);
                        float _2156 = 0.5f - (0.000244140625f / _52_m0[_2097].w);
                        _2184 = _52_m0[_2097].xy + (clamp(float2((float(_2132) + ((((_430[uint(_376[_2132].x)] * _377[_2132].x) / _2136) * _2156) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_430[uint(_376[_2132].y)] * _377[_2132].y) / _2136) * _2156)), 0.0f.xx, 1.0f.xx) * _52_m0[_2097].zw);
                    }
                    _2191 = _2091 * _50.SampleLevel(_13, _2184, 0.0f).x;
                }
                else
                {
                    _2191 = _2091;
                }
                bool _2192 = _2191 > 0.0f;
                float _2500;
                if (_2192)
                {
                    int _2244;
                    if (_2036)
                    {
                        _2244 = int(_32_m6[_1392].x);
                    }
                    else
                    {
                        uint _2199 = asuint(_32_m6[_1389].w);
                        uint _2201 = asuint(_32_m6[_1392].x);
                        float3 _2202 = _505 - _32_m6[_1386].xyz;
                        float3 _2203 = abs(_2202);
                        float _2204 = _2203.x;
                        float _2205 = _2203.y;
                        float _2207 = _2203.z;
                        int _2239;
                        if ((_2204 > _2205) && (_2204 > _2207))
                        {
                            _2239 = int((_2202.x > 0.0f) ? (_2199 >> 24u) : ((_2199 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2231;
                            if (_2205 > _2207)
                            {
                                _2231 = int((_2202.y > 0.0f) ? ((_2199 >> 8u) & 255u) : (_2199 & 255u));
                            }
                            else
                            {
                                _2231 = int((_2202.z > 0.0f) ? ((_2201 >> 8u) & 255u) : (_2201 & 255u));
                            }
                            _2239 = _2231;
                        }
                        _2244 = (_2239 < 80) ? _2239 : (-1);
                    }
                    float _2498;
                    do
                    {
                        if (_36_m2[_2244].y > 0u)
                        {
                            uint _2262 = uint(_2244);
                            float4 _427 = _1340;
                            float _2273;
                            do
                            {
                                if (_36_m2[_2262].y == 0u)
                                {
                                    _2273 = 1.0f;
                                    break;
                                }
                                _2273 = _427[_36_m2[_2262].y - 1u];
                                break;
                            } while(false);
                            _2498 = _2273;
                            break;
                        }
                        float4 _2280 = mul(_34_m10[_2244], float4((_505 - ((-_2017) * _34_m11[_2244].x)) + (_1060 * (_34_m11[_2244].y * 5.0f)), 1.0f));
                        float _2281 = _2280.w;
                        float3 _2284 = _2280.xyz / _2281.xxx;
                        float2 _2285 = _2284.xy;
                        float3 _2293 = _2284.xyz;
                        bool3 _2294 = bool3(_2293.x <= 0.0f.xxx.x, _2293.y <= 0.0f.xxx.y, _2293.z <= 0.0f.xxx.z);
                        bool3 _2295 = bool3(_2293.x >= 1.0f.xxx.x, _2293.y >= 1.0f.xxx.y, _2293.z >= 1.0f.xxx.z);
                        float _2298 = _2284.z;
                        float2 _2309 = ((_2285 * (_34_m12[_2244].zw - _34_m12[_2244].xy)) + _34_m12[_2244].xy).xy * _34_m13.zw;
                        float2 _2311 = floor(_2309 + 0.5f.xx);
                        float2 _2312 = _2309 - _2311;
                        float _2313 = _2312.x;
                        float _2314 = _2313 + 0.5f;
                        float _2315 = _2314 * _2314;
                        float _2318 = 1.0f - _2313;
                        float _2319 = min(_2313, 0.0f);
                        float _2322 = _2313 + 1.0f;
                        float _2323 = max(_2313, 0.0f);
                        float _2334 = _2312.y;
                        float _2335 = _2334 + 0.5f;
                        float _2336 = _2335 * _2335;
                        float _2339 = 1.0f - _2334;
                        float _2340 = min(_2334, 0.0f);
                        float _2343 = _2334 + 1.0f;
                        float _2344 = max(_2334, 0.0f);
                        float3 _2356 = float3(0.1599999964237213134765625f * _2318, 0.1599999964237213134765625f * ((_2322 - (_2323 * _2323)) + 1.0f), _2315 * 0.07999999821186065673828125f);
                        float3 _2357 = float3(0.1599999964237213134765625f * ((_2315 * 0.5f) - _2313), 0.1599999964237213134765625f * ((_2318 - (_2319 * _2319)) + 1.0f), 0.1599999964237213134765625f * _2322) + _2356;
                        float3 _2359 = float3(0.1599999964237213134765625f * _2339, 0.1599999964237213134765625f * ((_2343 - (_2344 * _2344)) + 1.0f), _2336 * 0.07999999821186065673828125f);
                        float3 _2360 = float3(0.1599999964237213134765625f * ((_2336 * 0.5f) - _2334), 0.1599999964237213134765625f * ((_2339 - (_2340 * _2340)) + 1.0f), 0.1599999964237213134765625f * _2343) + _2359;
                        float3 _2366 = ((_2356 / _2357) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                        float3 _2368 = ((_2359 / _2360) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                        float2 _2370 = _2311 * _34_m13.xy;
                        float _2371 = _2366.x;
                        float _2372 = _2368.x;
                        float2 _2374 = _2370 + float2(_2371, _2372);
                        float _2375 = _2366.y;
                        float2 _2377 = _2370 + float2(_2375, _2372);
                        float _2378 = _2366.z;
                        float2 _2380 = _2370 + float2(_2378, _2372);
                        float _2381 = _2368.y;
                        float2 _2383 = _2370 + float2(_2371, _2381);
                        float2 _2385 = _2370 + float2(_2375, _2381);
                        float2 _2387 = _2370 + float2(_2378, _2381);
                        float _2388 = _2368.z;
                        float2 _2390 = _2370 + float2(_2371, _2388);
                        float2 _2392 = _2370 + float2(_2375, _2388);
                        float2 _2394 = _2370 + float2(_2378, _2388);
                        float _2395 = _2357.x;
                        float _2396 = _2360.x;
                        float _2398 = _2357.y;
                        float _2400 = _2357.z;
                        float _2402 = _2360.y;
                        float _2406 = _2360.z;
                        float _2472 = ((((((((_2395 * _2396) * _37.SampleCmpLevelZero(_16, float3(_2374, _420).xy, _2298)) + ((_2398 * _2396) * _37.SampleCmpLevelZero(_16, float3(_2377, _420).xy, _2298))) + ((_2400 * _2396) * _37.SampleCmpLevelZero(_16, float3(_2380, _420).xy, _2298))) + ((_2395 * _2402) * _37.SampleCmpLevelZero(_16, float3(_2383, _420).xy, _2298))) + ((_2398 * _2402) * _37.SampleCmpLevelZero(_16, float3(_2385, _420).xy, _2298))) + ((_2400 * _2402) * _37.SampleCmpLevelZero(_16, float3(_2387, _420).xy, _2298))) + ((_2395 * _2406) * _37.SampleCmpLevelZero(_16, float3(_2390, _420).xy, _2298))) + ((_2398 * _2406) * _37.SampleCmpLevelZero(_16, float3(_2392, _420).xy, _2298));
                        float2 _2485 = min(_2285, 1.0f.xx - _2285);
                        _2498 = lerp(1.0f, (any(bool3(_2294.x || _2295.x, _2294.y || _2295.y, _2294.z || _2295.z)) || ((asuint(_2298) & 2147483647u) > 2139095040u)) ? 1.0f : (_2472 + ((_2400 * _2406) * _37.SampleCmpLevelZero(_16, float3(_2394, _420).xy, _2298))), _2036 ? min(_34_m11[_2244].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_2244].z - _2281) * 0.25f, min(_2485.x, _2485.y)))) : _34_m11[_2244].w);
                        break;
                    } while(false);
                    _2500 = (_2244 >= 0) ? _2498 : 1.0f;
                }
                else
                {
                    _2500 = 1.0f;
                }
                float3 _2524;
                float3 _2525;
                if (_2039)
                {
                    float3 _2503 = _1992 * _1992;
                    float3 _2504 = reflect(_533, _1060);
                    float _2513 = dot(_2504, _2027);
                    _2524 = _2503 / clamp(_2503 + (0.5f * clamp(_32_m6[_1389].z * _2016, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2525 = normalize(_2029 + (_2027 * clamp(dot(_2029, (_2504 * _2513) - _2027) / ((_32_m6[_1389].z * _32_m6[_1389].z) - (_2513 * _2513)), 0.0f, 1.0f)));
                }
                else
                {
                    _2524 = 1.0f.xxx;
                    _2525 = _2017;
                }
                float3 _2526 = _2525 + _531;
                float3 _2530 = _2526 * rsqrt(max(6.103515625e-05f, dot(_2526, _2526)));
                float _2532 = abs(max(_2006, 5.9604644775390625e-08f));
                float3 _2538 = (normalize(float3(_2001, _2002, _2008 ? _2532 : (-_2532))) * _32_m6[_1389].z) * 0.5f;
                float3 _2539 = _2014 - _2538;
                float3 _2540 = _2014 + _2538;
                float _2552;
                if (_2039)
                {
                    _2552 = clamp(0.5f * ((dot(_1060, _2539) / length(_2539)) + (dot(_1060, _2540) / length(_2540))), 0.0f, 1.0f);
                }
                else
                {
                    _2552 = _2024;
                }
                float3 _2656;
                if (_2192)
                {
                    float _2555 = clamp(_2058, 0.0f, 1.0f);
                    float _2557 = clamp(dot(_1060, _2530), 0.0f, 1.0f);
                    float _2559 = clamp(dot(_531, _2530), 0.0f, 1.0f);
                    float _2560 = clamp(_1134, 0.0f, 1.0f);
                    float _2570;
                    if (_2021 > 0.0f)
                    {
                        _2570 = clamp(_1136 + ((_2021 * _2021) / ((_2559 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2570 = _1136;
                    }
                    float _2571 = _2570 * _2570;
                    float _2592 = (((_2557 * _2571) - _2557) * _2557) + 1.0f;
                    float _2597 = 1.0f - _2559;
                    float _2598 = _2597 * _2597;
                    float _2600 = (_2597 * _2598) * _2598;
                    float _2624 = 1.0f - _1125;
                    float _2631 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2624 * (1.04997003078460693359375f + (_2624 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2624))))));
                    float _2632 = 1.0f - _2631;
                    float3 _2635 = _1133 + ((1.0f.xxx - _1133) * 0.0476190485060214996337890625f);
                    float3 _2655 = ((clamp((min(((_1133 * (1.0f - _2600)) + _2600.xxx) * (((_2571 / (_2592 * _2592)) * _2524.y) * (0.5f / (((_2555 * sqrt(((((-_2560) * _2571) + _2560) * _2560) + _2571)) + (_2560 * sqrt(((((-_2555) * _2571) + _2555) * _2555) + _2571))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2635 * (((_48.SampleLevel(_13, (float2(_2560, _1125) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_2555, _1125) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2631) / _2632)) * _2635) / (1.0f.xxx - (_2635 * _2632)))) * _32_m6[_1401].z, 0.0f.xxx, 1000.0f.xxx) * _2058) + ((_1129 * _2524.z) * _2552)) * (((_32_m6[_1383].xyz * _2191) * _2500) * _1480);
                    _2656 = _2655;
                }
                else
                {
                    _2656 = 0.0f.xxx;
                }
                _2657 = _1346;
                _2658 = _2656;
            }
            else
            {
                float _1990;
                do
                {
                    if (_1484)
                    {
                        _1990 = 1.0f;
                        break;
                    }
                    float _1504 = (0.5f + (0.5f * _32_m6[_1389].y)) - abs(_32_m6[_1389].x);
                    float _1505 = _32_m6[_1389].y - _1504;
                    float _1512 = abs(max((1.0f - abs(_1504)) - abs(_1505), 0.00048828125f));
                    float3 _1516 = normalize(float3(_1504, _1505, (_32_m6[_1389].x >= 0.0f) ? _1512 : (-_1512)));
                    float3 _1517 = _32_m6[_1386].xyz - _505;
                    float _1518 = dot(_1517, _1517);
                    float3 _1520 = _1517 * rsqrt(_1518);
                    int _1523 = int(_32_m6[_1401].w);
                    float3 _1525 = (_1516 * _32_m6[_1389].z) * 0.5f;
                    float3 _1526 = _1517 - _1525;
                    float3 _1527 = _1517 + _1525;
                    bool _1530 = (uint(_32_m6[_1383].w) & 1u) == 0u;
                    bool _1533 = _1530 || ((_1405 & 2u) != 0u);
                    bool _1536 = (!_1530) && (_32_m6[_1389].z > 0.0f);
                    float _1548;
                    if (_1536)
                    {
                        _1548 = 1.0f / ((((length(_1526) * length(_1527)) + dot(_1526, _1527)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _1548 = 1.0f;
                    }
                    float _1570;
                    if (_32_m6[_1398].w < 0.0f)
                    {
                        float _1564 = _1518 * (_32_m6[_1386].w * _32_m6[_1386].w);
                        float _1567 = clamp(1.0f - (_1564 * _1564), 0.0f, 1.0f);
                        _1570 = lerp(1.0f / (_1518 + 1.0f), _1548, float(_1536)) * (_1567 * _1567);
                    }
                    else
                    {
                        float3 _1553 = _1517 * _32_m6[_1386].w;
                        _1570 = _1548 * pow(1.0f - clamp(dot(_1553, _1553), 0.0f, 1.0f), _32_m6[_1398].w);
                    }
                    float _1576 = clamp((dot(_1520, -_1516) - _32_m6[_1389].z) * _32_m6[_1389].w, 0.0f, 1.0f);
                    float _1580 = _1570 * lerp(1.0f, _1576 * _1576, float(_1530));
                    float _1680;
                    if ((!_1536) && (_1523 >= 0))
                    {
                        uint _1586 = uint(_1523);
                        float2 _1673;
                        [branch]
                        if (_1530)
                        {
                            float4 _1663 = mul(_52_m1[_1586], _509);
                            _1673 = _52_m0[_1586].xy + (clamp(_1663.xy / _1663.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_1586].zw);
                        }
                        else
                        {
                            float3 _1600 = mul(float4(-_1517, 0.0f), _52_m1[_1586]).xyz;
                            float3 _434 = _1600;
                            float3 _433 = _1600;
                            float3 _432 = abs(_1600);
                            uint _1609 = uint(int(_432.y > _432.x));
                            uint _1615 = (_432.z > _432[_1609]) ? 2u : _1609;
                            uint _1621 = (_1615 * 2u) + uint(_433[_1615] < 0.0f);
                            float _1625 = abs(_434[_1621 / 2u]);
                            float _1645 = 0.5f - (0.000244140625f / _52_m0[_1586].w);
                            _1673 = _52_m0[_1586].xy + (clamp(float2((float(_1621) + ((((_434[uint(_376[_1621].x)] * _377[_1621].x) / _1625) * _1645) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_434[uint(_376[_1621].y)] * _377[_1621].y) / _1625) * _1645)), 0.0f.xx, 1.0f.xx) * _52_m0[_1586].zw);
                        }
                        _1680 = _1580 * _50.SampleLevel(_13, _1673, 0.0f).x;
                    }
                    else
                    {
                        _1680 = _1580;
                    }
                    float _1989;
                    if (_1680 > 0.0f)
                    {
                        int _1733;
                        if (_1533)
                        {
                            _1733 = int(_32_m6[_1392].x);
                        }
                        else
                        {
                            uint _1688 = asuint(_32_m6[_1389].w);
                            uint _1690 = asuint(_32_m6[_1392].x);
                            float3 _1691 = _505 - _32_m6[_1386].xyz;
                            float3 _1692 = abs(_1691);
                            float _1693 = _1692.x;
                            float _1694 = _1692.y;
                            float _1696 = _1692.z;
                            int _1728;
                            if ((_1693 > _1694) && (_1693 > _1696))
                            {
                                _1728 = int((_1691.x > 0.0f) ? (_1688 >> 24u) : ((_1688 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1720;
                                if (_1694 > _1696)
                                {
                                    _1720 = int((_1691.y > 0.0f) ? ((_1688 >> 8u) & 255u) : (_1688 & 255u));
                                }
                                else
                                {
                                    _1720 = int((_1691.z > 0.0f) ? ((_1690 >> 8u) & 255u) : (_1690 & 255u));
                                }
                                _1728 = _1720;
                            }
                            _1733 = (_1728 < 80) ? _1728 : (-1);
                        }
                        float _1987;
                        do
                        {
                            if (_36_m2[_1733].y > 0u)
                            {
                                uint _1751 = uint(_1733);
                                float4 _431 = _1340;
                                float _1762;
                                do
                                {
                                    if (_36_m2[_1751].y == 0u)
                                    {
                                        _1762 = 1.0f;
                                        break;
                                    }
                                    _1762 = _431[_36_m2[_1751].y - 1u];
                                    break;
                                } while(false);
                                _1987 = _1762;
                                break;
                            }
                            float4 _1769 = mul(_34_m10[_1733], float4((_505 - ((-_1520) * _34_m11[_1733].x)) + (_475 * (_34_m11[_1733].y * 5.0f)), 1.0f));
                            float _1770 = _1769.w;
                            float3 _1773 = _1769.xyz / _1770.xxx;
                            float2 _1774 = _1773.xy;
                            float3 _1782 = _1773.xyz;
                            bool3 _1783 = bool3(_1782.x <= 0.0f.xxx.x, _1782.y <= 0.0f.xxx.y, _1782.z <= 0.0f.xxx.z);
                            bool3 _1784 = bool3(_1782.x >= 1.0f.xxx.x, _1782.y >= 1.0f.xxx.y, _1782.z >= 1.0f.xxx.z);
                            float _1787 = _1773.z;
                            float2 _1798 = ((_1774 * (_34_m12[_1733].zw - _34_m12[_1733].xy)) + _34_m12[_1733].xy).xy * _34_m13.zw;
                            float2 _1800 = floor(_1798 + 0.5f.xx);
                            float2 _1801 = _1798 - _1800;
                            float _1802 = _1801.x;
                            float _1803 = _1802 + 0.5f;
                            float _1804 = _1803 * _1803;
                            float _1807 = 1.0f - _1802;
                            float _1808 = min(_1802, 0.0f);
                            float _1811 = _1802 + 1.0f;
                            float _1812 = max(_1802, 0.0f);
                            float _1823 = _1801.y;
                            float _1824 = _1823 + 0.5f;
                            float _1825 = _1824 * _1824;
                            float _1828 = 1.0f - _1823;
                            float _1829 = min(_1823, 0.0f);
                            float _1832 = _1823 + 1.0f;
                            float _1833 = max(_1823, 0.0f);
                            float3 _1845 = float3(0.1599999964237213134765625f * _1807, 0.1599999964237213134765625f * ((_1811 - (_1812 * _1812)) + 1.0f), _1804 * 0.07999999821186065673828125f);
                            float3 _1846 = float3(0.1599999964237213134765625f * ((_1804 * 0.5f) - _1802), 0.1599999964237213134765625f * ((_1807 - (_1808 * _1808)) + 1.0f), 0.1599999964237213134765625f * _1811) + _1845;
                            float3 _1848 = float3(0.1599999964237213134765625f * _1828, 0.1599999964237213134765625f * ((_1832 - (_1833 * _1833)) + 1.0f), _1825 * 0.07999999821186065673828125f);
                            float3 _1849 = float3(0.1599999964237213134765625f * ((_1825 * 0.5f) - _1823), 0.1599999964237213134765625f * ((_1828 - (_1829 * _1829)) + 1.0f), 0.1599999964237213134765625f * _1832) + _1848;
                            float3 _1855 = ((_1845 / _1846) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                            float3 _1857 = ((_1848 / _1849) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                            float2 _1859 = _1800 * _34_m13.xy;
                            float _1860 = _1855.x;
                            float _1861 = _1857.x;
                            float2 _1863 = _1859 + float2(_1860, _1861);
                            float _1864 = _1855.y;
                            float2 _1866 = _1859 + float2(_1864, _1861);
                            float _1867 = _1855.z;
                            float2 _1869 = _1859 + float2(_1867, _1861);
                            float _1870 = _1857.y;
                            float2 _1872 = _1859 + float2(_1860, _1870);
                            float2 _1874 = _1859 + float2(_1864, _1870);
                            float2 _1876 = _1859 + float2(_1867, _1870);
                            float _1877 = _1857.z;
                            float2 _1879 = _1859 + float2(_1860, _1877);
                            float2 _1881 = _1859 + float2(_1864, _1877);
                            float2 _1883 = _1859 + float2(_1867, _1877);
                            float _1884 = _1846.x;
                            float _1885 = _1849.x;
                            float _1887 = _1846.y;
                            float _1889 = _1846.z;
                            float _1891 = _1849.y;
                            float _1895 = _1849.z;
                            float _1961 = ((((((((_1884 * _1885) * _37.SampleCmpLevelZero(_16, float3(_1863, _420).xy, _1787)) + ((_1887 * _1885) * _37.SampleCmpLevelZero(_16, float3(_1866, _420).xy, _1787))) + ((_1889 * _1885) * _37.SampleCmpLevelZero(_16, float3(_1869, _420).xy, _1787))) + ((_1884 * _1891) * _37.SampleCmpLevelZero(_16, float3(_1872, _420).xy, _1787))) + ((_1887 * _1891) * _37.SampleCmpLevelZero(_16, float3(_1874, _420).xy, _1787))) + ((_1889 * _1891) * _37.SampleCmpLevelZero(_16, float3(_1876, _420).xy, _1787))) + ((_1884 * _1895) * _37.SampleCmpLevelZero(_16, float3(_1879, _420).xy, _1787))) + ((_1887 * _1895) * _37.SampleCmpLevelZero(_16, float3(_1881, _420).xy, _1787));
                            float2 _1974 = min(_1774, 1.0f.xx - _1774);
                            _1987 = lerp(1.0f, (any(bool3(_1783.x || _1784.x, _1783.y || _1784.y, _1783.z || _1784.z)) || ((asuint(_1787) & 2147483647u) > 2139095040u)) ? 1.0f : (_1961 + ((_1889 * _1895) * _37.SampleCmpLevelZero(_16, float3(_1883, _420).xy, _1787))), _1533 ? min(_34_m11[_1733].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_1733].z - _1770) * 0.25f, min(_1974.x, _1974.y)))) : _34_m11[_1733].w);
                            break;
                        } while(false);
                        _1989 = (_1733 >= 0) ? _1987 : 1.0f;
                    }
                    else
                    {
                        _1989 = 1.0f;
                    }
                    _1990 = _1989;
                    break;
                } while(false);
                _2657 = _1346 * _1990;
                _2658 = 0.0f.xxx;
            }
            _1368 = _2657;
            _1371 = _1370 + _2658;
        }
        _1343 = _1342 + _1370;
    }
    float3 _2662 = _1311.xyz + (_1342 * _1345);
    float3 _2664 = _452.xxx;
    float3 _2701;
    float3 _2702;
    [branch]
    /*
    Vanilla shader code from 0xC3AB0F5C:
    if (_9_m23.x != 0.0f)
    */
    // RenoDX code: keep the GTAO sample path active when Improved GTAO is enabled.
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2677 = min(_22.SampleBias(_12, _4, _9_m16).x, _452);
        _2701 = clamp((pow(abs(max(0.0f, dot(_475, _531)) + _2677), exp2(((-16.0f) * _1125) - 1.0f)) - 1.0f) + _2677, 0.0f, 1.0f).xxx;
        _2702 = max(_2677.xxx, ((((((_1129 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2677) + ((_1129 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2677) + ((_1129 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2677);
    }
    else
    {
        _2701 = _2664;
        _2702 = _2664;
    }
    // RenoDX code: apply the sampled GTAO term when Improved GTAO is enabled.
    _2662 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2701 : 1.0f.xxx;
    float3 _2719 = (_505 + (_475 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_480 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2729 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2738 = _2719 - (_9_m105.xyz + (_2729 * (-_9_m107.w)));
    float _2752 = max(clamp((max(abs(_2738.x), abs(_2738.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2738.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _3054;
    float4 _3055;
    float4 _3056;
    float _3057;
    float _3058;
    if ((_9_m105.w != 0.0f) && (_2752 < 1.0f))
    {
        float3 _2765 = _2719 - (_9_m105.xyz + (_2729 * (-_9_m107.y)));
        float _2779 = max(clamp((max(abs(_2765.x), abs(_2765.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2765.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2855;
        float4 _2856;
        float4 _2857;
        float4 _2858;
        if (_2779 < 1.0f)
        {
            float3 _2788 = ((_2719 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2790 = _2788 - floor(_2788);
            float4 _2794 = _60.SampleLevel(_14, _2790, 0.0f);
            float _2795 = 1.0f - _2779;
            float _2799 = _9_m106.y * 0.5f;
            float _2804 = _2790.x;
            float _2805 = clamp(_2790.y, _2799, 1.0f - _2799) * 0.3333333432674407958984375f;
            float _2806 = _2790.z;
            float4 _2809 = _61.SampleLevel(_13, float3(_2804, _2805, _2806), 0.0f);
            float _2825 = _2794.x;
            float _2835 = _2794.y;
            float _2845 = _2794.z;
            _2855 = _2752 + (_2809.w * _2795);
            _2856 = float4(((_61.SampleLevel(_13, float3(_2804, _2805 + 0.666666686534881591796875f, _2806), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2845, _2845) * _2795;
            _2857 = float4(((_61.SampleLevel(_13, float3(_2804, _2805 + 0.3333333432674407958984375f, _2806), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2835, _2835) * _2795;
            _2858 = float4(((_2809.xyz * 4.0f) - 2.0f.xxx) * _2825, _2825) * _2795;
        }
        else
        {
            _2855 = _2752;
            _2856 = 0.0f.xxxx;
            _2857 = 0.0f.xxxx;
            _2858 = 0.0f.xxxx;
        }
        float3 _2864 = _2719 - (_9_m105.xyz + (_2729 * (-_9_m107.z)));
        float _2878 = max(clamp((max(abs(_2864.x), abs(_2864.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2864.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2958;
        float4 _2959;
        float4 _2960;
        float4 _2961;
        if (_2878 < 1.0f)
        {
            float3 _2887 = ((_2719 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2889 = _2887 - floor(_2887);
            float4 _2893 = _62.SampleLevel(_14, _2889, 0.0f);
            float _2895 = _2779 * (1.0f - _2878);
            float _2899 = _9_m106.y * 0.5f;
            float _2904 = _2889.x;
            float _2905 = clamp(_2889.y, _2899, 1.0f - _2899) * 0.3333333432674407958984375f;
            float _2906 = _2889.z;
            float4 _2909 = _63.SampleLevel(_13, float3(_2904, _2905, _2906), 0.0f);
            float _2925 = _2893.x;
            float _2936 = _2893.y;
            float _2947 = _2893.z;
            _2958 = _2855 + (_2909.w * _2895);
            _2959 = _2856 + (float4(((_63.SampleLevel(_13, float3(_2904, _2905 + 0.666666686534881591796875f, _2906), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2947, _2947) * _2895);
            _2960 = _2857 + (float4(((_63.SampleLevel(_13, float3(_2904, _2905 + 0.3333333432674407958984375f, _2906), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2936, _2936) * _2895);
            _2961 = _2858 + (float4(((_2909.xyz * 4.0f) - 2.0f.xxx) * _2925, _2925) * _2895);
        }
        else
        {
            _2958 = _2855;
            _2959 = _2856;
            _2960 = _2857;
            _2961 = _2858;
        }
        float4 _3044;
        float4 _3045;
        float4 _3046;
        float _3047;
        if (_2878 > 0.0f)
        {
            float3 _2970 = ((_2719 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2973 = _9_m106.xyz * 0.5f;
            float3 _2975 = clamp(_2970 - floor(_2970), _2973, 1.0f.xxx - _2973);
            float4 _2979 = _64.SampleLevel(_14, _2975, 0.0f);
            float _2981 = _2878 * (1.0f - _2752);
            float _2985 = _9_m106.y * 0.5f;
            float _2990 = _2975.x;
            float _2991 = clamp(_2975.y, _2985, 1.0f - _2985) * 0.3333333432674407958984375f;
            float _2992 = _2975.z;
            float4 _2995 = _65.SampleLevel(_13, float3(_2990, _2991, _2992), 0.0f);
            float _3011 = _2979.x;
            float _3022 = _2979.y;
            float _3033 = _2979.z;
            _3044 = _2959 + (float4(((_65.SampleLevel(_13, float3(_2990, _2991 + 0.666666686534881591796875f, _2992), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3033, _3033) * _2981);
            _3045 = _2960 + (float4(((_65.SampleLevel(_13, float3(_2990, _2991 + 0.3333333432674407958984375f, _2992), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3022, _3022) * _2981);
            _3046 = _2961 + (float4(((_2995.xyz * 4.0f) - 2.0f.xxx) * _3011, _3011) * _2981);
            _3047 = _2958 + (_2995.w * _2981);
        }
        else
        {
            _3044 = _2959;
            _3045 = _2960;
            _3046 = _2961;
            _3047 = _2958;
        }
        float _3050 = clamp((_3047 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _3054 = _3044;
        _3055 = _3045;
        _3056 = _3046;
        _3057 = _3050 - _2752;
        _3058 = (_3050 + _2752) * 0.5f;
    }
    else
    {
        _3054 = 0.0f.xxxx;
        _3055 = 0.0f.xxxx;
        _3056 = 0.0f.xxxx;
        _3057 = 0.0f;
        _3058 = 1.0f;
    }
    float4 _3078 = _3056 + float4(_9_m108.x * _3058, (_9_m108.y * _3058) + ((_9_m108.w * _3057) * 0.5f), _9_m108.z * _3058, (_9_m108.w * _3058) + ((_9_m108.y * _3057) * 0.375f));
    float4 _3098 = _3055 + float4(_9_m109.x * _3058, (_9_m109.y * _3058) + ((_9_m109.w * _3057) * 0.5f), _9_m109.z * _3058, (_9_m109.w * _3058) + ((_9_m109.y * _3057) * 0.375f));
    float4 _3118 = _3054 + float4(_9_m110.x * _3058, (_9_m110.y * _3058) + ((_9_m110.w * _3057) * 0.5f), _9_m110.z * _3058, (_9_m110.w * _3058) + ((_9_m110.y * _3057) * 0.375f));
    float4 _3276;
    float4 _3277;
    float4 _3278;
    [branch]
    if (all(bool2(_493.x >= 0.0f.xx.x, _493.y >= 0.0f.xx.y)))
    {
        float4 _3126 = _59.SampleLevel(_13, _493, 0.0f);
        float4 _3127 = abs(_3126);
        float4 _3273;
        float4 _3274;
        float4 _3275;
        [branch]
        if (any(bool4(_3127.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3127.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3127.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3127.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _3133 = length(_3126.yzw);
            uint _3135;
            float _3138;
            _3135 = 0u;
            _3138 = 1.0f;
            for (float _3140 = _3133; _3140 > 4.599999904632568359375f; )
            {
                _3135++;
                _3138 *= 0.5f;
                _3140 *= 0.5f;
                continue;
            }
            float4 _3144 = _3126 * _3138;
            float4 _3149 = float4(0.0f, _3144.yzw);
            float2 _3171 = (_58.SampleLevel(_13, float2(((((length(_3149) * _57_m3.x) + _57_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _57_m2.xy) + _57_m2.zw;
            float4 _3185;
            _3185 = float4(_3171.x * 3.5449078083038330078125f, _3149.yzw * _3171.y) * exp(_3144.x * 0.282094776630401611328125f);
            for (uint _3188 = 0u; _3188 < _3135; )
            {
                _3185 = mul(float4x4(_3185, float4(_3185.yx, 0.0f, 0.0f), float4(_3185.z, 0.0f, _3185.x, 0.0f), float4(_3185.w, 0.0f, 0.0f, _3185.x)) * 0.282094776630401611328125f, _3185);
                _3188++;
                continue;
            }
            float4x4 _3209 = float4x4(_3185, float4(_3185.yx, 0.0f, 0.0f), float4(_3185.z, 0.0f, _3185.x, 0.0f), float4(_3185.w, 0.0f, 0.0f, _3185.x)) * 0.282094776630401611328125f;
            float4 _3219 = mul(_3209, float4(_3078.w * 1.1283791065216064453125f, _3078.y * (-0.977204978466033935546875f), _3078.z * 0.977204978466033935546875f, _3078.x * (-0.977204978466033935546875f)));
            float4 _3239 = mul(_3209, float4(_3098.w * 1.1283791065216064453125f, _3098.y * (-0.977204978466033935546875f), _3098.z * 0.977204978466033935546875f, _3098.x * (-0.977204978466033935546875f)));
            float4 _3259 = mul(_3209, float4(_3118.w * 1.1283791065216064453125f, _3118.y * (-0.977204978466033935546875f), _3118.z * 0.977204978466033935546875f, _3118.x * (-0.977204978466033935546875f)));
            _3273 = float4(_3219.x * 0.886226952075958251953125f, _3219.w * (-1.02332675457000732421875f), _3219.y * (-1.02332675457000732421875f), _3219.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _3274 = float4(_3239.x * 0.886226952075958251953125f, _3239.w * (-1.02332675457000732421875f), _3239.y * (-1.02332675457000732421875f), _3239.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _3275 = float4(_3259.x * 0.886226952075958251953125f, _3259.w * (-1.02332675457000732421875f), _3259.y * (-1.02332675457000732421875f), _3259.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _3273 = _3078;
            _3274 = _3098;
            _3275 = _3118;
        }
        _3276 = _3273;
        _3277 = _3274;
        _3278 = _3275;
    }
    else
    {
        _3276 = _3078;
        _3277 = _3098;
        _3278 = _3118;
    }
    float _3283 = max(0.0f, dot(_3276.xyz, _475) + _3276.w);
    float _3288 = max(0.0f, dot(_3277.xyz, _475) + _3277.w);
    float _3293 = max(0.0f, dot(_3278.xyz, _475) + _3278.w);
    float3 _3303 = reflect(_533, _1060);
    float _3311 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1125, 0.001000000047497451305389404296875f))));
    float2 _3315 = floor(_480 * _28_m0.w);
    float _3332 = floor(_512 - _28_m2.y);
    float _3336 = clamp(_3332, 0.0f, _28_m1.x - 1.0f);
    uint _3346 = (_3332 <= _3336) ? (_25.Load(uint(_9_m21.z + int(_3315.x + (_3315.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_3336)) * 4 + 0)) : 0u;
    float _3349 = dot(float4(_3283, _3288, _3293, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _3351;
    float _3354;
    uint _3356;
    _3351 = 0.0f.xxx;
    _3354 = 1.0f;
    _3356 = _3346;
    uint _3357;
    float3 _3352;
    float _3355;
    bool _3359;
    [loop]
    for (;;)
    {
        _3359 = _3354 > 0.00999999977648258209228515625f;
        if ((_3356 != 0u) && _3359)
        {
            uint _3363 = firstbitlow(_3356);
            _3357 = _3356 ^ (1u << (_3363 & 31u));
            float3 _3383 = float3(dot(_28_m4[_3363]._m2, _509), dot(_28_m4[_3363]._m3, _509), dot(_28_m4[_3363]._m4, _509));
            float3 _3384 = abs(_3383);
            if (all(bool3(_3384.x <= _28_m4[_3363]._m1.xyz.x, _3384.y <= _28_m4[_3363]._m1.xyz.y, _3384.z <= _28_m4[_3363]._m1.xyz.z)))
            {
                float3 _3393 = _28_m4[_3363]._m1.xyz * 0.100000001490116119384765625f;
                float3 _3395 = _3384 * 0.100000001490116119384765625f;
                float3 _3396 = _3395 * _3395;
                float3 _3399 = (_28_m4[_3363]._m1.xyz - _3384) * _28_m4[_3363]._m5.xyz;
                float3 _3447;
                [branch]
                if (_28_m4[_3363]._m6.x == 1.0f)
                {
                    float3 _3432 = float3(dot(_28_m4[_3363]._m2.xyz, _3303), dot(_28_m4[_3363]._m3.xyz, _3303), dot(_28_m4[_3363]._m4.xyz, _3303));
                    float3 _3434 = (_28_m4[_3363]._m1.xyz - _3383) / _3432;
                    float3 _3437 = ((-_28_m4[_3363]._m1.xyz) - _3383) / _3432;
                    bool3 _3438 = bool3(_3432.x > 0.0f.xxx.x, _3432.y > 0.0f.xxx.y, _3432.z > 0.0f.xxx.z);
                    float3 _3439 = float3(_3438.x ? _3434.x : _3437.x, _3438.y ? _3434.y : _3437.y, _3438.z ? _3434.z : _3437.z);
                    _3447 = _3383 + (_3432 * min(min(_3439.x, _3439.y), _3439.z));
                }
                else
                {
                    _3447 = _3303;
                }
                float3 _3448 = normalize(_3447);
                float3 _3451 = float3(int3(sign(_3448)));
                float3 _3454 = _3448 / dot(_3448, _3451).xxx;
                float3 _3468;
                if (_3454.z < 0.0f)
                {
                    float3 _3459 = abs(_3454);
                    float2 _3466 = _3451.xy * float2(1.0f - _3459.y, 1.0f - _3459.x);
                    _3468 = float3(_3466.x, _3466.y, _3454.z);
                }
                else
                {
                    _3468 = _3454;
                }
                float _3493 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_3363]._m0, float4(_1060, 1.0f))));
                float _3506 = clamp((min(_3399.x, min(_3399.y, _3399.z)) * _28_m4[_3363]._m6.y) + ((((((_3393 * _3393).x - ((_3396.x + _3396.y) + _3396.z)) * _28_m4[_3363]._m5.x) * _28_m4[_3363]._m5.x) * (1.0f - _28_m4[_3363]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_3363]._m6.w;
                _3352 = _3351 + ((((_23.SampleLevel(_15, float3((((_3468.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_3363]._m1.w), _3311).xyz * _28_m4[_3363]._m5.w) * ((((((clamp(abs(_3349 / _3493), 0.0f, 1.0f) * 2.0f) + _3349) / (2.0f + _3493)) - 1.0f) * _9_m23.w) + 1.0f)) * _3506) * _3354);
                _3355 = _3354 * (1.0f - _3506);
            }
            else
            {
                _3352 = _3351;
                _3355 = _3354;
            }
            _3351 = _3352;
            _3354 = _3355;
            _3356 = _3357;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _3575;
    if (_3359)
    {
        float3 _3514 = normalize(_3303);
        float3 _3517 = float3(int3(sign(_3514)));
        float3 _3520 = _3514 / dot(_3514, _3517).xxx;
        float3 _3534;
        if (_3520.z < 0.0f)
        {
            float3 _3525 = abs(_3520);
            float2 _3532 = _3517.xy * float2(1.0f - _3525.y, 1.0f - _3525.x);
            _3534 = float3(_3532.x, _3532.y, _3520.z);
        }
        else
        {
            _3534 = _3520;
        }
        float _3561 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1060, 1.0f))));
        _3575 = _3351 + ((_23.SampleLevel(_15, float3((((_3534.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _3311).xyz * ((((((clamp(abs(_3349 / _3561), 0.0f, 1.0f) * 2.0f) + _3349) / (2.0f + _3561)) - 1.0f) * _9_m23.w) + 1.0f)) * _3354);
    }
    else
    {
        _3575 = _3351;
    }
    float3 _3581 = (_3575 * _9_m23.z) * _9_m22.y;
    // RenoDX code start: link cubemap ambient intensity to the scene lighting response.
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _3581 *= 0.25f + (0.75f * saturate(_3349));
    }
    // RenoDX code end
    float3 _3602;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _3596 = _21.SampleBias(_13, _4, _9_m16);
        float _3597 = _3596.x;
        _3602 = (_20.SampleBias(_13, _4, _9_m16).xyz * _3597) + (_3581 * (1.0f - _3597));
    }
    else
    {
        _3602 = _3581;
    }
    float3 _3605 = (((float3(_3283, _3288, _3293) * _1129) * _9_m22.x) * _2702) + ((_3602 * (_1158 + ((_1133 * ((1.0f - _1159) / _1159)) * _1158))) * _2701);
    float4 _3607 = float4(_2662.x, _2662.y, _2662.z, _1311.w) + float4(_3605.x, _3605.y, _3605.z, 0.0f.xxxx.w);
    float _3625 = _507 * _9_m46.w;
    float _3630 = max(0.00999999977648258209228515625f, _3625 + _9_m47.w);
    float3 _3644 = exp(_9_m45.xyz * ((-max(0.0f, (_532 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3630)) / _3630) * exp(_3625 + _9_m48.w))));
    float _3647 = dot(_533, _9_m44.xyz);
    float _3653 = _9_m45.w * _9_m45.w;
    float _3657 = (1.0f + _3653) - ((2.0f * _9_m45.w) * _3647);
    float3 _3981;
    float _3982;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3809 = (uint3(int3(_441, _442, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3810 = _3809.y;
        uint _3811 = _3809.z;
        uint _3814 = _3809.x + (_3810 * _3811);
        uint _3816 = _3810 + (_3811 * _3814);
        uint _3818 = _3811 + (_3814 * _3816);
        uint _3820 = _3814 + (_3816 * _3818);
        float _3844 = dot(_533, -_7_m0[2].xyz);
        float3 _3852 = _505 - _7_m11.xyz;
        float _3854 = (_9_m55.w * ((_3844 > 5.9604644775390625e-08f) ? (1.0f / _3844) : 0.0f)) * (1.0f / _532);
        float _3855 = _3852.y;
        float _3856 = _3854 * _3855;
        float _3858 = _7_m11.y + _3856;
        float _3859 = _3855 - _3856;
        float _3861 = (1.0f - _3854) * _532;
        float _3875 = max(-127.0f, _9_m49.z * _3859);
        float _3899 = max(-127.0f, _9_m52.x * _3859);
        float _3910 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3858 - _9_m49.x)))) * ((abs(_3875) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3875)) / _3875) : (0.693147182464599609375f - (0.2402265071868896484375f * _3875)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3858 - _9_m52.z)))) * ((abs(_3899) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3899)) / _3899) : (0.693147182464599609375f - (0.2402265071868896484375f * _3899))));
        float _3932 = clamp((_532 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3935 = clamp((max(clamp(exp2(-(_3910 * _3861)), 0.0f, 1.0f), _9_m51.w) + clamp((_532 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3932, 0.0f, 1.0f);
        float4 _3975 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _55.SampleLevel(_13, float3((_480 + ((((float3(uint3(_3820, _3816 + (_3818 * _3820), _425) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_512 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_512 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3977 = _3975.w;
        _3981 = _3975.xyz + (((_9_m51.xyz * (1.0f - _3935)) + (((_9_m54.xyz * pow(clamp(dot(_531, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3910 * max(_3861 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3932))) * _3977);
        _3982 = _3977 * _3935;
    }
    else
    {
        float3 _3685 = _505 - _7_m11.xyz;
        float _3687 = _3685.y;
        float _3701 = max(-127.0f, _9_m49.z * _3687);
        float _3725 = max(-127.0f, _9_m52.x * _3687);
        float _3736 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3701) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3701)) / _3701) : (0.693147182464599609375f - (0.2402265071868896484375f * _3701)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3725) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3725)) / _3725) : (0.693147182464599609375f - (0.2402265071868896484375f * _3725))));
        float _3758 = clamp((_532 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3761 = clamp((max(clamp(exp2(-(_3736 * _532)), 0.0f, 1.0f), _9_m51.w) + clamp((_532 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3758, 0.0f, 1.0f);
        _3981 = (_9_m51.xyz * (1.0f - _3761)) + (((_9_m54.xyz * pow(clamp(dot(_531, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3736 * max(_532 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3758));
        _3982 = _3761;
    }
    float3 _3985 = _3644 * _3982;
    float3 _3987 = (clamp(_3607.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3985) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3647 * _3647)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3653) / max((12.56637096405029296875f * _3657) * sqrt(_3657), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3644)) * _3982) + _3981);

    // RenoDX code start: apply the hue-preserving fog composite.
    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3987 = (_3987 * 0.65f) + (clamp(_3607.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    // RenoDX code end
    float4 _3989 = float4(_3987.x, _3987.y, _3987.z, _3607.w);
    _3989.w = dot(_3985, 0.3333333432674407958984375f.xxx);
    _5 = _3989;
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
