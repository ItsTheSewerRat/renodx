// DX11 0x69A9A3A2 -> Vulkan 0xD818A5DB
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

static float _375 = 0.0f;
static uint _379 = 0u;

static const int2 _334[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _335[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(33, 3)]]
cbuffer _6_7 : register(b33)
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

[[vk::binding(39, 3)]]
cbuffer _8_9 : register(b39)
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

[[vk::binding(43, 3)]] ByteAddressBuffer _24 : register(t43);
[[vk::binding(40, 3)]]
cbuffer _25_27 : register(b40)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(36, 3)]]
cbuffer _28_29 : register(b36)
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

[[vk::binding(35, 3)]]
cbuffer _30_31 : register(b35)
{
    float4 _31_m0 : packoffset(c0);
    float4 _31_m1 : packoffset(c1);
    float4 _31_m2 : packoffset(c2);
    float4 _31_m3 : packoffset(c3);
    float4 _31_m4 : packoffset(c4);
    uint4 _31_m5 : packoffset(c5);
    float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(38, 3)]]
cbuffer _32_33 : register(b38)
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

[[vk::binding(42, 3)]]
cbuffer _34_35 : register(b42)
{
    column_major float4x4 _35_m0[32] : packoffset(c0);
    float4 _35_m1[32] : packoffset(c128);
    uint4 _35_m2[56] : packoffset(c160);
    int4 _35_m3 : packoffset(c216);
    float4 _35_m4 : packoffset(c217);
    float4 _35_m5[4] : packoffset(c218);
    float4 _35_m6 : packoffset(c222);
};

[[vk::binding(34, 3)]]
cbuffer _44_45 : register(b34)
{
    float4 _45_m0[15] : packoffset(c0);
    float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(41, 3)]]
cbuffer _48_49 : register(b41)
{
    float4 _49_m0[32] : packoffset(c0);
    column_major float4x4 _49_m1[32] : packoffset(c32);
};

[[vk::binding(37, 3)]]
cbuffer _53_54 : register(b37)
{
    float4 _54_m0 : packoffset(c0);
    float4 _54_m1 : packoffset(c1);
    float4 _54_m2 : packoffset(c2);
    float4 _54_m3 : packoffset(c3);
    float4 _54_m4 : packoffset(c4);
    uint4 _54_m5 : packoffset(c5);
    float4 _54_m6 : packoffset(c6);
    float4 _54_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(4, 3)]] SamplerComparisonState _16 : register(s4);
[[vk::binding(30, 3)]] Texture2D<float4> _18 : register(t30);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23);
[[vk::binding(12, 3)]] Texture2DArray<float4> _22 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _36 : register(t13);
[[vk::binding(9, 3)]] Texture2D<float4> _37 : register(t9);
[[vk::binding(25, 3)]] Texture2D<float4> _38 : register(t25);
[[vk::binding(31, 3)]] Texture2D<float4> _39 : register(t31);
[[vk::binding(14, 3)]] Texture2D<float4> _41 : register(t14);
[[vk::binding(7, 3)]] Texture2DArray<float4> _42 : register(t7);
[[vk::binding(8, 3)]] Texture2DArray<float4> _43 : register(t8);
[[vk::binding(29, 3)]] Texture2D<float4> _46 : register(t29);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15);
[[vk::binding(22, 3)]] Texture3D<float4> _52 : register(t22);
[[vk::binding(32, 3)]] Texture2D<float4> _55 : register(t32);
[[vk::binding(6, 3)]] Texture2D<float4> _56 : register(t6);
[[vk::binding(21, 3)]] Texture3D<float4> _57 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _58 : register(t18);
[[vk::binding(20, 3)]] Texture3D<float4> _59 : register(t20);
[[vk::binding(17, 3)]] Texture3D<float4> _60 : register(t17);
[[vk::binding(19, 3)]] Texture3D<float4> _61 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _62 : register(t16);
[[vk::binding(5, 3)]] Texture2D<float4> _63 : register(t5);
[[vk::binding(28, 3)]] Texture2D<float4> _64 : register(t28);
[[vk::binding(27, 3)]] Texture2D<float4> _65 : register(t27);
[[vk::binding(26, 3)]] Texture2D<float4> _66 : register(t26);
[[vk::binding(24, 3)]] Texture3D<float4> _67 : register(t24);

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
    uint2 _392 = uint2(gl_FragCoord.xy);
    int _395 = int(_392.x);
    int _396 = int(_392.y);
    int2 _398 = int3(_395, _396, 0).xy;
    float4 _400 = _64.Load(int3(_398, 0));
    float4 _402 = _65.Load(int3(_398, 0));
    float4 _404 = _66.Load(int3(_398, 0));
    float _405 = _400.x;
    float _406 = _400.y;
    uint _417 = uint(int((round(_400.w * 3.0f) * 4.0f) + round(_402.w * 3.0f)));
    float2 _420 = (_402.xy * 2.0f) - 1.0f.xx;
    float _424 = 1.0f - dot(1.0f.xx, abs(_420));
    float3 _426 = float3(_420.x, _424, _420.y);
    float3 _438;
    if (_424 < 0.0f)
    {
        float2 _433 = _426.xz;
        bool2 _434 = bool2(_433.x >= 0.0f.xx.x, _433.y >= 0.0f.xx.y);
        float2 _436 = (1.0f.xx - abs(_426.zx)) * float2(_434.x ? 1.0f.xx.x : (-1.0f).xx.x, _434.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _438 = float3(_436.x, _426.y, _436.y);
    }
    else
    {
        _438 = _426;
    }
    float3 _439 = normalize(_438);
    float _440 = _402.z;
    float _442 = _404.w;
    float2 _445 = float2(_392);
    float2 _450 = (_445 + 0.5f.xx) * _9_m0.zw;
    float2 _458 = gl_FragCoord.xy * _9_m0.zw;
    float2 _460 = (_458 * 2.0f) - 1.0f.xx;
    float4 _463 = float4(_460, _18.SampleLevel(_12, _450, 0.0f).x, 1.0f);
    _463.y = -_460.y;
    float4 _466 = mul(_7_m6, _463);
    float3 _470 = _466.xyz / _466.w.xxx;
    float4 _474 = float4(_470, 1.0f);
    float _477 = abs(mul(_7_m0, _474).z);
    float3 _492;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _492 = _7_m11.xyz - _470;
            break;
        }
        else
        {
            _492 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _493 = dot(_492, _492);
    float _495 = rsqrt(max(_493, 9.9999999392252902907785028219223e-09f));
    float3 _496 = _492 * _495;
    float _497 = _493 * _495;
    float3 _498 = -_496;
    bool _501 = _9_m129.x > 0.00048828125f;
    float2 _511;
    if (_501)
    {
        _511 = _63.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _511 = 1.0f.xx;
    }
    float _514 = min(_511.x, _511.y);
    float2 _515 = _511 * 1.0f;
    float _516 = _515.x;
    float _519 = clamp((_400.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _524;
    float _525;
    if (_501)
    {
        _524 = lerp(1.0f, _511.y, _519);
        _525 = lerp(1.0f, 0.0f, _519);
    }
    else
    {
        _524 = 1.0f;
        _525 = 1.0f;
    }
    float _530 = lerp(lerp(min(_524, _440), _440, _514), _440, _516);
    float3 _532 = _404.xyz * lerp(lerp(min(_525, 1.0f), 1.0f, _514), 1.0f, _516);
    float3 _533 = _532 * _405;
    float3 _534 = _532 - _533;
    float3 _538 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _405)).xxx + _533;
    float _539 = dot(_439, _496);
    float _540 = max(0.0f, _539);
    float _541 = _530 * _530;
    float _542 = _540 * _540;
    float _543 = _542 * _540;
    float2 _544 = float2(1.0f, _540);
    float2 _547 = float2(1.0f, _541);
    float _548 = _541 * _541;
    float3 _550 = float3(1.0f, _541, _548 * _541);
    float _555 = dot(mul(_544, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _547) / dot(mul(float3(1.0f, _542, _543), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _550);
    float _560 = dot(mul(_544, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _547) / dot(mul(float3(1.0f, _540, _543), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _550);
    float3 _563 = (_538 * _555) + _560.xxx;
    float _564 = _555 + _560;
    float4 _577 = _37.Load(int3(_398, 0));
    float _578 = _577.x;
    float4 _741;
    if (_578 > 0.001000000047497451305389404296875f)
    {
        float3 _588 = reflect(_498, _439);
        float3 _589 = -_31_m0.xyz;
        float _594 = dot(_589, _588);
        float3 _596 = _588 - (_589 * _594);
        bool3 _598 = (_594 < _31_m4.z).xxx;
        float3 _606 = normalize((_589 * _31_m4.z) + ((_596 * rsqrt(max(6.103515625e-05f, dot(_596, _596)))) * _31_m4.y));
        float3 _607 = float3(_598.x ? _606.x : _588.x, _598.y ? _606.y : _588.y, _598.z ? _606.z : _588.z);
        float3 _611 = _607 + _496;
        float3 _615 = _611 * rsqrt(max(6.103515625e-05f, dot(_611, _611)));
        float _616 = clamp(dot(_607, _439), 0.0f, 1.0f);
        float _618 = clamp(dot(_439, _615), 0.0f, 1.0f);
        float _621 = clamp(_539, 0.0f, 1.0f);
        float _642 = (((_618 * _548) - _618) * _618) + 1.0f;
        float _645 = 1.0f - clamp(dot(_496, _615), 0.0f, 1.0f);
        float _646 = _645 * _645;
        float _648 = (_645 * _646) * _646;
        float _672 = 1.0f - _530;
        float _679 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_672 * (1.04997003078460693359375f + (_672 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _672))))));
        float _680 = 1.0f - _679;
        float3 _683 = _538 + ((1.0f.xxx - _538) * 0.0476190485060214996337890625f);
        float3 _723;
        do
        {
            [branch]
            if (((_417 > 0u) && (_417 <= 15u)) && (_442 > 0.0f))
            {
                uint _707 = clamp(_417 - 1u, 0u, 14u);
                _723 = _42.SampleLevel(_13, float3((dot(_439, _607) * 0.5f) + 0.5f, _442 * _45_m0[_707].w, float(_707)), 0.0f).xyz;
                break;
            }
            _723 = _616.xxx;
            break;
        } while(false);
        float3 _726 = ((clamp((min(((_538 * (1.0f - _648)) + _648.xxx) * ((_548 / (_642 * _642)) * (0.5f / (((_616 * sqrt(((((-_621) * _548) + _621) * _621) + _548)) + (_621 * sqrt(((((-_616) * _548) + _616) * _616) + _548))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_683 * (((_41.SampleLevel(_13, (float2(_621, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_616, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _679) / _680)) * _683) / (1.0f.xxx - (_683 * _680)))) * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _616) + ((_534 * 1.0f) * _723)) * _31_m1.xyz;
        float3 _739 = lerp(_726, _726 * _39.SampleBias(_13, float2(_578, 0.5f), _9_m16).xyz, (1.0f - _578).xxx) * min(_46.SampleLevel(_13, _458, 0.0f).x, 1.0f);
        _741 = float4(_739.x, _739.y, _739.z, 0.0f.xxxx.w);
    }
    else
    {
        _741 = 0.0f.xxxx;
    }
    float2 _743 = floor(_445 * 0.03125f);
    int _751 = int((_743.x + (_743.y * _29_m5)) * 8.0f);
    float _758 = floor(_477 - (_9_m3.y * _29_m11));
    float _762 = clamp(_758, 0.0f, _29_m7 - 1.0f);
    int _764 = int(_762 * 8.0f);
    float4 _770 = _38.SampleBias(_13, _450, _9_m16);
    float3 _772;
    float _775;
    _772 = 0.0f.xxx;
    _775 = 1.0f;
    float3 _773;
    float _776;
    [loop]
    for (int _777 = 0; _777 <= 7; _772 = _773, _775 = _776, _777++)
    {
        uint _795 = (_758 <= _762) ? (_24.Load(uint(_751 + _777) * 4 + 0) & _24.Load(uint((_9_m21.y + _764) + _777) * 4 + 0)) : 0u;
        uint _796 = uint(_777);
        float3 _800;
        _776 = _775;
        _800 = 0.0f.xxx;
        uint _803;
        float _798;
        float3 _801;
        [loop]
        for (uint _802 = _795; _802 != 0u; _776 = _798, _800 = _801, _802 = _803)
        {
            uint _807 = firstbitlow(_802);
            _803 = _802 ^ (1u << (_807 & 31u));
            int _813 = int((32u * _796) + _807) * 8;
            int _816 = _813 + 1;
            int _819 = _813 + 2;
            int _822 = _813 + 3;
            int _825 = _813 + 5;
            int _828 = _813 + 6;
            int _831 = _813 + 7;
            uint _835 = uint(_31_m6[_825].w);
            float _910;
            if ((_835 & 1u) == 1u)
            {
                uint _841 = asuint(_31_m6[_825].x);
                uint _848 = asuint(_31_m6[_825].y);
                uint _855 = asuint(_31_m6[_825].z);
                uint _862 = asuint(_31_m6[_828].x);
                uint _869 = asuint(_31_m6[_828].y);
                uint _876 = asuint(_31_m6[_828].z);
                float3 _895 = abs(mul(float4(_470 - _31_m6[_816].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_841).x, spvUnpackHalf2x16(_855).x, spvUnpackHalf2x16(_869).x, 0.0f), float4(spvUnpackHalf2x16(_841 >> 16u).x, spvUnpackHalf2x16(_855 >> 16u).x, spvUnpackHalf2x16(_869 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_848).x, spvUnpackHalf2x16(_862).x, spvUnpackHalf2x16(_876).x, 0.0f), float4(spvUnpackHalf2x16(_848 >> 16u).x, spvUnpackHalf2x16(_862 >> 16u).x, spvUnpackHalf2x16(_876 >> 16u).x, 0.0f))).xyz);
                float _902 = _31_m6[_831].x * 0.5f;
                float _908 = 1.0f - clamp((max(max(_895.x, _895.y), _895.z) - (_902 + 0.5f)) / (0.5f - _902), 0.0f, 1.0f);
                _910 = _908 * _908;
            }
            else
            {
                _910 = 1.0f;
            }
            bool _914 = _31_m6[_822].z > 0.5f;
            if ((false || (_910 < 0.001000000047497451305389404296875f)) || _914)
            {
                _798 = _776;
                _801 = _800;
                continue;
            }
            float _2092;
            float3 _2093;
            if (_31_m6[_813].w < 1.5f)
            {
                float3 _1422 = float3(0.100000001490116119384765625f, _530, 1.0f);
                float _1431 = (0.5f + (0.5f * _31_m6[_819].y)) - abs(_31_m6[_819].x);
                float _1432 = _31_m6[_819].y - _1431;
                float _1439 = abs(max((1.0f - abs(_1431)) - abs(_1432), 0.00048828125f));
                float3 _1443 = normalize(float3(_1431, _1432, (_31_m6[_819].x >= 0.0f) ? _1439 : (-_1439)));
                float3 _1444 = _31_m6[_816].xyz - _470;
                float _1445 = dot(_1444, _1444);
                float _1446 = rsqrt(_1445);
                float3 _1447 = _1444 * _1446;
                float _1451 = clamp(_31_m6[_831].y * _1446, 0.0f, 1.0f);
                int _1456 = int(_31_m6[_831].w);
                float3 _1457 = _1443 * _31_m6[_819].z;
                float3 _1458 = _1457 * 0.5f;
                float3 _1459 = _1444 - _1458;
                float3 _1460 = _1444 + _1458;
                bool _1463 = (uint(_31_m6[_813].w) & 1u) == 0u;
                bool _1466 = _1463 || ((_835 & 2u) != 0u);
                bool _1469 = (!_1463) && (_31_m6[_819].z > 0.0f);
                float _1488;
                float _1489;
                if (_1469)
                {
                    float _1473 = length(_1459);
                    float _1474 = length(_1460);
                    _1488 = clamp(0.5f * ((dot(_439, _1459) / _1473) + (dot(_439, _1460) / _1474)), 0.0f, 1.0f);
                    _1489 = 1.0f / ((((_1473 * _1474) + dot(_1459, _1460)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1488 = clamp(dot(_439, _1447), 0.0f, 1.0f);
                    _1489 = 1.0f;
                }
                float _1511;
                if (_31_m6[_828].w < 0.0f)
                {
                    float _1505 = _1445 * (_31_m6[_816].w * _31_m6[_816].w);
                    float _1508 = clamp(1.0f - (_1505 * _1505), 0.0f, 1.0f);
                    _1511 = lerp(1.0f / (_1445 + 1.0f), _1489, float(_1469)) * (_1508 * _1508);
                }
                else
                {
                    float3 _1494 = _1444 * _31_m6[_816].w;
                    _1511 = _1489 * pow(1.0f - clamp(dot(_1494, _1494), 0.0f, 1.0f), _31_m6[_828].w);
                }
                float _1517 = clamp((dot(_1447, -_1443) - _31_m6[_819].z) * _31_m6[_819].w, 0.0f, 1.0f);
                float _1521 = _1511 * lerp(1.0f, _1517 * _1517, float(_1463));
                float _1621;
                if ((!_1469) && (_1456 >= 0))
                {
                    uint _1527 = uint(_1456);
                    float2 _1614;
                    [branch]
                    if (_1463)
                    {
                        float4 _1604 = mul(_49_m1[_1527], _474);
                        _1614 = _49_m0[_1527].xy + (clamp(_1604.xy / _1604.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_1527].zw);
                    }
                    else
                    {
                        float3 _1541 = mul(float4(-_1444, 0.0f), _49_m1[_1527]).xyz;
                        float3 _384 = _1541;
                        float3 _383 = _1541;
                        float3 _382 = abs(_1541);
                        uint _1550 = uint(int(_382.y > _382.x));
                        uint _1556 = (_382.z > _382[_1550]) ? 2u : _1550;
                        uint _1562 = (_1556 * 2u) + uint(_383[_1556] < 0.0f);
                        float _1566 = abs(_384[_1562 / 2u]);
                        float _1586 = 0.5f - (0.000244140625f / _49_m0[_1527].w);
                        _1614 = _49_m0[_1527].xy + (clamp(float2((float(_1562) + ((((_384[uint(_334[_1562].x)] * _335[_1562].x) / _1566) * _1586) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_384[uint(_334[_1562].y)] * _335[_1562].y) / _1566) * _1586)), 0.0f.xx, 1.0f.xx) * _49_m0[_1527].zw);
                    }
                    _1621 = _1521 * _47.SampleLevel(_13, _1614, 0.0f).x;
                }
                else
                {
                    _1621 = _1521;
                }
                bool _1622 = _1621 > 0.0f;
                float _1930;
                if (_1622)
                {
                    int _1674;
                    if (_1466)
                    {
                        _1674 = int(_31_m6[_822].x);
                    }
                    else
                    {
                        uint _1629 = asuint(_31_m6[_819].w);
                        uint _1631 = asuint(_31_m6[_822].x);
                        float3 _1632 = _470 - _31_m6[_816].xyz;
                        float3 _1633 = abs(_1632);
                        float _1634 = _1633.x;
                        float _1635 = _1633.y;
                        float _1637 = _1633.z;
                        int _1669;
                        if ((_1634 > _1635) && (_1634 > _1637))
                        {
                            _1669 = int((_1632.x > 0.0f) ? (_1629 >> 24u) : ((_1629 >> 16u) & 255u));
                        }
                        else
                        {
                            int _1661;
                            if (_1635 > _1637)
                            {
                                _1661 = int((_1632.y > 0.0f) ? ((_1629 >> 8u) & 255u) : (_1629 & 255u));
                            }
                            else
                            {
                                _1661 = int((_1632.z > 0.0f) ? ((_1631 >> 8u) & 255u) : (_1631 & 255u));
                            }
                            _1669 = _1661;
                        }
                        _1674 = (_1669 < 80) ? _1669 : (-1);
                    }
                    float _1928;
                    do
                    {
                        if (_35_m2[_1674].y > 0u)
                        {
                            uint _1692 = uint(_1674);
                            float4 _381 = _770;
                            float _1703;
                            do
                            {
                                if (_35_m2[_1692].y == 0u)
                                {
                                    _1703 = 1.0f;
                                    break;
                                }
                                _1703 = _381[_35_m2[_1692].y - 1u];
                                break;
                            } while(false);
                            _1928 = _1703;
                            break;
                        }
                        float4 _1710 = mul(_33_m10[_1674], float4((_470 - ((-_1447) * _33_m11[_1674].x)) + (_439 * (_33_m11[_1674].y * 5.0f)), 1.0f));
                        float _1711 = _1710.w;
                        float3 _1714 = _1710.xyz / _1711.xxx;
                        float2 _1715 = _1714.xy;
                        float3 _1723 = _1714.xyz;
                        bool3 _1724 = bool3(_1723.x <= 0.0f.xxx.x, _1723.y <= 0.0f.xxx.y, _1723.z <= 0.0f.xxx.z);
                        bool3 _1725 = bool3(_1723.x >= 1.0f.xxx.x, _1723.y >= 1.0f.xxx.y, _1723.z >= 1.0f.xxx.z);
                        float _1728 = _1714.z;
                        float2 _1739 = ((_1715 * (_33_m12[_1674].zw - _33_m12[_1674].xy)) + _33_m12[_1674].xy).xy * _33_m13.zw;
                        float2 _1741 = floor(_1739 + 0.5f.xx);
                        float2 _1742 = _1739 - _1741;
                        float _1743 = _1742.x;
                        float _1744 = _1743 + 0.5f;
                        float _1745 = _1744 * _1744;
                        float _1748 = 1.0f - _1743;
                        float _1749 = min(_1743, 0.0f);
                        float _1752 = _1743 + 1.0f;
                        float _1753 = max(_1743, 0.0f);
                        float _1764 = _1742.y;
                        float _1765 = _1764 + 0.5f;
                        float _1766 = _1765 * _1765;
                        float _1769 = 1.0f - _1764;
                        float _1770 = min(_1764, 0.0f);
                        float _1773 = _1764 + 1.0f;
                        float _1774 = max(_1764, 0.0f);
                        float3 _1786 = float3(0.1599999964237213134765625f * _1748, 0.1599999964237213134765625f * ((_1752 - (_1753 * _1753)) + 1.0f), _1745 * 0.07999999821186065673828125f);
                        float3 _1787 = float3(0.1599999964237213134765625f * ((_1745 * 0.5f) - _1743), 0.1599999964237213134765625f * ((_1748 - (_1749 * _1749)) + 1.0f), 0.1599999964237213134765625f * _1752) + _1786;
                        float3 _1789 = float3(0.1599999964237213134765625f * _1769, 0.1599999964237213134765625f * ((_1773 - (_1774 * _1774)) + 1.0f), _1766 * 0.07999999821186065673828125f);
                        float3 _1790 = float3(0.1599999964237213134765625f * ((_1766 * 0.5f) - _1764), 0.1599999964237213134765625f * ((_1769 - (_1770 * _1770)) + 1.0f), 0.1599999964237213134765625f * _1773) + _1789;
                        float3 _1796 = ((_1786 / _1787) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                        float3 _1798 = ((_1789 / _1790) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                        float2 _1800 = _1741 * _33_m13.xy;
                        float _1801 = _1796.x;
                        float _1802 = _1798.x;
                        float2 _1804 = _1800 + float2(_1801, _1802);
                        float _1805 = _1796.y;
                        float2 _1807 = _1800 + float2(_1805, _1802);
                        float _1808 = _1796.z;
                        float2 _1810 = _1800 + float2(_1808, _1802);
                        float _1811 = _1798.y;
                        float2 _1813 = _1800 + float2(_1801, _1811);
                        float2 _1815 = _1800 + float2(_1805, _1811);
                        float2 _1817 = _1800 + float2(_1808, _1811);
                        float _1818 = _1798.z;
                        float2 _1820 = _1800 + float2(_1801, _1818);
                        float2 _1822 = _1800 + float2(_1805, _1818);
                        float2 _1824 = _1800 + float2(_1808, _1818);
                        float _1825 = _1787.x;
                        float _1826 = _1790.x;
                        float _1828 = _1787.y;
                        float _1830 = _1787.z;
                        float _1832 = _1790.y;
                        float _1836 = _1790.z;
                        float _1902 = ((((((((_1825 * _1826) * _36.SampleCmpLevelZero(_16, float3(_1804, _375).xy, _1728)) + ((_1828 * _1826) * _36.SampleCmpLevelZero(_16, float3(_1807, _375).xy, _1728))) + ((_1830 * _1826) * _36.SampleCmpLevelZero(_16, float3(_1810, _375).xy, _1728))) + ((_1825 * _1832) * _36.SampleCmpLevelZero(_16, float3(_1813, _375).xy, _1728))) + ((_1828 * _1832) * _36.SampleCmpLevelZero(_16, float3(_1815, _375).xy, _1728))) + ((_1830 * _1832) * _36.SampleCmpLevelZero(_16, float3(_1817, _375).xy, _1728))) + ((_1825 * _1836) * _36.SampleCmpLevelZero(_16, float3(_1820, _375).xy, _1728))) + ((_1828 * _1836) * _36.SampleCmpLevelZero(_16, float3(_1822, _375).xy, _1728));
                        float2 _1915 = min(_1715, 1.0f.xx - _1715);
                        _1928 = lerp(1.0f, (any(bool3(_1724.x || _1725.x, _1724.y || _1725.y, _1724.z || _1725.z)) || ((asuint(_1728) & 2147483647u) > 2139095040u)) ? 1.0f : (_1902 + ((_1830 * _1836) * _36.SampleCmpLevelZero(_16, float3(_1824, _375).xy, _1728))), _1466 ? min(_33_m11[_1674].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1674].z - _1711) * 0.25f, min(_1915.x, _1915.y)))) : _33_m11[_1674].w);
                        break;
                    } while(false);
                    _1930 = (_1674 >= 0) ? _1928 : 1.0f;
                }
                else
                {
                    _1930 = 1.0f;
                }
                float3 _1954;
                float3 _1955;
                if (_1469)
                {
                    float3 _1933 = _1422 * _1422;
                    float3 _1934 = reflect(_498, _439);
                    float _1943 = dot(_1934, _1457);
                    _1954 = _1933 / clamp(_1933 + (0.5f * clamp(_31_m6[_819].z * _1446, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _1955 = normalize(_1459 + (_1457 * clamp(dot(_1459, (_1934 * _1943) - _1457) / ((_31_m6[_819].z * _31_m6[_819].z) - (_1943 * _1943)), 0.0f, 1.0f)));
                }
                else
                {
                    _1954 = 1.0f.xxx;
                    _1955 = _1447;
                }
                float3 _1956 = _1955 + _496;
                float3 _1960 = _1956 * rsqrt(max(6.103515625e-05f, dot(_1956, _1956)));
                float3 _2091;
                if (_1622)
                {
                    float _1963 = clamp(_1488, 0.0f, 1.0f);
                    float _1965 = clamp(dot(_439, _1960), 0.0f, 1.0f);
                    float _1967 = clamp(dot(_496, _1960), 0.0f, 1.0f);
                    float _1968 = clamp(_539, 0.0f, 1.0f);
                    float _1978;
                    if (_1451 > 0.0f)
                    {
                        _1978 = clamp(_541 + ((_1451 * _1451) / ((_1967 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1978 = _541;
                    }
                    float _1979 = _1978 * _1978;
                    float _2000 = (((_1965 * _1979) - _1965) * _1965) + 1.0f;
                    float _2005 = 1.0f - _1967;
                    float _2006 = _2005 * _2005;
                    float _2008 = (_2005 * _2006) * _2006;
                    float _2032 = 1.0f - _530;
                    float _2039 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2032 * (1.04997003078460693359375f + (_2032 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2032))))));
                    float _2040 = 1.0f - _2039;
                    float3 _2043 = _538 + ((1.0f.xxx - _538) * 0.0476190485060214996337890625f);
                    float3 _2087;
                    do
                    {
                        [branch]
                        if (((_417 > 0u) && (_417 <= 15u)) && (_442 > 0.0f))
                        {
                            uint _2071 = clamp(_417 - 1u, 0u, 14u);
                            _2087 = _42.SampleLevel(_13, float3((dot(_439, _1955) * 0.5f) + 0.5f, _442 * _45_m0[_2071].w, float(_2071)), 0.0f).xyz;
                            break;
                        }
                        _2087 = _1488.xxx;
                        break;
                    } while(false);
                    float3 _2090 = ((clamp((min(((_538 * (1.0f - _2008)) + _2008.xxx) * (((_1979 / (_2000 * _2000)) * _1954.y) * (0.5f / (((_1963 * sqrt(((((-_1968) * _1979) + _1968) * _1968) + _1979)) + (_1968 * sqrt(((((-_1963) * _1979) + _1963) * _1963) + _1979))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2043 * (((_41.SampleLevel(_13, (float2(_1968, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1963, _530) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2039) / _2040)) * _2043) / (1.0f.xxx - (_2043 * _2040)))) * _31_m6[_831].z, 0.0f.xxx, 1000.0f.xxx) * _1488) + ((_534 * _1954.z) * _2087)) * (((_31_m6[_813].xyz * _1621) * _1930) * _910);
                    _2091 = _2090;
                }
                else
                {
                    _2091 = 0.0f.xxx;
                }
                _2092 = _776;
                _2093 = _2091;
            }
            else
            {
                float _1420;
                do
                {
                    if (_914)
                    {
                        _1420 = 1.0f;
                        break;
                    }
                    float _934 = (0.5f + (0.5f * _31_m6[_819].y)) - abs(_31_m6[_819].x);
                    float _935 = _31_m6[_819].y - _934;
                    float _942 = abs(max((1.0f - abs(_934)) - abs(_935), 0.00048828125f));
                    float3 _946 = normalize(float3(_934, _935, (_31_m6[_819].x >= 0.0f) ? _942 : (-_942)));
                    float3 _947 = _31_m6[_816].xyz - _470;
                    float _948 = dot(_947, _947);
                    float3 _950 = _947 * rsqrt(_948);
                    int _953 = int(_31_m6[_831].w);
                    float3 _955 = (_946 * _31_m6[_819].z) * 0.5f;
                    float3 _956 = _947 - _955;
                    float3 _957 = _947 + _955;
                    bool _960 = (uint(_31_m6[_813].w) & 1u) == 0u;
                    bool _963 = _960 || ((_835 & 2u) != 0u);
                    bool _966 = (!_960) && (_31_m6[_819].z > 0.0f);
                    float _978;
                    if (_966)
                    {
                        _978 = 1.0f / ((((length(_956) * length(_957)) + dot(_956, _957)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _978 = 1.0f;
                    }
                    float _1000;
                    if (_31_m6[_828].w < 0.0f)
                    {
                        float _994 = _948 * (_31_m6[_816].w * _31_m6[_816].w);
                        float _997 = clamp(1.0f - (_994 * _994), 0.0f, 1.0f);
                        _1000 = lerp(1.0f / (_948 + 1.0f), _978, float(_966)) * (_997 * _997);
                    }
                    else
                    {
                        float3 _983 = _947 * _31_m6[_816].w;
                        _1000 = _978 * pow(1.0f - clamp(dot(_983, _983), 0.0f, 1.0f), _31_m6[_828].w);
                    }
                    float _1006 = clamp((dot(_950, -_946) - _31_m6[_819].z) * _31_m6[_819].w, 0.0f, 1.0f);
                    float _1010 = _1000 * lerp(1.0f, _1006 * _1006, float(_960));
                    float _1110;
                    if ((!_966) && (_953 >= 0))
                    {
                        uint _1016 = uint(_953);
                        float2 _1103;
                        [branch]
                        if (_960)
                        {
                            float4 _1093 = mul(_49_m1[_1016], _474);
                            _1103 = _49_m0[_1016].xy + (clamp(_1093.xy / _1093.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_1016].zw);
                        }
                        else
                        {
                            float3 _1030 = mul(float4(-_947, 0.0f), _49_m1[_1016]).xyz;
                            float3 _388 = _1030;
                            float3 _387 = _1030;
                            float3 _386 = abs(_1030);
                            uint _1039 = uint(int(_386.y > _386.x));
                            uint _1045 = (_386.z > _386[_1039]) ? 2u : _1039;
                            uint _1051 = (_1045 * 2u) + uint(_387[_1045] < 0.0f);
                            float _1055 = abs(_388[_1051 / 2u]);
                            float _1075 = 0.5f - (0.000244140625f / _49_m0[_1016].w);
                            _1103 = _49_m0[_1016].xy + (clamp(float2((float(_1051) + ((((_388[uint(_334[_1051].x)] * _335[_1051].x) / _1055) * _1075) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_334[_1051].y)] * _335[_1051].y) / _1055) * _1075)), 0.0f.xx, 1.0f.xx) * _49_m0[_1016].zw);
                        }
                        _1110 = _1010 * _47.SampleLevel(_13, _1103, 0.0f).x;
                    }
                    else
                    {
                        _1110 = _1010;
                    }
                    float _1419;
                    if (_1110 > 0.0f)
                    {
                        int _1163;
                        if (_963)
                        {
                            _1163 = int(_31_m6[_822].x);
                        }
                        else
                        {
                            uint _1118 = asuint(_31_m6[_819].w);
                            uint _1120 = asuint(_31_m6[_822].x);
                            float3 _1121 = _470 - _31_m6[_816].xyz;
                            float3 _1122 = abs(_1121);
                            float _1123 = _1122.x;
                            float _1124 = _1122.y;
                            float _1126 = _1122.z;
                            int _1158;
                            if ((_1123 > _1124) && (_1123 > _1126))
                            {
                                _1158 = int((_1121.x > 0.0f) ? (_1118 >> 24u) : ((_1118 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1150;
                                if (_1124 > _1126)
                                {
                                    _1150 = int((_1121.y > 0.0f) ? ((_1118 >> 8u) & 255u) : (_1118 & 255u));
                                }
                                else
                                {
                                    _1150 = int((_1121.z > 0.0f) ? ((_1120 >> 8u) & 255u) : (_1120 & 255u));
                                }
                                _1158 = _1150;
                            }
                            _1163 = (_1158 < 80) ? _1158 : (-1);
                        }
                        float _1417;
                        do
                        {
                            if (_35_m2[_1163].y > 0u)
                            {
                                uint _1181 = uint(_1163);
                                float4 _385 = _770;
                                float _1192;
                                do
                                {
                                    if (_35_m2[_1181].y == 0u)
                                    {
                                        _1192 = 1.0f;
                                        break;
                                    }
                                    _1192 = _385[_35_m2[_1181].y - 1u];
                                    break;
                                } while(false);
                                _1417 = _1192;
                                break;
                            }
                            float4 _1199 = mul(_33_m10[_1163], float4((_470 - ((-_950) * _33_m11[_1163].x)) + (_439 * (_33_m11[_1163].y * 5.0f)), 1.0f));
                            float _1200 = _1199.w;
                            float3 _1203 = _1199.xyz / _1200.xxx;
                            float2 _1204 = _1203.xy;
                            float3 _1212 = _1203.xyz;
                            bool3 _1213 = bool3(_1212.x <= 0.0f.xxx.x, _1212.y <= 0.0f.xxx.y, _1212.z <= 0.0f.xxx.z);
                            bool3 _1214 = bool3(_1212.x >= 1.0f.xxx.x, _1212.y >= 1.0f.xxx.y, _1212.z >= 1.0f.xxx.z);
                            float _1217 = _1203.z;
                            float2 _1228 = ((_1204 * (_33_m12[_1163].zw - _33_m12[_1163].xy)) + _33_m12[_1163].xy).xy * _33_m13.zw;
                            float2 _1230 = floor(_1228 + 0.5f.xx);
                            float2 _1231 = _1228 - _1230;
                            float _1232 = _1231.x;
                            float _1233 = _1232 + 0.5f;
                            float _1234 = _1233 * _1233;
                            float _1237 = 1.0f - _1232;
                            float _1238 = min(_1232, 0.0f);
                            float _1241 = _1232 + 1.0f;
                            float _1242 = max(_1232, 0.0f);
                            float _1253 = _1231.y;
                            float _1254 = _1253 + 0.5f;
                            float _1255 = _1254 * _1254;
                            float _1258 = 1.0f - _1253;
                            float _1259 = min(_1253, 0.0f);
                            float _1262 = _1253 + 1.0f;
                            float _1263 = max(_1253, 0.0f);
                            float3 _1275 = float3(0.1599999964237213134765625f * _1237, 0.1599999964237213134765625f * ((_1241 - (_1242 * _1242)) + 1.0f), _1234 * 0.07999999821186065673828125f);
                            float3 _1276 = float3(0.1599999964237213134765625f * ((_1234 * 0.5f) - _1232), 0.1599999964237213134765625f * ((_1237 - (_1238 * _1238)) + 1.0f), 0.1599999964237213134765625f * _1241) + _1275;
                            float3 _1278 = float3(0.1599999964237213134765625f * _1258, 0.1599999964237213134765625f * ((_1262 - (_1263 * _1263)) + 1.0f), _1255 * 0.07999999821186065673828125f);
                            float3 _1279 = float3(0.1599999964237213134765625f * ((_1255 * 0.5f) - _1253), 0.1599999964237213134765625f * ((_1258 - (_1259 * _1259)) + 1.0f), 0.1599999964237213134765625f * _1262) + _1278;
                            float3 _1285 = ((_1275 / _1276) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                            float3 _1287 = ((_1278 / _1279) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                            float2 _1289 = _1230 * _33_m13.xy;
                            float _1290 = _1285.x;
                            float _1291 = _1287.x;
                            float2 _1293 = _1289 + float2(_1290, _1291);
                            float _1294 = _1285.y;
                            float2 _1296 = _1289 + float2(_1294, _1291);
                            float _1297 = _1285.z;
                            float2 _1299 = _1289 + float2(_1297, _1291);
                            float _1300 = _1287.y;
                            float2 _1302 = _1289 + float2(_1290, _1300);
                            float2 _1304 = _1289 + float2(_1294, _1300);
                            float2 _1306 = _1289 + float2(_1297, _1300);
                            float _1307 = _1287.z;
                            float2 _1309 = _1289 + float2(_1290, _1307);
                            float2 _1311 = _1289 + float2(_1294, _1307);
                            float2 _1313 = _1289 + float2(_1297, _1307);
                            float _1314 = _1276.x;
                            float _1315 = _1279.x;
                            float _1317 = _1276.y;
                            float _1319 = _1276.z;
                            float _1321 = _1279.y;
                            float _1325 = _1279.z;
                            float _1391 = ((((((((_1314 * _1315) * _36.SampleCmpLevelZero(_16, float3(_1293, _375).xy, _1217)) + ((_1317 * _1315) * _36.SampleCmpLevelZero(_16, float3(_1296, _375).xy, _1217))) + ((_1319 * _1315) * _36.SampleCmpLevelZero(_16, float3(_1299, _375).xy, _1217))) + ((_1314 * _1321) * _36.SampleCmpLevelZero(_16, float3(_1302, _375).xy, _1217))) + ((_1317 * _1321) * _36.SampleCmpLevelZero(_16, float3(_1304, _375).xy, _1217))) + ((_1319 * _1321) * _36.SampleCmpLevelZero(_16, float3(_1306, _375).xy, _1217))) + ((_1314 * _1325) * _36.SampleCmpLevelZero(_16, float3(_1309, _375).xy, _1217))) + ((_1317 * _1325) * _36.SampleCmpLevelZero(_16, float3(_1311, _375).xy, _1217));
                            float2 _1404 = min(_1204, 1.0f.xx - _1204);
                            _1417 = lerp(1.0f, (any(bool3(_1213.x || _1214.x, _1213.y || _1214.y, _1213.z || _1214.z)) || ((asuint(_1217) & 2147483647u) > 2139095040u)) ? 1.0f : (_1391 + ((_1319 * _1325) * _36.SampleCmpLevelZero(_16, float3(_1313, _375).xy, _1217))), _963 ? min(_33_m11[_1163].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1163].z - _1200) * 0.25f, min(_1404.x, _1404.y)))) : _33_m11[_1163].w);
                            break;
                        } while(false);
                        _1419 = (_1163 >= 0) ? _1417 : 1.0f;
                    }
                    else
                    {
                        _1419 = 1.0f;
                    }
                    _1420 = _1419;
                    break;
                } while(false);
                _2092 = _776 * _1420;
                _2093 = 0.0f.xxx;
            }
            _798 = _2092;
            _801 = _800 + _2093;
        }
        _773 = _772 + _800;
    }
    float3 _2097 = _741.xyz + (_772 * _775);
    float3 _2099 = _406.xxx;
    float3 _2134;
    float3 _2135;
    [branch]
    if (_9_m23.x != 0.0f)
    {
        float _2110 = min(_21.SampleBias(_12, _4, _9_m16).x, _406);
        _2134 = clamp((pow(abs(_540 + _2110), exp2(((-16.0f) * _530) - 1.0f)) - 1.0f) + _2110, 0.0f, 1.0f).xxx;
        _2135 = max(_2110.xxx, ((((((_534 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2110) + ((_534 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2110) + ((_534 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2110);
    }
    else
    {
        _2134 = _2099;
        _2135 = _2099;
    }
    float3 _2158;
    do
    {
        [branch]
        if (((_417 > 0u) && (_417 <= 15u)) && (_442 > 0.0f))
        {
            uint _2146 = clamp(_417 - 1u, 0u, 14u);
            _2158 = _43.SampleLevel(_13, float3(_442 * _45_m0[_2146].w, 0.5f, float(_2146)), 0.0f).xyz;
            break;
        }
        _2158 = 1.0f.xxx;
        break;
    } while(false);
    float3 _2175 = (_470 + (_439 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_445 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2185 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2194 = _2175 - (_9_m105.xyz + (_2185 * (-_9_m107.w)));
    float _2208 = max(clamp((max(abs(_2194.x), abs(_2194.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2194.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2510;
    float4 _2511;
    float4 _2512;
    float _2513;
    float _2514;
    if ((_9_m105.w != 0.0f) && (_2208 < 1.0f))
    {
        float3 _2221 = _2175 - (_9_m105.xyz + (_2185 * (-_9_m107.y)));
        float _2235 = max(clamp((max(abs(_2221.x), abs(_2221.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2221.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2311;
        float4 _2312;
        float4 _2313;
        float4 _2314;
        if (_2235 < 1.0f)
        {
            float3 _2244 = ((_2175 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2246 = _2244 - floor(_2244);
            float4 _2250 = _57.SampleLevel(_14, _2246, 0.0f);
            float _2251 = 1.0f - _2235;
            float _2255 = _9_m106.y * 0.5f;
            float _2260 = _2246.x;
            float _2261 = clamp(_2246.y, _2255, 1.0f - _2255) * 0.3333333432674407958984375f;
            float _2262 = _2246.z;
            float4 _2265 = _58.SampleLevel(_13, float3(_2260, _2261, _2262), 0.0f);
            float _2281 = _2250.x;
            float _2291 = _2250.y;
            float _2301 = _2250.z;
            _2311 = _2208 + (_2265.w * _2251);
            _2312 = float4(((_58.SampleLevel(_13, float3(_2260, _2261 + 0.666666686534881591796875f, _2262), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2301, _2301) * _2251;
            _2313 = float4(((_58.SampleLevel(_13, float3(_2260, _2261 + 0.3333333432674407958984375f, _2262), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2291, _2291) * _2251;
            _2314 = float4(((_2265.xyz * 4.0f) - 2.0f.xxx) * _2281, _2281) * _2251;
        }
        else
        {
            _2311 = _2208;
            _2312 = 0.0f.xxxx;
            _2313 = 0.0f.xxxx;
            _2314 = 0.0f.xxxx;
        }
        float3 _2320 = _2175 - (_9_m105.xyz + (_2185 * (-_9_m107.z)));
        float _2334 = max(clamp((max(abs(_2320.x), abs(_2320.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2320.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2414;
        float4 _2415;
        float4 _2416;
        float4 _2417;
        if (_2334 < 1.0f)
        {
            float3 _2343 = ((_2175 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2345 = _2343 - floor(_2343);
            float4 _2349 = _59.SampleLevel(_14, _2345, 0.0f);
            float _2351 = _2235 * (1.0f - _2334);
            float _2355 = _9_m106.y * 0.5f;
            float _2360 = _2345.x;
            float _2361 = clamp(_2345.y, _2355, 1.0f - _2355) * 0.3333333432674407958984375f;
            float _2362 = _2345.z;
            float4 _2365 = _60.SampleLevel(_13, float3(_2360, _2361, _2362), 0.0f);
            float _2381 = _2349.x;
            float _2392 = _2349.y;
            float _2403 = _2349.z;
            _2414 = _2311 + (_2365.w * _2351);
            _2415 = _2312 + (float4(((_60.SampleLevel(_13, float3(_2360, _2361 + 0.666666686534881591796875f, _2362), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2403, _2403) * _2351);
            _2416 = _2313 + (float4(((_60.SampleLevel(_13, float3(_2360, _2361 + 0.3333333432674407958984375f, _2362), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2392, _2392) * _2351);
            _2417 = _2314 + (float4(((_2365.xyz * 4.0f) - 2.0f.xxx) * _2381, _2381) * _2351);
        }
        else
        {
            _2414 = _2311;
            _2415 = _2312;
            _2416 = _2313;
            _2417 = _2314;
        }
        float4 _2500;
        float4 _2501;
        float4 _2502;
        float _2503;
        if (_2334 > 0.0f)
        {
            float3 _2426 = ((_2175 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2429 = _9_m106.xyz * 0.5f;
            float3 _2431 = clamp(_2426 - floor(_2426), _2429, 1.0f.xxx - _2429);
            float4 _2435 = _61.SampleLevel(_14, _2431, 0.0f);
            float _2437 = _2334 * (1.0f - _2208);
            float _2441 = _9_m106.y * 0.5f;
            float _2446 = _2431.x;
            float _2447 = clamp(_2431.y, _2441, 1.0f - _2441) * 0.3333333432674407958984375f;
            float _2448 = _2431.z;
            float4 _2451 = _62.SampleLevel(_13, float3(_2446, _2447, _2448), 0.0f);
            float _2467 = _2435.x;
            float _2478 = _2435.y;
            float _2489 = _2435.z;
            _2500 = _2415 + (float4(((_62.SampleLevel(_13, float3(_2446, _2447 + 0.666666686534881591796875f, _2448), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2489, _2489) * _2437);
            _2501 = _2416 + (float4(((_62.SampleLevel(_13, float3(_2446, _2447 + 0.3333333432674407958984375f, _2448), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2478, _2478) * _2437);
            _2502 = _2417 + (float4(((_2451.xyz * 4.0f) - 2.0f.xxx) * _2467, _2467) * _2437);
            _2503 = _2414 + (_2451.w * _2437);
        }
        else
        {
            _2500 = _2415;
            _2501 = _2416;
            _2502 = _2417;
            _2503 = _2414;
        }
        float _2506 = clamp((_2503 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _2510 = _2500;
        _2511 = _2501;
        _2512 = _2502;
        _2513 = _2506 - _2208;
        _2514 = (_2506 + _2208) * 0.5f;
    }
    else
    {
        _2510 = 0.0f.xxxx;
        _2511 = 0.0f.xxxx;
        _2512 = 0.0f.xxxx;
        _2513 = 0.0f;
        _2514 = 1.0f;
    }
    float4 _2534 = _2512 + float4(_9_m108.x * _2514, (_9_m108.y * _2514) + ((_9_m108.w * _2513) * 0.5f), _9_m108.z * _2514, (_9_m108.w * _2514) + ((_9_m108.y * _2513) * 0.375f));
    float4 _2554 = _2511 + float4(_9_m109.x * _2514, (_9_m109.y * _2514) + ((_9_m109.w * _2513) * 0.5f), _9_m109.z * _2514, (_9_m109.w * _2514) + ((_9_m109.y * _2513) * 0.375f));
    float4 _2574 = _2510 + float4(_9_m110.x * _2514, (_9_m110.y * _2514) + ((_9_m110.w * _2513) * 0.5f), _9_m110.z * _2514, (_9_m110.w * _2514) + ((_9_m110.y * _2513) * 0.375f));
    float4 _2732;
    float4 _2733;
    float4 _2734;
    [branch]
    if (all(bool2(_458.x >= 0.0f.xx.x, _458.y >= 0.0f.xx.y)))
    {
        float4 _2582 = _56.SampleLevel(_13, _458, 0.0f);
        float4 _2583 = abs(_2582);
        float4 _2729;
        float4 _2730;
        float4 _2731;
        [branch]
        if (any(bool4(_2583.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2583.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2583.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2583.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _2589 = length(_2582.yzw);
            uint _2591;
            float _2594;
            _2591 = 0u;
            _2594 = 1.0f;
            for (float _2596 = _2589; _2596 > 4.599999904632568359375f; )
            {
                _2591++;
                _2594 *= 0.5f;
                _2596 *= 0.5f;
                continue;
            }
            float4 _2600 = _2582 * _2594;
            float4 _2605 = float4(0.0f, _2600.yzw);
            float2 _2627 = (_55.SampleLevel(_13, float2(((((length(_2605) * _54_m3.x) + _54_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _54_m2.xy) + _54_m2.zw;
            float4 _2641;
            _2641 = float4(_2627.x * 3.5449078083038330078125f, _2605.yzw * _2627.y) * exp(_2600.x * 0.282094776630401611328125f);
            for (uint _2644 = 0u; _2644 < _2591; )
            {
                _2641 = mul(float4x4(_2641, float4(_2641.yx, 0.0f, 0.0f), float4(_2641.z, 0.0f, _2641.x, 0.0f), float4(_2641.w, 0.0f, 0.0f, _2641.x)) * 0.282094776630401611328125f, _2641);
                _2644++;
                continue;
            }
            float4x4 _2665 = float4x4(_2641, float4(_2641.yx, 0.0f, 0.0f), float4(_2641.z, 0.0f, _2641.x, 0.0f), float4(_2641.w, 0.0f, 0.0f, _2641.x)) * 0.282094776630401611328125f;
            float4 _2675 = mul(_2665, float4(_2534.w * 1.1283791065216064453125f, _2534.y * (-0.977204978466033935546875f), _2534.z * 0.977204978466033935546875f, _2534.x * (-0.977204978466033935546875f)));
            float4 _2695 = mul(_2665, float4(_2554.w * 1.1283791065216064453125f, _2554.y * (-0.977204978466033935546875f), _2554.z * 0.977204978466033935546875f, _2554.x * (-0.977204978466033935546875f)));
            float4 _2715 = mul(_2665, float4(_2574.w * 1.1283791065216064453125f, _2574.y * (-0.977204978466033935546875f), _2574.z * 0.977204978466033935546875f, _2574.x * (-0.977204978466033935546875f)));
            _2729 = float4(_2675.x * 0.886226952075958251953125f, _2675.w * (-1.02332675457000732421875f), _2675.y * (-1.02332675457000732421875f), _2675.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2730 = float4(_2695.x * 0.886226952075958251953125f, _2695.w * (-1.02332675457000732421875f), _2695.y * (-1.02332675457000732421875f), _2695.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2731 = float4(_2715.x * 0.886226952075958251953125f, _2715.w * (-1.02332675457000732421875f), _2715.y * (-1.02332675457000732421875f), _2715.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _2729 = _2534;
            _2730 = _2554;
            _2731 = _2574;
        }
        _2732 = _2729;
        _2733 = _2730;
        _2734 = _2731;
    }
    else
    {
        _2732 = _2534;
        _2733 = _2554;
        _2734 = _2574;
    }
    float _2741 = max(0.0f, dot(_2732.xyz * _2158.x, _439) + _2732.w);
    float _2748 = max(0.0f, dot(_2733.xyz * _2158.y, _439) + _2733.w);
    float _2755 = max(0.0f, dot(_2734.xyz * _2158.z, _439) + _2734.w);
    float3 _2765 = reflect(_498, _439);
    float _2773 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_530, 0.001000000047497451305389404296875f))));
    float2 _2777 = floor(_445 * _27_m0.w);
    float _2794 = floor(_477 - _27_m2.y);
    float _2798 = clamp(_2794, 0.0f, _27_m1.x - 1.0f);
    uint _2808 = (_2794 <= _2798) ? (_24.Load(uint(_9_m21.z + int(_2777.x + (_2777.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_2798)) * 4 + 0)) : 0u;
    float _2811 = dot(float4(_2741, _2748, _2755, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2813;
    float _2816;
    uint _2818;
    _2813 = 0.0f.xxx;
    _2816 = 1.0f;
    _2818 = _2808;
    uint _2819;
    float3 _2814;
    float _2817;
    bool _2821;
    [loop]
    for (;;)
    {
        _2821 = _2816 > 0.00999999977648258209228515625f;
        if ((_2818 != 0u) && _2821)
        {
            uint _2825 = firstbitlow(_2818);
            _2819 = _2818 ^ (1u << (_2825 & 31u));
            float3 _2845 = float3(dot(_27_m4[_2825]._m2, _474), dot(_27_m4[_2825]._m3, _474), dot(_27_m4[_2825]._m4, _474));
            float3 _2846 = abs(_2845);
            if (all(bool3(_2846.x <= _27_m4[_2825]._m1.xyz.x, _2846.y <= _27_m4[_2825]._m1.xyz.y, _2846.z <= _27_m4[_2825]._m1.xyz.z)))
            {
                float3 _2855 = _27_m4[_2825]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2857 = _2846 * 0.100000001490116119384765625f;
                float3 _2858 = _2857 * _2857;
                float3 _2861 = (_27_m4[_2825]._m1.xyz - _2846) * _27_m4[_2825]._m5.xyz;
                float3 _2909;
                [branch]
                if (_27_m4[_2825]._m6.x == 1.0f)
                {
                    float3 _2894 = float3(dot(_27_m4[_2825]._m2.xyz, _2765), dot(_27_m4[_2825]._m3.xyz, _2765), dot(_27_m4[_2825]._m4.xyz, _2765));
                    float3 _2896 = (_27_m4[_2825]._m1.xyz - _2845) / _2894;
                    float3 _2899 = ((-_27_m4[_2825]._m1.xyz) - _2845) / _2894;
                    bool3 _2900 = bool3(_2894.x > 0.0f.xxx.x, _2894.y > 0.0f.xxx.y, _2894.z > 0.0f.xxx.z);
                    float3 _2901 = float3(_2900.x ? _2896.x : _2899.x, _2900.y ? _2896.y : _2899.y, _2900.z ? _2896.z : _2899.z);
                    _2909 = _2845 + (_2894 * min(min(_2901.x, _2901.y), _2901.z));
                }
                else
                {
                    _2909 = _2765;
                }
                float3 _2910 = normalize(_2909);
                float3 _2913 = float3(int3(sign(_2910)));
                float3 _2916 = _2910 / dot(_2910, _2913).xxx;
                float3 _2930;
                if (_2916.z < 0.0f)
                {
                    float3 _2921 = abs(_2916);
                    float2 _2928 = _2913.xy * float2(1.0f - _2921.y, 1.0f - _2921.x);
                    _2930 = float3(_2928.x, _2928.y, _2916.z);
                }
                else
                {
                    _2930 = _2916;
                }
                float _2955 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2825]._m0, float4(_439, 1.0f))));
                float _2968 = clamp((min(_2861.x, min(_2861.y, _2861.z)) * _27_m4[_2825]._m6.y) + ((((((_2855 * _2855).x - ((_2858.x + _2858.y) + _2858.z)) * _27_m4[_2825]._m5.x) * _27_m4[_2825]._m5.x) * (1.0f - _27_m4[_2825]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2825]._m6.w;
                _2814 = _2813 + ((((_22.SampleLevel(_15, float3((((_2930.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2825]._m1.w), _2773).xyz * _27_m4[_2825]._m5.w) * ((((((clamp(abs(_2811 / _2955), 0.0f, 1.0f) * 2.0f) + _2811) / (2.0f + _2955)) - 1.0f) * _9_m23.w) + 1.0f)) * _2968) * _2816);
                _2817 = _2816 * (1.0f - _2968);
            }
            else
            {
                _2814 = _2813;
                _2817 = _2816;
            }
            _2813 = _2814;
            _2816 = _2817;
            _2818 = _2819;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _3037;
    if (_2821)
    {
        float3 _2976 = normalize(_2765);
        float3 _2979 = float3(int3(sign(_2976)));
        float3 _2982 = _2976 / dot(_2976, _2979).xxx;
        float3 _2996;
        if (_2982.z < 0.0f)
        {
            float3 _2987 = abs(_2982);
            float2 _2994 = _2979.xy * float2(1.0f - _2987.y, 1.0f - _2987.x);
            _2996 = float3(_2994.x, _2994.y, _2982.z);
        }
        else
        {
            _2996 = _2982;
        }
        float _3023 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_439, 1.0f))));
        _3037 = _2813 + ((_22.SampleLevel(_15, float3((((_2996.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _2773).xyz * ((((((clamp(abs(_2811 / _3023), 0.0f, 1.0f) * 2.0f) + _2811) / (2.0f + _3023)) - 1.0f) * _9_m23.w) + 1.0f)) * _2816);
    }
    else
    {
        _3037 = _2813;
    }
    float3 _3043 = (_3037 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _3043 *= 0.25f + (0.75f * saturate(_2811));
    }
    float3 _3064;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _3058 = _20.SampleBias(_13, _4, _9_m16);
        float _3059 = _3058.x;
        _3064 = (_19.SampleBias(_13, _4, _9_m16).xyz * _3059) + (_3043 * (1.0f - _3059));
    }
    else
    {
        _3064 = _3043;
    }
    float3 _3067 = (((float3(_2741, _2748, _2755) * _534) * _9_m22.x) * _2135) + ((_3064 * (_563 + ((_538 * ((1.0f - _564) / _564)) * _563))) * _2134);
    float4 _3069 = float4(_2097.x, _2097.y, _2097.z, _741.w) + float4(_3067.x, _3067.y, _3067.z, 0.0f.xxxx.w);
    float3 _3072 = clamp(_3069.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _3087 = _470.y * _9_m46.w;
    float _3092 = max(0.00999999977648258209228515625f, _3087 + _9_m47.w);
    float3 _3106 = exp(_9_m45.xyz * ((-max(0.0f, (_497 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3092)) / _3092) * exp(_3087 + _9_m48.w))));
    float _3109 = dot(_498, _9_m44.xyz);
    float _3115 = _9_m45.w * _9_m45.w;
    float _3119 = (1.0f + _3115) - ((2.0f * _9_m45.w) * _3109);
    float3 _3447;
    float _3448;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3273 = (uint3(int3(_395, _396, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3274 = _3273.y;
        uint _3275 = _3273.z;
        uint _3278 = _3273.x + (_3274 * _3275);
        uint _3280 = _3274 + (_3275 * _3278);
        uint _3282 = _3275 + (_3278 * _3280);
        uint _3284 = _3278 + (_3280 * _3282);
        float _3308 = dot(_498, -_7_m0[2].xyz);
        float3 _3318 = _470 - _7_m11.xyz;
        float _3320 = (_9_m55.w * ((_3308 > 5.9604644775390625e-08f) ? (1.0f / _3308) : 0.0f)) * (1.0f / _497);
        float _3321 = _3318.y;
        float _3322 = _3320 * _3321;
        float _3324 = _7_m11.y + _3322;
        float _3325 = _3321 - _3322;
        float _3327 = (1.0f - _3320) * _497;
        float _3341 = max(-127.0f, _9_m49.z * _3325);
        float _3365 = max(-127.0f, _9_m52.x * _3325);
        float _3376 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3324 - _9_m49.x)))) * ((abs(_3341) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3341)) / _3341) : (0.693147182464599609375f - (0.2402265071868896484375f * _3341)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3324 - _9_m52.z)))) * ((abs(_3365) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3365)) / _3365) : (0.693147182464599609375f - (0.2402265071868896484375f * _3365))));
        float _3398 = clamp((_497 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3401 = clamp((max(clamp(exp2(-(_3376 * _3327)), 0.0f, 1.0f), _9_m51.w) + clamp((_497 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3398, 0.0f, 1.0f);
        float4 _3441 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _52.SampleLevel(_13, float3((_445 + ((((float3(uint3(_3284, _3280 + (_3282 * _3284), _379) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_477 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_477 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3443 = _3441.w;
        _3447 = _3441.xyz + (((_9_m51.xyz * (1.0f - _3401)) + (((_9_m54.xyz * pow(clamp(dot(_496, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3376 * max(_3327 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3398))) * _3443);
        _3448 = _3443 * _3401;
    }
    else
    {
        float3 _3149 = _470 - _7_m11.xyz;
        float _3151 = _3149.y;
        float _3165 = max(-127.0f, _9_m49.z * _3151);
        float _3189 = max(-127.0f, _9_m52.x * _3151);
        float _3200 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3165) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3165)) / _3165) : (0.693147182464599609375f - (0.2402265071868896484375f * _3165)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3189) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3189)) / _3189) : (0.693147182464599609375f - (0.2402265071868896484375f * _3189))));
        float _3222 = clamp((_497 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3225 = clamp((max(clamp(exp2(-(_3200 * _497)), 0.0f, 1.0f), _9_m51.w) + clamp((_497 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3222, 0.0f, 1.0f);
        _3447 = (_9_m51.xyz * (1.0f - _3225)) + (((_9_m54.xyz * pow(clamp(dot(_496, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3200 * max(_497 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3222));
        _3448 = _3225;
    }
    float3 _3451 = _3106 * _3448;
    float3 _3453 = (_3072 * _3451) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3109 * _3109)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3115) / max((12.56637096405029296875f * _3119) * sqrt(_3119), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3106)) * _3448) + _3447);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3453 = (_3453 * 0.65f) + (_3072 * 0.35f);

    }
    float _3454 = dot(_3451, 0.3333333432674407958984375f.xxx);
    float4 _3455 = float4(_3453.x, _3453.y, _3453.z, _3069.w);
    _3455.w = _3454;
    float _3484 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _470) * _9_m61.z), 0.0f, 1.0f);
    float3 _3492 = lerp(_3072, _3455.xyz, min((1.0f - _3484) + ((_67.SampleLevel(_14, (_470 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _3484), 1.0f + _3454).xxx);
    _5 = float4(_3492.x, _3492.y, _3492.z, _3455.w);
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
