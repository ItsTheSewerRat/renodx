// DX11 0x5BEF30AE -> Vulkan 0x98E6DCE7
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

static float4 _225;
static uint _226 = 0u;

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

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

[[vk::binding(0, 1)]]
cbuffer _31_32 : register(b0)
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

[[vk::binding(14, 0)]]
cbuffer _35_36 : register(b14)
{
    float4 _36_m0 : packoffset(c0);
    float4 _36_m1 : packoffset(c1);
    float4 _36_m2 : packoffset(c2);
    float4 _36_m3 : packoffset(c3);
    float4 _36_m4 : packoffset(c4);
    uint4 _36_m5 : packoffset(c5);
    float4 _36_m6[2048] : packoffset(c6);
};

[[vk::binding(6, 0)]] SamplerState _21 : register(s6);
[[vk::binding(8, 1)]] Texture2D<float4> _23 : register(t8);
[[vk::binding(4, 1)]] SamplerState _24 : register(s4);
[[vk::binding(7, 1)]] Texture2D<float4> _25 : register(t7);
[[vk::binding(3, 1)]] SamplerState _26 : register(s3);
[[vk::binding(6, 1)]] Texture2D<float4> _27 : register(t6);
[[vk::binding(2, 1)]] SamplerState _28 : register(s2);
[[vk::binding(5, 1)]] Texture2D<float4> _29 : register(t5);
[[vk::binding(1, 1)]] SamplerState _30 : register(s1);
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
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(4)]] float3 _8 : TEXCOORD4;
    [[vk::location(5)]] float3 _9 : TEXCOORD5;
    [[vk::location(6)]] nointerpolation uint _10 : TEXCOORD6;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 _11 : SV_Target0;
    float4 _12 : SV_Target1;
};

void frag_main()
{
    uint2 _246 = uint2(gl_FragCoord.xy);
    float2 _248 = ((gl_FragCoord.xy * _16_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _251 = float4(_248, gl_FragCoord.z, 1.0f);
    _251.y = -_248.y;
    float4 _254 = mul(_14_m6, _251);
    float3 _258 = _254.xyz / _254.w.xxx;
    float _260 = _258.y;
    float _265 = abs(mul(_14_m0, float4(_258.x, _260, _258.z, 1.0f)).z);
    float3 _280;
    do
    {
        if (_16_m4.w == 0.0f)
        {
            _280 = _14_m11.xyz - _258;
            break;
        }
        else
        {
            _280 = _14_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _281 = dot(_280, _280);
    float _283 = rsqrt(max(_281, 9.9999999392252902907785028219223e-09f));
    float3 _284 = _280 * _283;
    float _285 = _281 * _283;
    bool4 _299 = (_32_m5 != 0.0f).xxxx;
    float4 _301 = _32_m16 * float4(_299.x ? 1.0f.xxxx.x : _7.x, _299.y ? 1.0f.xxxx.y : _7.y, _299.z ? 1.0f.xxxx.z : _7.z, _299.w ? 1.0f.xxxx.w : _7.w);
    float3 _305 = _301.xyz * _32_m6;
    float4 _306 = float4(_305.x, _305.y, _305.z, _301.w);
    _306.w = _301.w * _32_m7;
    float _332 = (_32_m92 != 0.0f) ? _4.w : 1.0f;
    float4 _345 = _25.SampleBias(_26, _5.xy, float(int(_32_m26)) + _16_m16);
    float4 _349 = lerp(_345, float4(1.0f, 1.0f, 1.0f, _345.x), _32_m28.xxxx);
    float4 _357 = (1.0f - _32_m86).xxxx + (_349 * _32_m30);
    float2 _394;
    if (_32_m30 != 0.0f)
    {
        float _376 = (_357.x * (_32_m93 + 1.0f)) - _32_m93;
        float4 _382 = _357;
        _382.w = _357.w * _376;
        bool2 _390 = (_32_m98 != 0.0f).xx;
        float2 _391 = (((_382.wy * 2.0f) - 1.0f.xx).xy * _32_m94).xy * _332;
        float2 _392 = float2(_376 * _32_m94, _376 * _32_m95) * _332;
        _394 = float2(_390.x ? _391.x : _392.x, _390.y ? _391.y : _392.y);
    }
    else
    {
        _394 = 0.0f.xx;
    }
    float4 _409 = _27.SampleBias(_28, _5.zw + (_394 * _32_m42), float(int(_32_m41)) + _16_m16);
    float4 _413 = lerp(_409, float4(1.0f, 1.0f, 1.0f, _409.x), _32_m43.xxxx);
    float4 _423 = (1.0f - (_32_m86 * _32_m87)).xxxx + (_413 * _32_m45);
    float4 _425 = ((1.0f - _32_m88).xxxx + (_349 * _32_m31)) + (_413 * _32_m46);
    float2 _463;
    if (_32_m45 != 0.0f)
    {
        float _443 = (_423.x * (_32_m93 + 1.0f)) - _32_m93;
        float4 _449 = _423;
        _449.w = _423.w * _443;
        bool2 _457 = (_32_m99 != 0.0f).xx;
        float2 _459 = _394 + ((((_449.wy * 2.0f) - 1.0f.xx).xy * _32_m96).xy * _332);
        float2 _461 = _394 + (float2(_443 * _32_m96, _443 * _32_m97) * _332);
        _463 = float2(_457.x ? _459.x : _461.x, _457.y ? _459.y : _461.y);
    }
    else
    {
        _463 = _394;
    }
    float _470 = (_32_m101 * _32_m46) * _32_m100;
    float2 _474 = _463 * ((1.0f - _470) + (_425.x * _470));
    float4 _489 = _29.SampleBias(_30, _6.xy + (_474 * _32_m57), float(int(_32_m56)) + _16_m16);
    float4 _493 = lerp(_489, float4(1.0f, 1.0f, 1.0f, _489.x), _32_m58.xxxx);
    float4 _503 = _425 + (_493 * _32_m60);
    float4 _507 = (_413 * _32_m48) + (_493 * _32_m62);
    float _509 = _503.x;
    float _511 = (_32_m101 * _32_m60) * _32_m100;
    float4 _530 = _23.SampleBias(_24, _4.xy + ((_474 * ((1.0f - _511) + (_509 * _511))) * _32_m17), float(int(_32_m19)) + _16_m16);
    float4 _536 = (_306 * lerp(_530, float4(1.0f, 1.0f, 1.0f, _530.x), _32_m18.xxxx)) * ((((1.0f - _32_m89).xxxx + (_349 * _32_m32)) + (_413 * _32_m47)) + (_493 * _32_m61));
    float4 _547 = ((_507 * clamp((_536.w + _507.w) * _32_m107.w, 0.0f, 1.0f)) * _32_m107) + _536;
    float4 _548 = float4(_547.x, _547.y, _547.z, _536.w);
    float _551 = _32_m101 * _32_m105;
    bool4 _558 = (_32_m91 != 0.0f).xxxx;
    float _572 = (_493 * _32_m63).x - lerp(-1.0f, ((_32_m103 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _551) + (_509 * _551));
    float _574 = clamp(_572 * _32_m102, 0.0f, 1.0f);
    float _577 = clamp((_32_m104 - _572) * _32_m102, 0.0f, 1.0f);
    float4 _583;
    _583.w = _536.w * lerp(_574, _574, _32_m108.w);
    float3 _587 = lerp(_547.xyz, (_32_m108.xyz * _577) * _32_m6, _577.xxx);
    float4 _588 = float4(_587.x, _587.y, _587.z, _583.w);
    float4 _589 = float4(_558.x ? _588.x : _548.x, _558.y ? _588.y : _548.y, _558.z ? _588.z : _548.z, _558.w ? _588.w : _548.w);
    float3 _613 = _589.xyz;
    float _639 = _284.y;
    float _642 = clamp(_32_m75 - _260, 0.0f, 1000.0f) / max(0.001000000047497451305389404296875f, abs(_639));
    float _664 = dot(normalize(_284), _36_m0.xyz);
    float3 _665 = _32_m80.xyz + lerp(_32_m81, _32_m79, clamp(_642 / _32_m76, 0.0f, 1.0f).xxxx).xyz;
    float _666 = length(_665);
    float _671 = 0.039999999105930328369140625f + (0.980000019073486328125f * clamp(_639, 0.0f, 1.0f));
    float _690 = _666 * (1.0f + abs(_639 / max(0.0500000007450580596923828125f, _36_m0.y)));
    float _695 = 1.7289333343505859375f - (1.7075519561767578125f * _664);
    float _718 = _666 * (1.0f + abs(_639 * 1.39400005340576171875f));
    float3 _734 = (clamp(((_613 + (max(_613 - _32_m9.xxx, 0.0f.xxx) * _32_m10)).xyz * ((1.0f - _32_m12) + (_16_m20.y * _32_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz + ((((_16_m43.xyz * (((1.0f - exp((-_690) * _642)) / _690) * lerp(0.271066606044769287109375f / max((12.56637096405029296875f * _695) * sqrt(_695), 0.001000000047497451305389404296875f), 0.0596831031143665313720703125f * (1.0f + (_664 * _664)), 0.5f))) * _32_m80.xyz) * (_671 * (0.039999999105930328369140625f + (0.980000019073486328125f * (-_36_m0.xyz).y)))) + ((((float3(dot(_16_m108, float4(0.0f, 1.0f, 0.0f, 1.0f)), dot(_16_m109, float4(0.0f, 1.0f, 0.0f, 1.0f)), dot(_16_m110, float4(0.0f, 1.0f, 0.0f, 1.0f))) * _16_m22.x) * ((1.0f - exp((-_718) * _642)) / _718)) * _32_m80.xyz) * (0.71700000762939453125f * _671)))) * exp(_665 * (-_642));
    float _746 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _753 = 1.0f - _32_m0;
    float _755 = (clamp(_589.w * ((_32_m67 != 0.0f) ? (clamp((_265 - _32_m68) / (_32_m69 - _32_m68), 0.0f, 1.0f) * clamp((_265 - _32_m70) / (_32_m71 - _32_m70), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _19_m0[_10]._m1.y)) * (((_19_m0[_10]._m1.x - ((_19_m0[_10]._m1.x >= 0.0f) ? _746 : (-_746))) > 0.0f) ? 1.0f : _753);
    float _765 = 1.0f - _32_m1;
    float2 _807;
    if (clamp((_32_m3 + 1.0f) - _32_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _793 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _793.y = -_793.y;
        _807 = ((sqrt(sqrt(abs(_793 * 0.5f))) * float2(int2(sign(_793)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _807 = 0.0f.xx;
    }
    float4 _808 = float4(_734.x, _734.y, _734.z, 0.0f.xxxx.w);
    _808.w = _755;
    float4 _818 = (_808 * _32_m0) + (float4(_808.xyz * _755, 1.0f) * _753);
    float3 _820 = -_284;
    float _836 = _260 * _16_m46.w;
    float _841 = max(0.00999999977648258209228515625f, _836 + _16_m47.w);
    float3 _855 = exp(_16_m45.xyz * ((-max(0.0f, (_285 * _16_m44.w) - _16_m43.w)) * (((1.0f - exp(-_841)) / _841) * exp(_836 + _16_m48.w))));
    float _858 = dot(_820, _16_m44.xyz);
    float _864 = _16_m45.w * _16_m45.w;
    float _868 = (1.0f + _864) - ((2.0f * _16_m45.w) * _858);
    float3 _1201;
    float _1202;
    if (_16_m55.z > 0.0f)
    {
        uint3 _1026 = (uint3(int3(int(_246.x), int(_246.y), int(_16_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1027 = _1026.y;
        uint _1028 = _1026.z;
        uint _1031 = _1026.x + (_1027 * _1028);
        uint _1033 = _1027 + (_1028 * _1031);
        uint _1035 = _1028 + (_1031 * _1033);
        uint _1037 = _1031 + (_1033 * _1035);
        float _1062 = dot(_820, -_14_m0[2].xyz);
        float3 _1072 = _258 - _14_m11.xyz;
        float _1074 = (_16_m55.w * ((_1062 > 5.9604644775390625e-08f) ? (1.0f / _1062) : 0.0f)) * (1.0f / _285);
        float _1075 = _1072.y;
        float _1076 = _1074 * _1075;
        float _1078 = _14_m11.y + _1076;
        float _1079 = _1075 - _1076;
        float _1081 = (1.0f - _1074) * _285;
        float _1095 = max(-127.0f, _16_m49.z * _1079);
        float _1119 = max(-127.0f, _16_m52.x * _1079);
        float _1130 = ((_16_m49.y * exp2(-max(-127.0f, _16_m49.z * (_1078 - _16_m49.x)))) * ((abs(_1095) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1095)) / _1095) : (0.693147182464599609375f - (0.2402265071868896484375f * _1095)))) + ((_16_m52.y * exp2(-max(-127.0f, _16_m52.x * (_1078 - _16_m52.z)))) * ((abs(_1119) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1119)) / _1119) : (0.693147182464599609375f - (0.2402265071868896484375f * _1119))));
        float _1152 = clamp((_285 * _16_m50.w) + _16_m50.z, 0.0f, 1.0f);
        float _1155 = clamp((max(clamp(exp2(-(_1130 * _1081)), 0.0f, 1.0f), _16_m51.w) + clamp((_285 * _16_m50.y) + _16_m50.x, 0.0f, 1.0f)) + _1152, 0.0f, 1.0f);
        float4 _1195 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _34.SampleLevel(_21, float3((float2(_246) + ((((float3(uint3(_1037, _1033 + (_1035 * _1037), _226) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _16_m59.w).xy) * _16_m57.xy, (log2((_265 * _16_m56.x) + _16_m56.y) * _16_m56.z) / _16_m55.z), 0.0f), clamp((_265 - _16_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1197 = _1195.w;
        _1201 = _1195.xyz + (((_16_m51.xyz * (1.0f - _1155)) + (((_16_m54.xyz * pow(clamp(dot(_284, _16_m53.xyz), 0.0f, 1.0f), _16_m54.w)) * (1.0f - clamp(exp2(-(_1130 * max(_1081 - _16_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1152))) * _1197);
        _1202 = _1197 * _1155;
    }
    else
    {
        float3 _898 = _258 - _14_m11.xyz;
        float _900 = _898.y;
        float _914 = max(-127.0f, _16_m49.z * _900);
        float _938 = max(-127.0f, _16_m52.x * _900);
        float _949 = ((_16_m49.y * exp2(-max(-127.0f, _16_m49.z * (_14_m11.y - _16_m49.x)))) * ((abs(_914) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_914)) / _914) : (0.693147182464599609375f - (0.2402265071868896484375f * _914)))) + ((_16_m52.y * exp2(-max(-127.0f, _16_m52.x * (_14_m11.y - _16_m52.z)))) * ((abs(_938) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_938)) / _938) : (0.693147182464599609375f - (0.2402265071868896484375f * _938))));
        float _971 = clamp((_285 * _16_m50.w) + _16_m50.z, 0.0f, 1.0f);
        float _974 = clamp((max(clamp(exp2(-(_949 * _285)), 0.0f, 1.0f), _16_m51.w) + clamp((_285 * _16_m50.y) + _16_m50.x, 0.0f, 1.0f)) + _971, 0.0f, 1.0f);
        _1201 = (_16_m51.xyz * (1.0f - _974)) + (((_16_m54.xyz * pow(clamp(dot(_284, _16_m53.xyz), 0.0f, 1.0f), _16_m54.w)) * (1.0f - clamp(exp2(-(_949 * max(_285 - _16_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _971));
        _1202 = _974;
    }
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _1201 *= 0.65f.xxx;
        _1202 = (_1202 * 0.65f) + 0.35f;
    }
    float3 _1206 = _818.xyz;
    float _1213 = clamp(_265 / _32_m83, 0.0f, 1.0f);
    bool3 _1223 = (_32_m1 == 2.0f).xxx;
    float _1225 = _818.w;
    float3 _1228 = lerp(_1206, ((_1206 * (_855 * _1202)) + (((((clamp(((_16_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_858 * _858)))) + _16_m48.xyz) + (_16_m47.xyz * ((1.0f - _864) / max((12.56637096405029296875f * _868) * sqrt(_868), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _855)) * _1202) + _1201) * (1.0f - (_32_m1 * _32_m0)))).xyz, (_1213 + (_32_m82 * (1.0f - _1213))).xxx).xyz * _1225;
    float3 _1229 = (1.0f - _1225).xxx + _1228;
    float3 _1230 = float3(_1223.x ? _1229.x : _1228.x, _1223.y ? _1229.y : _1228.y, _1223.z ? _1229.z : _1228.z);
    float4 _1231 = float4(_1230.x, _1230.y, _1230.z, _818.w);
    _1231.w = _1225 * _765;
    float3 _1250 = ((lerp(dot(_1231.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1231.xyz, _16_m76.w.xxx) * _16_m76.xyz) * _32_m11) + (_1231.xyz * (1.0f - _32_m11));
    float2 _1252 = min(_807, 1.0f.xx);
    float4 _1253 = float4(_1252.x, _1252.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1253.z = 1.0f;
    _1253.w = (_32_m2 * _32_m0) * float(clamp(max(dot(_734.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _755, _755 * _765) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _11 = float4(_1250.x, _1250.y, _1250.z, _1231.w);
    _12 = _1253;
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
