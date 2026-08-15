// DX11 0xEB195F90 -> Vulkan 0x4702C983
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

static float _196 = 0.0f;
static uint _198 = 0u;

#include "./renodx_injection.hlsli"

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

[[vk::binding(10, 1)]]
cbuffer _34_35 : register(b10)
{
    float _35_m0 : packoffset(c0);
    float _35_m1 : packoffset(c0.y);
    float _35_m2 : packoffset(c0.z);
    float _35_m3 : packoffset(c0.w);
    float _35_m4 : packoffset(c1);
    float _35_m5 : packoffset(c1.y);
    float _35_m6 : packoffset(c1.z);
    float _35_m7 : packoffset(c1.w);
    float4 _35_m8 : packoffset(c2);
    float4 _35_m9 : packoffset(c3);
    float _35_m10 : packoffset(c4);
    float _35_m11 : packoffset(c4.y);
    float _35_m12 : packoffset(c4.z);
    float _35_m13 : packoffset(c4.w);
    float _35_m14 : packoffset(c5);
    float _35_m15 : packoffset(c5.y);
    float _35_m16 : packoffset(c5.z);
    float _35_m17 : packoffset(c5.w);
    float _35_m18 : packoffset(c6);
    float _35_m19 : packoffset(c6.y);
    float _35_m20 : packoffset(c6.z);
    float _35_m21 : packoffset(c6.w);
    float4 _35_m22 : packoffset(c7);
    float4 _35_m23 : packoffset(c8);
    float4 _35_m24 : packoffset(c9);
    float4 _35_m25 : packoffset(c10);
    float _35_m26 : packoffset(c11);
    float _35_m27 : packoffset(c11.y);
    float _35_m28 : packoffset(c11.z);
    float _35_m29 : packoffset(c11.w);
    float _35_m30 : packoffset(c12);
    float _35_m31 : packoffset(c12.y);
    float _35_m32 : packoffset(c12.z);
    float _35_m33 : packoffset(c12.w);
    float4 _35_m34 : packoffset(c13);
    float4 _35_m35 : packoffset(c14);
    float4 _35_m36 : packoffset(c15);
    float _35_m37 : packoffset(c16);
    float _35_m38 : packoffset(c16.y);
    float _35_m39 : packoffset(c16.z);
    float _35_m40 : packoffset(c16.w);
    float4 _35_m41 : packoffset(c17);
    float _35_m42 : packoffset(c18);
    float _35_m43 : packoffset(c18.y);
    float _35_m44 : packoffset(c18.z);
    float _35_m45 : packoffset(c18.w);
    float _35_m46 : packoffset(c19);
    float _35_m47 : packoffset(c19.y);
    float _35_m48 : packoffset(c19.z);
    float _35_m49 : packoffset(c19.w);
    float _35_m50 : packoffset(c20);
    float _35_m51 : packoffset(c20.y);
    float _35_m52 : packoffset(c20.z);
    float _35_m53 : packoffset(c20.w);
    float _35_m54 : packoffset(c21);
    float _35_m55 : packoffset(c21.y);
    float _35_m56 : packoffset(c21.z);
    float _35_m57 : packoffset(c21.w);
    float _35_m58 : packoffset(c22);
    float _35_m59 : packoffset(c22.y);
    float _35_m60 : packoffset(c22.z);
    float _35_m61 : packoffset(c22.w);
    float _35_m62 : packoffset(c23);
    float _35_m63 : packoffset(c23.y);
    float _35_m64 : packoffset(c23.z);
    float _35_m65 : packoffset(c23.w);
    float _35_m66 : packoffset(c24);
    float _35_m67 : packoffset(c24.y);
    float _35_m68 : packoffset(c24.z);
    float _35_m69 : packoffset(c24.w);
    float4 _35_m70 : packoffset(c25);
    float4 _35_m71 : packoffset(c26);
    float4 _35_m72 : packoffset(c27);
    float4 _35_m73 : packoffset(c28);
};

[[vk::binding(3, 0)]] SamplerState _20 : register(s3);
[[vk::binding(6, 0)]] SamplerState _21 : register(s6);
[[vk::binding(45, 0)]] Texture2D<float4> _23 : register(t45);
[[vk::binding(7, 1)]] Texture2D<float4> _24 : register(t7);
[[vk::binding(2, 1)]] SamplerState _25 : register(s2);
[[vk::binding(6, 1)]] Texture2D<float4> _26 : register(t6);
[[vk::binding(1, 1)]] SamplerState _27 : register(s1);
[[vk::binding(8, 1)]] Texture2D<float4> _28 : register(t8);
[[vk::binding(3, 1)]] SamplerState _29 : register(s3);
[[vk::binding(5, 1)]] Texture2D<float4> _30 : register(t5);
[[vk::binding(0, 1)]] SamplerState _31 : register(s0);
[[vk::binding(9, 1)]] Texture2D<float4> _32 : register(t9);
[[vk::binding(4, 1)]] SamplerState _33 : register(s4);
[[vk::binding(35, 0)]] Texture3D<float4> _37 : register(t35);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float4 _7;
static float4 _8;
static uint _9;
static float4 _10;
static float4 _11;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(3)]] float4 _7 : TEXCOORD3;
    [[vk::location(6)]] float4 _8 : TEXCOORD6;
    [[vk::location(9)]] nointerpolation uint _9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 _10 : SV_Target0;
    float4 _11 : SV_Target1;
};

void frag_main()
{
    bool _231;
    float2 _213 = gl_FragCoord.xy * _15_m0.zw;
    float2 _216 = (_213 * 2.0f) - 1.0f.xx;
    float4 _219 = float4(_216, gl_FragCoord.z, 1.0f);
    _219.y = -_216.y;
    float4 _222 = mul(_13_m6, _219);
    float3 _243;
    do
    {
        _231 = _15_m4.w == 0.0f;
        if (_231)
        {
            _243 = _13_m11.xyz - (_222.xyz / _222.w.xxx);
            break;
        }
        else
        {
            _243 = _13_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _244 = dot(_243, _243);
    float _247 = _244 * rsqrt(max(_244, 9.9999999392252902907785028219223e-09f));
    float2 _262 = float2(uint2(gl_FragCoord.xy));
    uint2 _266 = uint2(_262);
    float2 _268 = ((_262 * _15_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _271 = float4(_268, _23.SampleLevel(_20, _213, 0.0f).x, 1.0f);
    _271.y = -_268.y;
    float4 _274 = mul(_13_m6, _271);
    float3 _278 = _274.xyz / _274.w.xxx;
    float _285 = abs(mul(_13_m0, float4(_278, 1.0f)).z);
    float3 _297;
    do
    {
        if (_231)
        {
            _297 = _13_m11.xyz - _278;
            break;
        }
        else
        {
            _297 = _13_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _298 = normalize(_297);
    float3 _306 = _278 - float3(_4.w, _5.w, _6.w);
    float _314 = dot(_4.xyz, _306);
    float _316 = dot(_5.xyz, _306);
    float _318 = dot(_6.xyz, _306);
    float3 _319 = float3(_314, _316, _318);
    float4 _322 = _35_m71 * _8;
    _322.w = _322.w * (_35_m44 * (1.0f - _18_m0[_9]._m1.y));
    float2 _332 = _319.xz;
    float2 _333 = _332 + 0.5f.xx;
    float2 _334 = float2(_266);
    float2 _338 = _334 / _15_m5.xy;
    float2 _347 = float2(_338.x, (_338.y / _15_m5.x) * _15_m5.y);
    float _350 = _314 / _318;
    float _351 = abs(_350);
    bool _352 = _351 < 1.0f;
    float _354 = _352 ? _351 : (1.0f / _351);
    float _355 = _354 * _354;
    float _360 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _355)) * _355)) * _354;
    float _362 = _352 ? _360 : (1.57079637050628662109375f - _360);
    float2 _374 = float2(((((_350 < 0.0f) ? (-_362) : _362) + (((_314 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_318 < 0.0f))) - (-3.1415927410125732421875f)) * 0.15915493667125701904296875f, length(_332) * 2.0f);
    bool2 _378 = (_35_m37 == 1.0f).xx;
    bool2 _380 = (_35_m37 == 2.0f).xx;
    float2 _381 = float2(_380.x ? _374.x : _333.x, _380.y ? _374.y : _333.y);
    float _400 = (1.0f - _35_m39) + (_30.SampleBias(_31, (float2(_378.x ? _347.x : _381.x, _378.y ? _347.y : _381.y) * _35_m41.xy) + _35_m41.zw, _15_m16).x * _35_m39);
    bool2 _404 = (_35_m16 == 1.0f).xx;
    bool2 _406 = (_35_m16 == 2.0f).xx;
    float2 _407 = float2(_406.x ? _374.x : _333.x, _406.y ? _374.y : _333.y);
    float _446 = (_28.SampleBias(_29, float4(((float2(_404.x ? _347.x : _407.x, _404.y ? _347.y : _407.y) + ((_35_m22.xy * _15_m75.w) + (_35_m22.zw * _7.y))) * _35_m24.xy) + _35_m24.zw, _196, _196).xy, _15_m16).x * (_35_m11 + 1.0f)) - _35_m11;
    float2 _449 = float2(_446 * _35_m12, _446 * _35_m13);
    float2 _451 = float2(_449.x, _449.y) * ((_35_m18 != 0.0f) ? _400 : 1.0f);
    bool2 _455 = (_35_m56 == 1.0f).xx;
    bool2 _457 = (_35_m56 == 2.0f).xx;
    float2 _458 = float2(_457.x ? _374.x : _333.x, _457.y ? _374.y : _333.y);
    float _472 = radians(_35_m43);
    float _473 = cos(_472);
    float _474 = sin(_472);
    float4 _495 = _24.SampleBias(_25, (((mul(((float2(_455.x ? _347.x : _458.x, _455.y ? _347.y : _458.y) + (_35_m72.xy * _15_m75.w)) + (_35_m72.zw * _7.x)) - 0.5f.xx, float2x2(float2(_473, -_474), float2(_474, _473))) + 0.5f.xx) * _35_m73.xy) + _35_m73.zw) + (_451 * _35_m55), _15_m16);
    bool2 _504 = (_35_m3 == 1.0f).xx;
    bool2 _506 = (_35_m3 == 2.0f).xx;
    float2 _507 = float2(_506.x ? _374.x : _333.x, _506.y ? _374.y : _333.y);
    float _521 = radians(_35_m1);
    float _522 = cos(_521);
    float _523 = sin(_521);
    float4 _544 = _26.SampleBias(_27, (((mul(((float2(_504.x ? _347.x : _507.x, _504.y ? _347.y : _507.y) + (_35_m8.xy * _15_m75.w)) + (_35_m8.zw * _7.y)) - 0.5f.xx, float2x2(float2(_522, -_523), float2(_523, _522))) + 0.5f.xx) * _35_m9.xy) + _35_m9.zw) + (_451 * _35_m2), _15_m16);
    float4 _549 = (_322 * lerp(_495, float4(1.0f, 1.0f, 1.0f, _495.x), _35_m42.xxxx)) * lerp(_544, float4(1.0f, 1.0f, 1.0f, _544.x), _35_m0.xxxx);
    bool2 _553 = (_35_m31 == 1.0f).xx;
    bool2 _555 = (_35_m31 == 2.0f).xx;
    float2 _556 = float2(_555.x ? _374.x : _333.x, _555.y ? _374.y : _333.y);
    float _570 = radians(_35_m30);
    float _571 = cos(_570);
    float _572 = sin(_570);
    float _611 = _32.SampleBias(_33, (((mul(((float2(_553.x ? _347.x : _556.x, _553.y ? _347.y : _556.y) + (_35_m35.xy * _15_m75.w)) + (_35_m35.zw * _7.y)) - 0.5f.xx, float2x2(float2(_571, -_572), float2(_572, _571))) + 0.5f.xx) * _35_m36.xy) + _35_m36.zw) + (_451 * _35_m26), _15_m16).x - lerp(-1.0f, ((_35_m28 + _7.z) * 2.019999980926513671875f) - 1.0099999904632568359375f, (_35_m33 != 0.0f) ? _400 : 1.0f);
    float _613 = clamp(_611 * _35_m27, 0.0f, 1.0f);
    float _616 = clamp((_35_m29 - _611) * _35_m27, 0.0f, 1.0f);
    float _665 = 0.5f - _35_m50;
    float _668 = 0.5f - _35_m51;
    float _678 = ((((_549.w * lerp(_613, _613, _35_m34.w)) * ((_35_m62 != 0.0f) ? (clamp((_285 - _35_m63) / (_35_m64 - _35_m63), 0.0f, 1.0f) * clamp((_285 - _35_m65) / (_35_m66 - _35_m65), 0.0f, 1.0f)) : 1.0f)) * clamp((((0.5f + abs(_35_m54)) - abs(_316 + _35_m54)) / max(_35_m52, 0.001000000047497451305389404296875f)) * 2.0f, 0.0f, 1.0f)) * smoothstep(_665 + _35_m53, _665, abs(_314))) * smoothstep(_668 + _35_m53, _668, abs(_318));
    float3 _679 = lerp(_549.xyz, (_35_m34.xyz * _616) * _35_m71.x, _616.xxx).xyz;
    float _689 = clamp(_678, 0.0f, 1.0f) * float(int(all(bool3(_319.x > (-0.5f).xxx.x, _319.y > (-0.5f).xxx.y, _319.z > (-0.5f).xxx.z)) && all(bool3(_319.x < 0.5f.xxx.x, _319.y < 0.5f.xxx.y, _319.z < 0.5f.xxx.z))));
    float3 _698 = (clamp(_679, 0.0f.xxx, 1000.0f.xxx) * ((1.0f - _35_m49) + (_15_m20.y * _35_m49))) * _689;
    float4 _712 = float4(_698.x, _698.y, _698.z, 0.0f.xxxx.w);
    _712.w = _689;
    float3 _716 = -_298;
    float _732 = _278.y * _15_m46.w;
    float _737 = max(0.00999999977648258209228515625f, _732 + _15_m47.w);
    float3 _751 = exp(_15_m45.xyz * ((-max(0.0f, (_247 * _15_m44.w) - _15_m43.w)) * (((1.0f - exp(-_737)) / _737) * exp(_732 + _15_m48.w))));
    float _754 = dot(_716, _15_m44.xyz);
    float _760 = _15_m45.w * _15_m45.w;
    float _764 = (1.0f + _760) - ((2.0f * _15_m45.w) * _754);
    float3 _1096;
    float _1097;
    if (_15_m55.z > 0.0f)
    {
        uint3 _922 = (uint3(int3(int(_266.x), int(_266.y), int(_15_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _923 = _922.y;
        uint _924 = _922.z;
        uint _927 = _922.x + (_923 * _924);
        uint _929 = _923 + (_924 * _927);
        uint _931 = _924 + (_927 * _929);
        uint _933 = _927 + (_929 * _931);
        float _957 = dot(_716, -_13_m0[2].xyz);
        float3 _967 = _278 - _13_m11.xyz;
        float _969 = (_15_m55.w * ((_957 > 5.9604644775390625e-08f) ? (1.0f / _957) : 0.0f)) * (1.0f / _247);
        float _970 = _967.y;
        float _971 = _969 * _970;
        float _973 = _13_m11.y + _971;
        float _974 = _970 - _971;
        float _976 = (1.0f - _969) * _247;
        float _990 = max(-127.0f, _15_m49.z * _974);
        float _1014 = max(-127.0f, _15_m52.x * _974);
        float _1025 = ((_15_m49.y * exp2(-max(-127.0f, _15_m49.z * (_973 - _15_m49.x)))) * ((abs(_990) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_990)) / _990) : (0.693147182464599609375f - (0.2402265071868896484375f * _990)))) + ((_15_m52.y * exp2(-max(-127.0f, _15_m52.x * (_973 - _15_m52.z)))) * ((abs(_1014) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1014)) / _1014) : (0.693147182464599609375f - (0.2402265071868896484375f * _1014))));
        float _1047 = clamp((_247 * _15_m50.w) + _15_m50.z, 0.0f, 1.0f);
        float _1050 = clamp((max(clamp(exp2(-(_1025 * _976)), 0.0f, 1.0f), _15_m51.w) + clamp((_247 * _15_m50.y) + _15_m50.x, 0.0f, 1.0f)) + _1047, 0.0f, 1.0f);
        float4 _1090 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _37.SampleLevel(_21, float3((_334 + ((((float3(uint3(_933, _929 + (_931 * _933), _198) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _15_m59.w).xy) * _15_m57.xy, (log2((_285 * _15_m56.x) + _15_m56.y) * _15_m56.z) / _15_m55.z), 0.0f), clamp((_285 - _15_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1092 = _1090.w;
        _1096 = _1090.xyz + (((_15_m51.xyz * (1.0f - _1050)) + (((_15_m54.xyz * pow(clamp(dot(_298, _15_m53.xyz), 0.0f, 1.0f), _15_m54.w)) * (1.0f - clamp(exp2(-(_1025 * max(_976 - _15_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1047))) * _1092);
        _1097 = _1092 * _1050;
    }
    else
    {
        float3 _794 = _278 - _13_m11.xyz;
        float _796 = _794.y;
        float _810 = max(-127.0f, _15_m49.z * _796);
        float _834 = max(-127.0f, _15_m52.x * _796);
        float _845 = ((_15_m49.y * exp2(-max(-127.0f, _15_m49.z * (_13_m11.y - _15_m49.x)))) * ((abs(_810) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_810)) / _810) : (0.693147182464599609375f - (0.2402265071868896484375f * _810)))) + ((_15_m52.y * exp2(-max(-127.0f, _15_m52.x * (_13_m11.y - _15_m52.z)))) * ((abs(_834) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_834)) / _834) : (0.693147182464599609375f - (0.2402265071868896484375f * _834))));
        float _867 = clamp((_247 * _15_m50.w) + _15_m50.z, 0.0f, 1.0f);
        float _870 = clamp((max(clamp(exp2(-(_845 * _247)), 0.0f, 1.0f), _15_m51.w) + clamp((_247 * _15_m50.y) + _15_m50.x, 0.0f, 1.0f)) + _867, 0.0f, 1.0f);
        _1096 = (_15_m51.xyz * (1.0f - _870)) + (((_15_m54.xyz * pow(clamp(dot(_298, _15_m53.xyz), 0.0f, 1.0f), _15_m54.w)) * (1.0f - clamp(exp2(-(_845 * max(_247 - _15_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _867));
        _1097 = _870;
    }
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _1096 *= 0.65f.xxx;
        _1097 = (_1097 * 0.65f) + 0.35f;
    }
    float3 _1107 = (((_712.xyz * (_751 * _1097)) + (((((clamp(((_15_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_754 * _754)))) + _15_m48.xyz) + (_15_m47.xyz * ((1.0f - _760) / max((12.56637096405029296875f * _764) * sqrt(_764), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _751)) * _1097) + _1096) * (1.0f - _35_m48))).xyz * _689).xyz;
    float3 _1123 = ((lerp(dot(_1107, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1107, _15_m76.w.xxx) * _15_m76.xyz) * _35_m67) + (_1107 * (1.0f - _35_m67));
    float2 _1125 = min(((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, 1.0f.xx);
    float4 _1126 = float4(_1125.x, _1125.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1126.z = 0.0f;
    _1126.w = (_35_m46 * _35_m47) * float(clamp(max(dot(_679, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _678, _678) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_1123.x, _1123.y, _1123.z, _712.w);
    _11 = _1126;
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
