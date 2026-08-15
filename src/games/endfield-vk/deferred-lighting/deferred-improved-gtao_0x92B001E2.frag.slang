// Current Vulkan deferred-lighting permutation 0x92B001E2.
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

static float _354 = 0.0f;
static uint _355 = 0u;

#include "./renodx_injection.hlsli"
[[vk::binding(33, 3)]]
cbuffer _6_7 : register(b33)
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

[[vk::binding(36, 3)]]
cbuffer _8_9 : register(b36)
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
[[vk::binding(37, 3)]]
cbuffer _25_27 : register(b37)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(34, 3)]]
cbuffer _28_29 : register(b34)
{
    float4 _29_m0 : packoffset(c0);
    float4 _29_m1 : packoffset(c1);
    float4 _29_m2 : packoffset(c2);
    float4 _29_m3 : packoffset(c3);
    float4 _29_m4 : packoffset(c4);
    uint4 _29_m5 : packoffset(c5);
    float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(32, 3)]]
cbuffer _33_34 : register(b32)
{
    column_major float4x4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c4);
};

[[vk::binding(35, 3)]]
cbuffer _42_43 : register(b35)
{
    float4 _43_m0 : packoffset(c0);
    float4 _43_m1 : packoffset(c1);
    float4 _43_m2 : packoffset(c2);
    float4 _43_m3 : packoffset(c3);
    float4 _43_m4 : packoffset(c4);
    uint4 _43_m5 : packoffset(c5);
    float4 _43_m6 : packoffset(c6);
    float4 _43_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3);
[[vk::binding(29, 3)]] Texture2D<float4> _18 : register(t29);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23);
[[vk::binding(13, 3)]] Texture2DArray<float4> _22 : register(t13);
[[vk::binding(9, 3)]] Texture2D<float4> _30 : register(t9);
[[vk::binding(30, 3)]] Texture2D<float4> _31 : register(t30);
[[vk::binding(7, 3)]] Texture2D<float4> _32 : register(t7);
[[vk::binding(14, 3)]] Texture3D<float4> _36 : register(t14);
[[vk::binding(8, 3)]] Texture2D<float4> _37 : register(t8);
[[vk::binding(12, 3)]] Texture2D<float4> _38 : register(t12);
[[vk::binding(15, 3)]] Texture2D<float4> _39 : register(t15);
[[vk::binding(28, 3)]] Texture2D<float4> _40 : register(t28);
[[vk::binding(22, 3)]] Texture3D<float4> _41 : register(t22);
[[vk::binding(31, 3)]] Texture2D<float4> _44 : register(t31);
[[vk::binding(6, 3)]] Texture2D<float4> _45 : register(t6);
[[vk::binding(21, 3)]] Texture3D<float4> _46 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _47 : register(t18);
[[vk::binding(20, 3)]] Texture3D<float4> _48 : register(t20);
[[vk::binding(17, 3)]] Texture3D<float4> _49 : register(t17);
[[vk::binding(19, 3)]] Texture3D<float4> _50 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _51 : register(t16);
[[vk::binding(5, 3)]] Texture2D<float4> _52 : register(t5);
[[vk::binding(27, 3)]] Texture2D<float4> _53 : register(t27);
[[vk::binding(26, 3)]] Texture2D<float4> _54 : register(t26);
[[vk::binding(25, 3)]] Texture2D<float4> _55 : register(t25);
[[vk::binding(24, 3)]] Texture3D<float4> _56 : register(t24);

static float4 gl_FragCoord;
static float2 _4;
static float4 _5;

struct SPIRV_Cross_Input
{
    float2 _4 : TEXCOORD0;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 _5 : SV_Target0;
};

void frag_main()
{
    uint2 _360 = uint2(gl_FragCoord.xy);
    int _363 = int(_360.x);
    int _364 = int(_360.y);
    int2 _366 = int3(_363, _364, 0).xy;
    float4 _368 = _53.Load(int3(_366, 0));
    float4 _370 = _54.Load(int3(_366, 0));
    float _373 = _368.x;
    float _374 = _368.y;
    float _375 = _368.z;
    float2 _378 = (_370.xy * 2.0f) - 1.0f.xx;
    float _382 = 1.0f - dot(1.0f.xx, abs(_378));
    float3 _384 = float3(_378.x, _382, _378.y);
    float3 _396;
    if (_382 < 0.0f)
    {
        float2 _391 = _384.xz;
        bool2 _392 = bool2(_391.x >= 0.0f.xx.x, _391.y >= 0.0f.xx.y);
        float2 _394 = (1.0f.xx - abs(_384.zx)) * float2(_392.x ? 1.0f.xx.x : (-1.0f).xx.x, _392.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _396 = float3(_394.x, _384.y, _394.y);
    }
    else
    {
        _396 = _384;
    }
    float3 _397 = normalize(_396);
    float _398 = _370.z;
    float2 _402 = float2(_360);
    float2 _415 = gl_FragCoord.xy * _9_m0.zw;
    float2 _417 = (_415 * 2.0f) - 1.0f.xx;
    float4 _420 = float4(_417, _18.SampleLevel(_12, (_402 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _420.y = -_417.y;
    float4 _423 = mul(_7_m6, _420);
    float3 _427 = _423.xyz / _423.w.xxx;
    float _428 = _427.x;
    float _429 = _427.y;
    float4 _431 = float4(_428, _429, _427.z, 1.0f);
    float _434 = abs(mul(_7_m0, _431).z);
    float3 _449;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _449 = _7_m11.xyz - _427;
            break;
        }
        else
        {
            _449 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _450 = dot(_449, _449);
    float _452 = rsqrt(max(_450, 9.9999999392252902907785028219223e-09f));
    float3 _453 = _449 * _452;
    float _454 = _450 * _452;
    float3 _455 = -_453;
    bool _458 = _9_m129.x > 0.00048828125f;
    float2 _468;
    if (_458)
    {
        _468 = _52.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _468 = 1.0f.xx;
    }
    float _469 = dot(_397, float3(0.0f, -1.0f, 0.0f));
    float3 _525;
    float3 _526;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _496 = abs(_397.x);
        float _498 = abs(_397.y);
        float _500 = abs(_397.z);
        float3 _505 = float3(_496, _498, _500) * (1.0f / ((_496 + _498) + _500));
        float4 _518 = _36.SampleLevel(_14, _427 * _9_m124.x, 0.0f);
        float _519 = _518.x;
        _525 = float3(_519, _354, _354);
        _526 = ((((float3(0.0f, 0.0f, 1.0f) * _505.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _505.y)) + (float3(1.0f, 0.0f, 0.0f) * _505.z)) * ((_519 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_469)));
    }
    else
    {
        _525 = 0.0f.xxx;
        _526 = 0.0f.xxx;
    }
    float4 _540 = mul(_34_m0, float4((_427 + ((((_397 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_469, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _469), 0.100000001490116119384765625f, 1.0f)))) + _526, 1.0f));
    float2 _543 = (_540.xy * 0.5f) + 0.5f.xx;
    float4 _544 = float4(_543.x, _543.y, _540.z, _540.w);
    _544.y = 1.0f - _543.y;
    float _565;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _565 = _32.SampleCmpLevelZero(_16, (_544.xy + _34_m1.xy).xy, max(_540.z, 0.00048828125f));
    }
    else
    {
        _565 = 1.0f;
    }
    float _568 = _397.y;
    float _569 = clamp(_568, 0.0f, 1.0f);
    float _570 = lerp(_9_m125.w, 1.0f, _569);
    float2 _574 = _427.xz;
    float2 _579 = abs(_574 - _7_m11.xz);
    float _582 = max(_579.x, _579.y);
    float _592 = lerp(_570 * _565, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _582));
    float3 _599 = ddy_fine(_427);
    float3 _600 = ddx_fine(_427);
    float3 _601 = cross(_599, _600);
    float _607 = clamp((_601 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_601, _601)))).y, 0.0f, 1.0f);
    float _610 = _9_m118.z * 0.300000011920928955078125f;
    float _612 = _610 + 0.68599998950958251953125f;
    float _619 = 1.0f - clamp((_434 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _634 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_612, 0.9700000286102294921875f), 0.9900000095367431640625f, _569) + (smoothstep(0.990999996662139892578125f, 1.0f, _607) * step(_374, (_525.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _833;
    float _834;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_610 + 0.686999976634979248046875f, _612, _607) * smoothstep(-0.5f, -0.100000001490116119384765625f, _568)) > 0.00048828125f))
    {
        float3 _643 = abs(_397);
        float3 _644 = _643 * _643;
        float3 _649 = _644 * (1.0f / (_644.x + _644.z));
        float3 _651 = normalize(cross(_397, float3(0.0f, 1.0f, 0.0f)));
        float3 _653 = normalize(cross(_651, _397));
        float3 _669 = floor((_427 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _677 = frac(sin(dot(fmod(_669.xz + _669.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _681 = (step(0.0f.xx, _397.zx) * 2.0f) - 1.0f.xx;
        float3 _684 = _427;
        _684.x = _428 * _681.x;
        _684.z = _427.z * (-_681.y);
        float _696 = _525.x * _677;
        float2 _704 = float2(frac(((-_9_m118.x) * (((1.0f - _677) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_696 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_696 * 6.0f)));
        float _707 = floor(_677 * 5.0f) + 1.0f;
        float2 _711 = frac(float2(_707, 0.100000001490116119384765625f * _707) * _429);
        float2 _723 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _711 - (_704 - 1.0f.xx)), _704 - _711), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _711 - _704), (_704 + 1.0f.xx) - _711), step(_704, _711));
        float _724 = _723.x;
        float _726 = smoothstep(0.4000000059604644775390625f, 1.0f, _724 * _724);
        float _727 = _723.y;
        float _732 = (_727 * 2.0f) - 1.0f;
        float2 _741 = float2((_525.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _726) * _732), (1.0f.xx * _525.x).y * (_525.x + (((_726 * 0.00999999977648258209228515625f) * _726) * _732)));
        float4 _765 = (_37.SampleBias(_14, (_684.zy * _9_m119.xy) + _741, _9_m16) * _649.x) + (_37.SampleBias(_14, (_684.xy * _9_m119.xy) + _741, _9_m16) * _649.z);
        float2 _768 = (_765.xy * 2.0f) - 1.0f.xx;
        float _774 = _765.w;
        float _784 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_727 + (((_726 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_774 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_732 * _774) * 0.5f) + _726, 0.0f, 1.0f)));
        float _790 = _765.z;
        float _800 = (((lerp(0.100000001490116119384765625f, (_784 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _784, 0.0f, 1.0f), 5.0f), _790)) * _790) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_592 * step(0.04500000178813934326171875f, _375))) * _619);
        float2 _803 = _768.xy;
        float _808 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_803, _803), 0.0f, 1.0f)));
        float3 _809 = float3(_768, _808);
        float2 _813 = _809.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _800) * _9_m118.y);
        float3 _814 = float3(_813.x, _813.y, _809.z);
        _814.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _808, _800);
        _833 = lerp(_397, mul(float4x4(float4(_651.x, _653.x, _397.x, 0.0f), float4(_651.y, _653.y, _568, 0.0f), float4(_651.z, _653.z, _397.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_814 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_814, _814))), 0.0f)).xyz, _800.xxx);
        _834 = (_800 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _833 = _397;
        _834 = 0.0f;
    }
    float3 _982;
    float _983;
    [branch]
    if (_634 > 0.00048828125f)
    {
        float2 _841 = (-_574) * _9_m123.xy;
        float2 _843 = frac(_841);
        float2 _890;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _853 = frac(sin(dot(fmod(floor(_841), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _866 = floor(frac(_9_m122.x + _853) * (_9_m123.z * _9_m123.z));
            float _868 = 1.0f / _9_m123.z;
            _890 = ((_38.SampleBias(_13, frac((lerp(_843, _843.yx, step(_853, 0.5f).xx) * _868) + float2(_868 * fmod(_866, _9_m123.z), _868 * ((_9_m123.z - 1.0f) - floor(_866 * _868)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _890 = 0.0f.xx;
        }
        float2 _931;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _916 = _38.SampleBias(_14, (_841 + float2(0.0f, _9_m122.z)) + ((float2(_525.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _920 = _38.SampleBias(_14, (_841 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _525.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _926 = (((float4(_916.z, _916.w, _920.z, _920.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _525.x;
            _931 = _890 + (_926.xy + _926.zw);
        }
        else
        {
            _931 = _890;
        }
        float _939 = (((_525.x * 0.699999988079071044921875f) + (_398 * 0.300000011920928955078125f)) * clamp((_398 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _374;
        float _943 = smoothstep(min(_939, 0.9900000095367431640625f), clamp(_939 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _954 = _9_m117.x * _634;
        float3 _964 = float3(_931, max(0.00048828125f, sqrt(1.0f - clamp(dot(_931, _931), 0.0f, 1.0f))));
        float3 _970 = (_964 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_964, _964)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _982 = lerp(_397, _970, (((_954 * _943) * _592) * _619).xxx);
        _983 = max((smoothstep(0.0f, _374 * 0.20000000298023223876953125f, (_954 * clamp(lerp((_9_m123.w * (1.0f - _525.x)) * 0.5f, 1.0f, _943) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _970.y) * _592) * _619, 0.0f);
    }
    else
    {
        _982 = _833;
        _983 = 0.0f;
    }
    float _986 = min(_468.x, _468.y);
    float2 _988 = _468 * (1.0f - lerp(lerp(_9_m125.z * _570, 1.0f, _592), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _582)));
    float _989 = _988.x;
    float _992 = clamp((_375 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _993 = 1.0f - _398;
    float _1009 = lerp(clamp((clamp((_993 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _834)) + ((_983 * 0.100000001490116119384765625f) * _398), 0.0f, 1.0f), 1.0f, _373);
    float _1011 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _469);
    float _1020 = lerp(1.0f, 0.25f, ((_9_m117.x * _1009) * (1.0f - _373)) * _1011);
    float _1036 = (1.0f - lerp(_993, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1009) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_993)), 0.0f, 1.0f), _993, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1011) * (1.0f - _989))) * lerp(1.0f, 0.100000001490116119384765625f, max(_983, smoothstep(0.0f, 0.0500000007450580596923828125f, _834)));
    float _1041;
    float _1042;
    if (_458)
    {
        _1041 = lerp(1.0f, _468.y, _992);
        _1042 = lerp(1.0f, 0.0f, _992);
    }
    else
    {
        _1041 = 1.0f;
        _1042 = 1.0f;
    }
    float _1047 = lerp(lerp(min(_1041, _1036), _1036, _986), _398, _989);
    float3 _1049 = _55.Load(int3(_366, 0)).xyz * lerp(lerp(min(_1042, _1020), _1020, _986), 1.0f, _989);
    float3 _1050 = _1049 * _373;
    float3 _1051 = _1049 - _1050;
    float3 _1055 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _373)).xxx + _1050;
    float _1056 = dot(_982, _453);
    float _1057 = max(0.0f, _1056);
    float _1058 = _1047 * _1047;
    float _1059 = _1057 * _1057;
    float _1060 = _1059 * _1057;
    float2 _1061 = float2(1.0f, _1057);
    float2 _1064 = float2(1.0f, _1058);
    float _1065 = _1058 * _1058;
    float3 _1067 = float3(1.0f, _1058, _1065 * _1058);
    float _1072 = dot(mul(_1061, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1064) / dot(mul(float3(1.0f, _1059, _1060), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1067);
    float _1077 = dot(mul(_1061, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1064) / dot(mul(float3(1.0f, _1057, _1060), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1067);
    float3 _1080 = (_1055 * _1072) + _1077.xxx;
    float _1081 = _1072 + _1077;
    float4 _1094 = _30.Load(int3(_366, 0));
    float _1095 = _1094.x;
    float4 _1233;
    if (_1095 > 0.001000000047497451305389404296875f)
    {
        float3 _1105 = reflect(_455, _982);
        float3 _1106 = -_29_m0.xyz;
        float _1111 = dot(_1106, _1105);
        float3 _1113 = _1105 - (_1106 * _1111);
        bool3 _1115 = (_1111 < _29_m4.z).xxx;
        float3 _1123 = normalize((_1106 * _29_m4.z) + ((_1113 * rsqrt(max(6.103515625e-05f, dot(_1113, _1113)))) * _29_m4.y));
        float3 _1124 = float3(_1115.x ? _1123.x : _1105.x, _1115.y ? _1123.y : _1105.y, _1115.z ? _1123.z : _1105.z);
        float3 _1128 = _1124 + _453;
        float3 _1132 = _1128 * rsqrt(max(6.103515625e-05f, dot(_1128, _1128)));
        float _1135 = clamp(dot(_1124, _982), 0.0f, 1.0f);
        float _1137 = clamp(dot(_982, _1132), 0.0f, 1.0f);
        float _1140 = clamp(_1056, 0.0f, 1.0f);
        float _1161 = (((_1137 * _1065) - _1137) * _1137) + 1.0f;
        float _1164 = 1.0f - clamp(dot(_453, _1132), 0.0f, 1.0f);
        float _1165 = _1164 * _1164;
        float _1167 = (_1164 * _1165) * _1165;
        float _1191 = 1.0f - _1047;
        float _1198 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1191 * (1.04997003078460693359375f + (_1191 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1191))))));
        float _1199 = 1.0f - _1198;
        float3 _1202 = _1055 + ((1.0f.xxx - _1055) * 0.0476190485060214996337890625f);
        float3 _1218 = ((clamp((min(((_1055 * (1.0f - _1167)) + _1167.xxx) * ((_1065 / (_1161 * _1161)) * (0.5f / (((_1135 * sqrt(((((-_1140) * _1065) + _1140) * _1140) + _1065)) + (_1140 * sqrt(((((-_1135) * _1065) + _1135) * _1135) + _1065))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1202 * (((_39.SampleLevel(_13, (float2(_1140, _1047) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_13, (float2(_1135, _1047) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1198) / _1199)) * _1202) / (1.0f.xxx - (_1202 * _1199)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1135) + ((_1051 * 1.0f) * clamp(dot(_1124, _397), 0.0f, 1.0f))) * _29_m1.xyz;
        float3 _1231 = lerp(_1218, _1218 * _31.SampleBias(_13, float2(_1095, 0.5f), _9_m16).xyz, (1.0f - _1095).xxx) * min(_40.SampleLevel(_13, _415, 0.0f).x, 1.0f);
        _1233 = float4(_1231.x, _1231.y, _1231.z, 0.0f.xxxx.w);
    }
    else
    {
        _1233 = 0.0f.xxxx;
    }
    float3 _1235 = _374.xxx;
    float3 _1274;
    float3 _1275;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _1250 = min(_21.SampleBias(_12, _4, _9_m16).x, _374);
        _1274 = clamp((pow(abs(max(0.0f, dot(_397, _453)) + _1250), exp2(((-16.0f) * _1047) - 1.0f)) - 1.0f) + _1250, 0.0f, 1.0f).xxx;
        _1275 = max(_1250.xxx, ((((((_1051 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1250) + ((_1051 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1250) + ((_1051 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1250);
    }
    else
    {
        _1274 = _1235;
        _1275 = _1235;
    }
    _1233.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1274 : 1.0f.xxx;
    float3 _1292 = (_427 + (_397 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_402 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1302 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1311 = _1292 - (_9_m105.xyz + (_1302 * (-_9_m107.w)));
    float _1325 = max(clamp((max(abs(_1311.x), abs(_1311.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_1311.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1627;
    float4 _1628;
    float4 _1629;
    float _1630;
    float _1631;
    if ((_9_m105.w != 0.0f) && (_1325 < 1.0f))
    {
        float3 _1338 = _1292 - (_9_m105.xyz + (_1302 * (-_9_m107.y)));
        float _1352 = max(clamp((max(abs(_1338.x), abs(_1338.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1338.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1428;
        float4 _1429;
        float4 _1430;
        float4 _1431;
        if (_1352 < 1.0f)
        {
            float3 _1361 = ((_1292 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1363 = _1361 - floor(_1361);
            float4 _1367 = _46.SampleLevel(_14, _1363, 0.0f);
            float _1368 = 1.0f - _1352;
            float _1372 = _9_m106.y * 0.5f;
            float _1377 = _1363.x;
            float _1378 = clamp(_1363.y, _1372, 1.0f - _1372) * 0.3333333432674407958984375f;
            float _1379 = _1363.z;
            float4 _1382 = _47.SampleLevel(_13, float3(_1377, _1378, _1379), 0.0f);
            float _1398 = _1367.x;
            float _1408 = _1367.y;
            float _1418 = _1367.z;
            _1428 = _1325 + (_1382.w * _1368);
            _1429 = float4(((_47.SampleLevel(_13, float3(_1377, _1378 + 0.666666686534881591796875f, _1379), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1418, _1418) * _1368;
            _1430 = float4(((_47.SampleLevel(_13, float3(_1377, _1378 + 0.3333333432674407958984375f, _1379), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1408, _1408) * _1368;
            _1431 = float4(((_1382.xyz * 4.0f) - 2.0f.xxx) * _1398, _1398) * _1368;
        }
        else
        {
            _1428 = _1325;
            _1429 = 0.0f.xxxx;
            _1430 = 0.0f.xxxx;
            _1431 = 0.0f.xxxx;
        }
        float3 _1437 = _1292 - (_9_m105.xyz + (_1302 * (-_9_m107.z)));
        float _1451 = max(clamp((max(abs(_1437.x), abs(_1437.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1437.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1531;
        float4 _1532;
        float4 _1533;
        float4 _1534;
        if (_1451 < 1.0f)
        {
            float3 _1460 = ((_1292 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1462 = _1460 - floor(_1460);
            float4 _1466 = _48.SampleLevel(_14, _1462, 0.0f);
            float _1468 = _1352 * (1.0f - _1451);
            float _1472 = _9_m106.y * 0.5f;
            float _1477 = _1462.x;
            float _1478 = clamp(_1462.y, _1472, 1.0f - _1472) * 0.3333333432674407958984375f;
            float _1479 = _1462.z;
            float4 _1482 = _49.SampleLevel(_13, float3(_1477, _1478, _1479), 0.0f);
            float _1498 = _1466.x;
            float _1509 = _1466.y;
            float _1520 = _1466.z;
            _1531 = _1428 + (_1482.w * _1468);
            _1532 = _1429 + (float4(((_49.SampleLevel(_13, float3(_1477, _1478 + 0.666666686534881591796875f, _1479), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1520, _1520) * _1468);
            _1533 = _1430 + (float4(((_49.SampleLevel(_13, float3(_1477, _1478 + 0.3333333432674407958984375f, _1479), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1509, _1509) * _1468);
            _1534 = _1431 + (float4(((_1482.xyz * 4.0f) - 2.0f.xxx) * _1498, _1498) * _1468);
        }
        else
        {
            _1531 = _1428;
            _1532 = _1429;
            _1533 = _1430;
            _1534 = _1431;
        }
        float4 _1617;
        float4 _1618;
        float4 _1619;
        float _1620;
        if (_1451 > 0.0f)
        {
            float3 _1543 = ((_1292 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1546 = _9_m106.xyz * 0.5f;
            float3 _1548 = clamp(_1543 - floor(_1543), _1546, 1.0f.xxx - _1546);
            float4 _1552 = _50.SampleLevel(_14, _1548, 0.0f);
            float _1554 = _1451 * (1.0f - _1325);
            float _1558 = _9_m106.y * 0.5f;
            float _1563 = _1548.x;
            float _1564 = clamp(_1548.y, _1558, 1.0f - _1558) * 0.3333333432674407958984375f;
            float _1565 = _1548.z;
            float4 _1568 = _51.SampleLevel(_13, float3(_1563, _1564, _1565), 0.0f);
            float _1584 = _1552.x;
            float _1595 = _1552.y;
            float _1606 = _1552.z;
            _1617 = _1532 + (float4(((_51.SampleLevel(_13, float3(_1563, _1564 + 0.666666686534881591796875f, _1565), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1606, _1606) * _1554);
            _1618 = _1533 + (float4(((_51.SampleLevel(_13, float3(_1563, _1564 + 0.3333333432674407958984375f, _1565), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1595, _1595) * _1554);
            _1619 = _1534 + (float4(((_1568.xyz * 4.0f) - 2.0f.xxx) * _1584, _1584) * _1554);
            _1620 = _1531 + (_1568.w * _1554);
        }
        else
        {
            _1617 = _1532;
            _1618 = _1533;
            _1619 = _1534;
            _1620 = _1531;
        }
        float _1623 = clamp((_1620 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1627 = _1617;
        _1628 = _1618;
        _1629 = _1619;
        _1630 = _1623 - _1325;
        _1631 = (_1623 + _1325) * 0.5f;
    }
    else
    {
        _1627 = 0.0f.xxxx;
        _1628 = 0.0f.xxxx;
        _1629 = 0.0f.xxxx;
        _1630 = 0.0f;
        _1631 = 1.0f;
    }
    float4 _1651 = _1629 + float4(_9_m108.x * _1631, (_9_m108.y * _1631) + ((_9_m108.w * _1630) * 0.5f), _9_m108.z * _1631, (_9_m108.w * _1631) + ((_9_m108.y * _1630) * 0.375f));
    float4 _1671 = _1628 + float4(_9_m109.x * _1631, (_9_m109.y * _1631) + ((_9_m109.w * _1630) * 0.5f), _9_m109.z * _1631, (_9_m109.w * _1631) + ((_9_m109.y * _1630) * 0.375f));
    float4 _1691 = _1627 + float4(_9_m110.x * _1631, (_9_m110.y * _1631) + ((_9_m110.w * _1630) * 0.5f), _9_m110.z * _1631, (_9_m110.w * _1631) + ((_9_m110.y * _1630) * 0.375f));
    float4 _1849;
    float4 _1850;
    float4 _1851;
    [branch]
    if (all(bool2(_415.x >= 0.0f.xx.x, _415.y >= 0.0f.xx.y)))
    {
        float4 _1699 = _45.SampleLevel(_13, _415, 0.0f);
        float4 _1700 = abs(_1699);
        float4 _1846;
        float4 _1847;
        float4 _1848;
        [branch]
        if (any(bool4(_1700.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1700.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1700.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1700.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1706 = length(_1699.yzw);
            uint _1708;
            float _1711;
            _1708 = 0u;
            _1711 = 1.0f;
            for (float _1713 = _1706; _1713 > 4.599999904632568359375f; )
            {
                _1708++;
                _1711 *= 0.5f;
                _1713 *= 0.5f;
                continue;
            }
            float4 _1717 = _1699 * _1711;
            float4 _1722 = float4(0.0f, _1717.yzw);
            float2 _1744 = (_44.SampleLevel(_13, float2(((((length(_1722) * _43_m3.x) + _43_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _43_m2.xy) + _43_m2.zw;
            float4 _1758;
            _1758 = float4(_1744.x * 3.5449078083038330078125f, _1722.yzw * _1744.y) * exp(_1717.x * 0.282094776630401611328125f);
            for (uint _1761 = 0u; _1761 < _1708; )
            {
                _1758 = mul(float4x4(_1758, float4(_1758.yx, 0.0f, 0.0f), float4(_1758.z, 0.0f, _1758.x, 0.0f), float4(_1758.w, 0.0f, 0.0f, _1758.x)) * 0.282094776630401611328125f, _1758);
                _1761++;
                continue;
            }
            float4x4 _1782 = float4x4(_1758, float4(_1758.yx, 0.0f, 0.0f), float4(_1758.z, 0.0f, _1758.x, 0.0f), float4(_1758.w, 0.0f, 0.0f, _1758.x)) * 0.282094776630401611328125f;
            float4 _1792 = mul(_1782, float4(_1651.w * 1.1283791065216064453125f, _1651.y * (-0.977204978466033935546875f), _1651.z * 0.977204978466033935546875f, _1651.x * (-0.977204978466033935546875f)));
            float4 _1812 = mul(_1782, float4(_1671.w * 1.1283791065216064453125f, _1671.y * (-0.977204978466033935546875f), _1671.z * 0.977204978466033935546875f, _1671.x * (-0.977204978466033935546875f)));
            float4 _1832 = mul(_1782, float4(_1691.w * 1.1283791065216064453125f, _1691.y * (-0.977204978466033935546875f), _1691.z * 0.977204978466033935546875f, _1691.x * (-0.977204978466033935546875f)));
            _1846 = float4(_1792.x * 0.886226952075958251953125f, _1792.w * (-1.02332675457000732421875f), _1792.y * (-1.02332675457000732421875f), _1792.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1847 = float4(_1812.x * 0.886226952075958251953125f, _1812.w * (-1.02332675457000732421875f), _1812.y * (-1.02332675457000732421875f), _1812.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1848 = float4(_1832.x * 0.886226952075958251953125f, _1832.w * (-1.02332675457000732421875f), _1832.y * (-1.02332675457000732421875f), _1832.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1846 = _1651;
            _1847 = _1671;
            _1848 = _1691;
        }
        _1849 = _1846;
        _1850 = _1847;
        _1851 = _1848;
    }
    else
    {
        _1849 = _1651;
        _1850 = _1671;
        _1851 = _1691;
    }
    float _1856 = max(0.0f, dot(_1849.xyz, _397) + _1849.w);
    float _1861 = max(0.0f, dot(_1850.xyz, _397) + _1850.w);
    float _1866 = max(0.0f, dot(_1851.xyz, _397) + _1851.w);
    float3 _1876 = reflect(_455, _982);
    float _1884 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1047, 0.001000000047497451305389404296875f))));
    float2 _1888 = floor(_402 * _27_m0.w);
    float _1905 = floor(_434 - _27_m2.y);
    float _1909 = clamp(_1905, 0.0f, _27_m1.x - 1.0f);
    uint _1919 = (_1905 <= _1909) ? (_24.Load(uint(_9_m21.z + int(_1888.x + (_1888.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1909)) * 4 + 0)) : 0u;
    float _1922 = dot(float4(_1856, _1861, _1866, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1924;
    float _1927;
    uint _1929;
    _1924 = 0.0f.xxx;
    _1927 = 1.0f;
    _1929 = _1919;
    uint _1930;
    float3 _1925;
    float _1928;
    bool _1932;
    [loop]
    for (;;)
    {
        _1932 = _1927 > 0.00999999977648258209228515625f;
        if ((_1929 != 0u) && _1932)
        {
            uint _1936 = firstbitlow(_1929);
            _1930 = _1929 ^ (1u << (_1936 & 31u));
            float3 _1956 = float3(dot(_27_m4[_1936]._m2, _431), dot(_27_m4[_1936]._m3, _431), dot(_27_m4[_1936]._m4, _431));
            float3 _1957 = abs(_1956);
            if (all(bool3(_1957.x <= _27_m4[_1936]._m1.xyz.x, _1957.y <= _27_m4[_1936]._m1.xyz.y, _1957.z <= _27_m4[_1936]._m1.xyz.z)))
            {
                float3 _1966 = _27_m4[_1936]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1968 = _1957 * 0.100000001490116119384765625f;
                float3 _1969 = _1968 * _1968;
                float3 _1972 = (_27_m4[_1936]._m1.xyz - _1957) * _27_m4[_1936]._m5.xyz;
                float3 _2020;
                [branch]
                if (_27_m4[_1936]._m6.x == 1.0f)
                {
                    float3 _2005 = float3(dot(_27_m4[_1936]._m2.xyz, _1876), dot(_27_m4[_1936]._m3.xyz, _1876), dot(_27_m4[_1936]._m4.xyz, _1876));
                    float3 _2007 = (_27_m4[_1936]._m1.xyz - _1956) / _2005;
                    float3 _2010 = ((-_27_m4[_1936]._m1.xyz) - _1956) / _2005;
                    bool3 _2011 = bool3(_2005.x > 0.0f.xxx.x, _2005.y > 0.0f.xxx.y, _2005.z > 0.0f.xxx.z);
                    float3 _2012 = float3(_2011.x ? _2007.x : _2010.x, _2011.y ? _2007.y : _2010.y, _2011.z ? _2007.z : _2010.z);
                    _2020 = _1956 + (_2005 * min(min(_2012.x, _2012.y), _2012.z));
                }
                else
                {
                    _2020 = _1876;
                }
                float3 _2021 = normalize(_2020);
                float3 _2024 = float3(int3(sign(_2021)));
                float3 _2027 = _2021 / dot(_2021, _2024).xxx;
                float3 _2041;
                if (_2027.z < 0.0f)
                {
                    float3 _2032 = abs(_2027);
                    float2 _2039 = _2024.xy * float2(1.0f - _2032.y, 1.0f - _2032.x);
                    _2041 = float3(_2039.x, _2039.y, _2027.z);
                }
                else
                {
                    _2041 = _2027;
                }
                float _2066 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1936]._m0, float4(_982, 1.0f))));
                float _2079 = clamp((min(_1972.x, min(_1972.y, _1972.z)) * _27_m4[_1936]._m6.y) + ((((((_1966 * _1966).x - ((_1969.x + _1969.y) + _1969.z)) * _27_m4[_1936]._m5.x) * _27_m4[_1936]._m5.x) * (1.0f - _27_m4[_1936]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1936]._m6.w;
                _1925 = _1924 + ((((_22.SampleLevel(_15, float3((((_2041.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1936]._m1.w), _1884).xyz * _27_m4[_1936]._m5.w) * ((((((clamp(abs(_1922 / _2066), 0.0f, 1.0f) * 2.0f) + _1922) / (2.0f + _2066)) - 1.0f) * _9_m23.w) + 1.0f)) * _2079) * _1927);
                _1928 = _1927 * (1.0f - _2079);
            }
            else
            {
                _1925 = _1924;
                _1928 = _1927;
            }
            _1924 = _1925;
            _1927 = _1928;
            _1929 = _1930;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _2148;
    if (_1932)
    {
        float3 _2087 = normalize(_1876);
        float3 _2090 = float3(int3(sign(_2087)));
        float3 _2093 = _2087 / dot(_2087, _2090).xxx;
        float3 _2107;
        if (_2093.z < 0.0f)
        {
            float3 _2098 = abs(_2093);
            float2 _2105 = _2090.xy * float2(1.0f - _2098.y, 1.0f - _2098.x);
            _2107 = float3(_2105.x, _2105.y, _2093.z);
        }
        else
        {
            _2107 = _2093;
        }
        float _2134 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_982, 1.0f))));
        _2148 = _1924 + ((_22.SampleLevel(_15, float3((((_2107.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1884).xyz * ((((((clamp(abs(_1922 / _2134), 0.0f, 1.0f) * 2.0f) + _1922) / (2.0f + _2134)) - 1.0f) * _9_m23.w) + 1.0f)) * _1927);
    }
    else
    {
        _2148 = _1924;
    }
    float3 _2154 = (_2148 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _2154 *= 0.25f + (0.75f * saturate(_1922));
    }
    float3 _2177;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _2171 = _20.SampleBias(_13, _4, _9_m16);
        float _2172 = _2171.x;
        _2177 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2172) + (_2154 * (1.0f - _2172));
    }
    else
    {
        _2177 = _2154;
    }
    float3 _2180 = (((float3(_1856, _1861, _1866) * _1051) * _9_m22.x) * _1275) + ((_2177 * (_1080 + ((_1055 * ((1.0f - _1081) / _1081)) * _1080))) * _1274);
    float4 _2182 = float4(_1233.x, _1233.y, _1233.z, _1233.w) + float4(_2180.x, _2180.y, _2180.z, 0.0f.xxxx.w);
    float3 _2185 = clamp(_2182.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _2200 = _429 * _9_m46.w;
    float _2205 = max(0.00999999977648258209228515625f, _2200 + _9_m47.w);
    float3 _2219 = exp(_9_m45.xyz * ((-max(0.0f, (_454 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2205)) / _2205) * exp(_2200 + _9_m48.w))));
    float _2222 = dot(_455, _9_m44.xyz);
    float _2228 = _9_m45.w * _9_m45.w;
    float _2232 = (1.0f + _2228) - ((2.0f * _9_m45.w) * _2222);
    float3 _2556;
    float _2557;
    if (_9_m55.z > 0.0f)
    {
        uint3 _2384 = (uint3(int3(_363, _364, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2385 = _2384.y;
        uint _2386 = _2384.z;
        uint _2389 = _2384.x + (_2385 * _2386);
        uint _2391 = _2385 + (_2386 * _2389);
        uint _2393 = _2386 + (_2389 * _2391);
        uint _2395 = _2389 + (_2391 * _2393);
        float _2419 = dot(_455, -_7_m0[2].xyz);
        float3 _2427 = _427 - _7_m11.xyz;
        float _2429 = (_9_m55.w * ((_2419 > 5.9604644775390625e-08f) ? (1.0f / _2419) : 0.0f)) * (1.0f / _454);
        float _2430 = _2427.y;
        float _2431 = _2429 * _2430;
        float _2433 = _7_m11.y + _2431;
        float _2434 = _2430 - _2431;
        float _2436 = (1.0f - _2429) * _454;
        float _2450 = max(-127.0f, _9_m49.z * _2434);
        float _2474 = max(-127.0f, _9_m52.x * _2434);
        float _2485 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2433 - _9_m49.x)))) * ((abs(_2450) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2450)) / _2450) : (0.693147182464599609375f - (0.2402265071868896484375f * _2450)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2433 - _9_m52.z)))) * ((abs(_2474) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2474)) / _2474) : (0.693147182464599609375f - (0.2402265071868896484375f * _2474))));
        float _2507 = clamp((_454 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2510 = clamp((max(clamp(exp2(-(_2485 * _2436)), 0.0f, 1.0f), _9_m51.w) + clamp((_454 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2507, 0.0f, 1.0f);
        float4 _2550 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _41.SampleLevel(_13, float3((_402 + ((((float3(uint3(_2395, _2391 + (_2393 * _2395), _355) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_434 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_434 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2552 = _2550.w;
        _2556 = _2550.xyz + (((_9_m51.xyz * (1.0f - _2510)) + (((_9_m54.xyz * pow(clamp(dot(_453, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2485 * max(_2436 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2507))) * _2552);
        _2557 = _2552 * _2510;
    }
    else
    {
        float3 _2260 = _427 - _7_m11.xyz;
        float _2262 = _2260.y;
        float _2276 = max(-127.0f, _9_m49.z * _2262);
        float _2300 = max(-127.0f, _9_m52.x * _2262);
        float _2311 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2276) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2276)) / _2276) : (0.693147182464599609375f - (0.2402265071868896484375f * _2276)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2300) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2300)) / _2300) : (0.693147182464599609375f - (0.2402265071868896484375f * _2300))));
        float _2333 = clamp((_454 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2336 = clamp((max(clamp(exp2(-(_2311 * _454)), 0.0f, 1.0f), _9_m51.w) + clamp((_454 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2333, 0.0f, 1.0f);
        _2556 = (_9_m51.xyz * (1.0f - _2336)) + (((_9_m54.xyz * pow(clamp(dot(_453, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2311 * max(_454 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2333));
        _2557 = _2336;
    }
    float3 _2560 = _2219 * _2557;
    float3 _2562 = (_2185 * _2560) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2222 * _2222)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2228) / max((12.56637096405029296875f * _2232) * sqrt(_2232), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2219)) * _2557) + _2556);
    if (RENODX_CUSTOM_FOG > 0.5f)
    {
        _2562 = (_2562 * 0.65f) + (_2185 * 0.35f);
    }
    float _2563 = dot(_2560, 0.3333333432674407958984375f.xxx);
    float4 _2564 = float4(_2562.x, _2562.y, _2562.z, _2182.w);
    _2564.w = _2563;
    float _2591 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _427) * _9_m61.z), 0.0f, 1.0f);
    float3 _2599 = lerp(_2185, _2564.xyz, min((1.0f - _2591) + ((_56.SampleLevel(_14, (_427 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _2591), 1.0f + _2563).xxx);
    _5 = float4(_2599.x, _2599.y, _2599.z, _2564.w);
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
