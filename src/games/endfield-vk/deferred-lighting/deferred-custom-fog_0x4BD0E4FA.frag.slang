// DX11 0x509F5926 -> Vulkan 0x4BD0E4FA
struct _18
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    column_major float4x4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
    float4 _m8;
    float4 _m9;
};

static float4 _203;
static uint _204 = 0u;

#include "./renodx_injection.hlsli"

[[vk::binding(12, 0)]]
cbuffer _13_14 : register(b12)
{
    column_major float4x4 _14_m0 : packoffset(c0);
    column_major float4x4 _14_m1 : packoffset(c4);
    column_major float4x4 _14_m2 : packoffset(c8);
    column_major float4x4 _14_m3 : packoffset(c12);
    column_major float4x4 _14_m4 : packoffset(c16);
    column_major float4x4 _14_m5 : packoffset(c20);
    column_major float4x4 _14_m6 : packoffset(c24);
    column_major float4x4 _14_m7 : packoffset(c28);
    column_major float4x4 _14_m8 : packoffset(c32);
    column_major float4x4 _14_m9 : packoffset(c36);
    column_major float4x4 _14_m10 : packoffset(c40);
    float4 _14_m11 : packoffset(c44);
    column_major float4x4 _14_m12 : packoffset(c45);
    column_major float4x4 _14_m13 : packoffset(c49);
    column_major float4x4 _14_m14 : packoffset(c53);
    column_major float4x4 _14_m15 : packoffset(c57);
    column_major float4x4 _14_m16 : packoffset(c61);
    column_major float4x4 _14_m17 : packoffset(c65);
    column_major float4x4 _14_m18 : packoffset(c69);
    column_major float4x4 _14_m19 : packoffset(c73);
    column_major float4x4 _14_m20 : packoffset(c77);
    float4 _14_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _15_16 : register(b16)
{
    float4 _16_m0 : packoffset(c0);
    float4 _16_m1 : packoffset(c1);
    float4 _16_m2 : packoffset(c2);
    float4 _16_m3 : packoffset(c3);
    float4 _16_m4 : packoffset(c4);
    float4 _16_m5 : packoffset(c5);
    float4 _16_m6[6] : packoffset(c6);
    float4 _16_m7[6] : packoffset(c12);
    float4 _16_m8 : packoffset(c18);
    float4 _16_m9 : packoffset(c19);
    float4 _16_m10 : packoffset(c20);
    float4 _16_m11 : packoffset(c21);
    float4 _16_m12 : packoffset(c22);
    float4 _16_m13 : packoffset(c23);
    float4 _16_m14 : packoffset(c24);
    float4 _16_m15 : packoffset(c25);
    float _16_m16 : packoffset(c26);
    float _16_m17 : packoffset(c26.y);
    float _16_m18 : packoffset(c26.z);
    uint _16_m19 : packoffset(c26.w);
    float4 _16_m20 : packoffset(c27);
    int4 _16_m21 : packoffset(c28);
    float4 _16_m22 : packoffset(c29);
    float4 _16_m23 : packoffset(c30);
    float4 _16_m24 : packoffset(c31);
    float4 _16_m25 : packoffset(c32);
    float4 _16_m26 : packoffset(c33);
    float4 _16_m27 : packoffset(c34);
    float4 _16_m28 : packoffset(c35);
    float4 _16_m29 : packoffset(c36);
    float4 _16_m30 : packoffset(c37);
    float4 _16_m31 : packoffset(c38);
    float4 _16_m32[4] : packoffset(c39);
    float4 _16_m33[4] : packoffset(c43);
    float4 _16_m34[4] : packoffset(c47);
    float4 _16_m35[4] : packoffset(c51);
    float4 _16_m36 : packoffset(c55);
    float4 _16_m37 : packoffset(c56);
    float4 _16_m38[4] : packoffset(c57);
    float4 _16_m39[4] : packoffset(c61);
    float4 _16_m40[4] : packoffset(c65);
    float4 _16_m41 : packoffset(c69);
    float4 _16_m42 : packoffset(c70);
    float4 _16_m43 : packoffset(c71);
    float4 _16_m44 : packoffset(c72);
    float4 _16_m45 : packoffset(c73);
    float4 _16_m46 : packoffset(c74);
    float4 _16_m47 : packoffset(c75);
    float4 _16_m48 : packoffset(c76);
    float4 _16_m49 : packoffset(c77);
    float4 _16_m50 : packoffset(c78);
    float4 _16_m51 : packoffset(c79);
    float4 _16_m52 : packoffset(c80);
    float4 _16_m53 : packoffset(c81);
    float4 _16_m54 : packoffset(c82);
    float4 _16_m55 : packoffset(c83);
    float4 _16_m56 : packoffset(c84);
    float4 _16_m57 : packoffset(c85);
    float4 _16_m58 : packoffset(c86);
    float4 _16_m59 : packoffset(c87);
    float4 _16_m60 : packoffset(c88);
    float4 _16_m61 : packoffset(c89);
    float4 _16_m62 : packoffset(c90);
    float4 _16_m63 : packoffset(c91);
    float4 _16_m64 : packoffset(c92);
    float4 _16_m65 : packoffset(c93);
    float4 _16_m66 : packoffset(c94);
    float4 _16_m67 : packoffset(c95);
    float4 _16_m68 : packoffset(c96);
    float4 _16_m69 : packoffset(c97);
    float4 _16_m70 : packoffset(c98);
    float4 _16_m71 : packoffset(c99);
    float4 _16_m72 : packoffset(c100);
    float4 _16_m73 : packoffset(c101);
    float4 _16_m74 : packoffset(c102);
    float4 _16_m75 : packoffset(c103);
    float4 _16_m76 : packoffset(c104);
    float4 _16_m77 : packoffset(c105);
    float4 _16_m78 : packoffset(c106);
    float4 _16_m79 : packoffset(c107);
    float4 _16_m80 : packoffset(c108);
    float4 _16_m81 : packoffset(c109);
    float4 _16_m82 : packoffset(c110);
    float4 _16_m83 : packoffset(c111);
    float4 _16_m84 : packoffset(c112);
    float4 _16_m85 : packoffset(c113);
    float4 _16_m86 : packoffset(c114);
    float4 _16_m87 : packoffset(c115);
    float4 _16_m88 : packoffset(c116);
    float4 _16_m89 : packoffset(c117);
    float4 _16_m90 : packoffset(c118);
    float4 _16_m91 : packoffset(c119);
    float4 _16_m92 : packoffset(c120);
    float4 _16_m93 : packoffset(c121);
    float4 _16_m94 : packoffset(c122);
    float4 _16_m95 : packoffset(c123);
    float4 _16_m96 : packoffset(c124);
    float4 _16_m97 : packoffset(c125);
    float4 _16_m98 : packoffset(c126);
    float4 _16_m99[2] : packoffset(c127);
    float4 _16_m100[2] : packoffset(c129);
    float _16_m101 : packoffset(c131);
    float _16_m102 : packoffset(c131.y);
    float _16_m103 : packoffset(c131.z);
    float _16_m104 : packoffset(c131.w);
    float4 _16_m105 : packoffset(c132);
    float4 _16_m106 : packoffset(c133);
    float4 _16_m107 : packoffset(c134);
    float4 _16_m108 : packoffset(c135);
    float4 _16_m109 : packoffset(c136);
    float4 _16_m110 : packoffset(c137);
    float4 _16_m111 : packoffset(c138);
    float4 _16_m112 : packoffset(c139);
    float4 _16_m113 : packoffset(c140);
    float4 _16_m114 : packoffset(c141);
    float4 _16_m115 : packoffset(c142);
    float4 _16_m116 : packoffset(c143);
    float4 _16_m117 : packoffset(c144);
    float4 _16_m118 : packoffset(c145);
    float4 _16_m119 : packoffset(c146);
    float4 _16_m120 : packoffset(c147);
    float4 _16_m121 : packoffset(c148);
    float4 _16_m122 : packoffset(c149);
    float4 _16_m123 : packoffset(c150);
    float4 _16_m124 : packoffset(c151);
    float4 _16_m125 : packoffset(c152);
    float4 _16_m126 : packoffset(c153);
    float4 _16_m127 : packoffset(c154);
    float4 _16_m128 : packoffset(c155);
    float4 _16_m129 : packoffset(c156);
    float4 _16_m130 : packoffset(c157);
    float4 _16_m131 : packoffset(c158);
    float4 _16_m132 : packoffset(c159);
    float4 _16_m133 : packoffset(c160);
    float4 _16_m134 : packoffset(c161);
    column_major float4x4 _16_m135 : packoffset(c162);
    float4 _16_m136 : packoffset(c166);
    float4 _16_m137 : packoffset(c167);
    float4 _16_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _17_19 : register(b0)
{
    _18 _19_m0[256] : packoffset(c0);
};

[[vk::binding(2, 1)]]
cbuffer _31_32 : register(b2)
{
    float _32_m0 : packoffset(c0);
    float _32_m1 : packoffset(c0.y);
    float _32_m2 : packoffset(c0.z);
    float _32_m3 : packoffset(c0.w);
    float _32_m4 : packoffset(c1);
    float _32_m5 : packoffset(c1.y);
    float _32_m6 : packoffset(c1.z);
    float _32_m7 : packoffset(c1.w);
    float _32_m8 : packoffset(c2);
    float _32_m9 : packoffset(c2.y);
    float _32_m10 : packoffset(c2.z);
    float _32_m11 : packoffset(c2.w);
    float _32_m12 : packoffset(c3);
    float _32_m13 : packoffset(c3.y);
    float _32_m14 : packoffset(c3.z);
    float _32_m15 : packoffset(c3.w);
    float4 _32_m16 : packoffset(c4);
    float _32_m17 : packoffset(c5);
    float _32_m18 : packoffset(c5.y);
    float _32_m19 : packoffset(c5.z);
    float _32_m20 : packoffset(c5.w);
    float4 _32_m21 : packoffset(c6);
    float4 _32_m22 : packoffset(c7);
    float4 _32_m23 : packoffset(c8);
    float4 _32_m24 : packoffset(c9);
    float4 _32_m25 : packoffset(c10);
    float _32_m26 : packoffset(c11);
    float _32_m27 : packoffset(c11.y);
    float _32_m28 : packoffset(c11.z);
    float _32_m29 : packoffset(c11.w);
    float _32_m30 : packoffset(c12);
    float _32_m31 : packoffset(c12.y);
    float _32_m32 : packoffset(c12.z);
    float _32_m33 : packoffset(c12.w);
    float _32_m34 : packoffset(c13);
    float _32_m35 : packoffset(c13.y);
    float _32_m36 : packoffset(c13.z);
    float _32_m37 : packoffset(c13.w);
    float4 _32_m38 : packoffset(c14);
    float4 _32_m39 : packoffset(c15);
    float4 _32_m40 : packoffset(c16);
    float _32_m41 : packoffset(c17);
    float _32_m42 : packoffset(c17.y);
    float _32_m43 : packoffset(c17.z);
    float _32_m44 : packoffset(c17.w);
    float _32_m45 : packoffset(c18);
    float _32_m46 : packoffset(c18.y);
    float _32_m47 : packoffset(c18.z);
    float _32_m48 : packoffset(c18.w);
    float _32_m49 : packoffset(c19);
    float _32_m50 : packoffset(c19.y);
    float _32_m51 : packoffset(c19.z);
    float _32_m52 : packoffset(c19.w);
    float4 _32_m53 : packoffset(c20);
    float4 _32_m54 : packoffset(c21);
    float4 _32_m55 : packoffset(c22);
    float _32_m56 : packoffset(c23);
    float _32_m57 : packoffset(c23.y);
    float _32_m58 : packoffset(c23.z);
    float _32_m59 : packoffset(c23.w);
    float _32_m60 : packoffset(c24);
    float _32_m61 : packoffset(c24.y);
    float _32_m62 : packoffset(c24.z);
    float _32_m63 : packoffset(c24.w);
    float4 _32_m64 : packoffset(c25);
    float4 _32_m65 : packoffset(c26);
    float4 _32_m66 : packoffset(c27);
    float _32_m67 : packoffset(c28);
    float _32_m68 : packoffset(c28.y);
    float _32_m69 : packoffset(c28.z);
    float _32_m70 : packoffset(c28.w);
    float _32_m71 : packoffset(c29);
    float _32_m72 : packoffset(c29.y);
    float _32_m73 : packoffset(c29.z);
    float _32_m74 : packoffset(c29.w);
    float _32_m75 : packoffset(c30);
    float _32_m76 : packoffset(c30.y);
    float _32_m77 : packoffset(c30.z);
    float _32_m78 : packoffset(c30.w);
    float4 _32_m79 : packoffset(c31);
    float4 _32_m80 : packoffset(c32);
    float4 _32_m81 : packoffset(c33);
    float _32_m82 : packoffset(c34);
    float _32_m83 : packoffset(c34.y);
    float _32_m84 : packoffset(c34.z);
    float _32_m85 : packoffset(c34.w);
    float _32_m86 : packoffset(c35);
    float _32_m87 : packoffset(c35.y);
    float _32_m88 : packoffset(c35.z);
    float _32_m89 : packoffset(c35.w);
    float _32_m90 : packoffset(c36);
    float _32_m91 : packoffset(c36.y);
    float _32_m92 : packoffset(c36.z);
    float _32_m93 : packoffset(c36.w);
    float _32_m94 : packoffset(c37);
    float _32_m95 : packoffset(c37.y);
    float _32_m96 : packoffset(c37.z);
    float _32_m97 : packoffset(c37.w);
    float _32_m98 : packoffset(c38);
    float _32_m99 : packoffset(c38.y);
    float _32_m100 : packoffset(c38.z);
    float _32_m101 : packoffset(c38.w);
    float _32_m102 : packoffset(c39);
    float _32_m103 : packoffset(c39.y);
    float _32_m104 : packoffset(c39.z);
    float _32_m105 : packoffset(c39.w);
    float _32_m106 : packoffset(c40);
    float4 _32_m107 : packoffset(c41);
    float4 _32_m108 : packoffset(c42);
    float4 _32_m109 : packoffset(c43);
    float4 _32_m110 : packoffset(c44);
    float4 _32_m111 : packoffset(c45);
    float4 _32_m112 : packoffset(c46);
    float4 _32_m113 : packoffset(c47);
    float4 _32_m114 : packoffset(c48);
};

[[vk::binding(6, 0)]] SamplerState _21 : register(s6);
[[vk::binding(10, 1)]] Texture2D<float4> _23 : register(t10);
[[vk::binding(6, 1)]] SamplerState _24 : register(s6);
[[vk::binding(9, 1)]] Texture2D<float4> _25 : register(t9);
[[vk::binding(5, 1)]] SamplerState _26 : register(s5);
[[vk::binding(8, 1)]] Texture2D<float4> _27 : register(t8);
[[vk::binding(4, 1)]] SamplerState _28 : register(s4);
[[vk::binding(7, 1)]] Texture2D<float4> _29 : register(t7);
[[vk::binding(3, 1)]] SamplerState _30 : register(s3);
[[vk::binding(34, 0)]] Texture3D<float4> _34 : register(t34);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float4 _7;
static float3 _8;
static float3 _9;
static uint _10;
static float4 _11;
static float4 _12;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(5)]] float4 _7 : TEXCOORD5;
    [[vk::location(6)]] float3 _8 : TEXCOORD6;
    [[vk::location(7)]] float3 _9 : TEXCOORD7;
    [[vk::location(8)]] nointerpolation uint _10 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 _11 : SV_Target0;
    float4 _12 : SV_Target1;
};

void frag_main()
{
    uint2 _224 = uint2(gl_FragCoord.xy);
    float2 _226 = ((gl_FragCoord.xy * _16_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _229 = float4(_226, gl_FragCoord.z, 1.0f);
    _229.y = -_226.y;
    float4 _232 = mul(_14_m6, _229);
    float3 _236 = _232.xyz / _232.w.xxx;
    float _243 = abs(mul(_14_m0, float4(_236, 1.0f)).z);
    float3 _258;
    do
    {
        if (_16_m4.w == 0.0f)
        {
            _258 = _14_m11.xyz - _236;
            break;
        }
        else
        {
            _258 = _14_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _259 = dot(_258, _258);
    float _261 = rsqrt(max(_259, 9.9999999392252902907785028219223e-09f));
    float3 _262 = _258 * _261;
    float _263 = _259 * _261;
    bool4 _277 = (_32_m5 != 0.0f).xxxx;
    float4 _279 = _32_m16 * float4(_277.x ? 1.0f.xxxx.x : _7.x, _277.y ? 1.0f.xxxx.y : _7.y, _277.z ? 1.0f.xxxx.z : _7.z, _277.w ? 1.0f.xxxx.w : _7.w);
    float3 _283 = _279.xyz * _32_m6;
    float4 _284 = float4(_283.x, _283.y, _283.z, _279.w);
    _284.w = _279.w * _32_m7;
    float _310 = (_32_m92 != 0.0f) ? _4.w : 1.0f;
    float4 _323 = _25.SampleBias(_26, _5.xy, float(int(_32_m26)) + _16_m16);
    float4 _327 = lerp(_323, float4(1.0f, 1.0f, 1.0f, _323.x), _32_m28.xxxx);
    float4 _335 = (1.0f - _32_m86).xxxx + (_327 * _32_m30);
    float2 _372;
    if (_32_m30 != 0.0f)
    {
        float _354 = (_335.x * (_32_m93 + 1.0f)) - _32_m93;
        float4 _360 = _335;
        _360.w = _335.w * _354;
        bool2 _368 = (_32_m98 != 0.0f).xx;
        float2 _369 = (((_360.wy * 2.0f) - 1.0f.xx).xy * _32_m94).xy * _310;
        float2 _370 = float2(_354 * _32_m94, _354 * _32_m95) * _310;
        _372 = float2(_368.x ? _369.x : _370.x, _368.y ? _369.y : _370.y);
    }
    else
    {
        _372 = 0.0f.xx;
    }
    float4 _387 = _27.SampleBias(_28, _5.zw + (_372 * _32_m42), float(int(_32_m41)) + _16_m16);
    float4 _391 = lerp(_387, float4(1.0f, 1.0f, 1.0f, _387.x), _32_m43.xxxx);
    float4 _401 = (1.0f - (_32_m86 * _32_m87)).xxxx + (_391 * _32_m45);
    float4 _403 = ((1.0f - _32_m88).xxxx + (_327 * _32_m31)) + (_391 * _32_m46);
    float2 _441;
    if (_32_m45 != 0.0f)
    {
        float _421 = (_401.x * (_32_m93 + 1.0f)) - _32_m93;
        float4 _427 = _401;
        _427.w = _401.w * _421;
        bool2 _435 = (_32_m99 != 0.0f).xx;
        float2 _437 = _372 + ((((_427.wy * 2.0f) - 1.0f.xx).xy * _32_m96).xy * _310);
        float2 _439 = _372 + (float2(_421 * _32_m96, _421 * _32_m97) * _310);
        _441 = float2(_435.x ? _437.x : _439.x, _435.y ? _437.y : _439.y);
    }
    else
    {
        _441 = _372;
    }
    float _448 = (_32_m101 * _32_m46) * _32_m100;
    float2 _452 = _441 * ((1.0f - _448) + (_403.x * _448));
    float4 _467 = _29.SampleBias(_30, _6.xy + (_452 * _32_m57), float(int(_32_m56)) + _16_m16);
    float4 _471 = lerp(_467, float4(1.0f, 1.0f, 1.0f, _467.x), _32_m58.xxxx);
    float4 _481 = _403 + (_471 * _32_m60);
    float4 _485 = (_391 * _32_m48) + (_471 * _32_m62);
    float _487 = _481.x;
    float _489 = (_32_m101 * _32_m60) * _32_m100;
    float4 _508 = _23.SampleBias(_24, _4.xy + ((_452 * ((1.0f - _489) + (_487 * _489))) * _32_m17), float(int(_32_m19)) + _16_m16);
    float4 _514 = (_284 * lerp(_508, float4(1.0f, 1.0f, 1.0f, _508.x), _32_m18.xxxx)) * ((((1.0f - _32_m89).xxxx + (_327 * _32_m32)) + (_391 * _32_m47)) + (_471 * _32_m61));
    float4 _525 = ((_485 * clamp((_514.w + _485.w) * _32_m107.w, 0.0f, 1.0f)) * _32_m107) + _514;
    float4 _526 = float4(_525.x, _525.y, _525.z, _514.w);
    float _529 = _32_m101 * _32_m105;
    bool4 _536 = (_32_m91 != 0.0f).xxxx;
    float _550 = (_471 * _32_m63).x - lerp(-1.0f, ((_32_m103 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _529) + (_487 * _529));
    float _552 = clamp(_550 * _32_m102, 0.0f, 1.0f);
    float _555 = clamp((_32_m104 - _550) * _32_m102, 0.0f, 1.0f);
    float4 _561;
    _561.w = _514.w * lerp(_552, _552, _32_m108.w);
    float3 _565 = lerp(_525.xyz, (_32_m108.xyz * _555) * _32_m6, _555.xxx);
    float4 _566 = float4(_565.x, _565.y, _565.z, _561.w);
    float4 _567 = float4(_536.x ? _566.x : _526.x, _536.y ? _566.y : _526.y, _536.z ? _566.z : _526.z, _536.w ? _566.w : _526.w);
    float3 _591 = _567.xyz;
    float3 _611 = clamp(((_591 + (max(_591 - _32_m9.xxx, 0.0f.xxx) * _32_m10)).xyz * ((1.0f - _32_m12) + (_16_m20.y * _32_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float _624 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _631 = 1.0f - _32_m0;
    float _633 = (clamp(_567.w * ((_32_m67 != 0.0f) ? (clamp((_243 - _32_m68) / (_32_m69 - _32_m68), 0.0f, 1.0f) * clamp((_243 - _32_m70) / (_32_m71 - _32_m70), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _19_m0[_10]._m1.y)) * (((_19_m0[_10]._m1.x - ((_19_m0[_10]._m1.x >= 0.0f) ? _624 : (-_624))) > 0.0f) ? 1.0f : _631);
    float _643 = 1.0f - _32_m1;
    float2 _685;
    if (clamp((_32_m3 + 1.0f) - _32_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _671 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _671.y = -_671.y;
        _685 = ((sqrt(sqrt(abs(_671 * 0.5f))) * float2(int2(sign(_671)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _685 = 0.0f.xx;
    }
    float4 _686 = float4(_611.x, _611.y, _611.z, 0.0f.xxxx.w);
    _686.w = _633;
    float4 _696 = (_686 * _32_m0) + (float4(_686.xyz * _633, 1.0f) * _631);
    float3 _698 = -_262;
    float _714 = _236.y * _16_m46.w;
    float _719 = max(0.00999999977648258209228515625f, _714 + _16_m47.w);
    float3 _733 = exp(_16_m45.xyz * ((-max(0.0f, (_263 * _16_m44.w) - _16_m43.w)) * (((1.0f - exp(-_719)) / _719) * exp(_714 + _16_m48.w))));
    float _736 = dot(_698, _16_m44.xyz);
    float _742 = _16_m45.w * _16_m45.w;
    float _746 = (1.0f + _742) - ((2.0f * _16_m45.w) * _736);
    float3 _1079;
    float _1080;
    if (_16_m55.z > 0.0f)
    {
        uint3 _904 = (uint3(int3(int(_224.x), int(_224.y), int(_16_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _905 = _904.y;
        uint _906 = _904.z;
        uint _909 = _904.x + (_905 * _906);
        uint _911 = _905 + (_906 * _909);
        uint _913 = _906 + (_909 * _911);
        uint _915 = _909 + (_911 * _913);
        float _940 = dot(_698, -_14_m0[2].xyz);
        float3 _950 = _236 - _14_m11.xyz;
        float _952 = (_16_m55.w * ((_940 > 5.9604644775390625e-08f) ? (1.0f / _940) : 0.0f)) * (1.0f / _263);
        float _953 = _950.y;
        float _954 = _952 * _953;
        float _956 = _14_m11.y + _954;
        float _957 = _953 - _954;
        float _959 = (1.0f - _952) * _263;
        float _973 = max(-127.0f, _16_m49.z * _957);
        float _997 = max(-127.0f, _16_m52.x * _957);
        float _1008 = ((_16_m49.y * exp2(-max(-127.0f, _16_m49.z * (_956 - _16_m49.x)))) * ((abs(_973) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_973)) / _973) : (0.693147182464599609375f - (0.2402265071868896484375f * _973)))) + ((_16_m52.y * exp2(-max(-127.0f, _16_m52.x * (_956 - _16_m52.z)))) * ((abs(_997) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_997)) / _997) : (0.693147182464599609375f - (0.2402265071868896484375f * _997))));
        float _1030 = clamp((_263 * _16_m50.w) + _16_m50.z, 0.0f, 1.0f);
        float _1033 = clamp((max(clamp(exp2(-(_1008 * _959)), 0.0f, 1.0f), _16_m51.w) + clamp((_263 * _16_m50.y) + _16_m50.x, 0.0f, 1.0f)) + _1030, 0.0f, 1.0f);
        float4 _1073 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _34.SampleLevel(_21, float3((float2(_224) + ((((float3(uint3(_915, _911 + (_913 * _915), _204) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _16_m59.w).xy) * _16_m57.xy, (log2((_243 * _16_m56.x) + _16_m56.y) * _16_m56.z) / _16_m55.z), 0.0f), clamp((_243 - _16_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1075 = _1073.w;
        _1079 = _1073.xyz + (((_16_m51.xyz * (1.0f - _1033)) + (((_16_m54.xyz * pow(clamp(dot(_262, _16_m53.xyz), 0.0f, 1.0f), _16_m54.w)) * (1.0f - clamp(exp2(-(_1008 * max(_959 - _16_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1030))) * _1075);
        _1080 = _1075 * _1033;
    }
    else
    {
        float3 _776 = _236 - _14_m11.xyz;
        float _778 = _776.y;
        float _792 = max(-127.0f, _16_m49.z * _778);
        float _816 = max(-127.0f, _16_m52.x * _778);
        float _827 = ((_16_m49.y * exp2(-max(-127.0f, _16_m49.z * (_14_m11.y - _16_m49.x)))) * ((abs(_792) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_792)) / _792) : (0.693147182464599609375f - (0.2402265071868896484375f * _792)))) + ((_16_m52.y * exp2(-max(-127.0f, _16_m52.x * (_14_m11.y - _16_m52.z)))) * ((abs(_816) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_816)) / _816) : (0.693147182464599609375f - (0.2402265071868896484375f * _816))));
        float _849 = clamp((_263 * _16_m50.w) + _16_m50.z, 0.0f, 1.0f);
        float _852 = clamp((max(clamp(exp2(-(_827 * _263)), 0.0f, 1.0f), _16_m51.w) + clamp((_263 * _16_m50.y) + _16_m50.x, 0.0f, 1.0f)) + _849, 0.0f, 1.0f);
        _1079 = (_16_m51.xyz * (1.0f - _852)) + (((_16_m54.xyz * pow(clamp(dot(_262, _16_m53.xyz), 0.0f, 1.0f), _16_m54.w)) * (1.0f - clamp(exp2(-(_827 * max(_263 - _16_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _849));
        _1080 = _852;
    }
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _1079 *= 0.65f.xxx;
        _1080 = (_1080 * 0.65f) + 0.35f;
    }
    float3 _1084 = _696.xyz;
    float _1091 = clamp(_243 / _32_m83, 0.0f, 1.0f);
    bool3 _1101 = (_32_m1 == 2.0f).xxx;
    float _1103 = _696.w;
    float3 _1106 = lerp(_1084, ((_1084 * (_733 * _1080)) + (((((clamp(((_16_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_736 * _736)))) + _16_m48.xyz) + (_16_m47.xyz * ((1.0f - _742) / max((12.56637096405029296875f * _746) * sqrt(_746), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _733)) * _1080) + _1079) * (1.0f - (_32_m1 * _32_m0)))).xyz, (_1091 + (_32_m82 * (1.0f - _1091))).xxx).xyz * _1103;
    float3 _1107 = (1.0f - _1103).xxx + _1106;
    float3 _1108 = float3(_1101.x ? _1107.x : _1106.x, _1101.y ? _1107.y : _1106.y, _1101.z ? _1107.z : _1106.z);
    float4 _1109 = float4(_1108.x, _1108.y, _1108.z, _696.w);
    _1109.w = _1103 * _643;
    float3 _1128 = ((lerp(dot(_1109.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1109.xyz, _16_m76.w.xxx) * _16_m76.xyz) * _32_m11) + (_1109.xyz * (1.0f - _32_m11));
    float2 _1130 = min(_685, 1.0f.xx);
    float4 _1131 = float4(_1130.x, _1130.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1131.z = 1.0f;
    _1131.w = (_32_m2 * _32_m0) * float(clamp(max(dot(_611.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _633, _633 * _643) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _11 = float4(_1128.x, _1128.y, _1128.z, _1109.w);
    _12 = _1131;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._11 = _11;
    stage_output._12 = _12;
    return stage_output;
}
