// DX11 0x60A0503D -> Vulkan 0xCAE899A1
struct _26
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

static float _368 = 0.0f;
static uint _372 = 0u;

static const int2 _327[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _328[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

[[vk::binding(31, 3)]]
cbuffer _6_7 : register(b31)
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

[[vk::binding(36, 3)]]
cbuffer _8_9 : register(b36)
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

[[vk::binding(40, 3)]] ByteAddressBuffer _24 : register(t40);
[[vk::binding(37, 3)]]
cbuffer _25_27 : register(b37)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(33, 3)]]
cbuffer _28_29 : register(b33)
{
    int _29_m0 : packoffset(c0);
    int _29_m1 : packoffset(c0.y);
    int _29_m2 : packoffset(c0.z);
    int _29_m3 : packoffset(c0.w);
    float _29_m4 : packoffset(c1);
    float _29_m5 : packoffset(c1.y);
    float _29_m6 : packoffset(c1.z);
    float _29_m7 : packoffset(c1.w);
    float _29_m8 : packoffset(c2);
    float _29_m9 : packoffset(c2.y);
    float _29_m10 : packoffset(c2.z);
    float _29_m11 : packoffset(c2.w);
};

[[vk::binding(32, 3)]]
cbuffer _30_31 : register(b32)
{
    float4 _31_m0 : packoffset(c0);
    float4 _31_m1 : packoffset(c1);
    float4 _31_m2 : packoffset(c2);
    float4 _31_m3 : packoffset(c3);
    float4 _31_m4 : packoffset(c4);
    uint4 _31_m5 : packoffset(c5);
    float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(35, 3)]]
cbuffer _32_33 : register(b35)
{
    column_major float4x4 _33_m0[5] : packoffset(c0);
    float4 _33_m1[4] : packoffset(c20);
    float4 _33_m2[4] : packoffset(c24);
    float4 _33_m3[4] : packoffset(c28);
    float4 _33_m4 : packoffset(c32);
    float4 _33_m5 : packoffset(c33);
    float4 _33_m6 : packoffset(c34);
    float4 _33_m7 : packoffset(c35);
    float4 _33_m8 : packoffset(c36);
    float4 _33_m9[27] : packoffset(c37);
    column_major float4x4 _33_m10[56] : packoffset(c64);
    float4 _33_m11[56] : packoffset(c288);
    float4 _33_m12[56] : packoffset(c344);
    float4 _33_m13 : packoffset(c400);
    float4 _33_m14[47] : packoffset(c401);
    column_major float4x4 _33_m15[15] : packoffset(c448);
    float4 _33_m16[15] : packoffset(c508);
    float4 _33_m17[15] : packoffset(c523);
    float4 _33_m18[15] : packoffset(c538);
    float4 _33_m19 : packoffset(c553);
    float4 _33_m20 : packoffset(c554);
    float4 _33_m21[21] : packoffset(c555);
    column_major float4x4 _33_m22 : packoffset(c576);
    column_major float4x4 _33_m23 : packoffset(c580);
    float4 _33_m24 : packoffset(c584);
    float4 _33_m25 : packoffset(c585);
    float4 _33_m26 : packoffset(c586);
    float4 _33_m27[128] : packoffset(c587);
};

[[vk::binding(39, 3)]]
cbuffer _34_35 : register(b39)
{
    column_major float4x4 _35_m0[32] : packoffset(c0);
    float4 _35_m1[32] : packoffset(c128);
    uint4 _35_m2[56] : packoffset(c160);
    int4 _35_m3 : packoffset(c216);
    float4 _35_m4 : packoffset(c217);
    float4 _35_m5[4] : packoffset(c218);
    float4 _35_m6 : packoffset(c222);
};

[[vk::binding(38, 3)]]
cbuffer _44_45 : register(b38)
{
    float4 _45_m0[32] : packoffset(c0);
    column_major float4x4 _45_m1[32] : packoffset(c32);
};

[[vk::binding(34, 3)]]
cbuffer _49_50 : register(b34)
{
    float4 _50_m0 : packoffset(c0);
    float4 _50_m1 : packoffset(c1);
    float4 _50_m2 : packoffset(c2);
    float4 _50_m3 : packoffset(c3);
    float4 _50_m4 : packoffset(c4);
    uint4 _50_m5 : packoffset(c5);
    float4 _50_m6 : packoffset(c6);
    float4 _50_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(4, 3)]] SamplerComparisonState _16 : register(s4);
[[vk::binding(28, 3)]] Texture2D<float4> _18 : register(t28);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8);
[[vk::binding(9, 3)]] Texture2D<float4> _20 : register(t9);
[[vk::binding(21, 3)]] Texture2D<float4> _21 : register(t21);
[[vk::binding(10, 3)]] Texture2DArray<float4> _22 : register(t10);
[[vk::binding(11, 3)]] Texture2D<float4> _36 : register(t11);
[[vk::binding(7, 3)]] Texture2D<float4> _37 : register(t7);
[[vk::binding(23, 3)]] Texture2D<float4> _38 : register(t23);
[[vk::binding(29, 3)]] Texture2D<float4> _39 : register(t29);
[[vk::binding(12, 3)]] Texture2D<float4> _41 : register(t12);
[[vk::binding(27, 3)]] Texture2D<float4> _42 : register(t27);
[[vk::binding(13, 3)]] Texture2D<float4> _43 : register(t13);
[[vk::binding(20, 3)]] Texture3D<float4> _48 : register(t20);
[[vk::binding(30, 3)]] Texture2D<float4> _51 : register(t30);
[[vk::binding(6, 3)]] Texture2D<float4> _52 : register(t6);
[[vk::binding(19, 3)]] Texture3D<float4> _53 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _54 : register(t16);
[[vk::binding(18, 3)]] Texture3D<float4> _55 : register(t18);
[[vk::binding(15, 3)]] Texture3D<float4> _56 : register(t15);
[[vk::binding(17, 3)]] Texture3D<float4> _57 : register(t17);
[[vk::binding(14, 3)]] Texture3D<float4> _58 : register(t14);
[[vk::binding(5, 3)]] Texture2D<float4> _59 : register(t5);
[[vk::binding(26, 3)]] Texture2D<float4> _60 : register(t26);
[[vk::binding(25, 3)]] Texture2D<float4> _61 : register(t25);
[[vk::binding(24, 3)]] Texture2D<float4> _62 : register(t24);
[[vk::binding(22, 3)]] Texture3D<float4> _63 : register(t22);

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
    uint2 _385 = uint2(gl_FragCoord.xy);
    int _388 = int(_385.x);
    int _389 = int(_385.y);
    int2 _391 = int3(_388, _389, 0).xy;
    float4 _393 = _60.Load(int3(_391, 0));
    float4 _395 = _61.Load(int3(_391, 0));
    float _398 = _393.x;
    float _399 = _393.y;
    float2 _403 = (_395.xy * 2.0f) - 1.0f.xx;
    float _407 = 1.0f - dot(1.0f.xx, abs(_403));
    float3 _409 = float3(_403.x, _407, _403.y);
    float3 _421;
    if (_407 < 0.0f)
    {
        float2 _416 = _409.xz;
        bool2 _417 = bool2(_416.x >= 0.0f.xx.x, _416.y >= 0.0f.xx.y);
        float2 _419 = (1.0f.xx - abs(_409.zx)) * float2(_417.x ? 1.0f.xx.x : (-1.0f).xx.x, _417.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _421 = float3(_419.x, _409.y, _419.y);
    }
    else
    {
        _421 = _409;
    }
    float3 _422 = normalize(_421);
    float _423 = _395.z;
    float2 _427 = float2(_385);
    float2 _432 = (_427 + 0.5f.xx) * _9_m0.zw;
    float2 _440 = gl_FragCoord.xy * _9_m0.zw;
    float2 _442 = (_440 * 2.0f) - 1.0f.xx;
    float4 _445 = float4(_442, _18.SampleLevel(_12, _432, 0.0f).x, 1.0f);
    _445.y = -_442.y;
    float4 _448 = mul(_7_m6, _445);
    float3 _452 = _448.xyz / _448.w.xxx;
    float4 _456 = float4(_452, 1.0f);
    float _459 = abs(mul(_7_m0, _456).z);
    float3 _474;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _474 = _7_m11.xyz - _452;
            break;
        }
        else
        {
            _474 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _475 = dot(_474, _474);
    float _477 = rsqrt(max(_475, 9.9999999392252902907785028219223e-09f));
    float3 _478 = _474 * _477;
    float _479 = _475 * _477;
    float3 _480 = -_478;
    bool _483 = _9_m129.x > 0.00048828125f;
    float2 _493;
    if (_483)
    {
        _493 = _59.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _493 = 1.0f.xx;
    }
    float _496 = min(_493.x, _493.y);
    float2 _497 = _493 * 1.0f;
    float _498 = _497.x;
    float _501 = clamp((_393.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _506;
    float _507;
    if (_483)
    {
        _506 = lerp(1.0f, _493.y, _501);
        _507 = lerp(1.0f, 0.0f, _501);
    }
    else
    {
        _506 = 1.0f;
        _507 = 1.0f;
    }
    float _512 = lerp(lerp(min(_506, _423), _423, _496), _423, _498);
    float3 _514 = _62.Load(int3(_391, 0)).xyz * lerp(lerp(min(_507, 1.0f), 1.0f, _496), 1.0f, _498);
    float3 _515 = _514 * _398;
    float3 _516 = _514 - _515;
    float3 _520 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _398)).xxx + _515;
    float _521 = dot(_422, _478);
    float _522 = max(0.0f, _521);
    float _523 = _512 * _512;
    float _524 = _522 * _522;
    float _525 = _524 * _522;
    float2 _526 = float2(1.0f, _522);
    float2 _529 = float2(1.0f, _523);
    float _530 = _523 * _523;
    float3 _532 = float3(1.0f, _523, _530 * _523);
    float _537 = dot(mul(_526, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _529) / dot(mul(float3(1.0f, _524, _525), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _532);
    float _542 = dot(mul(_526, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _529) / dot(mul(float3(1.0f, _522, _525), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _532);
    float3 _545 = (_520 * _537) + _542.xxx;
    float _546 = _537 + _542;
    float4 _559 = _37.Load(int3(_391, 0));
    float _560 = _559.x;
    float4 _696;
    if (_560 > 0.001000000047497451305389404296875f)
    {
        float3 _570 = reflect(_480, _422);
        float3 _571 = -_31_m0.xyz;
        float _576 = dot(_571, _570);
        float3 _578 = _570 - (_571 * _576);
        bool3 _580 = (_576 < _31_m4.z).xxx;
        float3 _588 = normalize((_571 * _31_m4.z) + ((_578 * rsqrt(max(6.103515625e-05f, dot(_578, _578)))) * _31_m4.y));
        float3 _589 = float3(_580.x ? _588.x : _570.x, _580.y ? _588.y : _570.y, _580.z ? _588.z : _570.z);
        float3 _593 = _589 + _478;
        float3 _597 = _593 * rsqrt(max(6.103515625e-05f, dot(_593, _593)));
        float _598 = clamp(dot(_589, _422), 0.0f, 1.0f);
        float _600 = clamp(dot(_422, _597), 0.0f, 1.0f);
        float _603 = clamp(_521, 0.0f, 1.0f);
        float _624 = (((_600 * _530) - _600) * _600) + 1.0f;
        float _627 = 1.0f - clamp(dot(_478, _597), 0.0f, 1.0f);
        float _628 = _627 * _627;
        float _630 = (_627 * _628) * _628;
        float _654 = 1.0f - _512;
        float _661 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_654 * (1.04997003078460693359375f + (_654 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _654))))));
        float _662 = 1.0f - _661;
        float3 _665 = _520 + ((1.0f.xxx - _520) * 0.0476190485060214996337890625f);
        float3 _681 = ((clamp((min(((_520 * (1.0f - _630)) + _630.xxx) * ((_530 / (_624 * _624)) * (0.5f / (((_598 * sqrt(((((-_603) * _530) + _603) * _603) + _530)) + (_603 * sqrt(((((-_598) * _530) + _598) * _598) + _530))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_665 * (((_41.SampleLevel(_13, (float2(_603, _512) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_598, _512) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _661) / _662)) * _665) / (1.0f.xxx - (_665 * _662)))) * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _598) + ((_516 * 1.0f) * _598)) * _31_m1.xyz;
        float3 _694 = lerp(_681, _681 * _39.SampleBias(_13, float2(_560, 0.5f), _9_m16).xyz, (1.0f - _560).xxx) * min(_42.SampleLevel(_13, _440, 0.0f).x, 1.0f);
        _696 = float4(_694.x, _694.y, _694.z, 0.0f.xxxx.w);
    }
    else
    {
        _696 = 0.0f.xxxx;
    }
    float2 _698 = floor(_427 * 0.03125f);
    int _706 = int((_698.x + (_698.y * _29_m5)) * 8.0f);
    float _713 = floor(_459 - (_9_m3.y * _29_m11));
    float _717 = clamp(_713, 0.0f, _29_m7 - 1.0f);
    int _719 = int(_717 * 8.0f);
    float4 _725 = _38.SampleBias(_13, _432, _9_m16);
    float3 _727;
    float _730;
    _727 = 0.0f.xxx;
    _730 = 1.0f;
    float3 _728;
    float _731;
    [loop]
    for (int _732 = 0; _732 <= 7; _727 = _728, _730 = _731, _732++)
    {
        uint _750 = (_713 <= _717) ? (_24.Load(uint(_706 + _732) * 4 + 0) & _24.Load(uint((_9_m21.y + _719) + _732) * 4 + 0)) : 0u;
        uint _751 = uint(_732);
        float3 _755;
        _731 = _730;
        _755 = 0.0f.xxx;
        uint _758;
        float _753;
        float3 _756;
        [loop]
        for (uint _757 = _750; _757 != 0u; _731 = _753, _755 = _756, _757 = _758)
        {
            uint _762 = firstbitlow(_757);
            _758 = _757 ^ (1u << (_762 & 31u));
            int _768 = int((32u * _751) + _762) * 8;
            int _771 = _768 + 1;
            int _774 = _768 + 2;
            int _777 = _768 + 3;
            int _780 = _768 + 5;
            int _783 = _768 + 6;
            int _786 = _768 + 7;
            uint _790 = uint(_31_m6[_780].w);
            float _865;
            if ((_790 & 1u) == 1u)
            {
                uint _796 = asuint(_31_m6[_780].x);
                uint _803 = asuint(_31_m6[_780].y);
                uint _810 = asuint(_31_m6[_780].z);
                uint _817 = asuint(_31_m6[_783].x);
                uint _824 = asuint(_31_m6[_783].y);
                uint _831 = asuint(_31_m6[_783].z);
                float3 _850 = abs(mul(float4(_452 - _31_m6[_771].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_796).x, spvUnpackHalf2x16(_810).x, spvUnpackHalf2x16(_824).x, 0.0f), float4(spvUnpackHalf2x16(_796 >> 16u).x, spvUnpackHalf2x16(_810 >> 16u).x, spvUnpackHalf2x16(_824 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_803).x, spvUnpackHalf2x16(_817).x, spvUnpackHalf2x16(_831).x, 0.0f), float4(spvUnpackHalf2x16(_803 >> 16u).x, spvUnpackHalf2x16(_817 >> 16u).x, spvUnpackHalf2x16(_831 >> 16u).x, 0.0f))).xyz);
                float _857 = _31_m6[_786].x * 0.5f;
                float _863 = 1.0f - clamp((max(max(_850.x, _850.y), _850.z) - (_857 + 0.5f)) / (0.5f - _857), 0.0f, 1.0f);
                _865 = _863 * _863;
            }
            else
            {
                _865 = 1.0f;
            }
            bool _869 = _31_m6[_777].z > 0.5f;
            if ((false || (_865 < 0.001000000047497451305389404296875f)) || _869)
            {
                _753 = _731;
                _756 = _755;
                continue;
            }
            float _2020;
            float3 _2021;
            if (_31_m6[_768].w < 1.5f)
            {
                float3 _1377 = float3(0.100000001490116119384765625f, _512, 1.0f);
                float _1386 = (0.5f + (0.5f * _31_m6[_774].y)) - abs(_31_m6[_774].x);
                float _1387 = _31_m6[_774].y - _1386;
                float _1394 = abs(max((1.0f - abs(_1386)) - abs(_1387), 0.00048828125f));
                float3 _1398 = normalize(float3(_1386, _1387, (_31_m6[_774].x >= 0.0f) ? _1394 : (-_1394)));
                float3 _1399 = _31_m6[_771].xyz - _452;
                float _1400 = dot(_1399, _1399);
                float _1401 = rsqrt(_1400);
                float3 _1402 = _1399 * _1401;
                float _1406 = clamp(_31_m6[_786].y * _1401, 0.0f, 1.0f);
                int _1411 = int(_31_m6[_786].w);
                float3 _1412 = _1398 * _31_m6[_774].z;
                float3 _1413 = _1412 * 0.5f;
                float3 _1414 = _1399 - _1413;
                float3 _1415 = _1399 + _1413;
                bool _1418 = (uint(_31_m6[_768].w) & 1u) == 0u;
                bool _1421 = _1418 || ((_790 & 2u) != 0u);
                bool _1424 = (!_1418) && (_31_m6[_774].z > 0.0f);
                float _1443;
                float _1444;
                if (_1424)
                {
                    float _1428 = length(_1414);
                    float _1429 = length(_1415);
                    _1443 = clamp(0.5f * ((dot(_422, _1414) / _1428) + (dot(_422, _1415) / _1429)), 0.0f, 1.0f);
                    _1444 = 1.0f / ((((_1428 * _1429) + dot(_1414, _1415)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1443 = clamp(dot(_422, _1402), 0.0f, 1.0f);
                    _1444 = 1.0f;
                }
                float _1466;
                if (_31_m6[_783].w < 0.0f)
                {
                    float _1460 = _1400 * (_31_m6[_771].w * _31_m6[_771].w);
                    float _1463 = clamp(1.0f - (_1460 * _1460), 0.0f, 1.0f);
                    _1466 = lerp(1.0f / (_1400 + 1.0f), _1444, float(_1424)) * (_1463 * _1463);
                }
                else
                {
                    float3 _1449 = _1399 * _31_m6[_771].w;
                    _1466 = _1444 * pow(1.0f - clamp(dot(_1449, _1449), 0.0f, 1.0f), _31_m6[_783].w);
                }
                float _1472 = clamp((dot(_1402, -_1398) - _31_m6[_774].z) * _31_m6[_774].w, 0.0f, 1.0f);
                float _1476 = _1466 * lerp(1.0f, _1472 * _1472, float(_1418));
                float _1576;
                if ((!_1424) && (_1411 >= 0))
                {
                    uint _1482 = uint(_1411);
                    float2 _1569;
                    [branch]
                    if (_1418)
                    {
                        float4 _1559 = mul(_45_m1[_1482], _456);
                        _1569 = _45_m0[_1482].xy + (clamp(_1559.xy / _1559.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_1482].zw);
                    }
                    else
                    {
                        float3 _1496 = mul(float4(-_1399, 0.0f), _45_m1[_1482]).xyz;
                        float3 _377 = _1496;
                        float3 _376 = _1496;
                        float3 _375 = abs(_1496);
                        uint _1505 = uint(int(_375.y > _375.x));
                        uint _1511 = (_375.z > _375[_1505]) ? 2u : _1505;
                        uint _1517 = (_1511 * 2u) + uint(_376[_1511] < 0.0f);
                        float _1521 = abs(_377[_1517 / 2u]);
                        float _1541 = 0.5f - (0.000244140625f / _45_m0[_1482].w);
                        _1569 = _45_m0[_1482].xy + (clamp(float2((float(_1517) + ((((_377[uint(_327[_1517].x)] * _328[_1517].x) / _1521) * _1541) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_377[uint(_327[_1517].y)] * _328[_1517].y) / _1521) * _1541)), 0.0f.xx, 1.0f.xx) * _45_m0[_1482].zw);
                    }
                    _1576 = _1476 * _43.SampleLevel(_13, _1569, 0.0f).x;
                }
                else
                {
                    _1576 = _1476;
                }
                bool _1577 = _1576 > 0.0f;
                float _1885;
                if (_1577)
                {
                    int _1629;
                    if (_1421)
                    {
                        _1629 = int(_31_m6[_777].x);
                    }
                    else
                    {
                        uint _1584 = asuint(_31_m6[_774].w);
                        uint _1586 = asuint(_31_m6[_777].x);
                        float3 _1587 = _452 - _31_m6[_771].xyz;
                        float3 _1588 = abs(_1587);
                        float _1589 = _1588.x;
                        float _1590 = _1588.y;
                        float _1592 = _1588.z;
                        int _1624;
                        if ((_1589 > _1590) && (_1589 > _1592))
                        {
                            _1624 = int((_1587.x > 0.0f) ? (_1584 >> 24u) : ((_1584 >> 16u) & 255u));
                        }
                        else
                        {
                            int _1616;
                            if (_1590 > _1592)
                            {
                                _1616 = int((_1587.y > 0.0f) ? ((_1584 >> 8u) & 255u) : (_1584 & 255u));
                            }
                            else
                            {
                                _1616 = int((_1587.z > 0.0f) ? ((_1586 >> 8u) & 255u) : (_1586 & 255u));
                            }
                            _1624 = _1616;
                        }
                        _1629 = (_1624 < 80) ? _1624 : (-1);
                    }
                    float _1883;
                    do
                    {
                        if (_35_m2[_1629].y > 0u)
                        {
                            uint _1647 = uint(_1629);
                            float4 _374 = _725;
                            float _1658;
                            do
                            {
                                if (_35_m2[_1647].y == 0u)
                                {
                                    _1658 = 1.0f;
                                    break;
                                }
                                _1658 = _374[_35_m2[_1647].y - 1u];
                                break;
                            } while(false);
                            _1883 = _1658;
                            break;
                        }
                        float4 _1665 = mul(_33_m10[_1629], float4((_452 - ((-_1402) * _33_m11[_1629].x)) + (_422 * (_33_m11[_1629].y * 5.0f)), 1.0f));
                        float _1666 = _1665.w;
                        float3 _1669 = _1665.xyz / _1666.xxx;
                        float2 _1670 = _1669.xy;
                        float3 _1678 = _1669.xyz;
                        bool3 _1679 = bool3(_1678.x <= 0.0f.xxx.x, _1678.y <= 0.0f.xxx.y, _1678.z <= 0.0f.xxx.z);
                        bool3 _1680 = bool3(_1678.x >= 1.0f.xxx.x, _1678.y >= 1.0f.xxx.y, _1678.z >= 1.0f.xxx.z);
                        float _1683 = _1669.z;
                        float2 _1694 = ((_1670 * (_33_m12[_1629].zw - _33_m12[_1629].xy)) + _33_m12[_1629].xy).xy * _33_m13.zw;
                        float2 _1696 = floor(_1694 + 0.5f.xx);
                        float2 _1697 = _1694 - _1696;
                        float _1698 = _1697.x;
                        float _1699 = _1698 + 0.5f;
                        float _1700 = _1699 * _1699;
                        float _1703 = 1.0f - _1698;
                        float _1704 = min(_1698, 0.0f);
                        float _1707 = _1698 + 1.0f;
                        float _1708 = max(_1698, 0.0f);
                        float _1719 = _1697.y;
                        float _1720 = _1719 + 0.5f;
                        float _1721 = _1720 * _1720;
                        float _1724 = 1.0f - _1719;
                        float _1725 = min(_1719, 0.0f);
                        float _1728 = _1719 + 1.0f;
                        float _1729 = max(_1719, 0.0f);
                        float3 _1741 = float3(0.1599999964237213134765625f * _1703, 0.1599999964237213134765625f * ((_1707 - (_1708 * _1708)) + 1.0f), _1700 * 0.07999999821186065673828125f);
                        float3 _1742 = float3(0.1599999964237213134765625f * ((_1700 * 0.5f) - _1698), 0.1599999964237213134765625f * ((_1703 - (_1704 * _1704)) + 1.0f), 0.1599999964237213134765625f * _1707) + _1741;
                        float3 _1744 = float3(0.1599999964237213134765625f * _1724, 0.1599999964237213134765625f * ((_1728 - (_1729 * _1729)) + 1.0f), _1721 * 0.07999999821186065673828125f);
                        float3 _1745 = float3(0.1599999964237213134765625f * ((_1721 * 0.5f) - _1719), 0.1599999964237213134765625f * ((_1724 - (_1725 * _1725)) + 1.0f), 0.1599999964237213134765625f * _1728) + _1744;
                        float3 _1751 = ((_1741 / _1742) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                        float3 _1753 = ((_1744 / _1745) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                        float2 _1755 = _1696 * _33_m13.xy;
                        float _1756 = _1751.x;
                        float _1757 = _1753.x;
                        float2 _1759 = _1755 + float2(_1756, _1757);
                        float _1760 = _1751.y;
                        float2 _1762 = _1755 + float2(_1760, _1757);
                        float _1763 = _1751.z;
                        float2 _1765 = _1755 + float2(_1763, _1757);
                        float _1766 = _1753.y;
                        float2 _1768 = _1755 + float2(_1756, _1766);
                        float2 _1770 = _1755 + float2(_1760, _1766);
                        float2 _1772 = _1755 + float2(_1763, _1766);
                        float _1773 = _1753.z;
                        float2 _1775 = _1755 + float2(_1756, _1773);
                        float2 _1777 = _1755 + float2(_1760, _1773);
                        float2 _1779 = _1755 + float2(_1763, _1773);
                        float _1780 = _1742.x;
                        float _1781 = _1745.x;
                        float _1783 = _1742.y;
                        float _1785 = _1742.z;
                        float _1787 = _1745.y;
                        float _1791 = _1745.z;
                        float _1857 = ((((((((_1780 * _1781) * _36.SampleCmpLevelZero(_16, float3(_1759, _368).xy, _1683)) + ((_1783 * _1781) * _36.SampleCmpLevelZero(_16, float3(_1762, _368).xy, _1683))) + ((_1785 * _1781) * _36.SampleCmpLevelZero(_16, float3(_1765, _368).xy, _1683))) + ((_1780 * _1787) * _36.SampleCmpLevelZero(_16, float3(_1768, _368).xy, _1683))) + ((_1783 * _1787) * _36.SampleCmpLevelZero(_16, float3(_1770, _368).xy, _1683))) + ((_1785 * _1787) * _36.SampleCmpLevelZero(_16, float3(_1772, _368).xy, _1683))) + ((_1780 * _1791) * _36.SampleCmpLevelZero(_16, float3(_1775, _368).xy, _1683))) + ((_1783 * _1791) * _36.SampleCmpLevelZero(_16, float3(_1777, _368).xy, _1683));
                        float2 _1870 = min(_1670, 1.0f.xx - _1670);
                        _1883 = lerp(1.0f, (any(bool3(_1679.x || _1680.x, _1679.y || _1680.y, _1679.z || _1680.z)) || ((asuint(_1683) & 2147483647u) > 2139095040u)) ? 1.0f : (_1857 + ((_1785 * _1791) * _36.SampleCmpLevelZero(_16, float3(_1779, _368).xy, _1683))), _1421 ? min(_33_m11[_1629].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1629].z - _1666) * 0.25f, min(_1870.x, _1870.y)))) : _33_m11[_1629].w);
                        break;
                    } while(false);
                    _1885 = (_1629 >= 0) ? _1883 : 1.0f;
                }
                else
                {
                    _1885 = 1.0f;
                }
                float3 _1909;
                float3 _1910;
                if (_1424)
                {
                    float3 _1888 = _1377 * _1377;
                    float3 _1889 = reflect(_480, _422);
                    float _1898 = dot(_1889, _1412);
                    _1909 = _1888 / clamp(_1888 + (0.5f * clamp(_31_m6[_774].z * _1401, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _1910 = normalize(_1414 + (_1412 * clamp(dot(_1414, (_1889 * _1898) - _1412) / ((_31_m6[_774].z * _31_m6[_774].z) - (_1898 * _1898)), 0.0f, 1.0f)));
                }
                else
                {
                    _1909 = 1.0f.xxx;
                    _1910 = _1402;
                }
                float3 _1911 = _1910 + _478;
                float3 _1915 = _1911 * rsqrt(max(6.103515625e-05f, dot(_1911, _1911)));
                float3 _2019;
                if (_1577)
                {
                    float _1918 = clamp(_1443, 0.0f, 1.0f);
                    float _1920 = clamp(dot(_422, _1915), 0.0f, 1.0f);
                    float _1922 = clamp(dot(_478, _1915), 0.0f, 1.0f);
                    float _1923 = clamp(_521, 0.0f, 1.0f);
                    float _1933;
                    if (_1406 > 0.0f)
                    {
                        _1933 = clamp(_523 + ((_1406 * _1406) / ((_1922 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1933 = _523;
                    }
                    float _1934 = _1933 * _1933;
                    float _1955 = (((_1920 * _1934) - _1920) * _1920) + 1.0f;
                    float _1960 = 1.0f - _1922;
                    float _1961 = _1960 * _1960;
                    float _1963 = (_1960 * _1961) * _1961;
                    float _1987 = 1.0f - _512;
                    float _1994 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1987 * (1.04997003078460693359375f + (_1987 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1987))))));
                    float _1995 = 1.0f - _1994;
                    float3 _1998 = _520 + ((1.0f.xxx - _520) * 0.0476190485060214996337890625f);
                    float3 _2018 = ((clamp((min(((_520 * (1.0f - _1963)) + _1963.xxx) * (((_1934 / (_1955 * _1955)) * _1909.y) * (0.5f / (((_1918 * sqrt(((((-_1923) * _1934) + _1923) * _1923) + _1934)) + (_1923 * sqrt(((((-_1918) * _1934) + _1918) * _1918) + _1934))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1998 * (((_41.SampleLevel(_13, (float2(_1923, _512) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1918, _512) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1994) / _1995)) * _1998) / (1.0f.xxx - (_1998 * _1995)))) * _31_m6[_786].z, 0.0f.xxx, 1000.0f.xxx) * _1443) + ((_516 * _1909.z) * _1443)) * (((_31_m6[_768].xyz * _1576) * _1885) * _865);
                    _2019 = _2018;
                }
                else
                {
                    _2019 = 0.0f.xxx;
                }
                _2020 = _731;
                _2021 = _2019;
            }
            else
            {
                float _1375;
                do
                {
                    if (_869)
                    {
                        _1375 = 1.0f;
                        break;
                    }
                    float _889 = (0.5f + (0.5f * _31_m6[_774].y)) - abs(_31_m6[_774].x);
                    float _890 = _31_m6[_774].y - _889;
                    float _897 = abs(max((1.0f - abs(_889)) - abs(_890), 0.00048828125f));
                    float3 _901 = normalize(float3(_889, _890, (_31_m6[_774].x >= 0.0f) ? _897 : (-_897)));
                    float3 _902 = _31_m6[_771].xyz - _452;
                    float _903 = dot(_902, _902);
                    float3 _905 = _902 * rsqrt(_903);
                    int _908 = int(_31_m6[_786].w);
                    float3 _910 = (_901 * _31_m6[_774].z) * 0.5f;
                    float3 _911 = _902 - _910;
                    float3 _912 = _902 + _910;
                    bool _915 = (uint(_31_m6[_768].w) & 1u) == 0u;
                    bool _918 = _915 || ((_790 & 2u) != 0u);
                    bool _921 = (!_915) && (_31_m6[_774].z > 0.0f);
                    float _933;
                    if (_921)
                    {
                        _933 = 1.0f / ((((length(_911) * length(_912)) + dot(_911, _912)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _933 = 1.0f;
                    }
                    float _955;
                    if (_31_m6[_783].w < 0.0f)
                    {
                        float _949 = _903 * (_31_m6[_771].w * _31_m6[_771].w);
                        float _952 = clamp(1.0f - (_949 * _949), 0.0f, 1.0f);
                        _955 = lerp(1.0f / (_903 + 1.0f), _933, float(_921)) * (_952 * _952);
                    }
                    else
                    {
                        float3 _938 = _902 * _31_m6[_771].w;
                        _955 = _933 * pow(1.0f - clamp(dot(_938, _938), 0.0f, 1.0f), _31_m6[_783].w);
                    }
                    float _961 = clamp((dot(_905, -_901) - _31_m6[_774].z) * _31_m6[_774].w, 0.0f, 1.0f);
                    float _965 = _955 * lerp(1.0f, _961 * _961, float(_915));
                    float _1065;
                    if ((!_921) && (_908 >= 0))
                    {
                        uint _971 = uint(_908);
                        float2 _1058;
                        [branch]
                        if (_915)
                        {
                            float4 _1048 = mul(_45_m1[_971], _456);
                            _1058 = _45_m0[_971].xy + (clamp(_1048.xy / _1048.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_971].zw);
                        }
                        else
                        {
                            float3 _985 = mul(float4(-_902, 0.0f), _45_m1[_971]).xyz;
                            float3 _381 = _985;
                            float3 _380 = _985;
                            float3 _379 = abs(_985);
                            uint _994 = uint(int(_379.y > _379.x));
                            uint _1000 = (_379.z > _379[_994]) ? 2u : _994;
                            uint _1006 = (_1000 * 2u) + uint(_380[_1000] < 0.0f);
                            float _1010 = abs(_381[_1006 / 2u]);
                            float _1030 = 0.5f - (0.000244140625f / _45_m0[_971].w);
                            _1058 = _45_m0[_971].xy + (clamp(float2((float(_1006) + ((((_381[uint(_327[_1006].x)] * _328[_1006].x) / _1010) * _1030) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_381[uint(_327[_1006].y)] * _328[_1006].y) / _1010) * _1030)), 0.0f.xx, 1.0f.xx) * _45_m0[_971].zw);
                        }
                        _1065 = _965 * _43.SampleLevel(_13, _1058, 0.0f).x;
                    }
                    else
                    {
                        _1065 = _965;
                    }
                    float _1374;
                    if (_1065 > 0.0f)
                    {
                        int _1118;
                        if (_918)
                        {
                            _1118 = int(_31_m6[_777].x);
                        }
                        else
                        {
                            uint _1073 = asuint(_31_m6[_774].w);
                            uint _1075 = asuint(_31_m6[_777].x);
                            float3 _1076 = _452 - _31_m6[_771].xyz;
                            float3 _1077 = abs(_1076);
                            float _1078 = _1077.x;
                            float _1079 = _1077.y;
                            float _1081 = _1077.z;
                            int _1113;
                            if ((_1078 > _1079) && (_1078 > _1081))
                            {
                                _1113 = int((_1076.x > 0.0f) ? (_1073 >> 24u) : ((_1073 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1105;
                                if (_1079 > _1081)
                                {
                                    _1105 = int((_1076.y > 0.0f) ? ((_1073 >> 8u) & 255u) : (_1073 & 255u));
                                }
                                else
                                {
                                    _1105 = int((_1076.z > 0.0f) ? ((_1075 >> 8u) & 255u) : (_1075 & 255u));
                                }
                                _1113 = _1105;
                            }
                            _1118 = (_1113 < 80) ? _1113 : (-1);
                        }
                        float _1372;
                        do
                        {
                            if (_35_m2[_1118].y > 0u)
                            {
                                uint _1136 = uint(_1118);
                                float4 _378 = _725;
                                float _1147;
                                do
                                {
                                    if (_35_m2[_1136].y == 0u)
                                    {
                                        _1147 = 1.0f;
                                        break;
                                    }
                                    _1147 = _378[_35_m2[_1136].y - 1u];
                                    break;
                                } while(false);
                                _1372 = _1147;
                                break;
                            }
                            float4 _1154 = mul(_33_m10[_1118], float4((_452 - ((-_905) * _33_m11[_1118].x)) + (_422 * (_33_m11[_1118].y * 5.0f)), 1.0f));
                            float _1155 = _1154.w;
                            float3 _1158 = _1154.xyz / _1155.xxx;
                            float2 _1159 = _1158.xy;
                            float3 _1167 = _1158.xyz;
                            bool3 _1168 = bool3(_1167.x <= 0.0f.xxx.x, _1167.y <= 0.0f.xxx.y, _1167.z <= 0.0f.xxx.z);
                            bool3 _1169 = bool3(_1167.x >= 1.0f.xxx.x, _1167.y >= 1.0f.xxx.y, _1167.z >= 1.0f.xxx.z);
                            float _1172 = _1158.z;
                            float2 _1183 = ((_1159 * (_33_m12[_1118].zw - _33_m12[_1118].xy)) + _33_m12[_1118].xy).xy * _33_m13.zw;
                            float2 _1185 = floor(_1183 + 0.5f.xx);
                            float2 _1186 = _1183 - _1185;
                            float _1187 = _1186.x;
                            float _1188 = _1187 + 0.5f;
                            float _1189 = _1188 * _1188;
                            float _1192 = 1.0f - _1187;
                            float _1193 = min(_1187, 0.0f);
                            float _1196 = _1187 + 1.0f;
                            float _1197 = max(_1187, 0.0f);
                            float _1208 = _1186.y;
                            float _1209 = _1208 + 0.5f;
                            float _1210 = _1209 * _1209;
                            float _1213 = 1.0f - _1208;
                            float _1214 = min(_1208, 0.0f);
                            float _1217 = _1208 + 1.0f;
                            float _1218 = max(_1208, 0.0f);
                            float3 _1230 = float3(0.1599999964237213134765625f * _1192, 0.1599999964237213134765625f * ((_1196 - (_1197 * _1197)) + 1.0f), _1189 * 0.07999999821186065673828125f);
                            float3 _1231 = float3(0.1599999964237213134765625f * ((_1189 * 0.5f) - _1187), 0.1599999964237213134765625f * ((_1192 - (_1193 * _1193)) + 1.0f), 0.1599999964237213134765625f * _1196) + _1230;
                            float3 _1233 = float3(0.1599999964237213134765625f * _1213, 0.1599999964237213134765625f * ((_1217 - (_1218 * _1218)) + 1.0f), _1210 * 0.07999999821186065673828125f);
                            float3 _1234 = float3(0.1599999964237213134765625f * ((_1210 * 0.5f) - _1208), 0.1599999964237213134765625f * ((_1213 - (_1214 * _1214)) + 1.0f), 0.1599999964237213134765625f * _1217) + _1233;
                            float3 _1240 = ((_1230 / _1231) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                            float3 _1242 = ((_1233 / _1234) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                            float2 _1244 = _1185 * _33_m13.xy;
                            float _1245 = _1240.x;
                            float _1246 = _1242.x;
                            float2 _1248 = _1244 + float2(_1245, _1246);
                            float _1249 = _1240.y;
                            float2 _1251 = _1244 + float2(_1249, _1246);
                            float _1252 = _1240.z;
                            float2 _1254 = _1244 + float2(_1252, _1246);
                            float _1255 = _1242.y;
                            float2 _1257 = _1244 + float2(_1245, _1255);
                            float2 _1259 = _1244 + float2(_1249, _1255);
                            float2 _1261 = _1244 + float2(_1252, _1255);
                            float _1262 = _1242.z;
                            float2 _1264 = _1244 + float2(_1245, _1262);
                            float2 _1266 = _1244 + float2(_1249, _1262);
                            float2 _1268 = _1244 + float2(_1252, _1262);
                            float _1269 = _1231.x;
                            float _1270 = _1234.x;
                            float _1272 = _1231.y;
                            float _1274 = _1231.z;
                            float _1276 = _1234.y;
                            float _1280 = _1234.z;
                            float _1346 = ((((((((_1269 * _1270) * _36.SampleCmpLevelZero(_16, float3(_1248, _368).xy, _1172)) + ((_1272 * _1270) * _36.SampleCmpLevelZero(_16, float3(_1251, _368).xy, _1172))) + ((_1274 * _1270) * _36.SampleCmpLevelZero(_16, float3(_1254, _368).xy, _1172))) + ((_1269 * _1276) * _36.SampleCmpLevelZero(_16, float3(_1257, _368).xy, _1172))) + ((_1272 * _1276) * _36.SampleCmpLevelZero(_16, float3(_1259, _368).xy, _1172))) + ((_1274 * _1276) * _36.SampleCmpLevelZero(_16, float3(_1261, _368).xy, _1172))) + ((_1269 * _1280) * _36.SampleCmpLevelZero(_16, float3(_1264, _368).xy, _1172))) + ((_1272 * _1280) * _36.SampleCmpLevelZero(_16, float3(_1266, _368).xy, _1172));
                            float2 _1359 = min(_1159, 1.0f.xx - _1159);
                            _1372 = lerp(1.0f, (any(bool3(_1168.x || _1169.x, _1168.y || _1169.y, _1168.z || _1169.z)) || ((asuint(_1172) & 2147483647u) > 2139095040u)) ? 1.0f : (_1346 + ((_1274 * _1280) * _36.SampleCmpLevelZero(_16, float3(_1268, _368).xy, _1172))), _918 ? min(_33_m11[_1118].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1118].z - _1155) * 0.25f, min(_1359.x, _1359.y)))) : _33_m11[_1118].w);
                            break;
                        } while(false);
                        _1374 = (_1118 >= 0) ? _1372 : 1.0f;
                    }
                    else
                    {
                        _1374 = 1.0f;
                    }
                    _1375 = _1374;
                    break;
                } while(false);
                _2020 = _731 * _1375;
                _2021 = 0.0f.xxx;
            }
            _753 = _2020;
            _756 = _755 + _2021;
        }
        _728 = _727 + _755;
    }
    float3 _2025 = _696.xyz + (_727 * _730);
    float3 _2027 = _399.xxx;
    float3 _2062;
    float3 _2063;
    [branch]
    /*
    Vanilla shader code from 0xCAE899A1:
    if (_9_m23.x != 0.0f)
    */
    // RenoDX code: keep the GTAO sample path active when Improved GTAO is enabled.
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2038 = min(_21.SampleBias(_12, _4, _9_m16).x, _399);
        _2062 = clamp((pow(abs(_522 + _2038), exp2(((-16.0f) * _512) - 1.0f)) - 1.0f) + _2038, 0.0f, 1.0f).xxx;
        _2063 = max(_2038.xxx, ((((((_516 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2038) + ((_516 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2038) + ((_516 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2038);
    }
    else
    {
        _2062 = _2027;
        _2063 = _2027;
    }
    // RenoDX code: apply the sampled GTAO term when Improved GTAO is enabled.
    _2025 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2062 : 1.0f.xxx;
    float3 _2080 = (_452 + (_422 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_427 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2090 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2099 = _2080 - (_9_m105.xyz + (_2090 * (-_9_m107.w)));
    float _2113 = max(clamp((max(abs(_2099.x), abs(_2099.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2099.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2415;
    float4 _2416;
    float4 _2417;
    float _2418;
    float _2419;
    if ((_9_m105.w != 0.0f) && (_2113 < 1.0f))
    {
        float3 _2126 = _2080 - (_9_m105.xyz + (_2090 * (-_9_m107.y)));
        float _2140 = max(clamp((max(abs(_2126.x), abs(_2126.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2126.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2216;
        float4 _2217;
        float4 _2218;
        float4 _2219;
        if (_2140 < 1.0f)
        {
            float3 _2149 = ((_2080 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2151 = _2149 - floor(_2149);
            float4 _2155 = _53.SampleLevel(_14, _2151, 0.0f);
            float _2156 = 1.0f - _2140;
            float _2160 = _9_m106.y * 0.5f;
            float _2165 = _2151.x;
            float _2166 = clamp(_2151.y, _2160, 1.0f - _2160) * 0.3333333432674407958984375f;
            float _2167 = _2151.z;
            float4 _2170 = _54.SampleLevel(_13, float3(_2165, _2166, _2167), 0.0f);
            float _2186 = _2155.x;
            float _2196 = _2155.y;
            float _2206 = _2155.z;
            _2216 = _2113 + (_2170.w * _2156);
            _2217 = float4(((_54.SampleLevel(_13, float3(_2165, _2166 + 0.666666686534881591796875f, _2167), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2206, _2206) * _2156;
            _2218 = float4(((_54.SampleLevel(_13, float3(_2165, _2166 + 0.3333333432674407958984375f, _2167), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2196, _2196) * _2156;
            _2219 = float4(((_2170.xyz * 4.0f) - 2.0f.xxx) * _2186, _2186) * _2156;
        }
        else
        {
            _2216 = _2113;
            _2217 = 0.0f.xxxx;
            _2218 = 0.0f.xxxx;
            _2219 = 0.0f.xxxx;
        }
        float3 _2225 = _2080 - (_9_m105.xyz + (_2090 * (-_9_m107.z)));
        float _2239 = max(clamp((max(abs(_2225.x), abs(_2225.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2225.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2319;
        float4 _2320;
        float4 _2321;
        float4 _2322;
        if (_2239 < 1.0f)
        {
            float3 _2248 = ((_2080 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2250 = _2248 - floor(_2248);
            float4 _2254 = _55.SampleLevel(_14, _2250, 0.0f);
            float _2256 = _2140 * (1.0f - _2239);
            float _2260 = _9_m106.y * 0.5f;
            float _2265 = _2250.x;
            float _2266 = clamp(_2250.y, _2260, 1.0f - _2260) * 0.3333333432674407958984375f;
            float _2267 = _2250.z;
            float4 _2270 = _56.SampleLevel(_13, float3(_2265, _2266, _2267), 0.0f);
            float _2286 = _2254.x;
            float _2297 = _2254.y;
            float _2308 = _2254.z;
            _2319 = _2216 + (_2270.w * _2256);
            _2320 = _2217 + (float4(((_56.SampleLevel(_13, float3(_2265, _2266 + 0.666666686534881591796875f, _2267), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2308, _2308) * _2256);
            _2321 = _2218 + (float4(((_56.SampleLevel(_13, float3(_2265, _2266 + 0.3333333432674407958984375f, _2267), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2297, _2297) * _2256);
            _2322 = _2219 + (float4(((_2270.xyz * 4.0f) - 2.0f.xxx) * _2286, _2286) * _2256);
        }
        else
        {
            _2319 = _2216;
            _2320 = _2217;
            _2321 = _2218;
            _2322 = _2219;
        }
        float4 _2405;
        float4 _2406;
        float4 _2407;
        float _2408;
        if (_2239 > 0.0f)
        {
            float3 _2331 = ((_2080 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2334 = _9_m106.xyz * 0.5f;
            float3 _2336 = clamp(_2331 - floor(_2331), _2334, 1.0f.xxx - _2334);
            float4 _2340 = _57.SampleLevel(_14, _2336, 0.0f);
            float _2342 = _2239 * (1.0f - _2113);
            float _2346 = _9_m106.y * 0.5f;
            float _2351 = _2336.x;
            float _2352 = clamp(_2336.y, _2346, 1.0f - _2346) * 0.3333333432674407958984375f;
            float _2353 = _2336.z;
            float4 _2356 = _58.SampleLevel(_13, float3(_2351, _2352, _2353), 0.0f);
            float _2372 = _2340.x;
            float _2383 = _2340.y;
            float _2394 = _2340.z;
            _2405 = _2320 + (float4(((_58.SampleLevel(_13, float3(_2351, _2352 + 0.666666686534881591796875f, _2353), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2394, _2394) * _2342);
            _2406 = _2321 + (float4(((_58.SampleLevel(_13, float3(_2351, _2352 + 0.3333333432674407958984375f, _2353), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2383, _2383) * _2342);
            _2407 = _2322 + (float4(((_2356.xyz * 4.0f) - 2.0f.xxx) * _2372, _2372) * _2342);
            _2408 = _2319 + (_2356.w * _2342);
        }
        else
        {
            _2405 = _2320;
            _2406 = _2321;
            _2407 = _2322;
            _2408 = _2319;
        }
        float _2411 = clamp((_2408 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _2415 = _2405;
        _2416 = _2406;
        _2417 = _2407;
        _2418 = _2411 - _2113;
        _2419 = (_2411 + _2113) * 0.5f;
    }
    else
    {
        _2415 = 0.0f.xxxx;
        _2416 = 0.0f.xxxx;
        _2417 = 0.0f.xxxx;
        _2418 = 0.0f;
        _2419 = 1.0f;
    }
    float4 _2439 = _2417 + float4(_9_m108.x * _2419, (_9_m108.y * _2419) + ((_9_m108.w * _2418) * 0.5f), _9_m108.z * _2419, (_9_m108.w * _2419) + ((_9_m108.y * _2418) * 0.375f));
    float4 _2459 = _2416 + float4(_9_m109.x * _2419, (_9_m109.y * _2419) + ((_9_m109.w * _2418) * 0.5f), _9_m109.z * _2419, (_9_m109.w * _2419) + ((_9_m109.y * _2418) * 0.375f));
    float4 _2479 = _2415 + float4(_9_m110.x * _2419, (_9_m110.y * _2419) + ((_9_m110.w * _2418) * 0.5f), _9_m110.z * _2419, (_9_m110.w * _2419) + ((_9_m110.y * _2418) * 0.375f));
    float4 _2637;
    float4 _2638;
    float4 _2639;
    [branch]
    if (all(bool2(_440.x >= 0.0f.xx.x, _440.y >= 0.0f.xx.y)))
    {
        float4 _2487 = _52.SampleLevel(_13, _440, 0.0f);
        float4 _2488 = abs(_2487);
        float4 _2634;
        float4 _2635;
        float4 _2636;
        [branch]
        if (any(bool4(_2488.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2488.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2488.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2488.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _2494 = length(_2487.yzw);
            uint _2496;
            float _2499;
            _2496 = 0u;
            _2499 = 1.0f;
            for (float _2501 = _2494; _2501 > 4.599999904632568359375f; )
            {
                _2496++;
                _2499 *= 0.5f;
                _2501 *= 0.5f;
                continue;
            }
            float4 _2505 = _2487 * _2499;
            float4 _2510 = float4(0.0f, _2505.yzw);
            float2 _2532 = (_51.SampleLevel(_13, float2(((((length(_2510) * _50_m3.x) + _50_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _50_m2.xy) + _50_m2.zw;
            float4 _2546;
            _2546 = float4(_2532.x * 3.5449078083038330078125f, _2510.yzw * _2532.y) * exp(_2505.x * 0.282094776630401611328125f);
            for (uint _2549 = 0u; _2549 < _2496; )
            {
                _2546 = mul(float4x4(_2546, float4(_2546.yx, 0.0f, 0.0f), float4(_2546.z, 0.0f, _2546.x, 0.0f), float4(_2546.w, 0.0f, 0.0f, _2546.x)) * 0.282094776630401611328125f, _2546);
                _2549++;
                continue;
            }
            float4x4 _2570 = float4x4(_2546, float4(_2546.yx, 0.0f, 0.0f), float4(_2546.z, 0.0f, _2546.x, 0.0f), float4(_2546.w, 0.0f, 0.0f, _2546.x)) * 0.282094776630401611328125f;
            float4 _2580 = mul(_2570, float4(_2439.w * 1.1283791065216064453125f, _2439.y * (-0.977204978466033935546875f), _2439.z * 0.977204978466033935546875f, _2439.x * (-0.977204978466033935546875f)));
            float4 _2600 = mul(_2570, float4(_2459.w * 1.1283791065216064453125f, _2459.y * (-0.977204978466033935546875f), _2459.z * 0.977204978466033935546875f, _2459.x * (-0.977204978466033935546875f)));
            float4 _2620 = mul(_2570, float4(_2479.w * 1.1283791065216064453125f, _2479.y * (-0.977204978466033935546875f), _2479.z * 0.977204978466033935546875f, _2479.x * (-0.977204978466033935546875f)));
            _2634 = float4(_2580.x * 0.886226952075958251953125f, _2580.w * (-1.02332675457000732421875f), _2580.y * (-1.02332675457000732421875f), _2580.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2635 = float4(_2600.x * 0.886226952075958251953125f, _2600.w * (-1.02332675457000732421875f), _2600.y * (-1.02332675457000732421875f), _2600.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2636 = float4(_2620.x * 0.886226952075958251953125f, _2620.w * (-1.02332675457000732421875f), _2620.y * (-1.02332675457000732421875f), _2620.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _2634 = _2439;
            _2635 = _2459;
            _2636 = _2479;
        }
        _2637 = _2634;
        _2638 = _2635;
        _2639 = _2636;
    }
    else
    {
        _2637 = _2439;
        _2638 = _2459;
        _2639 = _2479;
    }
    float _2644 = max(0.0f, dot(_2637.xyz, _422) + _2637.w);
    float _2649 = max(0.0f, dot(_2638.xyz, _422) + _2638.w);
    float _2654 = max(0.0f, dot(_2639.xyz, _422) + _2639.w);
    float3 _2664 = reflect(_480, _422);
    float _2672 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_512, 0.001000000047497451305389404296875f))));
    float2 _2676 = floor(_427 * _27_m0.w);
    float _2693 = floor(_459 - _27_m2.y);
    float _2697 = clamp(_2693, 0.0f, _27_m1.x - 1.0f);
    uint _2707 = (_2693 <= _2697) ? (_24.Load(uint(_9_m21.z + int(_2676.x + (_2676.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_2697)) * 4 + 0)) : 0u;
    float _2710 = dot(float4(_2644, _2649, _2654, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2712;
    float _2715;
    uint _2717;
    _2712 = 0.0f.xxx;
    _2715 = 1.0f;
    _2717 = _2707;
    uint _2718;
    float3 _2713;
    float _2716;
    bool _2720;
    [loop]
    for (;;)
    {
        _2720 = _2715 > 0.00999999977648258209228515625f;
        if ((_2717 != 0u) && _2720)
        {
            uint _2724 = firstbitlow(_2717);
            _2718 = _2717 ^ (1u << (_2724 & 31u));
            float3 _2744 = float3(dot(_27_m4[_2724]._m2, _456), dot(_27_m4[_2724]._m3, _456), dot(_27_m4[_2724]._m4, _456));
            float3 _2745 = abs(_2744);
            if (all(bool3(_2745.x <= _27_m4[_2724]._m1.xyz.x, _2745.y <= _27_m4[_2724]._m1.xyz.y, _2745.z <= _27_m4[_2724]._m1.xyz.z)))
            {
                float3 _2754 = _27_m4[_2724]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2756 = _2745 * 0.100000001490116119384765625f;
                float3 _2757 = _2756 * _2756;
                float3 _2760 = (_27_m4[_2724]._m1.xyz - _2745) * _27_m4[_2724]._m5.xyz;
                float3 _2808;
                [branch]
                if (_27_m4[_2724]._m6.x == 1.0f)
                {
                    float3 _2793 = float3(dot(_27_m4[_2724]._m2.xyz, _2664), dot(_27_m4[_2724]._m3.xyz, _2664), dot(_27_m4[_2724]._m4.xyz, _2664));
                    float3 _2795 = (_27_m4[_2724]._m1.xyz - _2744) / _2793;
                    float3 _2798 = ((-_27_m4[_2724]._m1.xyz) - _2744) / _2793;
                    bool3 _2799 = bool3(_2793.x > 0.0f.xxx.x, _2793.y > 0.0f.xxx.y, _2793.z > 0.0f.xxx.z);
                    float3 _2800 = float3(_2799.x ? _2795.x : _2798.x, _2799.y ? _2795.y : _2798.y, _2799.z ? _2795.z : _2798.z);
                    _2808 = _2744 + (_2793 * min(min(_2800.x, _2800.y), _2800.z));
                }
                else
                {
                    _2808 = _2664;
                }
                float3 _2809 = normalize(_2808);
                float3 _2812 = float3(int3(sign(_2809)));
                float3 _2815 = _2809 / dot(_2809, _2812).xxx;
                float3 _2829;
                if (_2815.z < 0.0f)
                {
                    float3 _2820 = abs(_2815);
                    float2 _2827 = _2812.xy * float2(1.0f - _2820.y, 1.0f - _2820.x);
                    _2829 = float3(_2827.x, _2827.y, _2815.z);
                }
                else
                {
                    _2829 = _2815;
                }
                float _2854 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2724]._m0, float4(_422, 1.0f))));
                float _2867 = clamp((min(_2760.x, min(_2760.y, _2760.z)) * _27_m4[_2724]._m6.y) + ((((((_2754 * _2754).x - ((_2757.x + _2757.y) + _2757.z)) * _27_m4[_2724]._m5.x) * _27_m4[_2724]._m5.x) * (1.0f - _27_m4[_2724]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2724]._m6.w;
                _2713 = _2712 + ((((_22.SampleLevel(_15, float3((((_2829.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2724]._m1.w), _2672).xyz * _27_m4[_2724]._m5.w) * ((((((clamp(abs(_2710 / _2854), 0.0f, 1.0f) * 2.0f) + _2710) / (2.0f + _2854)) - 1.0f) * _9_m23.w) + 1.0f)) * _2867) * _2715);
                _2716 = _2715 * (1.0f - _2867);
            }
            else
            {
                _2713 = _2712;
                _2716 = _2715;
            }
            _2712 = _2713;
            _2715 = _2716;
            _2717 = _2718;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _2936;
    if (_2720)
    {
        float3 _2875 = normalize(_2664);
        float3 _2878 = float3(int3(sign(_2875)));
        float3 _2881 = _2875 / dot(_2875, _2878).xxx;
        float3 _2895;
        if (_2881.z < 0.0f)
        {
            float3 _2886 = abs(_2881);
            float2 _2893 = _2878.xy * float2(1.0f - _2886.y, 1.0f - _2886.x);
            _2895 = float3(_2893.x, _2893.y, _2881.z);
        }
        else
        {
            _2895 = _2881;
        }
        float _2922 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_422, 1.0f))));
        _2936 = _2712 + ((_22.SampleLevel(_15, float3((((_2895.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _2672).xyz * ((((((clamp(abs(_2710 / _2922), 0.0f, 1.0f) * 2.0f) + _2710) / (2.0f + _2922)) - 1.0f) * _9_m23.w) + 1.0f)) * _2715);
    }
    else
    {
        _2936 = _2712;
    }
    float3 _2942 = (_2936 * _9_m23.z) * _9_m22.y;
    // RenoDX code start: link cubemap ambient intensity to the scene lighting response.
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _2942 *= 0.25f + (0.75f * saturate(_2710));
    }
    // RenoDX code end
    float3 _2963;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _2957 = _20.SampleBias(_13, _4, _9_m16);
        float _2958 = _2957.x;
        _2963 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2958) + (_2942 * (1.0f - _2958));
    }
    else
    {
        _2963 = _2942;
    }
    float3 _2966 = (((float3(_2644, _2649, _2654) * _516) * _9_m22.x) * _2063) + ((_2963 * (_545 + ((_520 * ((1.0f - _546) / _546)) * _545))) * _2062);
    float4 _2968 = float4(_2025.x, _2025.y, _2025.z, _696.w) + float4(_2966.x, _2966.y, _2966.z, 0.0f.xxxx.w);
    float3 _2971 = clamp(_2968.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _2986 = _452.y * _9_m46.w;
    float _2991 = max(0.00999999977648258209228515625f, _2986 + _9_m47.w);
    float3 _3005 = exp(_9_m45.xyz * ((-max(0.0f, (_479 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2991)) / _2991) * exp(_2986 + _9_m48.w))));
    float _3008 = dot(_480, _9_m44.xyz);
    float _3014 = _9_m45.w * _9_m45.w;
    float _3018 = (1.0f + _3014) - ((2.0f * _9_m45.w) * _3008);
    float3 _3346;
    float _3347;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3172 = (uint3(int3(_388, _389, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3173 = _3172.y;
        uint _3174 = _3172.z;
        uint _3177 = _3172.x + (_3173 * _3174);
        uint _3179 = _3173 + (_3174 * _3177);
        uint _3181 = _3174 + (_3177 * _3179);
        uint _3183 = _3177 + (_3179 * _3181);
        float _3207 = dot(_480, -_7_m0[2].xyz);
        float3 _3217 = _452 - _7_m11.xyz;
        float _3219 = (_9_m55.w * ((_3207 > 5.9604644775390625e-08f) ? (1.0f / _3207) : 0.0f)) * (1.0f / _479);
        float _3220 = _3217.y;
        float _3221 = _3219 * _3220;
        float _3223 = _7_m11.y + _3221;
        float _3224 = _3220 - _3221;
        float _3226 = (1.0f - _3219) * _479;
        float _3240 = max(-127.0f, _9_m49.z * _3224);
        float _3264 = max(-127.0f, _9_m52.x * _3224);
        float _3275 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3223 - _9_m49.x)))) * ((abs(_3240) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3240)) / _3240) : (0.693147182464599609375f - (0.2402265071868896484375f * _3240)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3223 - _9_m52.z)))) * ((abs(_3264) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3264)) / _3264) : (0.693147182464599609375f - (0.2402265071868896484375f * _3264))));
        float _3297 = clamp((_479 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3300 = clamp((max(clamp(exp2(-(_3275 * _3226)), 0.0f, 1.0f), _9_m51.w) + clamp((_479 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3297, 0.0f, 1.0f);
        float4 _3340 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _48.SampleLevel(_13, float3((_427 + ((((float3(uint3(_3183, _3179 + (_3181 * _3183), _372) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_459 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_459 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3342 = _3340.w;
        _3346 = _3340.xyz + (((_9_m51.xyz * (1.0f - _3300)) + (((_9_m54.xyz * pow(clamp(dot(_478, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3275 * max(_3226 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3297))) * _3342);
        _3347 = _3342 * _3300;
    }
    else
    {
        float3 _3048 = _452 - _7_m11.xyz;
        float _3050 = _3048.y;
        float _3064 = max(-127.0f, _9_m49.z * _3050);
        float _3088 = max(-127.0f, _9_m52.x * _3050);
        float _3099 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3064) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3064)) / _3064) : (0.693147182464599609375f - (0.2402265071868896484375f * _3064)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3088) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3088)) / _3088) : (0.693147182464599609375f - (0.2402265071868896484375f * _3088))));
        float _3121 = clamp((_479 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3124 = clamp((max(clamp(exp2(-(_3099 * _479)), 0.0f, 1.0f), _9_m51.w) + clamp((_479 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3121, 0.0f, 1.0f);
        _3346 = (_9_m51.xyz * (1.0f - _3124)) + (((_9_m54.xyz * pow(clamp(dot(_478, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3099 * max(_479 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3121));
        _3347 = _3124;
    }
    float3 _3350 = _3005 * _3347;
    float3 _3352 = (_2971 * _3350) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3008 * _3008)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3014) / max((12.56637096405029296875f * _3018) * sqrt(_3018), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3005)) * _3347) + _3346);

    // RenoDX code start: apply the hue-preserving fog composite.
    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3352 = (_3352 * 0.65f) + (_2971 * 0.35f);

    }
    // RenoDX code end
    float _3353 = dot(_3350, 0.3333333432674407958984375f.xxx);
    float4 _3354 = float4(_3352.x, _3352.y, _3352.z, _2968.w);
    _3354.w = _3353;
    float _3383 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _452) * _9_m61.z), 0.0f, 1.0f);
    float3 _3391 = lerp(_2971, _3354.xyz, min((1.0f - _3383) + ((_63.SampleLevel(_14, (_452 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _3383), 1.0f + _3353).xxx);
    _5 = float4(_3391.x, _3391.y, _3391.z, _3354.w);
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
