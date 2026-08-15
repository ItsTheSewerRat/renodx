// Current Vulkan deferred-lighting permutation 0x83E58EA6.
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

static float _424 = 0.0f;
static float _428 = 0.0f;
static uint _429 = 0u;

static const int2 _380[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _381[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"
[[vk::binding(37, 3)]]
cbuffer _6_7 : register(b37)
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

[[vk::binding(42, 3)]]
cbuffer _8_9 : register(b42)
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

[[vk::binding(46, 3)]] ByteAddressBuffer _25 : register(t46);
[[vk::binding(43, 3)]]
cbuffer _26_28 : register(b43)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(39, 3)]]
cbuffer _29_30 : register(b39)
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

[[vk::binding(38, 3)]]
cbuffer _31_32 : register(b38)
{
    float4 _32_m0 : packoffset(c0);
    float4 _32_m1 : packoffset(c1);
    float4 _32_m2 : packoffset(c2);
    float4 _32_m3 : packoffset(c3);
    float4 _32_m4 : packoffset(c4);
    uint4 _32_m5 : packoffset(c5);
    float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(41, 3)]]
cbuffer _33_34 : register(b41)
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

[[vk::binding(45, 3)]]
cbuffer _35_36 : register(b45)
{
    column_major float4x4 _36_m0[32] : packoffset(c0);
    float4 _36_m1[32] : packoffset(c128);
    uint4 _36_m2[56] : packoffset(c160);
    int4 _36_m3 : packoffset(c216);
    float4 _36_m4 : packoffset(c217);
    float4 _36_m5[4] : packoffset(c218);
    float4 _36_m6 : packoffset(c222);
};

[[vk::binding(36, 3)]]
cbuffer _42_43 : register(b36)
{
    column_major float4x4 _43_m0 : packoffset(c0);
    float4 _43_m1 : packoffset(c4);
};

[[vk::binding(44, 3)]]
cbuffer _51_52 : register(b44)
{
    float4 _52_m0[32] : packoffset(c0);
    column_major float4x4 _52_m1[32] : packoffset(c32);
};

[[vk::binding(40, 3)]]
cbuffer _56_57 : register(b40)
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
[[vk::binding(33, 3)]] Texture2D<float4> _19 : register(t33);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11);
[[vk::binding(12, 3)]] Texture2D<float4> _21 : register(t12);
[[vk::binding(26, 3)]] Texture2D<float4> _22 : register(t26);
[[vk::binding(14, 3)]] Texture2DArray<float4> _23 : register(t14);
[[vk::binding(16, 3)]] Texture2D<float4> _37 : register(t16);
[[vk::binding(10, 3)]] Texture2D<float4> _38 : register(t10);
[[vk::binding(28, 3)]] Texture2D<float4> _39 : register(t28);
[[vk::binding(34, 3)]] Texture2D<float4> _40 : register(t34);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8);
[[vk::binding(15, 3)]] Texture3D<float4> _45 : register(t15);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9);
[[vk::binding(13, 3)]] Texture2D<float4> _47 : register(t13);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17);
[[vk::binding(32, 3)]] Texture2D<float4> _49 : register(t32);
[[vk::binding(18, 3)]] Texture2D<float4> _50 : register(t18);
[[vk::binding(25, 3)]] Texture3D<float4> _55 : register(t25);
[[vk::binding(35, 3)]] Texture2D<float4> _58 : register(t35);
[[vk::binding(7, 3)]] Texture2D<float4> _59 : register(t7);
[[vk::binding(24, 3)]] Texture3D<float4> _60 : register(t24);
[[vk::binding(21, 3)]] Texture3D<float4> _61 : register(t21);
[[vk::binding(23, 3)]] Texture3D<float4> _62 : register(t23);
[[vk::binding(20, 3)]] Texture3D<float4> _63 : register(t20);
[[vk::binding(22, 3)]] Texture3D<float4> _64 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _65 : register(t19);
[[vk::binding(6, 3)]] Texture2D<float4> _66 : register(t6);
[[vk::binding(31, 3)]] Texture2D<float4> _67 : register(t31);
[[vk::binding(30, 3)]] Texture2D<float4> _68 : register(t30);
[[vk::binding(29, 3)]] Texture2D<float4> _69 : register(t29);
[[vk::binding(27, 3)]] Texture3D<float4> _70 : register(t27);

static float4 gl_FragCoord;
static float2 _4;
static float4 _5;

struct SPIRV_Cross_Input
{
    float2 _4 : TEXCOORD0;
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
    uint2 _442 = uint2(gl_FragCoord.xy);
    int _445 = int(_442.x);
    int _446 = int(_442.y);
    int2 _448 = int3(_445, _446, 0).xy;
    float4 _450 = _67.Load(int3(_448, 0));
    float4 _452 = _68.Load(int3(_448, 0));
    float _455 = _450.x;
    float _456 = _450.y;
    float _457 = _450.z;
    float2 _460 = (_452.xy * 2.0f) - 1.0f.xx;
    float _464 = 1.0f - dot(1.0f.xx, abs(_460));
    float3 _466 = float3(_460.x, _464, _460.y);
    float3 _478;
    if (_464 < 0.0f)
    {
        float2 _473 = _466.xz;
        bool2 _474 = bool2(_473.x >= 0.0f.xx.x, _473.y >= 0.0f.xx.y);
        float2 _476 = (1.0f.xx - abs(_466.zx)) * float2(_474.x ? 1.0f.xx.x : (-1.0f).xx.x, _474.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _478 = float3(_476.x, _466.y, _476.y);
    }
    else
    {
        _478 = _466;
    }
    float3 _479 = normalize(_478);
    float _480 = _452.z;
    float2 _484 = float2(_442);
    float2 _489 = (_484 + 0.5f.xx) * _9_m0.zw;
    float2 _497 = gl_FragCoord.xy * _9_m0.zw;
    float2 _499 = (_497 * 2.0f) - 1.0f.xx;
    float4 _502 = float4(_499, _19.SampleLevel(_12, _489, 0.0f).x, 1.0f);
    _502.y = -_499.y;
    float4 _505 = mul(_7_m6, _502);
    float3 _509 = _505.xyz / _505.w.xxx;
    float _510 = _509.x;
    float _511 = _509.y;
    float4 _513 = float4(_510, _511, _509.z, 1.0f);
    float _516 = abs(mul(_7_m0, _513).z);
    float3 _531;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _531 = _7_m11.xyz - _509;
            break;
        }
        else
        {
            _531 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _532 = dot(_531, _531);
    float _534 = rsqrt(max(_532, 9.9999999392252902907785028219223e-09f));
    float3 _535 = _531 * _534;
    float _536 = _532 * _534;
    float3 _537 = -_535;
    bool _540 = _9_m129.x > 0.00048828125f;
    float2 _550;
    if (_540)
    {
        _550 = _66.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _550 = 1.0f.xx;
    }
    float _551 = dot(_479, float3(0.0f, -1.0f, 0.0f));
    float3 _607;
    float3 _608;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _578 = abs(_479.x);
        float _580 = abs(_479.y);
        float _582 = abs(_479.z);
        float3 _587 = float3(_578, _580, _582) * (1.0f / ((_578 + _580) + _582));
        float4 _600 = _45.SampleLevel(_14, _509 * _9_m124.x, 0.0f);
        float _601 = _600.x;
        _607 = float3(_601, _428, _428);
        _608 = ((((float3(0.0f, 0.0f, 1.0f) * _587.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _587.y)) + (float3(1.0f, 0.0f, 0.0f) * _587.z)) * ((_601 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_551)));
    }
    else
    {
        _607 = 0.0f.xxx;
        _608 = 0.0f.xxx;
    }
    float4 _622 = mul(_43_m0, float4((_509 + ((((_479 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_551, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _551), 0.100000001490116119384765625f, 1.0f)))) + _608, 1.0f));
    float2 _625 = (_622.xy * 0.5f) + 0.5f.xx;
    float4 _626 = float4(_625.x, _625.y, _622.z, _622.w);
    _626.y = 1.0f - _625.y;
    float _647;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _647 = _41.SampleCmpLevelZero(_17, (_626.xy + _43_m1.xy).xy, max(_622.z, 0.00048828125f));
    }
    else
    {
        _647 = 1.0f;
    }
    float _650 = _479.y;
    float _651 = clamp(_650, 0.0f, 1.0f);
    float _652 = lerp(_9_m125.w, 1.0f, _651);
    float2 _656 = _509.xz;
    float2 _661 = abs(_656 - _7_m11.xz);
    float _664 = max(_661.x, _661.y);
    float _674 = lerp(_652 * _647, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _664));
    float3 _681 = ddy_fine(_509);
    float3 _682 = ddx_fine(_509);
    float3 _683 = cross(_681, _682);
    float _689 = clamp((_683 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_683, _683)))).y, 0.0f, 1.0f);
    float _692 = _9_m118.z * 0.300000011920928955078125f;
    float _694 = _692 + 0.68599998950958251953125f;
    float _701 = 1.0f - clamp((_516 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _716 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_694, 0.9700000286102294921875f), 0.9900000095367431640625f, _651) + (smoothstep(0.990999996662139892578125f, 1.0f, _689) * step(_456, (_607.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _915;
    float _916;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_692 + 0.686999976634979248046875f, _694, _689) * smoothstep(-0.5f, -0.100000001490116119384765625f, _650)) > 0.00048828125f))
    {
        float3 _725 = abs(_479);
        float3 _726 = _725 * _725;
        float3 _731 = _726 * (1.0f / (_726.x + _726.z));
        float3 _733 = normalize(cross(_479, float3(0.0f, 1.0f, 0.0f)));
        float3 _735 = normalize(cross(_733, _479));
        float3 _751 = floor((_509 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _759 = frac(sin(dot(fmod(_751.xz + _751.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _763 = (step(0.0f.xx, _479.zx) * 2.0f) - 1.0f.xx;
        float3 _766 = _509;
        _766.x = _510 * _763.x;
        _766.z = _509.z * (-_763.y);
        float _778 = _607.x * _759;
        float2 _786 = float2(frac(((-_9_m118.x) * (((1.0f - _759) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_778 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_778 * 6.0f)));
        float _789 = floor(_759 * 5.0f) + 1.0f;
        float2 _793 = frac(float2(_789, 0.100000001490116119384765625f * _789) * _511);
        float2 _805 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _793 - (_786 - 1.0f.xx)), _786 - _793), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _793 - _786), (_786 + 1.0f.xx) - _793), step(_786, _793));
        float _806 = _805.x;
        float _808 = smoothstep(0.4000000059604644775390625f, 1.0f, _806 * _806);
        float _809 = _805.y;
        float _814 = (_809 * 2.0f) - 1.0f;
        float2 _823 = float2((_607.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _808) * _814), (1.0f.xx * _607.x).y * (_607.x + (((_808 * 0.00999999977648258209228515625f) * _808) * _814)));
        float4 _847 = (_46.SampleBias(_14, (_766.zy * _9_m119.xy) + _823, _9_m16) * _731.x) + (_46.SampleBias(_14, (_766.xy * _9_m119.xy) + _823, _9_m16) * _731.z);
        float2 _850 = (_847.xy * 2.0f) - 1.0f.xx;
        float _856 = _847.w;
        float _866 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_809 + (((_808 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_856 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_814 * _856) * 0.5f) + _808, 0.0f, 1.0f)));
        float _872 = _847.z;
        float _882 = (((lerp(0.100000001490116119384765625f, (_866 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _866, 0.0f, 1.0f), 5.0f), _872)) * _872) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_674 * step(0.04500000178813934326171875f, _457))) * _701);
        float2 _885 = _850.xy;
        float _890 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_885, _885), 0.0f, 1.0f)));
        float3 _891 = float3(_850, _890);
        float2 _895 = _891.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _882) * _9_m118.y);
        float3 _896 = float3(_895.x, _895.y, _891.z);
        _896.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _890, _882);
        _915 = lerp(_479, mul(float4x4(float4(_733.x, _735.x, _479.x, 0.0f), float4(_733.y, _735.y, _650, 0.0f), float4(_733.z, _735.z, _479.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_896 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_896, _896))), 0.0f)).xyz, _882.xxx);
        _916 = (_882 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _915 = _479;
        _916 = 0.0f;
    }
    float3 _1064;
    float _1065;
    [branch]
    if (_716 > 0.00048828125f)
    {
        float2 _923 = (-_656) * _9_m123.xy;
        float2 _925 = frac(_923);
        float2 _972;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _935 = frac(sin(dot(fmod(floor(_923), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _948 = floor(frac(_9_m122.x + _935) * (_9_m123.z * _9_m123.z));
            float _950 = 1.0f / _9_m123.z;
            _972 = ((_47.SampleBias(_13, frac((lerp(_925, _925.yx, step(_935, 0.5f).xx) * _950) + float2(_950 * fmod(_948, _9_m123.z), _950 * ((_9_m123.z - 1.0f) - floor(_948 * _950)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _972 = 0.0f.xx;
        }
        float2 _1013;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _998 = _47.SampleBias(_14, (_923 + float2(0.0f, _9_m122.z)) + ((float2(_607.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _1002 = _47.SampleBias(_14, (_923 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _607.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _1008 = (((float4(_998.z, _998.w, _1002.z, _1002.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _607.x;
            _1013 = _972 + (_1008.xy + _1008.zw);
        }
        else
        {
            _1013 = _972;
        }
        float _1021 = (((_607.x * 0.699999988079071044921875f) + (_480 * 0.300000011920928955078125f)) * clamp((_480 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _456;
        float _1025 = smoothstep(min(_1021, 0.9900000095367431640625f), clamp(_1021 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _1036 = _9_m117.x * _716;
        float3 _1046 = float3(_1013, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1013, _1013), 0.0f, 1.0f))));
        float3 _1052 = (_1046 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1046, _1046)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _1064 = lerp(_479, _1052, (((_1036 * _1025) * _674) * _701).xxx);
        _1065 = max((smoothstep(0.0f, _456 * 0.20000000298023223876953125f, (_1036 * clamp(lerp((_9_m123.w * (1.0f - _607.x)) * 0.5f, 1.0f, _1025) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1052.y) * _674) * _701, 0.0f);
    }
    else
    {
        _1064 = _915;
        _1065 = 0.0f;
    }
    float _1068 = min(_550.x, _550.y);
    float2 _1070 = _550 * (1.0f - lerp(lerp(_9_m125.z * _652, 1.0f, _674), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _664)));
    float _1071 = _1070.x;
    float _1074 = clamp((_457 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _1075 = 1.0f - _480;
    float _1091 = lerp(clamp((clamp((_1075 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _916)) + ((_1065 * 0.100000001490116119384765625f) * _480), 0.0f, 1.0f), 1.0f, _455);
    float _1093 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _551);
    float _1102 = lerp(1.0f, 0.25f, ((_9_m117.x * _1091) * (1.0f - _455)) * _1093);
    float _1118 = (1.0f - lerp(_1075, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1091) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1075)), 0.0f, 1.0f), _1075, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1093) * (1.0f - _1071))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1065, smoothstep(0.0f, 0.0500000007450580596923828125f, _916)));
    float _1123;
    float _1124;
    if (_540)
    {
        _1123 = lerp(1.0f, _550.y, _1074);
        _1124 = lerp(1.0f, 0.0f, _1074);
    }
    else
    {
        _1123 = 1.0f;
        _1124 = 1.0f;
    }
    float _1129 = lerp(lerp(min(_1123, _1118), _1118, _1068), _480, _1071);
    float3 _1131 = _69.Load(int3(_448, 0)).xyz * lerp(lerp(min(_1124, _1102), _1102, _1068), 1.0f, _1071);
    float3 _1132 = _1131 * _455;
    float3 _1133 = _1131 - _1132;
    float3 _1137 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _455)).xxx + _1132;
    float _1138 = dot(_1064, _535);
    float _1139 = max(0.0f, _1138);
    float _1140 = _1129 * _1129;
    float _1141 = _1139 * _1139;
    float _1142 = _1141 * _1139;
    float2 _1143 = float2(1.0f, _1139);
    float2 _1146 = float2(1.0f, _1140);
    float _1147 = _1140 * _1140;
    float3 _1149 = float3(1.0f, _1140, _1147 * _1140);
    float _1154 = dot(mul(_1143, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1146) / dot(mul(float3(1.0f, _1141, _1142), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1149);
    float _1159 = dot(mul(_1143, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1146) / dot(mul(float3(1.0f, _1139, _1142), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1149);
    float3 _1162 = (_1137 * _1154) + _1159.xxx;
    float _1163 = _1154 + _1159;
    float4 _1176 = _38.Load(int3(_448, 0));
    float _1177 = _1176.x;
    float4 _1315;
    if (_1177 > 0.001000000047497451305389404296875f)
    {
        float3 _1187 = reflect(_537, _1064);
        float3 _1188 = -_32_m0.xyz;
        float _1193 = dot(_1188, _1187);
        float3 _1195 = _1187 - (_1188 * _1193);
        bool3 _1197 = (_1193 < _32_m4.z).xxx;
        float3 _1205 = normalize((_1188 * _32_m4.z) + ((_1195 * rsqrt(max(6.103515625e-05f, dot(_1195, _1195)))) * _32_m4.y));
        float3 _1206 = float3(_1197.x ? _1205.x : _1187.x, _1197.y ? _1205.y : _1187.y, _1197.z ? _1205.z : _1187.z);
        float3 _1210 = _1206 + _535;
        float3 _1214 = _1210 * rsqrt(max(6.103515625e-05f, dot(_1210, _1210)));
        float _1217 = clamp(dot(_1206, _1064), 0.0f, 1.0f);
        float _1219 = clamp(dot(_1064, _1214), 0.0f, 1.0f);
        float _1222 = clamp(_1138, 0.0f, 1.0f);
        float _1243 = (((_1219 * _1147) - _1219) * _1219) + 1.0f;
        float _1246 = 1.0f - clamp(dot(_535, _1214), 0.0f, 1.0f);
        float _1247 = _1246 * _1246;
        float _1249 = (_1246 * _1247) * _1247;
        float _1273 = 1.0f - _1129;
        float _1280 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1273 * (1.04997003078460693359375f + (_1273 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1273))))));
        float _1281 = 1.0f - _1280;
        float3 _1284 = _1137 + ((1.0f.xxx - _1137) * 0.0476190485060214996337890625f);
        float3 _1300 = ((clamp((min(((_1137 * (1.0f - _1249)) + _1249.xxx) * ((_1147 / (_1243 * _1243)) * (0.5f / (((_1217 * sqrt(((((-_1222) * _1147) + _1222) * _1222) + _1147)) + (_1222 * sqrt(((((-_1217) * _1147) + _1217) * _1217) + _1147))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1284 * (((_48.SampleLevel(_13, (float2(_1222, _1129) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1217, _1129) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1280) / _1281)) * _1284) / (1.0f.xxx - (_1284 * _1281)))) * _32_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1217) + ((_1133 * 1.0f) * clamp(dot(_1206, _479), 0.0f, 1.0f))) * _32_m1.xyz;
        float3 _1313 = lerp(_1300, _1300 * _40.SampleBias(_13, float2(_1177, 0.5f), _9_m16).xyz, (1.0f - _1177).xxx) * min(_49.SampleLevel(_13, _497, 0.0f).x, 1.0f);
        _1315 = float4(_1313.x, _1313.y, _1313.z, 0.0f.xxxx.w);
    }
    else
    {
        _1315 = 0.0f.xxxx;
    }
    float2 _1317 = floor(_484 * 0.03125f);
    int _1325 = int((_1317.x + (_1317.y * _30_m5)) * 8.0f);
    float _1332 = floor(_516 - (_9_m3.y * _30_m11));
    float _1336 = clamp(_1332, 0.0f, _30_m7 - 1.0f);
    int _1338 = int(_1336 * 8.0f);
    float4 _1344 = _39.SampleBias(_13, _489, _9_m16);
    float3 _1346;
    float _1349;
    _1346 = 0.0f.xxx;
    _1349 = 1.0f;
    float3 _1347;
    float _1350;
    [loop]
    for (int _1351 = 0; _1351 <= 7; _1346 = _1347, _1349 = _1350, _1351++)
    {
        uint _1369 = (_1332 <= _1336) ? (_25.Load(uint(_1325 + _1351) * 4 + 0) & _25.Load(uint((_9_m21.y + _1338) + _1351) * 4 + 0)) : 0u;
        uint _1370 = uint(_1351);
        float3 _1374;
        _1350 = _1349;
        _1374 = 0.0f.xxx;
        uint _1377;
        float _1372;
        float3 _1375;
        [loop]
        for (uint _1376 = _1369; _1376 != 0u; _1350 = _1372, _1374 = _1375, _1376 = _1377)
        {
            uint _1381 = firstbitlow(_1376);
            _1377 = _1376 ^ (1u << (_1381 & 31u));
            int _1387 = int((32u * _1370) + _1381) * 8;
            int _1390 = _1387 + 1;
            int _1393 = _1387 + 2;
            int _1396 = _1387 + 3;
            int _1399 = _1387 + 5;
            int _1402 = _1387 + 6;
            int _1405 = _1387 + 7;
            uint _1409 = uint(_32_m6[_1399].w);
            float _1484;
            if ((_1409 & 1u) == 1u)
            {
                uint _1415 = asuint(_32_m6[_1399].x);
                uint _1422 = asuint(_32_m6[_1399].y);
                uint _1429 = asuint(_32_m6[_1399].z);
                uint _1436 = asuint(_32_m6[_1402].x);
                uint _1443 = asuint(_32_m6[_1402].y);
                uint _1450 = asuint(_32_m6[_1402].z);
                float3 _1469 = abs(mul(float4(_509 - _32_m6[_1390].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1415).x, spvUnpackHalf2x16(_1429).x, spvUnpackHalf2x16(_1443).x, 0.0f), float4(spvUnpackHalf2x16(_1415 >> 16u).x, spvUnpackHalf2x16(_1429 >> 16u).x, spvUnpackHalf2x16(_1443 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1422).x, spvUnpackHalf2x16(_1436).x, spvUnpackHalf2x16(_1450).x, 0.0f), float4(spvUnpackHalf2x16(_1422 >> 16u).x, spvUnpackHalf2x16(_1436 >> 16u).x, spvUnpackHalf2x16(_1450 >> 16u).x, 0.0f))).xyz);
                float _1476 = _32_m6[_1405].x * 0.5f;
                float _1482 = 1.0f - clamp((max(max(_1469.x, _1469.y), _1469.z) - (_1476 + 0.5f)) / (0.5f - _1476), 0.0f, 1.0f);
                _1484 = _1482 * _1482;
            }
            else
            {
                _1484 = 1.0f;
            }
            bool _1488 = _32_m6[_1396].z > 0.5f;
            if ((false || (_1484 < 0.001000000047497451305389404296875f)) || _1488)
            {
                _1372 = _1350;
                _1375 = _1374;
                continue;
            }
            float _2661;
            float3 _2662;
            if (_32_m6[_1387].w < 1.5f)
            {
                float3 _1996 = float3(0.100000001490116119384765625f, _1129, 1.0f);
                float _2005 = (0.5f + (0.5f * _32_m6[_1393].y)) - abs(_32_m6[_1393].x);
                float _2006 = _32_m6[_1393].y - _2005;
                float _2010 = (1.0f - abs(_2005)) - abs(_2006);
                bool _2012 = _32_m6[_1393].x >= 0.0f;
                float _2013 = abs(max(_2010, 0.00048828125f));
                float3 _2017 = normalize(float3(_2005, _2006, _2012 ? _2013 : (-_2013)));
                float3 _2018 = _32_m6[_1390].xyz - _509;
                float _2019 = dot(_2018, _2018);
                float _2020 = rsqrt(_2019);
                float3 _2021 = _2018 * _2020;
                float _2025 = clamp(_32_m6[_1405].y * _2020, 0.0f, 1.0f);
                float _2028 = clamp(dot(_1064, _2021), 0.0f, 1.0f);
                int _2030 = int(_32_m6[_1405].w);
                float3 _2031 = _2017 * _32_m6[_1393].z;
                float3 _2032 = _2031 * 0.5f;
                float3 _2033 = _2018 - _2032;
                float3 _2034 = _2018 + _2032;
                bool _2037 = (uint(_32_m6[_1387].w) & 1u) == 0u;
                bool _2040 = _2037 || ((_1409 & 2u) != 0u);
                bool _2043 = (!_2037) && (_32_m6[_1393].z > 0.0f);
                float _2062;
                float _2063;
                if (_2043)
                {
                    float _2047 = length(_2033);
                    float _2048 = length(_2034);
                    _2062 = clamp(0.5f * ((dot(_1064, _2033) / _2047) + (dot(_1064, _2034) / _2048)), 0.0f, 1.0f);
                    _2063 = 1.0f / ((((_2047 * _2048) + dot(_2033, _2034)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2062 = _2028;
                    _2063 = 1.0f;
                }
                float _2085;
                if (_32_m6[_1402].w < 0.0f)
                {
                    float _2079 = _2019 * (_32_m6[_1390].w * _32_m6[_1390].w);
                    float _2082 = clamp(1.0f - (_2079 * _2079), 0.0f, 1.0f);
                    _2085 = lerp(1.0f / (_2019 + 1.0f), _2063, float(_2043)) * (_2082 * _2082);
                }
                else
                {
                    float3 _2068 = _2018 * _32_m6[_1390].w;
                    _2085 = _2063 * pow(1.0f - clamp(dot(_2068, _2068), 0.0f, 1.0f), _32_m6[_1402].w);
                }
                float _2091 = clamp((dot(_2021, -_2017) - _32_m6[_1393].z) * _32_m6[_1393].w, 0.0f, 1.0f);
                float _2095 = _2085 * lerp(1.0f, _2091 * _2091, float(_2037));
                float _2195;
                if ((!_2043) && (_2030 >= 0))
                {
                    uint _2101 = uint(_2030);
                    float2 _2188;
                    [branch]
                    if (_2037)
                    {
                        float4 _2178 = mul(_52_m1[_2101], _513);
                        _2188 = _52_m0[_2101].xy + (clamp(_2178.xy / _2178.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_2101].zw);
                    }
                    else
                    {
                        float3 _2115 = mul(float4(-_2018, 0.0f), _52_m1[_2101]).xyz;
                        float3 _434 = _2115;
                        float3 _433 = _2115;
                        float3 _432 = abs(_2115);
                        uint _2124 = uint(int(_432.y > _432.x));
                        uint _2130 = (_432.z > _432[_2124]) ? 2u : _2124;
                        uint _2136 = (_2130 * 2u) + uint(_433[_2130] < 0.0f);
                        float _2140 = abs(_434[_2136 / 2u]);
                        float _2160 = 0.5f - (0.000244140625f / _52_m0[_2101].w);
                        _2188 = _52_m0[_2101].xy + (clamp(float2((float(_2136) + ((((_434[uint(_380[_2136].x)] * _381[_2136].x) / _2140) * _2160) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_434[uint(_380[_2136].y)] * _381[_2136].y) / _2140) * _2160)), 0.0f.xx, 1.0f.xx) * _52_m0[_2101].zw);
                    }
                    _2195 = _2095 * _50.SampleLevel(_13, _2188, 0.0f).x;
                }
                else
                {
                    _2195 = _2095;
                }
                bool _2196 = _2195 > 0.0f;
                float _2504;
                if (_2196)
                {
                    int _2248;
                    if (_2040)
                    {
                        _2248 = int(_32_m6[_1396].x);
                    }
                    else
                    {
                        uint _2203 = asuint(_32_m6[_1393].w);
                        uint _2205 = asuint(_32_m6[_1396].x);
                        float3 _2206 = _509 - _32_m6[_1390].xyz;
                        float3 _2207 = abs(_2206);
                        float _2208 = _2207.x;
                        float _2209 = _2207.y;
                        float _2211 = _2207.z;
                        int _2243;
                        if ((_2208 > _2209) && (_2208 > _2211))
                        {
                            _2243 = int((_2206.x > 0.0f) ? (_2203 >> 24u) : ((_2203 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2235;
                            if (_2209 > _2211)
                            {
                                _2235 = int((_2206.y > 0.0f) ? ((_2203 >> 8u) & 255u) : (_2203 & 255u));
                            }
                            else
                            {
                                _2235 = int((_2206.z > 0.0f) ? ((_2205 >> 8u) & 255u) : (_2205 & 255u));
                            }
                            _2243 = _2235;
                        }
                        _2248 = (_2243 < 80) ? _2243 : (-1);
                    }
                    float _2502;
                    do
                    {
                        if (_36_m2[_2248].y > 0u)
                        {
                            uint _2266 = uint(_2248);
                            float4 _431 = _1344;
                            float _2277;
                            do
                            {
                                if (_36_m2[_2266].y == 0u)
                                {
                                    _2277 = 1.0f;
                                    break;
                                }
                                _2277 = _431[_36_m2[_2266].y - 1u];
                                break;
                            } while(false);
                            _2502 = _2277;
                            break;
                        }
                        float4 _2284 = mul(_34_m10[_2248], float4((_509 - ((-_2021) * _34_m11[_2248].x)) + (_1064 * (_34_m11[_2248].y * 5.0f)), 1.0f));
                        float _2285 = _2284.w;
                        float3 _2288 = _2284.xyz / _2285.xxx;
                        float2 _2289 = _2288.xy;
                        float3 _2297 = _2288.xyz;
                        bool3 _2298 = bool3(_2297.x <= 0.0f.xxx.x, _2297.y <= 0.0f.xxx.y, _2297.z <= 0.0f.xxx.z);
                        bool3 _2299 = bool3(_2297.x >= 1.0f.xxx.x, _2297.y >= 1.0f.xxx.y, _2297.z >= 1.0f.xxx.z);
                        float _2302 = _2288.z;
                        float2 _2313 = ((_2289 * (_34_m12[_2248].zw - _34_m12[_2248].xy)) + _34_m12[_2248].xy).xy * _34_m13.zw;
                        float2 _2315 = floor(_2313 + 0.5f.xx);
                        float2 _2316 = _2313 - _2315;
                        float _2317 = _2316.x;
                        float _2318 = _2317 + 0.5f;
                        float _2319 = _2318 * _2318;
                        float _2322 = 1.0f - _2317;
                        float _2323 = min(_2317, 0.0f);
                        float _2326 = _2317 + 1.0f;
                        float _2327 = max(_2317, 0.0f);
                        float _2338 = _2316.y;
                        float _2339 = _2338 + 0.5f;
                        float _2340 = _2339 * _2339;
                        float _2343 = 1.0f - _2338;
                        float _2344 = min(_2338, 0.0f);
                        float _2347 = _2338 + 1.0f;
                        float _2348 = max(_2338, 0.0f);
                        float3 _2360 = float3(0.1599999964237213134765625f * _2322, 0.1599999964237213134765625f * ((_2326 - (_2327 * _2327)) + 1.0f), _2319 * 0.07999999821186065673828125f);
                        float3 _2361 = float3(0.1599999964237213134765625f * ((_2319 * 0.5f) - _2317), 0.1599999964237213134765625f * ((_2322 - (_2323 * _2323)) + 1.0f), 0.1599999964237213134765625f * _2326) + _2360;
                        float3 _2363 = float3(0.1599999964237213134765625f * _2343, 0.1599999964237213134765625f * ((_2347 - (_2348 * _2348)) + 1.0f), _2340 * 0.07999999821186065673828125f);
                        float3 _2364 = float3(0.1599999964237213134765625f * ((_2340 * 0.5f) - _2338), 0.1599999964237213134765625f * ((_2343 - (_2344 * _2344)) + 1.0f), 0.1599999964237213134765625f * _2347) + _2363;
                        float3 _2370 = ((_2360 / _2361) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                        float3 _2372 = ((_2363 / _2364) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                        float2 _2374 = _2315 * _34_m13.xy;
                        float _2375 = _2370.x;
                        float _2376 = _2372.x;
                        float2 _2378 = _2374 + float2(_2375, _2376);
                        float _2379 = _2370.y;
                        float2 _2381 = _2374 + float2(_2379, _2376);
                        float _2382 = _2370.z;
                        float2 _2384 = _2374 + float2(_2382, _2376);
                        float _2385 = _2372.y;
                        float2 _2387 = _2374 + float2(_2375, _2385);
                        float2 _2389 = _2374 + float2(_2379, _2385);
                        float2 _2391 = _2374 + float2(_2382, _2385);
                        float _2392 = _2372.z;
                        float2 _2394 = _2374 + float2(_2375, _2392);
                        float2 _2396 = _2374 + float2(_2379, _2392);
                        float2 _2398 = _2374 + float2(_2382, _2392);
                        float _2399 = _2361.x;
                        float _2400 = _2364.x;
                        float _2402 = _2361.y;
                        float _2404 = _2361.z;
                        float _2406 = _2364.y;
                        float _2410 = _2364.z;
                        float _2476 = ((((((((_2399 * _2400) * _37.SampleCmpLevelZero(_16, float3(_2378, _424).xy, _2302)) + ((_2402 * _2400) * _37.SampleCmpLevelZero(_16, float3(_2381, _424).xy, _2302))) + ((_2404 * _2400) * _37.SampleCmpLevelZero(_16, float3(_2384, _424).xy, _2302))) + ((_2399 * _2406) * _37.SampleCmpLevelZero(_16, float3(_2387, _424).xy, _2302))) + ((_2402 * _2406) * _37.SampleCmpLevelZero(_16, float3(_2389, _424).xy, _2302))) + ((_2404 * _2406) * _37.SampleCmpLevelZero(_16, float3(_2391, _424).xy, _2302))) + ((_2399 * _2410) * _37.SampleCmpLevelZero(_16, float3(_2394, _424).xy, _2302))) + ((_2402 * _2410) * _37.SampleCmpLevelZero(_16, float3(_2396, _424).xy, _2302));
                        float2 _2489 = min(_2289, 1.0f.xx - _2289);
                        _2502 = lerp(1.0f, (any(bool3(_2298.x || _2299.x, _2298.y || _2299.y, _2298.z || _2299.z)) || ((asuint(_2302) & 2147483647u) > 2139095040u)) ? 1.0f : (_2476 + ((_2404 * _2410) * _37.SampleCmpLevelZero(_16, float3(_2398, _424).xy, _2302))), _2040 ? min(_34_m11[_2248].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_2248].z - _2285) * 0.25f, min(_2489.x, _2489.y)))) : _34_m11[_2248].w);
                        break;
                    } while(false);
                    _2504 = (_2248 >= 0) ? _2502 : 1.0f;
                }
                else
                {
                    _2504 = 1.0f;
                }
                float3 _2528;
                float3 _2529;
                if (_2043)
                {
                    float3 _2507 = _1996 * _1996;
                    float3 _2508 = reflect(_537, _1064);
                    float _2517 = dot(_2508, _2031);
                    _2528 = _2507 / clamp(_2507 + (0.5f * clamp(_32_m6[_1393].z * _2020, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2529 = normalize(_2033 + (_2031 * clamp(dot(_2033, (_2508 * _2517) - _2031) / ((_32_m6[_1393].z * _32_m6[_1393].z) - (_2517 * _2517)), 0.0f, 1.0f)));
                }
                else
                {
                    _2528 = 1.0f.xxx;
                    _2529 = _2021;
                }
                float3 _2530 = _2529 + _535;
                float3 _2534 = _2530 * rsqrt(max(6.103515625e-05f, dot(_2530, _2530)));
                float _2536 = abs(max(_2010, 5.9604644775390625e-08f));
                float3 _2542 = (normalize(float3(_2005, _2006, _2012 ? _2536 : (-_2536))) * _32_m6[_1393].z) * 0.5f;
                float3 _2543 = _2018 - _2542;
                float3 _2544 = _2018 + _2542;
                float _2556;
                if (_2043)
                {
                    _2556 = clamp(0.5f * ((dot(_1064, _2543) / length(_2543)) + (dot(_1064, _2544) / length(_2544))), 0.0f, 1.0f);
                }
                else
                {
                    _2556 = _2028;
                }
                float3 _2660;
                if (_2196)
                {
                    float _2559 = clamp(_2062, 0.0f, 1.0f);
                    float _2561 = clamp(dot(_1064, _2534), 0.0f, 1.0f);
                    float _2563 = clamp(dot(_535, _2534), 0.0f, 1.0f);
                    float _2564 = clamp(_1138, 0.0f, 1.0f);
                    float _2574;
                    if (_2025 > 0.0f)
                    {
                        _2574 = clamp(_1140 + ((_2025 * _2025) / ((_2563 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2574 = _1140;
                    }
                    float _2575 = _2574 * _2574;
                    float _2596 = (((_2561 * _2575) - _2561) * _2561) + 1.0f;
                    float _2601 = 1.0f - _2563;
                    float _2602 = _2601 * _2601;
                    float _2604 = (_2601 * _2602) * _2602;
                    float _2628 = 1.0f - _1129;
                    float _2635 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2628 * (1.04997003078460693359375f + (_2628 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2628))))));
                    float _2636 = 1.0f - _2635;
                    float3 _2639 = _1137 + ((1.0f.xxx - _1137) * 0.0476190485060214996337890625f);
                    float3 _2659 = ((clamp((min(((_1137 * (1.0f - _2604)) + _2604.xxx) * (((_2575 / (_2596 * _2596)) * _2528.y) * (0.5f / (((_2559 * sqrt(((((-_2564) * _2575) + _2564) * _2564) + _2575)) + (_2564 * sqrt(((((-_2559) * _2575) + _2559) * _2559) + _2575))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2639 * (((_48.SampleLevel(_13, (float2(_2564, _1129) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_2559, _1129) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2635) / _2636)) * _2639) / (1.0f.xxx - (_2639 * _2636)))) * _32_m6[_1405].z, 0.0f.xxx, 1000.0f.xxx) * _2062) + ((_1133 * _2528.z) * _2556)) * (((_32_m6[_1387].xyz * _2195) * _2504) * _1484);
                    _2660 = _2659;
                }
                else
                {
                    _2660 = 0.0f.xxx;
                }
                _2661 = _1350;
                _2662 = _2660;
            }
            else
            {
                float _1994;
                do
                {
                    if (_1488)
                    {
                        _1994 = 1.0f;
                        break;
                    }
                    float _1508 = (0.5f + (0.5f * _32_m6[_1393].y)) - abs(_32_m6[_1393].x);
                    float _1509 = _32_m6[_1393].y - _1508;
                    float _1516 = abs(max((1.0f - abs(_1508)) - abs(_1509), 0.00048828125f));
                    float3 _1520 = normalize(float3(_1508, _1509, (_32_m6[_1393].x >= 0.0f) ? _1516 : (-_1516)));
                    float3 _1521 = _32_m6[_1390].xyz - _509;
                    float _1522 = dot(_1521, _1521);
                    float3 _1524 = _1521 * rsqrt(_1522);
                    int _1527 = int(_32_m6[_1405].w);
                    float3 _1529 = (_1520 * _32_m6[_1393].z) * 0.5f;
                    float3 _1530 = _1521 - _1529;
                    float3 _1531 = _1521 + _1529;
                    bool _1534 = (uint(_32_m6[_1387].w) & 1u) == 0u;
                    bool _1537 = _1534 || ((_1409 & 2u) != 0u);
                    bool _1540 = (!_1534) && (_32_m6[_1393].z > 0.0f);
                    float _1552;
                    if (_1540)
                    {
                        _1552 = 1.0f / ((((length(_1530) * length(_1531)) + dot(_1530, _1531)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _1552 = 1.0f;
                    }
                    float _1574;
                    if (_32_m6[_1402].w < 0.0f)
                    {
                        float _1568 = _1522 * (_32_m6[_1390].w * _32_m6[_1390].w);
                        float _1571 = clamp(1.0f - (_1568 * _1568), 0.0f, 1.0f);
                        _1574 = lerp(1.0f / (_1522 + 1.0f), _1552, float(_1540)) * (_1571 * _1571);
                    }
                    else
                    {
                        float3 _1557 = _1521 * _32_m6[_1390].w;
                        _1574 = _1552 * pow(1.0f - clamp(dot(_1557, _1557), 0.0f, 1.0f), _32_m6[_1402].w);
                    }
                    float _1580 = clamp((dot(_1524, -_1520) - _32_m6[_1393].z) * _32_m6[_1393].w, 0.0f, 1.0f);
                    float _1584 = _1574 * lerp(1.0f, _1580 * _1580, float(_1534));
                    float _1684;
                    if ((!_1540) && (_1527 >= 0))
                    {
                        uint _1590 = uint(_1527);
                        float2 _1677;
                        [branch]
                        if (_1534)
                        {
                            float4 _1667 = mul(_52_m1[_1590], _513);
                            _1677 = _52_m0[_1590].xy + (clamp(_1667.xy / _1667.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_1590].zw);
                        }
                        else
                        {
                            float3 _1604 = mul(float4(-_1521, 0.0f), _52_m1[_1590]).xyz;
                            float3 _438 = _1604;
                            float3 _437 = _1604;
                            float3 _436 = abs(_1604);
                            uint _1613 = uint(int(_436.y > _436.x));
                            uint _1619 = (_436.z > _436[_1613]) ? 2u : _1613;
                            uint _1625 = (_1619 * 2u) + uint(_437[_1619] < 0.0f);
                            float _1629 = abs(_438[_1625 / 2u]);
                            float _1649 = 0.5f - (0.000244140625f / _52_m0[_1590].w);
                            _1677 = _52_m0[_1590].xy + (clamp(float2((float(_1625) + ((((_438[uint(_380[_1625].x)] * _381[_1625].x) / _1629) * _1649) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_438[uint(_380[_1625].y)] * _381[_1625].y) / _1629) * _1649)), 0.0f.xx, 1.0f.xx) * _52_m0[_1590].zw);
                        }
                        _1684 = _1584 * _50.SampleLevel(_13, _1677, 0.0f).x;
                    }
                    else
                    {
                        _1684 = _1584;
                    }
                    float _1993;
                    if (_1684 > 0.0f)
                    {
                        int _1737;
                        if (_1537)
                        {
                            _1737 = int(_32_m6[_1396].x);
                        }
                        else
                        {
                            uint _1692 = asuint(_32_m6[_1393].w);
                            uint _1694 = asuint(_32_m6[_1396].x);
                            float3 _1695 = _509 - _32_m6[_1390].xyz;
                            float3 _1696 = abs(_1695);
                            float _1697 = _1696.x;
                            float _1698 = _1696.y;
                            float _1700 = _1696.z;
                            int _1732;
                            if ((_1697 > _1698) && (_1697 > _1700))
                            {
                                _1732 = int((_1695.x > 0.0f) ? (_1692 >> 24u) : ((_1692 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1724;
                                if (_1698 > _1700)
                                {
                                    _1724 = int((_1695.y > 0.0f) ? ((_1692 >> 8u) & 255u) : (_1692 & 255u));
                                }
                                else
                                {
                                    _1724 = int((_1695.z > 0.0f) ? ((_1694 >> 8u) & 255u) : (_1694 & 255u));
                                }
                                _1732 = _1724;
                            }
                            _1737 = (_1732 < 80) ? _1732 : (-1);
                        }
                        float _1991;
                        do
                        {
                            if (_36_m2[_1737].y > 0u)
                            {
                                uint _1755 = uint(_1737);
                                float4 _435 = _1344;
                                float _1766;
                                do
                                {
                                    if (_36_m2[_1755].y == 0u)
                                    {
                                        _1766 = 1.0f;
                                        break;
                                    }
                                    _1766 = _435[_36_m2[_1755].y - 1u];
                                    break;
                                } while(false);
                                _1991 = _1766;
                                break;
                            }
                            float4 _1773 = mul(_34_m10[_1737], float4((_509 - ((-_1524) * _34_m11[_1737].x)) + (_479 * (_34_m11[_1737].y * 5.0f)), 1.0f));
                            float _1774 = _1773.w;
                            float3 _1777 = _1773.xyz / _1774.xxx;
                            float2 _1778 = _1777.xy;
                            float3 _1786 = _1777.xyz;
                            bool3 _1787 = bool3(_1786.x <= 0.0f.xxx.x, _1786.y <= 0.0f.xxx.y, _1786.z <= 0.0f.xxx.z);
                            bool3 _1788 = bool3(_1786.x >= 1.0f.xxx.x, _1786.y >= 1.0f.xxx.y, _1786.z >= 1.0f.xxx.z);
                            float _1791 = _1777.z;
                            float2 _1802 = ((_1778 * (_34_m12[_1737].zw - _34_m12[_1737].xy)) + _34_m12[_1737].xy).xy * _34_m13.zw;
                            float2 _1804 = floor(_1802 + 0.5f.xx);
                            float2 _1805 = _1802 - _1804;
                            float _1806 = _1805.x;
                            float _1807 = _1806 + 0.5f;
                            float _1808 = _1807 * _1807;
                            float _1811 = 1.0f - _1806;
                            float _1812 = min(_1806, 0.0f);
                            float _1815 = _1806 + 1.0f;
                            float _1816 = max(_1806, 0.0f);
                            float _1827 = _1805.y;
                            float _1828 = _1827 + 0.5f;
                            float _1829 = _1828 * _1828;
                            float _1832 = 1.0f - _1827;
                            float _1833 = min(_1827, 0.0f);
                            float _1836 = _1827 + 1.0f;
                            float _1837 = max(_1827, 0.0f);
                            float3 _1849 = float3(0.1599999964237213134765625f * _1811, 0.1599999964237213134765625f * ((_1815 - (_1816 * _1816)) + 1.0f), _1808 * 0.07999999821186065673828125f);
                            float3 _1850 = float3(0.1599999964237213134765625f * ((_1808 * 0.5f) - _1806), 0.1599999964237213134765625f * ((_1811 - (_1812 * _1812)) + 1.0f), 0.1599999964237213134765625f * _1815) + _1849;
                            float3 _1852 = float3(0.1599999964237213134765625f * _1832, 0.1599999964237213134765625f * ((_1836 - (_1837 * _1837)) + 1.0f), _1829 * 0.07999999821186065673828125f);
                            float3 _1853 = float3(0.1599999964237213134765625f * ((_1829 * 0.5f) - _1827), 0.1599999964237213134765625f * ((_1832 - (_1833 * _1833)) + 1.0f), 0.1599999964237213134765625f * _1836) + _1852;
                            float3 _1859 = ((_1849 / _1850) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                            float3 _1861 = ((_1852 / _1853) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                            float2 _1863 = _1804 * _34_m13.xy;
                            float _1864 = _1859.x;
                            float _1865 = _1861.x;
                            float2 _1867 = _1863 + float2(_1864, _1865);
                            float _1868 = _1859.y;
                            float2 _1870 = _1863 + float2(_1868, _1865);
                            float _1871 = _1859.z;
                            float2 _1873 = _1863 + float2(_1871, _1865);
                            float _1874 = _1861.y;
                            float2 _1876 = _1863 + float2(_1864, _1874);
                            float2 _1878 = _1863 + float2(_1868, _1874);
                            float2 _1880 = _1863 + float2(_1871, _1874);
                            float _1881 = _1861.z;
                            float2 _1883 = _1863 + float2(_1864, _1881);
                            float2 _1885 = _1863 + float2(_1868, _1881);
                            float2 _1887 = _1863 + float2(_1871, _1881);
                            float _1888 = _1850.x;
                            float _1889 = _1853.x;
                            float _1891 = _1850.y;
                            float _1893 = _1850.z;
                            float _1895 = _1853.y;
                            float _1899 = _1853.z;
                            float _1965 = ((((((((_1888 * _1889) * _37.SampleCmpLevelZero(_16, float3(_1867, _424).xy, _1791)) + ((_1891 * _1889) * _37.SampleCmpLevelZero(_16, float3(_1870, _424).xy, _1791))) + ((_1893 * _1889) * _37.SampleCmpLevelZero(_16, float3(_1873, _424).xy, _1791))) + ((_1888 * _1895) * _37.SampleCmpLevelZero(_16, float3(_1876, _424).xy, _1791))) + ((_1891 * _1895) * _37.SampleCmpLevelZero(_16, float3(_1878, _424).xy, _1791))) + ((_1893 * _1895) * _37.SampleCmpLevelZero(_16, float3(_1880, _424).xy, _1791))) + ((_1888 * _1899) * _37.SampleCmpLevelZero(_16, float3(_1883, _424).xy, _1791))) + ((_1891 * _1899) * _37.SampleCmpLevelZero(_16, float3(_1885, _424).xy, _1791));
                            float2 _1978 = min(_1778, 1.0f.xx - _1778);
                            _1991 = lerp(1.0f, (any(bool3(_1787.x || _1788.x, _1787.y || _1788.y, _1787.z || _1788.z)) || ((asuint(_1791) & 2147483647u) > 2139095040u)) ? 1.0f : (_1965 + ((_1893 * _1899) * _37.SampleCmpLevelZero(_16, float3(_1887, _424).xy, _1791))), _1537 ? min(_34_m11[_1737].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_1737].z - _1774) * 0.25f, min(_1978.x, _1978.y)))) : _34_m11[_1737].w);
                            break;
                        } while(false);
                        _1993 = (_1737 >= 0) ? _1991 : 1.0f;
                    }
                    else
                    {
                        _1993 = 1.0f;
                    }
                    _1994 = _1993;
                    break;
                } while(false);
                _2661 = _1350 * _1994;
                _2662 = 0.0f.xxx;
            }
            _1372 = _2661;
            _1375 = _1374 + _2662;
        }
        _1347 = _1346 + _1374;
    }
    float3 _2666 = _1315.xyz + (_1346 * _1349);
    float3 _2668 = _456.xxx;
    float3 _2705;
    float3 _2706;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2681 = min(_22.SampleBias(_12, _4, _9_m16).x, _456);
        _2705 = clamp((pow(abs(max(0.0f, dot(_479, _535)) + _2681), exp2(((-16.0f) * _1129) - 1.0f)) - 1.0f) + _2681, 0.0f, 1.0f).xxx;
        _2706 = max(_2681.xxx, ((((((_1133 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2681) + ((_1133 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2681) + ((_1133 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2681);
    }
    else
    {
        _2705 = _2668;
        _2706 = _2668;
    }
    _2666 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2705 : 1.0f.xxx;
    float3 _2723 = (_509 + (_479 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_484 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2733 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2742 = _2723 - (_9_m105.xyz + (_2733 * (-_9_m107.w)));
    float _2756 = max(clamp((max(abs(_2742.x), abs(_2742.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2742.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _3058;
    float4 _3059;
    float4 _3060;
    float _3061;
    float _3062;
    if ((_9_m105.w != 0.0f) && (_2756 < 1.0f))
    {
        float3 _2769 = _2723 - (_9_m105.xyz + (_2733 * (-_9_m107.y)));
        float _2783 = max(clamp((max(abs(_2769.x), abs(_2769.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2769.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2859;
        float4 _2860;
        float4 _2861;
        float4 _2862;
        if (_2783 < 1.0f)
        {
            float3 _2792 = ((_2723 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2794 = _2792 - floor(_2792);
            float4 _2798 = _60.SampleLevel(_14, _2794, 0.0f);
            float _2799 = 1.0f - _2783;
            float _2803 = _9_m106.y * 0.5f;
            float _2808 = _2794.x;
            float _2809 = clamp(_2794.y, _2803, 1.0f - _2803) * 0.3333333432674407958984375f;
            float _2810 = _2794.z;
            float4 _2813 = _61.SampleLevel(_13, float3(_2808, _2809, _2810), 0.0f);
            float _2829 = _2798.x;
            float _2839 = _2798.y;
            float _2849 = _2798.z;
            _2859 = _2756 + (_2813.w * _2799);
            _2860 = float4(((_61.SampleLevel(_13, float3(_2808, _2809 + 0.666666686534881591796875f, _2810), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2849, _2849) * _2799;
            _2861 = float4(((_61.SampleLevel(_13, float3(_2808, _2809 + 0.3333333432674407958984375f, _2810), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2839, _2839) * _2799;
            _2862 = float4(((_2813.xyz * 4.0f) - 2.0f.xxx) * _2829, _2829) * _2799;
        }
        else
        {
            _2859 = _2756;
            _2860 = 0.0f.xxxx;
            _2861 = 0.0f.xxxx;
            _2862 = 0.0f.xxxx;
        }
        float3 _2868 = _2723 - (_9_m105.xyz + (_2733 * (-_9_m107.z)));
        float _2882 = max(clamp((max(abs(_2868.x), abs(_2868.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2868.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2962;
        float4 _2963;
        float4 _2964;
        float4 _2965;
        if (_2882 < 1.0f)
        {
            float3 _2891 = ((_2723 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2893 = _2891 - floor(_2891);
            float4 _2897 = _62.SampleLevel(_14, _2893, 0.0f);
            float _2899 = _2783 * (1.0f - _2882);
            float _2903 = _9_m106.y * 0.5f;
            float _2908 = _2893.x;
            float _2909 = clamp(_2893.y, _2903, 1.0f - _2903) * 0.3333333432674407958984375f;
            float _2910 = _2893.z;
            float4 _2913 = _63.SampleLevel(_13, float3(_2908, _2909, _2910), 0.0f);
            float _2929 = _2897.x;
            float _2940 = _2897.y;
            float _2951 = _2897.z;
            _2962 = _2859 + (_2913.w * _2899);
            _2963 = _2860 + (float4(((_63.SampleLevel(_13, float3(_2908, _2909 + 0.666666686534881591796875f, _2910), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2951, _2951) * _2899);
            _2964 = _2861 + (float4(((_63.SampleLevel(_13, float3(_2908, _2909 + 0.3333333432674407958984375f, _2910), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2940, _2940) * _2899);
            _2965 = _2862 + (float4(((_2913.xyz * 4.0f) - 2.0f.xxx) * _2929, _2929) * _2899);
        }
        else
        {
            _2962 = _2859;
            _2963 = _2860;
            _2964 = _2861;
            _2965 = _2862;
        }
        float4 _3048;
        float4 _3049;
        float4 _3050;
        float _3051;
        if (_2882 > 0.0f)
        {
            float3 _2974 = ((_2723 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2977 = _9_m106.xyz * 0.5f;
            float3 _2979 = clamp(_2974 - floor(_2974), _2977, 1.0f.xxx - _2977);
            float4 _2983 = _64.SampleLevel(_14, _2979, 0.0f);
            float _2985 = _2882 * (1.0f - _2756);
            float _2989 = _9_m106.y * 0.5f;
            float _2994 = _2979.x;
            float _2995 = clamp(_2979.y, _2989, 1.0f - _2989) * 0.3333333432674407958984375f;
            float _2996 = _2979.z;
            float4 _2999 = _65.SampleLevel(_13, float3(_2994, _2995, _2996), 0.0f);
            float _3015 = _2983.x;
            float _3026 = _2983.y;
            float _3037 = _2983.z;
            _3048 = _2963 + (float4(((_65.SampleLevel(_13, float3(_2994, _2995 + 0.666666686534881591796875f, _2996), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3037, _3037) * _2985);
            _3049 = _2964 + (float4(((_65.SampleLevel(_13, float3(_2994, _2995 + 0.3333333432674407958984375f, _2996), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3026, _3026) * _2985);
            _3050 = _2965 + (float4(((_2999.xyz * 4.0f) - 2.0f.xxx) * _3015, _3015) * _2985);
            _3051 = _2962 + (_2999.w * _2985);
        }
        else
        {
            _3048 = _2963;
            _3049 = _2964;
            _3050 = _2965;
            _3051 = _2962;
        }
        float _3054 = clamp((_3051 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _3058 = _3048;
        _3059 = _3049;
        _3060 = _3050;
        _3061 = _3054 - _2756;
        _3062 = (_3054 + _2756) * 0.5f;
    }
    else
    {
        _3058 = 0.0f.xxxx;
        _3059 = 0.0f.xxxx;
        _3060 = 0.0f.xxxx;
        _3061 = 0.0f;
        _3062 = 1.0f;
    }
    float4 _3082 = _3060 + float4(_9_m108.x * _3062, (_9_m108.y * _3062) + ((_9_m108.w * _3061) * 0.5f), _9_m108.z * _3062, (_9_m108.w * _3062) + ((_9_m108.y * _3061) * 0.375f));
    float4 _3102 = _3059 + float4(_9_m109.x * _3062, (_9_m109.y * _3062) + ((_9_m109.w * _3061) * 0.5f), _9_m109.z * _3062, (_9_m109.w * _3062) + ((_9_m109.y * _3061) * 0.375f));
    float4 _3122 = _3058 + float4(_9_m110.x * _3062, (_9_m110.y * _3062) + ((_9_m110.w * _3061) * 0.5f), _9_m110.z * _3062, (_9_m110.w * _3062) + ((_9_m110.y * _3061) * 0.375f));
    float4 _3280;
    float4 _3281;
    float4 _3282;
    [branch]
    if (all(bool2(_497.x >= 0.0f.xx.x, _497.y >= 0.0f.xx.y)))
    {
        float4 _3130 = _59.SampleLevel(_13, _497, 0.0f);
        float4 _3131 = abs(_3130);
        float4 _3277;
        float4 _3278;
        float4 _3279;
        [branch]
        if (any(bool4(_3131.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3131.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3131.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3131.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _3137 = length(_3130.yzw);
            uint _3139;
            float _3142;
            _3139 = 0u;
            _3142 = 1.0f;
            for (float _3144 = _3137; _3144 > 4.599999904632568359375f; )
            {
                _3139++;
                _3142 *= 0.5f;
                _3144 *= 0.5f;
                continue;
            }
            float4 _3148 = _3130 * _3142;
            float4 _3153 = float4(0.0f, _3148.yzw);
            float2 _3175 = (_58.SampleLevel(_13, float2(((((length(_3153) * _57_m3.x) + _57_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _57_m2.xy) + _57_m2.zw;
            float4 _3189;
            _3189 = float4(_3175.x * 3.5449078083038330078125f, _3153.yzw * _3175.y) * exp(_3148.x * 0.282094776630401611328125f);
            for (uint _3192 = 0u; _3192 < _3139; )
            {
                _3189 = mul(float4x4(_3189, float4(_3189.yx, 0.0f, 0.0f), float4(_3189.z, 0.0f, _3189.x, 0.0f), float4(_3189.w, 0.0f, 0.0f, _3189.x)) * 0.282094776630401611328125f, _3189);
                _3192++;
                continue;
            }
            float4x4 _3213 = float4x4(_3189, float4(_3189.yx, 0.0f, 0.0f), float4(_3189.z, 0.0f, _3189.x, 0.0f), float4(_3189.w, 0.0f, 0.0f, _3189.x)) * 0.282094776630401611328125f;
            float4 _3223 = mul(_3213, float4(_3082.w * 1.1283791065216064453125f, _3082.y * (-0.977204978466033935546875f), _3082.z * 0.977204978466033935546875f, _3082.x * (-0.977204978466033935546875f)));
            float4 _3243 = mul(_3213, float4(_3102.w * 1.1283791065216064453125f, _3102.y * (-0.977204978466033935546875f), _3102.z * 0.977204978466033935546875f, _3102.x * (-0.977204978466033935546875f)));
            float4 _3263 = mul(_3213, float4(_3122.w * 1.1283791065216064453125f, _3122.y * (-0.977204978466033935546875f), _3122.z * 0.977204978466033935546875f, _3122.x * (-0.977204978466033935546875f)));
            _3277 = float4(_3223.x * 0.886226952075958251953125f, _3223.w * (-1.02332675457000732421875f), _3223.y * (-1.02332675457000732421875f), _3223.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _3278 = float4(_3243.x * 0.886226952075958251953125f, _3243.w * (-1.02332675457000732421875f), _3243.y * (-1.02332675457000732421875f), _3243.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _3279 = float4(_3263.x * 0.886226952075958251953125f, _3263.w * (-1.02332675457000732421875f), _3263.y * (-1.02332675457000732421875f), _3263.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _3277 = _3082;
            _3278 = _3102;
            _3279 = _3122;
        }
        _3280 = _3277;
        _3281 = _3278;
        _3282 = _3279;
    }
    else
    {
        _3280 = _3082;
        _3281 = _3102;
        _3282 = _3122;
    }
    float _3287 = max(0.0f, dot(_3280.xyz, _479) + _3280.w);
    float _3292 = max(0.0f, dot(_3281.xyz, _479) + _3281.w);
    float _3297 = max(0.0f, dot(_3282.xyz, _479) + _3282.w);
    float3 _3307 = reflect(_537, _1064);
    float _3315 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1129, 0.001000000047497451305389404296875f))));
    float2 _3319 = floor(_484 * _28_m0.w);
    float _3336 = floor(_516 - _28_m2.y);
    float _3340 = clamp(_3336, 0.0f, _28_m1.x - 1.0f);
    uint _3350 = (_3336 <= _3340) ? (_25.Load(uint(_9_m21.z + int(_3319.x + (_3319.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_3340)) * 4 + 0)) : 0u;
    float _3353 = dot(float4(_3287, _3292, _3297, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _3355;
    float _3358;
    uint _3360;
    _3355 = 0.0f.xxx;
    _3358 = 1.0f;
    _3360 = _3350;
    uint _3361;
    float3 _3356;
    float _3359;
    bool _3363;
    [loop]
    for (;;)
    {
        _3363 = _3358 > 0.00999999977648258209228515625f;
        if ((_3360 != 0u) && _3363)
        {
            uint _3367 = firstbitlow(_3360);
            _3361 = _3360 ^ (1u << (_3367 & 31u));
            float3 _3387 = float3(dot(_28_m4[_3367]._m2, _513), dot(_28_m4[_3367]._m3, _513), dot(_28_m4[_3367]._m4, _513));
            float3 _3388 = abs(_3387);
            if (all(bool3(_3388.x <= _28_m4[_3367]._m1.xyz.x, _3388.y <= _28_m4[_3367]._m1.xyz.y, _3388.z <= _28_m4[_3367]._m1.xyz.z)))
            {
                float3 _3397 = _28_m4[_3367]._m1.xyz * 0.100000001490116119384765625f;
                float3 _3399 = _3388 * 0.100000001490116119384765625f;
                float3 _3400 = _3399 * _3399;
                float3 _3403 = (_28_m4[_3367]._m1.xyz - _3388) * _28_m4[_3367]._m5.xyz;
                float3 _3451;
                [branch]
                if (_28_m4[_3367]._m6.x == 1.0f)
                {
                    float3 _3436 = float3(dot(_28_m4[_3367]._m2.xyz, _3307), dot(_28_m4[_3367]._m3.xyz, _3307), dot(_28_m4[_3367]._m4.xyz, _3307));
                    float3 _3438 = (_28_m4[_3367]._m1.xyz - _3387) / _3436;
                    float3 _3441 = ((-_28_m4[_3367]._m1.xyz) - _3387) / _3436;
                    bool3 _3442 = bool3(_3436.x > 0.0f.xxx.x, _3436.y > 0.0f.xxx.y, _3436.z > 0.0f.xxx.z);
                    float3 _3443 = float3(_3442.x ? _3438.x : _3441.x, _3442.y ? _3438.y : _3441.y, _3442.z ? _3438.z : _3441.z);
                    _3451 = _3387 + (_3436 * min(min(_3443.x, _3443.y), _3443.z));
                }
                else
                {
                    _3451 = _3307;
                }
                float3 _3452 = normalize(_3451);
                float3 _3455 = float3(int3(sign(_3452)));
                float3 _3458 = _3452 / dot(_3452, _3455).xxx;
                float3 _3472;
                if (_3458.z < 0.0f)
                {
                    float3 _3463 = abs(_3458);
                    float2 _3470 = _3455.xy * float2(1.0f - _3463.y, 1.0f - _3463.x);
                    _3472 = float3(_3470.x, _3470.y, _3458.z);
                }
                else
                {
                    _3472 = _3458;
                }
                float _3497 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_3367]._m0, float4(_1064, 1.0f))));
                float _3510 = clamp((min(_3403.x, min(_3403.y, _3403.z)) * _28_m4[_3367]._m6.y) + ((((((_3397 * _3397).x - ((_3400.x + _3400.y) + _3400.z)) * _28_m4[_3367]._m5.x) * _28_m4[_3367]._m5.x) * (1.0f - _28_m4[_3367]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_3367]._m6.w;
                _3356 = _3355 + ((((_23.SampleLevel(_15, float3((((_3472.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_3367]._m1.w), _3315).xyz * _28_m4[_3367]._m5.w) * ((((((clamp(abs(_3353 / _3497), 0.0f, 1.0f) * 2.0f) + _3353) / (2.0f + _3497)) - 1.0f) * _9_m23.w) + 1.0f)) * _3510) * _3358);
                _3359 = _3358 * (1.0f - _3510);
            }
            else
            {
                _3356 = _3355;
                _3359 = _3358;
            }
            _3355 = _3356;
            _3358 = _3359;
            _3360 = _3361;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _3579;
    if (_3363)
    {
        float3 _3518 = normalize(_3307);
        float3 _3521 = float3(int3(sign(_3518)));
        float3 _3524 = _3518 / dot(_3518, _3521).xxx;
        float3 _3538;
        if (_3524.z < 0.0f)
        {
            float3 _3529 = abs(_3524);
            float2 _3536 = _3521.xy * float2(1.0f - _3529.y, 1.0f - _3529.x);
            _3538 = float3(_3536.x, _3536.y, _3524.z);
        }
        else
        {
            _3538 = _3524;
        }
        float _3565 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1064, 1.0f))));
        _3579 = _3355 + ((_23.SampleLevel(_15, float3((((_3538.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _3315).xyz * ((((((clamp(abs(_3353 / _3565), 0.0f, 1.0f) * 2.0f) + _3353) / (2.0f + _3565)) - 1.0f) * _9_m23.w) + 1.0f)) * _3358);
    }
    else
    {
        _3579 = _3355;
    }
    float3 _3585 = (_3579 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _3585 *= 0.25f + (0.75f * saturate(_3353));
    }
    float3 _3606;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _3600 = _21.SampleBias(_13, _4, _9_m16);
        float _3601 = _3600.x;
        _3606 = (_20.SampleBias(_13, _4, _9_m16).xyz * _3601) + (_3585 * (1.0f - _3601));
    }
    else
    {
        _3606 = _3585;
    }
    float3 _3609 = (((float3(_3287, _3292, _3297) * _1133) * _9_m22.x) * _2706) + ((_3606 * (_1162 + ((_1137 * ((1.0f - _1163) / _1163)) * _1162))) * _2705);
    float4 _3611 = float4(_2666.x, _2666.y, _2666.z, _1315.w) + float4(_3609.x, _3609.y, _3609.z, 0.0f.xxxx.w);
    float3 _3614 = clamp(_3611.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _3629 = _511 * _9_m46.w;
    float _3634 = max(0.00999999977648258209228515625f, _3629 + _9_m47.w);
    float3 _3648 = exp(_9_m45.xyz * ((-max(0.0f, (_536 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3634)) / _3634) * exp(_3629 + _9_m48.w))));
    float _3651 = dot(_537, _9_m44.xyz);
    float _3657 = _9_m45.w * _9_m45.w;
    float _3661 = (1.0f + _3657) - ((2.0f * _9_m45.w) * _3651);
    float3 _3985;
    float _3986;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3813 = (uint3(int3(_445, _446, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3814 = _3813.y;
        uint _3815 = _3813.z;
        uint _3818 = _3813.x + (_3814 * _3815);
        uint _3820 = _3814 + (_3815 * _3818);
        uint _3822 = _3815 + (_3818 * _3820);
        uint _3824 = _3818 + (_3820 * _3822);
        float _3848 = dot(_537, -_7_m0[2].xyz);
        float3 _3856 = _509 - _7_m11.xyz;
        float _3858 = (_9_m55.w * ((_3848 > 5.9604644775390625e-08f) ? (1.0f / _3848) : 0.0f)) * (1.0f / _536);
        float _3859 = _3856.y;
        float _3860 = _3858 * _3859;
        float _3862 = _7_m11.y + _3860;
        float _3863 = _3859 - _3860;
        float _3865 = (1.0f - _3858) * _536;
        float _3879 = max(-127.0f, _9_m49.z * _3863);
        float _3903 = max(-127.0f, _9_m52.x * _3863);
        float _3914 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3862 - _9_m49.x)))) * ((abs(_3879) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3879)) / _3879) : (0.693147182464599609375f - (0.2402265071868896484375f * _3879)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3862 - _9_m52.z)))) * ((abs(_3903) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3903)) / _3903) : (0.693147182464599609375f - (0.2402265071868896484375f * _3903))));
        float _3936 = clamp((_536 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3939 = clamp((max(clamp(exp2(-(_3914 * _3865)), 0.0f, 1.0f), _9_m51.w) + clamp((_536 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3936, 0.0f, 1.0f);
        float4 _3979 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _55.SampleLevel(_13, float3((_484 + ((((float3(uint3(_3824, _3820 + (_3822 * _3824), _429) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_516 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_516 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3981 = _3979.w;
        _3985 = _3979.xyz + (((_9_m51.xyz * (1.0f - _3939)) + (((_9_m54.xyz * pow(clamp(dot(_535, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3914 * max(_3865 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3936))) * _3981);
        _3986 = _3981 * _3939;
    }
    else
    {
        float3 _3689 = _509 - _7_m11.xyz;
        float _3691 = _3689.y;
        float _3705 = max(-127.0f, _9_m49.z * _3691);
        float _3729 = max(-127.0f, _9_m52.x * _3691);
        float _3740 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3705) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3705)) / _3705) : (0.693147182464599609375f - (0.2402265071868896484375f * _3705)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3729) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3729)) / _3729) : (0.693147182464599609375f - (0.2402265071868896484375f * _3729))));
        float _3762 = clamp((_536 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3765 = clamp((max(clamp(exp2(-(_3740 * _536)), 0.0f, 1.0f), _9_m51.w) + clamp((_536 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3762, 0.0f, 1.0f);
        _3985 = (_9_m51.xyz * (1.0f - _3765)) + (((_9_m54.xyz * pow(clamp(dot(_535, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3740 * max(_536 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3762));
        _3986 = _3765;
    }
    float3 _3989 = _3648 * _3986;
    float3 _3991 = (_3614 * _3989) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3651 * _3651)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3657) / max((12.56637096405029296875f * _3661) * sqrt(_3661), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3648)) * _3986) + _3985);
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _3991 = (_3991 * 0.65f) + (_3614 * 0.35f);
    }
    float _3992 = dot(_3989, 0.3333333432674407958984375f.xxx);
    float4 _3993 = float4(_3991.x, _3991.y, _3991.z, _3611.w);
    _3993.w = _3992;
    float _4020 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _509) * _9_m61.z), 0.0f, 1.0f);
    float3 _4028 = lerp(_3614, _3993.xyz, min((1.0f - _4020) + ((_70.SampleLevel(_14, (_509 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _4020), 1.0f + _3992).xxx);
    _5 = float4(_4028.x, _4028.y, _4028.z, _3993.w);
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
