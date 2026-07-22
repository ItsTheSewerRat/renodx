// DX11 0x6A7F47F5 -> Vulkan 0x20BB91FD
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

static float _430 = 0.0f;
static float _434 = 0.0f;
static uint _435 = 0u;

static const int2 _386[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _387[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(39, 3)]]
cbuffer _6_7 : register(b39)
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

[[vk::binding(45, 3)]]
cbuffer _8_9 : register(b45)
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

[[vk::binding(49, 3)]] ByteAddressBuffer _25 : register(t49);
[[vk::binding(46, 3)]]
cbuffer _26_28 : register(b46)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(42, 3)]]
cbuffer _29_30 : register(b42)
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

[[vk::binding(41, 3)]]
cbuffer _31_32 : register(b41)
{
    float4 _32_m0 : packoffset(c0);
    float4 _32_m1 : packoffset(c1);
    float4 _32_m2 : packoffset(c2);
    float4 _32_m3 : packoffset(c3);
    float4 _32_m4 : packoffset(c4);
    uint4 _32_m5 : packoffset(c5);
    float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(44, 3)]]
cbuffer _33_34 : register(b44)
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

[[vk::binding(48, 3)]]
cbuffer _35_36 : register(b48)
{
    column_major float4x4 _36_m0[32] : packoffset(c0);
    float4 _36_m1[32] : packoffset(c128);
    uint4 _36_m2[56] : packoffset(c160);
    int4 _36_m3 : packoffset(c216);
    float4 _36_m4 : packoffset(c217);
    float4 _36_m5[4] : packoffset(c218);
    float4 _36_m6 : packoffset(c222);
};

[[vk::binding(38, 3)]]
cbuffer _42_43 : register(b38)
{
    column_major float4x4 _43_m0 : packoffset(c0);
    float4 _43_m1 : packoffset(c4);
};

[[vk::binding(40, 3)]]
cbuffer _51_52 : register(b40)
{
    float4 _52_m0[15] : packoffset(c0);
    float4 _52_m1[15] : packoffset(c15);
};

[[vk::binding(47, 3)]]
cbuffer _55_56 : register(b47)
{
    float4 _56_m0[32] : packoffset(c0);
    column_major float4x4 _56_m1[32] : packoffset(c32);
};

[[vk::binding(43, 3)]]
cbuffer _60_61 : register(b43)
{
    float4 _61_m0 : packoffset(c0);
    float4 _61_m1 : packoffset(c1);
    float4 _61_m2 : packoffset(c2);
    float4 _61_m3 : packoffset(c3);
    float4 _61_m4 : packoffset(c4);
    uint4 _61_m5 : packoffset(c5);
    float4 _61_m6 : packoffset(c6);
    float4 _61_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3);
[[vk::binding(35, 3)]] Texture2D<float4> _19 : register(t35);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13);
[[vk::binding(14, 3)]] Texture2D<float4> _21 : register(t14);
[[vk::binding(28, 3)]] Texture2D<float4> _22 : register(t28);
[[vk::binding(16, 3)]] Texture2DArray<float4> _23 : register(t16);
[[vk::binding(18, 3)]] Texture2D<float4> _37 : register(t18);
[[vk::binding(12, 3)]] Texture2D<float4> _38 : register(t12);
[[vk::binding(30, 3)]] Texture2D<float4> _39 : register(t30);
[[vk::binding(36, 3)]] Texture2D<float4> _40 : register(t36);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8);
[[vk::binding(17, 3)]] Texture3D<float4> _45 : register(t17);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15);
[[vk::binding(19, 3)]] Texture2D<float4> _48 : register(t19);
[[vk::binding(10, 3)]] Texture2DArray<float4> _49 : register(t10);
[[vk::binding(11, 3)]] Texture2DArray<float4> _50 : register(t11);
[[vk::binding(34, 3)]] Texture2D<float4> _53 : register(t34);
[[vk::binding(20, 3)]] Texture2D<float4> _54 : register(t20);
[[vk::binding(27, 3)]] Texture3D<float4> _59 : register(t27);
[[vk::binding(37, 3)]] Texture2D<float4> _62 : register(t37);
[[vk::binding(7, 3)]] Texture2D<float4> _63 : register(t7);
[[vk::binding(26, 3)]] Texture3D<float4> _64 : register(t26);
[[vk::binding(23, 3)]] Texture3D<float4> _65 : register(t23);
[[vk::binding(25, 3)]] Texture3D<float4> _66 : register(t25);
[[vk::binding(22, 3)]] Texture3D<float4> _67 : register(t22);
[[vk::binding(24, 3)]] Texture3D<float4> _68 : register(t24);
[[vk::binding(21, 3)]] Texture3D<float4> _69 : register(t21);
[[vk::binding(6, 3)]] Texture2D<float4> _70 : register(t6);
[[vk::binding(33, 3)]] Texture2D<float4> _71 : register(t33);
[[vk::binding(32, 3)]] Texture2D<float4> _72 : register(t32);
[[vk::binding(31, 3)]] Texture2D<float4> _73 : register(t31);
[[vk::binding(29, 3)]] Texture3D<float4> _74 : register(t29);

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
    uint2 _448 = uint2(gl_FragCoord.xy);
    int _451 = int(_448.x);
    int _452 = int(_448.y);
    int2 _454 = int3(_451, _452, 0).xy;
    float4 _456 = _71.Load(int3(_454, 0));
    float4 _458 = _72.Load(int3(_454, 0));
    float4 _460 = _73.Load(int3(_454, 0));
    float _461 = _456.x;
    float _462 = _456.y;
    float _463 = _456.z;
    uint _473 = uint(int((round(_456.w * 3.0f) * 4.0f) + round(_458.w * 3.0f)));
    float2 _476 = (_458.xy * 2.0f) - 1.0f.xx;
    float _480 = 1.0f - dot(1.0f.xx, abs(_476));
    float3 _482 = float3(_476.x, _480, _476.y);
    float3 _494;
    if (_480 < 0.0f)
    {
        float2 _489 = _482.xz;
        bool2 _490 = bool2(_489.x >= 0.0f.xx.x, _489.y >= 0.0f.xx.y);
        float2 _492 = (1.0f.xx - abs(_482.zx)) * float2(_490.x ? 1.0f.xx.x : (-1.0f).xx.x, _490.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _494 = float3(_492.x, _482.y, _492.y);
    }
    else
    {
        _494 = _482;
    }
    float3 _495 = normalize(_494);
    float _496 = _458.z;
    float _498 = _460.w;
    float2 _501 = float2(_448);
    float2 _506 = (_501 + 0.5f.xx) * _9_m0.zw;
    float2 _514 = gl_FragCoord.xy * _9_m0.zw;
    float2 _516 = (_514 * 2.0f) - 1.0f.xx;
    float4 _519 = float4(_516, _19.SampleLevel(_12, _506, 0.0f).x, 1.0f);
    _519.y = -_516.y;
    float4 _522 = mul(_7_m6, _519);
    float3 _526 = _522.xyz / _522.w.xxx;
    float _527 = _526.x;
    float _528 = _526.y;
    float4 _530 = float4(_527, _528, _526.z, 1.0f);
    float _533 = abs(mul(_7_m0, _530).z);
    float3 _548;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _548 = _7_m11.xyz - _526;
            break;
        }
        else
        {
            _548 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _549 = dot(_548, _548);
    float _551 = rsqrt(max(_549, 9.9999999392252902907785028219223e-09f));
    float3 _552 = _548 * _551;
    float _553 = _549 * _551;
    float3 _554 = -_552;
    bool _557 = _9_m129.x > 0.00048828125f;
    float2 _567;
    if (_557)
    {
        _567 = _70.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _567 = 1.0f.xx;
    }
    float _568 = dot(_495, float3(0.0f, -1.0f, 0.0f));
    float3 _624;
    float3 _625;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _595 = abs(_495.x);
        float _597 = abs(_495.y);
        float _599 = abs(_495.z);
        float3 _604 = float3(_595, _597, _599) * (1.0f / ((_595 + _597) + _599));
        float4 _617 = _45.SampleLevel(_14, _526 * _9_m124.x, 0.0f);
        float _618 = _617.x;
        _624 = float3(_618, _434, _434);
        _625 = ((((float3(0.0f, 0.0f, 1.0f) * _604.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _604.y)) + (float3(1.0f, 0.0f, 0.0f) * _604.z)) * ((_618 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_568)));
    }
    else
    {
        _624 = 0.0f.xxx;
        _625 = 0.0f.xxx;
    }
    float4 _639 = mul(_43_m0, float4((_526 + ((((_495 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_568, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _568), 0.100000001490116119384765625f, 1.0f)))) + _625, 1.0f));
    float2 _642 = (_639.xy * 0.5f) + 0.5f.xx;
    float4 _643 = float4(_642.x, _642.y, _639.z, _639.w);
    _643.y = 1.0f - _642.y;
    float _664;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _664 = _41.SampleCmpLevelZero(_17, (_643.xy + _43_m1.xy).xy, max(_639.z, 0.00048828125f));
    }
    else
    {
        _664 = 1.0f;
    }
    float _667 = _495.y;
    float _668 = clamp(_667, 0.0f, 1.0f);
    float _669 = lerp(_9_m125.w, 1.0f, _668);
    float2 _673 = _526.xz;
    float2 _678 = abs(_673 - _7_m11.xz);
    float _681 = max(_678.x, _678.y);
    float _691 = lerp(_669 * _664, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _681));
    float3 _698 = ddy_fine(_526);
    float3 _699 = ddx_fine(_526);
    float3 _700 = cross(_698, _699);
    float _706 = clamp((_700 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_700, _700)))).y, 0.0f, 1.0f);
    float _709 = _9_m118.z * 0.300000011920928955078125f;
    float _711 = _709 + 0.68599998950958251953125f;
    float _718 = 1.0f - clamp((_533 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _733 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_711, 0.9700000286102294921875f), 0.9900000095367431640625f, _668) + (smoothstep(0.990999996662139892578125f, 1.0f, _706) * step(_462, (_624.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _932;
    float _933;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_709 + 0.686999976634979248046875f, _711, _706) * smoothstep(-0.5f, -0.100000001490116119384765625f, _667)) > 0.00048828125f))
    {
        float3 _742 = abs(_495);
        float3 _743 = _742 * _742;
        float3 _748 = _743 * (1.0f / (_743.x + _743.z));
        float3 _750 = normalize(cross(_495, float3(0.0f, 1.0f, 0.0f)));
        float3 _752 = normalize(cross(_750, _495));
        float3 _768 = floor((_526 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _776 = frac(sin(dot(fmod(_768.xz + _768.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _780 = (step(0.0f.xx, _495.zx) * 2.0f) - 1.0f.xx;
        float3 _783 = _526;
        _783.x = _527 * _780.x;
        _783.z = _526.z * (-_780.y);
        float _795 = _624.x * _776;
        float2 _803 = float2(frac(((-_9_m118.x) * (((1.0f - _776) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_795 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_795 * 6.0f)));
        float _806 = floor(_776 * 5.0f) + 1.0f;
        float2 _810 = frac(float2(_806, 0.100000001490116119384765625f * _806) * _528);
        float2 _822 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _810 - (_803 - 1.0f.xx)), _803 - _810), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _810 - _803), (_803 + 1.0f.xx) - _810), step(_803, _810));
        float _823 = _822.x;
        float _825 = smoothstep(0.4000000059604644775390625f, 1.0f, _823 * _823);
        float _826 = _822.y;
        float _831 = (_826 * 2.0f) - 1.0f;
        float2 _840 = float2((_624.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _825) * _831), (1.0f.xx * _624.x).y * (_624.x + (((_825 * 0.00999999977648258209228515625f) * _825) * _831)));
        float4 _864 = (_46.SampleBias(_14, (_783.zy * _9_m119.xy) + _840, _9_m16) * _748.x) + (_46.SampleBias(_14, (_783.xy * _9_m119.xy) + _840, _9_m16) * _748.z);
        float2 _867 = (_864.xy * 2.0f) - 1.0f.xx;
        float _873 = _864.w;
        float _883 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_826 + (((_825 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_873 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_831 * _873) * 0.5f) + _825, 0.0f, 1.0f)));
        float _889 = _864.z;
        float _899 = (((lerp(0.100000001490116119384765625f, (_883 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _883, 0.0f, 1.0f), 5.0f), _889)) * _889) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_691 * step(0.04500000178813934326171875f, _463))) * _718);
        float2 _902 = _867.xy;
        float _907 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_902, _902), 0.0f, 1.0f)));
        float3 _908 = float3(_867, _907);
        float2 _912 = _908.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _899) * _9_m118.y);
        float3 _913 = float3(_912.x, _912.y, _908.z);
        _913.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _907, _899);
        _932 = lerp(_495, mul(float4x4(float4(_750.x, _752.x, _495.x, 0.0f), float4(_750.y, _752.y, _667, 0.0f), float4(_750.z, _752.z, _495.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_913 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_913, _913))), 0.0f)).xyz, _899.xxx);
        _933 = (_899 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _932 = _495;
        _933 = 0.0f;
    }
    float3 _1081;
    float _1082;
    [branch]
    if (_733 > 0.00048828125f)
    {
        float2 _940 = (-_673) * _9_m123.xy;
        float2 _942 = frac(_940);
        float2 _989;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _952 = frac(sin(dot(fmod(floor(_940), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _965 = floor(frac(_9_m122.x + _952) * (_9_m123.z * _9_m123.z));
            float _967 = 1.0f / _9_m123.z;
            _989 = ((_47.SampleBias(_13, frac((lerp(_942, _942.yx, step(_952, 0.5f).xx) * _967) + float2(_967 * fmod(_965, _9_m123.z), _967 * ((_9_m123.z - 1.0f) - floor(_965 * _967)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _989 = 0.0f.xx;
        }
        float2 _1030;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _1015 = _47.SampleBias(_14, (_940 + float2(0.0f, _9_m122.z)) + ((float2(_624.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _1019 = _47.SampleBias(_14, (_940 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _624.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _1025 = (((float4(_1015.z, _1015.w, _1019.z, _1019.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _624.x;
            _1030 = _989 + (_1025.xy + _1025.zw);
        }
        else
        {
            _1030 = _989;
        }
        float _1038 = (((_624.x * 0.699999988079071044921875f) + (_496 * 0.300000011920928955078125f)) * clamp((_496 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _462;
        float _1042 = smoothstep(min(_1038, 0.9900000095367431640625f), clamp(_1038 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _1053 = _9_m117.x * _733;
        float3 _1063 = float3(_1030, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1030, _1030), 0.0f, 1.0f))));
        float3 _1069 = (_1063 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1063, _1063)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _1081 = lerp(_495, _1069, (((_1053 * _1042) * _691) * _718).xxx);
        _1082 = max((smoothstep(0.0f, _462 * 0.20000000298023223876953125f, (_1053 * clamp(lerp((_9_m123.w * (1.0f - _624.x)) * 0.5f, 1.0f, _1042) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1069.y) * _691) * _718, 0.0f);
    }
    else
    {
        _1081 = _932;
        _1082 = 0.0f;
    }
    float _1085 = min(_567.x, _567.y);
    float2 _1087 = _567 * (1.0f - lerp(lerp(_9_m125.z * _669, 1.0f, _691), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _681)));
    float _1088 = _1087.x;
    float _1091 = clamp((_463 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _1092 = 1.0f - _496;
    float _1108 = lerp(clamp((clamp((_1092 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _933)) + ((_1082 * 0.100000001490116119384765625f) * _496), 0.0f, 1.0f), 1.0f, _461);
    float _1110 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _568);
    float _1119 = lerp(1.0f, 0.25f, ((_9_m117.x * _1108) * (1.0f - _461)) * _1110);
    float _1135 = (1.0f - lerp(_1092, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1108) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1092)), 0.0f, 1.0f), _1092, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1110) * (1.0f - _1088))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1082, smoothstep(0.0f, 0.0500000007450580596923828125f, _933)));
    float _1140;
    float _1141;
    if (_557)
    {
        _1140 = lerp(1.0f, _567.y, _1091);
        _1141 = lerp(1.0f, 0.0f, _1091);
    }
    else
    {
        _1140 = 1.0f;
        _1141 = 1.0f;
    }
    float _1146 = lerp(lerp(min(_1140, _1135), _1135, _1085), _496, _1088);
    float3 _1148 = _460.xyz * lerp(lerp(min(_1141, _1119), _1119, _1085), 1.0f, _1088);
    float3 _1149 = _1148 * _461;
    float3 _1150 = _1148 - _1149;
    float3 _1154 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _461)).xxx + _1149;
    float _1155 = dot(_1081, _552);
    float _1156 = max(0.0f, _1155);
    float _1157 = _1146 * _1146;
    float _1158 = _1156 * _1156;
    float _1159 = _1158 * _1156;
    float2 _1160 = float2(1.0f, _1156);
    float2 _1163 = float2(1.0f, _1157);
    float _1164 = _1157 * _1157;
    float3 _1166 = float3(1.0f, _1157, _1164 * _1157);
    float _1171 = dot(mul(_1160, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1163) / dot(mul(float3(1.0f, _1158, _1159), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1166);
    float _1176 = dot(mul(_1160, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1163) / dot(mul(float3(1.0f, _1156, _1159), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1166);
    float3 _1179 = (_1154 * _1171) + _1176.xxx;
    float _1180 = _1171 + _1176;
    float4 _1193 = _38.Load(int3(_454, 0));
    float _1194 = _1193.x;
    float4 _1359;
    if (_1194 > 0.001000000047497451305389404296875f)
    {
        float3 _1204 = reflect(_554, _1081);
        float3 _1205 = -_32_m0.xyz;
        float _1210 = dot(_1205, _1204);
        float3 _1212 = _1204 - (_1205 * _1210);
        bool3 _1214 = (_1210 < _32_m4.z).xxx;
        float3 _1222 = normalize((_1205 * _32_m4.z) + ((_1212 * rsqrt(max(6.103515625e-05f, dot(_1212, _1212)))) * _32_m4.y));
        float3 _1223 = float3(_1214.x ? _1222.x : _1204.x, _1214.y ? _1222.y : _1204.y, _1214.z ? _1222.z : _1204.z);
        float3 _1227 = _1223 + _552;
        float3 _1231 = _1227 * rsqrt(max(6.103515625e-05f, dot(_1227, _1227)));
        float _1234 = clamp(dot(_1223, _1081), 0.0f, 1.0f);
        float _1236 = clamp(dot(_1081, _1231), 0.0f, 1.0f);
        float _1239 = clamp(_1155, 0.0f, 1.0f);
        float _1260 = (((_1236 * _1164) - _1236) * _1236) + 1.0f;
        float _1263 = 1.0f - clamp(dot(_552, _1231), 0.0f, 1.0f);
        float _1264 = _1263 * _1263;
        float _1266 = (_1263 * _1264) * _1264;
        float _1290 = 1.0f - _1146;
        float _1297 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1290 * (1.04997003078460693359375f + (_1290 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1290))))));
        float _1298 = 1.0f - _1297;
        float3 _1301 = _1154 + ((1.0f.xxx - _1154) * 0.0476190485060214996337890625f);
        float3 _1341;
        do
        {
            [branch]
            if (((_473 > 0u) && (_473 <= 15u)) && (_498 > 0.0f))
            {
                uint _1325 = clamp(_473 - 1u, 0u, 14u);
                _1341 = _49.SampleLevel(_13, float3((dot(_495, _1223) * 0.5f) + 0.5f, _498 * _52_m0[_1325].w, float(_1325)), 0.0f).xyz;
                break;
            }
            _1341 = clamp(dot(_1223, _495), 0.0f, 1.0f).xxx;
            break;
        } while(false);
        float3 _1344 = ((clamp((min(((_1154 * (1.0f - _1266)) + _1266.xxx) * ((_1164 / (_1260 * _1260)) * (0.5f / (((_1234 * sqrt(((((-_1239) * _1164) + _1239) * _1239) + _1164)) + (_1239 * sqrt(((((-_1234) * _1164) + _1234) * _1234) + _1164))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1301 * (((_48.SampleLevel(_13, (float2(_1239, _1146) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1234, _1146) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1297) / _1298)) * _1301) / (1.0f.xxx - (_1301 * _1298)))) * _32_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1234) + ((_1150 * 1.0f) * _1341)) * _32_m1.xyz;
        float3 _1357 = lerp(_1344, _1344 * _40.SampleBias(_13, float2(_1194, 0.5f), _9_m16).xyz, (1.0f - _1194).xxx) * min(_53.SampleLevel(_13, _514, 0.0f).x, 1.0f);
        _1359 = float4(_1357.x, _1357.y, _1357.z, 0.0f.xxxx.w);
    }
    else
    {
        _1359 = 0.0f.xxxx;
    }
    float2 _1361 = floor(_501 * 0.03125f);
    int _1369 = int((_1361.x + (_1361.y * _30_m5)) * 8.0f);
    float _1376 = floor(_533 - (_9_m3.y * _30_m11));
    float _1380 = clamp(_1376, 0.0f, _30_m7 - 1.0f);
    int _1382 = int(_1380 * 8.0f);
    float4 _1388 = _39.SampleBias(_13, _506, _9_m16);
    float3 _1390;
    float _1393;
    _1390 = 0.0f.xxx;
    _1393 = 1.0f;
    float3 _1391;
    float _1394;
    [loop]
    for (int _1395 = 0; _1395 <= 7; _1390 = _1391, _1393 = _1394, _1395++)
    {
        uint _1413 = (_1376 <= _1380) ? (_25.Load(uint(_1369 + _1395) * 4 + 0) & _25.Load(uint((_9_m21.y + _1382) + _1395) * 4 + 0)) : 0u;
        uint _1414 = uint(_1395);
        float3 _1418;
        _1394 = _1393;
        _1418 = 0.0f.xxx;
        uint _1421;
        float _1416;
        float3 _1419;
        [loop]
        for (uint _1420 = _1413; _1420 != 0u; _1394 = _1416, _1418 = _1419, _1420 = _1421)
        {
            uint _1425 = firstbitlow(_1420);
            _1421 = _1420 ^ (1u << (_1425 & 31u));
            int _1431 = int((32u * _1414) + _1425) * 8;
            int _1434 = _1431 + 1;
            int _1437 = _1431 + 2;
            int _1440 = _1431 + 3;
            int _1443 = _1431 + 5;
            int _1446 = _1431 + 6;
            int _1449 = _1431 + 7;
            uint _1453 = uint(_32_m6[_1443].w);
            float _1528;
            if ((_1453 & 1u) == 1u)
            {
                uint _1459 = asuint(_32_m6[_1443].x);
                uint _1466 = asuint(_32_m6[_1443].y);
                uint _1473 = asuint(_32_m6[_1443].z);
                uint _1480 = asuint(_32_m6[_1446].x);
                uint _1487 = asuint(_32_m6[_1446].y);
                uint _1494 = asuint(_32_m6[_1446].z);
                float3 _1513 = abs(mul(float4(_526 - _32_m6[_1434].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1459).x, spvUnpackHalf2x16(_1473).x, spvUnpackHalf2x16(_1487).x, 0.0f), float4(spvUnpackHalf2x16(_1459 >> 16u).x, spvUnpackHalf2x16(_1473 >> 16u).x, spvUnpackHalf2x16(_1487 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1466).x, spvUnpackHalf2x16(_1480).x, spvUnpackHalf2x16(_1494).x, 0.0f), float4(spvUnpackHalf2x16(_1466 >> 16u).x, spvUnpackHalf2x16(_1480 >> 16u).x, spvUnpackHalf2x16(_1494 >> 16u).x, 0.0f))).xyz);
                float _1520 = _32_m6[_1449].x * 0.5f;
                float _1526 = 1.0f - clamp((max(max(_1513.x, _1513.y), _1513.z) - (_1520 + 0.5f)) / (0.5f - _1520), 0.0f, 1.0f);
                _1528 = _1526 * _1526;
            }
            else
            {
                _1528 = 1.0f;
            }
            bool _1532 = _32_m6[_1440].z > 0.5f;
            if ((false || (_1528 < 0.001000000047497451305389404296875f)) || _1532)
            {
                _1416 = _1394;
                _1419 = _1418;
                continue;
            }
            float _2732;
            float3 _2733;
            if (_32_m6[_1431].w < 1.5f)
            {
                float3 _2040 = float3(0.100000001490116119384765625f, _1146, 1.0f);
                float _2049 = (0.5f + (0.5f * _32_m6[_1437].y)) - abs(_32_m6[_1437].x);
                float _2050 = _32_m6[_1437].y - _2049;
                float _2054 = (1.0f - abs(_2049)) - abs(_2050);
                bool _2056 = _32_m6[_1437].x >= 0.0f;
                float _2057 = abs(max(_2054, 0.00048828125f));
                float3 _2061 = normalize(float3(_2049, _2050, _2056 ? _2057 : (-_2057)));
                float3 _2062 = _32_m6[_1434].xyz - _526;
                float _2063 = dot(_2062, _2062);
                float _2064 = rsqrt(_2063);
                float3 _2065 = _2062 * _2064;
                float _2069 = clamp(_32_m6[_1449].y * _2064, 0.0f, 1.0f);
                float _2072 = clamp(dot(_1081, _2065), 0.0f, 1.0f);
                int _2074 = int(_32_m6[_1449].w);
                float3 _2075 = _2061 * _32_m6[_1437].z;
                float3 _2076 = _2075 * 0.5f;
                float3 _2077 = _2062 - _2076;
                float3 _2078 = _2062 + _2076;
                bool _2081 = (uint(_32_m6[_1431].w) & 1u) == 0u;
                bool _2084 = _2081 || ((_1453 & 2u) != 0u);
                bool _2087 = (!_2081) && (_32_m6[_1437].z > 0.0f);
                float _2106;
                float _2107;
                if (_2087)
                {
                    float _2091 = length(_2077);
                    float _2092 = length(_2078);
                    _2106 = clamp(0.5f * ((dot(_1081, _2077) / _2091) + (dot(_1081, _2078) / _2092)), 0.0f, 1.0f);
                    _2107 = 1.0f / ((((_2091 * _2092) + dot(_2077, _2078)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2106 = _2072;
                    _2107 = 1.0f;
                }
                float _2129;
                if (_32_m6[_1446].w < 0.0f)
                {
                    float _2123 = _2063 * (_32_m6[_1434].w * _32_m6[_1434].w);
                    float _2126 = clamp(1.0f - (_2123 * _2123), 0.0f, 1.0f);
                    _2129 = lerp(1.0f / (_2063 + 1.0f), _2107, float(_2087)) * (_2126 * _2126);
                }
                else
                {
                    float3 _2112 = _2062 * _32_m6[_1434].w;
                    _2129 = _2107 * pow(1.0f - clamp(dot(_2112, _2112), 0.0f, 1.0f), _32_m6[_1446].w);
                }
                float _2135 = clamp((dot(_2065, -_2061) - _32_m6[_1437].z) * _32_m6[_1437].w, 0.0f, 1.0f);
                float _2139 = _2129 * lerp(1.0f, _2135 * _2135, float(_2081));
                float _2239;
                if ((!_2087) && (_2074 >= 0))
                {
                    uint _2145 = uint(_2074);
                    float2 _2232;
                    [branch]
                    if (_2081)
                    {
                        float4 _2222 = mul(_56_m1[_2145], _530);
                        _2232 = _56_m0[_2145].xy + (clamp(_2222.xy / _2222.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_2145].zw);
                    }
                    else
                    {
                        float3 _2159 = mul(float4(-_2062, 0.0f), _56_m1[_2145]).xyz;
                        float3 _440 = _2159;
                        float3 _439 = _2159;
                        float3 _438 = abs(_2159);
                        uint _2168 = uint(int(_438.y > _438.x));
                        uint _2174 = (_438.z > _438[_2168]) ? 2u : _2168;
                        uint _2180 = (_2174 * 2u) + uint(_439[_2174] < 0.0f);
                        float _2184 = abs(_440[_2180 / 2u]);
                        float _2204 = 0.5f - (0.000244140625f / _56_m0[_2145].w);
                        _2232 = _56_m0[_2145].xy + (clamp(float2((float(_2180) + ((((_440[uint(_386[_2180].x)] * _387[_2180].x) / _2184) * _2204) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_440[uint(_386[_2180].y)] * _387[_2180].y) / _2184) * _2204)), 0.0f.xx, 1.0f.xx) * _56_m0[_2145].zw);
                    }
                    _2239 = _2139 * _54.SampleLevel(_13, _2232, 0.0f).x;
                }
                else
                {
                    _2239 = _2139;
                }
                bool _2240 = _2239 > 0.0f;
                float _2548;
                if (_2240)
                {
                    int _2292;
                    if (_2084)
                    {
                        _2292 = int(_32_m6[_1440].x);
                    }
                    else
                    {
                        uint _2247 = asuint(_32_m6[_1437].w);
                        uint _2249 = asuint(_32_m6[_1440].x);
                        float3 _2250 = _526 - _32_m6[_1434].xyz;
                        float3 _2251 = abs(_2250);
                        float _2252 = _2251.x;
                        float _2253 = _2251.y;
                        float _2255 = _2251.z;
                        int _2287;
                        if ((_2252 > _2253) && (_2252 > _2255))
                        {
                            _2287 = int((_2250.x > 0.0f) ? (_2247 >> 24u) : ((_2247 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2279;
                            if (_2253 > _2255)
                            {
                                _2279 = int((_2250.y > 0.0f) ? ((_2247 >> 8u) & 255u) : (_2247 & 255u));
                            }
                            else
                            {
                                _2279 = int((_2250.z > 0.0f) ? ((_2249 >> 8u) & 255u) : (_2249 & 255u));
                            }
                            _2287 = _2279;
                        }
                        _2292 = (_2287 < 80) ? _2287 : (-1);
                    }
                    float _2546;
                    do
                    {
                        if (_36_m2[_2292].y > 0u)
                        {
                            uint _2310 = uint(_2292);
                            float4 _437 = _1388;
                            float _2321;
                            do
                            {
                                if (_36_m2[_2310].y == 0u)
                                {
                                    _2321 = 1.0f;
                                    break;
                                }
                                _2321 = _437[_36_m2[_2310].y - 1u];
                                break;
                            } while(false);
                            _2546 = _2321;
                            break;
                        }
                        float4 _2328 = mul(_34_m10[_2292], float4((_526 - ((-_2065) * _34_m11[_2292].x)) + (_1081 * (_34_m11[_2292].y * 5.0f)), 1.0f));
                        float _2329 = _2328.w;
                        float3 _2332 = _2328.xyz / _2329.xxx;
                        float2 _2333 = _2332.xy;
                        float3 _2341 = _2332.xyz;
                        bool3 _2342 = bool3(_2341.x <= 0.0f.xxx.x, _2341.y <= 0.0f.xxx.y, _2341.z <= 0.0f.xxx.z);
                        bool3 _2343 = bool3(_2341.x >= 1.0f.xxx.x, _2341.y >= 1.0f.xxx.y, _2341.z >= 1.0f.xxx.z);
                        float _2346 = _2332.z;
                        float2 _2357 = ((_2333 * (_34_m12[_2292].zw - _34_m12[_2292].xy)) + _34_m12[_2292].xy).xy * _34_m13.zw;
                        float2 _2359 = floor(_2357 + 0.5f.xx);
                        float2 _2360 = _2357 - _2359;
                        float _2361 = _2360.x;
                        float _2362 = _2361 + 0.5f;
                        float _2363 = _2362 * _2362;
                        float _2366 = 1.0f - _2361;
                        float _2367 = min(_2361, 0.0f);
                        float _2370 = _2361 + 1.0f;
                        float _2371 = max(_2361, 0.0f);
                        float _2382 = _2360.y;
                        float _2383 = _2382 + 0.5f;
                        float _2384 = _2383 * _2383;
                        float _2387 = 1.0f - _2382;
                        float _2388 = min(_2382, 0.0f);
                        float _2391 = _2382 + 1.0f;
                        float _2392 = max(_2382, 0.0f);
                        float3 _2404 = float3(0.1599999964237213134765625f * _2366, 0.1599999964237213134765625f * ((_2370 - (_2371 * _2371)) + 1.0f), _2363 * 0.07999999821186065673828125f);
                        float3 _2405 = float3(0.1599999964237213134765625f * ((_2363 * 0.5f) - _2361), 0.1599999964237213134765625f * ((_2366 - (_2367 * _2367)) + 1.0f), 0.1599999964237213134765625f * _2370) + _2404;
                        float3 _2407 = float3(0.1599999964237213134765625f * _2387, 0.1599999964237213134765625f * ((_2391 - (_2392 * _2392)) + 1.0f), _2384 * 0.07999999821186065673828125f);
                        float3 _2408 = float3(0.1599999964237213134765625f * ((_2384 * 0.5f) - _2382), 0.1599999964237213134765625f * ((_2387 - (_2388 * _2388)) + 1.0f), 0.1599999964237213134765625f * _2391) + _2407;
                        float3 _2414 = ((_2404 / _2405) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                        float3 _2416 = ((_2407 / _2408) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                        float2 _2418 = _2359 * _34_m13.xy;
                        float _2419 = _2414.x;
                        float _2420 = _2416.x;
                        float2 _2422 = _2418 + float2(_2419, _2420);
                        float _2423 = _2414.y;
                        float2 _2425 = _2418 + float2(_2423, _2420);
                        float _2426 = _2414.z;
                        float2 _2428 = _2418 + float2(_2426, _2420);
                        float _2429 = _2416.y;
                        float2 _2431 = _2418 + float2(_2419, _2429);
                        float2 _2433 = _2418 + float2(_2423, _2429);
                        float2 _2435 = _2418 + float2(_2426, _2429);
                        float _2436 = _2416.z;
                        float2 _2438 = _2418 + float2(_2419, _2436);
                        float2 _2440 = _2418 + float2(_2423, _2436);
                        float2 _2442 = _2418 + float2(_2426, _2436);
                        float _2443 = _2405.x;
                        float _2444 = _2408.x;
                        float _2446 = _2405.y;
                        float _2448 = _2405.z;
                        float _2450 = _2408.y;
                        float _2454 = _2408.z;
                        float _2520 = ((((((((_2443 * _2444) * _37.SampleCmpLevelZero(_16, float3(_2422, _430).xy, _2346)) + ((_2446 * _2444) * _37.SampleCmpLevelZero(_16, float3(_2425, _430).xy, _2346))) + ((_2448 * _2444) * _37.SampleCmpLevelZero(_16, float3(_2428, _430).xy, _2346))) + ((_2443 * _2450) * _37.SampleCmpLevelZero(_16, float3(_2431, _430).xy, _2346))) + ((_2446 * _2450) * _37.SampleCmpLevelZero(_16, float3(_2433, _430).xy, _2346))) + ((_2448 * _2450) * _37.SampleCmpLevelZero(_16, float3(_2435, _430).xy, _2346))) + ((_2443 * _2454) * _37.SampleCmpLevelZero(_16, float3(_2438, _430).xy, _2346))) + ((_2446 * _2454) * _37.SampleCmpLevelZero(_16, float3(_2440, _430).xy, _2346));
                        float2 _2533 = min(_2333, 1.0f.xx - _2333);
                        _2546 = lerp(1.0f, (any(bool3(_2342.x || _2343.x, _2342.y || _2343.y, _2342.z || _2343.z)) || ((asuint(_2346) & 2147483647u) > 2139095040u)) ? 1.0f : (_2520 + ((_2448 * _2454) * _37.SampleCmpLevelZero(_16, float3(_2442, _430).xy, _2346))), _2084 ? min(_34_m11[_2292].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_2292].z - _2329) * 0.25f, min(_2533.x, _2533.y)))) : _34_m11[_2292].w);
                        break;
                    } while(false);
                    _2548 = (_2292 >= 0) ? _2546 : 1.0f;
                }
                else
                {
                    _2548 = 1.0f;
                }
                float3 _2572;
                float3 _2573;
                if (_2087)
                {
                    float3 _2551 = _2040 * _2040;
                    float3 _2552 = reflect(_554, _1081);
                    float _2561 = dot(_2552, _2075);
                    _2572 = _2551 / clamp(_2551 + (0.5f * clamp(_32_m6[_1437].z * _2064, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2573 = normalize(_2077 + (_2075 * clamp(dot(_2077, (_2552 * _2561) - _2075) / ((_32_m6[_1437].z * _32_m6[_1437].z) - (_2561 * _2561)), 0.0f, 1.0f)));
                }
                else
                {
                    _2572 = 1.0f.xxx;
                    _2573 = _2065;
                }
                float3 _2574 = _2573 + _552;
                float3 _2578 = _2574 * rsqrt(max(6.103515625e-05f, dot(_2574, _2574)));
                float _2580 = abs(max(_2054, 5.9604644775390625e-08f));
                float3 _2586 = (normalize(float3(_2049, _2050, _2056 ? _2580 : (-_2580))) * _32_m6[_1437].z) * 0.5f;
                float3 _2587 = _2062 - _2586;
                float3 _2588 = _2062 + _2586;
                float _2600;
                if (_2087)
                {
                    _2600 = clamp(0.5f * ((dot(_1081, _2587) / length(_2587)) + (dot(_1081, _2588) / length(_2588))), 0.0f, 1.0f);
                }
                else
                {
                    _2600 = _2072;
                }
                float3 _2731;
                if (_2240)
                {
                    float _2603 = clamp(_2106, 0.0f, 1.0f);
                    float _2605 = clamp(dot(_1081, _2578), 0.0f, 1.0f);
                    float _2607 = clamp(dot(_552, _2578), 0.0f, 1.0f);
                    float _2608 = clamp(_1155, 0.0f, 1.0f);
                    float _2618;
                    if (_2069 > 0.0f)
                    {
                        _2618 = clamp(_1157 + ((_2069 * _2069) / ((_2607 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2618 = _1157;
                    }
                    float _2619 = _2618 * _2618;
                    float _2640 = (((_2605 * _2619) - _2605) * _2605) + 1.0f;
                    float _2645 = 1.0f - _2607;
                    float _2646 = _2645 * _2645;
                    float _2648 = (_2645 * _2646) * _2646;
                    float _2672 = 1.0f - _1146;
                    float _2679 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2672 * (1.04997003078460693359375f + (_2672 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2672))))));
                    float _2680 = 1.0f - _2679;
                    float3 _2683 = _1154 + ((1.0f.xxx - _1154) * 0.0476190485060214996337890625f);
                    float3 _2727;
                    do
                    {
                        [branch]
                        if (((_473 > 0u) && (_473 <= 15u)) && (_498 > 0.0f))
                        {
                            uint _2711 = clamp(_473 - 1u, 0u, 14u);
                            _2727 = _49.SampleLevel(_13, float3((dot(_495, _2573) * 0.5f) + 0.5f, _498 * _52_m0[_2711].w, float(_2711)), 0.0f).xyz;
                            break;
                        }
                        _2727 = _2600.xxx;
                        break;
                    } while(false);
                    float3 _2730 = ((clamp((min(((_1154 * (1.0f - _2648)) + _2648.xxx) * (((_2619 / (_2640 * _2640)) * _2572.y) * (0.5f / (((_2603 * sqrt(((((-_2608) * _2619) + _2608) * _2608) + _2619)) + (_2608 * sqrt(((((-_2603) * _2619) + _2603) * _2603) + _2619))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2683 * (((_48.SampleLevel(_13, (float2(_2608, _1146) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_2603, _1146) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2679) / _2680)) * _2683) / (1.0f.xxx - (_2683 * _2680)))) * _32_m6[_1449].z, 0.0f.xxx, 1000.0f.xxx) * _2106) + ((_1150 * _2572.z) * _2727)) * (((_32_m6[_1431].xyz * _2239) * _2548) * _1528);
                    _2731 = _2730;
                }
                else
                {
                    _2731 = 0.0f.xxx;
                }
                _2732 = _1394;
                _2733 = _2731;
            }
            else
            {
                float _2038;
                do
                {
                    if (_1532)
                    {
                        _2038 = 1.0f;
                        break;
                    }
                    float _1552 = (0.5f + (0.5f * _32_m6[_1437].y)) - abs(_32_m6[_1437].x);
                    float _1553 = _32_m6[_1437].y - _1552;
                    float _1560 = abs(max((1.0f - abs(_1552)) - abs(_1553), 0.00048828125f));
                    float3 _1564 = normalize(float3(_1552, _1553, (_32_m6[_1437].x >= 0.0f) ? _1560 : (-_1560)));
                    float3 _1565 = _32_m6[_1434].xyz - _526;
                    float _1566 = dot(_1565, _1565);
                    float3 _1568 = _1565 * rsqrt(_1566);
                    int _1571 = int(_32_m6[_1449].w);
                    float3 _1573 = (_1564 * _32_m6[_1437].z) * 0.5f;
                    float3 _1574 = _1565 - _1573;
                    float3 _1575 = _1565 + _1573;
                    bool _1578 = (uint(_32_m6[_1431].w) & 1u) == 0u;
                    bool _1581 = _1578 || ((_1453 & 2u) != 0u);
                    bool _1584 = (!_1578) && (_32_m6[_1437].z > 0.0f);
                    float _1596;
                    if (_1584)
                    {
                        _1596 = 1.0f / ((((length(_1574) * length(_1575)) + dot(_1574, _1575)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _1596 = 1.0f;
                    }
                    float _1618;
                    if (_32_m6[_1446].w < 0.0f)
                    {
                        float _1612 = _1566 * (_32_m6[_1434].w * _32_m6[_1434].w);
                        float _1615 = clamp(1.0f - (_1612 * _1612), 0.0f, 1.0f);
                        _1618 = lerp(1.0f / (_1566 + 1.0f), _1596, float(_1584)) * (_1615 * _1615);
                    }
                    else
                    {
                        float3 _1601 = _1565 * _32_m6[_1434].w;
                        _1618 = _1596 * pow(1.0f - clamp(dot(_1601, _1601), 0.0f, 1.0f), _32_m6[_1446].w);
                    }
                    float _1624 = clamp((dot(_1568, -_1564) - _32_m6[_1437].z) * _32_m6[_1437].w, 0.0f, 1.0f);
                    float _1628 = _1618 * lerp(1.0f, _1624 * _1624, float(_1578));
                    float _1728;
                    if ((!_1584) && (_1571 >= 0))
                    {
                        uint _1634 = uint(_1571);
                        float2 _1721;
                        [branch]
                        if (_1578)
                        {
                            float4 _1711 = mul(_56_m1[_1634], _530);
                            _1721 = _56_m0[_1634].xy + (clamp(_1711.xy / _1711.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_1634].zw);
                        }
                        else
                        {
                            float3 _1648 = mul(float4(-_1565, 0.0f), _56_m1[_1634]).xyz;
                            float3 _444 = _1648;
                            float3 _443 = _1648;
                            float3 _442 = abs(_1648);
                            uint _1657 = uint(int(_442.y > _442.x));
                            uint _1663 = (_442.z > _442[_1657]) ? 2u : _1657;
                            uint _1669 = (_1663 * 2u) + uint(_443[_1663] < 0.0f);
                            float _1673 = abs(_444[_1669 / 2u]);
                            float _1693 = 0.5f - (0.000244140625f / _56_m0[_1634].w);
                            _1721 = _56_m0[_1634].xy + (clamp(float2((float(_1669) + ((((_444[uint(_386[_1669].x)] * _387[_1669].x) / _1673) * _1693) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_444[uint(_386[_1669].y)] * _387[_1669].y) / _1673) * _1693)), 0.0f.xx, 1.0f.xx) * _56_m0[_1634].zw);
                        }
                        _1728 = _1628 * _54.SampleLevel(_13, _1721, 0.0f).x;
                    }
                    else
                    {
                        _1728 = _1628;
                    }
                    float _2037;
                    if (_1728 > 0.0f)
                    {
                        int _1781;
                        if (_1581)
                        {
                            _1781 = int(_32_m6[_1440].x);
                        }
                        else
                        {
                            uint _1736 = asuint(_32_m6[_1437].w);
                            uint _1738 = asuint(_32_m6[_1440].x);
                            float3 _1739 = _526 - _32_m6[_1434].xyz;
                            float3 _1740 = abs(_1739);
                            float _1741 = _1740.x;
                            float _1742 = _1740.y;
                            float _1744 = _1740.z;
                            int _1776;
                            if ((_1741 > _1742) && (_1741 > _1744))
                            {
                                _1776 = int((_1739.x > 0.0f) ? (_1736 >> 24u) : ((_1736 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1768;
                                if (_1742 > _1744)
                                {
                                    _1768 = int((_1739.y > 0.0f) ? ((_1736 >> 8u) & 255u) : (_1736 & 255u));
                                }
                                else
                                {
                                    _1768 = int((_1739.z > 0.0f) ? ((_1738 >> 8u) & 255u) : (_1738 & 255u));
                                }
                                _1776 = _1768;
                            }
                            _1781 = (_1776 < 80) ? _1776 : (-1);
                        }
                        float _2035;
                        do
                        {
                            if (_36_m2[_1781].y > 0u)
                            {
                                uint _1799 = uint(_1781);
                                float4 _441 = _1388;
                                float _1810;
                                do
                                {
                                    if (_36_m2[_1799].y == 0u)
                                    {
                                        _1810 = 1.0f;
                                        break;
                                    }
                                    _1810 = _441[_36_m2[_1799].y - 1u];
                                    break;
                                } while(false);
                                _2035 = _1810;
                                break;
                            }
                            float4 _1817 = mul(_34_m10[_1781], float4((_526 - ((-_1568) * _34_m11[_1781].x)) + (_495 * (_34_m11[_1781].y * 5.0f)), 1.0f));
                            float _1818 = _1817.w;
                            float3 _1821 = _1817.xyz / _1818.xxx;
                            float2 _1822 = _1821.xy;
                            float3 _1830 = _1821.xyz;
                            bool3 _1831 = bool3(_1830.x <= 0.0f.xxx.x, _1830.y <= 0.0f.xxx.y, _1830.z <= 0.0f.xxx.z);
                            bool3 _1832 = bool3(_1830.x >= 1.0f.xxx.x, _1830.y >= 1.0f.xxx.y, _1830.z >= 1.0f.xxx.z);
                            float _1835 = _1821.z;
                            float2 _1846 = ((_1822 * (_34_m12[_1781].zw - _34_m12[_1781].xy)) + _34_m12[_1781].xy).xy * _34_m13.zw;
                            float2 _1848 = floor(_1846 + 0.5f.xx);
                            float2 _1849 = _1846 - _1848;
                            float _1850 = _1849.x;
                            float _1851 = _1850 + 0.5f;
                            float _1852 = _1851 * _1851;
                            float _1855 = 1.0f - _1850;
                            float _1856 = min(_1850, 0.0f);
                            float _1859 = _1850 + 1.0f;
                            float _1860 = max(_1850, 0.0f);
                            float _1871 = _1849.y;
                            float _1872 = _1871 + 0.5f;
                            float _1873 = _1872 * _1872;
                            float _1876 = 1.0f - _1871;
                            float _1877 = min(_1871, 0.0f);
                            float _1880 = _1871 + 1.0f;
                            float _1881 = max(_1871, 0.0f);
                            float3 _1893 = float3(0.1599999964237213134765625f * _1855, 0.1599999964237213134765625f * ((_1859 - (_1860 * _1860)) + 1.0f), _1852 * 0.07999999821186065673828125f);
                            float3 _1894 = float3(0.1599999964237213134765625f * ((_1852 * 0.5f) - _1850), 0.1599999964237213134765625f * ((_1855 - (_1856 * _1856)) + 1.0f), 0.1599999964237213134765625f * _1859) + _1893;
                            float3 _1896 = float3(0.1599999964237213134765625f * _1876, 0.1599999964237213134765625f * ((_1880 - (_1881 * _1881)) + 1.0f), _1873 * 0.07999999821186065673828125f);
                            float3 _1897 = float3(0.1599999964237213134765625f * ((_1873 * 0.5f) - _1871), 0.1599999964237213134765625f * ((_1876 - (_1877 * _1877)) + 1.0f), 0.1599999964237213134765625f * _1880) + _1896;
                            float3 _1903 = ((_1893 / _1894) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.xxx;
                            float3 _1905 = ((_1896 / _1897) + float3(-2.5f, -0.5f, 1.5f)) * _34_m13.yyy;
                            float2 _1907 = _1848 * _34_m13.xy;
                            float _1908 = _1903.x;
                            float _1909 = _1905.x;
                            float2 _1911 = _1907 + float2(_1908, _1909);
                            float _1912 = _1903.y;
                            float2 _1914 = _1907 + float2(_1912, _1909);
                            float _1915 = _1903.z;
                            float2 _1917 = _1907 + float2(_1915, _1909);
                            float _1918 = _1905.y;
                            float2 _1920 = _1907 + float2(_1908, _1918);
                            float2 _1922 = _1907 + float2(_1912, _1918);
                            float2 _1924 = _1907 + float2(_1915, _1918);
                            float _1925 = _1905.z;
                            float2 _1927 = _1907 + float2(_1908, _1925);
                            float2 _1929 = _1907 + float2(_1912, _1925);
                            float2 _1931 = _1907 + float2(_1915, _1925);
                            float _1932 = _1894.x;
                            float _1933 = _1897.x;
                            float _1935 = _1894.y;
                            float _1937 = _1894.z;
                            float _1939 = _1897.y;
                            float _1943 = _1897.z;
                            float _2009 = ((((((((_1932 * _1933) * _37.SampleCmpLevelZero(_16, float3(_1911, _430).xy, _1835)) + ((_1935 * _1933) * _37.SampleCmpLevelZero(_16, float3(_1914, _430).xy, _1835))) + ((_1937 * _1933) * _37.SampleCmpLevelZero(_16, float3(_1917, _430).xy, _1835))) + ((_1932 * _1939) * _37.SampleCmpLevelZero(_16, float3(_1920, _430).xy, _1835))) + ((_1935 * _1939) * _37.SampleCmpLevelZero(_16, float3(_1922, _430).xy, _1835))) + ((_1937 * _1939) * _37.SampleCmpLevelZero(_16, float3(_1924, _430).xy, _1835))) + ((_1932 * _1943) * _37.SampleCmpLevelZero(_16, float3(_1927, _430).xy, _1835))) + ((_1935 * _1943) * _37.SampleCmpLevelZero(_16, float3(_1929, _430).xy, _1835));
                            float2 _2022 = min(_1822, 1.0f.xx - _1822);
                            _2035 = lerp(1.0f, (any(bool3(_1831.x || _1832.x, _1831.y || _1832.y, _1831.z || _1832.z)) || ((asuint(_1835) & 2147483647u) > 2139095040u)) ? 1.0f : (_2009 + ((_1937 * _1943) * _37.SampleCmpLevelZero(_16, float3(_1931, _430).xy, _1835))), _1581 ? min(_34_m11[_1781].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_34_m11[_1781].z - _1818) * 0.25f, min(_2022.x, _2022.y)))) : _34_m11[_1781].w);
                            break;
                        } while(false);
                        _2037 = (_1781 >= 0) ? _2035 : 1.0f;
                    }
                    else
                    {
                        _2037 = 1.0f;
                    }
                    _2038 = _2037;
                    break;
                } while(false);
                _2732 = _1394 * _2038;
                _2733 = 0.0f.xxx;
            }
            _1416 = _2732;
            _1419 = _1418 + _2733;
        }
        _1391 = _1390 + _1418;
    }
    float3 _2737 = _1359.xyz + (_1390 * _1393);
    float3 _2739 = _462.xxx;
    float3 _2776;
    float3 _2777;
    [branch]
    if (_9_m23.x != 0.0f)
    {
        float _2752 = min(_22.SampleBias(_12, _4, _9_m16).x, _462);
        _2776 = clamp((pow(abs(max(0.0f, dot(_495, _552)) + _2752), exp2(((-16.0f) * _1146) - 1.0f)) - 1.0f) + _2752, 0.0f, 1.0f).xxx;
        _2777 = max(_2752.xxx, ((((((_1150 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2752) + ((_1150 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2752) + ((_1150 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2752);
    }
    else
    {
        _2776 = _2739;
        _2777 = _2739;
    }
    float3 _2800;
    do
    {
        [branch]
        if (((_473 > 0u) && (_473 <= 15u)) && (_498 > 0.0f))
        {
            uint _2788 = clamp(_473 - 1u, 0u, 14u);
            _2800 = _50.SampleLevel(_13, float3(_498 * _52_m0[_2788].w, 0.5f, float(_2788)), 0.0f).xyz;
            break;
        }
        _2800 = 1.0f.xxx;
        break;
    } while(false);
    float3 _2817 = (_526 + (_495 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_501 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2827 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2836 = _2817 - (_9_m105.xyz + (_2827 * (-_9_m107.w)));
    float _2850 = max(clamp((max(abs(_2836.x), abs(_2836.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2836.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _3152;
    float4 _3153;
    float4 _3154;
    float _3155;
    float _3156;
    if ((_9_m105.w != 0.0f) && (_2850 < 1.0f))
    {
        float3 _2863 = _2817 - (_9_m105.xyz + (_2827 * (-_9_m107.y)));
        float _2877 = max(clamp((max(abs(_2863.x), abs(_2863.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2863.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2953;
        float4 _2954;
        float4 _2955;
        float4 _2956;
        if (_2877 < 1.0f)
        {
            float3 _2886 = ((_2817 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2888 = _2886 - floor(_2886);
            float4 _2892 = _64.SampleLevel(_14, _2888, 0.0f);
            float _2893 = 1.0f - _2877;
            float _2897 = _9_m106.y * 0.5f;
            float _2902 = _2888.x;
            float _2903 = clamp(_2888.y, _2897, 1.0f - _2897) * 0.3333333432674407958984375f;
            float _2904 = _2888.z;
            float4 _2907 = _65.SampleLevel(_13, float3(_2902, _2903, _2904), 0.0f);
            float _2923 = _2892.x;
            float _2933 = _2892.y;
            float _2943 = _2892.z;
            _2953 = _2850 + (_2907.w * _2893);
            _2954 = float4(((_65.SampleLevel(_13, float3(_2902, _2903 + 0.666666686534881591796875f, _2904), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2943, _2943) * _2893;
            _2955 = float4(((_65.SampleLevel(_13, float3(_2902, _2903 + 0.3333333432674407958984375f, _2904), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2933, _2933) * _2893;
            _2956 = float4(((_2907.xyz * 4.0f) - 2.0f.xxx) * _2923, _2923) * _2893;
        }
        else
        {
            _2953 = _2850;
            _2954 = 0.0f.xxxx;
            _2955 = 0.0f.xxxx;
            _2956 = 0.0f.xxxx;
        }
        float3 _2962 = _2817 - (_9_m105.xyz + (_2827 * (-_9_m107.z)));
        float _2976 = max(clamp((max(abs(_2962.x), abs(_2962.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2962.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _3056;
        float4 _3057;
        float4 _3058;
        float4 _3059;
        if (_2976 < 1.0f)
        {
            float3 _2985 = ((_2817 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2987 = _2985 - floor(_2985);
            float4 _2991 = _66.SampleLevel(_14, _2987, 0.0f);
            float _2993 = _2877 * (1.0f - _2976);
            float _2997 = _9_m106.y * 0.5f;
            float _3002 = _2987.x;
            float _3003 = clamp(_2987.y, _2997, 1.0f - _2997) * 0.3333333432674407958984375f;
            float _3004 = _2987.z;
            float4 _3007 = _67.SampleLevel(_13, float3(_3002, _3003, _3004), 0.0f);
            float _3023 = _2991.x;
            float _3034 = _2991.y;
            float _3045 = _2991.z;
            _3056 = _2953 + (_3007.w * _2993);
            _3057 = _2954 + (float4(((_67.SampleLevel(_13, float3(_3002, _3003 + 0.666666686534881591796875f, _3004), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3045, _3045) * _2993);
            _3058 = _2955 + (float4(((_67.SampleLevel(_13, float3(_3002, _3003 + 0.3333333432674407958984375f, _3004), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3034, _3034) * _2993);
            _3059 = _2956 + (float4(((_3007.xyz * 4.0f) - 2.0f.xxx) * _3023, _3023) * _2993);
        }
        else
        {
            _3056 = _2953;
            _3057 = _2954;
            _3058 = _2955;
            _3059 = _2956;
        }
        float4 _3142;
        float4 _3143;
        float4 _3144;
        float _3145;
        if (_2976 > 0.0f)
        {
            float3 _3068 = ((_2817 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _3071 = _9_m106.xyz * 0.5f;
            float3 _3073 = clamp(_3068 - floor(_3068), _3071, 1.0f.xxx - _3071);
            float4 _3077 = _68.SampleLevel(_14, _3073, 0.0f);
            float _3079 = _2976 * (1.0f - _2850);
            float _3083 = _9_m106.y * 0.5f;
            float _3088 = _3073.x;
            float _3089 = clamp(_3073.y, _3083, 1.0f - _3083) * 0.3333333432674407958984375f;
            float _3090 = _3073.z;
            float4 _3093 = _69.SampleLevel(_13, float3(_3088, _3089, _3090), 0.0f);
            float _3109 = _3077.x;
            float _3120 = _3077.y;
            float _3131 = _3077.z;
            _3142 = _3057 + (float4(((_69.SampleLevel(_13, float3(_3088, _3089 + 0.666666686534881591796875f, _3090), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3131, _3131) * _3079);
            _3143 = _3058 + (float4(((_69.SampleLevel(_13, float3(_3088, _3089 + 0.3333333432674407958984375f, _3090), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3120, _3120) * _3079);
            _3144 = _3059 + (float4(((_3093.xyz * 4.0f) - 2.0f.xxx) * _3109, _3109) * _3079);
            _3145 = _3056 + (_3093.w * _3079);
        }
        else
        {
            _3142 = _3057;
            _3143 = _3058;
            _3144 = _3059;
            _3145 = _3056;
        }
        float _3148 = clamp((_3145 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _3152 = _3142;
        _3153 = _3143;
        _3154 = _3144;
        _3155 = _3148 - _2850;
        _3156 = (_3148 + _2850) * 0.5f;
    }
    else
    {
        _3152 = 0.0f.xxxx;
        _3153 = 0.0f.xxxx;
        _3154 = 0.0f.xxxx;
        _3155 = 0.0f;
        _3156 = 1.0f;
    }
    float4 _3176 = _3154 + float4(_9_m108.x * _3156, (_9_m108.y * _3156) + ((_9_m108.w * _3155) * 0.5f), _9_m108.z * _3156, (_9_m108.w * _3156) + ((_9_m108.y * _3155) * 0.375f));
    float4 _3196 = _3153 + float4(_9_m109.x * _3156, (_9_m109.y * _3156) + ((_9_m109.w * _3155) * 0.5f), _9_m109.z * _3156, (_9_m109.w * _3156) + ((_9_m109.y * _3155) * 0.375f));
    float4 _3216 = _3152 + float4(_9_m110.x * _3156, (_9_m110.y * _3156) + ((_9_m110.w * _3155) * 0.5f), _9_m110.z * _3156, (_9_m110.w * _3156) + ((_9_m110.y * _3155) * 0.375f));
    float4 _3374;
    float4 _3375;
    float4 _3376;
    [branch]
    if (all(bool2(_514.x >= 0.0f.xx.x, _514.y >= 0.0f.xx.y)))
    {
        float4 _3224 = _63.SampleLevel(_13, _514, 0.0f);
        float4 _3225 = abs(_3224);
        float4 _3371;
        float4 _3372;
        float4 _3373;
        [branch]
        if (any(bool4(_3225.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3225.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3225.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3225.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _3231 = length(_3224.yzw);
            uint _3233;
            float _3236;
            _3233 = 0u;
            _3236 = 1.0f;
            for (float _3238 = _3231; _3238 > 4.599999904632568359375f; )
            {
                _3233++;
                _3236 *= 0.5f;
                _3238 *= 0.5f;
                continue;
            }
            float4 _3242 = _3224 * _3236;
            float4 _3247 = float4(0.0f, _3242.yzw);
            float2 _3269 = (_62.SampleLevel(_13, float2(((((length(_3247) * _61_m3.x) + _61_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _61_m2.xy) + _61_m2.zw;
            float4 _3283;
            _3283 = float4(_3269.x * 3.5449078083038330078125f, _3247.yzw * _3269.y) * exp(_3242.x * 0.282094776630401611328125f);
            for (uint _3286 = 0u; _3286 < _3233; )
            {
                _3283 = mul(float4x4(_3283, float4(_3283.yx, 0.0f, 0.0f), float4(_3283.z, 0.0f, _3283.x, 0.0f), float4(_3283.w, 0.0f, 0.0f, _3283.x)) * 0.282094776630401611328125f, _3283);
                _3286++;
                continue;
            }
            float4x4 _3307 = float4x4(_3283, float4(_3283.yx, 0.0f, 0.0f), float4(_3283.z, 0.0f, _3283.x, 0.0f), float4(_3283.w, 0.0f, 0.0f, _3283.x)) * 0.282094776630401611328125f;
            float4 _3317 = mul(_3307, float4(_3176.w * 1.1283791065216064453125f, _3176.y * (-0.977204978466033935546875f), _3176.z * 0.977204978466033935546875f, _3176.x * (-0.977204978466033935546875f)));
            float4 _3337 = mul(_3307, float4(_3196.w * 1.1283791065216064453125f, _3196.y * (-0.977204978466033935546875f), _3196.z * 0.977204978466033935546875f, _3196.x * (-0.977204978466033935546875f)));
            float4 _3357 = mul(_3307, float4(_3216.w * 1.1283791065216064453125f, _3216.y * (-0.977204978466033935546875f), _3216.z * 0.977204978466033935546875f, _3216.x * (-0.977204978466033935546875f)));
            _3371 = float4(_3317.x * 0.886226952075958251953125f, _3317.w * (-1.02332675457000732421875f), _3317.y * (-1.02332675457000732421875f), _3317.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _3372 = float4(_3337.x * 0.886226952075958251953125f, _3337.w * (-1.02332675457000732421875f), _3337.y * (-1.02332675457000732421875f), _3337.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _3373 = float4(_3357.x * 0.886226952075958251953125f, _3357.w * (-1.02332675457000732421875f), _3357.y * (-1.02332675457000732421875f), _3357.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _3371 = _3176;
            _3372 = _3196;
            _3373 = _3216;
        }
        _3374 = _3371;
        _3375 = _3372;
        _3376 = _3373;
    }
    else
    {
        _3374 = _3176;
        _3375 = _3196;
        _3376 = _3216;
    }
    float _3383 = max(0.0f, dot(_3374.xyz * _2800.x, _495) + _3374.w);
    float _3390 = max(0.0f, dot(_3375.xyz * _2800.y, _495) + _3375.w);
    float _3397 = max(0.0f, dot(_3376.xyz * _2800.z, _495) + _3376.w);
    float3 _3407 = reflect(_554, _1081);
    float _3415 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1146, 0.001000000047497451305389404296875f))));
    float2 _3419 = floor(_501 * _28_m0.w);
    float _3436 = floor(_533 - _28_m2.y);
    float _3440 = clamp(_3436, 0.0f, _28_m1.x - 1.0f);
    uint _3450 = (_3436 <= _3440) ? (_25.Load(uint(_9_m21.z + int(_3419.x + (_3419.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_3440)) * 4 + 0)) : 0u;
    float _3453 = dot(float4(_3383, _3390, _3397, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _3455;
    float _3458;
    uint _3460;
    _3455 = 0.0f.xxx;
    _3458 = 1.0f;
    _3460 = _3450;
    uint _3461;
    float3 _3456;
    float _3459;
    bool _3463;
    [loop]
    for (;;)
    {
        _3463 = _3458 > 0.00999999977648258209228515625f;
        if ((_3460 != 0u) && _3463)
        {
            uint _3467 = firstbitlow(_3460);
            _3461 = _3460 ^ (1u << (_3467 & 31u));
            float3 _3487 = float3(dot(_28_m4[_3467]._m2, _530), dot(_28_m4[_3467]._m3, _530), dot(_28_m4[_3467]._m4, _530));
            float3 _3488 = abs(_3487);
            if (all(bool3(_3488.x <= _28_m4[_3467]._m1.xyz.x, _3488.y <= _28_m4[_3467]._m1.xyz.y, _3488.z <= _28_m4[_3467]._m1.xyz.z)))
            {
                float3 _3497 = _28_m4[_3467]._m1.xyz * 0.100000001490116119384765625f;
                float3 _3499 = _3488 * 0.100000001490116119384765625f;
                float3 _3500 = _3499 * _3499;
                float3 _3503 = (_28_m4[_3467]._m1.xyz - _3488) * _28_m4[_3467]._m5.xyz;
                float3 _3551;
                [branch]
                if (_28_m4[_3467]._m6.x == 1.0f)
                {
                    float3 _3536 = float3(dot(_28_m4[_3467]._m2.xyz, _3407), dot(_28_m4[_3467]._m3.xyz, _3407), dot(_28_m4[_3467]._m4.xyz, _3407));
                    float3 _3538 = (_28_m4[_3467]._m1.xyz - _3487) / _3536;
                    float3 _3541 = ((-_28_m4[_3467]._m1.xyz) - _3487) / _3536;
                    bool3 _3542 = bool3(_3536.x > 0.0f.xxx.x, _3536.y > 0.0f.xxx.y, _3536.z > 0.0f.xxx.z);
                    float3 _3543 = float3(_3542.x ? _3538.x : _3541.x, _3542.y ? _3538.y : _3541.y, _3542.z ? _3538.z : _3541.z);
                    _3551 = _3487 + (_3536 * min(min(_3543.x, _3543.y), _3543.z));
                }
                else
                {
                    _3551 = _3407;
                }
                float3 _3552 = normalize(_3551);
                float3 _3555 = float3(int3(sign(_3552)));
                float3 _3558 = _3552 / dot(_3552, _3555).xxx;
                float3 _3572;
                if (_3558.z < 0.0f)
                {
                    float3 _3563 = abs(_3558);
                    float2 _3570 = _3555.xy * float2(1.0f - _3563.y, 1.0f - _3563.x);
                    _3572 = float3(_3570.x, _3570.y, _3558.z);
                }
                else
                {
                    _3572 = _3558;
                }
                float _3597 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_3467]._m0, float4(_1081, 1.0f))));
                float _3610 = clamp((min(_3503.x, min(_3503.y, _3503.z)) * _28_m4[_3467]._m6.y) + ((((((_3497 * _3497).x - ((_3500.x + _3500.y) + _3500.z)) * _28_m4[_3467]._m5.x) * _28_m4[_3467]._m5.x) * (1.0f - _28_m4[_3467]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_3467]._m6.w;
                _3456 = _3455 + ((((_23.SampleLevel(_15, float3((((_3572.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_3467]._m1.w), _3415).xyz * _28_m4[_3467]._m5.w) * ((((((clamp(abs(_3453 / _3597), 0.0f, 1.0f) * 2.0f) + _3453) / (2.0f + _3597)) - 1.0f) * _9_m23.w) + 1.0f)) * _3610) * _3458);
                _3459 = _3458 * (1.0f - _3610);
            }
            else
            {
                _3456 = _3455;
                _3459 = _3458;
            }
            _3455 = _3456;
            _3458 = _3459;
            _3460 = _3461;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _3679;
    if (_3463)
    {
        float3 _3618 = normalize(_3407);
        float3 _3621 = float3(int3(sign(_3618)));
        float3 _3624 = _3618 / dot(_3618, _3621).xxx;
        float3 _3638;
        if (_3624.z < 0.0f)
        {
            float3 _3629 = abs(_3624);
            float2 _3636 = _3621.xy * float2(1.0f - _3629.y, 1.0f - _3629.x);
            _3638 = float3(_3636.x, _3636.y, _3624.z);
        }
        else
        {
            _3638 = _3624;
        }
        float _3665 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1081, 1.0f))));
        _3679 = _3455 + ((_23.SampleLevel(_15, float3((((_3638.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _3415).xyz * ((((((clamp(abs(_3453 / _3665), 0.0f, 1.0f) * 2.0f) + _3453) / (2.0f + _3665)) - 1.0f) * _9_m23.w) + 1.0f)) * _3458);
    }
    else
    {
        _3679 = _3455;
    }
    float3 _3685 = (_3679 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _3685 *= 0.25f + (0.75f * saturate(_3453));
    }
    float3 _3706;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _3700 = _21.SampleBias(_13, _4, _9_m16);
        float _3701 = _3700.x;
        _3706 = (_20.SampleBias(_13, _4, _9_m16).xyz * _3701) + (_3685 * (1.0f - _3701));
    }
    else
    {
        _3706 = _3685;
    }
    float3 _3709 = (((float3(_3383, _3390, _3397) * _1150) * _9_m22.x) * _2777) + ((_3706 * (_1179 + ((_1154 * ((1.0f - _1180) / _1180)) * _1179))) * _2776);
    float4 _3711 = float4(_2737.x, _2737.y, _2737.z, _1359.w) + float4(_3709.x, _3709.y, _3709.z, 0.0f.xxxx.w);
    float3 _3714 = clamp(_3711.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _3729 = _528 * _9_m46.w;
    float _3734 = max(0.00999999977648258209228515625f, _3729 + _9_m47.w);
    float3 _3748 = exp(_9_m45.xyz * ((-max(0.0f, (_553 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3734)) / _3734) * exp(_3729 + _9_m48.w))));
    float _3751 = dot(_554, _9_m44.xyz);
    float _3757 = _9_m45.w * _9_m45.w;
    float _3761 = (1.0f + _3757) - ((2.0f * _9_m45.w) * _3751);
    float3 _4085;
    float _4086;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3913 = (uint3(int3(_451, _452, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3914 = _3913.y;
        uint _3915 = _3913.z;
        uint _3918 = _3913.x + (_3914 * _3915);
        uint _3920 = _3914 + (_3915 * _3918);
        uint _3922 = _3915 + (_3918 * _3920);
        uint _3924 = _3918 + (_3920 * _3922);
        float _3948 = dot(_554, -_7_m0[2].xyz);
        float3 _3956 = _526 - _7_m11.xyz;
        float _3958 = (_9_m55.w * ((_3948 > 5.9604644775390625e-08f) ? (1.0f / _3948) : 0.0f)) * (1.0f / _553);
        float _3959 = _3956.y;
        float _3960 = _3958 * _3959;
        float _3962 = _7_m11.y + _3960;
        float _3963 = _3959 - _3960;
        float _3965 = (1.0f - _3958) * _553;
        float _3979 = max(-127.0f, _9_m49.z * _3963);
        float _4003 = max(-127.0f, _9_m52.x * _3963);
        float _4014 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3962 - _9_m49.x)))) * ((abs(_3979) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3979)) / _3979) : (0.693147182464599609375f - (0.2402265071868896484375f * _3979)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3962 - _9_m52.z)))) * ((abs(_4003) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4003)) / _4003) : (0.693147182464599609375f - (0.2402265071868896484375f * _4003))));
        float _4036 = clamp((_553 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _4039 = clamp((max(clamp(exp2(-(_4014 * _3965)), 0.0f, 1.0f), _9_m51.w) + clamp((_553 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4036, 0.0f, 1.0f);
        float4 _4079 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _59.SampleLevel(_13, float3((_501 + ((((float3(uint3(_3924, _3920 + (_3922 * _3924), _435) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_533 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_533 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _4081 = _4079.w;
        _4085 = _4079.xyz + (((_9_m51.xyz * (1.0f - _4039)) + (((_9_m54.xyz * pow(clamp(dot(_552, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4014 * max(_3965 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4036))) * _4081);
        _4086 = _4081 * _4039;
    }
    else
    {
        float3 _3789 = _526 - _7_m11.xyz;
        float _3791 = _3789.y;
        float _3805 = max(-127.0f, _9_m49.z * _3791);
        float _3829 = max(-127.0f, _9_m52.x * _3791);
        float _3840 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3805) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3805)) / _3805) : (0.693147182464599609375f - (0.2402265071868896484375f * _3805)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3829) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3829)) / _3829) : (0.693147182464599609375f - (0.2402265071868896484375f * _3829))));
        float _3862 = clamp((_553 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3865 = clamp((max(clamp(exp2(-(_3840 * _553)), 0.0f, 1.0f), _9_m51.w) + clamp((_553 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3862, 0.0f, 1.0f);
        _4085 = (_9_m51.xyz * (1.0f - _3865)) + (((_9_m54.xyz * pow(clamp(dot(_552, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3840 * max(_553 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3862));
        _4086 = _3865;
    }
    float3 _4089 = _3748 * _4086;
    float3 _4091 = (_3714 * _4089) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3751 * _3751)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3757) / max((12.56637096405029296875f * _3761) * sqrt(_3761), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3748)) * _4086) + _4085);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _4091 = (_4091 * 0.65f) + (_3714 * 0.35f);

    }
    float _4092 = dot(_4089, 0.3333333432674407958984375f.xxx);
    float4 _4093 = float4(_4091.x, _4091.y, _4091.z, _3711.w);
    _4093.w = _4092;
    float _4120 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _526) * _9_m61.z), 0.0f, 1.0f);
    float3 _4128 = lerp(_3714, _4093.xyz, min((1.0f - _4120) + ((_74.SampleLevel(_14, (_526 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _4120), 1.0f + _4092).xxx);
    _5 = float4(_4128.x, _4128.y, _4128.z, _4093.w);
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
