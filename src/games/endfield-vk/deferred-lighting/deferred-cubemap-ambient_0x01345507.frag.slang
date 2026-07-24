// DX11 0xB017F103 -> Vulkan 0x01345507
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

static float _371 = 0.0f;
static uint _375 = 0u;

static const int2 _330[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _331[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(32, 3)]]
cbuffer _6_7 : register(b32)
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

[[vk::binding(38, 3)]]
cbuffer _8_9 : register(b38)
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

[[vk::binding(42, 3)]] ByteAddressBuffer _24 : register(t42);
[[vk::binding(39, 3)]]
cbuffer _25_27 : register(b39)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(35, 3)]]
cbuffer _28_29 : register(b35)
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

[[vk::binding(34, 3)]]
cbuffer _30_31 : register(b34)
{
    float4 _31_m0 : packoffset(c0);
    float4 _31_m1 : packoffset(c1);
    float4 _31_m2 : packoffset(c2);
    float4 _31_m3 : packoffset(c3);
    float4 _31_m4 : packoffset(c4);
    uint4 _31_m5 : packoffset(c5);
    float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(37, 3)]]
cbuffer _32_33 : register(b37)
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

[[vk::binding(41, 3)]]
cbuffer _34_35 : register(b41)
{
    column_major float4x4 _35_m0[32] : packoffset(c0);
    float4 _35_m1[32] : packoffset(c128);
    uint4 _35_m2[56] : packoffset(c160);
    int4 _35_m3 : packoffset(c216);
    float4 _35_m4 : packoffset(c217);
    float4 _35_m5[4] : packoffset(c218);
    float4 _35_m6 : packoffset(c222);
};

[[vk::binding(33, 3)]]
cbuffer _44_45 : register(b33)
{
    float4 _45_m0[15] : packoffset(c0);
    float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(40, 3)]]
cbuffer _48_49 : register(b40)
{
    float4 _49_m0[32] : packoffset(c0);
    column_major float4x4 _49_m1[32] : packoffset(c32);
};

[[vk::binding(36, 3)]]
cbuffer _53_54 : register(b36)
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
[[vk::binding(29, 3)]] Texture2D<float4> _18 : register(t29);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23);
[[vk::binding(12, 3)]] Texture2DArray<float4> _22 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _36 : register(t13);
[[vk::binding(9, 3)]] Texture2D<float4> _37 : register(t9);
[[vk::binding(24, 3)]] Texture2D<float4> _38 : register(t24);
[[vk::binding(30, 3)]] Texture2D<float4> _39 : register(t30);
[[vk::binding(14, 3)]] Texture2D<float4> _41 : register(t14);
[[vk::binding(7, 3)]] Texture2DArray<float4> _42 : register(t7);
[[vk::binding(8, 3)]] Texture2DArray<float4> _43 : register(t8);
[[vk::binding(28, 3)]] Texture2D<float4> _46 : register(t28);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15);
[[vk::binding(22, 3)]] Texture3D<float4> _52 : register(t22);
[[vk::binding(31, 3)]] Texture2D<float4> _55 : register(t31);
[[vk::binding(6, 3)]] Texture2D<float4> _56 : register(t6);
[[vk::binding(21, 3)]] Texture3D<float4> _57 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _58 : register(t18);
[[vk::binding(20, 3)]] Texture3D<float4> _59 : register(t20);
[[vk::binding(17, 3)]] Texture3D<float4> _60 : register(t17);
[[vk::binding(19, 3)]] Texture3D<float4> _61 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _62 : register(t16);
[[vk::binding(5, 3)]] Texture2D<float4> _63 : register(t5);
[[vk::binding(27, 3)]] Texture2D<float4> _64 : register(t27);
[[vk::binding(26, 3)]] Texture2D<float4> _65 : register(t26);
[[vk::binding(25, 3)]] Texture2D<float4> _66 : register(t25);

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
    uint2 _388 = uint2(gl_FragCoord.xy);
    int _391 = int(_388.x);
    int _392 = int(_388.y);
    int2 _394 = int3(_391, _392, 0).xy;
    float4 _396 = _64.Load(int3(_394, 0));
    float4 _398 = _65.Load(int3(_394, 0));
    float4 _400 = _66.Load(int3(_394, 0));
    float _401 = _396.x;
    float _402 = _396.y;
    uint _413 = uint(int((round(_396.w * 3.0f) * 4.0f) + round(_398.w * 3.0f)));
    float2 _416 = (_398.xy * 2.0f) - 1.0f.xx;
    float _420 = 1.0f - dot(1.0f.xx, abs(_416));
    float3 _422 = float3(_416.x, _420, _416.y);
    float3 _434;
    if (_420 < 0.0f)
    {
        float2 _429 = _422.xz;
        bool2 _430 = bool2(_429.x >= 0.0f.xx.x, _429.y >= 0.0f.xx.y);
        float2 _432 = (1.0f.xx - abs(_422.zx)) * float2(_430.x ? 1.0f.xx.x : (-1.0f).xx.x, _430.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _434 = float3(_432.x, _422.y, _432.y);
    }
    else
    {
        _434 = _422;
    }
    float3 _435 = normalize(_434);
    float _436 = _398.z;
    float _438 = _400.w;
    float2 _441 = float2(_388);
    float2 _446 = (_441 + 0.5f.xx) * _9_m0.zw;
    float2 _454 = gl_FragCoord.xy * _9_m0.zw;
    float2 _456 = (_454 * 2.0f) - 1.0f.xx;
    float4 _459 = float4(_456, _18.SampleLevel(_12, _446, 0.0f).x, 1.0f);
    _459.y = -_456.y;
    float4 _462 = mul(_7_m6, _459);
    float3 _466 = _462.xyz / _462.w.xxx;
    float4 _470 = float4(_466, 1.0f);
    float _473 = abs(mul(_7_m0, _470).z);
    float3 _488;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _488 = _7_m11.xyz - _466;
            break;
        }
        else
        {
            _488 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _489 = dot(_488, _488);
    float _491 = rsqrt(max(_489, 9.9999999392252902907785028219223e-09f));
    float3 _492 = _488 * _491;
    float _493 = _489 * _491;
    float3 _494 = -_492;
    bool _497 = _9_m129.x > 0.00048828125f;
    float2 _507;
    if (_497)
    {
        _507 = _63.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _507 = 1.0f.xx;
    }
    float _510 = min(_507.x, _507.y);
    float2 _511 = _507 * 1.0f;
    float _512 = _511.x;
    float _515 = clamp((_396.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _520;
    float _521;
    if (_497)
    {
        _520 = lerp(1.0f, _507.y, _515);
        _521 = lerp(1.0f, 0.0f, _515);
    }
    else
    {
        _520 = 1.0f;
        _521 = 1.0f;
    }
    float _526 = lerp(lerp(min(_520, _436), _436, _510), _436, _512);
    float3 _528 = _400.xyz * lerp(lerp(min(_521, 1.0f), 1.0f, _510), 1.0f, _512);
    float3 _529 = _528 * _401;
    float3 _530 = _528 - _529;
    float3 _534 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _401)).xxx + _529;
    float _535 = dot(_435, _492);
    float _536 = max(0.0f, _535);
    float _537 = _526 * _526;
    float _538 = _536 * _536;
    float _539 = _538 * _536;
    float2 _540 = float2(1.0f, _536);
    float2 _543 = float2(1.0f, _537);
    float _544 = _537 * _537;
    float3 _546 = float3(1.0f, _537, _544 * _537);
    float _551 = dot(mul(_540, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _543) / dot(mul(float3(1.0f, _538, _539), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _546);
    float _556 = dot(mul(_540, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _543) / dot(mul(float3(1.0f, _536, _539), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _546);
    float3 _559 = (_534 * _551) + _556.xxx;
    float _560 = _551 + _556;
    float4 _573 = _37.Load(int3(_394, 0));
    float _574 = _573.x;
    float4 _737;
    if (_574 > 0.001000000047497451305389404296875f)
    {
        float3 _584 = reflect(_494, _435);
        float3 _585 = -_31_m0.xyz;
        float _590 = dot(_585, _584);
        float3 _592 = _584 - (_585 * _590);
        bool3 _594 = (_590 < _31_m4.z).xxx;
        float3 _602 = normalize((_585 * _31_m4.z) + ((_592 * rsqrt(max(6.103515625e-05f, dot(_592, _592)))) * _31_m4.y));
        float3 _603 = float3(_594.x ? _602.x : _584.x, _594.y ? _602.y : _584.y, _594.z ? _602.z : _584.z);
        float3 _607 = _603 + _492;
        float3 _611 = _607 * rsqrt(max(6.103515625e-05f, dot(_607, _607)));
        float _612 = clamp(dot(_603, _435), 0.0f, 1.0f);
        float _614 = clamp(dot(_435, _611), 0.0f, 1.0f);
        float _617 = clamp(_535, 0.0f, 1.0f);
        float _638 = (((_614 * _544) - _614) * _614) + 1.0f;
        float _641 = 1.0f - clamp(dot(_492, _611), 0.0f, 1.0f);
        float _642 = _641 * _641;
        float _644 = (_641 * _642) * _642;
        float _668 = 1.0f - _526;
        float _675 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_668 * (1.04997003078460693359375f + (_668 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _668))))));
        float _676 = 1.0f - _675;
        float3 _679 = _534 + ((1.0f.xxx - _534) * 0.0476190485060214996337890625f);
        float3 _719;
        do
        {
            [branch]
            if (((_413 > 0u) && (_413 <= 15u)) && (_438 > 0.0f))
            {
                uint _703 = clamp(_413 - 1u, 0u, 14u);
                _719 = _42.SampleLevel(_13, float3((dot(_435, _603) * 0.5f) + 0.5f, _438 * _45_m0[_703].w, float(_703)), 0.0f).xyz;
                break;
            }
            _719 = _612.xxx;
            break;
        } while(false);
        float3 _722 = ((clamp((min(((_534 * (1.0f - _644)) + _644.xxx) * ((_544 / (_638 * _638)) * (0.5f / (((_612 * sqrt(((((-_617) * _544) + _617) * _617) + _544)) + (_617 * sqrt(((((-_612) * _544) + _612) * _612) + _544))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_679 * (((_41.SampleLevel(_13, (float2(_617, _526) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_612, _526) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _675) / _676)) * _679) / (1.0f.xxx - (_679 * _676)))) * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _612) + ((_530 * 1.0f) * _719)) * _31_m1.xyz;
        float3 _735 = lerp(_722, _722 * _39.SampleBias(_13, float2(_574, 0.5f), _9_m16).xyz, (1.0f - _574).xxx) * min(_46.SampleLevel(_13, _454, 0.0f).x, 1.0f);
        _737 = float4(_735.x, _735.y, _735.z, 0.0f.xxxx.w);
    }
    else
    {
        _737 = 0.0f.xxxx;
    }
    float2 _739 = floor(_441 * 0.03125f);
    int _747 = int((_739.x + (_739.y * _29_m5)) * 8.0f);
    float _754 = floor(_473 - (_9_m3.y * _29_m11));
    float _758 = clamp(_754, 0.0f, _29_m7 - 1.0f);
    int _760 = int(_758 * 8.0f);
    float4 _766 = _38.SampleBias(_13, _446, _9_m16);
    float3 _768;
    float _771;
    _768 = 0.0f.xxx;
    _771 = 1.0f;
    float3 _769;
    float _772;
    [loop]
    for (int _773 = 0; _773 <= 7; _768 = _769, _771 = _772, _773++)
    {
        uint _791 = (_754 <= _758) ? (_24.Load(uint(_747 + _773) * 4 + 0) & _24.Load(uint((_9_m21.y + _760) + _773) * 4 + 0)) : 0u;
        uint _792 = uint(_773);
        float3 _796;
        _772 = _771;
        _796 = 0.0f.xxx;
        uint _799;
        float _794;
        float3 _797;
        [loop]
        for (uint _798 = _791; _798 != 0u; _772 = _794, _796 = _797, _798 = _799)
        {
            uint _803 = firstbitlow(_798);
            _799 = _798 ^ (1u << (_803 & 31u));
            int _809 = int((32u * _792) + _803) * 8;
            int _812 = _809 + 1;
            int _815 = _809 + 2;
            int _818 = _809 + 3;
            int _821 = _809 + 5;
            int _824 = _809 + 6;
            int _827 = _809 + 7;
            uint _831 = uint(_31_m6[_821].w);
            float _906;
            if ((_831 & 1u) == 1u)
            {
                uint _837 = asuint(_31_m6[_821].x);
                uint _844 = asuint(_31_m6[_821].y);
                uint _851 = asuint(_31_m6[_821].z);
                uint _858 = asuint(_31_m6[_824].x);
                uint _865 = asuint(_31_m6[_824].y);
                uint _872 = asuint(_31_m6[_824].z);
                float3 _891 = abs(mul(float4(_466 - _31_m6[_812].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_837).x, spvUnpackHalf2x16(_851).x, spvUnpackHalf2x16(_865).x, 0.0f), float4(spvUnpackHalf2x16(_837 >> 16u).x, spvUnpackHalf2x16(_851 >> 16u).x, spvUnpackHalf2x16(_865 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_844).x, spvUnpackHalf2x16(_858).x, spvUnpackHalf2x16(_872).x, 0.0f), float4(spvUnpackHalf2x16(_844 >> 16u).x, spvUnpackHalf2x16(_858 >> 16u).x, spvUnpackHalf2x16(_872 >> 16u).x, 0.0f))).xyz);
                float _898 = _31_m6[_827].x * 0.5f;
                float _904 = 1.0f - clamp((max(max(_891.x, _891.y), _891.z) - (_898 + 0.5f)) / (0.5f - _898), 0.0f, 1.0f);
                _906 = _904 * _904;
            }
            else
            {
                _906 = 1.0f;
            }
            bool _910 = _31_m6[_818].z > 0.5f;
            if ((false || (_906 < 0.001000000047497451305389404296875f)) || _910)
            {
                _794 = _772;
                _797 = _796;
                continue;
            }
            float _2088;
            float3 _2089;
            if (_31_m6[_809].w < 1.5f)
            {
                float3 _1418 = float3(0.100000001490116119384765625f, _526, 1.0f);
                float _1427 = (0.5f + (0.5f * _31_m6[_815].y)) - abs(_31_m6[_815].x);
                float _1428 = _31_m6[_815].y - _1427;
                float _1435 = abs(max((1.0f - abs(_1427)) - abs(_1428), 0.00048828125f));
                float3 _1439 = normalize(float3(_1427, _1428, (_31_m6[_815].x >= 0.0f) ? _1435 : (-_1435)));
                float3 _1440 = _31_m6[_812].xyz - _466;
                float _1441 = dot(_1440, _1440);
                float _1442 = rsqrt(_1441);
                float3 _1443 = _1440 * _1442;
                float _1447 = clamp(_31_m6[_827].y * _1442, 0.0f, 1.0f);
                int _1452 = int(_31_m6[_827].w);
                float3 _1453 = _1439 * _31_m6[_815].z;
                float3 _1454 = _1453 * 0.5f;
                float3 _1455 = _1440 - _1454;
                float3 _1456 = _1440 + _1454;
                bool _1459 = (uint(_31_m6[_809].w) & 1u) == 0u;
                bool _1462 = _1459 || ((_831 & 2u) != 0u);
                bool _1465 = (!_1459) && (_31_m6[_815].z > 0.0f);
                float _1484;
                float _1485;
                if (_1465)
                {
                    float _1469 = length(_1455);
                    float _1470 = length(_1456);
                    _1484 = clamp(0.5f * ((dot(_435, _1455) / _1469) + (dot(_435, _1456) / _1470)), 0.0f, 1.0f);
                    _1485 = 1.0f / ((((_1469 * _1470) + dot(_1455, _1456)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1484 = clamp(dot(_435, _1443), 0.0f, 1.0f);
                    _1485 = 1.0f;
                }
                float _1507;
                if (_31_m6[_824].w < 0.0f)
                {
                    float _1501 = _1441 * (_31_m6[_812].w * _31_m6[_812].w);
                    float _1504 = clamp(1.0f - (_1501 * _1501), 0.0f, 1.0f);
                    _1507 = lerp(1.0f / (_1441 + 1.0f), _1485, float(_1465)) * (_1504 * _1504);
                }
                else
                {
                    float3 _1490 = _1440 * _31_m6[_812].w;
                    _1507 = _1485 * pow(1.0f - clamp(dot(_1490, _1490), 0.0f, 1.0f), _31_m6[_824].w);
                }
                float _1513 = clamp((dot(_1443, -_1439) - _31_m6[_815].z) * _31_m6[_815].w, 0.0f, 1.0f);
                float _1517 = _1507 * lerp(1.0f, _1513 * _1513, float(_1459));
                float _1617;
                if ((!_1465) && (_1452 >= 0))
                {
                    uint _1523 = uint(_1452);
                    float2 _1610;
                    [branch]
                    if (_1459)
                    {
                        float4 _1600 = mul(_49_m1[_1523], _470);
                        _1610 = _49_m0[_1523].xy + (clamp(_1600.xy / _1600.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_1523].zw);
                    }
                    else
                    {
                        float3 _1537 = mul(float4(-_1440, 0.0f), _49_m1[_1523]).xyz;
                        float3 _380 = _1537;
                        float3 _379 = _1537;
                        float3 _378 = abs(_1537);
                        uint _1546 = uint(int(_378.y > _378.x));
                        uint _1552 = (_378.z > _378[_1546]) ? 2u : _1546;
                        uint _1558 = (_1552 * 2u) + uint(_379[_1552] < 0.0f);
                        float _1562 = abs(_380[_1558 / 2u]);
                        float _1582 = 0.5f - (0.000244140625f / _49_m0[_1523].w);
                        _1610 = _49_m0[_1523].xy + (clamp(float2((float(_1558) + ((((_380[uint(_330[_1558].x)] * _331[_1558].x) / _1562) * _1582) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_380[uint(_330[_1558].y)] * _331[_1558].y) / _1562) * _1582)), 0.0f.xx, 1.0f.xx) * _49_m0[_1523].zw);
                    }
                    _1617 = _1517 * _47.SampleLevel(_13, _1610, 0.0f).x;
                }
                else
                {
                    _1617 = _1517;
                }
                bool _1618 = _1617 > 0.0f;
                float _1926;
                if (_1618)
                {
                    int _1670;
                    if (_1462)
                    {
                        _1670 = int(_31_m6[_818].x);
                    }
                    else
                    {
                        uint _1625 = asuint(_31_m6[_815].w);
                        uint _1627 = asuint(_31_m6[_818].x);
                        float3 _1628 = _466 - _31_m6[_812].xyz;
                        float3 _1629 = abs(_1628);
                        float _1630 = _1629.x;
                        float _1631 = _1629.y;
                        float _1633 = _1629.z;
                        int _1665;
                        if ((_1630 > _1631) && (_1630 > _1633))
                        {
                            _1665 = int((_1628.x > 0.0f) ? (_1625 >> 24u) : ((_1625 >> 16u) & 255u));
                        }
                        else
                        {
                            int _1657;
                            if (_1631 > _1633)
                            {
                                _1657 = int((_1628.y > 0.0f) ? ((_1625 >> 8u) & 255u) : (_1625 & 255u));
                            }
                            else
                            {
                                _1657 = int((_1628.z > 0.0f) ? ((_1627 >> 8u) & 255u) : (_1627 & 255u));
                            }
                            _1665 = _1657;
                        }
                        _1670 = (_1665 < 80) ? _1665 : (-1);
                    }
                    float _1924;
                    do
                    {
                        if (_35_m2[_1670].y > 0u)
                        {
                            uint _1688 = uint(_1670);
                            float4 _377 = _766;
                            float _1699;
                            do
                            {
                                if (_35_m2[_1688].y == 0u)
                                {
                                    _1699 = 1.0f;
                                    break;
                                }
                                _1699 = _377[_35_m2[_1688].y - 1u];
                                break;
                            } while(false);
                            _1924 = _1699;
                            break;
                        }
                        float4 _1706 = mul(_33_m10[_1670], float4((_466 - ((-_1443) * _33_m11[_1670].x)) + (_435 * (_33_m11[_1670].y * 5.0f)), 1.0f));
                        float _1707 = _1706.w;
                        float3 _1710 = _1706.xyz / _1707.xxx;
                        float2 _1711 = _1710.xy;
                        float3 _1719 = _1710.xyz;
                        bool3 _1720 = bool3(_1719.x <= 0.0f.xxx.x, _1719.y <= 0.0f.xxx.y, _1719.z <= 0.0f.xxx.z);
                        bool3 _1721 = bool3(_1719.x >= 1.0f.xxx.x, _1719.y >= 1.0f.xxx.y, _1719.z >= 1.0f.xxx.z);
                        float _1724 = _1710.z;
                        float2 _1735 = ((_1711 * (_33_m12[_1670].zw - _33_m12[_1670].xy)) + _33_m12[_1670].xy).xy * _33_m13.zw;
                        float2 _1737 = floor(_1735 + 0.5f.xx);
                        float2 _1738 = _1735 - _1737;
                        float _1739 = _1738.x;
                        float _1740 = _1739 + 0.5f;
                        float _1741 = _1740 * _1740;
                        float _1744 = 1.0f - _1739;
                        float _1745 = min(_1739, 0.0f);
                        float _1748 = _1739 + 1.0f;
                        float _1749 = max(_1739, 0.0f);
                        float _1760 = _1738.y;
                        float _1761 = _1760 + 0.5f;
                        float _1762 = _1761 * _1761;
                        float _1765 = 1.0f - _1760;
                        float _1766 = min(_1760, 0.0f);
                        float _1769 = _1760 + 1.0f;
                        float _1770 = max(_1760, 0.0f);
                        float3 _1782 = float3(0.1599999964237213134765625f * _1744, 0.1599999964237213134765625f * ((_1748 - (_1749 * _1749)) + 1.0f), _1741 * 0.07999999821186065673828125f);
                        float3 _1783 = float3(0.1599999964237213134765625f * ((_1741 * 0.5f) - _1739), 0.1599999964237213134765625f * ((_1744 - (_1745 * _1745)) + 1.0f), 0.1599999964237213134765625f * _1748) + _1782;
                        float3 _1785 = float3(0.1599999964237213134765625f * _1765, 0.1599999964237213134765625f * ((_1769 - (_1770 * _1770)) + 1.0f), _1762 * 0.07999999821186065673828125f);
                        float3 _1786 = float3(0.1599999964237213134765625f * ((_1762 * 0.5f) - _1760), 0.1599999964237213134765625f * ((_1765 - (_1766 * _1766)) + 1.0f), 0.1599999964237213134765625f * _1769) + _1785;
                        float3 _1792 = ((_1782 / _1783) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                        float3 _1794 = ((_1785 / _1786) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                        float2 _1796 = _1737 * _33_m13.xy;
                        float _1797 = _1792.x;
                        float _1798 = _1794.x;
                        float2 _1800 = _1796 + float2(_1797, _1798);
                        float _1801 = _1792.y;
                        float2 _1803 = _1796 + float2(_1801, _1798);
                        float _1804 = _1792.z;
                        float2 _1806 = _1796 + float2(_1804, _1798);
                        float _1807 = _1794.y;
                        float2 _1809 = _1796 + float2(_1797, _1807);
                        float2 _1811 = _1796 + float2(_1801, _1807);
                        float2 _1813 = _1796 + float2(_1804, _1807);
                        float _1814 = _1794.z;
                        float2 _1816 = _1796 + float2(_1797, _1814);
                        float2 _1818 = _1796 + float2(_1801, _1814);
                        float2 _1820 = _1796 + float2(_1804, _1814);
                        float _1821 = _1783.x;
                        float _1822 = _1786.x;
                        float _1824 = _1783.y;
                        float _1826 = _1783.z;
                        float _1828 = _1786.y;
                        float _1832 = _1786.z;
                        float _1898 = ((((((((_1821 * _1822) * _36.SampleCmpLevelZero(_16, float3(_1800, _371).xy, _1724)) + ((_1824 * _1822) * _36.SampleCmpLevelZero(_16, float3(_1803, _371).xy, _1724))) + ((_1826 * _1822) * _36.SampleCmpLevelZero(_16, float3(_1806, _371).xy, _1724))) + ((_1821 * _1828) * _36.SampleCmpLevelZero(_16, float3(_1809, _371).xy, _1724))) + ((_1824 * _1828) * _36.SampleCmpLevelZero(_16, float3(_1811, _371).xy, _1724))) + ((_1826 * _1828) * _36.SampleCmpLevelZero(_16, float3(_1813, _371).xy, _1724))) + ((_1821 * _1832) * _36.SampleCmpLevelZero(_16, float3(_1816, _371).xy, _1724))) + ((_1824 * _1832) * _36.SampleCmpLevelZero(_16, float3(_1818, _371).xy, _1724));
                        float2 _1911 = min(_1711, 1.0f.xx - _1711);
                        _1924 = lerp(1.0f, (any(bool3(_1720.x || _1721.x, _1720.y || _1721.y, _1720.z || _1721.z)) || ((asuint(_1724) & 2147483647u) > 2139095040u)) ? 1.0f : (_1898 + ((_1826 * _1832) * _36.SampleCmpLevelZero(_16, float3(_1820, _371).xy, _1724))), _1462 ? min(_33_m11[_1670].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1670].z - _1707) * 0.25f, min(_1911.x, _1911.y)))) : _33_m11[_1670].w);
                        break;
                    } while(false);
                    _1926 = (_1670 >= 0) ? _1924 : 1.0f;
                }
                else
                {
                    _1926 = 1.0f;
                }
                float3 _1950;
                float3 _1951;
                if (_1465)
                {
                    float3 _1929 = _1418 * _1418;
                    float3 _1930 = reflect(_494, _435);
                    float _1939 = dot(_1930, _1453);
                    _1950 = _1929 / clamp(_1929 + (0.5f * clamp(_31_m6[_815].z * _1442, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _1951 = normalize(_1455 + (_1453 * clamp(dot(_1455, (_1930 * _1939) - _1453) / ((_31_m6[_815].z * _31_m6[_815].z) - (_1939 * _1939)), 0.0f, 1.0f)));
                }
                else
                {
                    _1950 = 1.0f.xxx;
                    _1951 = _1443;
                }
                float3 _1952 = _1951 + _492;
                float3 _1956 = _1952 * rsqrt(max(6.103515625e-05f, dot(_1952, _1952)));
                float3 _2087;
                if (_1618)
                {
                    float _1959 = clamp(_1484, 0.0f, 1.0f);
                    float _1961 = clamp(dot(_435, _1956), 0.0f, 1.0f);
                    float _1963 = clamp(dot(_492, _1956), 0.0f, 1.0f);
                    float _1964 = clamp(_535, 0.0f, 1.0f);
                    float _1974;
                    if (_1447 > 0.0f)
                    {
                        _1974 = clamp(_537 + ((_1447 * _1447) / ((_1963 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1974 = _537;
                    }
                    float _1975 = _1974 * _1974;
                    float _1996 = (((_1961 * _1975) - _1961) * _1961) + 1.0f;
                    float _2001 = 1.0f - _1963;
                    float _2002 = _2001 * _2001;
                    float _2004 = (_2001 * _2002) * _2002;
                    float _2028 = 1.0f - _526;
                    float _2035 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2028 * (1.04997003078460693359375f + (_2028 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2028))))));
                    float _2036 = 1.0f - _2035;
                    float3 _2039 = _534 + ((1.0f.xxx - _534) * 0.0476190485060214996337890625f);
                    float3 _2083;
                    do
                    {
                        [branch]
                        if (((_413 > 0u) && (_413 <= 15u)) && (_438 > 0.0f))
                        {
                            uint _2067 = clamp(_413 - 1u, 0u, 14u);
                            _2083 = _42.SampleLevel(_13, float3((dot(_435, _1951) * 0.5f) + 0.5f, _438 * _45_m0[_2067].w, float(_2067)), 0.0f).xyz;
                            break;
                        }
                        _2083 = _1484.xxx;
                        break;
                    } while(false);
                    float3 _2086 = ((clamp((min(((_534 * (1.0f - _2004)) + _2004.xxx) * (((_1975 / (_1996 * _1996)) * _1950.y) * (0.5f / (((_1959 * sqrt(((((-_1964) * _1975) + _1964) * _1964) + _1975)) + (_1964 * sqrt(((((-_1959) * _1975) + _1959) * _1959) + _1975))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2039 * (((_41.SampleLevel(_13, (float2(_1964, _526) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1959, _526) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2035) / _2036)) * _2039) / (1.0f.xxx - (_2039 * _2036)))) * _31_m6[_827].z, 0.0f.xxx, 1000.0f.xxx) * _1484) + ((_530 * _1950.z) * _2083)) * (((_31_m6[_809].xyz * _1617) * _1926) * _906);
                    _2087 = _2086;
                }
                else
                {
                    _2087 = 0.0f.xxx;
                }
                _2088 = _772;
                _2089 = _2087;
            }
            else
            {
                float _1416;
                do
                {
                    if (_910)
                    {
                        _1416 = 1.0f;
                        break;
                    }
                    float _930 = (0.5f + (0.5f * _31_m6[_815].y)) - abs(_31_m6[_815].x);
                    float _931 = _31_m6[_815].y - _930;
                    float _938 = abs(max((1.0f - abs(_930)) - abs(_931), 0.00048828125f));
                    float3 _942 = normalize(float3(_930, _931, (_31_m6[_815].x >= 0.0f) ? _938 : (-_938)));
                    float3 _943 = _31_m6[_812].xyz - _466;
                    float _944 = dot(_943, _943);
                    float3 _946 = _943 * rsqrt(_944);
                    int _949 = int(_31_m6[_827].w);
                    float3 _951 = (_942 * _31_m6[_815].z) * 0.5f;
                    float3 _952 = _943 - _951;
                    float3 _953 = _943 + _951;
                    bool _956 = (uint(_31_m6[_809].w) & 1u) == 0u;
                    bool _959 = _956 || ((_831 & 2u) != 0u);
                    bool _962 = (!_956) && (_31_m6[_815].z > 0.0f);
                    float _974;
                    if (_962)
                    {
                        _974 = 1.0f / ((((length(_952) * length(_953)) + dot(_952, _953)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _974 = 1.0f;
                    }
                    float _996;
                    if (_31_m6[_824].w < 0.0f)
                    {
                        float _990 = _944 * (_31_m6[_812].w * _31_m6[_812].w);
                        float _993 = clamp(1.0f - (_990 * _990), 0.0f, 1.0f);
                        _996 = lerp(1.0f / (_944 + 1.0f), _974, float(_962)) * (_993 * _993);
                    }
                    else
                    {
                        float3 _979 = _943 * _31_m6[_812].w;
                        _996 = _974 * pow(1.0f - clamp(dot(_979, _979), 0.0f, 1.0f), _31_m6[_824].w);
                    }
                    float _1002 = clamp((dot(_946, -_942) - _31_m6[_815].z) * _31_m6[_815].w, 0.0f, 1.0f);
                    float _1006 = _996 * lerp(1.0f, _1002 * _1002, float(_956));
                    float _1106;
                    if ((!_962) && (_949 >= 0))
                    {
                        uint _1012 = uint(_949);
                        float2 _1099;
                        [branch]
                        if (_956)
                        {
                            float4 _1089 = mul(_49_m1[_1012], _470);
                            _1099 = _49_m0[_1012].xy + (clamp(_1089.xy / _1089.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_1012].zw);
                        }
                        else
                        {
                            float3 _1026 = mul(float4(-_943, 0.0f), _49_m1[_1012]).xyz;
                            float3 _384 = _1026;
                            float3 _383 = _1026;
                            float3 _382 = abs(_1026);
                            uint _1035 = uint(int(_382.y > _382.x));
                            uint _1041 = (_382.z > _382[_1035]) ? 2u : _1035;
                            uint _1047 = (_1041 * 2u) + uint(_383[_1041] < 0.0f);
                            float _1051 = abs(_384[_1047 / 2u]);
                            float _1071 = 0.5f - (0.000244140625f / _49_m0[_1012].w);
                            _1099 = _49_m0[_1012].xy + (clamp(float2((float(_1047) + ((((_384[uint(_330[_1047].x)] * _331[_1047].x) / _1051) * _1071) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_384[uint(_330[_1047].y)] * _331[_1047].y) / _1051) * _1071)), 0.0f.xx, 1.0f.xx) * _49_m0[_1012].zw);
                        }
                        _1106 = _1006 * _47.SampleLevel(_13, _1099, 0.0f).x;
                    }
                    else
                    {
                        _1106 = _1006;
                    }
                    float _1415;
                    if (_1106 > 0.0f)
                    {
                        int _1159;
                        if (_959)
                        {
                            _1159 = int(_31_m6[_818].x);
                        }
                        else
                        {
                            uint _1114 = asuint(_31_m6[_815].w);
                            uint _1116 = asuint(_31_m6[_818].x);
                            float3 _1117 = _466 - _31_m6[_812].xyz;
                            float3 _1118 = abs(_1117);
                            float _1119 = _1118.x;
                            float _1120 = _1118.y;
                            float _1122 = _1118.z;
                            int _1154;
                            if ((_1119 > _1120) && (_1119 > _1122))
                            {
                                _1154 = int((_1117.x > 0.0f) ? (_1114 >> 24u) : ((_1114 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1146;
                                if (_1120 > _1122)
                                {
                                    _1146 = int((_1117.y > 0.0f) ? ((_1114 >> 8u) & 255u) : (_1114 & 255u));
                                }
                                else
                                {
                                    _1146 = int((_1117.z > 0.0f) ? ((_1116 >> 8u) & 255u) : (_1116 & 255u));
                                }
                                _1154 = _1146;
                            }
                            _1159 = (_1154 < 80) ? _1154 : (-1);
                        }
                        float _1413;
                        do
                        {
                            if (_35_m2[_1159].y > 0u)
                            {
                                uint _1177 = uint(_1159);
                                float4 _381 = _766;
                                float _1188;
                                do
                                {
                                    if (_35_m2[_1177].y == 0u)
                                    {
                                        _1188 = 1.0f;
                                        break;
                                    }
                                    _1188 = _381[_35_m2[_1177].y - 1u];
                                    break;
                                } while(false);
                                _1413 = _1188;
                                break;
                            }
                            float4 _1195 = mul(_33_m10[_1159], float4((_466 - ((-_946) * _33_m11[_1159].x)) + (_435 * (_33_m11[_1159].y * 5.0f)), 1.0f));
                            float _1196 = _1195.w;
                            float3 _1199 = _1195.xyz / _1196.xxx;
                            float2 _1200 = _1199.xy;
                            float3 _1208 = _1199.xyz;
                            bool3 _1209 = bool3(_1208.x <= 0.0f.xxx.x, _1208.y <= 0.0f.xxx.y, _1208.z <= 0.0f.xxx.z);
                            bool3 _1210 = bool3(_1208.x >= 1.0f.xxx.x, _1208.y >= 1.0f.xxx.y, _1208.z >= 1.0f.xxx.z);
                            float _1213 = _1199.z;
                            float2 _1224 = ((_1200 * (_33_m12[_1159].zw - _33_m12[_1159].xy)) + _33_m12[_1159].xy).xy * _33_m13.zw;
                            float2 _1226 = floor(_1224 + 0.5f.xx);
                            float2 _1227 = _1224 - _1226;
                            float _1228 = _1227.x;
                            float _1229 = _1228 + 0.5f;
                            float _1230 = _1229 * _1229;
                            float _1233 = 1.0f - _1228;
                            float _1234 = min(_1228, 0.0f);
                            float _1237 = _1228 + 1.0f;
                            float _1238 = max(_1228, 0.0f);
                            float _1249 = _1227.y;
                            float _1250 = _1249 + 0.5f;
                            float _1251 = _1250 * _1250;
                            float _1254 = 1.0f - _1249;
                            float _1255 = min(_1249, 0.0f);
                            float _1258 = _1249 + 1.0f;
                            float _1259 = max(_1249, 0.0f);
                            float3 _1271 = float3(0.1599999964237213134765625f * _1233, 0.1599999964237213134765625f * ((_1237 - (_1238 * _1238)) + 1.0f), _1230 * 0.07999999821186065673828125f);
                            float3 _1272 = float3(0.1599999964237213134765625f * ((_1230 * 0.5f) - _1228), 0.1599999964237213134765625f * ((_1233 - (_1234 * _1234)) + 1.0f), 0.1599999964237213134765625f * _1237) + _1271;
                            float3 _1274 = float3(0.1599999964237213134765625f * _1254, 0.1599999964237213134765625f * ((_1258 - (_1259 * _1259)) + 1.0f), _1251 * 0.07999999821186065673828125f);
                            float3 _1275 = float3(0.1599999964237213134765625f * ((_1251 * 0.5f) - _1249), 0.1599999964237213134765625f * ((_1254 - (_1255 * _1255)) + 1.0f), 0.1599999964237213134765625f * _1258) + _1274;
                            float3 _1281 = ((_1271 / _1272) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.xxx;
                            float3 _1283 = ((_1274 / _1275) + float3(-2.5f, -0.5f, 1.5f)) * _33_m13.yyy;
                            float2 _1285 = _1226 * _33_m13.xy;
                            float _1286 = _1281.x;
                            float _1287 = _1283.x;
                            float2 _1289 = _1285 + float2(_1286, _1287);
                            float _1290 = _1281.y;
                            float2 _1292 = _1285 + float2(_1290, _1287);
                            float _1293 = _1281.z;
                            float2 _1295 = _1285 + float2(_1293, _1287);
                            float _1296 = _1283.y;
                            float2 _1298 = _1285 + float2(_1286, _1296);
                            float2 _1300 = _1285 + float2(_1290, _1296);
                            float2 _1302 = _1285 + float2(_1293, _1296);
                            float _1303 = _1283.z;
                            float2 _1305 = _1285 + float2(_1286, _1303);
                            float2 _1307 = _1285 + float2(_1290, _1303);
                            float2 _1309 = _1285 + float2(_1293, _1303);
                            float _1310 = _1272.x;
                            float _1311 = _1275.x;
                            float _1313 = _1272.y;
                            float _1315 = _1272.z;
                            float _1317 = _1275.y;
                            float _1321 = _1275.z;
                            float _1387 = ((((((((_1310 * _1311) * _36.SampleCmpLevelZero(_16, float3(_1289, _371).xy, _1213)) + ((_1313 * _1311) * _36.SampleCmpLevelZero(_16, float3(_1292, _371).xy, _1213))) + ((_1315 * _1311) * _36.SampleCmpLevelZero(_16, float3(_1295, _371).xy, _1213))) + ((_1310 * _1317) * _36.SampleCmpLevelZero(_16, float3(_1298, _371).xy, _1213))) + ((_1313 * _1317) * _36.SampleCmpLevelZero(_16, float3(_1300, _371).xy, _1213))) + ((_1315 * _1317) * _36.SampleCmpLevelZero(_16, float3(_1302, _371).xy, _1213))) + ((_1310 * _1321) * _36.SampleCmpLevelZero(_16, float3(_1305, _371).xy, _1213))) + ((_1313 * _1321) * _36.SampleCmpLevelZero(_16, float3(_1307, _371).xy, _1213));
                            float2 _1400 = min(_1200, 1.0f.xx - _1200);
                            _1413 = lerp(1.0f, (any(bool3(_1209.x || _1210.x, _1209.y || _1210.y, _1209.z || _1210.z)) || ((asuint(_1213) & 2147483647u) > 2139095040u)) ? 1.0f : (_1387 + ((_1315 * _1321) * _36.SampleCmpLevelZero(_16, float3(_1309, _371).xy, _1213))), _959 ? min(_33_m11[_1159].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_33_m11[_1159].z - _1196) * 0.25f, min(_1400.x, _1400.y)))) : _33_m11[_1159].w);
                            break;
                        } while(false);
                        _1415 = (_1159 >= 0) ? _1413 : 1.0f;
                    }
                    else
                    {
                        _1415 = 1.0f;
                    }
                    _1416 = _1415;
                    break;
                } while(false);
                _2088 = _772 * _1416;
                _2089 = 0.0f.xxx;
            }
            _794 = _2088;
            _797 = _796 + _2089;
        }
        _769 = _768 + _796;
    }
    float3 _2093 = _737.xyz + (_768 * _771);
    float3 _2095 = _402.xxx;
    float3 _2130;
    float3 _2131;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2106 = min(_21.SampleBias(_12, _4, _9_m16).x, _402);
        _2130 = clamp((pow(abs(_536 + _2106), exp2(((-16.0f) * _526) - 1.0f)) - 1.0f) + _2106, 0.0f, 1.0f).xxx;
        _2131 = max(_2106.xxx, ((((((_530 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2106) + ((_530 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2106) + ((_530 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2106);
    }
    else
    {
        _2130 = _2095;
        _2131 = _2095;
    }
    _2093 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2130 : 1.0f.xxx;
    float3 _2154;
    do
    {
        [branch]
        if (((_413 > 0u) && (_413 <= 15u)) && (_438 > 0.0f))
        {
            uint _2142 = clamp(_413 - 1u, 0u, 14u);
            _2154 = _43.SampleLevel(_13, float3(_438 * _45_m0[_2142].w, 0.5f, float(_2142)), 0.0f).xyz;
            break;
        }
        _2154 = 1.0f.xxx;
        break;
    } while(false);
    float3 _2171 = (_466 + (_435 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_441 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2181 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2190 = _2171 - (_9_m105.xyz + (_2181 * (-_9_m107.w)));
    float _2204 = max(clamp((max(abs(_2190.x), abs(_2190.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2190.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2506;
    float4 _2507;
    float4 _2508;
    float _2509;
    float _2510;
    if ((_9_m105.w != 0.0f) && (_2204 < 1.0f))
    {
        float3 _2217 = _2171 - (_9_m105.xyz + (_2181 * (-_9_m107.y)));
        float _2231 = max(clamp((max(abs(_2217.x), abs(_2217.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2217.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _2307;
        float4 _2308;
        float4 _2309;
        float4 _2310;
        if (_2231 < 1.0f)
        {
            float3 _2240 = ((_2171 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2242 = _2240 - floor(_2240);
            float4 _2246 = _57.SampleLevel(_14, _2242, 0.0f);
            float _2247 = 1.0f - _2231;
            float _2251 = _9_m106.y * 0.5f;
            float _2256 = _2242.x;
            float _2257 = clamp(_2242.y, _2251, 1.0f - _2251) * 0.3333333432674407958984375f;
            float _2258 = _2242.z;
            float4 _2261 = _58.SampleLevel(_13, float3(_2256, _2257, _2258), 0.0f);
            float _2277 = _2246.x;
            float _2287 = _2246.y;
            float _2297 = _2246.z;
            _2307 = _2204 + (_2261.w * _2247);
            _2308 = float4(((_58.SampleLevel(_13, float3(_2256, _2257 + 0.666666686534881591796875f, _2258), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2297, _2297) * _2247;
            _2309 = float4(((_58.SampleLevel(_13, float3(_2256, _2257 + 0.3333333432674407958984375f, _2258), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2287, _2287) * _2247;
            _2310 = float4(((_2261.xyz * 4.0f) - 2.0f.xxx) * _2277, _2277) * _2247;
        }
        else
        {
            _2307 = _2204;
            _2308 = 0.0f.xxxx;
            _2309 = 0.0f.xxxx;
            _2310 = 0.0f.xxxx;
        }
        float3 _2316 = _2171 - (_9_m105.xyz + (_2181 * (-_9_m107.z)));
        float _2330 = max(clamp((max(abs(_2316.x), abs(_2316.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2316.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _2410;
        float4 _2411;
        float4 _2412;
        float4 _2413;
        if (_2330 < 1.0f)
        {
            float3 _2339 = ((_2171 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2341 = _2339 - floor(_2339);
            float4 _2345 = _59.SampleLevel(_14, _2341, 0.0f);
            float _2347 = _2231 * (1.0f - _2330);
            float _2351 = _9_m106.y * 0.5f;
            float _2356 = _2341.x;
            float _2357 = clamp(_2341.y, _2351, 1.0f - _2351) * 0.3333333432674407958984375f;
            float _2358 = _2341.z;
            float4 _2361 = _60.SampleLevel(_13, float3(_2356, _2357, _2358), 0.0f);
            float _2377 = _2345.x;
            float _2388 = _2345.y;
            float _2399 = _2345.z;
            _2410 = _2307 + (_2361.w * _2347);
            _2411 = _2308 + (float4(((_60.SampleLevel(_13, float3(_2356, _2357 + 0.666666686534881591796875f, _2358), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2399, _2399) * _2347);
            _2412 = _2309 + (float4(((_60.SampleLevel(_13, float3(_2356, _2357 + 0.3333333432674407958984375f, _2358), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2388, _2388) * _2347);
            _2413 = _2310 + (float4(((_2361.xyz * 4.0f) - 2.0f.xxx) * _2377, _2377) * _2347);
        }
        else
        {
            _2410 = _2307;
            _2411 = _2308;
            _2412 = _2309;
            _2413 = _2310;
        }
        float4 _2496;
        float4 _2497;
        float4 _2498;
        float _2499;
        if (_2330 > 0.0f)
        {
            float3 _2422 = ((_2171 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _2425 = _9_m106.xyz * 0.5f;
            float3 _2427 = clamp(_2422 - floor(_2422), _2425, 1.0f.xxx - _2425);
            float4 _2431 = _61.SampleLevel(_14, _2427, 0.0f);
            float _2433 = _2330 * (1.0f - _2204);
            float _2437 = _9_m106.y * 0.5f;
            float _2442 = _2427.x;
            float _2443 = clamp(_2427.y, _2437, 1.0f - _2437) * 0.3333333432674407958984375f;
            float _2444 = _2427.z;
            float4 _2447 = _62.SampleLevel(_13, float3(_2442, _2443, _2444), 0.0f);
            float _2463 = _2431.x;
            float _2474 = _2431.y;
            float _2485 = _2431.z;
            _2496 = _2411 + (float4(((_62.SampleLevel(_13, float3(_2442, _2443 + 0.666666686534881591796875f, _2444), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2485, _2485) * _2433);
            _2497 = _2412 + (float4(((_62.SampleLevel(_13, float3(_2442, _2443 + 0.3333333432674407958984375f, _2444), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2474, _2474) * _2433);
            _2498 = _2413 + (float4(((_2447.xyz * 4.0f) - 2.0f.xxx) * _2463, _2463) * _2433);
            _2499 = _2410 + (_2447.w * _2433);
        }
        else
        {
            _2496 = _2411;
            _2497 = _2412;
            _2498 = _2413;
            _2499 = _2410;
        }
        float _2502 = clamp((_2499 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _2506 = _2496;
        _2507 = _2497;
        _2508 = _2498;
        _2509 = _2502 - _2204;
        _2510 = (_2502 + _2204) * 0.5f;
    }
    else
    {
        _2506 = 0.0f.xxxx;
        _2507 = 0.0f.xxxx;
        _2508 = 0.0f.xxxx;
        _2509 = 0.0f;
        _2510 = 1.0f;
    }
    float4 _2530 = _2508 + float4(_9_m108.x * _2510, (_9_m108.y * _2510) + ((_9_m108.w * _2509) * 0.5f), _9_m108.z * _2510, (_9_m108.w * _2510) + ((_9_m108.y * _2509) * 0.375f));
    float4 _2550 = _2507 + float4(_9_m109.x * _2510, (_9_m109.y * _2510) + ((_9_m109.w * _2509) * 0.5f), _9_m109.z * _2510, (_9_m109.w * _2510) + ((_9_m109.y * _2509) * 0.375f));
    float4 _2570 = _2506 + float4(_9_m110.x * _2510, (_9_m110.y * _2510) + ((_9_m110.w * _2509) * 0.5f), _9_m110.z * _2510, (_9_m110.w * _2510) + ((_9_m110.y * _2509) * 0.375f));
    float4 _2728;
    float4 _2729;
    float4 _2730;
    [branch]
    if (all(bool2(_454.x >= 0.0f.xx.x, _454.y >= 0.0f.xx.y)))
    {
        float4 _2578 = _56.SampleLevel(_13, _454, 0.0f);
        float4 _2579 = abs(_2578);
        float4 _2725;
        float4 _2726;
        float4 _2727;
        [branch]
        if (any(bool4(_2579.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2579.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2579.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2579.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _2585 = length(_2578.yzw);
            uint _2587;
            float _2590;
            _2587 = 0u;
            _2590 = 1.0f;
            for (float _2592 = _2585; _2592 > 4.599999904632568359375f; )
            {
                _2587++;
                _2590 *= 0.5f;
                _2592 *= 0.5f;
                continue;
            }
            float4 _2596 = _2578 * _2590;
            float4 _2601 = float4(0.0f, _2596.yzw);
            float2 _2623 = (_55.SampleLevel(_13, float2(((((length(_2601) * _54_m3.x) + _54_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _54_m2.xy) + _54_m2.zw;
            float4 _2637;
            _2637 = float4(_2623.x * 3.5449078083038330078125f, _2601.yzw * _2623.y) * exp(_2596.x * 0.282094776630401611328125f);
            for (uint _2640 = 0u; _2640 < _2587; )
            {
                _2637 = mul(float4x4(_2637, float4(_2637.yx, 0.0f, 0.0f), float4(_2637.z, 0.0f, _2637.x, 0.0f), float4(_2637.w, 0.0f, 0.0f, _2637.x)) * 0.282094776630401611328125f, _2637);
                _2640++;
                continue;
            }
            float4x4 _2661 = float4x4(_2637, float4(_2637.yx, 0.0f, 0.0f), float4(_2637.z, 0.0f, _2637.x, 0.0f), float4(_2637.w, 0.0f, 0.0f, _2637.x)) * 0.282094776630401611328125f;
            float4 _2671 = mul(_2661, float4(_2530.w * 1.1283791065216064453125f, _2530.y * (-0.977204978466033935546875f), _2530.z * 0.977204978466033935546875f, _2530.x * (-0.977204978466033935546875f)));
            float4 _2691 = mul(_2661, float4(_2550.w * 1.1283791065216064453125f, _2550.y * (-0.977204978466033935546875f), _2550.z * 0.977204978466033935546875f, _2550.x * (-0.977204978466033935546875f)));
            float4 _2711 = mul(_2661, float4(_2570.w * 1.1283791065216064453125f, _2570.y * (-0.977204978466033935546875f), _2570.z * 0.977204978466033935546875f, _2570.x * (-0.977204978466033935546875f)));
            _2725 = float4(_2671.x * 0.886226952075958251953125f, _2671.w * (-1.02332675457000732421875f), _2671.y * (-1.02332675457000732421875f), _2671.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2726 = float4(_2691.x * 0.886226952075958251953125f, _2691.w * (-1.02332675457000732421875f), _2691.y * (-1.02332675457000732421875f), _2691.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _2727 = float4(_2711.x * 0.886226952075958251953125f, _2711.w * (-1.02332675457000732421875f), _2711.y * (-1.02332675457000732421875f), _2711.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _2725 = _2530;
            _2726 = _2550;
            _2727 = _2570;
        }
        _2728 = _2725;
        _2729 = _2726;
        _2730 = _2727;
    }
    else
    {
        _2728 = _2530;
        _2729 = _2550;
        _2730 = _2570;
    }
    float _2737 = max(0.0f, dot(_2728.xyz * _2154.x, _435) + _2728.w);
    float _2744 = max(0.0f, dot(_2729.xyz * _2154.y, _435) + _2729.w);
    float _2751 = max(0.0f, dot(_2730.xyz * _2154.z, _435) + _2730.w);
    float3 _2761 = reflect(_494, _435);
    float _2769 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_526, 0.001000000047497451305389404296875f))));
    float2 _2773 = floor(_441 * _27_m0.w);
    float _2790 = floor(_473 - _27_m2.y);
    float _2794 = clamp(_2790, 0.0f, _27_m1.x - 1.0f);
    uint _2804 = (_2790 <= _2794) ? (_24.Load(uint(_9_m21.z + int(_2773.x + (_2773.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_2794)) * 4 + 0)) : 0u;
    float _2807 = dot(float4(_2737, _2744, _2751, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2809;
    float _2812;
    uint _2814;
    _2809 = 0.0f.xxx;
    _2812 = 1.0f;
    _2814 = _2804;
    uint _2815;
    float3 _2810;
    float _2813;
    bool _2817;
    [loop]
    for (;;)
    {
        _2817 = _2812 > 0.00999999977648258209228515625f;
        if ((_2814 != 0u) && _2817)
        {
            uint _2821 = firstbitlow(_2814);
            _2815 = _2814 ^ (1u << (_2821 & 31u));
            float3 _2841 = float3(dot(_27_m4[_2821]._m2, _470), dot(_27_m4[_2821]._m3, _470), dot(_27_m4[_2821]._m4, _470));
            float3 _2842 = abs(_2841);
            if (all(bool3(_2842.x <= _27_m4[_2821]._m1.xyz.x, _2842.y <= _27_m4[_2821]._m1.xyz.y, _2842.z <= _27_m4[_2821]._m1.xyz.z)))
            {
                float3 _2851 = _27_m4[_2821]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2853 = _2842 * 0.100000001490116119384765625f;
                float3 _2854 = _2853 * _2853;
                float3 _2857 = (_27_m4[_2821]._m1.xyz - _2842) * _27_m4[_2821]._m5.xyz;
                float3 _2905;
                [branch]
                if (_27_m4[_2821]._m6.x == 1.0f)
                {
                    float3 _2890 = float3(dot(_27_m4[_2821]._m2.xyz, _2761), dot(_27_m4[_2821]._m3.xyz, _2761), dot(_27_m4[_2821]._m4.xyz, _2761));
                    float3 _2892 = (_27_m4[_2821]._m1.xyz - _2841) / _2890;
                    float3 _2895 = ((-_27_m4[_2821]._m1.xyz) - _2841) / _2890;
                    bool3 _2896 = bool3(_2890.x > 0.0f.xxx.x, _2890.y > 0.0f.xxx.y, _2890.z > 0.0f.xxx.z);
                    float3 _2897 = float3(_2896.x ? _2892.x : _2895.x, _2896.y ? _2892.y : _2895.y, _2896.z ? _2892.z : _2895.z);
                    _2905 = _2841 + (_2890 * min(min(_2897.x, _2897.y), _2897.z));
                }
                else
                {
                    _2905 = _2761;
                }
                float3 _2906 = normalize(_2905);
                float3 _2909 = float3(int3(sign(_2906)));
                float3 _2912 = _2906 / dot(_2906, _2909).xxx;
                float3 _2926;
                if (_2912.z < 0.0f)
                {
                    float3 _2917 = abs(_2912);
                    float2 _2924 = _2909.xy * float2(1.0f - _2917.y, 1.0f - _2917.x);
                    _2926 = float3(_2924.x, _2924.y, _2912.z);
                }
                else
                {
                    _2926 = _2912;
                }
                float _2951 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2821]._m0, float4(_435, 1.0f))));
                float _2964 = clamp((min(_2857.x, min(_2857.y, _2857.z)) * _27_m4[_2821]._m6.y) + ((((((_2851 * _2851).x - ((_2854.x + _2854.y) + _2854.z)) * _27_m4[_2821]._m5.x) * _27_m4[_2821]._m5.x) * (1.0f - _27_m4[_2821]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2821]._m6.w;
                _2810 = _2809 + ((((_22.SampleLevel(_15, float3((((_2926.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2821]._m1.w), _2769).xyz * _27_m4[_2821]._m5.w) * ((((((clamp(abs(_2807 / _2951), 0.0f, 1.0f) * 2.0f) + _2807) / (2.0f + _2951)) - 1.0f) * _9_m23.w) + 1.0f)) * _2964) * _2812);
                _2813 = _2812 * (1.0f - _2964);
            }
            else
            {
                _2810 = _2809;
                _2813 = _2812;
            }
            _2809 = _2810;
            _2812 = _2813;
            _2814 = _2815;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _3033;
    if (_2817)
    {
        float3 _2972 = normalize(_2761);
        float3 _2975 = float3(int3(sign(_2972)));
        float3 _2978 = _2972 / dot(_2972, _2975).xxx;
        float3 _2992;
        if (_2978.z < 0.0f)
        {
            float3 _2983 = abs(_2978);
            float2 _2990 = _2975.xy * float2(1.0f - _2983.y, 1.0f - _2983.x);
            _2992 = float3(_2990.x, _2990.y, _2978.z);
        }
        else
        {
            _2992 = _2978;
        }
        float _3019 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_435, 1.0f))));
        _3033 = _2809 + ((_22.SampleLevel(_15, float3((((_2992.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _2769).xyz * ((((((clamp(abs(_2807 / _3019), 0.0f, 1.0f) * 2.0f) + _2807) / (2.0f + _3019)) - 1.0f) * _9_m23.w) + 1.0f)) * _2812);
    }
    else
    {
        _3033 = _2809;
    }
    float3 _3039 = (_3033 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _3039 *= 0.25f + (0.75f * saturate(_2807));
    }
    float3 _3060;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _3054 = _20.SampleBias(_13, _4, _9_m16);
        float _3055 = _3054.x;
        _3060 = (_19.SampleBias(_13, _4, _9_m16).xyz * _3055) + (_3039 * (1.0f - _3055));
    }
    else
    {
        _3060 = _3039;
    }
    float3 _3063 = (((float3(_2737, _2744, _2751) * _530) * _9_m22.x) * _2131) + ((_3060 * (_559 + ((_534 * ((1.0f - _560) / _560)) * _559))) * _2130);
    float4 _3065 = float4(_2093.x, _2093.y, _2093.z, _737.w) + float4(_3063.x, _3063.y, _3063.z, 0.0f.xxxx.w);
    float _3083 = _466.y * _9_m46.w;
    float _3088 = max(0.00999999977648258209228515625f, _3083 + _9_m47.w);
    float3 _3102 = exp(_9_m45.xyz * ((-max(0.0f, (_493 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_3088)) / _3088) * exp(_3083 + _9_m48.w))));
    float _3105 = dot(_494, _9_m44.xyz);
    float _3111 = _9_m45.w * _9_m45.w;
    float _3115 = (1.0f + _3111) - ((2.0f * _9_m45.w) * _3105);
    float3 _3443;
    float _3444;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3269 = (uint3(int3(_391, _392, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3270 = _3269.y;
        uint _3271 = _3269.z;
        uint _3274 = _3269.x + (_3270 * _3271);
        uint _3276 = _3270 + (_3271 * _3274);
        uint _3278 = _3271 + (_3274 * _3276);
        uint _3280 = _3274 + (_3276 * _3278);
        float _3304 = dot(_494, -_7_m0[2].xyz);
        float3 _3314 = _466 - _7_m11.xyz;
        float _3316 = (_9_m55.w * ((_3304 > 5.9604644775390625e-08f) ? (1.0f / _3304) : 0.0f)) * (1.0f / _493);
        float _3317 = _3314.y;
        float _3318 = _3316 * _3317;
        float _3320 = _7_m11.y + _3318;
        float _3321 = _3317 - _3318;
        float _3323 = (1.0f - _3316) * _493;
        float _3337 = max(-127.0f, _9_m49.z * _3321);
        float _3361 = max(-127.0f, _9_m52.x * _3321);
        float _3372 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3320 - _9_m49.x)))) * ((abs(_3337) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3337)) / _3337) : (0.693147182464599609375f - (0.2402265071868896484375f * _3337)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3320 - _9_m52.z)))) * ((abs(_3361) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3361)) / _3361) : (0.693147182464599609375f - (0.2402265071868896484375f * _3361))));
        float _3394 = clamp((_493 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3397 = clamp((max(clamp(exp2(-(_3372 * _3323)), 0.0f, 1.0f), _9_m51.w) + clamp((_493 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3394, 0.0f, 1.0f);
        float4 _3437 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _52.SampleLevel(_13, float3((_441 + ((((float3(uint3(_3280, _3276 + (_3278 * _3280), _375) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_473 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_473 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3439 = _3437.w;
        _3443 = _3437.xyz + (((_9_m51.xyz * (1.0f - _3397)) + (((_9_m54.xyz * pow(clamp(dot(_492, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3372 * max(_3323 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3394))) * _3439);
        _3444 = _3439 * _3397;
    }
    else
    {
        float3 _3145 = _466 - _7_m11.xyz;
        float _3147 = _3145.y;
        float _3161 = max(-127.0f, _9_m49.z * _3147);
        float _3185 = max(-127.0f, _9_m52.x * _3147);
        float _3196 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3161) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3161)) / _3161) : (0.693147182464599609375f - (0.2402265071868896484375f * _3161)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3185) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3185)) / _3185) : (0.693147182464599609375f - (0.2402265071868896484375f * _3185))));
        float _3218 = clamp((_493 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3221 = clamp((max(clamp(exp2(-(_3196 * _493)), 0.0f, 1.0f), _9_m51.w) + clamp((_493 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3218, 0.0f, 1.0f);
        _3443 = (_9_m51.xyz * (1.0f - _3221)) + (((_9_m54.xyz * pow(clamp(dot(_492, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3196 * max(_493 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3218));
        _3444 = _3221;
    }
    float3 _3447 = _3102 * _3444;
    float3 _3449 = (clamp(_3065.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3447) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3105 * _3105)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _3111) / max((12.56637096405029296875f * _3115) * sqrt(_3115), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3102)) * _3444) + _3443);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3449 = (_3449 * 0.65f) + (clamp(_3065.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _3451 = float4(_3449.x, _3449.y, _3449.z, _3065.w);
    _3451.w = dot(_3447, 0.3333333432674407958984375f.xxx);
    _5 = _3451;
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
