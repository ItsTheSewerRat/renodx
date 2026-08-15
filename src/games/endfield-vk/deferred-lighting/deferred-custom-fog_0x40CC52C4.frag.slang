// DX11 0x2A4AA5B9 -> Vulkan 0x40CC52C4
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

static float _389 = 0.0f;
static uint _393 = 0u;

static const int2 _360[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _361[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

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

[[vk::binding(44, 3)]]
cbuffer _8_9 : register(b44)
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

[[vk::binding(39, 3)]]
cbuffer _10_11 : register(b39)
{
    float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(48, 3)]] ByteAddressBuffer _27 : register(t48);
[[vk::binding(45, 3)]]
cbuffer _28_30 : register(b45)
{
    float4 _30_m0 : packoffset(c0);
    float4 _30_m1 : packoffset(c1);
    float4 _30_m2 : packoffset(c2);
    float4 _30_m3 : packoffset(c3);
    _29 _30_m4[32] : packoffset(c4);
};

[[vk::binding(41, 3)]]
cbuffer _31_32 : register(b41)
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

[[vk::binding(40, 3)]]
cbuffer _33_34 : register(b40)
{
    float4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c1);
    float4 _34_m2 : packoffset(c2);
    float4 _34_m3 : packoffset(c3);
    float4 _34_m4 : packoffset(c4);
    uint4 _34_m5 : packoffset(c5);
    float4 _34_m6[2048] : packoffset(c6);
};

[[vk::binding(43, 3)]]
cbuffer _35_36 : register(b43)
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

[[vk::binding(47, 3)]]
cbuffer _37_38 : register(b47)
{
    column_major float4x4 _38_m0[32] : packoffset(c0);
    float4 _38_m1[32] : packoffset(c128);
    uint4 _38_m2[56] : packoffset(c160);
    int4 _38_m3 : packoffset(c216);
    float4 _38_m4 : packoffset(c217);
    float4 _38_m5[4] : packoffset(c218);
    float4 _38_m6 : packoffset(c222);
};

[[vk::binding(36, 3)]]
cbuffer _44_45 : register(b36)
{
    column_major float4x4 _45_m0 : packoffset(c0);
    float4 _45_m1 : packoffset(c4);
};

[[vk::binding(38, 3)]]
cbuffer _51_52 : register(b38)
{
    float4 _52_m0[15] : packoffset(c0);
    float4 _52_m1[15] : packoffset(c15);
};

[[vk::binding(46, 3)]]
cbuffer _55_56 : register(b46)
{
    float4 _56_m0[32] : packoffset(c0);
    column_major float4x4 _56_m1[32] : packoffset(c32);
};

[[vk::binding(42, 3)]]
cbuffer _60_61 : register(b42)
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
[[vk::binding(33, 3)]] Texture2D<float4> _21 : register(t33);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _23 : register(t13);
[[vk::binding(26, 3)]] Texture2D<float4> _24 : register(t26);
[[vk::binding(14, 3)]] Texture2DArray<float4> _25 : register(t14);
[[vk::binding(16, 3)]] Texture2D<float4> _39 : register(t16);
[[vk::binding(11, 3)]] Texture2D<float4> _40 : register(t11);
[[vk::binding(28, 3)]] Texture2D<float4> _41 : register(t28);
[[vk::binding(34, 3)]] Texture2D<float4> _42 : register(t34);
[[vk::binding(8, 3)]] Texture2D<float4> _43 : register(t8);
[[vk::binding(15, 3)]] Texture3D<float4> _47 : register(t15);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17);
[[vk::binding(9, 3)]] Texture2DArray<float4> _49 : register(t9);
[[vk::binding(10, 3)]] Texture2DArray<float4> _50 : register(t10);
[[vk::binding(32, 3)]] Texture2D<float4> _53 : register(t32);
[[vk::binding(18, 3)]] Texture2D<float4> _54 : register(t18);
[[vk::binding(25, 3)]] Texture3D<float4> _59 : register(t25);
[[vk::binding(35, 3)]] Texture2D<float4> _62 : register(t35);
[[vk::binding(7, 3)]] Texture2D<float4> _63 : register(t7);
[[vk::binding(24, 3)]] Texture3D<float4> _64 : register(t24);
[[vk::binding(21, 3)]] Texture3D<float4> _65 : register(t21);
[[vk::binding(23, 3)]] Texture3D<float4> _66 : register(t23);
[[vk::binding(20, 3)]] Texture3D<float4> _67 : register(t20);
[[vk::binding(22, 3)]] Texture3D<float4> _68 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _69 : register(t19);
[[vk::binding(6, 3)]] Texture2D<float4> _70 : register(t6);
[[vk::binding(31, 3)]] Texture2D<float4> _71 : register(t31);
[[vk::binding(30, 3)]] Texture2D<float4> _72 : register(t30);
[[vk::binding(29, 3)]] Texture2D<float4> _73 : register(t29);
[[vk::binding(27, 3)]] Texture3D<float4> _74 : register(t27);

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
    uint2 _406 = uint2(gl_FragCoord.xy);
    int _409 = int(_406.x);
    int _410 = int(_406.y);
    int2 _412 = int3(_409, _410, 0).xy;
    float4 _414 = _71.Load(int3(_412, 0));
    float4 _416 = _72.Load(int3(_412, 0));
    float4 _418 = _73.Load(int3(_412, 0));
    uint _422 = uint(round(_418.w * 255.0f));
    float3 _528;
    float3 _529;
    float _530;
    float _531;
    float _532;
    float _533;
    float _534;
    float _535;
    float3 _536;
    uint _537;
    float _538;
    bool _539;
    [branch]
    if ((_422 & 128u) != 0u)
    {
        float2 _470 = (_414.xy * 2.0f) - 1.0f.xx;
        float _474 = 1.0f - dot(1.0f.xx, abs(_470));
        float3 _476 = float3(_470.x, _474, _470.y);
        float3 _488;
        if (_474 < 0.0f)
        {
            float2 _483 = _476.xz;
            bool2 _484 = bool2(_483.x >= 0.0f.xx.x, _483.y >= 0.0f.xx.y);
            float2 _486 = (1.0f.xx - abs(_476.zx)) * float2(_484.x ? 1.0f.xx.x : (-1.0f).xx.x, _484.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _488 = float3(_486.x, _476.y, _486.y);
        }
        else
        {
            _488 = _476;
        }
        float2 _493 = (_416.xy * 2.0f) - 1.0f.xx;
        float _497 = 1.0f - dot(1.0f.xx, abs(_493));
        float3 _499 = float3(_493.x, _497, _493.y);
        float3 _511;
        if (_497 < 0.0f)
        {
            float2 _506 = _499.xz;
            bool2 _507 = bool2(_506.x >= 0.0f.xx.x, _506.y >= 0.0f.xx.y);
            float2 _509 = (1.0f.xx - abs(_499.zx)) * float2(_507.x ? 1.0f.xx.x : (-1.0f).xx.x, _507.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _511 = float3(_509.x, _499.y, _509.y);
        }
        else
        {
            _511 = _499;
        }
        _528 = _418.xyz;
        _529 = normalize(_511);
        _530 = _416.z;
        _531 = _414.z;
        _532 = 0.0f;
        _533 = 0.0f;
        _534 = 0.0f;
        _535 = 0.0f;
        _536 = normalize(_488);
        _537 = uint(int((round(_414.w * 3.0f) * 4.0f) + round(_416.w * 3.0f)));
        _538 = float(_422 & 127u) * 0.0078740157186985015869140625f;
        _539 = true;
    }
    else
    {
        float2 _432 = (_416.xy * 2.0f) - 1.0f.xx;
        float _436 = 1.0f - dot(1.0f.xx, abs(_432));
        float3 _438 = float3(_432.x, _436, _432.y);
        float3 _450;
        if (_436 < 0.0f)
        {
            float2 _445 = _438.xz;
            bool2 _446 = bool2(_445.x >= 0.0f.xx.x, _445.y >= 0.0f.xx.y);
            float2 _448 = (1.0f.xx - abs(_438.zx)) * float2(_446.x ? 1.0f.xx.x : (-1.0f).xx.x, _446.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _450 = float3(_448.x, _438.y, _448.y);
        }
        else
        {
            _450 = _438;
        }
        uint _458 = clamp(_422 - 1u, 0u, 62u);
        bool4 _459 = ((_422 > 0u) && (_422 <= 63u)).xxxx;
        float4 _462 = float4(_459.x ? _11_m0[_458].x : 0.0f.xxxx.x, _459.y ? _11_m0[_458].y : 0.0f.xxxx.y, _459.z ? _11_m0[_458].z : 0.0f.xxxx.z, _459.w ? _11_m0[_458].w : 0.0f.xxxx.w);
        _528 = _418.xyz;
        _529 = normalize(_450);
        _530 = _416.z;
        _531 = _414.y;
        _532 = _462.y;
        _533 = _462.z;
        _534 = _462.x * _414.x;
        _535 = _462.w;
        _536 = 0.0f.xxx;
        _537 = _422;
        _538 = 0.0f;
        _539 = false;
    }
    float2 _542 = float2(_406);
    float2 _547 = (_542 + 0.5f.xx) * _9_m0.zw;
    float2 _555 = gl_FragCoord.xy * _9_m0.zw;
    float2 _557 = (_555 * 2.0f) - 1.0f.xx;
    float4 _560 = float4(_557, _21.SampleLevel(_14, _547, 0.0f).x, 1.0f);
    _560.y = -_557.y;
    float4 _563 = mul(_7_m6, _560);
    float3 _567 = _563.xyz / _563.w.xxx;
    float4 _571 = float4(_567, 1.0f);
    float _574 = abs(mul(_7_m0, _571).z);
    float3 _589;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _589 = _7_m11.xyz - _567;
            break;
        }
        else
        {
            _589 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _590 = dot(_589, _589);
    float _592 = rsqrt(max(_590, 9.9999999392252902907785028219223e-09f));
    float3 _593 = _589 * _592;
    float _594 = _590 * _592;
    float3 _595 = -_593;
    float2 _608;
    if (_9_m129.x > 0.00048828125f)
    {
        _608 = _70.SampleBias(_15, _4, _9_m16).xy;
    }
    else
    {
        _608 = 1.0f.xx;
    }
    float _609 = dot(_529, float3(0.0f, -1.0f, 0.0f));
    float3 _664;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _636 = abs(_529.x);
        float _638 = abs(_529.y);
        float _640 = abs(_529.z);
        float3 _645 = float3(_636, _638, _640) * (1.0f / ((_636 + _638) + _640));
        _664 = ((((float3(0.0f, 0.0f, 1.0f) * _645.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _645.y)) + (float3(1.0f, 0.0f, 0.0f) * _645.z)) * ((_47.SampleLevel(_16, _567 * _9_m124.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_609)));
    }
    else
    {
        _664 = 0.0f.xxx;
    }
    float4 _678 = mul(_45_m0, float4((_567 + ((((_529 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_609, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _609), 0.100000001490116119384765625f, 1.0f)))) + _664, 1.0f));
    float2 _681 = (_678.xy * 0.5f) + 0.5f.xx;
    float4 _682 = float4(_681.x, _681.y, _678.z, _678.w);
    _682.y = 1.0f - _681.y;
    float _703;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _703 = _43.SampleCmpLevelZero(_19, (_682.xy + _45_m1.xy).xy, max(_678.z, 0.00048828125f));
    }
    else
    {
        _703 = 1.0f;
    }
    float _708 = lerp(_9_m125.w, 1.0f, clamp(_529.y, 0.0f, 1.0f));
    float2 _717 = abs(_567.xz - _7_m11.xz);
    float _720 = max(_717.x, _717.y);
    float _738 = min(_608.x, _608.y);
    float2 _740 = _608 * (1.0f - lerp(lerp(_9_m125.z * _708, 1.0f, lerp(_708 * _703, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _720))), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _720)));
    float _741 = _740.x;
    float _742 = 1.0f - _530;
    float _750 = clamp(clamp((_742 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f), 0.0f, 1.0f);
    float _752 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _609);
    float _759 = lerp(1.0f, 0.25f, (_9_m117.x * _750) * _752);
    float _775 = (1.0f - lerp(_742, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _750) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_742)), 0.0f, 1.0f), _742, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _752) * (1.0f - _741))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
    float _780 = lerp(lerp(min(1.0f, _775), _775, _738), _530, _741);
    float3 _782 = _528 * lerp(lerp(min(1.0f, _759), _759, _738), 1.0f, _741);
    float _783 = dot(_529, _593);
    float _784 = max(0.0f, _783);
    float4 _786 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _780) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _787 = _786.x;
    float2 _797 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_787 * _787, exp2((-9.27999973297119140625f) * _784)) * _787) + _786.y)) + _786.zw;
    float3 _802 = (0.039999999105930328369140625f.xxx * _797.x) + _797.y.xxx;
    float4 _808 = _40.Load(int3(_412, 0));
    float _809 = _808.x;
    float4 _1120;
    if (_809 > 0.001000000047497451305389404296875f)
    {
        float3 _820 = reflect(_595, _529);
        float3 _821 = -_34_m0.xyz;
        float _826 = dot(_821, _820);
        float3 _828 = _820 - (_821 * _826);
        bool3 _830 = (_826 < _34_m4.z).xxx;
        float3 _838 = normalize((_821 * _34_m4.z) + ((_828 * rsqrt(max(6.103515625e-05f, dot(_828, _828)))) * _34_m4.y));
        float3 _839 = float3(_830.x ? _838.x : _820.x, _830.y ? _838.y : _820.y, _830.z ? _838.z : _820.z);
        float3 _843 = _839 + _593;
        float3 _847 = _843 * rsqrt(max(6.103515625e-05f, dot(_843, _843)));
        float _849 = clamp(dot(_839, _529), 0.0f, 1.0f);
        float _851 = clamp(dot(_529, _847), 0.0f, 1.0f);
        float _853 = clamp(dot(_593, _847), 0.0f, 1.0f);
        float _855 = clamp(_783, 0.0f, 1.0f);
        float3 _1029;
        float3 _1030;
        [branch]
        if (_539)
        {
            float _959 = _780 * _780;
            float _960 = _959 * _959;
            float _981 = (((_851 * _960) - _851) * _851) + 1.0f;
            float _984 = 1.0f - _853;
            float _985 = _984 * _984;
            float _987 = (_984 * _985) * _985;
            float _1011 = 1.0f - _780;
            float _1018 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1011 * (1.04997003078460693359375f + (_1011 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1011))))));
            float _1019 = 1.0f - _1018;
            _1029 = 0.0f.xxx;
            _1030 = min(((0.039999999105930328369140625f.xxx * (1.0f - _987)) + _987.xxx) * ((_960 / (_981 * _981)) * (0.5f / (((_849 * sqrt(((((-_855) * _960) + _855) * _855) + _960)) + (_855 * sqrt(((((-_849) * _960) + _849) * _849) + _960))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_855, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_849, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1018) / _1019)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _1019)));
        }
        else
        {
            float _859 = _780 * _780;
            float _860 = _859 * _859;
            float _881 = (((_851 * _860) - _851) * _851) + 1.0f;
            float _884 = 1.0f - _853;
            float _885 = _884 * _884;
            float _887 = (_884 * _885) * _885;
            float _911 = 1.0f - _780;
            float _918 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_911 * (1.04997003078460693359375f + (_911 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _911))))));
            float _919 = 1.0f - _918;
            float _942 = clamp(1.0f - _534, 0.0f, 1.0f);
            float _950 = clamp((dot(_529, _839) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            _1029 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_532, _533, _534).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _533.xxx) * _534) * lerp((_531 * lerp(1.0f, (_950 * sqrt(_950)) * 1.66666662693023681640625f, _942)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_593, _839), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _942));
            _1030 = min(((0.039999999105930328369140625f.xxx * (1.0f - _887)) + _887.xxx) * ((_860 / (_881 * _881)) * (0.5f / (((_849 * sqrt(((((-_855) * _860) + _855) * _855) + _860)) + (_855 * sqrt(((((-_849) * _860) + _849) * _849) + _860))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_855, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_849, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _918) / _919)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _919)));
        }
        float3 _1031 = _782 * 1.0f;
        float3 _1034 = clamp(_1030 * _34_m4.x, 0.0f.xxx, 1000.0f.xxx) * _849;
        float3 _1105;
        [branch]
        if (_539)
        {
            float3 _1100;
            do
            {
                [branch]
                if (((_537 > 0u) && (_537 <= 15u)) && (_538 > 0.0f))
                {
                    int _1053 = int(clamp(_537 - 1u, 0u, 14u));
                    float _1072 = _538 * _52_m0[_1053].w;
                    float _1077 = float(_1053);
                    _1100 = float3(_49.SampleLevel(_15, float3((dot(normalize(lerp(_529, _536, _52_m0[_1053].x.xxx)), _839) * 0.5f) + 0.5f, _1072, _1077), 0.0f).x, _49.SampleLevel(_15, float3((dot(normalize(lerp(_529, _536, _52_m0[_1053].y.xxx)), _839) * 0.5f) + 0.5f, _1072, _1077), 0.0f).y, _49.SampleLevel(_15, float3((dot(normalize(lerp(_529, _536, _52_m0[_1053].z.xxx)), _839) * 0.5f) + 0.5f, _1072, _1077), 0.0f).z);
                    break;
                }
                _1100 = _849.xxx;
                break;
            } while(false);
            _1105 = _34_m1.xyz * (((_1031 * _1100) + _1034) + _1029);
        }
        else
        {
            _1105 = ((_1034 + _1029) + (_1031 * _849)) * _34_m1.xyz;
        }
        float3 _1118 = lerp(_1105, _1105 * _42.SampleBias(_15, float2(_809, 0.5f), _9_m16).xyz, (1.0f - _809).xxx) * _53.SampleLevel(_15, _555, 0.0f).x;
        _1120 = float4(_1118.x, _1118.y, _1118.z, 0.0f.xxxx.w);
    }
    else
    {
        _1120 = 0.0f.xxxx;
    }
    float2 _1122 = floor(_542 * 0.03125f);
    int _1130 = int((_1122.x + (_1122.y * _32_m5)) * 8.0f);
    float _1137 = floor(_574 - (_9_m3.y * _32_m11));
    float _1141 = clamp(_1137, 0.0f, _32_m7 - 1.0f);
    int _1143 = int(_1141 * 8.0f);
    float4 _1149 = _41.SampleBias(_15, _547, _9_m16);
    float3 _1151;
    float _1154;
    _1151 = 0.0f.xxx;
    _1154 = 1.0f;
    float3 _1152;
    float _1155;
    [loop]
    for (int _1156 = 0; _1156 <= 7; _1151 = _1152, _1154 = _1155, _1156++)
    {
        uint _1174 = (_1137 <= _1141) ? (_27.Load(uint(_1130 + _1156) * 4 + 0) & _27.Load(uint((_9_m21.y + _1143) + _1156) * 4 + 0)) : 0u;
        uint _1175 = uint(_1156);
        float3 _1179;
        _1155 = _1154;
        _1179 = 0.0f.xxx;
        uint _1182;
        float _1177;
        float3 _1180;
        [loop]
        for (uint _1181 = _1174; _1181 != 0u; _1155 = _1177, _1179 = _1180, _1181 = _1182)
        {
            uint _1186 = firstbitlow(_1181);
            _1182 = _1181 ^ (1u << (_1186 & 31u));
            int _1192 = int((32u * _1175) + _1186) * 8;
            int _1195 = _1192 + 1;
            int _1198 = _1192 + 2;
            int _1201 = _1192 + 3;
            int _1204 = _1192 + 5;
            int _1207 = _1192 + 6;
            int _1210 = _1192 + 7;
            uint _1214 = uint(_34_m6[_1204].w);
            float _1289;
            if ((_1214 & 1u) == 1u)
            {
                uint _1220 = asuint(_34_m6[_1204].x);
                uint _1227 = asuint(_34_m6[_1204].y);
                uint _1234 = asuint(_34_m6[_1204].z);
                uint _1241 = asuint(_34_m6[_1207].x);
                uint _1248 = asuint(_34_m6[_1207].y);
                uint _1255 = asuint(_34_m6[_1207].z);
                float3 _1274 = abs(mul(float4(_567 - _34_m6[_1195].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1220).x, spvUnpackHalf2x16(_1234).x, spvUnpackHalf2x16(_1248).x, 0.0f), float4(spvUnpackHalf2x16(_1220 >> 16u).x, spvUnpackHalf2x16(_1234 >> 16u).x, spvUnpackHalf2x16(_1248 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1227).x, spvUnpackHalf2x16(_1241).x, spvUnpackHalf2x16(_1255).x, 0.0f), float4(spvUnpackHalf2x16(_1227 >> 16u).x, spvUnpackHalf2x16(_1241 >> 16u).x, spvUnpackHalf2x16(_1255 >> 16u).x, 0.0f))).xyz);
                float _1281 = _34_m6[_1210].x * 0.5f;
                float _1287 = 1.0f - clamp((max(max(_1274.x, _1274.y), _1274.z) - (_1281 + 0.5f)) / (0.5f - _1281), 0.0f, 1.0f);
                _1289 = _1287 * _1287;
            }
            else
            {
                _1289 = 1.0f;
            }
            bool _1293 = _34_m6[_1201].z > 0.5f;
            if ((false || (_1289 < 0.001000000047497451305389404296875f)) || _1293)
            {
                _1177 = _1155;
                _1180 = _1179;
                continue;
            }
            float _2603;
            float3 _2604;
            if (_34_m6[_1192].w < 1.5f)
            {
                float3 _1801 = float3(0.100000001490116119384765625f, _780, 1.0f);
                float _1810 = (0.5f + (0.5f * _34_m6[_1198].y)) - abs(_34_m6[_1198].x);
                float _1811 = _34_m6[_1198].y - _1810;
                float _1818 = abs(max((1.0f - abs(_1810)) - abs(_1811), 0.00048828125f));
                float3 _1822 = normalize(float3(_1810, _1811, (_34_m6[_1198].x >= 0.0f) ? _1818 : (-_1818)));
                float3 _1823 = _34_m6[_1195].xyz - _567;
                float _1824 = dot(_1823, _1823);
                float _1825 = rsqrt(_1824);
                float3 _1826 = _1823 * _1825;
                float _1830 = clamp(_34_m6[_1210].y * _1825, 0.0f, 1.0f);
                int _1835 = int(_34_m6[_1210].w);
                float3 _1836 = _1822 * _34_m6[_1198].z;
                float3 _1837 = _1836 * 0.5f;
                float3 _1838 = _1823 - _1837;
                float3 _1839 = _1823 + _1837;
                bool _1842 = (uint(_34_m6[_1192].w) & 1u) == 0u;
                bool _1845 = _1842 || ((_1214 & 2u) != 0u);
                bool _1848 = (!_1842) && (_34_m6[_1198].z > 0.0f);
                float _1867;
                float _1868;
                if (_1848)
                {
                    float _1852 = length(_1838);
                    float _1853 = length(_1839);
                    _1867 = clamp(0.5f * ((dot(_529, _1838) / _1852) + (dot(_529, _1839) / _1853)), 0.0f, 1.0f);
                    _1868 = 1.0f / ((((_1852 * _1853) + dot(_1838, _1839)) * 0.5f) + 1.0f);
                }
                else
                {
                    _1867 = clamp(dot(_529, _1826), 0.0f, 1.0f);
                    _1868 = 1.0f;
                }
                float _1890;
                if (_34_m6[_1207].w < 0.0f)
                {
                    float _1884 = _1824 * (_34_m6[_1195].w * _34_m6[_1195].w);
                    float _1887 = clamp(1.0f - (_1884 * _1884), 0.0f, 1.0f);
                    _1890 = lerp(1.0f / (_1824 + 1.0f), _1868, float(_1848)) * (_1887 * _1887);
                }
                else
                {
                    float3 _1873 = _1823 * _34_m6[_1195].w;
                    _1890 = _1868 * pow(1.0f - clamp(dot(_1873, _1873), 0.0f, 1.0f), _34_m6[_1207].w);
                }
                float _1896 = clamp((dot(_1826, -_1822) - _34_m6[_1198].z) * _34_m6[_1198].w, 0.0f, 1.0f);
                float _1900 = _1890 * lerp(1.0f, _1896 * _1896, float(_1842));
                float _2000;
                if ((!_1848) && (_1835 >= 0))
                {
                    uint _1906 = uint(_1835);
                    float2 _1993;
                    [branch]
                    if (_1842)
                    {
                        float4 _1983 = mul(_56_m1[_1906], _571);
                        _1993 = _56_m0[_1906].xy + (clamp(_1983.xy / _1983.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_1906].zw);
                    }
                    else
                    {
                        float3 _1920 = mul(float4(-_1823, 0.0f), _56_m1[_1906]).xyz;
                        float3 _398 = _1920;
                        float3 _397 = _1920;
                        float3 _396 = abs(_1920);
                        uint _1929 = uint(int(_396.y > _396.x));
                        uint _1935 = (_396.z > _396[_1929]) ? 2u : _1929;
                        uint _1941 = (_1935 * 2u) + uint(_397[_1935] < 0.0f);
                        float _1945 = abs(_398[_1941 / 2u]);
                        float _1965 = 0.5f - (0.000244140625f / _56_m0[_1906].w);
                        _1993 = _56_m0[_1906].xy + (clamp(float2((float(_1941) + ((((_398[uint(_360[_1941].x)] * _361[_1941].x) / _1945) * _1965) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_398[uint(_360[_1941].y)] * _361[_1941].y) / _1945) * _1965)), 0.0f.xx, 1.0f.xx) * _56_m0[_1906].zw);
                    }
                    _2000 = _1900 * _54.SampleLevel(_15, _1993, 0.0f).x;
                }
                else
                {
                    _2000 = _1900;
                }
                bool _2001 = _2000 > 0.0f;
                float _2309;
                if (_2001)
                {
                    int _2053;
                    if (_1845)
                    {
                        _2053 = int(_34_m6[_1201].x);
                    }
                    else
                    {
                        uint _2008 = asuint(_34_m6[_1198].w);
                        uint _2010 = asuint(_34_m6[_1201].x);
                        float3 _2011 = _567 - _34_m6[_1195].xyz;
                        float3 _2012 = abs(_2011);
                        float _2013 = _2012.x;
                        float _2014 = _2012.y;
                        float _2016 = _2012.z;
                        int _2048;
                        if ((_2013 > _2014) && (_2013 > _2016))
                        {
                            _2048 = int((_2011.x > 0.0f) ? (_2008 >> 24u) : ((_2008 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2040;
                            if (_2014 > _2016)
                            {
                                _2040 = int((_2011.y > 0.0f) ? ((_2008 >> 8u) & 255u) : (_2008 & 255u));
                            }
                            else
                            {
                                _2040 = int((_2011.z > 0.0f) ? ((_2010 >> 8u) & 255u) : (_2010 & 255u));
                            }
                            _2048 = _2040;
                        }
                        _2053 = (_2048 < 80) ? _2048 : (-1);
                    }
                    float _2307;
                    do
                    {
                        if (_38_m2[_2053].y > 0u)
                        {
                            uint _2071 = uint(_2053);
                            float4 _395 = _1149;
                            float _2082;
                            do
                            {
                                if (_38_m2[_2071].y == 0u)
                                {
                                    _2082 = 1.0f;
                                    break;
                                }
                                _2082 = _395[_38_m2[_2071].y - 1u];
                                break;
                            } while(false);
                            _2307 = _2082;
                            break;
                        }
                        float4 _2089 = mul(_36_m10[_2053], float4((_567 - ((-_1826) * _36_m11[_2053].x)) + (_529 * (_36_m11[_2053].y * 5.0f)), 1.0f));
                        float _2090 = _2089.w;
                        float3 _2093 = _2089.xyz / _2090.xxx;
                        float2 _2094 = _2093.xy;
                        float3 _2102 = _2093.xyz;
                        bool3 _2103 = bool3(_2102.x <= 0.0f.xxx.x, _2102.y <= 0.0f.xxx.y, _2102.z <= 0.0f.xxx.z);
                        bool3 _2104 = bool3(_2102.x >= 1.0f.xxx.x, _2102.y >= 1.0f.xxx.y, _2102.z >= 1.0f.xxx.z);
                        float _2107 = _2093.z;
                        float2 _2118 = ((_2094 * (_36_m12[_2053].zw - _36_m12[_2053].xy)) + _36_m12[_2053].xy).xy * _36_m13.zw;
                        float2 _2120 = floor(_2118 + 0.5f.xx);
                        float2 _2121 = _2118 - _2120;
                        float _2122 = _2121.x;
                        float _2123 = _2122 + 0.5f;
                        float _2124 = _2123 * _2123;
                        float _2127 = 1.0f - _2122;
                        float _2128 = min(_2122, 0.0f);
                        float _2131 = _2122 + 1.0f;
                        float _2132 = max(_2122, 0.0f);
                        float _2143 = _2121.y;
                        float _2144 = _2143 + 0.5f;
                        float _2145 = _2144 * _2144;
                        float _2148 = 1.0f - _2143;
                        float _2149 = min(_2143, 0.0f);
                        float _2152 = _2143 + 1.0f;
                        float _2153 = max(_2143, 0.0f);
                        float3 _2165 = float3(0.1599999964237213134765625f * _2127, 0.1599999964237213134765625f * ((_2131 - (_2132 * _2132)) + 1.0f), _2124 * 0.07999999821186065673828125f);
                        float3 _2166 = float3(0.1599999964237213134765625f * ((_2124 * 0.5f) - _2122), 0.1599999964237213134765625f * ((_2127 - (_2128 * _2128)) + 1.0f), 0.1599999964237213134765625f * _2131) + _2165;
                        float3 _2168 = float3(0.1599999964237213134765625f * _2148, 0.1599999964237213134765625f * ((_2152 - (_2153 * _2153)) + 1.0f), _2145 * 0.07999999821186065673828125f);
                        float3 _2169 = float3(0.1599999964237213134765625f * ((_2145 * 0.5f) - _2143), 0.1599999964237213134765625f * ((_2148 - (_2149 * _2149)) + 1.0f), 0.1599999964237213134765625f * _2152) + _2168;
                        float3 _2175 = ((_2165 / _2166) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.xxx;
                        float3 _2177 = ((_2168 / _2169) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.yyy;
                        float2 _2179 = _2120 * _36_m13.xy;
                        float _2180 = _2175.x;
                        float _2181 = _2177.x;
                        float2 _2183 = _2179 + float2(_2180, _2181);
                        float _2184 = _2175.y;
                        float2 _2186 = _2179 + float2(_2184, _2181);
                        float _2187 = _2175.z;
                        float2 _2189 = _2179 + float2(_2187, _2181);
                        float _2190 = _2177.y;
                        float2 _2192 = _2179 + float2(_2180, _2190);
                        float2 _2194 = _2179 + float2(_2184, _2190);
                        float2 _2196 = _2179 + float2(_2187, _2190);
                        float _2197 = _2177.z;
                        float2 _2199 = _2179 + float2(_2180, _2197);
                        float2 _2201 = _2179 + float2(_2184, _2197);
                        float2 _2203 = _2179 + float2(_2187, _2197);
                        float _2204 = _2166.x;
                        float _2205 = _2169.x;
                        float _2207 = _2166.y;
                        float _2209 = _2166.z;
                        float _2211 = _2169.y;
                        float _2215 = _2169.z;
                        float _2281 = ((((((((_2204 * _2205) * _39.SampleCmpLevelZero(_18, float3(_2183, _389).xy, _2107)) + ((_2207 * _2205) * _39.SampleCmpLevelZero(_18, float3(_2186, _389).xy, _2107))) + ((_2209 * _2205) * _39.SampleCmpLevelZero(_18, float3(_2189, _389).xy, _2107))) + ((_2204 * _2211) * _39.SampleCmpLevelZero(_18, float3(_2192, _389).xy, _2107))) + ((_2207 * _2211) * _39.SampleCmpLevelZero(_18, float3(_2194, _389).xy, _2107))) + ((_2209 * _2211) * _39.SampleCmpLevelZero(_18, float3(_2196, _389).xy, _2107))) + ((_2204 * _2215) * _39.SampleCmpLevelZero(_18, float3(_2199, _389).xy, _2107))) + ((_2207 * _2215) * _39.SampleCmpLevelZero(_18, float3(_2201, _389).xy, _2107));
                        float2 _2294 = min(_2094, 1.0f.xx - _2094);
                        _2307 = lerp(1.0f, (any(bool3(_2103.x || _2104.x, _2103.y || _2104.y, _2103.z || _2104.z)) || ((asuint(_2107) & 2147483647u) > 2139095040u)) ? 1.0f : (_2281 + ((_2209 * _2215) * _39.SampleCmpLevelZero(_18, float3(_2203, _389).xy, _2107))), _1845 ? min(_36_m11[_2053].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_36_m11[_2053].z - _2090) * 0.25f, min(_2294.x, _2294.y)))) : _36_m11[_2053].w);
                        break;
                    } while(false);
                    _2309 = (_2053 >= 0) ? _2307 : 1.0f;
                }
                else
                {
                    _2309 = 1.0f;
                }
                float3 _2333;
                float3 _2334;
                if (_1848)
                {
                    float3 _2312 = _1801 * _1801;
                    float3 _2313 = reflect(_595, _529);
                    float _2322 = dot(_2313, _1836);
                    _2333 = _2312 / clamp(_2312 + (0.5f * clamp(_34_m6[_1198].z * _1825, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _2334 = normalize(_1838 + (_1836 * clamp(dot(_1838, (_2313 * _2322) - _1836) / ((_34_m6[_1198].z * _34_m6[_1198].z) - (_2322 * _2322)), 0.0f, 1.0f)));
                }
                else
                {
                    _2333 = 1.0f.xxx;
                    _2334 = _1826;
                }
                float3 _2335 = _2334 + _593;
                float3 _2339 = _2335 * rsqrt(max(6.103515625e-05f, dot(_2335, _2335)));
                float3 _2602;
                if (_2001)
                {
                    float _2343 = clamp(_1867, 0.0f, 1.0f);
                    float _2345 = clamp(dot(_529, _2339), 0.0f, 1.0f);
                    float _2347 = clamp(dot(_593, _2339), 0.0f, 1.0f);
                    float _2349 = clamp(_783, 0.0f, 1.0f);
                    float3 _2547;
                    float3 _2548;
                    [branch]
                    if (_539)
                    {
                        float _2465 = _780 * _780;
                        float _2475;
                        if (_1830 > 0.0f)
                        {
                            _2475 = clamp(_2465 + ((_1830 * _1830) / ((_2347 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _2475 = _2465;
                        }
                        float _2476 = _2475 * _2475;
                        float _2497 = (((_2345 * _2476) - _2345) * _2345) + 1.0f;
                        float _2502 = 1.0f - _2347;
                        float _2503 = _2502 * _2502;
                        float _2505 = (_2502 * _2503) * _2503;
                        float _2529 = 1.0f - _780;
                        float _2536 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2529 * (1.04997003078460693359375f + (_2529 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2529))))));
                        float _2537 = 1.0f - _2536;
                        _2547 = 0.0f.xxx;
                        _2548 = min(((0.039999999105930328369140625f.xxx * (1.0f - _2505)) + _2505.xxx) * (((_2476 / (_2497 * _2497)) * _2333.y) * (0.5f / (((_2343 * sqrt(((((-_2349) * _2476) + _2349) * _2349) + _2476)) + (_2349 * sqrt(((((-_2343) * _2476) + _2343) * _2343) + _2476))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_2349, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_2343, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2536) / _2537)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _2537)));
                    }
                    else
                    {
                        float _2353 = _780 * _780;
                        float _2363;
                        if (_1830 > 0.0f)
                        {
                            _2363 = clamp(_2353 + ((_1830 * _1830) / ((_2347 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _2363 = _2353;
                        }
                        float _2364 = _2363 * _2363;
                        float _2385 = (((_2345 * _2364) - _2345) * _2345) + 1.0f;
                        float _2390 = 1.0f - _2347;
                        float _2391 = _2390 * _2390;
                        float _2393 = (_2390 * _2391) * _2391;
                        float _2417 = 1.0f - _780;
                        float _2424 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2417 * (1.04997003078460693359375f + (_2417 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2417))))));
                        float _2425 = 1.0f - _2424;
                        float _2448 = clamp(1.0f - _534, 0.0f, 1.0f);
                        float _2456 = clamp((dot(_529, _2334) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                        _2547 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_532, _533, _534).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _533.xxx) * _534) * lerp((_531 * lerp(1.0f, (_2456 * sqrt(_2456)) * 1.66666662693023681640625f, _2448)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_593, _2334), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _2448));
                        _2548 = min(((0.039999999105930328369140625f.xxx * (1.0f - _2393)) + _2393.xxx) * (((_2364 / (_2385 * _2385)) * _2333.y) * (0.5f / (((_2343 * sqrt(((((-_2349) * _2364) + _2349) * _2349) + _2364)) + (_2349 * sqrt(((((-_2343) * _2364) + _2343) * _2343) + _2364))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_2349, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_2343, _780) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2424) / _2425)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _2425)));
                    }
                    float3 _2550 = _782 * _2333.z;
                    float3 _2555 = ((_34_m6[_1192].xyz * _2000) * _2309) * _1289;
                    float3 _2556 = clamp(_2548 * _34_m6[_1210].z, 0.0f.xxx, 1000.0f.xxx) * _1867;
                    float3 _2601;
                    [branch]
                    if (_539)
                    {
                        float3 _2596;
                        do
                        {
                            [branch]
                            if (((_537 > 0u) && (_537 <= 15u)) && (_538 > 0.0f))
                            {
                                int _2575 = int(clamp(_537 - 1u, 0u, 14u));
                                _2596 = _49.SampleLevel(_15, float3((dot(normalize(lerp(_529, _536, dot(_52_m0[_2575].xyz, 0.3333333432674407958984375f.xxx).xxx)), _2334) * 0.5f) + 0.5f, _538 * _52_m0[_2575].w, float(_2575)), 0.0f).xyz;
                                break;
                            }
                            _2596 = _1867.xxx;
                            break;
                        } while(false);
                        _2601 = _2555 * (((_2550 * _2596) + _2556) + _2547);
                    }
                    else
                    {
                        _2601 = ((_2556 + _2547) + (_2550 * _1867)) * _2555;
                    }
                    _2602 = _2601;
                }
                else
                {
                    _2602 = 0.0f.xxx;
                }
                _2603 = _1155;
                _2604 = _2602;
            }
            else
            {
                float _1799;
                do
                {
                    if (_1293)
                    {
                        _1799 = 1.0f;
                        break;
                    }
                    float _1313 = (0.5f + (0.5f * _34_m6[_1198].y)) - abs(_34_m6[_1198].x);
                    float _1314 = _34_m6[_1198].y - _1313;
                    float _1321 = abs(max((1.0f - abs(_1313)) - abs(_1314), 0.00048828125f));
                    float3 _1325 = normalize(float3(_1313, _1314, (_34_m6[_1198].x >= 0.0f) ? _1321 : (-_1321)));
                    float3 _1326 = _34_m6[_1195].xyz - _567;
                    float _1327 = dot(_1326, _1326);
                    float3 _1329 = _1326 * rsqrt(_1327);
                    int _1332 = int(_34_m6[_1210].w);
                    float3 _1334 = (_1325 * _34_m6[_1198].z) * 0.5f;
                    float3 _1335 = _1326 - _1334;
                    float3 _1336 = _1326 + _1334;
                    bool _1339 = (uint(_34_m6[_1192].w) & 1u) == 0u;
                    bool _1342 = _1339 || ((_1214 & 2u) != 0u);
                    bool _1345 = (!_1339) && (_34_m6[_1198].z > 0.0f);
                    float _1357;
                    if (_1345)
                    {
                        _1357 = 1.0f / ((((length(_1335) * length(_1336)) + dot(_1335, _1336)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _1357 = 1.0f;
                    }
                    float _1379;
                    if (_34_m6[_1207].w < 0.0f)
                    {
                        float _1373 = _1327 * (_34_m6[_1195].w * _34_m6[_1195].w);
                        float _1376 = clamp(1.0f - (_1373 * _1373), 0.0f, 1.0f);
                        _1379 = lerp(1.0f / (_1327 + 1.0f), _1357, float(_1345)) * (_1376 * _1376);
                    }
                    else
                    {
                        float3 _1362 = _1326 * _34_m6[_1195].w;
                        _1379 = _1357 * pow(1.0f - clamp(dot(_1362, _1362), 0.0f, 1.0f), _34_m6[_1207].w);
                    }
                    float _1385 = clamp((dot(_1329, -_1325) - _34_m6[_1198].z) * _34_m6[_1198].w, 0.0f, 1.0f);
                    float _1389 = _1379 * lerp(1.0f, _1385 * _1385, float(_1339));
                    float _1489;
                    if ((!_1345) && (_1332 >= 0))
                    {
                        uint _1395 = uint(_1332);
                        float2 _1482;
                        [branch]
                        if (_1339)
                        {
                            float4 _1472 = mul(_56_m1[_1395], _571);
                            _1482 = _56_m0[_1395].xy + (clamp(_1472.xy / _1472.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_1395].zw);
                        }
                        else
                        {
                            float3 _1409 = mul(float4(-_1326, 0.0f), _56_m1[_1395]).xyz;
                            float3 _402 = _1409;
                            float3 _401 = _1409;
                            float3 _400 = abs(_1409);
                            uint _1418 = uint(int(_400.y > _400.x));
                            uint _1424 = (_400.z > _400[_1418]) ? 2u : _1418;
                            uint _1430 = (_1424 * 2u) + uint(_401[_1424] < 0.0f);
                            float _1434 = abs(_402[_1430 / 2u]);
                            float _1454 = 0.5f - (0.000244140625f / _56_m0[_1395].w);
                            _1482 = _56_m0[_1395].xy + (clamp(float2((float(_1430) + ((((_402[uint(_360[_1430].x)] * _361[_1430].x) / _1434) * _1454) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_402[uint(_360[_1430].y)] * _361[_1430].y) / _1434) * _1454)), 0.0f.xx, 1.0f.xx) * _56_m0[_1395].zw);
                        }
                        _1489 = _1389 * _54.SampleLevel(_15, _1482, 0.0f).x;
                    }
                    else
                    {
                        _1489 = _1389;
                    }
                    float _1798;
                    if (_1489 > 0.0f)
                    {
                        int _1542;
                        if (_1342)
                        {
                            _1542 = int(_34_m6[_1201].x);
                        }
                        else
                        {
                            uint _1497 = asuint(_34_m6[_1198].w);
                            uint _1499 = asuint(_34_m6[_1201].x);
                            float3 _1500 = _567 - _34_m6[_1195].xyz;
                            float3 _1501 = abs(_1500);
                            float _1502 = _1501.x;
                            float _1503 = _1501.y;
                            float _1505 = _1501.z;
                            int _1537;
                            if ((_1502 > _1503) && (_1502 > _1505))
                            {
                                _1537 = int((_1500.x > 0.0f) ? (_1497 >> 24u) : ((_1497 >> 16u) & 255u));
                            }
                            else
                            {
                                int _1529;
                                if (_1503 > _1505)
                                {
                                    _1529 = int((_1500.y > 0.0f) ? ((_1497 >> 8u) & 255u) : (_1497 & 255u));
                                }
                                else
                                {
                                    _1529 = int((_1500.z > 0.0f) ? ((_1499 >> 8u) & 255u) : (_1499 & 255u));
                                }
                                _1537 = _1529;
                            }
                            _1542 = (_1537 < 80) ? _1537 : (-1);
                        }
                        float _1796;
                        do
                        {
                            if (_38_m2[_1542].y > 0u)
                            {
                                uint _1560 = uint(_1542);
                                float4 _399 = _1149;
                                float _1571;
                                do
                                {
                                    if (_38_m2[_1560].y == 0u)
                                    {
                                        _1571 = 1.0f;
                                        break;
                                    }
                                    _1571 = _399[_38_m2[_1560].y - 1u];
                                    break;
                                } while(false);
                                _1796 = _1571;
                                break;
                            }
                            float4 _1578 = mul(_36_m10[_1542], float4((_567 - ((-_1329) * _36_m11[_1542].x)) + (_529 * (_36_m11[_1542].y * 5.0f)), 1.0f));
                            float _1579 = _1578.w;
                            float3 _1582 = _1578.xyz / _1579.xxx;
                            float2 _1583 = _1582.xy;
                            float3 _1591 = _1582.xyz;
                            bool3 _1592 = bool3(_1591.x <= 0.0f.xxx.x, _1591.y <= 0.0f.xxx.y, _1591.z <= 0.0f.xxx.z);
                            bool3 _1593 = bool3(_1591.x >= 1.0f.xxx.x, _1591.y >= 1.0f.xxx.y, _1591.z >= 1.0f.xxx.z);
                            float _1596 = _1582.z;
                            float2 _1607 = ((_1583 * (_36_m12[_1542].zw - _36_m12[_1542].xy)) + _36_m12[_1542].xy).xy * _36_m13.zw;
                            float2 _1609 = floor(_1607 + 0.5f.xx);
                            float2 _1610 = _1607 - _1609;
                            float _1611 = _1610.x;
                            float _1612 = _1611 + 0.5f;
                            float _1613 = _1612 * _1612;
                            float _1616 = 1.0f - _1611;
                            float _1617 = min(_1611, 0.0f);
                            float _1620 = _1611 + 1.0f;
                            float _1621 = max(_1611, 0.0f);
                            float _1632 = _1610.y;
                            float _1633 = _1632 + 0.5f;
                            float _1634 = _1633 * _1633;
                            float _1637 = 1.0f - _1632;
                            float _1638 = min(_1632, 0.0f);
                            float _1641 = _1632 + 1.0f;
                            float _1642 = max(_1632, 0.0f);
                            float3 _1654 = float3(0.1599999964237213134765625f * _1616, 0.1599999964237213134765625f * ((_1620 - (_1621 * _1621)) + 1.0f), _1613 * 0.07999999821186065673828125f);
                            float3 _1655 = float3(0.1599999964237213134765625f * ((_1613 * 0.5f) - _1611), 0.1599999964237213134765625f * ((_1616 - (_1617 * _1617)) + 1.0f), 0.1599999964237213134765625f * _1620) + _1654;
                            float3 _1657 = float3(0.1599999964237213134765625f * _1637, 0.1599999964237213134765625f * ((_1641 - (_1642 * _1642)) + 1.0f), _1634 * 0.07999999821186065673828125f);
                            float3 _1658 = float3(0.1599999964237213134765625f * ((_1634 * 0.5f) - _1632), 0.1599999964237213134765625f * ((_1637 - (_1638 * _1638)) + 1.0f), 0.1599999964237213134765625f * _1641) + _1657;
                            float3 _1664 = ((_1654 / _1655) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.xxx;
                            float3 _1666 = ((_1657 / _1658) + float3(-2.5f, -0.5f, 1.5f)) * _36_m13.yyy;
                            float2 _1668 = _1609 * _36_m13.xy;
                            float _1669 = _1664.x;
                            float _1670 = _1666.x;
                            float2 _1672 = _1668 + float2(_1669, _1670);
                            float _1673 = _1664.y;
                            float2 _1675 = _1668 + float2(_1673, _1670);
                            float _1676 = _1664.z;
                            float2 _1678 = _1668 + float2(_1676, _1670);
                            float _1679 = _1666.y;
                            float2 _1681 = _1668 + float2(_1669, _1679);
                            float2 _1683 = _1668 + float2(_1673, _1679);
                            float2 _1685 = _1668 + float2(_1676, _1679);
                            float _1686 = _1666.z;
                            float2 _1688 = _1668 + float2(_1669, _1686);
                            float2 _1690 = _1668 + float2(_1673, _1686);
                            float2 _1692 = _1668 + float2(_1676, _1686);
                            float _1693 = _1655.x;
                            float _1694 = _1658.x;
                            float _1696 = _1655.y;
                            float _1698 = _1655.z;
                            float _1700 = _1658.y;
                            float _1704 = _1658.z;
                            float _1770 = ((((((((_1693 * _1694) * _39.SampleCmpLevelZero(_18, float3(_1672, _389).xy, _1596)) + ((_1696 * _1694) * _39.SampleCmpLevelZero(_18, float3(_1675, _389).xy, _1596))) + ((_1698 * _1694) * _39.SampleCmpLevelZero(_18, float3(_1678, _389).xy, _1596))) + ((_1693 * _1700) * _39.SampleCmpLevelZero(_18, float3(_1681, _389).xy, _1596))) + ((_1696 * _1700) * _39.SampleCmpLevelZero(_18, float3(_1683, _389).xy, _1596))) + ((_1698 * _1700) * _39.SampleCmpLevelZero(_18, float3(_1685, _389).xy, _1596))) + ((_1693 * _1704) * _39.SampleCmpLevelZero(_18, float3(_1688, _389).xy, _1596))) + ((_1696 * _1704) * _39.SampleCmpLevelZero(_18, float3(_1690, _389).xy, _1596));
                            float2 _1783 = min(_1583, 1.0f.xx - _1583);
                            _1796 = lerp(1.0f, (any(bool3(_1592.x || _1593.x, _1592.y || _1593.y, _1592.z || _1593.z)) || ((asuint(_1596) & 2147483647u) > 2139095040u)) ? 1.0f : (_1770 + ((_1698 * _1704) * _39.SampleCmpLevelZero(_18, float3(_1692, _389).xy, _1596))), _1342 ? min(_36_m11[_1542].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_36_m11[_1542].z - _1579) * 0.25f, min(_1783.x, _1783.y)))) : _36_m11[_1542].w);
                            break;
                        } while(false);
                        _1798 = (_1542 >= 0) ? _1796 : 1.0f;
                    }
                    else
                    {
                        _1798 = 1.0f;
                    }
                    _1799 = _1798;
                    break;
                } while(false);
                _2603 = _1155 * _1799;
                _2604 = 0.0f.xxx;
            }
            _1177 = _2603;
            _1180 = _1179 + _2604;
        }
        _1152 = _1151 + _1179;
    }
    float3 _2608 = _1120.xyz + (_1151 * _1154);
    float3 _2610 = _531.xxx;
    float3 _2645;
    float3 _2646;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _2621 = min(_24.SampleBias(_14, _4, _9_m16).x, _531);
        _2645 = clamp((pow(abs(_784 + _2621), exp2(((-16.0f) * _780) - 1.0f)) - 1.0f) + _2621, 0.0f, 1.0f).xxx;
        _2646 = max(_2621.xxx, ((((((_782 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _2621) + ((_782 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _2621) + ((_782 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _2621);
    }
    else
    {
        _2645 = _2610;
        _2646 = _2610;
    }
    _2608 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _2645 : 1.0f.xxx;
    float3 _4495;
    [branch]
    if (_539)
    {
        float3 _3587;
        do
        {
            [branch]
            if (((_537 > 0u) && (_537 <= 15u)) && (_538 > 0.0f))
            {
                uint _3575 = clamp(_537 - 1u, 0u, 14u);
                _3587 = _50.SampleLevel(_15, float3(_538 * _52_m0[_3575].w, 0.5f, float(_3575)), 0.0f).xyz;
                break;
            }
            _3587 = 1.0f.xxx;
            break;
        } while(false);
        float3 _3604 = (_567 + (_529 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_542 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _3614 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _3623 = _3604 - (_9_m105.xyz + (_3614 * (-_9_m107.w)));
        float _3637 = max(clamp((max(abs(_3623.x), abs(_3623.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_3623.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _3939;
        float4 _3940;
        float4 _3941;
        float _3942;
        float _3943;
        if ((_9_m105.w != 0.0f) && (_3637 < 1.0f))
        {
            float3 _3650 = _3604 - (_9_m105.xyz + (_3614 * (-_9_m107.y)));
            float _3664 = max(clamp((max(abs(_3650.x), abs(_3650.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3650.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _3740;
            float4 _3741;
            float4 _3742;
            float4 _3743;
            if (_3664 < 1.0f)
            {
                float3 _3673 = ((_3604 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _3675 = _3673 - floor(_3673);
                float4 _3679 = _64.SampleLevel(_16, _3675, 0.0f);
                float _3680 = 1.0f - _3664;
                float _3684 = _9_m106.y * 0.5f;
                float _3689 = _3675.x;
                float _3690 = clamp(_3675.y, _3684, 1.0f - _3684) * 0.3333333432674407958984375f;
                float _3691 = _3675.z;
                float4 _3694 = _65.SampleLevel(_15, float3(_3689, _3690, _3691), 0.0f);
                float _3710 = _3679.x;
                float _3720 = _3679.y;
                float _3730 = _3679.z;
                _3740 = _3637 + (_3694.w * _3680);
                _3741 = float4(((_65.SampleLevel(_15, float3(_3689, _3690 + 0.666666686534881591796875f, _3691), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3730, _3730) * _3680;
                _3742 = float4(((_65.SampleLevel(_15, float3(_3689, _3690 + 0.3333333432674407958984375f, _3691), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3720, _3720) * _3680;
                _3743 = float4(((_3694.xyz * 4.0f) - 2.0f.xxx) * _3710, _3710) * _3680;
            }
            else
            {
                _3740 = _3637;
                _3741 = 0.0f.xxxx;
                _3742 = 0.0f.xxxx;
                _3743 = 0.0f.xxxx;
            }
            float3 _3749 = _3604 - (_9_m105.xyz + (_3614 * (-_9_m107.z)));
            float _3763 = max(clamp((max(abs(_3749.x), abs(_3749.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3749.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _3843;
            float4 _3844;
            float4 _3845;
            float4 _3846;
            if (_3763 < 1.0f)
            {
                float3 _3772 = ((_3604 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _3774 = _3772 - floor(_3772);
                float4 _3778 = _66.SampleLevel(_16, _3774, 0.0f);
                float _3780 = _3664 * (1.0f - _3763);
                float _3784 = _9_m106.y * 0.5f;
                float _3789 = _3774.x;
                float _3790 = clamp(_3774.y, _3784, 1.0f - _3784) * 0.3333333432674407958984375f;
                float _3791 = _3774.z;
                float4 _3794 = _67.SampleLevel(_15, float3(_3789, _3790, _3791), 0.0f);
                float _3810 = _3778.x;
                float _3821 = _3778.y;
                float _3832 = _3778.z;
                _3843 = _3740 + (_3794.w * _3780);
                _3844 = _3741 + (float4(((_67.SampleLevel(_15, float3(_3789, _3790 + 0.666666686534881591796875f, _3791), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3832, _3832) * _3780);
                _3845 = _3742 + (float4(((_67.SampleLevel(_15, float3(_3789, _3790 + 0.3333333432674407958984375f, _3791), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3821, _3821) * _3780);
                _3846 = _3743 + (float4(((_3794.xyz * 4.0f) - 2.0f.xxx) * _3810, _3810) * _3780);
            }
            else
            {
                _3843 = _3740;
                _3844 = _3741;
                _3845 = _3742;
                _3846 = _3743;
            }
            float4 _3929;
            float4 _3930;
            float4 _3931;
            float _3932;
            if (_3763 > 0.0f)
            {
                float3 _3855 = ((_3604 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _3858 = _9_m106.xyz * 0.5f;
                float3 _3860 = clamp(_3855 - floor(_3855), _3858, 1.0f.xxx - _3858);
                float4 _3864 = _68.SampleLevel(_16, _3860, 0.0f);
                float _3866 = _3763 * (1.0f - _3637);
                float _3870 = _9_m106.y * 0.5f;
                float _3875 = _3860.x;
                float _3876 = clamp(_3860.y, _3870, 1.0f - _3870) * 0.3333333432674407958984375f;
                float _3877 = _3860.z;
                float4 _3880 = _69.SampleLevel(_15, float3(_3875, _3876, _3877), 0.0f);
                float _3896 = _3864.x;
                float _3907 = _3864.y;
                float _3918 = _3864.z;
                _3929 = _3844 + (float4(((_69.SampleLevel(_15, float3(_3875, _3876 + 0.666666686534881591796875f, _3877), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3918, _3918) * _3866);
                _3930 = _3845 + (float4(((_69.SampleLevel(_15, float3(_3875, _3876 + 0.3333333432674407958984375f, _3877), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3907, _3907) * _3866);
                _3931 = _3846 + (float4(((_3880.xyz * 4.0f) - 2.0f.xxx) * _3896, _3896) * _3866);
                _3932 = _3843 + (_3880.w * _3866);
            }
            else
            {
                _3929 = _3844;
                _3930 = _3845;
                _3931 = _3846;
                _3932 = _3843;
            }
            float _3935 = clamp((_3932 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _3939 = _3929;
            _3940 = _3930;
            _3941 = _3931;
            _3942 = _3935 - _3637;
            _3943 = (_3935 + _3637) * 0.5f;
        }
        else
        {
            _3939 = 0.0f.xxxx;
            _3940 = 0.0f.xxxx;
            _3941 = 0.0f.xxxx;
            _3942 = 0.0f;
            _3943 = 1.0f;
        }
        float4 _3963 = _3941 + float4(_9_m108.x * _3943, (_9_m108.y * _3943) + ((_9_m108.w * _3942) * 0.5f), _9_m108.z * _3943, (_9_m108.w * _3943) + ((_9_m108.y * _3942) * 0.375f));
        float4 _3983 = _3940 + float4(_9_m109.x * _3943, (_9_m109.y * _3943) + ((_9_m109.w * _3942) * 0.5f), _9_m109.z * _3943, (_9_m109.w * _3943) + ((_9_m109.y * _3942) * 0.375f));
        float4 _4003 = _3939 + float4(_9_m110.x * _3943, (_9_m110.y * _3943) + ((_9_m110.w * _3942) * 0.5f), _9_m110.z * _3943, (_9_m110.w * _3943) + ((_9_m110.y * _3942) * 0.375f));
        float4 _4161;
        float4 _4162;
        float4 _4163;
        [branch]
        if (all(bool2(_555.x >= 0.0f.xx.x, _555.y >= 0.0f.xx.y)))
        {
            float4 _4011 = _63.SampleLevel(_15, _555, 0.0f);
            float4 _4012 = abs(_4011);
            float4 _4158;
            float4 _4159;
            float4 _4160;
            [branch]
            if (any(bool4(_4012.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4012.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4012.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4012.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _4018 = length(_4011.yzw);
                uint _4020;
                float _4023;
                _4020 = 0u;
                _4023 = 1.0f;
                for (float _4025 = _4018; _4025 > 4.599999904632568359375f; )
                {
                    _4020++;
                    _4023 *= 0.5f;
                    _4025 *= 0.5f;
                    continue;
                }
                float4 _4029 = _4011 * _4023;
                float4 _4034 = float4(0.0f, _4029.yzw);
                float2 _4056 = (_62.SampleLevel(_15, float2(((((length(_4034) * _61_m3.x) + _61_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _61_m2.xy) + _61_m2.zw;
                float4 _4070;
                _4070 = float4(_4056.x * 3.5449078083038330078125f, _4034.yzw * _4056.y) * exp(_4029.x * 0.282094776630401611328125f);
                for (uint _4073 = 0u; _4073 < _4020; )
                {
                    _4070 = mul(float4x4(_4070, float4(_4070.yx, 0.0f, 0.0f), float4(_4070.z, 0.0f, _4070.x, 0.0f), float4(_4070.w, 0.0f, 0.0f, _4070.x)) * 0.282094776630401611328125f, _4070);
                    _4073++;
                    continue;
                }
                float4x4 _4094 = float4x4(_4070, float4(_4070.yx, 0.0f, 0.0f), float4(_4070.z, 0.0f, _4070.x, 0.0f), float4(_4070.w, 0.0f, 0.0f, _4070.x)) * 0.282094776630401611328125f;
                float4 _4104 = mul(_4094, float4(_3963.w * 1.1283791065216064453125f, _3963.y * (-0.977204978466033935546875f), _3963.z * 0.977204978466033935546875f, _3963.x * (-0.977204978466033935546875f)));
                float4 _4124 = mul(_4094, float4(_3983.w * 1.1283791065216064453125f, _3983.y * (-0.977204978466033935546875f), _3983.z * 0.977204978466033935546875f, _3983.x * (-0.977204978466033935546875f)));
                float4 _4144 = mul(_4094, float4(_4003.w * 1.1283791065216064453125f, _4003.y * (-0.977204978466033935546875f), _4003.z * 0.977204978466033935546875f, _4003.x * (-0.977204978466033935546875f)));
                _4158 = float4(_4104.x * 0.886226952075958251953125f, _4104.w * (-1.02332675457000732421875f), _4104.y * (-1.02332675457000732421875f), _4104.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _4159 = float4(_4124.x * 0.886226952075958251953125f, _4124.w * (-1.02332675457000732421875f), _4124.y * (-1.02332675457000732421875f), _4124.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _4160 = float4(_4144.x * 0.886226952075958251953125f, _4144.w * (-1.02332675457000732421875f), _4144.y * (-1.02332675457000732421875f), _4144.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _4158 = _3963;
                _4159 = _3983;
                _4160 = _4003;
            }
            _4161 = _4158;
            _4162 = _4159;
            _4163 = _4160;
        }
        else
        {
            _4161 = _3963;
            _4162 = _3983;
            _4163 = _4003;
        }
        float _4170 = max(0.0f, dot(_4161.xyz * _3587.x, _529) + _4161.w);
        float _4177 = max(0.0f, dot(_4162.xyz * _3587.y, _529) + _4162.w);
        float _4184 = max(0.0f, dot(_4163.xyz * _3587.z, _529) + _4163.w);
        float3 _4194 = reflect(_595, _529);
        float _4202 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_780, 0.001000000047497451305389404296875f))));
        float2 _4206 = floor(_542 * _30_m0.w);
        float _4223 = floor(_574 - _30_m2.y);
        float _4227 = clamp(_4223, 0.0f, _30_m1.x - 1.0f);
        uint _4237 = (_4223 <= _4227) ? (_27.Load(uint(_9_m21.z + int(_4206.x + (_4206.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_4227)) * 4 + 0)) : 0u;
        float _4240 = dot(float4(_4170, _4177, _4184, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _4242;
        float _4245;
        uint _4247;
        _4242 = 0.0f.xxx;
        _4245 = 1.0f;
        _4247 = _4237;
        uint _4248;
        float3 _4243;
        float _4246;
        bool _4250;
        [loop]
        for (;;)
        {
            _4250 = _4245 > 0.00999999977648258209228515625f;
            if ((_4247 != 0u) && _4250)
            {
                uint _4254 = firstbitlow(_4247);
                _4248 = _4247 ^ (1u << (_4254 & 31u));
                float3 _4274 = float3(dot(_30_m4[_4254]._m2, _571), dot(_30_m4[_4254]._m3, _571), dot(_30_m4[_4254]._m4, _571));
                float3 _4275 = abs(_4274);
                if (all(bool3(_4275.x <= _30_m4[_4254]._m1.xyz.x, _4275.y <= _30_m4[_4254]._m1.xyz.y, _4275.z <= _30_m4[_4254]._m1.xyz.z)))
                {
                    float3 _4284 = _30_m4[_4254]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _4286 = _4275 * 0.100000001490116119384765625f;
                    float3 _4287 = _4286 * _4286;
                    float3 _4290 = (_30_m4[_4254]._m1.xyz - _4275) * _30_m4[_4254]._m5.xyz;
                    float3 _4338;
                    [branch]
                    if (_30_m4[_4254]._m6.x == 1.0f)
                    {
                        float3 _4323 = float3(dot(_30_m4[_4254]._m2.xyz, _4194), dot(_30_m4[_4254]._m3.xyz, _4194), dot(_30_m4[_4254]._m4.xyz, _4194));
                        float3 _4325 = (_30_m4[_4254]._m1.xyz - _4274) / _4323;
                        float3 _4328 = ((-_30_m4[_4254]._m1.xyz) - _4274) / _4323;
                        bool3 _4329 = bool3(_4323.x > 0.0f.xxx.x, _4323.y > 0.0f.xxx.y, _4323.z > 0.0f.xxx.z);
                        float3 _4330 = float3(_4329.x ? _4325.x : _4328.x, _4329.y ? _4325.y : _4328.y, _4329.z ? _4325.z : _4328.z);
                        _4338 = _4274 + (_4323 * min(min(_4330.x, _4330.y), _4330.z));
                    }
                    else
                    {
                        _4338 = _4194;
                    }
                    float3 _4339 = normalize(_4338);
                    float3 _4342 = float3(int3(sign(_4339)));
                    float3 _4345 = _4339 / dot(_4339, _4342).xxx;
                    float3 _4359;
                    if (_4345.z < 0.0f)
                    {
                        float3 _4350 = abs(_4345);
                        float2 _4357 = _4342.xy * float2(1.0f - _4350.y, 1.0f - _4350.x);
                        _4359 = float3(_4357.x, _4357.y, _4345.z);
                    }
                    else
                    {
                        _4359 = _4345;
                    }
                    float _4383 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_4254]._m0, float4(_529, 1.0f))));
                    float _4396 = clamp((min(_4290.x, min(_4290.y, _4290.z)) * _30_m4[_4254]._m6.y) + ((((((_4284 * _4284).x - ((_4287.x + _4287.y) + _4287.z)) * _30_m4[_4254]._m5.x) * _30_m4[_4254]._m5.x) * (1.0f - _30_m4[_4254]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_4254]._m6.w;
                    _4243 = _4242 + ((((_25.SampleLevel(_17, float3((((_4359.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_4254]._m1.w), _4202).xyz * _30_m4[_4254]._m5.w) * ((((((clamp(abs(_4240 / _4383), 0.0f, 1.0f) * 2.0f) + _4240) / (2.0f + _4383)) - 1.0f) * _9_m23.w) + 1.0f)) * _4396) * _4245);
                    _4246 = _4245 * (1.0f - _4396);
                }
                else
                {
                    _4243 = _4242;
                    _4246 = _4245;
                }
                _4242 = _4243;
                _4245 = _4246;
                _4247 = _4248;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _4464;
        if (_4250)
        {
            float3 _4404 = normalize(_4194);
            float3 _4407 = float3(int3(sign(_4404)));
            float3 _4410 = _4404 / dot(_4404, _4407).xxx;
            float3 _4424;
            if (_4410.z < 0.0f)
            {
                float3 _4415 = abs(_4410);
                float2 _4422 = _4407.xy * float2(1.0f - _4415.y, 1.0f - _4415.x);
                _4424 = float3(_4422.x, _4422.y, _4410.z);
            }
            else
            {
                _4424 = _4410;
            }
            float _4450 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_529, 1.0f))));
            _4464 = _4242 + ((_25.SampleLevel(_17, float3((((_4424.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _4202).xyz * ((((((clamp(abs(_4240 / _4450), 0.0f, 1.0f) * 2.0f) + _4240) / (2.0f + _4450)) - 1.0f) * _9_m23.w) + 1.0f)) * _4245);
        }
        else
        {
            _4464 = _4242;
        }
        float3 _4470 = (_4464 * _9_m23.z) * _9_m22.y;
        float3 _4491;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _4485 = _23.SampleBias(_15, _4, _9_m16);
            float _4486 = _4485.x;
            _4491 = (_22.SampleBias(_15, _4, _9_m16).xyz * _4486) + (_4470 * (1.0f - _4486));
        }
        else
        {
            _4491 = _4470;
        }
        _4495 = (((float3(_4170, _4177, _4184) * _782) * _9_m22.x) * _2646) + ((_4491 * _802) * _2645);
    }
    else
    {
        float3 _2666 = (_567 + (_529 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_542 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _2676 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _2685 = _2666 - (_9_m105.xyz + (_2676 * (-_9_m107.w)));
        float _2699 = max(clamp((max(abs(_2685.x), abs(_2685.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2685.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _3001;
        float4 _3002;
        float4 _3003;
        float _3004;
        float _3005;
        if ((_9_m105.w != 0.0f) && (_2699 < 1.0f))
        {
            float3 _2712 = _2666 - (_9_m105.xyz + (_2676 * (-_9_m107.y)));
            float _2726 = max(clamp((max(abs(_2712.x), abs(_2712.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2712.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _2802;
            float4 _2803;
            float4 _2804;
            float4 _2805;
            if (_2726 < 1.0f)
            {
                float3 _2735 = ((_2666 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2737 = _2735 - floor(_2735);
                float4 _2741 = _64.SampleLevel(_16, _2737, 0.0f);
                float _2742 = 1.0f - _2726;
                float _2746 = _9_m106.y * 0.5f;
                float _2751 = _2737.x;
                float _2752 = clamp(_2737.y, _2746, 1.0f - _2746) * 0.3333333432674407958984375f;
                float _2753 = _2737.z;
                float4 _2756 = _65.SampleLevel(_15, float3(_2751, _2752, _2753), 0.0f);
                float _2772 = _2741.x;
                float _2782 = _2741.y;
                float _2792 = _2741.z;
                _2802 = _2699 + (_2756.w * _2742);
                _2803 = float4(((_65.SampleLevel(_15, float3(_2751, _2752 + 0.666666686534881591796875f, _2753), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2792, _2792) * _2742;
                _2804 = float4(((_65.SampleLevel(_15, float3(_2751, _2752 + 0.3333333432674407958984375f, _2753), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2782, _2782) * _2742;
                _2805 = float4(((_2756.xyz * 4.0f) - 2.0f.xxx) * _2772, _2772) * _2742;
            }
            else
            {
                _2802 = _2699;
                _2803 = 0.0f.xxxx;
                _2804 = 0.0f.xxxx;
                _2805 = 0.0f.xxxx;
            }
            float3 _2811 = _2666 - (_9_m105.xyz + (_2676 * (-_9_m107.z)));
            float _2825 = max(clamp((max(abs(_2811.x), abs(_2811.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2811.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _2905;
            float4 _2906;
            float4 _2907;
            float4 _2908;
            if (_2825 < 1.0f)
            {
                float3 _2834 = ((_2666 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2836 = _2834 - floor(_2834);
                float4 _2840 = _66.SampleLevel(_16, _2836, 0.0f);
                float _2842 = _2726 * (1.0f - _2825);
                float _2846 = _9_m106.y * 0.5f;
                float _2851 = _2836.x;
                float _2852 = clamp(_2836.y, _2846, 1.0f - _2846) * 0.3333333432674407958984375f;
                float _2853 = _2836.z;
                float4 _2856 = _67.SampleLevel(_15, float3(_2851, _2852, _2853), 0.0f);
                float _2872 = _2840.x;
                float _2883 = _2840.y;
                float _2894 = _2840.z;
                _2905 = _2802 + (_2856.w * _2842);
                _2906 = _2803 + (float4(((_67.SampleLevel(_15, float3(_2851, _2852 + 0.666666686534881591796875f, _2853), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2894, _2894) * _2842);
                _2907 = _2804 + (float4(((_67.SampleLevel(_15, float3(_2851, _2852 + 0.3333333432674407958984375f, _2853), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2883, _2883) * _2842);
                _2908 = _2805 + (float4(((_2856.xyz * 4.0f) - 2.0f.xxx) * _2872, _2872) * _2842);
            }
            else
            {
                _2905 = _2802;
                _2906 = _2803;
                _2907 = _2804;
                _2908 = _2805;
            }
            float4 _2991;
            float4 _2992;
            float4 _2993;
            float _2994;
            if (_2825 > 0.0f)
            {
                float3 _2917 = ((_2666 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2920 = _9_m106.xyz * 0.5f;
                float3 _2922 = clamp(_2917 - floor(_2917), _2920, 1.0f.xxx - _2920);
                float4 _2926 = _68.SampleLevel(_16, _2922, 0.0f);
                float _2928 = _2825 * (1.0f - _2699);
                float _2932 = _9_m106.y * 0.5f;
                float _2937 = _2922.x;
                float _2938 = clamp(_2922.y, _2932, 1.0f - _2932) * 0.3333333432674407958984375f;
                float _2939 = _2922.z;
                float4 _2942 = _69.SampleLevel(_15, float3(_2937, _2938, _2939), 0.0f);
                float _2958 = _2926.x;
                float _2969 = _2926.y;
                float _2980 = _2926.z;
                _2991 = _2906 + (float4(((_69.SampleLevel(_15, float3(_2937, _2938 + 0.666666686534881591796875f, _2939), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2980, _2980) * _2928);
                _2992 = _2907 + (float4(((_69.SampleLevel(_15, float3(_2937, _2938 + 0.3333333432674407958984375f, _2939), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2969, _2969) * _2928);
                _2993 = _2908 + (float4(((_2942.xyz * 4.0f) - 2.0f.xxx) * _2958, _2958) * _2928);
                _2994 = _2905 + (_2942.w * _2928);
            }
            else
            {
                _2991 = _2906;
                _2992 = _2907;
                _2993 = _2908;
                _2994 = _2905;
            }
            float _2997 = clamp((_2994 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _3001 = _2991;
            _3002 = _2992;
            _3003 = _2993;
            _3004 = _2997 - _2699;
            _3005 = (_2997 + _2699) * 0.5f;
        }
        else
        {
            _3001 = 0.0f.xxxx;
            _3002 = 0.0f.xxxx;
            _3003 = 0.0f.xxxx;
            _3004 = 0.0f;
            _3005 = 1.0f;
        }
        float4 _3025 = _3003 + float4(_9_m108.x * _3005, (_9_m108.y * _3005) + ((_9_m108.w * _3004) * 0.5f), _9_m108.z * _3005, (_9_m108.w * _3005) + ((_9_m108.y * _3004) * 0.375f));
        float4 _3045 = _3002 + float4(_9_m109.x * _3005, (_9_m109.y * _3005) + ((_9_m109.w * _3004) * 0.5f), _9_m109.z * _3005, (_9_m109.w * _3005) + ((_9_m109.y * _3004) * 0.375f));
        float4 _3065 = _3001 + float4(_9_m110.x * _3005, (_9_m110.y * _3005) + ((_9_m110.w * _3004) * 0.5f), _9_m110.z * _3005, (_9_m110.w * _3005) + ((_9_m110.y * _3004) * 0.375f));
        float4 _3223;
        float4 _3224;
        float4 _3225;
        [branch]
        if (all(bool2(_555.x >= 0.0f.xx.x, _555.y >= 0.0f.xx.y)))
        {
            float4 _3073 = _63.SampleLevel(_15, _555, 0.0f);
            float4 _3074 = abs(_3073);
            float4 _3220;
            float4 _3221;
            float4 _3222;
            [branch]
            if (any(bool4(_3074.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3074.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3074.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3074.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _3080 = length(_3073.yzw);
                uint _3082;
                float _3085;
                _3082 = 0u;
                _3085 = 1.0f;
                for (float _3087 = _3080; _3087 > 4.599999904632568359375f; )
                {
                    _3082++;
                    _3085 *= 0.5f;
                    _3087 *= 0.5f;
                    continue;
                }
                float4 _3091 = _3073 * _3085;
                float4 _3096 = float4(0.0f, _3091.yzw);
                float2 _3118 = (_62.SampleLevel(_15, float2(((((length(_3096) * _61_m3.x) + _61_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _61_m2.xy) + _61_m2.zw;
                float4 _3132;
                _3132 = float4(_3118.x * 3.5449078083038330078125f, _3096.yzw * _3118.y) * exp(_3091.x * 0.282094776630401611328125f);
                for (uint _3135 = 0u; _3135 < _3082; )
                {
                    _3132 = mul(float4x4(_3132, float4(_3132.yx, 0.0f, 0.0f), float4(_3132.z, 0.0f, _3132.x, 0.0f), float4(_3132.w, 0.0f, 0.0f, _3132.x)) * 0.282094776630401611328125f, _3132);
                    _3135++;
                    continue;
                }
                float4x4 _3156 = float4x4(_3132, float4(_3132.yx, 0.0f, 0.0f), float4(_3132.z, 0.0f, _3132.x, 0.0f), float4(_3132.w, 0.0f, 0.0f, _3132.x)) * 0.282094776630401611328125f;
                float4 _3166 = mul(_3156, float4(_3025.w * 1.1283791065216064453125f, _3025.y * (-0.977204978466033935546875f), _3025.z * 0.977204978466033935546875f, _3025.x * (-0.977204978466033935546875f)));
                float4 _3186 = mul(_3156, float4(_3045.w * 1.1283791065216064453125f, _3045.y * (-0.977204978466033935546875f), _3045.z * 0.977204978466033935546875f, _3045.x * (-0.977204978466033935546875f)));
                float4 _3206 = mul(_3156, float4(_3065.w * 1.1283791065216064453125f, _3065.y * (-0.977204978466033935546875f), _3065.z * 0.977204978466033935546875f, _3065.x * (-0.977204978466033935546875f)));
                _3220 = float4(_3166.x * 0.886226952075958251953125f, _3166.w * (-1.02332675457000732421875f), _3166.y * (-1.02332675457000732421875f), _3166.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _3221 = float4(_3186.x * 0.886226952075958251953125f, _3186.w * (-1.02332675457000732421875f), _3186.y * (-1.02332675457000732421875f), _3186.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _3222 = float4(_3206.x * 0.886226952075958251953125f, _3206.w * (-1.02332675457000732421875f), _3206.y * (-1.02332675457000732421875f), _3206.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _3220 = _3025;
                _3221 = _3045;
                _3222 = _3065;
            }
            _3223 = _3220;
            _3224 = _3221;
            _3225 = _3222;
        }
        else
        {
            _3223 = _3025;
            _3224 = _3045;
            _3225 = _3065;
        }
        float _3230 = max(0.0f, dot(_3223.xyz, _529) + _3223.w);
        float _3235 = max(0.0f, dot(_3224.xyz, _529) + _3224.w);
        float _3240 = max(0.0f, dot(_3225.xyz, _529) + _3225.w);
        float3 _3264 = reflect(_595, _529);
        float _3272 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_780, 0.001000000047497451305389404296875f))));
        float2 _3276 = floor(_542 * _30_m0.w);
        float _3293 = floor(_574 - _30_m2.y);
        float _3297 = clamp(_3293, 0.0f, _30_m1.x - 1.0f);
        uint _3307 = (_3293 <= _3297) ? (_27.Load(uint(_9_m21.z + int(_3276.x + (_3276.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_3297)) * 4 + 0)) : 0u;
        float _3310 = dot(float4(_3230, _3235, _3240, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _3312;
        float _3315;
        uint _3317;
        _3312 = 0.0f.xxx;
        _3315 = 1.0f;
        _3317 = _3307;
        uint _3318;
        float3 _3313;
        float _3316;
        bool _3320;
        [loop]
        for (;;)
        {
            _3320 = _3315 > 0.00999999977648258209228515625f;
            if ((_3317 != 0u) && _3320)
            {
                uint _3324 = firstbitlow(_3317);
                _3318 = _3317 ^ (1u << (_3324 & 31u));
                float3 _3344 = float3(dot(_30_m4[_3324]._m2, _571), dot(_30_m4[_3324]._m3, _571), dot(_30_m4[_3324]._m4, _571));
                float3 _3345 = abs(_3344);
                if (all(bool3(_3345.x <= _30_m4[_3324]._m1.xyz.x, _3345.y <= _30_m4[_3324]._m1.xyz.y, _3345.z <= _30_m4[_3324]._m1.xyz.z)))
                {
                    float3 _3354 = _30_m4[_3324]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _3356 = _3345 * 0.100000001490116119384765625f;
                    float3 _3357 = _3356 * _3356;
                    float3 _3360 = (_30_m4[_3324]._m1.xyz - _3345) * _30_m4[_3324]._m5.xyz;
                    float3 _3408;
                    [branch]
                    if (_30_m4[_3324]._m6.x == 1.0f)
                    {
                        float3 _3393 = float3(dot(_30_m4[_3324]._m2.xyz, _3264), dot(_30_m4[_3324]._m3.xyz, _3264), dot(_30_m4[_3324]._m4.xyz, _3264));
                        float3 _3395 = (_30_m4[_3324]._m1.xyz - _3344) / _3393;
                        float3 _3398 = ((-_30_m4[_3324]._m1.xyz) - _3344) / _3393;
                        bool3 _3399 = bool3(_3393.x > 0.0f.xxx.x, _3393.y > 0.0f.xxx.y, _3393.z > 0.0f.xxx.z);
                        float3 _3400 = float3(_3399.x ? _3395.x : _3398.x, _3399.y ? _3395.y : _3398.y, _3399.z ? _3395.z : _3398.z);
                        _3408 = _3344 + (_3393 * min(min(_3400.x, _3400.y), _3400.z));
                    }
                    else
                    {
                        _3408 = _3264;
                    }
                    float3 _3409 = normalize(_3408);
                    float3 _3412 = float3(int3(sign(_3409)));
                    float3 _3415 = _3409 / dot(_3409, _3412).xxx;
                    float3 _3429;
                    if (_3415.z < 0.0f)
                    {
                        float3 _3420 = abs(_3415);
                        float2 _3427 = _3412.xy * float2(1.0f - _3420.y, 1.0f - _3420.x);
                        _3429 = float3(_3427.x, _3427.y, _3415.z);
                    }
                    else
                    {
                        _3429 = _3415;
                    }
                    float _3453 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_3324]._m0, float4(_529, 1.0f))));
                    float _3466 = clamp((min(_3360.x, min(_3360.y, _3360.z)) * _30_m4[_3324]._m6.y) + ((((((_3354 * _3354).x - ((_3357.x + _3357.y) + _3357.z)) * _30_m4[_3324]._m5.x) * _30_m4[_3324]._m5.x) * (1.0f - _30_m4[_3324]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_3324]._m6.w;
                    _3313 = _3312 + ((((_25.SampleLevel(_17, float3((((_3429.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_3324]._m1.w), _3272).xyz * _30_m4[_3324]._m5.w) * ((((((clamp(abs(_3310 / _3453), 0.0f, 1.0f) * 2.0f) + _3310) / (2.0f + _3453)) - 1.0f) * _9_m23.w) + 1.0f)) * _3466) * _3315);
                    _3316 = _3315 * (1.0f - _3466);
                }
                else
                {
                    _3313 = _3312;
                    _3316 = _3315;
                }
                _3312 = _3313;
                _3315 = _3316;
                _3317 = _3318;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _3534;
        if (_3320)
        {
            float3 _3474 = normalize(_3264);
            float3 _3477 = float3(int3(sign(_3474)));
            float3 _3480 = _3474 / dot(_3474, _3477).xxx;
            float3 _3494;
            if (_3480.z < 0.0f)
            {
                float3 _3485 = abs(_3480);
                float2 _3492 = _3477.xy * float2(1.0f - _3485.y, 1.0f - _3485.x);
                _3494 = float3(_3492.x, _3492.y, _3480.z);
            }
            else
            {
                _3494 = _3480;
            }
            float _3520 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_529, 1.0f))));
            _3534 = _3312 + ((_25.SampleLevel(_17, float3((((_3494.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _3272).xyz * ((((((clamp(abs(_3310 / _3520), 0.0f, 1.0f) * 2.0f) + _3310) / (2.0f + _3520)) - 1.0f) * _9_m23.w) + 1.0f)) * _3315);
        }
        else
        {
            _3534 = _3312;
        }
        float3 _3540 = (_3534 * _9_m23.z) * _9_m22.y;
        float3 _3561;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _3555 = _23.SampleBias(_15, _4, _9_m16);
            float _3556 = _3555.x;
            _3561 = (_22.SampleBias(_15, _4, _9_m16).xyz * _3556) + (_3540 * (1.0f - _3556));
        }
        else
        {
            _3561 = _3540;
        }
        _4495 = (((float3(_3230, _3235, _3240) * (_782 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_532, _533, _534).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _533.xxx) * _534) * _535))) * _9_m22.x) * _2646) + ((_3561 * _802) * _2645);
    }
    float4 _4497 = float4(_2608.x, _2608.y, _2608.z, _1120.w) + float4(_4495.x, _4495.y, _4495.z, 0.0f.xxxx.w);
    float3 _4500 = clamp(_4497.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _4515 = _567.y * _9_m46.w;
    float _4520 = max(0.00999999977648258209228515625f, _4515 + _9_m47.w);
    float3 _4534 = exp(_9_m45.xyz * ((-max(0.0f, (_594 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4520)) / _4520) * exp(_4515 + _9_m48.w))));
    float _4537 = dot(_595, _9_m44.xyz);
    float _4543 = _9_m45.w * _9_m45.w;
    float _4547 = (1.0f + _4543) - ((2.0f * _9_m45.w) * _4537);
    float3 _4871;
    float _4872;
    if (_9_m55.z > 0.0f)
    {
        uint3 _4699 = (uint3(int3(_409, _410, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4700 = _4699.y;
        uint _4701 = _4699.z;
        uint _4704 = _4699.x + (_4700 * _4701);
        uint _4706 = _4700 + (_4701 * _4704);
        uint _4708 = _4701 + (_4704 * _4706);
        uint _4710 = _4704 + (_4706 * _4708);
        float _4734 = dot(_595, -_7_m0[2].xyz);
        float3 _4742 = _567 - _7_m11.xyz;
        float _4744 = (_9_m55.w * ((_4734 > 5.9604644775390625e-08f) ? (1.0f / _4734) : 0.0f)) * (1.0f / _594);
        float _4745 = _4742.y;
        float _4746 = _4744 * _4745;
        float _4748 = _7_m11.y + _4746;
        float _4749 = _4745 - _4746;
        float _4751 = (1.0f - _4744) * _594;
        float _4765 = max(-127.0f, _9_m49.z * _4749);
        float _4789 = max(-127.0f, _9_m52.x * _4749);
        float _4800 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4748 - _9_m49.x)))) * ((abs(_4765) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4765)) / _4765) : (0.693147182464599609375f - (0.2402265071868896484375f * _4765)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4748 - _9_m52.z)))) * ((abs(_4789) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4789)) / _4789) : (0.693147182464599609375f - (0.2402265071868896484375f * _4789))));
        float _4822 = clamp((_594 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _4825 = clamp((max(clamp(exp2(-(_4800 * _4751)), 0.0f, 1.0f), _9_m51.w) + clamp((_594 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4822, 0.0f, 1.0f);
        float4 _4865 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _59.SampleLevel(_15, float3((_542 + ((((float3(uint3(_4710, _4706 + (_4708 * _4710), _393) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_574 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_574 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _4867 = _4865.w;
        _4871 = _4865.xyz + (((_9_m51.xyz * (1.0f - _4825)) + (((_9_m54.xyz * pow(clamp(dot(_593, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4800 * max(_4751 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4822))) * _4867);
        _4872 = _4867 * _4825;
    }
    else
    {
        float3 _4575 = _567 - _7_m11.xyz;
        float _4577 = _4575.y;
        float _4591 = max(-127.0f, _9_m49.z * _4577);
        float _4615 = max(-127.0f, _9_m52.x * _4577);
        float _4626 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4591) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4591)) / _4591) : (0.693147182464599609375f - (0.2402265071868896484375f * _4591)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4615) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4615)) / _4615) : (0.693147182464599609375f - (0.2402265071868896484375f * _4615))));
        float _4648 = clamp((_594 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _4651 = clamp((max(clamp(exp2(-(_4626 * _594)), 0.0f, 1.0f), _9_m51.w) + clamp((_594 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4648, 0.0f, 1.0f);
        _4871 = (_9_m51.xyz * (1.0f - _4651)) + (((_9_m54.xyz * pow(clamp(dot(_593, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4626 * max(_594 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4648));
        _4872 = _4651;
    }
    float3 _4875 = _4534 * _4872;
    float3 _4877 = (_4500 * _4875) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4537 * _4537)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4543) / max((12.56637096405029296875f * _4547) * sqrt(_4547), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4534)) * _4872) + _4871);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _4877 = (_4877 * 0.65f) + (_4500 * 0.35f);

    }
    float _4878 = dot(_4875, 0.3333333432674407958984375f.xxx);
    float4 _4879 = float4(_4877.x, _4877.y, _4877.z, _4497.w);
    _4879.w = _4878;
    float _4906 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _567) * _9_m61.z), 0.0f, 1.0f);
    float3 _4914 = lerp(_4500, _4879.xyz, min((1.0f - _4906) + ((_74.SampleLevel(_16, (_567 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _4906), 1.0f + _4878).xxx);
    _5 = float4(_4914.x, _4914.y, _4914.z, _4879.w);
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
