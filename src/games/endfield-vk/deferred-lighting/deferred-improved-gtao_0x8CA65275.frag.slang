// DX11 0x7F533976 -> Vulkan 0x8CA65275
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

static float _335 = 0.0f;
static uint _337 = 0u;

static const int2 _313[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _314[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(29, 3)]]
cbuffer _6_7 : register(b29)
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

[[vk::binding(34, 3)]]
cbuffer _8_9 : register(b34)
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

[[vk::binding(38, 3)]] ByteAddressBuffer _24 : register(t38);
[[vk::binding(35, 3)]]
cbuffer _25_27 : register(b35)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(31, 3)]]
cbuffer _28_29 : register(b31)
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

[[vk::binding(30, 3)]]
cbuffer _30_31 : register(b30)
{
    float4 _31_m0 : packoffset(c0);
    float4 _31_m1 : packoffset(c1);
    float4 _31_m2 : packoffset(c2);
    float4 _31_m3 : packoffset(c3);
    float4 _31_m4 : packoffset(c4);
    uint4 _31_m5 : packoffset(c5);
    float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(33, 3)]]
cbuffer _32_33 : register(b33)
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

[[vk::binding(37, 3)]]
cbuffer _34_35 : register(b37)
{
    column_major float4x4 _35_m0[32] : packoffset(c0);
    float4 _35_m1[32] : packoffset(c128);
    uint4 _35_m2[56] : packoffset(c160);
    int4 _35_m3 : packoffset(c216);
    float4 _35_m4 : packoffset(c217);
    float4 _35_m5[4] : packoffset(c218);
    float4 _35_m6 : packoffset(c222);
};

[[vk::binding(36, 3)]]
cbuffer _44_45 : register(b36)
{
    float4 _45_m0[32] : packoffset(c0);
    column_major float4x4 _45_m1[32] : packoffset(c32);
};

[[vk::binding(32, 3)]]
cbuffer _49_50 : register(b32)
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
[[vk::binding(26, 3)]] Texture2D<float4> _18 : register(t26);
[[vk::binding(7, 3)]] Texture2D<float4> _19 : register(t7);
[[vk::binding(8, 3)]] Texture2D<float4> _20 : register(t8);
[[vk::binding(20, 3)]] Texture2D<float4> _21 : register(t20);
[[vk::binding(9, 3)]] Texture2DArray<float4> _22 : register(t9);
[[vk::binding(10, 3)]] Texture2D<float4> _36 : register(t10);
[[vk::binding(6, 3)]] Texture2D<float4> _37 : register(t6);
[[vk::binding(21, 3)]] Texture2D<float4> _38 : register(t21);
[[vk::binding(27, 3)]] Texture2D<float4> _39 : register(t27);
[[vk::binding(11, 3)]] Texture2D<float4> _41 : register(t11);
[[vk::binding(25, 3)]] Texture2D<float4> _42 : register(t25);
[[vk::binding(12, 3)]] Texture2D<float4> _43 : register(t12);
[[vk::binding(19, 3)]] Texture3D<float4> _48 : register(t19);
[[vk::binding(28, 3)]] Texture2D<float4> _51 : register(t28);
[[vk::binding(5, 3)]] Texture2D<float4> _52 : register(t5);
[[vk::binding(18, 3)]] Texture3D<float4> _53 : register(t18);
[[vk::binding(15, 3)]] Texture3D<float4> _54 : register(t15);
[[vk::binding(17, 3)]] Texture3D<float4> _55 : register(t17);
[[vk::binding(14, 3)]] Texture3D<float4> _56 : register(t14);
[[vk::binding(16, 3)]] Texture3D<float4> _57 : register(t16);
[[vk::binding(13, 3)]] Texture3D<float4> _58 : register(t13);
[[vk::binding(24, 3)]] Texture2D<float4> _59 : register(t24);
[[vk::binding(23, 3)]] Texture2D<float4> _60 : register(t23);
[[vk::binding(22, 3)]] Texture2D<float4> _61 : register(t22);

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
    uint2 _350 = uint2(gl_FragCoord.xy);
    int _353 = int(_350.x);
    int _354 = int(_350.y);
    int2 _356 = int3(_353, _354, 0).xy;
    float4 _358 = _59.Load(int3(_356, 0));
    float4 _360 = _60.Load(int3(_356, 0));
    float4 _362 = _61.Load(int3(_356, 0));
    uint _366 = uint(_358.x * 1023.0f);
    float _370 = float((_366 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    float _378 = float(((_366 & 7u) << 2u) | (uint(_358.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
    uint _382 = uint(round(_358.y * 1023.0f));
    float _387 = float((_382 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    uint _392 = uint(_358.z * 1023.0f);
    float2 _407 = (_360.xy * 2.0f) - 1.0f.xx;
    float _411 = 1.0f - dot(1.0f.xx, abs(_407));
    float3 _413 = float3(_407.x, _411, _407.y);
    float3 _425;
    if (_411 < 0.0f)
    {
        float2 _420 = _413.xz;
        bool2 _421 = bool2(_420.x >= 0.0f.xx.x, _420.y >= 0.0f.xx.y);
        float2 _423 = (1.0f.xx - abs(_413.zx)) * float2(_421.x ? 1.0f.xx.x : (-1.0f).xx.x, _421.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _425 = float3(_423.x, _413.y, _423.y);
    }
    else
    {
        _425 = _413;
    }
    float3 _426 = normalize(_425);
    float _427 = _360.z;
    float3 _428 = _362.xyz;
    float _429 = _362.w;
    float _431 = (float(_382 & 7u) * 0.107142865657806396484375f) + 0.5f;
    float2 _434 = float2(_350);
    float2 _439 = (_434 + 0.5f.xx) * _9_m0.zw;
    float2 _447 = gl_FragCoord.xy * _9_m0.zw;
    float2 _449 = (_447 * 2.0f) - 1.0f.xx;
    float4 _452 = float4(_449, _18.SampleLevel(_12, _439, 0.0f).x, 1.0f);
    _452.y = -_449.y;
    float4 _455 = mul(_7_m6, _452);
    float3 _459 = _455.xyz / _455.w.xxx;
    float4 _463 = float4(_459, 1.0f);
    float _466 = abs(mul(_7_m0, _463).z);
    float3 _481;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _481 = _7_m11.xyz - _459;
            break;
        }
        else
        {
            _481 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _482 = dot(_481, _481);
    float _484 = rsqrt(max(_482, 9.9999999392252902907785028219223e-09f));
    float3 _485 = _481 * _484;
    float _486 = _482 * _484;
    float3 _487 = -_485;
    float3 _489 = (0.07999999821186065673828125f * _431).xxx;
    float _490 = dot(_426, _485);
    float _491 = max(0.0f, _490);
    float4 _493 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _427) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _494 = _493.x;
    float2 _504 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_494 * _494, exp2((-9.27999973297119140625f) * _491)) * _494) + _493.y)) + _493.zw;
    float4 _516 = _42.SampleLevel(_13, _447, 0.0f);
    float _517 = _516.x;
    float4 _521 = _37.Load(int3(_356, 0));
    float _522 = _521.x;
    float4 _705;
    if (_522 > 0.001000000047497451305389404296875f)
    {
        float3 _532 = reflect(_487, _426);
        float3 _533 = -_31_m0.xyz;
        float _538 = dot(_533, _532);
        float3 _540 = _532 - (_533 * _538);
        bool3 _542 = (_538 < _31_m4.z).xxx;
        float3 _550 = normalize((_533 * _31_m4.z) + ((_540 * rsqrt(max(6.103515625e-05f, dot(_540, _540)))) * _31_m4.y));
        float3 _551 = float3(_542.x ? _550.x : _532.x, _542.y ? _550.y : _532.y, _542.z ? _550.z : _532.z);
        float3 _555 = _551 + _485;
        float3 _559 = _555 * rsqrt(max(6.103515625e-05f, dot(_555, _555)));
        float _560 = dot(_426, _551);
        float _561 = clamp(dot(_551, _426), 0.0f, 1.0f);
        float _563 = clamp(dot(_426, _559), 0.0f, 1.0f);
        float _566 = dot(_485, _551);
        float _568 = clamp(_490, 0.0f, 1.0f);
        float _569 = _427 * _427;
        float _570 = _569 * _569;
        float _591 = (((_563 * _570) - _563) * _563) + 1.0f;
        float _594 = 1.0f - clamp(dot(_485, _559), 0.0f, 1.0f);
        float _595 = _594 * _594;
        float _597 = (_594 * _595) * _595;
        float _621 = 1.0f - _427;
        float _628 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_621 * (1.04997003078460693359375f + (_621 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _621))))));
        float _629 = 1.0f - _628;
        float3 _632 = _489 + ((1.0f.xxx - _489) * 0.0476190485060214996337890625f);
        float _663 = clamp(-_566, 0.0f, 1.0f);
        float _667 = (((_663 * 0.36000001430511474609375f) - _663) * _663) + 1.0f;
        float _668 = _667 * _667;
        float3 _680 = ((min(((_489 * (1.0f - _597)) + _597.xxx) * ((_570 / (_591 * _591)) * (0.5f / (((_561 * sqrt(((((-_568) * _570) + _568) * _568) + _570)) + (_568 * sqrt(((((-_561) * _570) + _561) * _561) + _570))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_632 * (((_41.SampleLevel(_13, (float2(_568, _427) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_561, _427) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _628) / _629)) * _632) / (1.0f.xxx - (_632 * _629)))) * lerp(clamp(_490 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_566, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_566 + 1.0f, 0.0f, 1.0f))) * _387;
        float3 _690 = _31_m1.xyz * (((((_428 * _387) * 1.0f) * (float((_392 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_680 * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _561)) + (((((_428 / max(0.00999999977648258209228515625f, max(max(_362.x, _362.y), _362.z)).xxx) * _370) * (clamp(0.5f - _560, 0.0f, 1.0f) * ((0.36000001430511474609375f != _668) ? (0.36000001430511474609375f / _668) : 1.0f))) + (_428 * (clamp(_560 + _378, 0.0f, 1.0f) - clamp(_561, 0.0f, 1.0f)))) * _387));
        float3 _703 = lerp(_690, _690 * _39.SampleBias(_13, float2(_522, 0.5f), _9_m16).xyz, (1.0f - _522).xxx) * lerp(_517, max(_517, _387), _378);
        _705 = float4(_703.x, _703.y, _703.z, 0.0f.xxxx.w);
    }
    else
    {
        _705 = 0.0f.xxxx;
    }
    float2 _707 = floor(_434 * 0.03125f);
    int _715 = int((_707.x + (_707.y * _29_m5)) * 8.0f);
    float _722 = floor(_466 - (_9_m3.y * _29_m11));
    float _726 = clamp(_722, 0.0f, _29_m7 - 1.0f);
    int _728 = int(_726 * 8.0f);
    float4 _734 = _38.SampleBias(_13, _439, _9_m16);
    float3 _736;
    float _739;
    _736 = 0.0f.xxx;
    _739 = 1.0f;
    float3 _737;
    float _740;
    [loop]
    for (int _741 = 0; _741 <= 7; _736 = _737, _739 = _740, _741++)
    {
        uint _759 = (_722 <= _726) ? (_24.Load(uint(_715 + _741) * 4 + 0) & _24.Load(uint((_9_m21.y + _728) + _741) * 4 + 0)) : 0u;
        uint _760 = uint(_741);
        float3 _764;
        _740 = _739;
        _764 = 0.0f.xxx;
        uint _767;
        float _762;
        float3 _765;
        [loop]
        for (uint _766 = _759; _766 != 0u; _740 = _762, _764 = _765, _766 = _767)
        {
            uint _771 = firstbitlow(_766);
            _767 = _766 ^ (1u << (_771 & 31u));
            int _777 = int((32u * _760) + _771) * 8;
            int _780 = _777 + 1;
            int _783 = _777 + 2;
            int _786 = _777 + 3;
            int _789 = _777 + 5;
            int _792 = _777 + 6;
            int _795 = _777 + 7;
            uint _799 = uint(_31_m6[_789].w);
            float _874;
            if ((_799 & 1u) == 1u)
            {
                uint _805 = asuint(_31_m6[_789].x);
                uint _812 = asuint(_31_m6[_789].y);
                uint _819 = asuint(_31_m6[_789].z);
                uint _826 = asuint(_31_m6[_792].x);
                uint _833 = asuint(_31_m6[_792].y);
                uint _840 = asuint(_31_m6[_792].z);
                float3 _859 = abs(mul(float4(_459 - _31_m6[_780].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_805).x, spvUnpackHalf2x16(_819).x, spvUnpackHalf2x16(_833).x, 0.0f), float4(spvUnpackHalf2x16(_805 >> 16u).x, spvUnpackHalf2x16(_819 >> 16u).x, spvUnpackHalf2x16(_833 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_812).x, spvUnpackHalf2x16(_826).x, spvUnpackHalf2x16(_840).x, 0.0f), float4(spvUnpackHalf2x16(_812 >> 16u).x, spvUnpackHalf2x16(_826 >> 16u).x, spvUnpackHalf2x16(_840 >> 16u).x, 0.0f))).xyz);
                float _866 = _31_m6[_795].x * 0.5f;
                float _872 = 1.0f - clamp((max(max(_859.x, _859.y), _859.z) - (_866 + 0.5f)) / (0.5f - _866), 0.0f, 1.0f);
                _874 = _872 * _872;
            }
            else
            {
                _874 = 1.0f;
            }
            bool _878 = _31_m6[_786].z > 0.5f;
            if ((false || (_874 < 0.001000000047497451305389404296875f)) || _878)
            {
                _762 = _740;
                _765 = _764;
                continue;
            }
            float _2075;
            float3 _2076;
            if (_31_m6[_777].w < 1.5f)
            {
                float3 _1386 = float3(0.100000001490116119384765625f, _427, 1.0f);
                float _1395 = (0.5f + (0.5f * _31_m6[_783].y)) - abs(_31_m6[_783].x);
                float _1396 = _31_m6[_783].y - _1395;
                float _1403 = abs(max((1.0f - abs(_1395)) - abs(_1396), 0.00048828125f));
                float3 _1407 = normalize(float3(_1395, _1396, (_31_m6[_783].x >= 0.0f) ? _1403 : (-_1403)));
                float3 _1408 = _31_m6[_780].xyz - _459;
                float _1409 = dot(_1408, _1408);
                float _1410 = rsqrt(_1409);
                float3 _1411 = _1408 * _1410;
                float _1415 = clamp(_31_m6[_795].y * _1410, 0.0f, 1.0f);
                int _1420 = int(_31_m6[_795].w);
                float3 _1421 = _1407 * _31_m6[_783].z;
                float3 _1422 = _1421 * 0.5f;
                float3 _1423 = _1408 - _1422;
                float3 _1424 = _1408 + _1422;
                bool _1427 = (uint(_31_m6[_777].w) & 1u) == 0u;
                bool _1430 = _1427 || ((_799 & 2u) != 0u);
                bool _1433 = (!_1427) && (_31_m6[_783].z > 0.0f);
                float _1452;
                float _1453;
                if (_1433)
                {
                    float _1437 = length(_1423);
                    float _1438 = length(_1424);
                    _1452 = clamp(0.5f * ((dot(_426, _1423) / _1437) + (dot(_426, _1424) / _1438)), 0.0f, 1.0f);
                    _1453 = 1.0f / ((((_1437 * _1438) + dot(_1423, _1424)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1452 = clamp(dot(_426, _1411), 0.0f, 1.0f);
                    _1453 = 1.0f;
                }
                float _1475;
                if (_31_m6[_792].w < 0.0f)
                {
                    float _1469 = _1409 * (_31_m6[_780].w * _31_m6[_780].w);
                    float _1472 = clamp(1.0f - (_1469 * _1469), 0.0f, 1.0f);
                    _1475 = lerp(1.0f / (_1409 + 1.0f), _1453, float(_1433)) * (_1472 * _1472);
                }
                else
                {
                    float3 _1458 = _1408 * _31_m6[_780].w;
                    _1475 = _1453 * pow(1.0f - clamp(dot(_1458, _1458), 0.0f, 1.0f), _31_m6[_792].w);
                }
                float _1481 = clamp((dot(_1411, -_1407) - _31_m6[_783].z) * _31_m6[_783].w, 0.0f, 1.0f);
                float _1485 = _1475 * lerp(1.0f, _1481 * _1481, float(_1427));
                float _1585;
                if ((!_1433) && (_1420 >= 0))
                {
                    uint _1491 = uint(_1420);
                    float2 _1578;
                    [branch]
                    if (_1427)
                    {
                        float4 _1568 = mul(_45_m1[_1491], _463);
                        _1578 = _45_m0[_1491].xy + (clamp(_1568.xy / _1568.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_1491].zw);
                    }
                    else
                    {
                        float3 _1505 = mul(float4(-_1408, 0.0f), _45_m1[_1491]).xyz;
                        float3 _342 = _1505;
                        float3 _341 = _1505;
                        float3 _340 = abs(_1505);
                        uint _1514 = uint(int(_340.y > _340.x));
                        uint _1520 = (_340.z > _340[_1514]) ? 2u : _1514;
                        uint _1526 = (_1520 * 2u) + uint(_341[_1520] < 0.0f);
                        float _1530 = abs(_342[_1526 / 2u]);
                        float _1550 = 0.5f - (0.000244140625f / _45_m0[_1491].w);
                        _1578 = _45_m0[_1491].xy + (clamp(float2((float(_1526) + ((((_342[uint(_313[_1526].x)] * _314[_1526].x) / _1530) * _1550) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_342[uint(_313[_1526].y)] * _314[_1526].y) / _1530) * _1550)), 0.0f.xx, 1.0f.xx) * _45_m0[_1491].zw);
                    }
                    _1585 = _1485 * _43.SampleLevel(_13, _1578, 0.0f).x;
                }
                else
                {
                    _1585 = _1485;
                }
                bool _1586 = _1585 > 0.0f;
                float _1894;
                if (_1586)
                {
                    int _1638;
                    if (_1430)
                    {
                        _1638 = int(_31_m6[_786].x);
                    }
                    else
                    {
                        uint _1593 = asuint(_31_m6[_783].w);
                        uint _1595 = asuint(_31_m6[_786].x);
                        float3 _1596 = _459 - _31_m6[_780].xyz;
                        float3 _1597 = abs(_1596);
                        float _1598 = _1597.x;
                        float _1599 = _1597.y;
                        float _1601 = _1597.z;
                        int _1633;
                        if ((_1598 > _1599) && (_1598 > _1601))
                        {
                            _1633 = int((_1596.x > 0.0f) ? (_1593 >> 24u) : ((_1593 >> 16u) & 255u));
                        }
                        else
                        {
                            int _1625;
                            if (_1599 > _1601)
                            {
                                _1625 = int((_1596.y > 0.0f) ? ((_1593 >> 8u) & 255u) : (_1593 & 255u));
                            }
                            else
                            {
                                _1625 = int((_1596.z > 0.0f) ? ((_1595 >> 8u) & 255u) : (_1595 & 255u));
                            }
                            _1633 = _1625;
                        }
                        _1638 = (_1633 < 80) ? _1633 : (-1);
                    }
                    float _1892;
                    do
                    {
                        if (_35_m2[_1638].y > 0u)
                        {
                            uint _1656 = uint(_1638);
                            float4 _339 = _734;
                            float _1667;
                            do
                            {
                                if (_35_m2[_1656].y == 0u)
                                {
                                    _1667 = 1.0f;
                                    break;
                                }
                                _1667 = _339[_35_m2[_1656].y - 1u];
                                break;
                            } while(false);
                            _1892 = _1667;
                            break;
                        }
                        float4 _1674 = mul(_33_m10[_1638], float4((_459 - ((-_1411) * _33_m11[_1638].x)) + (_426 * (_33_m11[_1638].y * 5.0f)), 1.0f));
                        float _1675 = _1674.w;
                        float3 _1678 = _1674.xyz / _1675.xxx;
                        float2 _1679 = _1678.xy;
                        float3 _1687 = _1678.xyz;
                        bool3 _1688 = bool3(_1687.x <= 0.0f.xxx.x, _1687.y <= 0.0f.xxx.y, _1687.z <= 0.0f.xxx.z);
                        bool3 _1689 = bool3(_1687.x >= 1.0f.xxx.x, _1687.y >= 1.0f.xxx.y, _1687.z >= 1.0f.xxx.z);
                        float _1692 = _1678.z;
                        float2 _1703 = ((_1679 * (_33_m12[_1638].zw - _33_m12[_1638].xy)) + _33_m12[_1638].xy).xy * _33_m13.zw;
                        float2 _1705 = floor(_1703 + 0.5f.xx);
                        float2 _1706 = _1703 - _1705;
                        float _1707 = _1706.x;
                        float _1708 = _1707 + 0.5f;
                        float _1709 = _1708 * _1708;
                        float _1712 = 1.0f - _1707;
                        float _1713 = min(_1707, 0.0f);
                        float _1716 = _1707 + 1.0f;
                        float _1717 = max(_1707, 0.0f);
                        float _1728 = _1706.y;
                        float _1729 = _1728 + 0.5f;
                        float _1730 = _1729 * _1729;
                        float _1733 = 1.0f - _1728;
                        float _1734 = min(_1728, 0.0f);
                        float _1737 = _1728 + 1.0f;
                        float _1738 = max(_1728, 0.0f);
                        float3 _1750 = float3(0.1599999964237213134765625f * _1712, 0.1599999964237213134765625f * ((_1716 - (_1717 * _1717)) + 1.0f), _1709 * 0.07999999821186065673828125f);
                        float3 _1751 = float3(0.1599999964237213134765625f * ((_1709 * 0.5f) - _1707), 0.1599999964237213134765625f * ((_1712 - (_1713 * _1713)) + 1.0f), 0.1599999964237213134765625f * _1716) + _1750;
                        float3 _1753 = float3(0.1599999964237213134765625f * _1733, 0.1599999964237213134765625f * ((_1737 - (_1738 * _1738)) + 1.0f), _1730 * 0.07999999821186065673828125f);
                        float3 _1754 = float3(0.1599999964237213134765625f * ((_1730 * 0.5f) - _1728), 0.1599999964237213134765625f * ((_1733 - (_1734 * _1734)) + 1.0f), 0.1599999964237213134765625f * _1737) + _1753;
                        float3 _1760 = ((_1750 / _1751) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                        float3 _1762 = ((_1753 / _1754) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                        float2 _1764 = _1705 * _33_m13.xy;
                        float _1765 = _1760.x;
                        float _1766 = _1762.x;
                        float2 _1768 = _1764 + float2(_1765, _1766);
                        float _1769 = _1760.y;
                        float2 _1771 = _1764 + float2(_1769, _1766);
                        float _1772 = _1760.z;
                        float2 _1774 = _1764 + float2(_1772, _1766);
                        float _1775 = _1762.y;
                        float2 _1777 = _1764 + float2(_1765, _1775);
                        float2 _1779 = _1764 + float2(_1769, _1775);
                        float2 _1781 = _1764 + float2(_1772, _1775);
                        float _1782 = _1762.z;
                        float2 _1784 = _1764 + float2(_1765, _1782);
                        float2 _1786 = _1764 + float2(_1769, _1782);
                        float2 _1788 = _1764 + float2(_1772, _1782);
                        float _1789 = _1751.x;
                        float _1790 = _1754.x;
                        float _1792 = _1751.y;
                        float _1794 = _1751.z;
                        float _1796 = _1754.y;
                        float _1800 = _1754.z;
                        float _1866 = ((((((((_1789 * _1790) * _36.SampleCmpLevelZero(_16, float3(_1768, _335).xy, _1692)) + ((_1792 * _1790) * _36.SampleCmpLevelZero(_16, float3(_1771, _335).xy, _1692))) + ((_1794 * _1790) * _36.SampleCmpLevelZero(_16, float3(_1774, _335).xy, _1692))) + ((_1789 * _1796) * _36.SampleCmpLevelZero(_16, float3(_1777, _335).xy, _1692))) + ((_1792 * _1796) * _36.SampleCmpLevelZero(_16, float3(_1779, _335).xy, _1692))) + ((_1794 * _1796) * _36.SampleCmpLevelZero(_16, float3(_1781, _335).xy, _1692))) + ((_1789 * _1800) * _36.SampleCmpLevelZero(_16, float3(_1784, _335).xy, _1692))) + ((_1792 * _1800) * _36.SampleCmpLevelZero(_16, float3(_1786, _335).xy, _1692));
                        float2 _1879 = min(_1679, 1.0f.xx - _1679);
                        _1892 = lerp(1.0f, (any(bool3(_1688.x || _1689.x, _1688.y || _1689.y, _1688.z || _1689.z)) || ((asuint(_1692) & 2147483647u) > 2139095040u)) ? 1.0f : (_1866 + ((_1794 * _1800) * _36.SampleCmpLevelZero(_16, float3(_1788, _335).xy, _1692))), _1430 ? min(_33_m11[_1638].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1638].z - _1675) * 0.25f, min(_1879.x, _1879.y)))) : _33_m11[_1638].w);
                        break;
                    } while(false);
                    _1894 = (_1638 >= 0) ? _1892 : 1.0f;
                }
                else
                {
                    _1894 = 1.0f;
                }
                float3 _1918;
                float3 _1919;
                if (_1433)
                {
                    float3 _1897 = _1386 * _1386;
                    float3 _1898 = reflect(_487, _426);
                    float _1907 = dot(_1898, _1421);
                    _1918 = _1897 / clamp(_1897 + (0.5f * clamp(_31_m6[_783].z * _1410, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _1919 = normalize(_1423 + (_1421 * clamp(dot(_1423, (_1898 * _1907) - _1421) / ((_31_m6[_783].z * _31_m6[_783].z) - (_1907 * _1907)), 0.0f, 1.0f)));
                }
                else
                {
                    _1918 = 1.0f.xxx;
                    _1919 = _1411;
                }
                float3 _1920 = _1919 + _485;
                float3 _1924 = _1920 * rsqrt(max(6.103515625e-05f, dot(_1920, _1920)));
                float3 _2074;
                if (_1586)
                {
                    float _1927 = dot(_426, _1919);
                    float _1928 = clamp(_1452, 0.0f, 1.0f);
                    float _1930 = clamp(dot(_426, _1924), 0.0f, 1.0f);
                    float _1932 = clamp(dot(_485, _1924), 0.0f, 1.0f);
                    float _1933 = dot(_485, _1919);
                    float _1935 = clamp(_490, 0.0f, 1.0f);
                    float _1936 = _427 * _427;
                    float _1946;
                    if (_1415 > 0.0f)
                    {
                        _1946 = clamp(_1936 + ((_1415 * _1415) / ((_1932 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1946 = _1936;
                    }
                    float _1947 = _1946 * _1946;
                    float _1968 = (((_1930 * _1947) - _1930) * _1930) + 1.0f;
                    float _1973 = 1.0f - _1932;
                    float _1974 = _1973 * _1973;
                    float _1976 = (_1973 * _1974) * _1974;
                    float _2000 = 1.0f - _427;
                    float _2007 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2000 * (1.04997003078460693359375f + (_2000 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2000))))));
                    float _2008 = 1.0f - _2007;
                    float3 _2011 = _489 + ((1.0f.xxx - _489) * 0.0476190485060214996337890625f);
                    float _2042 = clamp(-_1933, 0.0f, 1.0f);
                    float _2046 = (((_2042 * 0.36000001430511474609375f) - _2042) * _2042) + 1.0f;
                    float _2047 = _2046 * _2046;
                    float3 _2059 = ((min(((_489 * (1.0f - _1976)) + _1976.xxx) * (((_1947 / (_1968 * _1968)) * _1918.y) * (0.5f / (((_1928 * sqrt(((((-_1935) * _1947) + _1935) * _1935) + _1947)) + (_1935 * sqrt(((((-_1928) * _1947) + _1928) * _1928) + _1947))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2011 * (((_41.SampleLevel(_13, (float2(_1935, _427) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1928, _427) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2007) / _2008)) * _2011) / (1.0f.xxx - (_2011 * _2008)))) * lerp(clamp(_490 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_1933, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_1933 + 1.0f, 0.0f, 1.0f))) * _387;
                    _2074 = (((clamp(_2059 * _31_m6[_795].z, 0.0f.xxx, 1000.0f.xxx) * _1452) + (((((_428 / max(0.00999999977648258209228515625f, max(max(_362.x, _362.y), _362.z)).xxx) * _370) * (clamp(0.5f - _1927, 0.0f, 1.0f) * ((0.36000001430511474609375f != _2047) ? (0.36000001430511474609375f / _2047) : 1.0f))) + (_428 * (clamp(_1927 + _378, 0.0f, 1.0f) - clamp(_1928, 0.0f, 1.0f)))) * _387)) + (((_428 * _387) * _1918.z) * _1452)) * (((_31_m6[_777].xyz * _1585) * _1894) * _874);
                }
                else
                {
                    _2074 = 0.0f.xxx;
                }
                _2075 = _740;
                _2076 = _2074;
            }
            else
            {
                float _1384;
                do
                {
                    if (_878)
                    {
                        _1384 = 1.0f;
                        break;
                    }
                    float _898 = (0.5f + (0.5f * _31_m6[_783].y)) - abs(_31_m6[_783].x);
                    float _899 = _31_m6[_783].y - _898;
                    float _906 = abs(max((1.0f - abs(_898)) - abs(_899), 0.00048828125f));
                    float3 _910 = normalize(float3(_898, _899, (_31_m6[_783].x >= 0.0f) ? _906 : (-_906)));
                    float3 _911 = _31_m6[_780].xyz - _459;
                    float _912 = dot(_911, _911);
                    float3 _914 = _911 * rsqrt(_912);
                    int _917 = int(_31_m6[_795].w);
                    float3 _919 = (_910 * _31_m6[_783].z) * 0.5f;
                    float3 _920 = _911 - _919;
                    float3 _921 = _911 + _919;
                    bool _924 = (uint(_31_m6[_777].w) & 1u) == 0u;
                    bool _927 = _924 || ((_799 & 2u) != 0u);
                    bool _930 = (!_924) && (_31_m6[_783].z > 0.0f);
                    float _942;
                    if (_930)
                    {
                        _942 = 1.0f / ((((length(_920) * length(_921)) + dot(_920, _921)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _942 = 1.0f;
                    }
                    float _964;
                    if (_31_m6[_792].w < 0.0f)
                    {
                        float _958 = _912 * (_31_m6[_780].w * _31_m6[_780].w);
                        float _961 = clamp(1.0f - (_958 * _958), 0.0f, 1.0f);
                        _964 = lerp(1.0f / (_912 + 1.0f), _942, float(_930)) * (_961 * _961);
                    }
                    else
                    {
                        float3 _947 = _911 * _31_m6[_780].w;
                        _964 = _942 * pow(1.0f - clamp(dot(_947, _947), 0.0f, 1.0f), _31_m6[_792].w);
                    }
                    float _970 = clamp((dot(_914, -_910) - _31_m6[_783].z) * _31_m6[_783].w, 0.0f, 1.0f);
                    float _974 = _964 * lerp(1.0f, _970 * _970, float(_924));
                    float _1074;
                    if ((!_930) && (_917 >= 0))
                    {
                        uint _980 = uint(_917);
                        float2 _1067;
                        [branch]
                        if (_924)
                        {
                            float4 _1057 = mul(_45_m1[_980], _463);
                            _1067 = _45_m0[_980].xy + (clamp(_1057.xy / _1057.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_980].zw);
                        }
                        else
                        {
                            float3 _994 = mul(float4(-_911, 0.0f), _45_m1[_980]).xyz;
                            float3 _346 = _994;
                            float3 _345 = _994;
                            float3 _344 = abs(_994);
                            uint _1003 = uint(int(_344.y > _344.x));
                            uint _1009 = (_344.z > _344[_1003]) ? 2u : _1003;
                            uint _1015 = (_1009 * 2u) + uint(_345[_1009] < 0.0f);
                            float _1019 = abs(_346[_1015 / 2u]);
                            float _1039 = 0.5f - (0.000244140625f / _45_m0[_980].w);
                            _1067 = _45_m0[_980].xy + (clamp(float2((float(_1015) + ((((_346[uint(_313[_1015].x)] * _314[_1015].x) / _1019) * _1039) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_346[uint(_313[_1015].y)] * _314[_1015].y) / _1019) * _1039)), 0.0f.xx, 1.0f.xx) * _45_m0[_980].zw);
                        }
                        _1074 = _974 * _43.SampleLevel(_13, _1067, 0.0f).x;
                    }
                    else
                    {
                        _1074 = _974;
                    }
                    float _1383;
                    if (_1074 > 0.0f)
                    {
                        int _1127;
                        if (_927)
                        {
                            _1127 = int(_31_m6[_786].x);
                        }
                        else
                        {
                            uint _1082 = asuint(_31_m6[_783].w);
                            uint _1084 = asuint(_31_m6[_786].x);
                            float3 _1085 = _459 - _31_m6[_780].xyz;
                            float3 _1086 = abs(_1085);
                            float _1087 = _1086.x;
                            float _1088 = _1086.y;
                            float _1090 = _1086.z;
                            int _1122;
                            if ((_1087 > _1088) && (_1087 > _1090))
                            {
                                _1122 = int((_1085.x > 0.0f) ? (_1082 >> 24u) : ((_1082 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1114;
                                if (_1088 > _1090)
                                {
                                    _1114 = int((_1085.y > 0.0f) ? ((_1082 >> 8u) & 255u) : (_1082 & 255u));
                                }
                                else
                                {
                                    _1114 = int((_1085.z > 0.0f) ? ((_1084 >> 8u) & 255u) : (_1084 & 255u));
                                }
                                _1122 = _1114;
                            }
                            _1127 = (_1122 < 80) ? _1122 : (-1);
                        }
                        float _1381;
                        do
                        {
                            if (_35_m2[_1127].y > 0u)
                            {
                                uint _1145 = uint(_1127);
                                float4 _343 = _734;
                                float _1156;
                                do
                                {
                                    if (_35_m2[_1145].y == 0u)
                                    {
                                        _1156 = 1.0f;
                                        break;
                                    }
                                    _1156 = _343[_35_m2[_1145].y - 1u];
                                    break;
                                } while(false);
                                _1381 = _1156;
                                break;
                            }
                            float4 _1163 = mul(_33_m10[_1127], float4((_459 - ((-_914) * _33_m11[_1127].x)) + (_426 * (_33_m11[_1127].y * 5.0f)), 1.0f));
                            float _1164 = _1163.w;
                            float3 _1167 = _1163.xyz / _1164.xxx;
                            float2 _1168 = _1167.xy;
                            float3 _1176 = _1167.xyz;
                            bool3 _1177 = bool3(_1176.x <= 0.0f.xxx.x, _1176.y <= 0.0f.xxx.y, _1176.z <= 0.0f.xxx.z);
                            bool3 _1178 = bool3(_1176.x >= 1.0f.xxx.x, _1176.y >= 1.0f.xxx.y, _1176.z >= 1.0f.xxx.z);
                            float _1181 = _1167.z;
                            float2 _1192 = ((_1168 * (_33_m12[_1127].zw - _33_m12[_1127].xy)) + _33_m12[_1127].xy).xy * _33_m13.zw;
                            float2 _1194 = floor(_1192 + 0.5f.xx);
                            float2 _1195 = _1192 - _1194;
                            float _1196 = _1195.x;
                            float _1197 = _1196 + 0.5f;
                            float _1198 = _1197 * _1197;
                            float _1201 = 1.0f - _1196;
                            float _1202 = min(_1196, 0.0f);
                            float _1205 = _1196 + 1.0f;
                            float _1206 = max(_1196, 0.0f);
                            float _1217 = _1195.y;
                            float _1218 = _1217 + 0.5f;
                            float _1219 = _1218 * _1218;
                            float _1222 = 1.0f - _1217;
                            float _1223 = min(_1217, 0.0f);
                            float _1226 = _1217 + 1.0f;
                            float _1227 = max(_1217, 0.0f);
                            float3 _1239 = float3(0.1599999964237213134765625f * _1201, 0.1599999964237213134765625f * ((_1205 - (_1206 * _1206)) + 1.0f), _1198 * 0.07999999821186065673828125f);
                            float3 _1240 = float3(0.1599999964237213134765625f * ((_1198 * 0.5f) - _1196), 0.1599999964237213134765625f * ((_1201 - (_1202 * _1202)) + 1.0f), 0.1599999964237213134765625f * _1205) + _1239;
                            float3 _1242 = float3(0.1599999964237213134765625f * _1222, 0.1599999964237213134765625f * ((_1226 - (_1227 * _1227)) + 1.0f), _1219 * 0.07999999821186065673828125f);
                            float3 _1243 = float3(0.1599999964237213134765625f * ((_1219 * 0.5f) - _1217), 0.1599999964237213134765625f * ((_1222 - (_1223 * _1223)) + 1.0f), 0.1599999964237213134765625f * _1226) + _1242;
                            float3 _1249 = ((_1239 / _1240) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                            float3 _1251 = ((_1242 / _1243) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                            float2 _1253 = _1194 * _33_m13.xy;
                            float _1254 = _1249.x;
                            float _1255 = _1251.x;
                            float2 _1257 = _1253 + float2(_1254, _1255);
                            float _1258 = _1249.y;
                            float2 _1260 = _1253 + float2(_1258, _1255);
                            float _1261 = _1249.z;
                            float2 _1263 = _1253 + float2(_1261, _1255);
                            float _1264 = _1251.y;
                            float2 _1266 = _1253 + float2(_1254, _1264);
                            float2 _1268 = _1253 + float2(_1258, _1264);
                            float2 _1270 = _1253 + float2(_1261, _1264);
                            float _1271 = _1251.z;
                            float2 _1273 = _1253 + float2(_1254, _1271);
                            float2 _1275 = _1253 + float2(_1258, _1271);
                            float2 _1277 = _1253 + float2(_1261, _1271);
                            float _1278 = _1240.x;
                            float _1279 = _1243.x;
                            float _1281 = _1240.y;
                            float _1283 = _1240.z;
                            float _1285 = _1243.y;
                            float _1289 = _1243.z;
                            float _1355 = ((((((((_1278 * _1279) * _36.SampleCmpLevelZero(_16, float3(_1257, _335).xy, _1181)) + ((_1281 * _1279) * _36.SampleCmpLevelZero(_16, float3(_1260, _335).xy, _1181))) + ((_1283 * _1279) * _36.SampleCmpLevelZero(_16, float3(_1263, _335).xy, _1181))) + ((_1278 * _1285) * _36.SampleCmpLevelZero(_16, float3(_1266, _335).xy, _1181))) + ((_1281 * _1285) * _36.SampleCmpLevelZero(_16, float3(_1268, _335).xy, _1181))) + ((_1283 * _1285) * _36.SampleCmpLevelZero(_16, float3(_1270, _335).xy, _1181))) + ((_1278 * _1289) * _36.SampleCmpLevelZero(_16, float3(_1273, _335).xy, _1181))) + ((_1281 * _1289) * _36.SampleCmpLevelZero(_16, float3(_1275, _335).xy, _1181));
                            float2 _1368 = min(_1168, 1.0f.xx - _1168);
                            _1381 = lerp(1.0f, (any(bool3(_1177.x || _1178.x, _1177.y || _1178.y, _1177.z || _1178.z)) || ((asuint(_1181) & 2147483647u) > 2139095040u)) ? 1.0f : (_1355 + ((_1283 * _1289) * _36.SampleCmpLevelZero(_16, float3(_1277, _335).xy, _1181))), _927 ? min(_33_m11[_1127].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1127].z - _1164) * 0.25f, min(_1368.x, _1368.y)))) : _33_m11[_1127].w);
                            break;
                        } while(false);
                        _1383 = (_1127 >= 0) ? _1381 : 1.0f;
                    }
                    else
                    {
                        _1383 = 1.0f;
                    }
                    _1384 = _1383;
                    break;
                } while(false);
                _2075 = _740 * _1384;
                _2076 = 0.0f.xxx;
            }
            _762 = _2075;
            _765 = _764 + _2076;
        }
        _737 = _736 + _764;
    }
    float3 _2080 = _705.xyz + (_736 * _739);
    float3 _2082 = _429.xxx;
    float3 _2117;
    float3 _2118;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2093 = min(_21.SampleBias(_12, _4, _9_m16).x, _429);
        _2117 = clamp((pow(abs(_491 + _2093), exp2(((-16.0f) * _427) - 1.0f)) - 1.0f) + _2093, 0.0f, 1.0f).xxx;
        _2118 = max(_2093.xxx, ((((((_428 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2093) + ((_428 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2093) + ((_428 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2093);
    }
    else
    {
        _2117 = _2082;
        _2118 = _2082;
    }
    _2080 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2117 : 1.0f.xxx;
    float3 _2128 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2137 = _459 - (_9_m105.xyz + (_2128 * (-_9_m107.w)));
    float _2151 = max(clamp((max(abs(_2137.x), abs(_2137.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2137.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2453;
    float4 _2454;
    float4 _2455;
    float _2456;
    float _2457;
    if ((_9_m105.w != 0.0f) && (_2151 < 1.0f))
    {
        float3 _2164 = _459 - (_9_m105.xyz + (_2128 * (-_9_m107.y)));
        float _2178 = max(clamp((max(abs(_2164.x), abs(_2164.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2164.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2254;
        float4 _2255;
        float4 _2256;
        float4 _2257;
        if (_2178 < 1.0f)
        {
            float3 _2187 = ((_459 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2189 = _2187 - floor(_2187);
            float4 _2193 = _53.SampleLevel(_14, _2189, 0.0f);
            float _2194 = 1.0f - _2178;
            float _2198 = _9_m106.y * 0.5f;
            float _2203 = _2189.x;
            float _2204 = clamp(_2189.y, _2198, 1.0f - _2198) * 0.3333333432674407958984375f;
            float _2205 = _2189.z;
            float4 _2208 = _54.SampleLevel(_13, float3(_2203, _2204, _2205), 0.0f);
            float _2224 = _2193.x;
            float _2234 = _2193.y;
            float _2244 = _2193.z;
            _2254 = _2151 + (_2208.w * _2194);
            _2255 = float4(((_54.SampleLevel(_13, float3(_2203, _2204 + 0.666666686534881591796875f, _2205), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2244, _2244) * _2194;
            _2256 = float4(((_54.SampleLevel(_13, float3(_2203, _2204 + 0.3333333432674407958984375f, _2205), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2234, _2234) * _2194;
            _2257 = float4(((_2208.xyz * 4.0f) - 2.0f.xxx) * _2224, _2224) * _2194;
        }
        else
        {
            _2254 = _2151;
            _2255 = 0.0f.xxxx;
            _2256 = 0.0f.xxxx;
            _2257 = 0.0f.xxxx;
        }
        float3 _2263 = _459 - (_9_m105.xyz + (_2128 * (-_9_m107.z)));
        float _2277 = max(clamp((max(abs(_2263.x), abs(_2263.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2263.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2357;
        float4 _2358;
        float4 _2359;
        float4 _2360;
        if (_2277 < 1.0f)
        {
            float3 _2286 = ((_459 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2288 = _2286 - floor(_2286);
            float4 _2292 = _55.SampleLevel(_14, _2288, 0.0f);
            float _2294 = _2178 * (1.0f - _2277);
            float _2298 = _9_m106.y * 0.5f;
            float _2303 = _2288.x;
            float _2304 = clamp(_2288.y, _2298, 1.0f - _2298) * 0.3333333432674407958984375f;
            float _2305 = _2288.z;
            float4 _2308 = _56.SampleLevel(_13, float3(_2303, _2304, _2305), 0.0f);
            float _2324 = _2292.x;
            float _2335 = _2292.y;
            float _2346 = _2292.z;
            _2357 = _2254 + (_2308.w * _2294);
            _2358 = _2255 + (float4(((_56.SampleLevel(_13, float3(_2303, _2304 + 0.666666686534881591796875f, _2305), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2346, _2346) * _2294);
            _2359 = _2256 + (float4(((_56.SampleLevel(_13, float3(_2303, _2304 + 0.3333333432674407958984375f, _2305), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2335, _2335) * _2294);
            _2360 = _2257 + (float4(((_2308.xyz * 4.0f) - 2.0f.xxx) * _2324, _2324) * _2294);
        }
        else
        {
            _2357 = _2254;
            _2358 = _2255;
            _2359 = _2256;
            _2360 = _2257;
        }
        float4 _2443;
        float4 _2444;
        float4 _2445;
        float _2446;
        if (_2277 > 0.0f)
        {
            float3 _2369 = ((_459 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2372 = _9_m106.xyz * 0.5f;
            float3 _2374 = clamp(_2369 - floor(_2369), _2372, 1.0f.xxx - _2372);
            float4 _2378 = _57.SampleLevel(_14, _2374, 0.0f);
            float _2380 = _2277 * (1.0f - _2151);
            float _2384 = _9_m106.y * 0.5f;
            float _2389 = _2374.x;
            float _2390 = clamp(_2374.y, _2384, 1.0f - _2384) * 0.3333333432674407958984375f;
            float _2391 = _2374.z;
            float4 _2394 = _58.SampleLevel(_13, float3(_2389, _2390, _2391), 0.0f);
            float _2410 = _2378.x;
            float _2421 = _2378.y;
            float _2432 = _2378.z;
            _2443 = _2358 + (float4(((_58.SampleLevel(_13, float3(_2389, _2390 + 0.666666686534881591796875f, _2391), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2432, _2432) * _2380);
            _2444 = _2359 + (float4(((_58.SampleLevel(_13, float3(_2389, _2390 + 0.3333333432674407958984375f, _2391), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2421, _2421) * _2380);
            _2445 = _2360 + (float4(((_2394.xyz * 4.0f) - 2.0f.xxx) * _2410, _2410) * _2380);
            _2446 = _2357 + (_2394.w * _2380);
        }
        else
        {
            _2443 = _2358;
            _2444 = _2359;
            _2445 = _2360;
            _2446 = _2357;
        }
        float _2449 = clamp((_2446 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _2453 = _2443;
        _2454 = _2444;
        _2455 = _2445;
        _2456 = _2449 - _2151;
        _2457 = (_2449 + _2151) * 0.5f;
    }
    else
    {
        _2453 = 0.0f.xxxx;
        _2454 = 0.0f.xxxx;
        _2455 = 0.0f.xxxx;
        _2456 = 0.0f;
        _2457 = 1.0f;
    }
    float4 _2477 = _2455 + float4(_9_m108.x * _2457, (_9_m108.y * _2457) + ((_9_m108.w * _2456) * 0.5f), _9_m108.z * _2457, (_9_m108.w * _2457) + ((_9_m108.y * _2456) * 0.375f));
    float4 _2497 = _2454 + float4(_9_m109.x * _2457, (_9_m109.y * _2457) + ((_9_m109.w * _2456) * 0.5f), _9_m109.z * _2457, (_9_m109.w * _2457) + ((_9_m109.y * _2456) * 0.375f));
    float4 _2517 = _2453 + float4(_9_m110.x * _2457, (_9_m110.y * _2457) + ((_9_m110.w * _2456) * 0.5f), _9_m110.z * _2457, (_9_m110.w * _2457) + ((_9_m110.y * _2456) * 0.375f));
    float4 _2675;
    float4 _2676;
    float4 _2677;
    [branch]
    if (all(bool2(_447.x >= 0.0f.xx.x, _447.y >= 0.0f.xx.y)))
    {
        float4 _2525 = _52.SampleLevel(_13, _447, 0.0f);
        float4 _2526 = abs(_2525);
        float4 _2672;
        float4 _2673;
        float4 _2674;
        [branch]
        if (any(bool4(_2526.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2526.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2526.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2526.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _2532 = length(_2525.yzw);
            uint _2534;
            float _2537;
            _2534 = 0u;
            _2537 = 1.0f;
            for (float _2539 = _2532; _2539 > 4.599999904632568359375f; )
            {
                _2534++;
                _2537 *= 0.5f;
                _2539 *= 0.5f;
                continue;
            }
            float4 _2543 = _2525 * _2537;
            float4 _2548 = float4(0.0f, _2543.yzw);
            float2 _2570 = (_51.SampleLevel(_13, float2(((((length(_2548) * _50_m3.x) + _50_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _50_m2.xy) + _50_m2.zw;
            float4 _2584;
            _2584 = float4(_2570.x * 3.5449078083038330078125f, _2548.yzw * _2570.y) * exp(_2543.x * 0.282094776630401611328125f);
            for (uint _2587 = 0u; _2587 < _2534; )
            {
                _2584 = mul(float4x4(_2584, float4(_2584.yx, 0.0f, 0.0f), float4(_2584.z, 0.0f, _2584.x, 0.0f), float4(_2584.w, 0.0f, 0.0f, _2584.x)) * 0.282094776630401611328125f, _2584);
                _2587++;
                continue;
            }
            float4x4 _2608 = float4x4(_2584, float4(_2584.yx, 0.0f, 0.0f), float4(_2584.z, 0.0f, _2584.x, 0.0f), float4(_2584.w, 0.0f, 0.0f, _2584.x)) * 0.282094776630401611328125f;
            float4 _2618 = mul(_2608, float4(_2477.w * 1.1283791065216064453125f, _2477.y * (-0.977204978466033935546875f), _2477.z * 0.977204978466033935546875f, _2477.x * (-0.977204978466033935546875f)));
            float4 _2638 = mul(_2608, float4(_2497.w * 1.1283791065216064453125f, _2497.y * (-0.977204978466033935546875f), _2497.z * 0.977204978466033935546875f, _2497.x * (-0.977204978466033935546875f)));
            float4 _2658 = mul(_2608, float4(_2517.w * 1.1283791065216064453125f, _2517.y * (-0.977204978466033935546875f), _2517.z * 0.977204978466033935546875f, _2517.x * (-0.977204978466033935546875f)));
            _2672 = float4(_2618.x * 0.886226952075958251953125f, _2618.w * (-1.02332675457000732421875f), _2618.y * (-1.02332675457000732421875f), _2618.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2673 = float4(_2638.x * 0.886226952075958251953125f, _2638.w * (-1.02332675457000732421875f), _2638.y * (-1.02332675457000732421875f), _2638.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2674 = float4(_2658.x * 0.886226952075958251953125f, _2658.w * (-1.02332675457000732421875f), _2658.y * (-1.02332675457000732421875f), _2658.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _2672 = _2477;
            _2673 = _2497;
            _2674 = _2517;
        }
        _2675 = _2672;
        _2676 = _2673;
        _2677 = _2674;
    }
    else
    {
        _2675 = _2477;
        _2676 = _2497;
        _2677 = _2517;
    }
    float4 _2681 = float4(_426, 1.0f);
    float3 _2686 = max(float3(dot(_2675, _2681), dot(_2676, _2681), dot(_2677, _2681)), 0.0f.xxx);
    float4 _2691 = float4(-_426, 1.0f);
    float3 _2708 = reflect(_487, _426);
    float _2716 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_427, 0.001000000047497451305389404296875f))));
    float2 _2720 = floor(_434 * _27_m0.w);
    float _2737 = floor(_466 - _27_m2.y);
    float _2741 = clamp(_2737, 0.0f, _27_m1.x - 1.0f);
    uint _2751 = (_2737 <= _2741) ? (_24.Load(uint(_9_m21.z + int(_2720.x + (_2720.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_2741)) * 4 + 0)) : 0u;
    float _2754 = dot(float4(_2686, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2756;
    float _2759;
    uint _2761;
    _2756 = 0.0f.xxx;
    _2759 = 1.0f;
    _2761 = _2751;
    uint _2762;
    float3 _2757;
    float _2760;
    bool _2764;
    [loop]
    for (;;)
    {
        _2764 = _2759 > 0.00999999977648258209228515625f;
        if ((_2761 != 0u) && _2764)
        {
            uint _2768 = firstbitlow(_2761);
            _2762 = _2761 ^ (1u << (_2768 & 31u));
            float3 _2788 = float3(dot(_27_m4[_2768]._m2, _463), dot(_27_m4[_2768]._m3, _463), dot(_27_m4[_2768]._m4, _463));
            float3 _2789 = abs(_2788);
            if (all(bool3(_2789.x <= _27_m4[_2768]._m1.xyz.x, _2789.y <= _27_m4[_2768]._m1.xyz.y, _2789.z <= _27_m4[_2768]._m1.xyz.z)))
            {
                float3 _2798 = _27_m4[_2768]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2800 = _2789 * 0.100000001490116119384765625f;
                float3 _2801 = _2800 * _2800;
                float3 _2804 = (_27_m4[_2768]._m1.xyz - _2789) * _27_m4[_2768]._m5.xyz;
                float3 _2852;
                [branch]
                if (_27_m4[_2768]._m6.x == 1.0f)
                {
                    float3 _2837 = float3(dot(_27_m4[_2768]._m2.xyz, _2708), dot(_27_m4[_2768]._m3.xyz, _2708), dot(_27_m4[_2768]._m4.xyz, _2708));
                    float3 _2839 = (_27_m4[_2768]._m1.xyz - _2788) / _2837;
                    float3 _2842 = ((-_27_m4[_2768]._m1.xyz) - _2788) / _2837;
                    bool3 _2843 = bool3(_2837.x > 0.0f.xxx.x, _2837.y > 0.0f.xxx.y, _2837.z > 0.0f.xxx.z);
                    float3 _2844 = float3(_2843.x ? _2839.x : _2842.x, _2843.y ? _2839.y : _2842.y, _2843.z ? _2839.z : _2842.z);
                    _2852 = _2788 + (_2837 * min(min(_2844.x, _2844.y), _2844.z));
                }
                else
                {
                    _2852 = _2708;
                }
                float3 _2853 = normalize(_2852);
                float3 _2856 = float3(int3(sign(_2853)));
                float3 _2859 = _2853 / dot(_2853, _2856).xxx;
                float3 _2873;
                if (_2859.z < 0.0f)
                {
                    float3 _2864 = abs(_2859);
                    float2 _2871 = _2856.xy * float2(1.0f - _2864.y, 1.0f - _2864.x);
                    _2873 = float3(_2871.x, _2871.y, _2859.z);
                }
                else
                {
                    _2873 = _2859;
                }
                float _2894 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2768]._m0, _2681)));
                float _2907 = clamp((min(_2804.x, min(_2804.y, _2804.z)) * _27_m4[_2768]._m6.y) + ((((((_2798 * _2798).x - ((_2801.x + _2801.y) + _2801.z)) * _27_m4[_2768]._m5.x) * _27_m4[_2768]._m5.x) * (1.0f - _27_m4[_2768]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2768]._m6.w;
                _2757 = _2756 + ((((_22.SampleLevel(_15, float3((((_2873.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2768]._m1.w), _2716).xyz * _27_m4[_2768]._m5.w) * ((((((clamp(abs(_2754 / _2894), 0.0f, 1.0f) * 2.0f) + _2754) / (2.0f + _2894)) - 1.0f) * _9_m23.w) + 1.0f)) * _2907) * _2759);
                _2760 = _2759 * (1.0f - _2907);
            }
            else
            {
                _2757 = _2756;
                _2760 = _2759;
            }
            _2756 = _2757;
            _2759 = _2760;
            _2761 = _2762;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _2972;
    if (_2764)
    {
        float3 _2915 = normalize(_2708);
        float3 _2918 = float3(int3(sign(_2915)));
        float3 _2921 = _2915 / dot(_2915, _2918).xxx;
        float3 _2935;
        if (_2921.z < 0.0f)
        {
            float3 _2926 = abs(_2921);
            float2 _2933 = _2918.xy * float2(1.0f - _2926.y, 1.0f - _2926.x);
            _2935 = float3(_2933.x, _2933.y, _2921.z);
        }
        else
        {
            _2935 = _2921;
        }
        float _2958 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, _2681)));
        _2972 = _2756 + ((_22.SampleLevel(_15, float3((((_2935.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _2716).xyz * ((((((clamp(abs(_2754 / _2958), 0.0f, 1.0f) * 2.0f) + _2754) / (2.0f + _2958)) - 1.0f) * _9_m23.w) + 1.0f)) * _2759);
    }
    else
    {
        _2972 = _2756;
    }
    float3 _2978 = (_2972 * _9_m23.z) * _9_m22.y;
    float3 _2999;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _2993 = _20.SampleBias(_13, _4, _9_m16);
        float _2994 = _2993.x;
        _2999 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2994) + (_2978 * (1.0f - _2994));
    }
    else
    {
        _2999 = _2978;
    }
    float3 _3020 = ((((_2686 * _428) * _9_m22.x) * _2118) + ((_2999 * ((_489 * _504.x) + (clamp(_431 * 4.0f, 0.0f, 1.0f) * _504.y).xxx)) * _2117)) + (((((max(float3(dot(_2675, _2691), dot(_2676, _2691), dot(_2677, _2691)), 0.0f.xxx) * _9_m22.x) * _2118) * (_428 / max(0.00999999977648258209228515625f, max(max(_362.x, _362.y), _362.z)).xxx)) * ((_370 * clamp(dot(_485, _426), 0.0f, 1.0f)) + (float(((_392 & 7u) << 2u) | (uint(_360.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
    float4 _3022 = float4(_2080.x, _2080.y, _2080.z, _705.w) + float4(_3020.x, _3020.y, _3020.z, 0.0f.xxxx.w);
    float _3040 = _459.y * _9_m46.w;
    float _3045 = max(0.00999999977648258209228515625f, _3040 + _9_m47.w);
    float3 _3059 = exp(_9_m45.xyz * ((-max(0.0f, (_486 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3045)) / _3045) * exp(_3040 + _9_m48.w))));
    float _3062 = dot(_487, _9_m44.xyz);
    float _3068 = _9_m45.w * _9_m45.w;
    float _3072 = (1.0f + _3068) - ((2.0f * _9_m45.w) * _3062);
    float3 _3400;
    float _3401;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3226 = (uint3(int3(_353, _354, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3227 = _3226.y;
        uint _3228 = _3226.z;
        uint _3231 = _3226.x + (_3227 * _3228);
        uint _3233 = _3227 + (_3228 * _3231);
        uint _3235 = _3228 + (_3231 * _3233);
        uint _3237 = _3231 + (_3233 * _3235);
        float _3261 = dot(_487, -_7_m0[2].xyz);
        float3 _3271 = _459 - _7_m11.xyz;
        float _3273 = (_9_m55.w * ((_3261 > 5.9604644775390625e-08f) ? (1.0f / _3261) : 0.0f)) * (1.0f / _486);
        float _3274 = _3271.y;
        float _3275 = _3273 * _3274;
        float _3277 = _7_m11.y + _3275;
        float _3278 = _3274 - _3275;
        float _3280 = (1.0f - _3273) * _486;
        float _3294 = max(-127.0f, _9_m49.z * _3278);
        float _3318 = max(-127.0f, _9_m52.x * _3278);
        float _3329 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3277 - _9_m49.x)))) * ((abs(_3294) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3294)) / _3294) : (0.693147182464599609375f - (0.2402265071868896484375f * _3294)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3277 - _9_m52.z)))) * ((abs(_3318) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3318)) / _3318) : (0.693147182464599609375f - (0.2402265071868896484375f * _3318))));
        float _3351 = clamp((_486 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3354 = clamp((max(clamp(exp2(-(_3329 * _3280)), 0.0f, 1.0f), _9_m51.w) + clamp((_486 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3351, 0.0f, 1.0f);
        float4 _3394 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _48.SampleLevel(_13, float3((_434 + ((((float3(uint3(_3237, _3233 + (_3235 * _3237), _337) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_466 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_466 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3396 = _3394.w;
        _3400 = _3394.xyz + (((_9_m51.xyz * (1.0f - _3354)) + (((_9_m54.xyz * pow(clamp(dot(_485, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3329 * max(_3280 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3351))) * _3396);
        _3401 = _3396 * _3354;
    }
    else
    {
        float3 _3102 = _459 - _7_m11.xyz;
        float _3104 = _3102.y;
        float _3118 = max(-127.0f, _9_m49.z * _3104);
        float _3142 = max(-127.0f, _9_m52.x * _3104);
        float _3153 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3118) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3118)) / _3118) : (0.693147182464599609375f - (0.2402265071868896484375f * _3118)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3142) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3142)) / _3142) : (0.693147182464599609375f - (0.2402265071868896484375f * _3142))));
        float _3175 = clamp((_486 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3178 = clamp((max(clamp(exp2(-(_3153 * _486)), 0.0f, 1.0f), _9_m51.w) + clamp((_486 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3175, 0.0f, 1.0f);
        _3400 = (_9_m51.xyz * (1.0f - _3178)) + (((_9_m54.xyz * pow(clamp(dot(_485, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3153 * max(_486 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3175));
        _3401 = _3178;
    }
    float3 _3404 = _3059 * _3401;
    float3 _3406 = (clamp(_3022.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3404) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3062 * _3062)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3068) / max((12.56637096405029296875f * _3072) * sqrt(_3072), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3059)) * _3401) + _3400);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3406 = (_3406 * 0.65f) + (clamp(_3022.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _3408 = float4(_3406.x, _3406.y, _3406.z, _3022.w);
    _3408.w = dot(_3404, 0.3333333432674407958984375f.xxx);
    _5 = _3408;
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
