// DX11 0x8FEB8406 -> Vulkan 0x8F3B5E8F
struct _17
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

static float3 _176;
static float4 _177;
static uint _178 = 0u;

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(12, 0)]]
cbuffer _12_13 : register(b12)
{
    column_major float4x4 _13_m0 : packoffset(c0);
    column_major float4x4 _13_m1 : packoffset(c4);
    column_major float4x4 _13_m2 : packoffset(c8);
    column_major float4x4 _13_m3 : packoffset(c12);
    column_major float4x4 _13_m4 : packoffset(c16);
    column_major float4x4 _13_m5 : packoffset(c20);
    column_major float4x4 _13_m6 : packoffset(c24);
    column_major float4x4 _13_m7 : packoffset(c28);
    column_major float4x4 _13_m8 : packoffset(c32);
    column_major float4x4 _13_m9 : packoffset(c36);
    column_major float4x4 _13_m10 : packoffset(c40);
    float4 _13_m11 : packoffset(c44);
    column_major float4x4 _13_m12 : packoffset(c45);
    column_major float4x4 _13_m13 : packoffset(c49);
    column_major float4x4 _13_m14 : packoffset(c53);
    column_major float4x4 _13_m15 : packoffset(c57);
    column_major float4x4 _13_m16 : packoffset(c61);
    column_major float4x4 _13_m17 : packoffset(c65);
    column_major float4x4 _13_m18 : packoffset(c69);
    column_major float4x4 _13_m19 : packoffset(c73);
    column_major float4x4 _13_m20 : packoffset(c77);
    float4 _13_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _14_15 : register(b16)
{
    float4 _15_m0 : packoffset(c0);
    float4 _15_m1 : packoffset(c1);
    float4 _15_m2 : packoffset(c2);
    float4 _15_m3 : packoffset(c3);
    float4 _15_m4 : packoffset(c4);
    float4 _15_m5 : packoffset(c5);
    float4 _15_m6[6] : packoffset(c6);
    float4 _15_m7[6] : packoffset(c12);
    float4 _15_m8 : packoffset(c18);
    float4 _15_m9 : packoffset(c19);
    float4 _15_m10 : packoffset(c20);
    float4 _15_m11 : packoffset(c21);
    float4 _15_m12 : packoffset(c22);
    float4 _15_m13 : packoffset(c23);
    float4 _15_m14 : packoffset(c24);
    float4 _15_m15 : packoffset(c25);
    float _15_m16 : packoffset(c26);
    float _15_m17 : packoffset(c26.y);
    float _15_m18 : packoffset(c26.z);
    uint _15_m19 : packoffset(c26.w);
    float4 _15_m20 : packoffset(c27);
    int4 _15_m21 : packoffset(c28);
    float4 _15_m22 : packoffset(c29);
    float4 _15_m23 : packoffset(c30);
    float4 _15_m24 : packoffset(c31);
    float4 _15_m25 : packoffset(c32);
    float4 _15_m26 : packoffset(c33);
    float4 _15_m27 : packoffset(c34);
    float4 _15_m28 : packoffset(c35);
    float4 _15_m29 : packoffset(c36);
    float4 _15_m30 : packoffset(c37);
    float4 _15_m31 : packoffset(c38);
    float4 _15_m32[4] : packoffset(c39);
    float4 _15_m33[4] : packoffset(c43);
    float4 _15_m34[4] : packoffset(c47);
    float4 _15_m35[4] : packoffset(c51);
    float4 _15_m36 : packoffset(c55);
    float4 _15_m37 : packoffset(c56);
    float4 _15_m38[4] : packoffset(c57);
    float4 _15_m39[4] : packoffset(c61);
    float4 _15_m40[4] : packoffset(c65);
    float4 _15_m41 : packoffset(c69);
    float4 _15_m42 : packoffset(c70);
    float4 _15_m43 : packoffset(c71);
    float4 _15_m44 : packoffset(c72);
    float4 _15_m45 : packoffset(c73);
    float4 _15_m46 : packoffset(c74);
    float4 _15_m47 : packoffset(c75);
    float4 _15_m48 : packoffset(c76);
    float4 _15_m49 : packoffset(c77);
    float4 _15_m50 : packoffset(c78);
    float4 _15_m51 : packoffset(c79);
    float4 _15_m52 : packoffset(c80);
    float4 _15_m53 : packoffset(c81);
    float4 _15_m54 : packoffset(c82);
    float4 _15_m55 : packoffset(c83);
    float4 _15_m56 : packoffset(c84);
    float4 _15_m57 : packoffset(c85);
    float4 _15_m58 : packoffset(c86);
    float4 _15_m59 : packoffset(c87);
    float4 _15_m60 : packoffset(c88);
    float4 _15_m61 : packoffset(c89);
    float4 _15_m62 : packoffset(c90);
    float4 _15_m63 : packoffset(c91);
    float4 _15_m64 : packoffset(c92);
    float4 _15_m65 : packoffset(c93);
    float4 _15_m66 : packoffset(c94);
    float4 _15_m67 : packoffset(c95);
    float4 _15_m68 : packoffset(c96);
    float4 _15_m69 : packoffset(c97);
    float4 _15_m70 : packoffset(c98);
    float4 _15_m71 : packoffset(c99);
    float4 _15_m72 : packoffset(c100);
    float4 _15_m73 : packoffset(c101);
    float4 _15_m74 : packoffset(c102);
    float4 _15_m75 : packoffset(c103);
    float4 _15_m76 : packoffset(c104);
    float4 _15_m77 : packoffset(c105);
    float4 _15_m78 : packoffset(c106);
    float4 _15_m79 : packoffset(c107);
    float4 _15_m80 : packoffset(c108);
    float4 _15_m81 : packoffset(c109);
    float4 _15_m82 : packoffset(c110);
    float4 _15_m83 : packoffset(c111);
    float4 _15_m84 : packoffset(c112);
    float4 _15_m85 : packoffset(c113);
    float4 _15_m86 : packoffset(c114);
    float4 _15_m87 : packoffset(c115);
    float4 _15_m88 : packoffset(c116);
    float4 _15_m89 : packoffset(c117);
    float4 _15_m90 : packoffset(c118);
    float4 _15_m91 : packoffset(c119);
    float4 _15_m92 : packoffset(c120);
    float4 _15_m93 : packoffset(c121);
    float4 _15_m94 : packoffset(c122);
    float4 _15_m95 : packoffset(c123);
    float4 _15_m96 : packoffset(c124);
    float4 _15_m97 : packoffset(c125);
    float4 _15_m98 : packoffset(c126);
    float4 _15_m99[2] : packoffset(c127);
    float4 _15_m100[2] : packoffset(c129);
    float _15_m101 : packoffset(c131);
    float _15_m102 : packoffset(c131.y);
    float _15_m103 : packoffset(c131.z);
    float _15_m104 : packoffset(c131.w);
    float4 _15_m105 : packoffset(c132);
    float4 _15_m106 : packoffset(c133);
    float4 _15_m107 : packoffset(c134);
    float4 _15_m108 : packoffset(c135);
    float4 _15_m109 : packoffset(c136);
    float4 _15_m110 : packoffset(c137);
    float4 _15_m111 : packoffset(c138);
    float4 _15_m112 : packoffset(c139);
    float4 _15_m113 : packoffset(c140);
    float4 _15_m114 : packoffset(c141);
    float4 _15_m115 : packoffset(c142);
    float4 _15_m116 : packoffset(c143);
    float4 _15_m117 : packoffset(c144);
    float4 _15_m118 : packoffset(c145);
    float4 _15_m119 : packoffset(c146);
    float4 _15_m120 : packoffset(c147);
    float4 _15_m121 : packoffset(c148);
    float4 _15_m122 : packoffset(c149);
    float4 _15_m123 : packoffset(c150);
    float4 _15_m124 : packoffset(c151);
    float4 _15_m125 : packoffset(c152);
    float4 _15_m126 : packoffset(c153);
    float4 _15_m127 : packoffset(c154);
    float4 _15_m128 : packoffset(c155);
    float4 _15_m129 : packoffset(c156);
    float4 _15_m130 : packoffset(c157);
    float4 _15_m131 : packoffset(c158);
    float4 _15_m132 : packoffset(c159);
    float4 _15_m133 : packoffset(c160);
    float4 _15_m134 : packoffset(c161);
    column_major float4x4 _15_m135 : packoffset(c162);
    float4 _15_m136 : packoffset(c166);
    float4 _15_m137 : packoffset(c167);
    float4 _15_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _16_18 : register(b0)
{
    _17 _18_m0[256] : packoffset(c0);
};

[[vk::binding(0, 3)]]
cbuffer _24_25 : register(b0)
{
    float4 _25_m0 : packoffset(c0);
};

[[vk::binding(2, 1)]]
cbuffer _28_29 : register(b2)
{
    float _29_m0 : packoffset(c0);
    float _29_m1 : packoffset(c0.y);
    float _29_m2 : packoffset(c0.z);
    float _29_m3 : packoffset(c0.w);
    float _29_m4 : packoffset(c1);
    float _29_m5 : packoffset(c1.y);
    float _29_m6 : packoffset(c1.z);
    float _29_m7 : packoffset(c1.w);
    float _29_m8 : packoffset(c2);
    float _29_m9 : packoffset(c2.y);
    float _29_m10 : packoffset(c2.z);
    float _29_m11 : packoffset(c2.w);
    float _29_m12 : packoffset(c3);
    float _29_m13 : packoffset(c3.y);
    float _29_m14 : packoffset(c3.z);
    float _29_m15 : packoffset(c3.w);
    float4 _29_m16 : packoffset(c4);
    float _29_m17 : packoffset(c5);
    float _29_m18 : packoffset(c5.y);
    float _29_m19 : packoffset(c5.z);
    float _29_m20 : packoffset(c5.w);
    float4 _29_m21 : packoffset(c6);
    float4 _29_m22 : packoffset(c7);
    float4 _29_m23 : packoffset(c8);
    float4 _29_m24 : packoffset(c9);
    float4 _29_m25 : packoffset(c10);
    float _29_m26 : packoffset(c11);
    float _29_m27 : packoffset(c11.y);
    float _29_m28 : packoffset(c11.z);
    float _29_m29 : packoffset(c11.w);
    float _29_m30 : packoffset(c12);
    float _29_m31 : packoffset(c12.y);
    float _29_m32 : packoffset(c12.z);
    float _29_m33 : packoffset(c12.w);
    float _29_m34 : packoffset(c13);
    float _29_m35 : packoffset(c13.y);
    float _29_m36 : packoffset(c13.z);
    float _29_m37 : packoffset(c13.w);
    float _29_m38 : packoffset(c14);
    float _29_m39 : packoffset(c14.y);
    float _29_m40 : packoffset(c14.z);
    float _29_m41 : packoffset(c14.w);
    float _29_m42 : packoffset(c15);
    float _29_m43 : packoffset(c15.y);
    float _29_m44 : packoffset(c15.z);
    float _29_m45 : packoffset(c15.w);
    float4 _29_m46 : packoffset(c16);
    float4 _29_m47 : packoffset(c17);
    float4 _29_m48 : packoffset(c18);
    float _29_m49 : packoffset(c19);
    float _29_m50 : packoffset(c19.y);
    float _29_m51 : packoffset(c19.z);
    float _29_m52 : packoffset(c19.w);
    float _29_m53 : packoffset(c20);
    float _29_m54 : packoffset(c20.y);
    float _29_m55 : packoffset(c20.z);
    float _29_m56 : packoffset(c20.w);
    float _29_m57 : packoffset(c21);
    float _29_m58 : packoffset(c21.y);
    float _29_m59 : packoffset(c21.z);
    float _29_m60 : packoffset(c21.w);
    float _29_m61 : packoffset(c22);
    float _29_m62 : packoffset(c22.y);
    float _29_m63 : packoffset(c22.z);
    float _29_m64 : packoffset(c22.w);
    float _29_m65 : packoffset(c23);
    float _29_m66 : packoffset(c23.y);
    float _29_m67 : packoffset(c23.z);
    float _29_m68 : packoffset(c23.w);
    float _29_m69 : packoffset(c24);
    float _29_m70 : packoffset(c24.y);
    float _29_m71 : packoffset(c24.z);
    float _29_m72 : packoffset(c24.w);
    float _29_m73 : packoffset(c25);
    float4 _29_m74 : packoffset(c26);
    float4 _29_m75 : packoffset(c27);
    float4 _29_m76 : packoffset(c28);
    float4 _29_m77 : packoffset(c29);
    float4 _29_m78 : packoffset(c30);
    float4 _29_m79 : packoffset(c31);
    float4 _29_m80 : packoffset(c32);
    float4 _29_m81 : packoffset(c33);
};

[[vk::binding(3, 0)]] SamplerState _20 : register(s3);
[[vk::binding(6, 0)]] SamplerState _21 : register(s6);
[[vk::binding(44, 0)]] Texture2D<float4> _23 : register(t44);
[[vk::binding(4, 1)]] Texture2D<float4> _26 : register(t4);
[[vk::binding(3, 1)]] SamplerState _27 : register(s3);
[[vk::binding(34, 0)]] Texture3D<float4> _31 : register(t34);

static float4 gl_FragCoord;
static float4 _4;
static float3 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static uint _9;
static float4 _10;
static float4 _11;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(4)]] float4 _6 : TEXCOORD4;
    [[vk::location(5)]] float3 _7 : TEXCOORD5;
    [[vk::location(6)]] float3 _8 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _9 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 _10 : SV_Target0;
    float4 _11 : SV_Target1;
};

void frag_main()
{
    float2 _196 = gl_FragCoord.xy * _15_m0.zw;
    uint2 _197 = uint2(gl_FragCoord.xy);
    float2 _199 = (_196 * 2.0f) - 1.0f.xx;
    float4 _202 = float4(_199, gl_FragCoord.z, 1.0f);
    _202.y = -_199.y;
    float4 _205 = mul(_13_m6, _202);
    float3 _209 = _205.xyz / _205.w.xxx;
    float _216 = abs(mul(_13_m0, float4(_209, 1.0f)).z);
    float3 _232;
    do
    {
        if (_15_m4.w == 0.0f)
        {
            _232 = _13_m11.xyz - _209;
            break;
        }
        else
        {
            _232 = _13_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _233 = dot(_232, _232);
    float _235 = rsqrt(max(_233, 9.9999999392252902907785028219223e-09f));
    float3 _236 = _232 * _235;
    float _237 = _233 * _235;
    bool4 _246 = (_29_m5 != 0.0f).xxxx;
    float4 _248 = _29_m16 * float4(_246.x ? 1.0f.xxxx.x : _6.x, _246.y ? 1.0f.xxxx.y : _6.y, _246.z ? 1.0f.xxxx.z : _6.z, _246.w ? 1.0f.xxxx.w : _6.w);
    float3 _252 = _248.xyz * _29_m6;
    float4 _253 = float4(_252.x, _252.y, _252.z, _248.w);
    _253.w = _248.w * _29_m7;
    float4 _278 = _26.SampleBias(_27, _4.xy, float(int(_29_m19)) + _15_m16);
    float4 _284 = (_253 * lerp(_278, float4(1.0f, 1.0f, 1.0f, _278.x), _29_m18.xxxx)) * (1.0f - _29_m56).xxxx;
    float _289 = _29_m68 * _29_m72;
    bool4 _296 = (_29_m58 != 0.0f).xxxx;
    float _309 = -lerp(-1.0f, ((_29_m70 + _4.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (1.0f - _289) + ((1.0f - _29_m55) * _289));
    float _311 = clamp(_309 * _29_m69, 0.0f, 1.0f);
    float _314 = clamp((_29_m71 - _309) * _29_m69, 0.0f, 1.0f);
    float4 _321;
    _321.w = _284.w * lerp(_311, _311, _29_m75.w);
    float3 _325 = lerp(_284.xyz, (_29_m75.xyz * _314) * _29_m6, _314.xxx);
    float4 _326 = float4(_325.x, _325.y, _325.z, _321.w);
    float4 _327 = float4(_296.x ? _326.x : _284.x, _296.y ? _326.y : _284.y, _296.z ? _326.z : _284.z, _296.w ? _326.w : _284.w);
    float _342 = pow(clamp(dot(_236, (_5 * 1.0f).xyz) + _29_m26, 0.0f, 1.0f), _29_m28);
    float _344 = lerp(1.0f - _342, _342, _29_m29);
    float2 _362 = float2(_197);
    float2 _365 = ((_362 * _15_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _368 = float4(_365, _23.SampleLevel(_20, _196, 0.0f).x, 1.0f);
    _368.y = -_365.y;
    float4 _371 = mul(_13_m6, _368);
    float3 _414 = lerp(_327.xyz, _25_m0.xyz, (_25_m0.w * _344).xxx).xyz;
    float3 _434 = clamp(((_414 + (max(_414 - _29_m9.xxx, 0.0f.xxx) * _29_m10)).xyz * ((1.0f - _29_m12) + (_15_m20.y * _29_m12))).xyz, 0.0f.xxx, 1000.0f.xxx);
    float _447 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
    float _454 = 1.0f - _29_m0;
    float _456 = (clamp(((clamp(_327.w, 0.0f, 1.0f) * ((1.0f - _29_m27) + (_344 * _29_m27))) * clamp(((abs(mul(_13_m0, float4(_371.xyz / _371.w.xxx, 1.0f)).z) - _216) + _29_m31) / _29_m30, 0.0f, 1.0f)) * ((_29_m34 != 0.0f) ? (clamp((_216 - _29_m35) / (_29_m36 - _29_m35), 0.0f, 1.0f) * clamp((_216 - _29_m37) / (_29_m38 - _29_m37), 0.0f, 1.0f)) : 1.0f), 0.0f, 1.0f) * (1.0f - _18_m0[_9]._m1.y)) * (((_18_m0[_9]._m1.x - ((_18_m0[_9]._m1.x >= 0.0f) ? _447 : (-_447))) > 0.0f) ? 1.0f : _454);
    float _466 = 1.0f - _29_m1;
    float2 _508;
    if (clamp((_29_m3 + 1.0f) - _29_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _494 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
        _494.y = -_494.y;
        _508 = ((sqrt(sqrt(abs(_494 * 0.5f))) * float2(int2(sign(_494)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _508 = 0.0f.xx;
    }
    float4 _509 = float4(_434.x, _434.y, _434.z, 0.0f.xxxx.w);
    _509.w = _456;
    float4 _519 = (_509 * _29_m0) + (float4(_509.xyz * _456, 1.0f) * _454);
    float3 _521 = -_236;
    float _537 = _209.y * _15_m46.w;
    float _542 = max(0.00999999977648258209228515625f, _537 + _15_m47.w);
    float3 _556 = exp(_15_m45.xyz * ((-max(0.0f, (_237 * _15_m44.w) - _15_m43.w)) * (((1.0f - exp(-_542)) / _542) * exp(_537 + _15_m48.w))));
    float _559 = dot(_521, _15_m44.xyz);
    float _565 = _15_m45.w * _15_m45.w;
    float _569 = (1.0f + _565) - ((2.0f * _15_m45.w) * _559);
    float3 _901;
    float _902;
    if (_15_m55.z > 0.0f)
    {
        uint3 _727 = (uint3(int3(int(_197.x), int(_197.y), int(_15_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _728 = _727.y;
        uint _729 = _727.z;
        uint _732 = _727.x + (_728 * _729);
        uint _734 = _728 + (_729 * _732);
        uint _736 = _729 + (_732 * _734);
        uint _738 = _732 + (_734 * _736);
        float _762 = dot(_521, -_13_m0[2].xyz);
        float3 _772 = _209 - _13_m11.xyz;
        float _774 = (_15_m55.w * ((_762 > 5.9604644775390625e-08f) ? (1.0f / _762) : 0.0f)) * (1.0f / _237);
        float _775 = _772.y;
        float _776 = _774 * _775;
        float _778 = _13_m11.y + _776;
        float _779 = _775 - _776;
        float _781 = (1.0f - _774) * _237;
        float _795 = max(-127.0f, _15_m49.z * _779);
        float _819 = max(-127.0f, _15_m52.x * _779);
        float _830 = ((_15_m49.y * exp2(-max(-127.0f, _15_m49.z * (_778 - _15_m49.x)))) * ((abs(_795) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_795)) / _795) : (0.693147182464599609375f - (0.2402265071868896484375f * _795)))) + ((_15_m52.y * exp2(-max(-127.0f, _15_m52.x * (_778 - _15_m52.z)))) * ((abs(_819) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_819)) / _819) : (0.693147182464599609375f - (0.2402265071868896484375f * _819))));
        float _852 = clamp((_237 * _15_m50.w) + _15_m50.z, 0.0f, 1.0f);
        float _855 = clamp((max(clamp(exp2(-(_830 * _781)), 0.0f, 1.0f), _15_m51.w) + clamp((_237 * _15_m50.y) + _15_m50.x, 0.0f, 1.0f)) + _852, 0.0f, 1.0f);
        float4 _895 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _31.SampleLevel(_21, float3((_362 + ((((float3(uint3(_738, _734 + (_736 * _738), _178) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _15_m59.w).xy) * _15_m57.xy, (log2((_216 * _15_m56.x) + _15_m56.y) * _15_m56.z) / _15_m55.z), 0.0f), clamp((_216 - _15_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _897 = _895.w;
        _901 = _895.xyz + (((_15_m51.xyz * (1.0f - _855)) + (((_15_m54.xyz * pow(clamp(dot(_236, _15_m53.xyz), 0.0f, 1.0f), _15_m54.w)) * (1.0f - clamp(exp2(-(_830 * max(_781 - _15_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _852))) * _897);
        _902 = _897 * _855;
    }
    else
    {
        float3 _599 = _209 - _13_m11.xyz;
        float _601 = _599.y;
        float _615 = max(-127.0f, _15_m49.z * _601);
        float _639 = max(-127.0f, _15_m52.x * _601);
        float _650 = ((_15_m49.y * exp2(-max(-127.0f, _15_m49.z * (_13_m11.y - _15_m49.x)))) * ((abs(_615) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_615)) / _615) : (0.693147182464599609375f - (0.2402265071868896484375f * _615)))) + ((_15_m52.y * exp2(-max(-127.0f, _15_m52.x * (_13_m11.y - _15_m52.z)))) * ((abs(_639) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_639)) / _639) : (0.693147182464599609375f - (0.2402265071868896484375f * _639))));
        float _672 = clamp((_237 * _15_m50.w) + _15_m50.z, 0.0f, 1.0f);
        float _675 = clamp((max(clamp(exp2(-(_650 * _237)), 0.0f, 1.0f), _15_m51.w) + clamp((_237 * _15_m50.y) + _15_m50.x, 0.0f, 1.0f)) + _672, 0.0f, 1.0f);
        _901 = (_15_m51.xyz * (1.0f - _675)) + (((_15_m54.xyz * pow(clamp(dot(_236, _15_m53.xyz), 0.0f, 1.0f), _15_m54.w)) * (1.0f - clamp(exp2(-(_650 * max(_237 - _15_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _672));
        _902 = _675;
    }
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _901 *= 0.65f.xxx;
        _902 = (_902 * 0.65f) + 0.35f;
    }
    float3 _906 = _519.xyz;
    float _913 = clamp(_216 / _29_m50, 0.0f, 1.0f);
    bool3 _923 = (_29_m1 == 2.0f).xxx;
    float _925 = _519.w;
    float3 _928 = lerp(_906, ((_906 * (_556 * _902)) + (((((clamp(((_15_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_559 * _559)))) + _15_m48.xyz) + (_15_m47.xyz * ((1.0f - _565) / max((12.56637096405029296875f * _569) * sqrt(_569), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _556)) * _902) + _901) * (1.0f - (_29_m1 * _29_m0)))).xyz, (_913 + (_29_m49 * (1.0f - _913))).xxx).xyz * _925;
    float3 _929 = (1.0f - _925).xxx + _928;
    float3 _930 = float3(_923.x ? _929.x : _928.x, _923.y ? _929.y : _928.y, _923.z ? _929.z : _928.z);
    float4 _931 = float4(_930.x, _930.y, _930.z, _519.w);
    _931.w = _925 * _466;
    float3 _950 = ((lerp(dot(_931.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _931.xyz, _15_m76.w.xxx) * _15_m76.xyz) * _29_m11) + (_931.xyz * (1.0f - _29_m11));
    float2 _952 = min(_508, 1.0f.xx);
    float4 _953 = float4(_952.x, _952.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _953.z = 1.0f;
    _953.w = (_29_m2 * _29_m0) * float(clamp(max(dot(_434.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _456, _456 * _466) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_950.x, _950.y, _950.z, _931.w);
    _11 = _953;
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
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._10 = _10;
    stage_output._11 = _11;
    return stage_output;
}
