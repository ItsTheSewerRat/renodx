// DX11 0xFB48A847 -> Vulkan 0xA7660314
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

static float _350 = 0.0f;
static uint _351 = 0u;

#include "./renodx_injection.hlsli"

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

[[vk::binding(35, 3)]]
cbuffer _8_9 : register(b35)
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

[[vk::binding(37, 3)]] ByteAddressBuffer _24 : register(t37);
[[vk::binding(36, 3)]]
cbuffer _25_27 : register(b36)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(33, 3)]]
cbuffer _28_29 : register(b33)
{
    float4 _29_m0 : packoffset(c0);
    float4 _29_m1 : packoffset(c1);
    float4 _29_m2 : packoffset(c2);
    float4 _29_m3 : packoffset(c3);
    float4 _29_m4 : packoffset(c4);
    uint4 _29_m5 : packoffset(c5);
    float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(31, 3)]]
cbuffer _33_34 : register(b31)
{
    column_major float4x4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c4);
};

[[vk::binding(34, 3)]]
cbuffer _42_43 : register(b34)
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
[[vk::binding(28, 3)]] Texture2D<float4> _18 : register(t28);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23);
[[vk::binding(13, 3)]] Texture2DArray<float4> _22 : register(t13);
[[vk::binding(9, 3)]] Texture2D<float4> _30 : register(t9);
[[vk::binding(29, 3)]] Texture2D<float4> _31 : register(t29);
[[vk::binding(7, 3)]] Texture2D<float4> _32 : register(t7);
[[vk::binding(14, 3)]] Texture3D<float4> _36 : register(t14);
[[vk::binding(8, 3)]] Texture2D<float4> _37 : register(t8);
[[vk::binding(12, 3)]] Texture2D<float4> _38 : register(t12);
[[vk::binding(15, 3)]] Texture2D<float4> _39 : register(t15);
[[vk::binding(27, 3)]] Texture2D<float4> _40 : register(t27);
[[vk::binding(22, 3)]] Texture3D<float4> _41 : register(t22);
[[vk::binding(30, 3)]] Texture2D<float4> _44 : register(t30);
[[vk::binding(6, 3)]] Texture2D<float4> _45 : register(t6);
[[vk::binding(21, 3)]] Texture3D<float4> _46 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _47 : register(t18);
[[vk::binding(20, 3)]] Texture3D<float4> _48 : register(t20);
[[vk::binding(17, 3)]] Texture3D<float4> _49 : register(t17);
[[vk::binding(19, 3)]] Texture3D<float4> _50 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _51 : register(t16);
[[vk::binding(5, 3)]] Texture2D<float4> _52 : register(t5);
[[vk::binding(26, 3)]] Texture2D<float4> _53 : register(t26);
[[vk::binding(25, 3)]] Texture2D<float4> _54 : register(t25);
[[vk::binding(24, 3)]] Texture2D<float4> _55 : register(t24);

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

void frag_main()
{
    uint2 _356 = uint2(gl_FragCoord.xy);
    int _359 = int(_356.x);
    int _360 = int(_356.y);
    int2 _362 = int3(_359, _360, 0).xy;
    float4 _364 = _53.Load(int3(_362, 0));
    float4 _366 = _54.Load(int3(_362, 0));
    float _369 = _364.x;
    float _370 = _364.y;
    float _371 = _364.z;
    float2 _374 = (_366.xy * 2.0f) - 1.0f.xx;
    float _378 = 1.0f - dot(1.0f.xx, abs(_374));
    float3 _380 = float3(_374.x, _378, _374.y);
    float3 _392;
    if (_378 < 0.0f)
    {
        float2 _387 = _380.xz;
        bool2 _388 = bool2(_387.x >= 0.0f.xx.x, _387.y >= 0.0f.xx.y);
        float2 _390 = (1.0f.xx - abs(_380.zx)) * float2(_388.x ? 1.0f.xx.x : (-1.0f).xx.x, _388.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _392 = float3(_390.x, _380.y, _390.y);
    }
    else
    {
        _392 = _380;
    }
    float3 _393 = normalize(_392);
    float _394 = _366.z;
    float2 _398 = float2(_356);
    float2 _411 = gl_FragCoord.xy * _9_m0.zw;
    float2 _413 = (_411 * 2.0f) - 1.0f.xx;
    float4 _416 = float4(_413, _18.SampleLevel(_12, (_398 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _416.y = -_413.y;
    float4 _419 = mul(_7_m6, _416);
    float3 _423 = _419.xyz / _419.w.xxx;
    float _424 = _423.x;
    float _425 = _423.y;
    float4 _427 = float4(_424, _425, _423.z, 1.0f);
    float _430 = abs(mul(_7_m0, _427).z);
    float3 _445;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _445 = _7_m11.xyz - _423;
            break;
        }
        else
        {
            _445 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _446 = dot(_445, _445);
    float _448 = rsqrt(max(_446, 9.9999999392252902907785028219223e-09f));
    float3 _449 = _445 * _448;
    float _450 = _446 * _448;
    float3 _451 = -_449;
    bool _454 = _9_m129.x > 0.00048828125f;
    float2 _464;
    if (_454)
    {
        _464 = _52.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _464 = 1.0f.xx;
    }
    float _465 = dot(_393, float3(0.0f, -1.0f, 0.0f));
    float3 _521;
    float3 _522;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _492 = abs(_393.x);
        float _494 = abs(_393.y);
        float _496 = abs(_393.z);
        float3 _501 = float3(_492, _494, _496) * (1.0f / ((_492 + _494) + _496));
        float4 _514 = _36.SampleLevel(_14, _423 * _9_m124.x, 0.0f);
        float _515 = _514.x;
        _521 = float3(_515, _350, _350);
        _522 = ((((float3(0.0f, 0.0f, 1.0f) * _501.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _501.y)) + (float3(1.0f, 0.0f, 0.0f) * _501.z)) * ((_515 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_465)));
    }
    else
    {
        _521 = 0.0f.xxx;
        _522 = 0.0f.xxx;
    }
    float4 _536 = mul(_34_m0, float4((_423 + ((((_393 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_465, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _465), 0.100000001490116119384765625f, 1.0f)))) + _522, 1.0f));
    float2 _539 = (_536.xy * 0.5f) + 0.5f.xx;
    float4 _540 = float4(_539.x, _539.y, _536.z, _536.w);
    _540.y = 1.0f - _539.y;
    float _561;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _561 = _32.SampleCmpLevelZero(_16, (_540.xy + _34_m1.xy).xy, max(_536.z, 0.00048828125f));
    }
    else
    {
        _561 = 1.0f;
    }
    float _564 = _393.y;
    float _565 = clamp(_564, 0.0f, 1.0f);
    float _566 = lerp(_9_m125.w, 1.0f, _565);
    float2 _570 = _423.xz;
    float2 _575 = abs(_570 - _7_m11.xz);
    float _578 = max(_575.x, _575.y);
    float _588 = lerp(_566 * _561, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _578));
    float3 _595 = ddy_fine(_423);
    float3 _596 = ddx_fine(_423);
    float3 _597 = cross(_595, _596);
    float _603 = clamp((_597 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_597, _597)))).y, 0.0f, 1.0f);
    float _606 = _9_m118.z * 0.300000011920928955078125f;
    float _608 = _606 + 0.68599998950958251953125f;
    float _615 = 1.0f - clamp((_430 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _630 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_608, 0.9700000286102294921875f), 0.9900000095367431640625f, _565) + (smoothstep(0.990999996662139892578125f, 1.0f, _603) * step(_370, (_521.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _829;
    float _830;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_606 + 0.686999976634979248046875f, _608, _603) * smoothstep(-0.5f, -0.100000001490116119384765625f, _564)) > 0.00048828125f))
    {
        float3 _639 = abs(_393);
        float3 _640 = _639 * _639;
        float3 _645 = _640 * (1.0f / (_640.x + _640.z));
        float3 _647 = normalize(cross(_393, float3(0.0f, 1.0f, 0.0f)));
        float3 _649 = normalize(cross(_647, _393));
        float3 _665 = floor((_423 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _673 = frac(sin(dot(fmod(_665.xz + _665.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _677 = (step(0.0f.xx, _393.zx) * 2.0f) - 1.0f.xx;
        float3 _680 = _423;
        _680.x = _424 * _677.x;
        _680.z = _423.z * (-_677.y);
        float _692 = _521.x * _673;
        float2 _700 = float2(frac(((-_9_m118.x) * (((1.0f - _673) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_692 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_692 * 6.0f)));
        float _703 = floor(_673 * 5.0f) + 1.0f;
        float2 _707 = frac(float2(_703, 0.100000001490116119384765625f * _703) * _425);
        float2 _719 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _707 - (_700 - 1.0f.xx)), _700 - _707), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _707 - _700), (_700 + 1.0f.xx) - _707), step(_700, _707));
        float _720 = _719.x;
        float _722 = smoothstep(0.4000000059604644775390625f, 1.0f, _720 * _720);
        float _723 = _719.y;
        float _728 = (_723 * 2.0f) - 1.0f;
        float2 _737 = float2((_521.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _722) * _728), (1.0f.xx * _521.x).y * (_521.x + (((_722 * 0.00999999977648258209228515625f) * _722) * _728)));
        float4 _761 = (_37.SampleBias(_14, (_680.zy * _9_m119.xy) + _737, _9_m16) * _645.x) + (_37.SampleBias(_14, (_680.xy * _9_m119.xy) + _737, _9_m16) * _645.z);
        float2 _764 = (_761.xy * 2.0f) - 1.0f.xx;
        float _770 = _761.w;
        float _780 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_723 + (((_722 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_770 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_728 * _770) * 0.5f) + _722, 0.0f, 1.0f)));
        float _786 = _761.z;
        float _796 = (((lerp(0.100000001490116119384765625f, (_780 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _780, 0.0f, 1.0f), 5.0f), _786)) * _786) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_588 * step(0.04500000178813934326171875f, _371))) * _615);
        float2 _799 = _764.xy;
        float _804 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_799, _799), 0.0f, 1.0f)));
        float3 _805 = float3(_764, _804);
        float2 _809 = _805.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _796) * _9_m118.y);
        float3 _810 = float3(_809.x, _809.y, _805.z);
        _810.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _804, _796);
        _829 = lerp(_393, mul(float4x4(float4(_647.x, _649.x, _393.x, 0.0f), float4(_647.y, _649.y, _564, 0.0f), float4(_647.z, _649.z, _393.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_810 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_810, _810))), 0.0f)).xyz, _796.xxx);
        _830 = (_796 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _829 = _393;
        _830 = 0.0f;
    }
    float3 _978;
    float _979;
    [branch]
    if (_630 > 0.00048828125f)
    {
        float2 _837 = (-_570) * _9_m123.xy;
        float2 _839 = frac(_837);
        float2 _886;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _849 = frac(sin(dot(fmod(floor(_837), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _862 = floor(frac(_9_m122.x + _849) * (_9_m123.z * _9_m123.z));
            float _864 = 1.0f / _9_m123.z;
            _886 = ((_38.SampleBias(_13, frac((lerp(_839, _839.yx, step(_849, 0.5f).xx) * _864) + float2(_864 * fmod(_862, _9_m123.z), _864 * ((_9_m123.z - 1.0f) - floor(_862 * _864)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _886 = 0.0f.xx;
        }
        float2 _927;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _912 = _38.SampleBias(_14, (_837 + float2(0.0f, _9_m122.z)) + ((float2(_521.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _916 = _38.SampleBias(_14, (_837 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _521.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _922 = (((float4(_912.z, _912.w, _916.z, _916.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _521.x;
            _927 = _886 + (_922.xy + _922.zw);
        }
        else
        {
            _927 = _886;
        }
        float _935 = (((_521.x * 0.699999988079071044921875f) + (_394 * 0.300000011920928955078125f)) * clamp((_394 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _370;
        float _939 = smoothstep(min(_935, 0.9900000095367431640625f), clamp(_935 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _950 = _9_m117.x * _630;
        float3 _960 = float3(_927, max(0.00048828125f, sqrt(1.0f - clamp(dot(_927, _927), 0.0f, 1.0f))));
        float3 _966 = (_960 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_960, _960)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _978 = lerp(_393, _966, (((_950 * _939) * _588) * _615).xxx);
        _979 = max((smoothstep(0.0f, _370 * 0.20000000298023223876953125f, (_950 * clamp(lerp((_9_m123.w * (1.0f - _521.x)) * 0.5f, 1.0f, _939) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _966.y) * _588) * _615, 0.0f);
    }
    else
    {
        _978 = _829;
        _979 = 0.0f;
    }
    float _982 = min(_464.x, _464.y);
    float2 _984 = _464 * (1.0f - lerp(lerp(_9_m125.z * _566, 1.0f, _588), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _578)));
    float _985 = _984.x;
    float _988 = clamp((_371 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _989 = 1.0f - _394;
    float _1005 = lerp(clamp((clamp((_989 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _830)) + ((_979 * 0.100000001490116119384765625f) * _394), 0.0f, 1.0f), 1.0f, _369);
    float _1007 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _465);
    float _1016 = lerp(1.0f, 0.25f, ((_9_m117.x * _1005) * (1.0f - _369)) * _1007);
    float _1032 = (1.0f - lerp(_989, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1005) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_989)), 0.0f, 1.0f), _989, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1007) * (1.0f - _985))) * lerp(1.0f, 0.100000001490116119384765625f, max(_979, smoothstep(0.0f, 0.0500000007450580596923828125f, _830)));
    float _1037;
    float _1038;
    if (_454)
    {
        _1037 = lerp(1.0f, _464.y, _988);
        _1038 = lerp(1.0f, 0.0f, _988);
    }
    else
    {
        _1037 = 1.0f;
        _1038 = 1.0f;
    }
    float _1043 = lerp(lerp(min(_1037, _1032), _1032, _982), _394, _985);
    float3 _1045 = _55.Load(int3(_362, 0)).xyz * lerp(lerp(min(_1038, _1016), _1016, _982), 1.0f, _985);
    float3 _1046 = _1045 * _369;
    float3 _1047 = _1045 - _1046;
    float3 _1051 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _369)).xxx + _1046;
    float _1052 = dot(_978, _449);
    float _1053 = max(0.0f, _1052);
    float _1054 = _1043 * _1043;
    float _1055 = _1053 * _1053;
    float _1056 = _1055 * _1053;
    float2 _1057 = float2(1.0f, _1053);
    float2 _1060 = float2(1.0f, _1054);
    float _1061 = _1054 * _1054;
    float3 _1063 = float3(1.0f, _1054, _1061 * _1054);
    float _1068 = dot(mul(_1057, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1060) / dot(mul(float3(1.0f, _1055, _1056), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1063);
    float _1073 = dot(mul(_1057, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1060) / dot(mul(float3(1.0f, _1053, _1056), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1063);
    float3 _1076 = (_1051 * _1068) + _1073.xxx;
    float _1077 = _1068 + _1073;
    float4 _1090 = _30.Load(int3(_362, 0));
    float _1091 = _1090.x;
    float4 _1229;
    if (_1091 > 0.001000000047497451305389404296875f)
    {
        float3 _1101 = reflect(_451, _978);
        float3 _1102 = -_29_m0.xyz;
        float _1107 = dot(_1102, _1101);
        float3 _1109 = _1101 - (_1102 * _1107);
        bool3 _1111 = (_1107 < _29_m4.z).xxx;
        float3 _1119 = normalize((_1102 * _29_m4.z) + ((_1109 * rsqrt(max(6.103515625e-05f, dot(_1109, _1109)))) * _29_m4.y));
        float3 _1120 = float3(_1111.x ? _1119.x : _1101.x, _1111.y ? _1119.y : _1101.y, _1111.z ? _1119.z : _1101.z);
        float3 _1124 = _1120 + _449;
        float3 _1128 = _1124 * rsqrt(max(6.103515625e-05f, dot(_1124, _1124)));
        float _1131 = clamp(dot(_1120, _978), 0.0f, 1.0f);
        float _1133 = clamp(dot(_978, _1128), 0.0f, 1.0f);
        float _1136 = clamp(_1052, 0.0f, 1.0f);
        float _1157 = (((_1133 * _1061) - _1133) * _1133) + 1.0f;
        float _1160 = 1.0f - clamp(dot(_449, _1128), 0.0f, 1.0f);
        float _1161 = _1160 * _1160;
        float _1163 = (_1160 * _1161) * _1161;
        float _1187 = 1.0f - _1043;
        float _1194 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1187 * (1.04997003078460693359375f + (_1187 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1187))))));
        float _1195 = 1.0f - _1194;
        float3 _1198 = _1051 + ((1.0f.xxx - _1051) * 0.0476190485060214996337890625f);
        float3 _1214 = ((clamp((min(((_1051 * (1.0f - _1163)) + _1163.xxx) * ((_1061 / (_1157 * _1157)) * (0.5f / (((_1131 * sqrt(((((-_1136) * _1061) + _1136) * _1136) + _1061)) + (_1136 * sqrt(((((-_1131) * _1061) + _1131) * _1131) + _1061))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1198 * (((_39.SampleLevel(_13, (float2(_1136, _1043) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_13, (float2(_1131, _1043) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1194) / _1195)) * _1198) / (1.0f.xxx - (_1198 * _1195)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1131) + ((_1047 * 1.0f) * clamp(dot(_1120, _393), 0.0f, 1.0f))) * _29_m1.xyz;
        float3 _1227 = lerp(_1214, _1214 * _31.SampleBias(_13, float2(_1091, 0.5f), _9_m16).xyz, (1.0f - _1091).xxx) * min(_40.SampleLevel(_13, _411, 0.0f).x, 1.0f);
        _1229 = float4(_1227.x, _1227.y, _1227.z, 0.0f.xxxx.w);
    }
    else
    {
        _1229 = 0.0f.xxxx;
    }
    float3 _1231 = _370.xxx;
    float3 _1270;
    float3 _1271;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _1246 = min(_21.SampleBias(_12, _4, _9_m16).x, _370);
        _1270 = clamp((pow(abs(max(0.0f, dot(_393, _449)) + _1246), exp2(((-16.0f) * _1043) - 1.0f)) - 1.0f) + _1246, 0.0f, 1.0f).xxx;
        _1271 = max(_1246.xxx, ((((((_1047 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1246) + ((_1047 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1246) + ((_1047 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1246);
    }
    else
    {
        _1270 = _1231;
        _1271 = _1231;
    }
    _1229.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1270 : 1.0f.xxx;
    float3 _1288 = (_423 + (_393 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_398 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1298 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1307 = _1288 - (_9_m105.xyz + (_1298 * (-_9_m107.w)));
    float _1321 = max(clamp((max(abs(_1307.x), abs(_1307.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_1307.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1623;
    float4 _1624;
    float4 _1625;
    float _1626;
    float _1627;
    if ((_9_m105.w != 0.0f) && (_1321 < 1.0f))
    {
        float3 _1334 = _1288 - (_9_m105.xyz + (_1298 * (-_9_m107.y)));
        float _1348 = max(clamp((max(abs(_1334.x), abs(_1334.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1334.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1424;
        float4 _1425;
        float4 _1426;
        float4 _1427;
        if (_1348 < 1.0f)
        {
            float3 _1357 = ((_1288 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1359 = _1357 - floor(_1357);
            float4 _1363 = _46.SampleLevel(_14, _1359, 0.0f);
            float _1364 = 1.0f - _1348;
            float _1368 = _9_m106.y * 0.5f;
            float _1373 = _1359.x;
            float _1374 = clamp(_1359.y, _1368, 1.0f - _1368) * 0.3333333432674407958984375f;
            float _1375 = _1359.z;
            float4 _1378 = _47.SampleLevel(_13, float3(_1373, _1374, _1375), 0.0f);
            float _1394 = _1363.x;
            float _1404 = _1363.y;
            float _1414 = _1363.z;
            _1424 = _1321 + (_1378.w * _1364);
            _1425 = float4(((_47.SampleLevel(_13, float3(_1373, _1374 + 0.666666686534881591796875f, _1375), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1414, _1414) * _1364;
            _1426 = float4(((_47.SampleLevel(_13, float3(_1373, _1374 + 0.3333333432674407958984375f, _1375), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1404, _1404) * _1364;
            _1427 = float4(((_1378.xyz * 4.0f) - 2.0f.xxx) * _1394, _1394) * _1364;
        }
        else
        {
            _1424 = _1321;
            _1425 = 0.0f.xxxx;
            _1426 = 0.0f.xxxx;
            _1427 = 0.0f.xxxx;
        }
        float3 _1433 = _1288 - (_9_m105.xyz + (_1298 * (-_9_m107.z)));
        float _1447 = max(clamp((max(abs(_1433.x), abs(_1433.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1433.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1527;
        float4 _1528;
        float4 _1529;
        float4 _1530;
        if (_1447 < 1.0f)
        {
            float3 _1456 = ((_1288 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1458 = _1456 - floor(_1456);
            float4 _1462 = _48.SampleLevel(_14, _1458, 0.0f);
            float _1464 = _1348 * (1.0f - _1447);
            float _1468 = _9_m106.y * 0.5f;
            float _1473 = _1458.x;
            float _1474 = clamp(_1458.y, _1468, 1.0f - _1468) * 0.3333333432674407958984375f;
            float _1475 = _1458.z;
            float4 _1478 = _49.SampleLevel(_13, float3(_1473, _1474, _1475), 0.0f);
            float _1494 = _1462.x;
            float _1505 = _1462.y;
            float _1516 = _1462.z;
            _1527 = _1424 + (_1478.w * _1464);
            _1528 = _1425 + (float4(((_49.SampleLevel(_13, float3(_1473, _1474 + 0.666666686534881591796875f, _1475), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1516, _1516) * _1464);
            _1529 = _1426 + (float4(((_49.SampleLevel(_13, float3(_1473, _1474 + 0.3333333432674407958984375f, _1475), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1505, _1505) * _1464);
            _1530 = _1427 + (float4(((_1478.xyz * 4.0f) - 2.0f.xxx) * _1494, _1494) * _1464);
        }
        else
        {
            _1527 = _1424;
            _1528 = _1425;
            _1529 = _1426;
            _1530 = _1427;
        }
        float4 _1613;
        float4 _1614;
        float4 _1615;
        float _1616;
        if (_1447 > 0.0f)
        {
            float3 _1539 = ((_1288 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1542 = _9_m106.xyz * 0.5f;
            float3 _1544 = clamp(_1539 - floor(_1539), _1542, 1.0f.xxx - _1542);
            float4 _1548 = _50.SampleLevel(_14, _1544, 0.0f);
            float _1550 = _1447 * (1.0f - _1321);
            float _1554 = _9_m106.y * 0.5f;
            float _1559 = _1544.x;
            float _1560 = clamp(_1544.y, _1554, 1.0f - _1554) * 0.3333333432674407958984375f;
            float _1561 = _1544.z;
            float4 _1564 = _51.SampleLevel(_13, float3(_1559, _1560, _1561), 0.0f);
            float _1580 = _1548.x;
            float _1591 = _1548.y;
            float _1602 = _1548.z;
            _1613 = _1528 + (float4(((_51.SampleLevel(_13, float3(_1559, _1560 + 0.666666686534881591796875f, _1561), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1602, _1602) * _1550);
            _1614 = _1529 + (float4(((_51.SampleLevel(_13, float3(_1559, _1560 + 0.3333333432674407958984375f, _1561), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1591, _1591) * _1550);
            _1615 = _1530 + (float4(((_1564.xyz * 4.0f) - 2.0f.xxx) * _1580, _1580) * _1550);
            _1616 = _1527 + (_1564.w * _1550);
        }
        else
        {
            _1613 = _1528;
            _1614 = _1529;
            _1615 = _1530;
            _1616 = _1527;
        }
        float _1619 = clamp((_1616 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1623 = _1613;
        _1624 = _1614;
        _1625 = _1615;
        _1626 = _1619 - _1321;
        _1627 = (_1619 + _1321) * 0.5f;
    }
    else
    {
        _1623 = 0.0f.xxxx;
        _1624 = 0.0f.xxxx;
        _1625 = 0.0f.xxxx;
        _1626 = 0.0f;
        _1627 = 1.0f;
    }
    float4 _1647 = _1625 + float4(_9_m108.x * _1627, (_9_m108.y * _1627) + ((_9_m108.w * _1626) * 0.5f), _9_m108.z * _1627, (_9_m108.w * _1627) + ((_9_m108.y * _1626) * 0.375f));
    float4 _1667 = _1624 + float4(_9_m109.x * _1627, (_9_m109.y * _1627) + ((_9_m109.w * _1626) * 0.5f), _9_m109.z * _1627, (_9_m109.w * _1627) + ((_9_m109.y * _1626) * 0.375f));
    float4 _1687 = _1623 + float4(_9_m110.x * _1627, (_9_m110.y * _1627) + ((_9_m110.w * _1626) * 0.5f), _9_m110.z * _1627, (_9_m110.w * _1627) + ((_9_m110.y * _1626) * 0.375f));
    float4 _1845;
    float4 _1846;
    float4 _1847;
    [branch]
    if (all(bool2(_411.x >= 0.0f.xx.x, _411.y >= 0.0f.xx.y)))
    {
        float4 _1695 = _45.SampleLevel(_13, _411, 0.0f);
        float4 _1696 = abs(_1695);
        float4 _1842;
        float4 _1843;
        float4 _1844;
        [branch]
        if (any(bool4(_1696.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1696.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1696.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1696.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1702 = length(_1695.yzw);
            uint _1704;
            float _1707;
            _1704 = 0u;
            _1707 = 1.0f;
            for (float _1709 = _1702; _1709 > 4.599999904632568359375f; )
            {
                _1704++;
                _1707 *= 0.5f;
                _1709 *= 0.5f;
                continue;
            }
            float4 _1713 = _1695 * _1707;
            float4 _1718 = float4(0.0f, _1713.yzw);
            float2 _1740 = (_44.SampleLevel(_13, float2(((((length(_1718) * _43_m3.x) + _43_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _43_m2.xy) + _43_m2.zw;
            float4 _1754;
            _1754 = float4(_1740.x * 3.5449078083038330078125f, _1718.yzw * _1740.y) * exp(_1713.x * 0.282094776630401611328125f);
            for (uint _1757 = 0u; _1757 < _1704; )
            {
                _1754 = mul(float4x4(_1754, float4(_1754.yx, 0.0f, 0.0f), float4(_1754.z, 0.0f, _1754.x, 0.0f), float4(_1754.w, 0.0f, 0.0f, _1754.x)) * 0.282094776630401611328125f, _1754);
                _1757++;
                continue;
            }
            float4x4 _1778 = float4x4(_1754, float4(_1754.yx, 0.0f, 0.0f), float4(_1754.z, 0.0f, _1754.x, 0.0f), float4(_1754.w, 0.0f, 0.0f, _1754.x)) * 0.282094776630401611328125f;
            float4 _1788 = mul(_1778, float4(_1647.w * 1.1283791065216064453125f, _1647.y * (-0.977204978466033935546875f), _1647.z * 0.977204978466033935546875f, _1647.x * (-0.977204978466033935546875f)));
            float4 _1808 = mul(_1778, float4(_1667.w * 1.1283791065216064453125f, _1667.y * (-0.977204978466033935546875f), _1667.z * 0.977204978466033935546875f, _1667.x * (-0.977204978466033935546875f)));
            float4 _1828 = mul(_1778, float4(_1687.w * 1.1283791065216064453125f, _1687.y * (-0.977204978466033935546875f), _1687.z * 0.977204978466033935546875f, _1687.x * (-0.977204978466033935546875f)));
            _1842 = float4(_1788.x * 0.886226952075958251953125f, _1788.w * (-1.02332675457000732421875f), _1788.y * (-1.02332675457000732421875f), _1788.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1843 = float4(_1808.x * 0.886226952075958251953125f, _1808.w * (-1.02332675457000732421875f), _1808.y * (-1.02332675457000732421875f), _1808.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1844 = float4(_1828.x * 0.886226952075958251953125f, _1828.w * (-1.02332675457000732421875f), _1828.y * (-1.02332675457000732421875f), _1828.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1842 = _1647;
            _1843 = _1667;
            _1844 = _1687;
        }
        _1845 = _1842;
        _1846 = _1843;
        _1847 = _1844;
    }
    else
    {
        _1845 = _1647;
        _1846 = _1667;
        _1847 = _1687;
    }
    float _1852 = max(0.0f, dot(_1845.xyz, _393) + _1845.w);
    float _1857 = max(0.0f, dot(_1846.xyz, _393) + _1846.w);
    float _1862 = max(0.0f, dot(_1847.xyz, _393) + _1847.w);
    float3 _1872 = reflect(_451, _978);
    float _1880 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1043, 0.001000000047497451305389404296875f))));
    float2 _1884 = floor(_398 * _27_m0.w);
    float _1901 = floor(_430 - _27_m2.y);
    float _1905 = clamp(_1901, 0.0f, _27_m1.x - 1.0f);
    uint _1915 = (_1901 <= _1905) ? (_24.Load(uint(_9_m21.z + int(_1884.x + (_1884.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1905)) * 4 + 0)) : 0u;
    float _1918 = dot(float4(_1852, _1857, _1862, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1920;
    float _1923;
    uint _1925;
    _1920 = 0.0f.xxx;
    _1923 = 1.0f;
    _1925 = _1915;
    uint _1926;
    float3 _1921;
    float _1924;
    bool _1928;
    [loop]
    for (;;)
    {
        _1928 = _1923 > 0.00999999977648258209228515625f;
        if ((_1925 != 0u) && _1928)
        {
            uint _1932 = firstbitlow(_1925);
            _1926 = _1925 ^ (1u << (_1932 & 31u));
            float3 _1952 = float3(dot(_27_m4[_1932]._m2, _427), dot(_27_m4[_1932]._m3, _427), dot(_27_m4[_1932]._m4, _427));
            float3 _1953 = abs(_1952);
            if (all(bool3(_1953.x <= _27_m4[_1932]._m1.xyz.x, _1953.y <= _27_m4[_1932]._m1.xyz.y, _1953.z <= _27_m4[_1932]._m1.xyz.z)))
            {
                float3 _1962 = _27_m4[_1932]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1964 = _1953 * 0.100000001490116119384765625f;
                float3 _1965 = _1964 * _1964;
                float3 _1968 = (_27_m4[_1932]._m1.xyz - _1953) * _27_m4[_1932]._m5.xyz;
                float3 _2016;
                [branch]
                if (_27_m4[_1932]._m6.x == 1.0f)
                {
                    float3 _2001 = float3(dot(_27_m4[_1932]._m2.xyz, _1872), dot(_27_m4[_1932]._m3.xyz, _1872), dot(_27_m4[_1932]._m4.xyz, _1872));
                    float3 _2003 = (_27_m4[_1932]._m1.xyz - _1952) / _2001;
                    float3 _2006 = ((-_27_m4[_1932]._m1.xyz) - _1952) / _2001;
                    bool3 _2007 = bool3(_2001.x > 0.0f.xxx.x, _2001.y > 0.0f.xxx.y, _2001.z > 0.0f.xxx.z);
                    float3 _2008 = float3(_2007.x ? _2003.x : _2006.x, _2007.y ? _2003.y : _2006.y, _2007.z ? _2003.z : _2006.z);
                    _2016 = _1952 + (_2001 * min(min(_2008.x, _2008.y), _2008.z));
                }
                else
                {
                    _2016 = _1872;
                }
                float3 _2017 = normalize(_2016);
                float3 _2020 = float3(int3(sign(_2017)));
                float3 _2023 = _2017 / dot(_2017, _2020).xxx;
                float3 _2037;
                if (_2023.z < 0.0f)
                {
                    float3 _2028 = abs(_2023);
                    float2 _2035 = _2020.xy * float2(1.0f - _2028.y, 1.0f - _2028.x);
                    _2037 = float3(_2035.x, _2035.y, _2023.z);
                }
                else
                {
                    _2037 = _2023;
                }
                float _2062 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1932]._m0, float4(_978, 1.0f))));
                float _2075 = clamp((min(_1968.x, min(_1968.y, _1968.z)) * _27_m4[_1932]._m6.y) + ((((((_1962 * _1962).x - ((_1965.x + _1965.y) + _1965.z)) * _27_m4[_1932]._m5.x) * _27_m4[_1932]._m5.x) * (1.0f - _27_m4[_1932]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1932]._m6.w;
                _1921 = _1920 + ((((_22.SampleLevel(_15, float3((((_2037.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1932]._m1.w), _1880).xyz * _27_m4[_1932]._m5.w) * ((((((clamp(abs(_1918 / _2062), 0.0f, 1.0f) * 2.0f) + _1918) / (2.0f + _2062)) - 1.0f) * _9_m23.w) + 1.0f)) * _2075) * _1923);
                _1924 = _1923 * (1.0f - _2075);
            }
            else
            {
                _1921 = _1920;
                _1924 = _1923;
            }
            _1920 = _1921;
            _1923 = _1924;
            _1925 = _1926;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _2144;
    if (_1928)
    {
        float3 _2083 = normalize(_1872);
        float3 _2086 = float3(int3(sign(_2083)));
        float3 _2089 = _2083 / dot(_2083, _2086).xxx;
        float3 _2103;
        if (_2089.z < 0.0f)
        {
            float3 _2094 = abs(_2089);
            float2 _2101 = _2086.xy * float2(1.0f - _2094.y, 1.0f - _2094.x);
            _2103 = float3(_2101.x, _2101.y, _2089.z);
        }
        else
        {
            _2103 = _2089;
        }
        float _2130 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_978, 1.0f))));
        _2144 = _1920 + ((_22.SampleLevel(_15, float3((((_2103.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1880).xyz * ((((((clamp(abs(_1918 / _2130), 0.0f, 1.0f) * 2.0f) + _1918) / (2.0f + _2130)) - 1.0f) * _9_m23.w) + 1.0f)) * _1923);
    }
    else
    {
        _2144 = _1920;
    }
    float3 _2150 = (_2144 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _2150 *= 0.25f + (0.75f * saturate(_1918));
    }
    float3 _2173;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _2167 = _20.SampleBias(_13, _4, _9_m16);
        float _2168 = _2167.x;
        _2173 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2168) + (_2150 * (1.0f - _2168));
    }
    else
    {
        _2173 = _2150;
    }
    float3 _2176 = (((float3(_1852, _1857, _1862) * _1047) * _9_m22.x) * _1271) + ((_2173 * (_1076 + ((_1051 * ((1.0f - _1077) / _1077)) * _1076))) * _1270);
    float4 _2178 = float4(_1229.x, _1229.y, _1229.z, _1229.w) + float4(_2176.x, _2176.y, _2176.z, 0.0f.xxxx.w);
    float _2196 = _425 * _9_m46.w;
    float _2201 = max(0.00999999977648258209228515625f, _2196 + _9_m47.w);
    float3 _2215 = exp(_9_m45.xyz * ((-max(0.0f, (_450 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2201)) / _2201) * exp(_2196 + _9_m48.w))));
    float _2218 = dot(_451, _9_m44.xyz);
    float _2224 = _9_m45.w * _9_m45.w;
    float _2228 = (1.0f + _2224) - ((2.0f * _9_m45.w) * _2218);
    float3 _2552;
    float _2553;
    if (_9_m55.z > 0.0f)
    {
        uint3 _2380 = (uint3(int3(_359, _360, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2381 = _2380.y;
        uint _2382 = _2380.z;
        uint _2385 = _2380.x + (_2381 * _2382);
        uint _2387 = _2381 + (_2382 * _2385);
        uint _2389 = _2382 + (_2385 * _2387);
        uint _2391 = _2385 + (_2387 * _2389);
        float _2415 = dot(_451, -_7_m0[2].xyz);
        float3 _2423 = _423 - _7_m11.xyz;
        float _2425 = (_9_m55.w * ((_2415 > 5.9604644775390625e-08f) ? (1.0f / _2415) : 0.0f)) * (1.0f / _450);
        float _2426 = _2423.y;
        float _2427 = _2425 * _2426;
        float _2429 = _7_m11.y + _2427;
        float _2430 = _2426 - _2427;
        float _2432 = (1.0f - _2425) * _450;
        float _2446 = max(-127.0f, _9_m49.z * _2430);
        float _2470 = max(-127.0f, _9_m52.x * _2430);
        float _2481 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2429 - _9_m49.x)))) * ((abs(_2446) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2446)) / _2446) : (0.693147182464599609375f - (0.2402265071868896484375f * _2446)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2429 - _9_m52.z)))) * ((abs(_2470) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2470)) / _2470) : (0.693147182464599609375f - (0.2402265071868896484375f * _2470))));
        float _2503 = clamp((_450 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2506 = clamp((max(clamp(exp2(-(_2481 * _2432)), 0.0f, 1.0f), _9_m51.w) + clamp((_450 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2503, 0.0f, 1.0f);
        float4 _2546 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _41.SampleLevel(_13, float3((_398 + ((((float3(uint3(_2391, _2387 + (_2389 * _2391), _351) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_430 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_430 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2548 = _2546.w;
        _2552 = _2546.xyz + (((_9_m51.xyz * (1.0f - _2506)) + (((_9_m54.xyz * pow(clamp(dot(_449, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2481 * max(_2432 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2503))) * _2548);
        _2553 = _2548 * _2506;
    }
    else
    {
        float3 _2256 = _423 - _7_m11.xyz;
        float _2258 = _2256.y;
        float _2272 = max(-127.0f, _9_m49.z * _2258);
        float _2296 = max(-127.0f, _9_m52.x * _2258);
        float _2307 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2272) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2272)) / _2272) : (0.693147182464599609375f - (0.2402265071868896484375f * _2272)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2296) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2296)) / _2296) : (0.693147182464599609375f - (0.2402265071868896484375f * _2296))));
        float _2329 = clamp((_450 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2332 = clamp((max(clamp(exp2(-(_2307 * _450)), 0.0f, 1.0f), _9_m51.w) + clamp((_450 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2329, 0.0f, 1.0f);
        _2552 = (_9_m51.xyz * (1.0f - _2332)) + (((_9_m54.xyz * pow(clamp(dot(_449, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2307 * max(_450 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2329));
        _2553 = _2332;
    }
    float3 _2556 = _2215 * _2553;
    float3 _2558 = (clamp(_2178.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2556) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2218 * _2218)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2224) / max((12.56637096405029296875f * _2228) * sqrt(_2228), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2215)) * _2553) + _2552);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _2558 = (_2558 * 0.65f) + (clamp(_2178.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _2560 = float4(_2558.x, _2558.y, _2558.z, _2178.w);
    _2560.w = dot(_2556, 0.3333333432674407958984375f.xxx);
    _5 = _2560;
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
