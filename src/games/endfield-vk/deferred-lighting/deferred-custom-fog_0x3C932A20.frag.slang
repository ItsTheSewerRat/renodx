// DX11 0xBE1C389F -> Vulkan 0x3C932A20
struct _29
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

static float _385 = 0.0f;
static uint _389 = 0u;

static const int2 _356[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _357[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

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

[[vk::binding(43, 3)]]
cbuffer _8_9 : register(b43)
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

[[vk::binding(38, 3)]]
cbuffer _10_11 : register(b38)
{
    float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(47, 3)]] ByteAddressBuffer _27 : register(t47);
[[vk::binding(44, 3)]]
cbuffer _28_30 : register(b44)
{
    float4 _30_m0 : packoffset(c0);
    float4 _30_m1 : packoffset(c1);
    float4 _30_m2 : packoffset(c2);
    float4 _30_m3 : packoffset(c3);
    _29 _30_m4[32] : packoffset(c4);
};

[[vk::binding(40, 3)]]
cbuffer _31_32 : register(b40)
{
    int _32_m0 : packoffset(c0);
    int _32_m1 : packoffset(c0.y);
    int _32_m2 : packoffset(c0.z);
    int _32_m3 : packoffset(c0.w);
    float _32_m4 : packoffset(c1);
    float _32_m5 : packoffset(c1.y);
    float _32_m6 : packoffset(c1.z);
    float _32_m7 : packoffset(c1.w);
    float _32_m8 : packoffset(c2);
    float _32_m9 : packoffset(c2.y);
    float _32_m10 : packoffset(c2.z);
    float _32_m11 : packoffset(c2.w);
};

[[vk::binding(39, 3)]]
cbuffer _33_34 : register(b39)
{
    float4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c1);
    float4 _34_m2 : packoffset(c2);
    float4 _34_m3 : packoffset(c3);
    float4 _34_m4 : packoffset(c4);
    uint4 _34_m5 : packoffset(c5);
    float4 _34_m6[2048] : packoffset(c6);
};

[[vk::binding(42, 3)]]
cbuffer _35_36 : register(b42)
{
    column_major float4x4 _36_m0[5] : packoffset(c0);
    float4 _36_m1[4] : packoffset(c20);
    float4 _36_m2[4] : packoffset(c24);
    float4 _36_m3[4] : packoffset(c28);
    float4 _36_m4 : packoffset(c32);
    float4 _36_m5 : packoffset(c33);
    float4 _36_m6 : packoffset(c34);
    float4 _36_m7 : packoffset(c35);
    float4 _36_m8 : packoffset(c36);
    float4 _36_m9[27] : packoffset(c37);
    column_major float4x4 _36_m10[56] : packoffset(c64);
    float4 _36_m11[56] : packoffset(c288);
    float4 _36_m12[56] : packoffset(c344);
    float4 _36_m13 : packoffset(c400);
    float4 _36_m14[47] : packoffset(c401);
    column_major float4x4 _36_m15[15] : packoffset(c448);
    float4 _36_m16[15] : packoffset(c508);
    float4 _36_m17[15] : packoffset(c523);
    float4 _36_m18[15] : packoffset(c538);
    float4 _36_m19 : packoffset(c553);
    float4 _36_m20 : packoffset(c554);
    float4 _36_m21[21] : packoffset(c555);
    column_major float4x4 _36_m22 : packoffset(c576);
    column_major float4x4 _36_m23 : packoffset(c580);
    float4 _36_m24 : packoffset(c584);
    float4 _36_m25 : packoffset(c585);
    float4 _36_m26 : packoffset(c586);
    float4 _36_m27[128] : packoffset(c587);
};

[[vk::binding(46, 3)]]
cbuffer _37_38 : register(b46)
{
    column_major float4x4 _38_m0[32] : packoffset(c0);
    float4 _38_m1[32] : packoffset(c128);
    uint4 _38_m2[56] : packoffset(c160);
    int4 _38_m3 : packoffset(c216);
    float4 _38_m4 : packoffset(c217);
    float4 _38_m5[4] : packoffset(c218);
    float4 _38_m6 : packoffset(c222);
};

[[vk::binding(35, 3)]]
cbuffer _44_45 : register(b35)
{
    column_major float4x4 _45_m0 : packoffset(c0);
    float4 _45_m1 : packoffset(c4);
};

[[vk::binding(37, 3)]]
cbuffer _51_52 : register(b37)
{
    float4 _52_m0[15] : packoffset(c0);
    float4 _52_m1[15] : packoffset(c15);
};

[[vk::binding(45, 3)]]
cbuffer _55_56 : register(b45)
{
    float4 _56_m0[32] : packoffset(c0);
    column_major float4x4 _56_m1[32] : packoffset(c32);
};

[[vk::binding(41, 3)]]
cbuffer _60_61 : register(b41)
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

[[vk::binding(1, 3)]] SamplerState _14 : register(s1);
[[vk::binding(4, 3)]] SamplerState _15 : register(s4);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0);
[[vk::binding(5, 3)]] SamplerComparisonState _18 : register(s5);
[[vk::binding(3, 3)]] SamplerComparisonState _19 : register(s3);
[[vk::binding(32, 3)]] Texture2D<float4> _21 : register(t32);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _23 : register(t13);
[[vk::binding(26, 3)]] Texture2D<float4> _24 : register(t26);
[[vk::binding(14, 3)]] Texture2DArray<float4> _25 : register(t14);
[[vk::binding(16, 3)]] Texture2D<float4> _39 : register(t16);
[[vk::binding(11, 3)]] Texture2D<float4> _40 : register(t11);
[[vk::binding(27, 3)]] Texture2D<float4> _41 : register(t27);
[[vk::binding(33, 3)]] Texture2D<float4> _42 : register(t33);
[[vk::binding(8, 3)]] Texture2D<float4> _43 : register(t8);
[[vk::binding(15, 3)]] Texture3D<float4> _47 : register(t15);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17);
[[vk::binding(9, 3)]] Texture2DArray<float4> _49 : register(t9);
[[vk::binding(10, 3)]] Texture2DArray<float4> _50 : register(t10);
[[vk::binding(31, 3)]] Texture2D<float4> _53 : register(t31);
[[vk::binding(18, 3)]] Texture2D<float4> _54 : register(t18);
[[vk::binding(25, 3)]] Texture3D<float4> _59 : register(t25);
[[vk::binding(34, 3)]] Texture2D<float4> _62 : register(t34);
[[vk::binding(7, 3)]] Texture2D<float4> _63 : register(t7);
[[vk::binding(24, 3)]] Texture3D<float4> _64 : register(t24);
[[vk::binding(21, 3)]] Texture3D<float4> _65 : register(t21);
[[vk::binding(23, 3)]] Texture3D<float4> _66 : register(t23);
[[vk::binding(20, 3)]] Texture3D<float4> _67 : register(t20);
[[vk::binding(22, 3)]] Texture3D<float4> _68 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _69 : register(t19);
[[vk::binding(6, 3)]] Texture2D<float4> _70 : register(t6);
[[vk::binding(30, 3)]] Texture2D<float4> _71 : register(t30);
[[vk::binding(29, 3)]] Texture2D<float4> _72 : register(t29);
[[vk::binding(28, 3)]] Texture2D<float4> _73 : register(t28);

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
    uint2 _402 = uint2(gl_FragCoord.xy);
    int _405 = int(_402.x);
    int _406 = int(_402.y);
    int2 _408 = int3(_405, _406, 0).xy;
    float4 _410 = _71.Load(int3(_408, 0));
    float4 _412 = _72.Load(int3(_408, 0));
    float4 _414 = _73.Load(int3(_408, 0));
    uint _418 = uint(round(_414.w * 255.0f));
    float3 _524;
    float3 _525;
    float _526;
    float _527;
    float _528;
    float _529;
    float _530;
    float _531;
    float3 _532;
    uint _533;
    float _534;
    bool _535;
    [branch]
    if ((_418 & 128u) != 0u)
    {
        float2 _466 = (_410.xy * 2.0f) - 1.0f.xx;
        float _470 = 1.0f - dot(1.0f.xx, abs(_466));
        float3 _472 = float3(_466.x, _470, _466.y);
        float3 _484;
        if (_470 < 0.0f)
        {
            float2 _479 = _472.xz;
            bool2 _480 = bool2(_479.x >= 0.0f.xx.x, _479.y >= 0.0f.xx.y);
            float2 _482 = (1.0f.xx - abs(_472.zx)) * float2(_480.x ? 1.0f.xx.x : (-1.0f).xx.x, _480.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _484 = float3(_482.x, _472.y, _482.y);
        }
        else
        {
            _484 = _472;
        }
        float2 _489 = (_412.xy * 2.0f) - 1.0f.xx;
        float _493 = 1.0f - dot(1.0f.xx, abs(_489));
        float3 _495 = float3(_489.x, _493, _489.y);
        float3 _507;
        if (_493 < 0.0f)
        {
            float2 _502 = _495.xz;
            bool2 _503 = bool2(_502.x >= 0.0f.xx.x, _502.y >= 0.0f.xx.y);
            float2 _505 = (1.0f.xx - abs(_495.zx)) * float2(_503.x ? 1.0f.xx.x : (-1.0f).xx.x, _503.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _507 = float3(_505.x, _495.y, _505.y);
        }
        else
        {
            _507 = _495;
        }
        _524 = _414.xyz;
        _525 = normalize(_507);
        _526 = _412.z;
        _527 = _410.z;
        _528 = 0.0f;
        _529 = 0.0f;
        _530 = 0.0f;
        _531 = 0.0f;
        _532 = normalize(_484);
        _533 = uint(int((round(_410.w * 3.0f) * 4.0f) + round(_412.w * 3.0f)));
        _534 = float(_418 & 127u) * 0.0078740157186985015869140625f;
        _535 = true;
    }
    else
    {
        float2 _428 = (_412.xy * 2.0f) - 1.0f.xx;
        float _432 = 1.0f - dot(1.0f.xx, abs(_428));
        float3 _434 = float3(_428.x, _432, _428.y);
        float3 _446;
        if (_432 < 0.0f)
        {
            float2 _441 = _434.xz;
            bool2 _442 = bool2(_441.x >= 0.0f.xx.x, _441.y >= 0.0f.xx.y);
            float2 _444 = (1.0f.xx - abs(_434.zx)) * float2(_442.x ? 1.0f.xx.x : (-1.0f).xx.x, _442.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _446 = float3(_444.x, _434.y, _444.y);
        }
        else
        {
            _446 = _434;
        }
        uint _454 = clamp(_418 - 1u, 0u, 62u);
        bool4 _455 = ((_418 > 0u) && (_418 <= 63u)).xxxx;
        float4 _458 = float4(_455.x ? _11_m0[_454].x : 0.0f.xxxx.x, _455.y ? _11_m0[_454].y : 0.0f.xxxx.y, _455.z ? _11_m0[_454].z : 0.0f.xxxx.z, _455.w ? _11_m0[_454].w : 0.0f.xxxx.w);
        _524 = _414.xyz;
        _525 = normalize(_446);
        _526 = _412.z;
        _527 = _410.y;
        _528 = _458.y;
        _529 = _458.z;
        _530 = _458.x * _410.x;
        _531 = _458.w;
        _532 = 0.0f.xxx;
        _533 = _418;
        _534 = 0.0f;
        _535 = false;
    }
    float2 _538 = float2(_402);
    float2 _543 = (_538 + 0.5f.xx) * _9_m0.zw;
    float2 _551 = gl_FragCoord.xy * _9_m0.zw;
    float2 _553 = (_551 * 2.0f) - 1.0f.xx;
    float4 _556 = float4(_553, _21.SampleLevel(_14, _543, 0.0f).x, 1.0f);
    _556.y = -_553.y;
    float4 _559 = mul(_7_m6, _556);
    float3 _563 = _559.xyz / _559.w.xxx;
    float4 _567 = float4(_563, 1.0f);
    float _570 = abs(mul(_7_m0, _567).z);
    float3 _585;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _585 = _7_m11.xyz - _563;
            break;
        }
        else
        {
            _585 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _586 = dot(_585, _585);
    float _588 = rsqrt(max(_586, 9.9999999392252902907785028219223e-09f));
    float3 _589 = _585 * _588;
    float _590 = _586 * _588;
    float3 _591 = -_589;
    float2 _604;
    if (_9_m129.x > 0.00048828125f)
    {
        _604 = _70.SampleBias(_15, _4, _9_m16).xy;
    }
    else
    {
        _604 = 1.0f.xx;
    }
    float _605 = dot(_525, float3(0.0f, -1.0f, 0.0f));
    float3 _660;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _632 = abs(_525.x);
        float _634 = abs(_525.y);
        float _636 = abs(_525.z);
        float3 _641 = float3(_632, _634, _636) * (1.0f / ((_632 + _634) + _636));
        _660 = ((((float3(0.0f, 0.0f, 1.0f) * _641.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _641.y)) + (float3(1.0f, 0.0f, 0.0f) * _641.z)) * ((_47.SampleLevel(_16, _563 * _9_m124.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_605)));
    }
    else
    {
        _660 = 0.0f.xxx;
    }
    float4 _674 = mul(_45_m0, float4((_563 + ((((_525 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_605, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _605), 0.100000001490116119384765625f, 1.0f)))) + _660, 1.0f));
    float2 _677 = (_674.xy * 0.5f) + 0.5f.xx;
    float4 _678 = float4(_677.x, _677.y, _674.z, _674.w);
    _678.y = 1.0f - _677.y;
    float _699;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _699 = _43.SampleCmpLevelZero(_19, (_678.xy + _45_m1.xy).xy, max(_674.z, 0.00048828125f));
    }
    else
    {
        _699 = 1.0f;
    }
    float _704 = lerp(_9_m125.w, 1.0f, clamp(_525.y, 0.0f, 1.0f));
    float2 _713 = abs(_563.xz - _7_m11.xz);
    float _716 = max(_713.x, _713.y);
    float _734 = min(_604.x, _604.y);
    float2 _736 = _604 * (1.0f - lerp(lerp(_9_m125.z * _704, 1.0f, lerp(_704 * _699, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _716))), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _716)));
    float _737 = _736.x;
    float _738 = 1.0f - _526;
    float _746 = clamp(clamp((_738 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f), 0.0f, 1.0f);
    float _748 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _605);
    float _755 = lerp(1.0f, 0.25f, (_9_m117.x * _746) * _748);
    float _771 = (1.0f - lerp(_738, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _746) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_738)), 0.0f, 1.0f), _738, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _748) * (1.0f - _737))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
    float _776 = lerp(lerp(min(1.0f, _771), _771, _734), _526, _737);
    float3 _778 = _524 * lerp(lerp(min(1.0f, _755), _755, _734), 1.0f, _737);
    float _779 = dot(_525, _589);
    float _780 = max(0.0f, _779);
    float4 _782 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _776) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _783 = _782.x;
    float2 _793 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_783 * _783, exp2((-9.27999973297119140625f) * _780)) * _783) + _782.y)) + _782.zw;
    float3 _798 = (0.039999999105930328369140625f.xxx * _793.x) + _793.y.xxx;
    float4 _804 = _40.Load(int3(_408, 0));
    float _805 = _804.x;
    float4 _1116;
    if (_805 > 0.001000000047497451305389404296875f)
    {
        float3 _816 = reflect(_591, _525);
        float3 _817 = -_34_m0.xyz;
        float _822 = dot(_817, _816);
        float3 _824 = _816 - (_817 * _822);
        bool3 _826 = (_822 < _34_m4.z).xxx;
        float3 _834 = normalize((_817 * _34_m4.z) + ((_824 * rsqrt(max(6.103515625e-05f, dot(_824, _824)))) * _34_m4.y));
        float3 _835 = float3(_826.x ? _834.x : _816.x, _826.y ? _834.y : _816.y, _826.z ? _834.z : _816.z);
        float3 _839 = _835 + _589;
        float3 _843 = _839 * rsqrt(max(6.103515625e-05f, dot(_839, _839)));
        float _845 = clamp(dot(_835, _525), 0.0f, 1.0f);
        float _847 = clamp(dot(_525, _843), 0.0f, 1.0f);
        float _849 = clamp(dot(_589, _843), 0.0f, 1.0f);
        float _851 = clamp(_779, 0.0f, 1.0f);
        float3 _1025;
        float3 _1026;
        [branch]
        if (_535)
        {
            float _955 = _776 * _776;
            float _956 = _955 * _955;
            float _977 = (((_847 * _956) - _847) * _847) + 1.0f;
            float _980 = 1.0f - _849;
            float _981 = _980 * _980;
            float _983 = (_980 * _981) * _981;
            float _1007 = 1.0f - _776;
            float _1014 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1007 * (1.04997003078460693359375f + (_1007 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1007))))));
            float _1015 = 1.0f - _1014;
            _1025 = 0.0f.xxx;
            _1026 = min(((0.039999999105930328369140625f.xxx * (1.0f - _983)) + _983.xxx) * ((_956 / (_977 * _977)) * (0.5f / (((_845 * sqrt(((((-_851) * _956) + _851) * _851) + _956)) + (_851 * sqrt(((((-_845) * _956) + _845) * _845) + _956))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_851, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_845, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1014) / _1015)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _1015)));
        }
        else
        {
            float _855 = _776 * _776;
            float _856 = _855 * _855;
            float _877 = (((_847 * _856) - _847) * _847) + 1.0f;
            float _880 = 1.0f - _849;
            float _881 = _880 * _880;
            float _883 = (_880 * _881) * _881;
            float _907 = 1.0f - _776;
            float _914 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_907 * (1.04997003078460693359375f + (_907 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _907))))));
            float _915 = 1.0f - _914;
            float _938 = clamp(1.0f - _530, 0.0f, 1.0f);
            float _946 = clamp((dot(_525, _835) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            _1025 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_528, _529, _530).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _529.xxx) * _530) * lerp((_527 * lerp(1.0f, (_946 * sqrt(_946)) * 1.66666662693023681640625f, _938)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_589, _835), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _938));
            _1026 = min(((0.039999999105930328369140625f.xxx * (1.0f - _883)) + _883.xxx) * ((_856 / (_877 * _877)) * (0.5f / (((_845 * sqrt(((((-_851) * _856) + _851) * _851) + _856)) + (_851 * sqrt(((((-_845) * _856) + _845) * _845) + _856))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_851, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_845, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _914) / _915)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _915)));
        }
        float3 _1027 = _778 * 1.0f;
        float3 _1030 = clamp(_1026 * _34_m4.x, 0.0f.xxx, 1000.0f.xxx) * _845;
        float3 _1101;
        [branch]
        if (_535)
        {
            float3 _1096;
            do
            {
                [branch]
                if (((_533 > 0u) && (_533 <= 15u)) && (_534 > 0.0f))
                {
                    int _1049 = int(clamp(_533 - 1u, 0u, 14u));
                    float _1068 = _534 * _52_m0[_1049].w;
                    float _1073 = float(_1049);
                    _1096 = float3(_49.SampleLevel(_15, float3((dot(normalize(lerp(_525, _532, _52_m0[_1049].x.xxx)), _835) * 0.5f) + 0.5f, _1068, _1073), 0.0f).x, _49.SampleLevel(_15, float3((dot(normalize(lerp(_525, _532, _52_m0[_1049].y.xxx)), _835) * 0.5f) + 0.5f, _1068, _1073), 0.0f).y, _49.SampleLevel(_15, float3((dot(normalize(lerp(_525, _532, _52_m0[_1049].z.xxx)), _835) * 0.5f) + 0.5f, _1068, _1073), 0.0f).z);
                    break;
                }
                _1096 = _845.xxx;
                break;
            } while(false);
            _1101 = _34_m1.xyz * (((_1027 * _1096) + _1030) + _1025);
        }
        else
        {
            _1101 = ((_1030 + _1025) + (_1027 * _845)) * _34_m1.xyz;
        }
        float3 _1114 = lerp(_1101, _1101 * _42.SampleBias(_15, float2(_805, 0.5f), _9_m16).xyz, (1.0f - _805).xxx) * _53.SampleLevel(_15, _551, 0.0f).x;
        _1116 = float4(_1114.x, _1114.y, _1114.z, 0.0f.xxxx.w);
    }
    else
    {
        _1116 = 0.0f.xxxx;
    }
    float2 _1118 = floor(_538 * 0.03125f);
    int _1126 = int((_1118.x + (_1118.y * _32_m5)) * 8.0f);
    float _1133 = floor(_570 - (_9_m3.y * _32_m11));
    float _1137 = clamp(_1133, 0.0f, _32_m7 - 1.0f);
    int _1139 = int(_1137 * 8.0f);
    float4 _1145 = _41.SampleBias(_15, _543, _9_m16);
    float3 _1147;
    float _1150;
    _1147 = 0.0f.xxx;
    _1150 = 1.0f;
    float3 _1148;
    float _1151;
    [loop]
    for (int _1152 = 0; _1152 <= 7; _1147 = _1148, _1150 = _1151, _1152++)
    {
        uint _1170 = (_1133 <= _1137) ? (_27.Load(uint(_1126 + _1152) * 4 + 0) & _27.Load(uint((_9_m21.y + _1139) + _1152) * 4 + 0)) : 0u;
        uint _1171 = uint(_1152);
        float3 _1175;
        _1151 = _1150;
        _1175 = 0.0f.xxx;
        uint _1178;
        float _1173;
        float3 _1176;
        [loop]
        for (uint _1177 = _1170; _1177 != 0u; _1151 = _1173, _1175 = _1176, _1177 = _1178)
        {
            uint _1182 = firstbitlow(_1177);
            _1178 = _1177 ^ (1u << (_1182 & 31u));
            int _1188 = int((32u * _1171) + _1182) * 8;
            int _1191 = _1188 + 1;
            int _1194 = _1188 + 2;
            int _1197 = _1188 + 3;
            int _1200 = _1188 + 5;
            int _1203 = _1188 + 6;
            int _1206 = _1188 + 7;
            uint _1210 = uint(_34_m6[_1200].w);
            float _1285;
            if ((_1210 & 1u) == 1u)
            {
                uint _1216 = asuint(_34_m6[_1200].x);
                uint _1223 = asuint(_34_m6[_1200].y);
                uint _1230 = asuint(_34_m6[_1200].z);
                uint _1237 = asuint(_34_m6[_1203].x);
                uint _1244 = asuint(_34_m6[_1203].y);
                uint _1251 = asuint(_34_m6[_1203].z);
                float3 _1270 = abs(mul(float4(_563 - _34_m6[_1191].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1216).x, spvUnpackHalf2x16(_1230).x, spvUnpackHalf2x16(_1244).x, 0.0f), float4(spvUnpackHalf2x16(_1216 >> 16u).x, spvUnpackHalf2x16(_1230 >> 16u).x, spvUnpackHalf2x16(_1244 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1223).x, spvUnpackHalf2x16(_1237).x, spvUnpackHalf2x16(_1251).x, 0.0f), float4(spvUnpackHalf2x16(_1223 >> 16u).x, spvUnpackHalf2x16(_1237 >> 16u).x, spvUnpackHalf2x16(_1251 >> 16u).x, 0.0f))).xyz);
                float _1277 = _34_m6[_1206].x * 0.5f;
                float _1283 = 1.0f - clamp((max(max(_1270.x, _1270.y), _1270.z) - (_1277 + 0.5f)) / (0.5f - _1277), 0.0f, 1.0f);
                _1285 = _1283 * _1283;
            }
            else
            {
                _1285 = 1.0f;
            }
            bool _1289 = _34_m6[_1197].z > 0.5f;
            if ((false || (_1285 < 0.001000000047497451305389404296875f)) || _1289)
            {
                _1173 = _1151;
                _1176 = _1175;
                continue;
            }
            float _2599;
            float3 _2600;
            if (_34_m6[_1188].w < 1.5f)
            {
                float3 _1797 = float3(0.100000001490116119384765625f, _776, 1.0f);
                float _1806 = (0.5f + (0.5f * _34_m6[_1194].y)) - abs(_34_m6[_1194].x);
                float _1807 = _34_m6[_1194].y - _1806;
                float _1814 = abs(max((1.0f - abs(_1806)) - abs(_1807), 0.00048828125f));
                float3 _1818 = normalize(float3(_1806, _1807, (_34_m6[_1194].x >= 0.0f) ? _1814 : (-_1814)));
                float3 _1819 = _34_m6[_1191].xyz - _563;
                float _1820 = dot(_1819, _1819);
                float _1821 = rsqrt(_1820);
                float3 _1822 = _1819 * _1821;
                float _1826 = clamp(_34_m6[_1206].y * _1821, 0.0f, 1.0f);
                int _1831 = int(_34_m6[_1206].w);
                float3 _1832 = _1818 * _34_m6[_1194].z;
                float3 _1833 = _1832 * 0.5f;
                float3 _1834 = _1819 - _1833;
                float3 _1835 = _1819 + _1833;
                bool _1838 = (uint(_34_m6[_1188].w) & 1u) == 0u;
                bool _1841 = _1838 || ((_1210 & 2u) != 0u);
                bool _1844 = (!_1838) && (_34_m6[_1194].z > 0.0f);
                float _1863;
                float _1864;
                if (_1844)
                {
                    float _1848 = length(_1834);
                    float _1849 = length(_1835);
                    _1863 = clamp(0.5f * ((dot(_525, _1834) / _1848) + (dot(_525, _1835) / _1849)), 0.0f, 1.0f);
                    _1864 = 1.0f / ((((_1848 * _1849) + dot(_1834, _1835)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1863 = clamp(dot(_525, _1822), 0.0f, 1.0f);
                    _1864 = 1.0f;
                }
                float _1886;
                if (_34_m6[_1203].w < 0.0f)
                {
                    float _1880 = _1820 * (_34_m6[_1191].w * _34_m6[_1191].w);
                    float _1883 = clamp(1.0f - (_1880 * _1880), 0.0f, 1.0f);
                    _1886 = lerp(1.0f / (_1820 + 1.0f), _1864, float(_1844)) * (_1883 * _1883);
                }
                else
                {
                    float3 _1869 = _1819 * _34_m6[_1191].w;
                    _1886 = _1864 * pow(1.0f - clamp(dot(_1869, _1869), 0.0f, 1.0f), _34_m6[_1203].w);
                }
                float _1892 = clamp((dot(_1822, -_1818) - _34_m6[_1194].z) * _34_m6[_1194].w, 0.0f, 1.0f);
                float _1896 = _1886 * lerp(1.0f, _1892 * _1892, float(_1838));
                float _1996;
                if ((!_1844) && (_1831 >= 0))
                {
                    uint _1902 = uint(_1831);
                    float2 _1989;
                    [branch]
                    if (_1838)
                    {
                        float4 _1979 = mul(_56_m1[_1902], _567);
                        _1989 = _56_m0[_1902].xy + (clamp(_1979.xy / _1979.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_1902].zw);
                    }
                    else
                    {
                        float3 _1916 = mul(float4(-_1819, 0.0f), _56_m1[_1902]).xyz;
                        float3 _394 = _1916;
                        float3 _393 = _1916;
                        float3 _392 = abs(_1916);
                        uint _1925 = uint(int(_392.y > _392.x));
                        uint _1931 = (_392.z > _392[_1925]) ? 2u : _1925;
                        uint _1937 = (_1931 * 2u) + uint(_393[_1931] < 0.0f);
                        float _1941 = abs(_394[_1937 / 2u]);
                        float _1961 = 0.5f - (0.000244140625f / _56_m0[_1902].w);
                        _1989 = _56_m0[_1902].xy + (clamp(float2((float(_1937) + ((((_394[uint(_356[_1937].x)] * _357[_1937].x) / _1941) * _1961) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_356[_1937].y)] * _357[_1937].y) / _1941) * _1961)), 0.0f.xx, 1.0f.xx) * _56_m0[_1902].zw);
                    }
                    _1996 = _1896 * _54.SampleLevel(_15, _1989, 0.0f).x;
                }
                else
                {
                    _1996 = _1896;
                }
                bool _1997 = _1996 > 0.0f;
                float _2305;
                if (_1997)
                {
                    int _2049;
                    if (_1841)
                    {
                        _2049 = int(_34_m6[_1197].x);
                    }
                    else
                    {
                        uint _2004 = asuint(_34_m6[_1194].w);
                        uint _2006 = asuint(_34_m6[_1197].x);
                        float3 _2007 = _563 - _34_m6[_1191].xyz;
                        float3 _2008 = abs(_2007);
                        float _2009 = _2008.x;
                        float _2010 = _2008.y;
                        float _2012 = _2008.z;
                        int _2044;
                        if ((_2009 > _2010) && (_2009 > _2012))
                        {
                            _2044 = int((_2007.x > 0.0f) ? (_2004 >> 24u) : ((_2004 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2036;
                            if (_2010 > _2012)
                            {
                                _2036 = int((_2007.y > 0.0f) ? ((_2004 >> 8u) & 255u) : (_2004 & 255u));
                            }
                            else
                            {
                                _2036 = int((_2007.z > 0.0f) ? ((_2006 >> 8u) & 255u) : (_2006 & 255u));
                            }
                            _2044 = _2036;
                        }
                        _2049 = (_2044 < 80) ? _2044 : (-1);
                    }
                    float _2303;
                    do
                    {
                        if (_38_m2[_2049].y > 0u)
                        {
                            uint _2067 = uint(_2049);
                            float4 _391 = _1145;
                            float _2078;
                            do
                            {
                                if (_38_m2[_2067].y == 0u)
                                {
                                    _2078 = 1.0f;
                                    break;
                                }
                                _2078 = _391[_38_m2[_2067].y - 1u];
                                break;
                            } while(false);
                            _2303 = _2078;
                            break;
                        }
                        float4 _2085 = mul(_36_m10[_2049], float4((_563 - ((-_1822) * _36_m11[_2049].x)) + (_525 * (_36_m11[_2049].y * 5.0f)), 1.0f));
                        float _2086 = _2085.w;
                        float3 _2089 = _2085.xyz / _2086.xxx;
                        float2 _2090 = _2089.xy;
                        float3 _2098 = _2089.xyz;
                        bool3 _2099 = bool3(_2098.x <= 0.0f.xxx.x, _2098.y <= 0.0f.xxx.y, _2098.z <= 0.0f.xxx.z);
                        bool3 _2100 = bool3(_2098.x >= 1.0f.xxx.x, _2098.y >= 1.0f.xxx.y, _2098.z >= 1.0f.xxx.z);
                        float _2103 = _2089.z;
                        float2 _2114 = ((_2090 * (_36_m12[_2049].zw - _36_m12[_2049].xy)) + _36_m12[_2049].xy).xy * _36_m13.zw;
                        float2 _2116 = floor(_2114 + 0.5f.xx);
                        float2 _2117 = _2114 - _2116;
                        float _2118 = _2117.x;
                        float _2119 = _2118 + 0.5f;
                        float _2120 = _2119 * _2119;
                        float _2123 = 1.0f - _2118;
                        float _2124 = min(_2118, 0.0f);
                        float _2127 = _2118 + 1.0f;
                        float _2128 = max(_2118, 0.0f);
                        float _2139 = _2117.y;
                        float _2140 = _2139 + 0.5f;
                        float _2141 = _2140 * _2140;
                        float _2144 = 1.0f - _2139;
                        float _2145 = min(_2139, 0.0f);
                        float _2148 = _2139 + 1.0f;
                        float _2149 = max(_2139, 0.0f);
                        float3 _2161 = float3(0.1599999964237213134765625f * _2123, 0.1599999964237213134765625f * ((_2127 - (_2128 * _2128)) + 1.0f), _2120 * 0.07999999821186065673828125f);
                        float3 _2162 = float3(0.1599999964237213134765625f * ((_2120 * 0.5f) - _2118), 0.1599999964237213134765625f * ((_2123 - (_2124 * _2124)) + 1.0f), 0.1599999964237213134765625f * _2127) + _2161;
                        float3 _2164 = float3(0.1599999964237213134765625f * _2144, 0.1599999964237213134765625f * ((_2148 - (_2149 * _2149)) + 1.0f), _2141 * 0.07999999821186065673828125f);
                        float3 _2165 = float3(0.1599999964237213134765625f * ((_2141 * 0.5f) - _2139), 0.1599999964237213134765625f * ((_2144 - (_2145 * _2145)) + 1.0f), 0.1599999964237213134765625f * _2148) + _2164;
                        float3 _2171 = ((_2161 / _2162) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.xxx;
                        float3 _2173 = ((_2164 / _2165) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.yyy;
                        float2 _2175 = _2116 * _36_m13.xy;
                        float _2176 = _2171.x;
                        float _2177 = _2173.x;
                        float2 _2179 = _2175 + float2(_2176, _2177);
                        float _2180 = _2171.y;
                        float2 _2182 = _2175 + float2(_2180, _2177);
                        float _2183 = _2171.z;
                        float2 _2185 = _2175 + float2(_2183, _2177);
                        float _2186 = _2173.y;
                        float2 _2188 = _2175 + float2(_2176, _2186);
                        float2 _2190 = _2175 + float2(_2180, _2186);
                        float2 _2192 = _2175 + float2(_2183, _2186);
                        float _2193 = _2173.z;
                        float2 _2195 = _2175 + float2(_2176, _2193);
                        float2 _2197 = _2175 + float2(_2180, _2193);
                        float2 _2199 = _2175 + float2(_2183, _2193);
                        float _2200 = _2162.x;
                        float _2201 = _2165.x;
                        float _2203 = _2162.y;
                        float _2205 = _2162.z;
                        float _2207 = _2165.y;
                        float _2211 = _2165.z;
                        float _2277 = ((((((((_2200 * _2201) * _39.SampleCmpLevelZero(_18, float3(_2179, _385).xy, _2103)) + ((_2203 * _2201) * _39.SampleCmpLevelZero(_18, float3(_2182, _385).xy, _2103))) + ((_2205 * _2201) * _39.SampleCmpLevelZero(_18, float3(_2185, _385).xy, _2103))) + ((_2200 * _2207) * _39.SampleCmpLevelZero(_18, float3(_2188, _385).xy, _2103))) + ((_2203 * _2207) * _39.SampleCmpLevelZero(_18, float3(_2190, _385).xy, _2103))) + ((_2205 * _2207) * _39.SampleCmpLevelZero(_18, float3(_2192, _385).xy, _2103))) + ((_2200 * _2211) * _39.SampleCmpLevelZero(_18, float3(_2195, _385).xy, _2103))) + ((_2203 * _2211) * _39.SampleCmpLevelZero(_18, float3(_2197, _385).xy, _2103));
                        float2 _2290 = min(_2090, 1.0f.xx - _2090);
                        _2303 = lerp(1.0f, (any(bool3(_2099.x || _2100.x, _2099.y || _2100.y, _2099.z || _2100.z)) || ((asuint(_2103) & 2147483647u) > 2139095040u)) ? 1.0f : (_2277 + ((_2205 * _2211) * _39.SampleCmpLevelZero(_18, float3(_2199, _385).xy, _2103))), _1841 ? min(_36_m11[_2049].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_36_m11[_2049].z - _2086) * 0.25f, min(_2290.x, _2290.y)))) : _36_m11[_2049].w);
                        break;
                    } while(false);
                    _2305 = (_2049 >= 0) ? _2303 : 1.0f;
                }
                else
                {
                    _2305 = 1.0f;
                }
                float3 _2329;
                float3 _2330;
                if (_1844)
                {
                    float3 _2308 = _1797 * _1797;
                    float3 _2309 = reflect(_591, _525);
                    float _2318 = dot(_2309, _1832);
                    _2329 = _2308 / clamp(_2308 + (0.5f * clamp(_34_m6[_1194].z * _1821, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2330 = normalize(_1834 + (_1832 * clamp(dot(_1834, (_2309 * _2318) - _1832) / ((_34_m6[_1194].z * _34_m6[_1194].z) - (_2318 * _2318)), 0.0f, 1.0f)));
                }
                else
                {
                    _2329 = 1.0f.xxx;
                    _2330 = _1822;
                }
                float3 _2331 = _2330 + _589;
                float3 _2335 = _2331 * rsqrt(max(6.103515625e-05f, dot(_2331, _2331)));
                float3 _2598;
                if (_1997)
                {
                    float _2339 = clamp(_1863, 0.0f, 1.0f);
                    float _2341 = clamp(dot(_525, _2335), 0.0f, 1.0f);
                    float _2343 = clamp(dot(_589, _2335), 0.0f, 1.0f);
                    float _2345 = clamp(_779, 0.0f, 1.0f);
                    float3 _2543;
                    float3 _2544;
                    [branch]
                    if (_535)
                    {
                        float _2461 = _776 * _776;
                        float _2471;
                        if (_1826 > 0.0f)
                        {
                            _2471 = clamp(_2461 + ((_1826 * _1826) / ((_2343 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _2471 = _2461;
                        }
                        float _2472 = _2471 * _2471;
                        float _2493 = (((_2341 * _2472) - _2341) * _2341) + 1.0f;
                        float _2498 = 1.0f - _2343;
                        float _2499 = _2498 * _2498;
                        float _2501 = (_2498 * _2499) * _2499;
                        float _2525 = 1.0f - _776;
                        float _2532 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2525 * (1.04997003078460693359375f + (_2525 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2525))))));
                        float _2533 = 1.0f - _2532;
                        _2543 = 0.0f.xxx;
                        _2544 = min(((0.039999999105930328369140625f.xxx * (1.0f - _2501)) + _2501.xxx) * (((_2472 / (_2493 * _2493)) * _2329.y) * (0.5f / (((_2339 * sqrt(((((-_2345) * _2472) + _2345) * _2345) + _2472)) + (_2345 * sqrt(((((-_2339) * _2472) + _2339) * _2339) + _2472))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_2345, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_2339, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2532) / _2533)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _2533)));
                    }
                    else
                    {
                        float _2349 = _776 * _776;
                        float _2359;
                        if (_1826 > 0.0f)
                        {
                            _2359 = clamp(_2349 + ((_1826 * _1826) / ((_2343 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _2359 = _2349;
                        }
                        float _2360 = _2359 * _2359;
                        float _2381 = (((_2341 * _2360) - _2341) * _2341) + 1.0f;
                        float _2386 = 1.0f - _2343;
                        float _2387 = _2386 * _2386;
                        float _2389 = (_2386 * _2387) * _2387;
                        float _2413 = 1.0f - _776;
                        float _2420 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2413 * (1.04997003078460693359375f + (_2413 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2413))))));
                        float _2421 = 1.0f - _2420;
                        float _2444 = clamp(1.0f - _530, 0.0f, 1.0f);
                        float _2452 = clamp((dot(_525, _2330) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                        _2543 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_528, _529, _530).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _529.xxx) * _530) * lerp((_527 * lerp(1.0f, (_2452 * sqrt(_2452)) * 1.66666662693023681640625f, _2444)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_589, _2330), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _2444));
                        _2544 = min(((0.039999999105930328369140625f.xxx * (1.0f - _2389)) + _2389.xxx) * (((_2360 / (_2381 * _2381)) * _2329.y) * (0.5f / (((_2339 * sqrt(((((-_2345) * _2360) + _2345) * _2345) + _2360)) + (_2345 * sqrt(((((-_2339) * _2360) + _2339) * _2339) + _2360))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_2345, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_2339, _776) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2420) / _2421)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _2421)));
                    }
                    float3 _2546 = _778 * _2329.z;
                    float3 _2551 = ((_34_m6[_1188].xyz * _1996) * _2305) * _1285;
                    float3 _2552 = clamp(_2544 * _34_m6[_1206].z, 0.0f.xxx, 1000.0f.xxx) * _1863;
                    float3 _2597;
                    [branch]
                    if (_535)
                    {
                        float3 _2592;
                        do
                        {
                            [branch]
                            if (((_533 > 0u) && (_533 <= 15u)) && (_534 > 0.0f))
                            {
                                int _2571 = int(clamp(_533 - 1u, 0u, 14u));
                                _2592 = _49.SampleLevel(_15, float3((dot(normalize(lerp(_525, _532, dot(_52_m0[_2571].xyz, 0.3333333432674407958984375f.xxx).xxx)), _2330) * 0.5f) + 0.5f, _534 * _52_m0[_2571].w, float(_2571)), 0.0f).xyz;
                                break;
                            }
                            _2592 = _1863.xxx;
                            break;
                        } while(false);
                        _2597 = _2551 * (((_2546 * _2592) + _2552) + _2543);
                    }
                    else
                    {
                        _2597 = ((_2552 + _2543) + (_2546 * _1863)) * _2551;
                    }
                    _2598 = _2597;
                }
                else
                {
                    _2598 = 0.0f.xxx;
                }
                _2599 = _1151;
                _2600 = _2598;
            }
            else
            {
                float _1795;
                do
                {
                    if (_1289)
                    {
                        _1795 = 1.0f;
                        break;
                    }
                    float _1309 = (0.5f + (0.5f * _34_m6[_1194].y)) - abs(_34_m6[_1194].x);
                    float _1310 = _34_m6[_1194].y - _1309;
                    float _1317 = abs(max((1.0f - abs(_1309)) - abs(_1310), 0.00048828125f));
                    float3 _1321 = normalize(float3(_1309, _1310, (_34_m6[_1194].x >= 0.0f) ? _1317 : (-_1317)));
                    float3 _1322 = _34_m6[_1191].xyz - _563;
                    float _1323 = dot(_1322, _1322);
                    float3 _1325 = _1322 * rsqrt(_1323);
                    int _1328 = int(_34_m6[_1206].w);
                    float3 _1330 = (_1321 * _34_m6[_1194].z) * 0.5f;
                    float3 _1331 = _1322 - _1330;
                    float3 _1332 = _1322 + _1330;
                    bool _1335 = (uint(_34_m6[_1188].w) & 1u) == 0u;
                    bool _1338 = _1335 || ((_1210 & 2u) != 0u);
                    bool _1341 = (!_1335) && (_34_m6[_1194].z > 0.0f);
                    float _1353;
                    if (_1341)
                    {
                        _1353 = 1.0f / ((((length(_1331) * length(_1332)) + dot(_1331, _1332)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _1353 = 1.0f;
                    }
                    float _1375;
                    if (_34_m6[_1203].w < 0.0f)
                    {
                        float _1369 = _1323 * (_34_m6[_1191].w * _34_m6[_1191].w);
                        float _1372 = clamp(1.0f - (_1369 * _1369), 0.0f, 1.0f);
                        _1375 = lerp(1.0f / (_1323 + 1.0f), _1353, float(_1341)) * (_1372 * _1372);
                    }
                    else
                    {
                        float3 _1358 = _1322 * _34_m6[_1191].w;
                        _1375 = _1353 * pow(1.0f - clamp(dot(_1358, _1358), 0.0f, 1.0f), _34_m6[_1203].w);
                    }
                    float _1381 = clamp((dot(_1325, -_1321) - _34_m6[_1194].z) * _34_m6[_1194].w, 0.0f, 1.0f);
                    float _1385 = _1375 * lerp(1.0f, _1381 * _1381, float(_1335));
                    float _1485;
                    if ((!_1341) && (_1328 >= 0))
                    {
                        uint _1391 = uint(_1328);
                        float2 _1478;
                        [branch]
                        if (_1335)
                        {
                            float4 _1468 = mul(_56_m1[_1391], _567);
                            _1478 = _56_m0[_1391].xy + (clamp(_1468.xy / _1468.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_1391].zw);
                        }
                        else
                        {
                            float3 _1405 = mul(float4(-_1322, 0.0f), _56_m1[_1391]).xyz;
                            float3 _398 = _1405;
                            float3 _397 = _1405;
                            float3 _396 = abs(_1405);
                            uint _1414 = uint(int(_396.y > _396.x));
                            uint _1420 = (_396.z > _396[_1414]) ? 2u : _1414;
                            uint _1426 = (_1420 * 2u) + uint(_397[_1420] < 0.0f);
                            float _1430 = abs(_398[_1426 / 2u]);
                            float _1450 = 0.5f - (0.000244140625f / _56_m0[_1391].w);
                            _1478 = _56_m0[_1391].xy + (clamp(float2((float(_1426) + ((((_398[uint(_356[_1426].x)] * _357[_1426].x) / _1430) * _1450) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_398[uint(_356[_1426].y)] * _357[_1426].y) / _1430) * _1450)), 0.0f.xx, 1.0f.xx) * _56_m0[_1391].zw);
                        }
                        _1485 = _1385 * _54.SampleLevel(_15, _1478, 0.0f).x;
                    }
                    else
                    {
                        _1485 = _1385;
                    }
                    float _1794;
                    if (_1485 > 0.0f)
                    {
                        int _1538;
                        if (_1338)
                        {
                            _1538 = int(_34_m6[_1197].x);
                        }
                        else
                        {
                            uint _1493 = asuint(_34_m6[_1194].w);
                            uint _1495 = asuint(_34_m6[_1197].x);
                            float3 _1496 = _563 - _34_m6[_1191].xyz;
                            float3 _1497 = abs(_1496);
                            float _1498 = _1497.x;
                            float _1499 = _1497.y;
                            float _1501 = _1497.z;
                            int _1533;
                            if ((_1498 > _1499) && (_1498 > _1501))
                            {
                                _1533 = int((_1496.x > 0.0f) ? (_1493 >> 24u) : ((_1493 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1525;
                                if (_1499 > _1501)
                                {
                                    _1525 = int((_1496.y > 0.0f) ? ((_1493 >> 8u) & 255u) : (_1493 & 255u));
                                }
                                else
                                {
                                    _1525 = int((_1496.z > 0.0f) ? ((_1495 >> 8u) & 255u) : (_1495 & 255u));
                                }
                                _1533 = _1525;
                            }
                            _1538 = (_1533 < 80) ? _1533 : (-1);
                        }
                        float _1792;
                        do
                        {
                            if (_38_m2[_1538].y > 0u)
                            {
                                uint _1556 = uint(_1538);
                                float4 _395 = _1145;
                                float _1567;
                                do
                                {
                                    if (_38_m2[_1556].y == 0u)
                                    {
                                        _1567 = 1.0f;
                                        break;
                                    }
                                    _1567 = _395[_38_m2[_1556].y - 1u];
                                    break;
                                } while(false);
                                _1792 = _1567;
                                break;
                            }
                            float4 _1574 = mul(_36_m10[_1538], float4((_563 - ((-_1325) * _36_m11[_1538].x)) + (_525 * (_36_m11[_1538].y * 5.0f)), 1.0f));
                            float _1575 = _1574.w;
                            float3 _1578 = _1574.xyz / _1575.xxx;
                            float2 _1579 = _1578.xy;
                            float3 _1587 = _1578.xyz;
                            bool3 _1588 = bool3(_1587.x <= 0.0f.xxx.x, _1587.y <= 0.0f.xxx.y, _1587.z <= 0.0f.xxx.z);
                            bool3 _1589 = bool3(_1587.x >= 1.0f.xxx.x, _1587.y >= 1.0f.xxx.y, _1587.z >= 1.0f.xxx.z);
                            float _1592 = _1578.z;
                            float2 _1603 = ((_1579 * (_36_m12[_1538].zw - _36_m12[_1538].xy)) + _36_m12[_1538].xy).xy * _36_m13.zw;
                            float2 _1605 = floor(_1603 + 0.5f.xx);
                            float2 _1606 = _1603 - _1605;
                            float _1607 = _1606.x;
                            float _1608 = _1607 + 0.5f;
                            float _1609 = _1608 * _1608;
                            float _1612 = 1.0f - _1607;
                            float _1613 = min(_1607, 0.0f);
                            float _1616 = _1607 + 1.0f;
                            float _1617 = max(_1607, 0.0f);
                            float _1628 = _1606.y;
                            float _1629 = _1628 + 0.5f;
                            float _1630 = _1629 * _1629;
                            float _1633 = 1.0f - _1628;
                            float _1634 = min(_1628, 0.0f);
                            float _1637 = _1628 + 1.0f;
                            float _1638 = max(_1628, 0.0f);
                            float3 _1650 = float3(0.1599999964237213134765625f * _1612, 0.1599999964237213134765625f * ((_1616 - (_1617 * _1617)) + 1.0f), _1609 * 0.07999999821186065673828125f);
                            float3 _1651 = float3(0.1599999964237213134765625f * ((_1609 * 0.5f) - _1607), 0.1599999964237213134765625f * ((_1612 - (_1613 * _1613)) + 1.0f), 0.1599999964237213134765625f * _1616) + _1650;
                            float3 _1653 = float3(0.1599999964237213134765625f * _1633, 0.1599999964237213134765625f * ((_1637 - (_1638 * _1638)) + 1.0f), _1630 * 0.07999999821186065673828125f);
                            float3 _1654 = float3(0.1599999964237213134765625f * ((_1630 * 0.5f) - _1628), 0.1599999964237213134765625f * ((_1633 - (_1634 * _1634)) + 1.0f), 0.1599999964237213134765625f * _1637) + _1653;
                            float3 _1660 = ((_1650 / _1651) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.xxx;
                            float3 _1662 = ((_1653 / _1654) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.yyy;
                            float2 _1664 = _1605 * _36_m13.xy;
                            float _1665 = _1660.x;
                            float _1666 = _1662.x;
                            float2 _1668 = _1664 + float2(_1665, _1666);
                            float _1669 = _1660.y;
                            float2 _1671 = _1664 + float2(_1669, _1666);
                            float _1672 = _1660.z;
                            float2 _1674 = _1664 + float2(_1672, _1666);
                            float _1675 = _1662.y;
                            float2 _1677 = _1664 + float2(_1665, _1675);
                            float2 _1679 = _1664 + float2(_1669, _1675);
                            float2 _1681 = _1664 + float2(_1672, _1675);
                            float _1682 = _1662.z;
                            float2 _1684 = _1664 + float2(_1665, _1682);
                            float2 _1686 = _1664 + float2(_1669, _1682);
                            float2 _1688 = _1664 + float2(_1672, _1682);
                            float _1689 = _1651.x;
                            float _1690 = _1654.x;
                            float _1692 = _1651.y;
                            float _1694 = _1651.z;
                            float _1696 = _1654.y;
                            float _1700 = _1654.z;
                            float _1766 = ((((((((_1689 * _1690) * _39.SampleCmpLevelZero(_18, float3(_1668, _385).xy, _1592)) + ((_1692 * _1690) * _39.SampleCmpLevelZero(_18, float3(_1671, _385).xy, _1592))) + ((_1694 * _1690) * _39.SampleCmpLevelZero(_18, float3(_1674, _385).xy, _1592))) + ((_1689 * _1696) * _39.SampleCmpLevelZero(_18, float3(_1677, _385).xy, _1592))) + ((_1692 * _1696) * _39.SampleCmpLevelZero(_18, float3(_1679, _385).xy, _1592))) + ((_1694 * _1696) * _39.SampleCmpLevelZero(_18, float3(_1681, _385).xy, _1592))) + ((_1689 * _1700) * _39.SampleCmpLevelZero(_18, float3(_1684, _385).xy, _1592))) + ((_1692 * _1700) * _39.SampleCmpLevelZero(_18, float3(_1686, _385).xy, _1592));
                            float2 _1779 = min(_1579, 1.0f.xx - _1579);
                            _1792 = lerp(1.0f, (any(bool3(_1588.x || _1589.x, _1588.y || _1589.y, _1588.z || _1589.z)) || ((asuint(_1592) & 2147483647u) > 2139095040u)) ? 1.0f : (_1766 + ((_1694 * _1700) * _39.SampleCmpLevelZero(_18, float3(_1688, _385).xy, _1592))), _1338 ? min(_36_m11[_1538].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_36_m11[_1538].z - _1575) * 0.25f, min(_1779.x, _1779.y)))) : _36_m11[_1538].w);
                            break;
                        } while(false);
                        _1794 = (_1538 >= 0) ? _1792 : 1.0f;
                    }
                    else
                    {
                        _1794 = 1.0f;
                    }
                    _1795 = _1794;
                    break;
                } while(false);
                _2599 = _1151 * _1795;
                _2600 = 0.0f.xxx;
            }
            _1173 = _2599;
            _1176 = _1175 + _2600;
        }
        _1148 = _1147 + _1175;
    }
    float3 _2604 = _1116.xyz + (_1147 * _1150);
    float3 _2606 = _527.xxx;
    float3 _2641;
    float3 _2642;
    [branch]
    if (_9_m23.x != 0.0f)
    {
        float _2617 = min(_24.SampleBias(_14, _4, _9_m16).x, _527);
        _2641 = clamp((pow(abs(_780 + _2617), exp2(((-16.0f) * _776) - 1.0f)) - 1.0f) + _2617, 0.0f, 1.0f).xxx;
        _2642 = max(_2617.xxx, ((((((_778 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2617) + ((_778 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2617) + ((_778 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2617);
    }
    else
    {
        _2641 = _2606;
        _2642 = _2606;
    }
    float3 _4491;
    [branch]
    if (_535)
    {
        float3 _3583;
        do
        {
            [branch]
            if (((_533 > 0u) && (_533 <= 15u)) && (_534 > 0.0f))
            {
                uint _3571 = clamp(_533 - 1u, 0u, 14u);
                _3583 = _50.SampleLevel(_15, float3(_534 * _52_m0[_3571].w, 0.5f, float(_3571)), 0.0f).xyz;
                break;
            }
            _3583 = 1.0f.xxx;
            break;
        } while(false);
        float3 _3600 = (_563 + (_525 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_538 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _3610 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _3619 = _3600 - (_9_m105.xyz + (_3610 * (-_9_m107.w)));
        float _3633 = max(clamp((max(abs(_3619.x), abs(_3619.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_3619.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _3935;
        float4 _3936;
        float4 _3937;
        float _3938;
        float _3939;
        if ((_9_m105.w != 0.0f) && (_3633 < 1.0f))
        {
            float3 _3646 = _3600 - (_9_m105.xyz + (_3610 * (-_9_m107.y)));
            float _3660 = max(clamp((max(abs(_3646.x), abs(_3646.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3646.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _3736;
            float4 _3737;
            float4 _3738;
            float4 _3739;
            if (_3660 < 1.0f)
            {
                float3 _3669 = ((_3600 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _3671 = _3669 - floor(_3669);
                float4 _3675 = _64.SampleLevel(_16, _3671, 0.0f);
                float _3676 = 1.0f - _3660;
                float _3680 = _9_m106.y * 0.5f;
                float _3685 = _3671.x;
                float _3686 = clamp(_3671.y, _3680, 1.0f - _3680) * 0.3333333432674407958984375f;
                float _3687 = _3671.z;
                float4 _3690 = _65.SampleLevel(_15, float3(_3685, _3686, _3687), 0.0f);
                float _3706 = _3675.x;
                float _3716 = _3675.y;
                float _3726 = _3675.z;
                _3736 = _3633 + (_3690.w * _3676);
                _3737 = float4(((_65.SampleLevel(_15, float3(_3685, _3686 + 0.666666686534881591796875f, _3687), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3726, _3726) * _3676;
                _3738 = float4(((_65.SampleLevel(_15, float3(_3685, _3686 + 0.3333333432674407958984375f, _3687), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3716, _3716) * _3676;
                _3739 = float4(((_3690.xyz * 4.0f) - 2.0f.xxx) * _3706, _3706) * _3676;
            }
            else
            {
                _3736 = _3633;
                _3737 = 0.0f.xxxx;
                _3738 = 0.0f.xxxx;
                _3739 = 0.0f.xxxx;
            }
            float3 _3745 = _3600 - (_9_m105.xyz + (_3610 * (-_9_m107.z)));
            float _3759 = max(clamp((max(abs(_3745.x), abs(_3745.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3745.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _3839;
            float4 _3840;
            float4 _3841;
            float4 _3842;
            if (_3759 < 1.0f)
            {
                float3 _3768 = ((_3600 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _3770 = _3768 - floor(_3768);
                float4 _3774 = _66.SampleLevel(_16, _3770, 0.0f);
                float _3776 = _3660 * (1.0f - _3759);
                float _3780 = _9_m106.y * 0.5f;
                float _3785 = _3770.x;
                float _3786 = clamp(_3770.y, _3780, 1.0f - _3780) * 0.3333333432674407958984375f;
                float _3787 = _3770.z;
                float4 _3790 = _67.SampleLevel(_15, float3(_3785, _3786, _3787), 0.0f);
                float _3806 = _3774.x;
                float _3817 = _3774.y;
                float _3828 = _3774.z;
                _3839 = _3736 + (_3790.w * _3776);
                _3840 = _3737 + (float4(((_67.SampleLevel(_15, float3(_3785, _3786 + 0.666666686534881591796875f, _3787), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3828, _3828) * _3776);
                _3841 = _3738 + (float4(((_67.SampleLevel(_15, float3(_3785, _3786 + 0.3333333432674407958984375f, _3787), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3817, _3817) * _3776);
                _3842 = _3739 + (float4(((_3790.xyz * 4.0f) - 2.0f.xxx) * _3806, _3806) * _3776);
            }
            else
            {
                _3839 = _3736;
                _3840 = _3737;
                _3841 = _3738;
                _3842 = _3739;
            }
            float4 _3925;
            float4 _3926;
            float4 _3927;
            float _3928;
            if (_3759 > 0.0f)
            {
                float3 _3851 = ((_3600 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _3854 = _9_m106.xyz * 0.5f;
                float3 _3856 = clamp(_3851 - floor(_3851), _3854, 1.0f.xxx - _3854);
                float4 _3860 = _68.SampleLevel(_16, _3856, 0.0f);
                float _3862 = _3759 * (1.0f - _3633);
                float _3866 = _9_m106.y * 0.5f;
                float _3871 = _3856.x;
                float _3872 = clamp(_3856.y, _3866, 1.0f - _3866) * 0.3333333432674407958984375f;
                float _3873 = _3856.z;
                float4 _3876 = _69.SampleLevel(_15, float3(_3871, _3872, _3873), 0.0f);
                float _3892 = _3860.x;
                float _3903 = _3860.y;
                float _3914 = _3860.z;
                _3925 = _3840 + (float4(((_69.SampleLevel(_15, float3(_3871, _3872 + 0.666666686534881591796875f, _3873), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3914, _3914) * _3862);
                _3926 = _3841 + (float4(((_69.SampleLevel(_15, float3(_3871, _3872 + 0.3333333432674407958984375f, _3873), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3903, _3903) * _3862);
                _3927 = _3842 + (float4(((_3876.xyz * 4.0f) - 2.0f.xxx) * _3892, _3892) * _3862);
                _3928 = _3839 + (_3876.w * _3862);
            }
            else
            {
                _3925 = _3840;
                _3926 = _3841;
                _3927 = _3842;
                _3928 = _3839;
            }
            float _3931 = clamp((_3928 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _3935 = _3925;
            _3936 = _3926;
            _3937 = _3927;
            _3938 = _3931 - _3633;
            _3939 = (_3931 + _3633) * 0.5f;
        }
        else
        {
            _3935 = 0.0f.xxxx;
            _3936 = 0.0f.xxxx;
            _3937 = 0.0f.xxxx;
            _3938 = 0.0f;
            _3939 = 1.0f;
        }
        float4 _3959 = _3937 + float4(_9_m108.x * _3939, (_9_m108.y * _3939) + ((_9_m108.w * _3938) * 0.5f), _9_m108.z * _3939, (_9_m108.w * _3939) + ((_9_m108.y * _3938) * 0.375f));
        float4 _3979 = _3936 + float4(_9_m109.x * _3939, (_9_m109.y * _3939) + ((_9_m109.w * _3938) * 0.5f), _9_m109.z * _3939, (_9_m109.w * _3939) + ((_9_m109.y * _3938) * 0.375f));
        float4 _3999 = _3935 + float4(_9_m110.x * _3939, (_9_m110.y * _3939) + ((_9_m110.w * _3938) * 0.5f), _9_m110.z * _3939, (_9_m110.w * _3939) + ((_9_m110.y * _3938) * 0.375f));
        float4 _4157;
        float4 _4158;
        float4 _4159;
        [branch]
        if (all(bool2(_551.x >= 0.0f.xx.x, _551.y >= 0.0f.xx.y)))
        {
            float4 _4007 = _63.SampleLevel(_15, _551, 0.0f);
            float4 _4008 = abs(_4007);
            float4 _4154;
            float4 _4155;
            float4 _4156;
            [branch]
            if (any(bool4(_4008.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4008.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4008.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4008.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _4014 = length(_4007.yzw);
                uint _4016;
                float _4019;
                _4016 = 0u;
                _4019 = 1.0f;
                for (float _4021 = _4014; _4021 > 4.599999904632568359375f; )
                {
                    _4016++;
                    _4019 *= 0.5f;
                    _4021 *= 0.5f;
                    continue;
                }
                float4 _4025 = _4007 * _4019;
                float4 _4030 = float4(0.0f, _4025.yzw);
                float2 _4052 = (_62.SampleLevel(_15, float2(((((length(_4030) * _61_m3.x) + _61_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _61_m2.xy) + _61_m2.zw;
                float4 _4066;
                _4066 = float4(_4052.x * 3.5449078083038330078125f, _4030.yzw * _4052.y) * exp(_4025.x * 0.282094776630401611328125f);
                for (uint _4069 = 0u; _4069 < _4016; )
                {
                    _4066 = mul(float4x4(_4066, float4(_4066.yx, 0.0f, 0.0f), float4(_4066.z, 0.0f, _4066.x, 0.0f), float4(_4066.w, 0.0f, 0.0f, _4066.x)) * 0.282094776630401611328125f, _4066);
                    _4069++;
                    continue;
                }
                float4x4 _4090 = float4x4(_4066, float4(_4066.yx, 0.0f, 0.0f), float4(_4066.z, 0.0f, _4066.x, 0.0f), float4(_4066.w, 0.0f, 0.0f, _4066.x)) * 0.282094776630401611328125f;
                float4 _4100 = mul(_4090, float4(_3959.w * 1.1283791065216064453125f, _3959.y * (-0.977204978466033935546875f), _3959.z * 0.977204978466033935546875f, _3959.x * (-0.977204978466033935546875f)));
                float4 _4120 = mul(_4090, float4(_3979.w * 1.1283791065216064453125f, _3979.y * (-0.977204978466033935546875f), _3979.z * 0.977204978466033935546875f, _3979.x * (-0.977204978466033935546875f)));
                float4 _4140 = mul(_4090, float4(_3999.w * 1.1283791065216064453125f, _3999.y * (-0.977204978466033935546875f), _3999.z * 0.977204978466033935546875f, _3999.x * (-0.977204978466033935546875f)));
                _4154 = float4(_4100.x * 0.886226952075958251953125f, _4100.w * (-1.02332675457000732421875f), _4100.y * (-1.02332675457000732421875f), _4100.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _4155 = float4(_4120.x * 0.886226952075958251953125f, _4120.w * (-1.02332675457000732421875f), _4120.y * (-1.02332675457000732421875f), _4120.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _4156 = float4(_4140.x * 0.886226952075958251953125f, _4140.w * (-1.02332675457000732421875f), _4140.y * (-1.02332675457000732421875f), _4140.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _4154 = _3959;
                _4155 = _3979;
                _4156 = _3999;
            }
            _4157 = _4154;
            _4158 = _4155;
            _4159 = _4156;
        }
        else
        {
            _4157 = _3959;
            _4158 = _3979;
            _4159 = _3999;
        }
        float _4166 = max(0.0f, dot(_4157.xyz * _3583.x, _525) + _4157.w);
        float _4173 = max(0.0f, dot(_4158.xyz * _3583.y, _525) + _4158.w);
        float _4180 = max(0.0f, dot(_4159.xyz * _3583.z, _525) + _4159.w);
        float3 _4190 = reflect(_591, _525);
        float _4198 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_776, 0.001000000047497451305389404296875f))));
        float2 _4202 = floor(_538 * _30_m0.w);
        float _4219 = floor(_570 - _30_m2.y);
        float _4223 = clamp(_4219, 0.0f, _30_m1.x - 1.0f);
        uint _4233 = (_4219 <= _4223) ? (_27.Load(uint(_9_m21.z + int(_4202.x + (_4202.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_4223)) * 4 + 0)) : 0u;
        float _4236 = dot(float4(_4166, _4173, _4180, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _4238;
        float _4241;
        uint _4243;
        _4238 = 0.0f.xxx;
        _4241 = 1.0f;
        _4243 = _4233;
        uint _4244;
        float3 _4239;
        float _4242;
        bool _4246;
        [loop]
        for (;;)
        {
            _4246 = _4241 > 0.00999999977648258209228515625f;
            if ((_4243 != 0u) && _4246)
            {
                uint _4250 = firstbitlow(_4243);
                _4244 = _4243 ^ (1u << (_4250 & 31u));
                float3 _4270 = float3(dot(_30_m4[_4250]._m2, _567), dot(_30_m4[_4250]._m3, _567), dot(_30_m4[_4250]._m4, _567));
                float3 _4271 = abs(_4270);
                if (all(bool3(_4271.x <= _30_m4[_4250]._m1.xyz.x, _4271.y <= _30_m4[_4250]._m1.xyz.y, _4271.z <= _30_m4[_4250]._m1.xyz.z)))
                {
                    float3 _4280 = _30_m4[_4250]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _4282 = _4271 * 0.100000001490116119384765625f;
                    float3 _4283 = _4282 * _4282;
                    float3 _4286 = (_30_m4[_4250]._m1.xyz - _4271) * _30_m4[_4250]._m5.xyz;
                    float3 _4334;
                    [branch]
                    if (_30_m4[_4250]._m6.x == 1.0f)
                    {
                        float3 _4319 = float3(dot(_30_m4[_4250]._m2.xyz, _4190), dot(_30_m4[_4250]._m3.xyz, _4190), dot(_30_m4[_4250]._m4.xyz, _4190));
                        float3 _4321 = (_30_m4[_4250]._m1.xyz - _4270) / _4319;
                        float3 _4324 = ((-_30_m4[_4250]._m1.xyz) - _4270) / _4319;
                        bool3 _4325 = bool3(_4319.x > 0.0f.xxx.x, _4319.y > 0.0f.xxx.y, _4319.z > 0.0f.xxx.z);
                        float3 _4326 = float3(_4325.x ? _4321.x : _4324.x, _4325.y ? _4321.y : _4324.y, _4325.z ? _4321.z : _4324.z);
                        _4334 = _4270 + (_4319 * min(min(_4326.x, _4326.y), _4326.z));
                    }
                    else
                    {
                        _4334 = _4190;
                    }
                    float3 _4335 = normalize(_4334);
                    float3 _4338 = float3(int3(sign(_4335)));
                    float3 _4341 = _4335 / dot(_4335, _4338).xxx;
                    float3 _4355;
                    if (_4341.z < 0.0f)
                    {
                        float3 _4346 = abs(_4341);
                        float2 _4353 = _4338.xy * float2(1.0f - _4346.y, 1.0f - _4346.x);
                        _4355 = float3(_4353.x, _4353.y, _4341.z);
                    }
                    else
                    {
                        _4355 = _4341;
                    }
                    float _4379 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_4250]._m0, float4(_525, 1.0f))));
                    float _4392 = clamp((min(_4286.x, min(_4286.y, _4286.z)) * _30_m4[_4250]._m6.y) + ((((((_4280 * _4280).x - ((_4283.x + _4283.y) + _4283.z)) * _30_m4[_4250]._m5.x) * _30_m4[_4250]._m5.x) * (1.0f - _30_m4[_4250]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_4250]._m6.w;
                    _4239 = _4238 + ((((_25.SampleLevel(_17, float3((((_4355.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_4250]._m1.w), _4198).xyz * _30_m4[_4250]._m5.w) * ((((((clamp(abs(_4236 / _4379), 0.0f, 1.0f) * 2.0f) + _4236) / (2.0f + _4379)) - 1.0f) * _9_m23.w) + 1.0f)) * _4392) * _4241);
                    _4242 = _4241 * (1.0f - _4392);
                }
                else
                {
                    _4239 = _4238;
                    _4242 = _4241;
                }
                _4238 = _4239;
                _4241 = _4242;
                _4243 = _4244;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _4460;
        if (_4246)
        {
            float3 _4400 = normalize(_4190);
            float3 _4403 = float3(int3(sign(_4400)));
            float3 _4406 = _4400 / dot(_4400, _4403).xxx;
            float3 _4420;
            if (_4406.z < 0.0f)
            {
                float3 _4411 = abs(_4406);
                float2 _4418 = _4403.xy * float2(1.0f - _4411.y, 1.0f - _4411.x);
                _4420 = float3(_4418.x, _4418.y, _4406.z);
            }
            else
            {
                _4420 = _4406;
            }
            float _4446 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_525, 1.0f))));
            _4460 = _4238 + ((_25.SampleLevel(_17, float3((((_4420.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _4198).xyz * ((((((clamp(abs(_4236 / _4446), 0.0f, 1.0f) * 2.0f) + _4236) / (2.0f + _4446)) - 1.0f) * _9_m23.w) + 1.0f)) * _4241);
        }
        else
        {
            _4460 = _4238;
        }
        float3 _4466 = (_4460 * _9_m23.z) * _9_m22.y;
        float3 _4487;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _4481 = _23.SampleBias(_15, _4, _9_m16);
            float _4482 = _4481.x;
            _4487 = (_22.SampleBias(_15, _4, _9_m16).xyz * _4482) + (_4466 * (1.0f - _4482));
        }
        else
        {
            _4487 = _4466;
        }
        _4491 = (((float3(_4166, _4173, _4180) * _778) * _9_m22.x) * _2642) + ((_4487 * _798) * _2641);
    }
    else
    {
        float3 _2662 = (_563 + (_525 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_538 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _2672 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _2681 = _2662 - (_9_m105.xyz + (_2672 * (-_9_m107.w)));
        float _2695 = max(clamp((max(abs(_2681.x), abs(_2681.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2681.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _2997;
        float4 _2998;
        float4 _2999;
        float _3000;
        float _3001;
        if ((_9_m105.w != 0.0f) && (_2695 < 1.0f))
        {
            float3 _2708 = _2662 - (_9_m105.xyz + (_2672 * (-_9_m107.y)));
            float _2722 = max(clamp((max(abs(_2708.x), abs(_2708.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2708.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _2798;
            float4 _2799;
            float4 _2800;
            float4 _2801;
            if (_2722 < 1.0f)
            {
                float3 _2731 = ((_2662 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2733 = _2731 - floor(_2731);
                float4 _2737 = _64.SampleLevel(_16, _2733, 0.0f);
                float _2738 = 1.0f - _2722;
                float _2742 = _9_m106.y * 0.5f;
                float _2747 = _2733.x;
                float _2748 = clamp(_2733.y, _2742, 1.0f - _2742) * 0.3333333432674407958984375f;
                float _2749 = _2733.z;
                float4 _2752 = _65.SampleLevel(_15, float3(_2747, _2748, _2749), 0.0f);
                float _2768 = _2737.x;
                float _2778 = _2737.y;
                float _2788 = _2737.z;
                _2798 = _2695 + (_2752.w * _2738);
                _2799 = float4(((_65.SampleLevel(_15, float3(_2747, _2748 + 0.666666686534881591796875f, _2749), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2788, _2788) * _2738;
                _2800 = float4(((_65.SampleLevel(_15, float3(_2747, _2748 + 0.3333333432674407958984375f, _2749), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2778, _2778) * _2738;
                _2801 = float4(((_2752.xyz * 4.0f) - 2.0f.xxx) * _2768, _2768) * _2738;
            }
            else
            {
                _2798 = _2695;
                _2799 = 0.0f.xxxx;
                _2800 = 0.0f.xxxx;
                _2801 = 0.0f.xxxx;
            }
            float3 _2807 = _2662 - (_9_m105.xyz + (_2672 * (-_9_m107.z)));
            float _2821 = max(clamp((max(abs(_2807.x), abs(_2807.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2807.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _2901;
            float4 _2902;
            float4 _2903;
            float4 _2904;
            if (_2821 < 1.0f)
            {
                float3 _2830 = ((_2662 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2832 = _2830 - floor(_2830);
                float4 _2836 = _66.SampleLevel(_16, _2832, 0.0f);
                float _2838 = _2722 * (1.0f - _2821);
                float _2842 = _9_m106.y * 0.5f;
                float _2847 = _2832.x;
                float _2848 = clamp(_2832.y, _2842, 1.0f - _2842) * 0.3333333432674407958984375f;
                float _2849 = _2832.z;
                float4 _2852 = _67.SampleLevel(_15, float3(_2847, _2848, _2849), 0.0f);
                float _2868 = _2836.x;
                float _2879 = _2836.y;
                float _2890 = _2836.z;
                _2901 = _2798 + (_2852.w * _2838);
                _2902 = _2799 + (float4(((_67.SampleLevel(_15, float3(_2847, _2848 + 0.666666686534881591796875f, _2849), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2890, _2890) * _2838);
                _2903 = _2800 + (float4(((_67.SampleLevel(_15, float3(_2847, _2848 + 0.3333333432674407958984375f, _2849), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2879, _2879) * _2838);
                _2904 = _2801 + (float4(((_2852.xyz * 4.0f) - 2.0f.xxx) * _2868, _2868) * _2838);
            }
            else
            {
                _2901 = _2798;
                _2902 = _2799;
                _2903 = _2800;
                _2904 = _2801;
            }
            float4 _2987;
            float4 _2988;
            float4 _2989;
            float _2990;
            if (_2821 > 0.0f)
            {
                float3 _2913 = ((_2662 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2916 = _9_m106.xyz * 0.5f;
                float3 _2918 = clamp(_2913 - floor(_2913), _2916, 1.0f.xxx - _2916);
                float4 _2922 = _68.SampleLevel(_16, _2918, 0.0f);
                float _2924 = _2821 * (1.0f - _2695);
                float _2928 = _9_m106.y * 0.5f;
                float _2933 = _2918.x;
                float _2934 = clamp(_2918.y, _2928, 1.0f - _2928) * 0.3333333432674407958984375f;
                float _2935 = _2918.z;
                float4 _2938 = _69.SampleLevel(_15, float3(_2933, _2934, _2935), 0.0f);
                float _2954 = _2922.x;
                float _2965 = _2922.y;
                float _2976 = _2922.z;
                _2987 = _2902 + (float4(((_69.SampleLevel(_15, float3(_2933, _2934 + 0.666666686534881591796875f, _2935), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2976, _2976) * _2924);
                _2988 = _2903 + (float4(((_69.SampleLevel(_15, float3(_2933, _2934 + 0.3333333432674407958984375f, _2935), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2965, _2965) * _2924);
                _2989 = _2904 + (float4(((_2938.xyz * 4.0f) - 2.0f.xxx) * _2954, _2954) * _2924);
                _2990 = _2901 + (_2938.w * _2924);
            }
            else
            {
                _2987 = _2902;
                _2988 = _2903;
                _2989 = _2904;
                _2990 = _2901;
            }
            float _2993 = clamp((_2990 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _2997 = _2987;
            _2998 = _2988;
            _2999 = _2989;
            _3000 = _2993 - _2695;
            _3001 = (_2993 + _2695) * 0.5f;
        }
        else
        {
            _2997 = 0.0f.xxxx;
            _2998 = 0.0f.xxxx;
            _2999 = 0.0f.xxxx;
            _3000 = 0.0f;
            _3001 = 1.0f;
        }
        float4 _3021 = _2999 + float4(_9_m108.x * _3001, (_9_m108.y * _3001) + ((_9_m108.w * _3000) * 0.5f), _9_m108.z * _3001, (_9_m108.w * _3001) + ((_9_m108.y * _3000) * 0.375f));
        float4 _3041 = _2998 + float4(_9_m109.x * _3001, (_9_m109.y * _3001) + ((_9_m109.w * _3000) * 0.5f), _9_m109.z * _3001, (_9_m109.w * _3001) + ((_9_m109.y * _3000) * 0.375f));
        float4 _3061 = _2997 + float4(_9_m110.x * _3001, (_9_m110.y * _3001) + ((_9_m110.w * _3000) * 0.5f), _9_m110.z * _3001, (_9_m110.w * _3001) + ((_9_m110.y * _3000) * 0.375f));
        float4 _3219;
        float4 _3220;
        float4 _3221;
        [branch]
        if (all(bool2(_551.x >= 0.0f.xx.x, _551.y >= 0.0f.xx.y)))
        {
            float4 _3069 = _63.SampleLevel(_15, _551, 0.0f);
            float4 _3070 = abs(_3069);
            float4 _3216;
            float4 _3217;
            float4 _3218;
            [branch]
            if (any(bool4(_3070.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3070.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3070.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3070.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _3076 = length(_3069.yzw);
                uint _3078;
                float _3081;
                _3078 = 0u;
                _3081 = 1.0f;
                for (float _3083 = _3076; _3083 > 4.599999904632568359375f; )
                {
                    _3078++;
                    _3081 *= 0.5f;
                    _3083 *= 0.5f;
                    continue;
                }
                float4 _3087 = _3069 * _3081;
                float4 _3092 = float4(0.0f, _3087.yzw);
                float2 _3114 = (_62.SampleLevel(_15, float2(((((length(_3092) * _61_m3.x) + _61_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _61_m2.xy) + _61_m2.zw;
                float4 _3128;
                _3128 = float4(_3114.x * 3.5449078083038330078125f, _3092.yzw * _3114.y) * exp(_3087.x * 0.282094776630401611328125f);
                for (uint _3131 = 0u; _3131 < _3078; )
                {
                    _3128 = mul(float4x4(_3128, float4(_3128.yx, 0.0f, 0.0f), float4(_3128.z, 0.0f, _3128.x, 0.0f), float4(_3128.w, 0.0f, 0.0f, _3128.x)) * 0.282094776630401611328125f, _3128);
                    _3131++;
                    continue;
                }
                float4x4 _3152 = float4x4(_3128, float4(_3128.yx, 0.0f, 0.0f), float4(_3128.z, 0.0f, _3128.x, 0.0f), float4(_3128.w, 0.0f, 0.0f, _3128.x)) * 0.282094776630401611328125f;
                float4 _3162 = mul(_3152, float4(_3021.w * 1.1283791065216064453125f, _3021.y * (-0.977204978466033935546875f), _3021.z * 0.977204978466033935546875f, _3021.x * (-0.977204978466033935546875f)));
                float4 _3182 = mul(_3152, float4(_3041.w * 1.1283791065216064453125f, _3041.y * (-0.977204978466033935546875f), _3041.z * 0.977204978466033935546875f, _3041.x * (-0.977204978466033935546875f)));
                float4 _3202 = mul(_3152, float4(_3061.w * 1.1283791065216064453125f, _3061.y * (-0.977204978466033935546875f), _3061.z * 0.977204978466033935546875f, _3061.x * (-0.977204978466033935546875f)));
                _3216 = float4(_3162.x * 0.886226952075958251953125f, _3162.w * (-1.02332675457000732421875f), _3162.y * (-1.02332675457000732421875f), _3162.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _3217 = float4(_3182.x * 0.886226952075958251953125f, _3182.w * (-1.02332675457000732421875f), _3182.y * (-1.02332675457000732421875f), _3182.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _3218 = float4(_3202.x * 0.886226952075958251953125f, _3202.w * (-1.02332675457000732421875f), _3202.y * (-1.02332675457000732421875f), _3202.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _3216 = _3021;
                _3217 = _3041;
                _3218 = _3061;
            }
            _3219 = _3216;
            _3220 = _3217;
            _3221 = _3218;
        }
        else
        {
            _3219 = _3021;
            _3220 = _3041;
            _3221 = _3061;
        }
        float _3226 = max(0.0f, dot(_3219.xyz, _525) + _3219.w);
        float _3231 = max(0.0f, dot(_3220.xyz, _525) + _3220.w);
        float _3236 = max(0.0f, dot(_3221.xyz, _525) + _3221.w);
        float3 _3260 = reflect(_591, _525);
        float _3268 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_776, 0.001000000047497451305389404296875f))));
        float2 _3272 = floor(_538 * _30_m0.w);
        float _3289 = floor(_570 - _30_m2.y);
        float _3293 = clamp(_3289, 0.0f, _30_m1.x - 1.0f);
        uint _3303 = (_3289 <= _3293) ? (_27.Load(uint(_9_m21.z + int(_3272.x + (_3272.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_3293)) * 4 + 0)) : 0u;
        float _3306 = dot(float4(_3226, _3231, _3236, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _3308;
        float _3311;
        uint _3313;
        _3308 = 0.0f.xxx;
        _3311 = 1.0f;
        _3313 = _3303;
        uint _3314;
        float3 _3309;
        float _3312;
        bool _3316;
        [loop]
        for (;;)
        {
            _3316 = _3311 > 0.00999999977648258209228515625f;
            if ((_3313 != 0u) && _3316)
            {
                uint _3320 = firstbitlow(_3313);
                _3314 = _3313 ^ (1u << (_3320 & 31u));
                float3 _3340 = float3(dot(_30_m4[_3320]._m2, _567), dot(_30_m4[_3320]._m3, _567), dot(_30_m4[_3320]._m4, _567));
                float3 _3341 = abs(_3340);
                if (all(bool3(_3341.x <= _30_m4[_3320]._m1.xyz.x, _3341.y <= _30_m4[_3320]._m1.xyz.y, _3341.z <= _30_m4[_3320]._m1.xyz.z)))
                {
                    float3 _3350 = _30_m4[_3320]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _3352 = _3341 * 0.100000001490116119384765625f;
                    float3 _3353 = _3352 * _3352;
                    float3 _3356 = (_30_m4[_3320]._m1.xyz - _3341) * _30_m4[_3320]._m5.xyz;
                    float3 _3404;
                    [branch]
                    if (_30_m4[_3320]._m6.x == 1.0f)
                    {
                        float3 _3389 = float3(dot(_30_m4[_3320]._m2.xyz, _3260), dot(_30_m4[_3320]._m3.xyz, _3260), dot(_30_m4[_3320]._m4.xyz, _3260));
                        float3 _3391 = (_30_m4[_3320]._m1.xyz - _3340) / _3389;
                        float3 _3394 = ((-_30_m4[_3320]._m1.xyz) - _3340) / _3389;
                        bool3 _3395 = bool3(_3389.x > 0.0f.xxx.x, _3389.y > 0.0f.xxx.y, _3389.z > 0.0f.xxx.z);
                        float3 _3396 = float3(_3395.x ? _3391.x : _3394.x, _3395.y ? _3391.y : _3394.y, _3395.z ? _3391.z : _3394.z);
                        _3404 = _3340 + (_3389 * min(min(_3396.x, _3396.y), _3396.z));
                    }
                    else
                    {
                        _3404 = _3260;
                    }
                    float3 _3405 = normalize(_3404);
                    float3 _3408 = float3(int3(sign(_3405)));
                    float3 _3411 = _3405 / dot(_3405, _3408).xxx;
                    float3 _3425;
                    if (_3411.z < 0.0f)
                    {
                        float3 _3416 = abs(_3411);
                        float2 _3423 = _3408.xy * float2(1.0f - _3416.y, 1.0f - _3416.x);
                        _3425 = float3(_3423.x, _3423.y, _3411.z);
                    }
                    else
                    {
                        _3425 = _3411;
                    }
                    float _3449 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_3320]._m0, float4(_525, 1.0f))));
                    float _3462 = clamp((min(_3356.x, min(_3356.y, _3356.z)) * _30_m4[_3320]._m6.y) + ((((((_3350 * _3350).x - ((_3353.x + _3353.y) + _3353.z)) * _30_m4[_3320]._m5.x) * _30_m4[_3320]._m5.x) * (1.0f - _30_m4[_3320]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_3320]._m6.w;
                    _3309 = _3308 + ((((_25.SampleLevel(_17, float3((((_3425.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_3320]._m1.w), _3268).xyz * _30_m4[_3320]._m5.w) * ((((((clamp(abs(_3306 / _3449), 0.0f, 1.0f) * 2.0f) + _3306) / (2.0f + _3449)) - 1.0f) * _9_m23.w) + 1.0f)) * _3462) * _3311);
                    _3312 = _3311 * (1.0f - _3462);
                }
                else
                {
                    _3309 = _3308;
                    _3312 = _3311;
                }
                _3308 = _3309;
                _3311 = _3312;
                _3313 = _3314;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _3530;
        if (_3316)
        {
            float3 _3470 = normalize(_3260);
            float3 _3473 = float3(int3(sign(_3470)));
            float3 _3476 = _3470 / dot(_3470, _3473).xxx;
            float3 _3490;
            if (_3476.z < 0.0f)
            {
                float3 _3481 = abs(_3476);
                float2 _3488 = _3473.xy * float2(1.0f - _3481.y, 1.0f - _3481.x);
                _3490 = float3(_3488.x, _3488.y, _3476.z);
            }
            else
            {
                _3490 = _3476;
            }
            float _3516 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_525, 1.0f))));
            _3530 = _3308 + ((_25.SampleLevel(_17, float3((((_3490.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _3268).xyz * ((((((clamp(abs(_3306 / _3516), 0.0f, 1.0f) * 2.0f) + _3306) / (2.0f + _3516)) - 1.0f) * _9_m23.w) + 1.0f)) * _3311);
        }
        else
        {
            _3530 = _3308;
        }
        float3 _3536 = (_3530 * _9_m23.z) * _9_m22.y;
        float3 _3557;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _3551 = _23.SampleBias(_15, _4, _9_m16);
            float _3552 = _3551.x;
            _3557 = (_22.SampleBias(_15, _4, _9_m16).xyz * _3552) + (_3536 * (1.0f - _3552));
        }
        else
        {
            _3557 = _3536;
        }
        _4491 = (((float3(_3226, _3231, _3236) * (_778 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_528, _529, _530).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _529.xxx) * _530) * _531))) * _9_m22.x) * _2642) + ((_3557 * _798) * _2641);
    }
    float4 _4493 = float4(_2604.x, _2604.y, _2604.z, _1116.w) + float4(_4491.x, _4491.y, _4491.z, 0.0f.xxxx.w);
    float _4511 = _563.y * _9_m46.w;
    float _4516 = max(0.00999999977648258209228515625f, _4511 + _9_m47.w);
    float3 _4530 = exp(_9_m45.xyz * ((-max(0.0f, (_590 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4516)) / _4516) * exp(_4511 + _9_m48.w))));
    float _4533 = dot(_591, _9_m44.xyz);
    float _4539 = _9_m45.w * _9_m45.w;
    float _4543 = (1.0f + _4539) - ((2.0f * _9_m45.w) * _4533);
    float3 _4867;
    float _4868;
    if (_9_m55.z > 0.0f)
    {
        uint3 _4695 = (uint3(int3(_405, _406, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4696 = _4695.y;
        uint _4697 = _4695.z;
        uint _4700 = _4695.x + (_4696 * _4697);
        uint _4702 = _4696 + (_4697 * _4700);
        uint _4704 = _4697 + (_4700 * _4702);
        uint _4706 = _4700 + (_4702 * _4704);
        float _4730 = dot(_591, -_7_m0[2].xyz);
        float3 _4738 = _563 - _7_m11.xyz;
        float _4740 = (_9_m55.w * ((_4730 > 5.9604644775390625e-08f) ? (1.0f / _4730) : 0.0f)) * (1.0f / _590);
        float _4741 = _4738.y;
        float _4742 = _4740 * _4741;
        float _4744 = _7_m11.y + _4742;
        float _4745 = _4741 - _4742;
        float _4747 = (1.0f - _4740) * _590;
        float _4761 = max(-127.0f, _9_m49.z * _4745);
        float _4785 = max(-127.0f, _9_m52.x * _4745);
        float _4796 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4744 - _9_m49.x)))) * ((abs(_4761) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4761)) / _4761) : (0.693147182464599609375f - (0.2402265071868896484375f * _4761)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4744 - _9_m52.z)))) * ((abs(_4785) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4785)) / _4785) : (0.693147182464599609375f - (0.2402265071868896484375f * _4785))));
        float _4818 = clamp((_590 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _4821 = clamp((max(clamp(exp2(-(_4796 * _4747)), 0.0f, 1.0f), _9_m51.w) + clamp((_590 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4818, 0.0f, 1.0f);
        float4 _4861 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _59.SampleLevel(_15, float3((_538 + ((((float3(uint3(_4706, _4702 + (_4704 * _4706), _389) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_570 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_570 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _4863 = _4861.w;
        _4867 = _4861.xyz + (((_9_m51.xyz * (1.0f - _4821)) + (((_9_m54.xyz * pow(clamp(dot(_589, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4796 * max(_4747 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4818))) * _4863);
        _4868 = _4863 * _4821;
    }
    else
    {
        float3 _4571 = _563 - _7_m11.xyz;
        float _4573 = _4571.y;
        float _4587 = max(-127.0f, _9_m49.z * _4573);
        float _4611 = max(-127.0f, _9_m52.x * _4573);
        float _4622 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4587) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4587)) / _4587) : (0.693147182464599609375f - (0.2402265071868896484375f * _4587)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4611) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4611)) / _4611) : (0.693147182464599609375f - (0.2402265071868896484375f * _4611))));
        float _4644 = clamp((_590 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _4647 = clamp((max(clamp(exp2(-(_4622 * _590)), 0.0f, 1.0f), _9_m51.w) + clamp((_590 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4644, 0.0f, 1.0f);
        _4867 = (_9_m51.xyz * (1.0f - _4647)) + (((_9_m54.xyz * pow(clamp(dot(_589, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4622 * max(_590 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4644));
        _4868 = _4647;
    }
    float3 _4871 = _4530 * _4868;
    float3 _4873 = (clamp(_4493.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _4871) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4533 * _4533)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4539) / max((12.56637096405029296875f * _4543) * sqrt(_4543), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4530)) * _4868) + _4867);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _4873 = (_4873 * 0.65f) + (clamp(_4493.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _4875 = float4(_4873.x, _4873.y, _4873.z, _4493.w);
    _4875.w = dot(_4871, 0.3333333432674407958984375f.xxx);
    _5 = _4875;
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
