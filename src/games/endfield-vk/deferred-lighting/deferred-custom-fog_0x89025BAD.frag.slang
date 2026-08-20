// DX11 0xED0BAEAD -> Vulkan 0x89025BAD
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

static float _210 = 0.0f;
static uint _212 = 0u;

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

[[vk::binding(14, 1)]]
cbuffer _38_39 : register(b14)
{
    float _39_m0 : packoffset(c0);
    float _39_m1 : packoffset(c0.y);
    float _39_m2 : packoffset(c0.z);
    float _39_m3 : packoffset(c0.w);
    float _39_m4 : packoffset(c1);
    float _39_m5 : packoffset(c1.y);
    float _39_m6 : packoffset(c1.z);
    float _39_m7 : packoffset(c1.w);
    float4 _39_m8 : packoffset(c2);
    float4 _39_m9 : packoffset(c3);
    float _39_m10 : packoffset(c4);
    float _39_m11 : packoffset(c4.y);
    float _39_m12 : packoffset(c4.z);
    float _39_m13 : packoffset(c4.w);
    float _39_m14 : packoffset(c5);
    float _39_m15 : packoffset(c5.y);
    float _39_m16 : packoffset(c5.z);
    float _39_m17 : packoffset(c5.w);
    float _39_m18 : packoffset(c6);
    float _39_m19 : packoffset(c6.y);
    float _39_m20 : packoffset(c6.z);
    float _39_m21 : packoffset(c6.w);
    float4 _39_m22 : packoffset(c7);
    float4 _39_m23 : packoffset(c8);
    float4 _39_m24 : packoffset(c9);
    float4 _39_m25 : packoffset(c10);
    float _39_m26 : packoffset(c11);
    float _39_m27 : packoffset(c11.y);
    float _39_m28 : packoffset(c11.z);
    float _39_m29 : packoffset(c11.w);
    float _39_m30 : packoffset(c12);
    float _39_m31 : packoffset(c12.y);
    float _39_m32 : packoffset(c12.z);
    float _39_m33 : packoffset(c12.w);
    float4 _39_m34 : packoffset(c13);
    float4 _39_m35 : packoffset(c14);
    float4 _39_m36 : packoffset(c15);
    float _39_m37 : packoffset(c16);
    float _39_m38 : packoffset(c16.y);
    float _39_m39 : packoffset(c16.z);
    float _39_m40 : packoffset(c16.w);
    float _39_m41 : packoffset(c17);
    float _39_m42 : packoffset(c17.y);
    float _39_m43 : packoffset(c17.z);
    float _39_m44 : packoffset(c17.w);
    float4 _39_m45 : packoffset(c18);
    float4 _39_m46 : packoffset(c19);
    float4 _39_m47 : packoffset(c20);
    float4 _39_m48 : packoffset(c21);
    float _39_m49 : packoffset(c22);
    float _39_m50 : packoffset(c22.y);
    float _39_m51 : packoffset(c22.z);
    float _39_m52 : packoffset(c22.w);
    float _39_m53 : packoffset(c23);
    float _39_m54 : packoffset(c23.y);
    float _39_m55 : packoffset(c23.z);
    float _39_m56 : packoffset(c23.w);
    float _39_m57 : packoffset(c24);
    float _39_m58 : packoffset(c24.y);
    float _39_m59 : packoffset(c24.z);
    float _39_m60 : packoffset(c24.w);
    float _39_m61 : packoffset(c25);
    float _39_m62 : packoffset(c25.y);
    float _39_m63 : packoffset(c25.z);
    float _39_m64 : packoffset(c25.w);
    float _39_m65 : packoffset(c26);
    float _39_m66 : packoffset(c26.y);
    float _39_m67 : packoffset(c26.z);
    float _39_m68 : packoffset(c26.w);
    float _39_m69 : packoffset(c27);
    float _39_m70 : packoffset(c27.y);
    float _39_m71 : packoffset(c27.z);
    float _39_m72 : packoffset(c27.w);
    float _39_m73 : packoffset(c28);
    float _39_m74 : packoffset(c28.y);
    float _39_m75 : packoffset(c28.z);
    float _39_m76 : packoffset(c28.w);
    float4 _39_m77 : packoffset(c29);
    float4 _39_m78 : packoffset(c30);
    float4 _39_m79 : packoffset(c31);
    float4 _39_m80 : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _20 : register(s3);
[[vk::binding(6, 0)]] SamplerState _21 : register(s6);
[[vk::binding(45, 0)]] Texture2D<float4> _23 : register(t45);
[[vk::binding(8, 1)]] Texture2D<float4> _24 : register(t8);
[[vk::binding(1, 1)]] SamplerState _25 : register(s1);
[[vk::binding(7, 1)]] Texture2D<float4> _26 : register(t7);
[[vk::binding(0, 1)]] SamplerState _27 : register(s0);
[[vk::binding(9, 1)]] Texture2D<float4> _28 : register(t9);
[[vk::binding(2, 1)]] SamplerState _29 : register(s2);
[[vk::binding(10, 1)]] Texture2D<float4> _30 : register(t10);
[[vk::binding(3, 1)]] SamplerState _31 : register(s3);
[[vk::binding(11, 1)]] Texture2D<float4> _32 : register(t11);
[[vk::binding(4, 1)]] SamplerState _33 : register(s4);
[[vk::binding(13, 1)]] Texture2D<float4> _34 : register(t13);
[[vk::binding(6, 1)]] SamplerState _35 : register(s6);
[[vk::binding(12, 1)]] Texture2D<float4> _36 : register(t12);
[[vk::binding(5, 1)]] SamplerState _37 : register(s5);
[[vk::binding(35, 0)]] Texture3D<float4> _41 : register(t35);

static float4 gl_FragCoord;
static float4 _4;
static float4 _5;
static float4 _6;
static float3 _7;
static float4 _8;
static uint _9;
static float4 _10;
static float4 _11;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float4 _6 : TEXCOORD2;
    [[vk::location(3)]] float3 _7 : TEXCOORD3;
    [[vk::location(4)]] float4 _8 : TEXCOORD4;
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
    bool _261;
    float2 _228 = gl_FragCoord.xy * _15_m0.zw;
    float2 _231 = (_228 * 2.0f) - 1.0f.xx;
    float4 _234 = float4(_231, gl_FragCoord.z, 1.0f);
    _234.y = -_231.y;
    float4 _237 = mul(_13_m6, _234);
    float _245 = (_8.w > 0.0f) ? 1.0f : (-1.0f);
    float3 _250 = float4(_8.xyz, _245).xyz;
    float3 _273;
    do
    {
        _261 = _15_m4.w == 0.0f;
        if (_261)
        {
            _273 = _13_m11.xyz - (_237.xyz / _237.w.xxx);
            break;
        }
        else
        {
            _273 = _13_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _274 = dot(_273, _273);
    float _277 = _274 * rsqrt(max(_274, 9.9999999392252902907785028219223e-09f));
    float2 _292 = float2(uint2(gl_FragCoord.xy));
    uint2 _296 = uint2(_292);
    float2 _298 = ((_292 * _15_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _301 = float4(_298, _23.SampleLevel(_20, _228, 0.0f).x, 1.0f);
    _301.y = -_298.y;
    float4 _304 = mul(_13_m6, _301);
    float3 _308 = _304.xyz / _304.w.xxx;
    float _315 = abs(mul(_13_m0, float4(_308, 1.0f)).z);
    float3 _327;
    do
    {
        if (_261)
        {
            _327 = _13_m11.xyz - _308;
            break;
        }
        else
        {
            _327 = _13_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _328 = normalize(_327);
    float3 _336 = _308 - float3(_4.w, _5.w, _6.w);
    float _346 = dot(_4.xyz, _336);
    float _348 = dot(_5.xyz, _336);
    float _350 = dot(_6.xyz, _336);
    float3 _351 = float3(_346, _348, _350);
    float4 _353 = _39_m78;
    _353.w = _353.w * (_39_m51 * (1.0f - _18_m0[_9]._m1.y));
    float2 _363 = _351.xz;
    float2 _364 = _363 + 0.5f.xx;
    float2 _365 = float2(_296);
    float2 _369 = _365 / _15_m5.xy;
    float2 _378 = float2(_369.x, (_369.y / _15_m5.x) * _15_m5.y);
    float _381 = _346 / _350;
    float _382 = abs(_381);
    bool _383 = _382 < 1.0f;
    float _385 = _383 ? _382 : (1.0f / _382);
    float _386 = _385 * _385;
    float _391 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _386)) * _386)) * _385;
    float _393 = _383 ? _391 : (1.57079637050628662109375f - _391);
    float2 _405 = float2(((((_381 < 0.0f) ? (-_393) : _393) + (((_346 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_350 < 0.0f))) - (-3.1415927410125732421875f)) * 0.15915493667125701904296875f, length(_363) * 2.0f);
    bool2 _409 = (_39_m16 == 1.0f).xx;
    bool2 _411 = (_39_m16 == 2.0f).xx;
    float2 _412 = float2(_411.x ? _405.x : _364.x, _411.y ? _405.y : _364.y);
    float4 _445 = _28.SampleBias(_29, float4(((float2(_409.x ? _378.x : _412.x, _409.y ? _378.y : _412.y) + ((_39_m22.xy * _15_m75.w) + (_39_m22.zw * _39_m68))) * _39_m24.xy) + _39_m24.zw, _210, _210).xy, _15_m16);
    float _449 = (_445.x * (_39_m11 + 1.0f)) - _39_m11;
    float2 _452 = float2(_449 * _39_m12, _449 * _39_m13);
    float2 _453 = float2(_452.x, _452.y);
    bool2 _457 = (_39_m63 == 1.0f).xx;
    bool2 _459 = (_39_m63 == 2.0f).xx;
    float2 _460 = float2(_459.x ? _405.x : _364.x, _459.y ? _405.y : _364.y);
    float _474 = radians(_39_m50);
    float _475 = cos(_474);
    float _476 = sin(_474);
    float2 _487 = ((mul(((float2(_457.x ? _378.x : _460.x, _457.y ? _378.y : _460.y) + (_39_m79.xy * _15_m75.w)) + (_39_m79.zw * _39_m65)) - 0.5f.xx, float2x2(float2(_475, -_476), float2(_476, _475))) + 0.5f.xx) * _39_m80.xy) + _39_m80.zw;
    float3 _489 = normalize(mul(float3x3(_250 * 1.0f, (cross(_7, _250) * _245) * 1.0f, _7 * 1.0f), _328));
    float2 _490 = ddx(_487);
    float2 _491 = ddy(_487);
    float2 _500 = ((_489.xy / _489.z.xx) * ((-1.0f) * _39_m41)) * 0.0333333350718021392822265625f;
    float2 _502;
    float2 _505;
    float _507;
    float _509;
    float _511;
    float _513;
    _502 = _500;
    _505 = 0.0f.xx;
    _507 = 0.966666638851165771484375f;
    _509 = 0.0f;
    _511 = 1.0f;
    _513 = 0.0f;
    float2 _506;
    float _510;
    float _512;
    float _514;
    float2 _503;
    float _508;
    int _516;
    for (int _515 = 0; _515 < 31; _502 = _503, _505 = _506, _507 = _508, _509 = _510, _511 = _512, _513 = _514, _515 = _516)
    {
        _510 = _32.SampleGrad(_33, _487 + _502, _490 * _15_m17, _491 * _15_m17).x;
        bool _529 = _510 > _507;
        if (_529)
        {
            _503 = _502;
            _508 = _507;
            _516 = 31;
        }
        else
        {
            _503 = _502 + _500;
            _508 = _507 - 0.0333333350718021392822265625f;
            _516 = _515 + 1;
        }
        bool2 _536 = _529.xx;
        _506 = float2(_536.x ? _505.x : _502.x, _536.y ? _505.y : _502.y);
        _512 = _529 ? _511 : _507;
        _514 = _529 ? _513 : _510;
    }
    float2 _543 = _505 + (_500 * ((_513 - _511) / (((_513 - _509) + _507) - _511)));
    float4 _554 = _24.SampleBias(_25, (_487 + (_453 * _39_m62)) + _543, _15_m16);
    bool2 _563 = (_39_m3 == 1.0f).xx;
    bool2 _565 = (_39_m3 == 2.0f).xx;
    float2 _566 = float2(_565.x ? _405.x : _364.x, _565.y ? _405.y : _364.y);
    float _580 = radians(_39_m1);
    float _581 = cos(_580);
    float _582 = sin(_580);
    float4 _603 = _26.SampleBias(_27, (((mul(((float2(_563.x ? _378.x : _566.x, _563.y ? _378.y : _566.y) + (_39_m8.xy * _15_m75.w)) + (_39_m8.zw * _39_m66)) - 0.5f.xx, float2x2(float2(_581, -_582), float2(_582, _581))) + 0.5f.xx) * _39_m9.xy) + _39_m9.zw) + (_453 * _39_m2), _15_m16);
    float4 _608 = (_353 * lerp(_554, float4(1.0f, 1.0f, 1.0f, _554.x), _39_m49.xxxx)) * lerp(_603, float4(1.0f, 1.0f, 1.0f, _603.x), _39_m0.xxxx);
    float4 _613 = _34.SampleBias(_35, _487 + _543, _15_m16);
    float _614 = _613.x;
    bool2 _618 = (_39_m37 == 1.0f).xx;
    bool2 _620 = (_39_m37 == 2.0f).xx;
    float2 _621 = float2(_620.x ? _405.x : _364.x, _620.y ? _405.y : _364.y);
    bool2 _659 = (_39_m31 == 1.0f).xx;
    bool2 _661 = (_39_m31 == 2.0f).xx;
    float2 _662 = float2(_661.x ? _405.x : _364.x, _661.y ? _405.y : _364.y);
    float _676 = radians(_39_m30);
    float _677 = cos(_676);
    float _678 = sin(_676);
    float _711 = _30.SampleBias(_31, (((mul(((float2(_659.x ? _378.x : _662.x, _659.y ? _378.y : _662.y) + (_39_m35.xy * _15_m75.w)) + (_39_m35.zw * _39_m77.z)) - 0.5f.xx, float2x2(float2(_677, -_678), float2(_678, _677))) + 0.5f.xx) * _39_m36.xy) + _39_m36.zw) + (_453 * _39_m26), _15_m16).x - ((_39_m28 * 2.019999980926513671875f) - 1.0099999904632568359375f);
    float _713 = clamp(_711 * _39_m27, 0.0f, 1.0f);
    float _716 = clamp((_39_m29 - _711) * _39_m27, 0.0f, 1.0f);
    float _765 = 0.5f - _39_m57;
    float _768 = 0.5f - _39_m58;
    float _778 = ((((_608.w * lerp(_713, _713, _39_m34.w)) * ((_39_m69 != 0.0f) ? (clamp((_315 - _39_m70) / (_39_m71 - _39_m70), 0.0f, 1.0f) * clamp((_315 - _39_m72) / (_39_m73 - _39_m72), 0.0f, 1.0f)) : 1.0f)) * clamp((((0.5f + abs(_39_m61)) - abs(_348 + _39_m61)) / max(_39_m59, 0.001000000047497451305389404296875f)) * 2.0f, 0.0f, 1.0f)) * smoothstep(_765 + _39_m60, _765, abs(_346))) * smoothstep(_768 + _39_m60, _768, abs(_350));
    float3 _779 = lerp((_608.xyz + lerp(_39_m45 * _614, _36.SampleBias(_37, ((((float2(_618.x ? _378.x : _621.x, _618.y ? _378.y : _621.y) * _39_m48.xy) + _39_m48.zw) + (_39_m47.xy * _15_m10.y)) + (_453 * _39_m43)) + _543, _15_m16) * _39_m46, _614.xxxx).xyz).xyz, (_39_m34.xyz * _716) * _39_m78.x, _716.xxx).xyz;
    float _789 = clamp(_778, 0.0f, 1.0f) * float(int(all(bool3(_351.x > (-0.5f).xxx.x, _351.y > (-0.5f).xxx.y, _351.z > (-0.5f).xxx.z)) && all(bool3(_351.x < 0.5f.xxx.x, _351.y < 0.5f.xxx.y, _351.z < 0.5f.xxx.z))));
    float3 _798 = (clamp(_779, 0.0f.xxx, 1000.0f.xxx) * ((1.0f - _39_m56) + (_15_m20.y * _39_m56))) * _789;
    float4 _812 = float4(_798.x, _798.y, _798.z, 0.0f.xxxx.w);
    _812.w = _789;
    float3 _816 = -_328;
    float _832 = _308.y * _15_m46.w;
    float _837 = max(0.00999999977648258209228515625f, _832 + _15_m47.w);
    float3 _851 = exp(_15_m45.xyz * ((-max(0.0f, (_277 * _15_m44.w) - _15_m43.w)) * (((1.0f - exp(-_837)) / _837) * exp(_832 + _15_m48.w))));
    float _854 = dot(_816, _15_m44.xyz);
    float _860 = _15_m45.w * _15_m45.w;
    float _864 = (1.0f + _860) - ((2.0f * _15_m45.w) * _854);
    float3 _1196;
    float _1197;
    if (_15_m55.z > 0.0f)
    {
        uint3 _1022 = (uint3(int3(int(_296.x), int(_296.y), int(_15_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1023 = _1022.y;
        uint _1024 = _1022.z;
        uint _1027 = _1022.x + (_1023 * _1024);
        uint _1029 = _1023 + (_1024 * _1027);
        uint _1031 = _1024 + (_1027 * _1029);
        uint _1033 = _1027 + (_1029 * _1031);
        float _1057 = dot(_816, -_13_m0[2].xyz);
        float3 _1067 = _308 - _13_m11.xyz;
        float _1069 = (_15_m55.w * ((_1057 > 5.9604644775390625e-08f) ? (1.0f / _1057) : 0.0f)) * (1.0f / _277);
        float _1070 = _1067.y;
        float _1071 = _1069 * _1070;
        float _1073 = _13_m11.y + _1071;
        float _1074 = _1070 - _1071;
        float _1076 = (1.0f - _1069) * _277;
        float _1090 = max(-127.0f, _15_m49.z * _1074);
        float _1114 = max(-127.0f, _15_m52.x * _1074);
        float _1125 = ((_15_m49.y * exp2(-max(-127.0f, _15_m49.z * (_1073 - _15_m49.x)))) * ((abs(_1090) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1090)) / _1090) : (0.693147182464599609375f - (0.2402265071868896484375f * _1090)))) + ((_15_m52.y * exp2(-max(-127.0f, _15_m52.x * (_1073 - _15_m52.z)))) * ((abs(_1114) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1114)) / _1114) : (0.693147182464599609375f - (0.2402265071868896484375f * _1114))));
        float _1147 = clamp((_277 * _15_m50.w) + _15_m50.z, 0.0f, 1.0f);
        float _1150 = clamp((max(clamp(exp2(-(_1125 * _1076)), 0.0f, 1.0f), _15_m51.w) + clamp((_277 * _15_m50.y) + _15_m50.x, 0.0f, 1.0f)) + _1147, 0.0f, 1.0f);
        float4 _1190 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _41.SampleLevel(_21, float3((_365 + ((((float3(uint3(_1033, _1029 + (_1031 * _1033), _212) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _15_m59.w).xy) * _15_m57.xy, (log2((_315 * _15_m56.x) + _15_m56.y) * _15_m56.z) / _15_m55.z), 0.0f), clamp((_315 - _15_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1192 = _1190.w;
        _1196 = _1190.xyz + (((_15_m51.xyz * (1.0f - _1150)) + (((_15_m54.xyz * pow(clamp(dot(_328, _15_m53.xyz), 0.0f, 1.0f), _15_m54.w)) * (1.0f - clamp(exp2(-(_1125 * max(_1076 - _15_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1147))) * _1192);
        _1197 = _1192 * _1150;
    }
    else
    {
        float3 _894 = _308 - _13_m11.xyz;
        float _896 = _894.y;
        float _910 = max(-127.0f, _15_m49.z * _896);
        float _934 = max(-127.0f, _15_m52.x * _896);
        float _945 = ((_15_m49.y * exp2(-max(-127.0f, _15_m49.z * (_13_m11.y - _15_m49.x)))) * ((abs(_910) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_910)) / _910) : (0.693147182464599609375f - (0.2402265071868896484375f * _910)))) + ((_15_m52.y * exp2(-max(-127.0f, _15_m52.x * (_13_m11.y - _15_m52.z)))) * ((abs(_934) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_934)) / _934) : (0.693147182464599609375f - (0.2402265071868896484375f * _934))));
        float _967 = clamp((_277 * _15_m50.w) + _15_m50.z, 0.0f, 1.0f);
        float _970 = clamp((max(clamp(exp2(-(_945 * _277)), 0.0f, 1.0f), _15_m51.w) + clamp((_277 * _15_m50.y) + _15_m50.x, 0.0f, 1.0f)) + _967, 0.0f, 1.0f);
        _1196 = (_15_m51.xyz * (1.0f - _970)) + (((_15_m54.xyz * pow(clamp(dot(_328, _15_m53.xyz), 0.0f, 1.0f), _15_m54.w)) * (1.0f - clamp(exp2(-(_945 * max(_277 - _15_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _967));
        _1197 = _970;
    }
    // RenoDX code start: apply the hue-preserving fog composite.
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _1196 *= float3(0.65f, 0.65f, 0.0f);
        _1197 = (_1197 * 0.65f) + 0.35f;
    }
    // RenoDX code end
    float3 _1207 = (((_812.xyz * (_851 * _1197)) + (((((clamp(((_15_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_854 * _854)))) + _15_m48.xyz) + (_15_m47.xyz * ((1.0f - _860) / max((12.56637096405029296875f * _864) * sqrt(_864), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _851)) * _1197) + _1196) * (1.0f - _39_m55))).xyz * _789).xyz;
    float3 _1223 = ((lerp(dot(_1207, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1207, _15_m76.w.xxx) * _15_m76.xyz) * _39_m74) + (_1207 * (1.0f - _39_m74));
    float2 _1225 = min(((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, 1.0f.xx);
    float4 _1226 = float4(_1225.x, _1225.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1226.z = 0.0f;
    _1226.w = (_39_m53 * _39_m54) * float(clamp(max(dot(_779, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _778, _778) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _10 = float4(_1223.x, _1223.y, _1223.z, _812.w);
    _11 = _1226;
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
