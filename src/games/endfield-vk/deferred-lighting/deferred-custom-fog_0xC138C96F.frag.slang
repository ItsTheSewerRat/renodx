// DX11 0x82E0E0DA -> Vulkan 0xC138C96F
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

static float4 _209;
static uint _210 = 0u;

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

[[vk::binding(4, 1)]]
cbuffer _33_34 : register(b4)
{
    float _34_m0 : packoffset(c0);
    float _34_m1 : packoffset(c0.y);
    float _34_m2 : packoffset(c0.z);
    float _34_m3 : packoffset(c0.w);
    float _34_m4 : packoffset(c1);
    float _34_m5 : packoffset(c1.y);
    float _34_m6 : packoffset(c1.z);
    float _34_m7 : packoffset(c1.w);
    float _34_m8 : packoffset(c2);
    float _34_m9 : packoffset(c2.y);
    float _34_m10 : packoffset(c2.z);
    float _34_m11 : packoffset(c2.w);
    float _34_m12 : packoffset(c3);
    float _34_m13 : packoffset(c3.y);
    float _34_m14 : packoffset(c3.z);
    float _34_m15 : packoffset(c3.w);
    float4 _34_m16 : packoffset(c4);
    float _34_m17 : packoffset(c5);
    float _34_m18 : packoffset(c5.y);
    float _34_m19 : packoffset(c5.z);
    float _34_m20 : packoffset(c5.w);
    float4 _34_m21 : packoffset(c6);
    float4 _34_m22 : packoffset(c7);
    float4 _34_m23 : packoffset(c8);
    float4 _34_m24 : packoffset(c9);
    float4 _34_m25 : packoffset(c10);
    float _34_m26 : packoffset(c11);
    float _34_m27 : packoffset(c11.y);
    float _34_m28 : packoffset(c11.z);
    float _34_m29 : packoffset(c11.w);
    float _34_m30 : packoffset(c12);
    float _34_m31 : packoffset(c12.y);
    float _34_m32 : packoffset(c12.z);
    float _34_m33 : packoffset(c12.w);
    float _34_m34 : packoffset(c13);
    float _34_m35 : packoffset(c13.y);
    float _34_m36 : packoffset(c13.z);
    float _34_m37 : packoffset(c13.w);
    float4 _34_m38 : packoffset(c14);
    float4 _34_m39 : packoffset(c15);
    float4 _34_m40 : packoffset(c16);
    float _34_m41 : packoffset(c17);
    float _34_m42 : packoffset(c17.y);
    float _34_m43 : packoffset(c17.z);
    float _34_m44 : packoffset(c17.w);
    float _34_m45 : packoffset(c18);
    float _34_m46 : packoffset(c18.y);
    float _34_m47 : packoffset(c18.z);
    float _34_m48 : packoffset(c18.w);
    float _34_m49 : packoffset(c19);
    float _34_m50 : packoffset(c19.y);
    float _34_m51 : packoffset(c19.z);
    float _34_m52 : packoffset(c19.w);
    float4 _34_m53 : packoffset(c20);
    float4 _34_m54 : packoffset(c21);
    float4 _34_m55 : packoffset(c22);
    float _34_m56 : packoffset(c23);
    float _34_m57 : packoffset(c23.y);
    float _34_m58 : packoffset(c23.z);
    float _34_m59 : packoffset(c23.w);
    float _34_m60 : packoffset(c24);
    float _34_m61 : packoffset(c24.y);
    float _34_m62 : packoffset(c24.z);
    float _34_m63 : packoffset(c24.w);
    float4 _34_m64 : packoffset(c25);
    float4 _34_m65 : packoffset(c26);
    float4 _34_m66 : packoffset(c27);
    float _34_m67 : packoffset(c28);
    float _34_m68 : packoffset(c28.y);
    float _34_m69 : packoffset(c28.z);
    float _34_m70 : packoffset(c28.w);
    float _34_m71 : packoffset(c29);
    float _34_m72 : packoffset(c29.y);
    float _34_m73 : packoffset(c29.z);
    float _34_m74 : packoffset(c29.w);
    float4 _34_m75 : packoffset(c30);
    float4 _34_m76 : packoffset(c31);
    float4 _34_m77 : packoffset(c32);
    float _34_m78 : packoffset(c33);
    float _34_m79 : packoffset(c33.y);
    float _34_m80 : packoffset(c33.z);
    float _34_m81 : packoffset(c33.w);
    float _34_m82 : packoffset(c34);
    float _34_m83 : packoffset(c34.y);
    float _34_m84 : packoffset(c34.z);
    float _34_m85 : packoffset(c34.w);
    float _34_m86 : packoffset(c35);
    float _34_m87 : packoffset(c35.y);
    float _34_m88 : packoffset(c35.z);
    float _34_m89 : packoffset(c35.w);
    float _34_m90 : packoffset(c36);
    float _34_m91 : packoffset(c36.y);
    float _34_m92 : packoffset(c36.z);
    float _34_m93 : packoffset(c36.w);
    float _34_m94 : packoffset(c37);
    float _34_m95 : packoffset(c37.y);
    float _34_m96 : packoffset(c37.z);
    float _34_m97 : packoffset(c37.w);
    float _34_m98 : packoffset(c38);
    float _34_m99 : packoffset(c38.y);
    float _34_m100 : packoffset(c38.z);
    float _34_m101 : packoffset(c38.w);
    float _34_m102 : packoffset(c39);
    float _34_m103 : packoffset(c39.y);
    float _34_m104 : packoffset(c39.z);
    float _34_m105 : packoffset(c39.w);
    float _34_m106 : packoffset(c40);
    float _34_m107 : packoffset(c40.y);
    float _34_m108 : packoffset(c40.z);
    float _34_m109 : packoffset(c40.w);
    float _34_m110 : packoffset(c41);
    float _34_m111 : packoffset(c41.y);
    float _34_m112 : packoffset(c41.z);
    float _34_m113 : packoffset(c41.w);
    float _34_m114 : packoffset(c42);
    float _34_m115 : packoffset(c42.y);
    float _34_m116 : packoffset(c42.z);
    float _34_m117 : packoffset(c42.w);
    float _34_m118 : packoffset(c43);
    float _34_m119 : packoffset(c43.y);
    float _34_m120 : packoffset(c43.z);
    float _34_m121 : packoffset(c43.w);
    float _34_m122 : packoffset(c44);
    float _34_m123 : packoffset(c44.y);
    float _34_m124 : packoffset(c44.z);
    float _34_m125 : packoffset(c44.w);
    float _34_m126 : packoffset(c45);
    float _34_m127 : packoffset(c45.y);
    float _34_m128 : packoffset(c45.z);
    float _34_m129 : packoffset(c45.w);
    float _34_m130 : packoffset(c46);
    float _34_m131 : packoffset(c46.y);
    float _34_m132 : packoffset(c46.z);
    float _34_m133 : packoffset(c46.w);
    float _34_m134 : packoffset(c47);
    float _34_m135 : packoffset(c47.y);
    float _34_m136 : packoffset(c47.z);
    float _34_m137 : packoffset(c47.w);
    float _34_m138 : packoffset(c48);
    float _34_m139 : packoffset(c48.y);
    float _34_m140 : packoffset(c48.z);
    float _34_m141 : packoffset(c48.w);
    float _34_m142 : packoffset(c49);
    float _34_m143 : packoffset(c49.y);
    float _34_m144 : packoffset(c49.z);
    float _34_m145 : packoffset(c49.w);
    float _34_m146 : packoffset(c50);
    float4 _34_m147 : packoffset(c51);
    float4 _34_m148 : packoffset(c52);
    float4 _34_m149 : packoffset(c53);
    float4 _34_m150 : packoffset(c54);
    float4 _34_m151 : packoffset(c55);
    float4 _34_m152 : packoffset(c56);
    float4 _34_m153 : packoffset(c57);
    float4 _34_m154 : packoffset(c58);
};

[[vk::binding(6, 0)]] SamplerState _21 : register(s6);
[[vk::binding(14, 1)]] Texture2D<float4> _23 : register(t14);
[[vk::binding(9, 1)]] SamplerState _24 : register(s9);
[[vk::binding(13, 1)]] Texture2D<float4> _25 : register(t13);
[[vk::binding(8, 1)]] SamplerState _26 : register(s8);
[[vk::binding(12, 1)]] Texture2D<float4> _27 : register(t12);
[[vk::binding(7, 1)]] SamplerState _28 : register(s7);
[[vk::binding(11, 1)]] Texture2D<float4> _29 : register(t11);
[[vk::binding(6, 1)]] SamplerState _30 : register(s6);
[[vk::binding(10, 1)]] Texture2D<float4> _31 : register(t10);
[[vk::binding(5, 1)]] SamplerState _32 : register(s5);
[[vk::binding(34, 0)]] Texture3D<float4> _36 : register(t34);

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
    uint2 _230 = uint2(gl_FragCoord.xy);
    float2 _232 = ((gl_FragCoord.xy * _16_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _235 = float4(_232, gl_FragCoord.z, 1.0f);
    _235.y = -_232.y;
    float4 _238 = mul(_14_m6, _235);
    float3 _242 = _238.xyz / _238.w.xxx;
    float _249 = abs(mul(_14_m0, float4(_242, 1.0f)).z);
    float3 _264;
    do
    {
        if (_16_m4.w == 0.0f)
        {
            _264 = _14_m11.xyz - _242;
            break;
        }
        else
        {
            _264 = _14_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _265 = dot(_264, _264);
    float _267 = rsqrt(max(_265, 9.9999999392252902907785028219223e-09f));
    float3 _268 = _264 * _267;
    float _269 = _265 * _267;
    bool4 _284 = (_34_m5 != 0.0f).xxxx;
    float4 _286 = _34_m16 * float4(_284.x ? 1.0f.xxxx.x : _7.x, _284.y ? 1.0f.xxxx.y : _7.y, _284.z ? 1.0f.xxxx.z : _7.z, _284.w ? 1.0f.xxxx.w : _7.w);
    float3 _290 = _286.xyz * _34_m6;
    float4 _291 = float4(_290.x, _290.y, _290.z, _286.w);
    _291.w = _286.w * _34_m7;
    float _317 = (_34_m132 != 0.0f) ? _4.w : 1.0f;
    float4 _330 = _25.SampleBias(_26, _5.xy, float(int(_34_m26)) + _16_m16);
    float4 _334 = lerp(_330, float4(1.0f, 1.0f, 1.0f, _330.x), _34_m28.xxxx);
    float4 _340 = (1.0f - _34_m126).xxxx + (_334 * _34_m30);
    float2 _375;
    if (_34_m30 != 0.0f)
    {
        float _357 = (_340.x * (_34_m133 + 1.0f)) - _34_m133;
        float4 _363 = _340;
        _363.w = _340.w * _357;
        bool2 _371 = (_34_m138 != 0.0f).xx;
        float2 _372 = (((_363.wy * 2.0f) - 1.0f.xx).xy * _34_m134).xy * _317;
        float2 _373 = float2(_357 * _34_m134, _357 * _34_m135) * _317;
        _375 = float2(_371.x ? _372.x : _373.x, _371.y ? _372.y : _373.y);
    }
    else
    {
        _375 = 0.0f.xx;
    }
    float4 _390 = _27.SampleBias(_28, _5.zw + (_375 * _34_m42), float(int(_34_m41)) + _16_m16);
    float4 _394 = lerp(_390, float4(1.0f, 1.0f, 1.0f, _390.x), _34_m43.xxxx);
    float4 _402 = (1.0f - (_34_m126 * _34_m127)).xxxx + (_394 * _34_m45);
    float4 _404 = ((1.0f - _34_m128).xxxx + (_334 * _34_m31)) + (_394 * _34_m46);
    float2 _441;
    if (_34_m45 != 0.0f)
    {
        float _421 = (_402.x * (_34_m133 + 1.0f)) - _34_m133;
        float4 _427 = _402;
        _427.w = _402.w * _421;
        bool2 _435 = (_34_m139 != 0.0f).xx;
        float2 _437 = _375 + ((((_427.wy * 2.0f) - 1.0f.xx).xy * _34_m136).xy * _317);
        float2 _439 = _375 + (float2(_421 * _34_m136, _421 * _34_m137) * _317);
        _441 = float2(_435.x ? _437.x : _439.x, _435.y ? _437.y : _439.y);
    }
    else
    {
        _441 = _375;
    }
    float _448 = (_34_m141 * _34_m46) * _34_m140;
    float2 _452 = _441 * ((1.0f - _448) + (_404.x * _448));
    float4 _467 = _29.SampleBias(_30, _6.xy + (_452 * _34_m57), float(int(_34_m56)) + _16_m16);
    float4 _471 = lerp(_467, float4(1.0f, 1.0f, 1.0f, _467.x), _34_m58.xxxx);
    float4 _479 = _404 + (_471 * _34_m60);
    float _483 = _479.x;
    float _485 = (_34_m141 * _34_m60) * _34_m140;
    float2 _489 = _452 * ((1.0f - _485) + (_483 * _485));
    float4 _504 = _31.SampleBias(_32, _6.zw + (_489 * _34_m68), float(int(_34_m67)) + _16_m16);
    float4 _508 = lerp(_504, float4(1.0f, 1.0f, 1.0f, _504.x), _34_m69.xxxx);
    float4 _518 = (_471 * _34_m62) + (_508 * _34_m72);
    float4 _534 = _23.SampleBias(_24, _4.xy + (_489 * _34_m17), float(int(_34_m19)) + _16_m16);
    float4 _540 = (_291 * lerp(_534, float4(1.0f, 1.0f, 1.0f, _534.x), _34_m18.xxxx)) * ((((1.0f - _34_m129).xxxx + (_394 * _34_m47)) + (_471 * _34_m61)) + (_508 * _34_m71));
    float4 _551 = ((_518 * clamp((_540.w + _518.w) * _34_m147.w, 0.0f, 1.0f)) * _34_m147) + _540;
    float4 _552 = float4(_551.x, _551.y, _551.z, _540.w);
    float _555 = _34_m141 * _34_m145;
    bool4 _562 = (_34_m131 != 0.0f).xxxx;
    float _576 = (_508 * _34_m73).x - lerp(-1.0f, ((_34_m143 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _555) + (_483 * _555));
    float _578 = clamp(_576 * _34_m142, 0.0f, 1.0f);
    float _581 = clamp((_34_m144 - _576) * _34_m142, 0.0f, 1.0f);
    float4 _587;
    _587.w = _540.w * lerp(_578, _578, _34_m148.w);
    float3 _591 = lerp(_551.xyz, (_34_m148.xyz * _581) * _34_m6, _581.xxx);
    float4 _592 = float4(_591.x, _591.y, _591.z, _587.w);
    float4 _593 = float4(_562.x ? _592.x : _552.x, _562.y ? _592.y : _552.y, _562.z ? _592.z : _552.z, _562.w ? _592.w : _552.w);
    float3 _617 = _593.xyz;
    float3 _637 = clamp(((_617 + (max(_617 - _34_m9.xxx, 0.0f.xxx) * _34_m10)).xyz * ((1.0f - _34_m12) + (_16_m20.y * _34_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float _650 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _657 = 1.0f - _34_m0;
    float _659 = (clamp(_593.w * ((_34_m78 != 0.0f) ? (clamp((_249 - _34_m79) / (_34_m80 - _34_m79), 0.0f, 1.0f) * clamp((_249 - _34_m81) / (_34_m82 - _34_m81), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _19_m0[_10]._m1.y)) * (((_19_m0[_10]._m1.x - ((_19_m0[_10]._m1.x >= 0.0f) ? _650 : (-_650))) > 0.0f) ? 1.0f : _657);
    float _669 = 1.0f - _34_m1;
    float2 _711;
    if (clamp((_34_m3 + 1.0f) - _34_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _697 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _697.y = -_697.y;
        _711 = ((sqrt(sqrt(abs(_697 * 0.5f))) * float2(int2(sign(_697)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _711 = 0.0f.xx;
    }
    float4 _712 = float4(_637.x, _637.y, _637.z, 0.0f.xxxx.w);
    _712.w = _659;
    float4 _722 = (_712 * _34_m0) + (float4(_712.xyz * _659, 1.0f) * _657);
    float3 _724 = -_268;
    float _740 = _242.y * _16_m46.w;
    float _745 = max(0.00999999977648258209228515625f, _740 + _16_m47.w);
    float3 _759 = exp(_16_m45.xyz * ((-max(0.0f, (_269 * _16_m44.w) - _16_m43.w)) * (((1.0f - exp(-_745)) / _745) * exp(_740 + _16_m48.w))));
    float _762 = dot(_724, _16_m44.xyz);
    float _768 = _16_m45.w * _16_m45.w;
    float _772 = (1.0f + _768) - ((2.0f * _16_m45.w) * _762);
    float3 _1105;
    float _1106;
    if (_16_m55.z > 0.0f)
    {
        uint3 _930 = (uint3(int3(int(_230.x), int(_230.y), int(_16_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _931 = _930.y;
        uint _932 = _930.z;
        uint _935 = _930.x + (_931 * _932);
        uint _937 = _931 + (_932 * _935);
        uint _939 = _932 + (_935 * _937);
        uint _941 = _935 + (_937 * _939);
        float _966 = dot(_724, -_14_m0[2].xyz);
        float3 _976 = _242 - _14_m11.xyz;
        float _978 = (_16_m55.w * ((_966 > 5.9604644775390625e-08f) ? (1.0f / _966) : 0.0f)) * (1.0f / _269);
        float _979 = _976.y;
        float _980 = _978 * _979;
        float _982 = _14_m11.y + _980;
        float _983 = _979 - _980;
        float _985 = (1.0f - _978) * _269;
        float _999 = max(-127.0f, _16_m49.z * _983);
        float _1023 = max(-127.0f, _16_m52.x * _983);
        float _1034 = ((_16_m49.y * exp2(-max(-127.0f, _16_m49.z * (_982 - _16_m49.x)))) * ((abs(_999) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_999)) / _999) : (0.693147182464599609375f - (0.2402265071868896484375f * _999)))) + ((_16_m52.y * exp2(-max(-127.0f, _16_m52.x * (_982 - _16_m52.z)))) * ((abs(_1023) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1023)) / _1023) : (0.693147182464599609375f - (0.2402265071868896484375f * _1023))));
        float _1056 = clamp((_269 * _16_m50.w) + _16_m50.z, 0.0f, 1.0f);
        float _1059 = clamp((max(clamp(exp2(-(_1034 * _985)), 0.0f, 1.0f), _16_m51.w) + clamp((_269 * _16_m50.y) + _16_m50.x, 0.0f, 1.0f)) + _1056, 0.0f, 1.0f);
        float4 _1099 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _36.SampleLevel(_21, float3((float2(_230) + ((((float3(uint3(_941, _937 + (_939 * _941), _210) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _16_m59.w).xy) * _16_m57.xy, (log2((_249 * _16_m56.x) + _16_m56.y) * _16_m56.z) / _16_m55.z), 0.0f), clamp((_249 - _16_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1101 = _1099.w;
        _1105 = _1099.xyz + (((_16_m51.xyz * (1.0f - _1059)) + (((_16_m54.xyz * pow(clamp(dot(_268, _16_m53.xyz), 0.0f, 1.0f), _16_m54.w)) * (1.0f - clamp(exp2(-(_1034 * max(_985 - _16_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1056))) * _1101);
        _1106 = _1101 * _1059;
    }
    else
    {
        float3 _802 = _242 - _14_m11.xyz;
        float _804 = _802.y;
        float _818 = max(-127.0f, _16_m49.z * _804);
        float _842 = max(-127.0f, _16_m52.x * _804);
        float _853 = ((_16_m49.y * exp2(-max(-127.0f, _16_m49.z * (_14_m11.y - _16_m49.x)))) * ((abs(_818) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_818)) / _818) : (0.693147182464599609375f - (0.2402265071868896484375f * _818)))) + ((_16_m52.y * exp2(-max(-127.0f, _16_m52.x * (_14_m11.y - _16_m52.z)))) * ((abs(_842) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_842)) / _842) : (0.693147182464599609375f - (0.2402265071868896484375f * _842))));
        float _875 = clamp((_269 * _16_m50.w) + _16_m50.z, 0.0f, 1.0f);
        float _878 = clamp((max(clamp(exp2(-(_853 * _269)), 0.0f, 1.0f), _16_m51.w) + clamp((_269 * _16_m50.y) + _16_m50.x, 0.0f, 1.0f)) + _875, 0.0f, 1.0f);
        _1105 = (_16_m51.xyz * (1.0f - _878)) + (((_16_m54.xyz * pow(clamp(dot(_268, _16_m53.xyz), 0.0f, 1.0f), _16_m54.w)) * (1.0f - clamp(exp2(-(_853 * max(_269 - _16_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _875));
        _1106 = _878;
    }
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _1105 *= 0.65f.xxx;
        _1106 = (_1106 * 0.65f) + 0.35f;
    }
    float3 _1110 = _722.xyz;
    float _1117 = clamp(_249 / _34_m87, 0.0f, 1.0f);
    bool3 _1127 = (_34_m1 == 2.0f).xxx;
    float _1129 = _722.w;
    float3 _1132 = lerp(_1110, ((_1110 * (_759 * _1106)) + (((((clamp(((_16_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_762 * _762)))) + _16_m48.xyz) + (_16_m47.xyz * ((1.0f - _768) / max((12.56637096405029296875f * _772) * sqrt(_772), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _759)) * _1106) + _1105) * (1.0f - (_34_m1 * _34_m0)))).xyz, (_1117 + (_34_m86 * (1.0f - _1117))).xxx).xyz * _1129;
    float3 _1133 = (1.0f - _1129).xxx + _1132;
    float3 _1134 = float3(_1127.x ? _1133.x : _1132.x, _1127.y ? _1133.y : _1132.y, _1127.z ? _1133.z : _1132.z);
    float4 _1135 = float4(_1134.x, _1134.y, _1134.z, _722.w);
    _1135.w = _1129 * _669;
    float3 _1154 = ((lerp(dot(_1135.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1135.xyz, _16_m76.w.xxx) * _16_m76.xyz) * _34_m11) + (_1135.xyz * (1.0f - _34_m11));
    float2 _1156 = min(_711, 1.0f.xx);
    float4 _1157 = float4(_1156.x, _1156.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1157.z = 1.0f;
    _1157.w = (_34_m2 * _34_m0) * float(clamp(max(dot(_637.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _659, _659 * _669) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _11 = float4(_1154.x, _1154.y, _1154.z, _1135.w);
    _12 = _1157;
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
