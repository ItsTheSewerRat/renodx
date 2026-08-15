// DX11 0x4C421100 -> Vulkan 0xE36852CA
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

static float _362 = 0.0f;
static uint _363 = 0u;

#include "./renodx_injection.hlsli"

[[vk::binding(35, 3)]]
cbuffer _6_7 : register(b35)
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

[[vk::binding(39, 3)]]
cbuffer _8_9 : register(b39)
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

[[vk::binding(41, 3)]] ByteAddressBuffer _24 : register(t41);
[[vk::binding(40, 3)]]
cbuffer _25_27 : register(b40)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(37, 3)]]
cbuffer _28_29 : register(b37)
{
    float4 _29_m0 : packoffset(c0);
    float4 _29_m1 : packoffset(c1);
    float4 _29_m2 : packoffset(c2);
    float4 _29_m3 : packoffset(c3);
    float4 _29_m4 : packoffset(c4);
    uint4 _29_m5 : packoffset(c5);
    float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(34, 3)]]
cbuffer _33_34 : register(b34)
{
    column_major float4x4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c4);
};

[[vk::binding(36, 3)]]
cbuffer _42_43 : register(b36)
{
    float4 _43_m0[15] : packoffset(c0);
    float4 _43_m1[15] : packoffset(c15);
};

[[vk::binding(38, 3)]]
cbuffer _46_47 : register(b38)
{
    float4 _47_m0 : packoffset(c0);
    float4 _47_m1 : packoffset(c1);
    float4 _47_m2 : packoffset(c2);
    float4 _47_m3 : packoffset(c3);
    float4 _47_m4 : packoffset(c4);
    uint4 _47_m5 : packoffset(c5);
    float4 _47_m6 : packoffset(c6);
    float4 _47_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3);
[[vk::binding(31, 3)]] Texture2D<float4> _18 : register(t31);
[[vk::binding(12, 3)]] Texture2D<float4> _19 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13);
[[vk::binding(25, 3)]] Texture2D<float4> _21 : register(t25);
[[vk::binding(15, 3)]] Texture2DArray<float4> _22 : register(t15);
[[vk::binding(11, 3)]] Texture2D<float4> _30 : register(t11);
[[vk::binding(32, 3)]] Texture2D<float4> _31 : register(t32);
[[vk::binding(7, 3)]] Texture2D<float4> _32 : register(t7);
[[vk::binding(16, 3)]] Texture3D<float4> _36 : register(t16);
[[vk::binding(8, 3)]] Texture2D<float4> _37 : register(t8);
[[vk::binding(14, 3)]] Texture2D<float4> _38 : register(t14);
[[vk::binding(17, 3)]] Texture2D<float4> _39 : register(t17);
[[vk::binding(9, 3)]] Texture2DArray<float4> _40 : register(t9);
[[vk::binding(10, 3)]] Texture2DArray<float4> _41 : register(t10);
[[vk::binding(30, 3)]] Texture2D<float4> _44 : register(t30);
[[vk::binding(24, 3)]] Texture3D<float4> _45 : register(t24);
[[vk::binding(33, 3)]] Texture2D<float4> _48 : register(t33);
[[vk::binding(6, 3)]] Texture2D<float4> _49 : register(t6);
[[vk::binding(23, 3)]] Texture3D<float4> _50 : register(t23);
[[vk::binding(20, 3)]] Texture3D<float4> _51 : register(t20);
[[vk::binding(22, 3)]] Texture3D<float4> _52 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _53 : register(t19);
[[vk::binding(21, 3)]] Texture3D<float4> _54 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _55 : register(t18);
[[vk::binding(5, 3)]] Texture2D<float4> _56 : register(t5);
[[vk::binding(29, 3)]] Texture2D<float4> _57 : register(t29);
[[vk::binding(28, 3)]] Texture2D<float4> _58 : register(t28);
[[vk::binding(27, 3)]] Texture2D<float4> _59 : register(t27);
[[vk::binding(26, 3)]] Texture3D<float4> _60 : register(t26);

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
    uint2 _368 = uint2(gl_FragCoord.xy);
    int _371 = int(_368.x);
    int _372 = int(_368.y);
    int2 _374 = int3(_371, _372, 0).xy;
    float4 _376 = _57.Load(int3(_374, 0));
    float4 _378 = _58.Load(int3(_374, 0));
    float4 _380 = _59.Load(int3(_374, 0));
    float _381 = _376.x;
    float _382 = _376.y;
    float _383 = _376.z;
    uint _393 = uint(int((round(_376.w * 3.0f) * 4.0f) + round(_378.w * 3.0f)));
    float2 _396 = (_378.xy * 2.0f) - 1.0f.xx;
    float _400 = 1.0f - dot(1.0f.xx, abs(_396));
    float3 _402 = float3(_396.x, _400, _396.y);
    float3 _414;
    if (_400 < 0.0f)
    {
        float2 _409 = _402.xz;
        bool2 _410 = bool2(_409.x >= 0.0f.xx.x, _409.y >= 0.0f.xx.y);
        float2 _412 = (1.0f.xx - abs(_402.zx)) * float2(_410.x ? 1.0f.xx.x : (-1.0f).xx.x, _410.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _414 = float3(_412.x, _402.y, _412.y);
    }
    else
    {
        _414 = _402;
    }
    float3 _415 = normalize(_414);
    float _416 = _378.z;
    float _418 = _380.w;
    float2 _421 = float2(_368);
    float2 _434 = gl_FragCoord.xy * _9_m0.zw;
    float2 _436 = (_434 * 2.0f) - 1.0f.xx;
    float4 _439 = float4(_436, _18.SampleLevel(_12, (_421 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _439.y = -_436.y;
    float4 _442 = mul(_7_m6, _439);
    float3 _446 = _442.xyz / _442.w.xxx;
    float _447 = _446.x;
    float _448 = _446.y;
    float4 _450 = float4(_447, _448, _446.z, 1.0f);
    float _453 = abs(mul(_7_m0, _450).z);
    float3 _468;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _468 = _7_m11.xyz - _446;
            break;
        }
        else
        {
            _468 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _469 = dot(_468, _468);
    float _471 = rsqrt(max(_469, 9.9999999392252902907785028219223e-09f));
    float3 _472 = _468 * _471;
    float _473 = _469 * _471;
    float3 _474 = -_472;
    bool _477 = _9_m129.x > 0.00048828125f;
    float2 _487;
    if (_477)
    {
        _487 = _56.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _487 = 1.0f.xx;
    }
    float _488 = dot(_415, float3(0.0f, -1.0f, 0.0f));
    float3 _544;
    float3 _545;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _515 = abs(_415.x);
        float _517 = abs(_415.y);
        float _519 = abs(_415.z);
        float3 _524 = float3(_515, _517, _519) * (1.0f / ((_515 + _517) + _519));
        float4 _537 = _36.SampleLevel(_14, _446 * _9_m124.x, 0.0f);
        float _538 = _537.x;
        _544 = float3(_538, _362, _362);
        _545 = ((((float3(0.0f, 0.0f, 1.0f) * _524.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _524.y)) + (float3(1.0f, 0.0f, 0.0f) * _524.z)) * ((_538 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_488)));
    }
    else
    {
        _544 = 0.0f.xxx;
        _545 = 0.0f.xxx;
    }
    float4 _559 = mul(_34_m0, float4((_446 + ((((_415 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_488, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _488), 0.100000001490116119384765625f, 1.0f)))) + _545, 1.0f));
    float2 _562 = (_559.xy * 0.5f) + 0.5f.xx;
    float4 _563 = float4(_562.x, _562.y, _559.z, _559.w);
    _563.y = 1.0f - _562.y;
    float _584;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _584 = _32.SampleCmpLevelZero(_16, (_563.xy + _34_m1.xy).xy, max(_559.z, 0.00048828125f));
    }
    else
    {
        _584 = 1.0f;
    }
    float _587 = _415.y;
    float _588 = clamp(_587, 0.0f, 1.0f);
    float _589 = lerp(_9_m125.w, 1.0f, _588);
    float2 _593 = _446.xz;
    float2 _598 = abs(_593 - _7_m11.xz);
    float _601 = max(_598.x, _598.y);
    float _611 = lerp(_589 * _584, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _601));
    float3 _618 = ddy_fine(_446);
    float3 _619 = ddx_fine(_446);
    float3 _620 = cross(_618, _619);
    float _626 = clamp((_620 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_620, _620)))).y, 0.0f, 1.0f);
    float _629 = _9_m118.z * 0.300000011920928955078125f;
    float _631 = _629 + 0.68599998950958251953125f;
    float _638 = 1.0f - clamp((_453 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _653 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_631, 0.9700000286102294921875f), 0.9900000095367431640625f, _588) + (smoothstep(0.990999996662139892578125f, 1.0f, _626) * step(_382, (_544.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _852;
    float _853;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_629 + 0.686999976634979248046875f, _631, _626) * smoothstep(-0.5f, -0.100000001490116119384765625f, _587)) > 0.00048828125f))
    {
        float3 _662 = abs(_415);
        float3 _663 = _662 * _662;
        float3 _668 = _663 * (1.0f / (_663.x + _663.z));
        float3 _670 = normalize(cross(_415, float3(0.0f, 1.0f, 0.0f)));
        float3 _672 = normalize(cross(_670, _415));
        float3 _688 = floor((_446 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _696 = frac(sin(dot(fmod(_688.xz + _688.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _700 = (step(0.0f.xx, _415.zx) * 2.0f) - 1.0f.xx;
        float3 _703 = _446;
        _703.x = _447 * _700.x;
        _703.z = _446.z * (-_700.y);
        float _715 = _544.x * _696;
        float2 _723 = float2(frac(((-_9_m118.x) * (((1.0f - _696) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_715 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_715 * 6.0f)));
        float _726 = floor(_696 * 5.0f) + 1.0f;
        float2 _730 = frac(float2(_726, 0.100000001490116119384765625f * _726) * _448);
        float2 _742 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _730 - (_723 - 1.0f.xx)), _723 - _730), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _730 - _723), (_723 + 1.0f.xx) - _730), step(_723, _730));
        float _743 = _742.x;
        float _745 = smoothstep(0.4000000059604644775390625f, 1.0f, _743 * _743);
        float _746 = _742.y;
        float _751 = (_746 * 2.0f) - 1.0f;
        float2 _760 = float2((_544.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _745) * _751), (1.0f.xx * _544.x).y * (_544.x + (((_745 * 0.00999999977648258209228515625f) * _745) * _751)));
        float4 _784 = (_37.SampleBias(_14, (_703.zy * _9_m119.xy) + _760, _9_m16) * _668.x) + (_37.SampleBias(_14, (_703.xy * _9_m119.xy) + _760, _9_m16) * _668.z);
        float2 _787 = (_784.xy * 2.0f) - 1.0f.xx;
        float _793 = _784.w;
        float _803 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_746 + (((_745 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_793 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_751 * _793) * 0.5f) + _745, 0.0f, 1.0f)));
        float _809 = _784.z;
        float _819 = (((lerp(0.100000001490116119384765625f, (_803 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _803, 0.0f, 1.0f), 5.0f), _809)) * _809) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_611 * step(0.04500000178813934326171875f, _383))) * _638);
        float2 _822 = _787.xy;
        float _827 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_822, _822), 0.0f, 1.0f)));
        float3 _828 = float3(_787, _827);
        float2 _832 = _828.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _819) * _9_m118.y);
        float3 _833 = float3(_832.x, _832.y, _828.z);
        _833.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _827, _819);
        _852 = lerp(_415, mul(float4x4(float4(_670.x, _672.x, _415.x, 0.0f), float4(_670.y, _672.y, _587, 0.0f), float4(_670.z, _672.z, _415.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_833 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_833, _833))), 0.0f)).xyz, _819.xxx);
        _853 = (_819 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _852 = _415;
        _853 = 0.0f;
    }
    float3 _1001;
    float _1002;
    [branch]
    if (_653 > 0.00048828125f)
    {
        float2 _860 = (-_593) * _9_m123.xy;
        float2 _862 = frac(_860);
        float2 _909;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _872 = frac(sin(dot(fmod(floor(_860), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _885 = floor(frac(_9_m122.x + _872) * (_9_m123.z * _9_m123.z));
            float _887 = 1.0f / _9_m123.z;
            _909 = ((_38.SampleBias(_13, frac((lerp(_862, _862.yx, step(_872, 0.5f).xx) * _887) + float2(_887 * fmod(_885, _9_m123.z), _887 * ((_9_m123.z - 1.0f) - floor(_885 * _887)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _909 = 0.0f.xx;
        }
        float2 _950;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _935 = _38.SampleBias(_14, (_860 + float2(0.0f, _9_m122.z)) + ((float2(_544.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _939 = _38.SampleBias(_14, (_860 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _544.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _945 = (((float4(_935.z, _935.w, _939.z, _939.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _544.x;
            _950 = _909 + (_945.xy + _945.zw);
        }
        else
        {
            _950 = _909;
        }
        float _958 = (((_544.x * 0.699999988079071044921875f) + (_416 * 0.300000011920928955078125f)) * clamp((_416 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _382;
        float _962 = smoothstep(min(_958, 0.9900000095367431640625f), clamp(_958 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _973 = _9_m117.x * _653;
        float3 _983 = float3(_950, max(0.00048828125f, sqrt(1.0f - clamp(dot(_950, _950), 0.0f, 1.0f))));
        float3 _989 = (_983 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_983, _983)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _1001 = lerp(_415, _989, (((_973 * _962) * _611) * _638).xxx);
        _1002 = max((smoothstep(0.0f, _382 * 0.20000000298023223876953125f, (_973 * clamp(lerp((_9_m123.w * (1.0f - _544.x)) * 0.5f, 1.0f, _962) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _989.y) * _611) * _638, 0.0f);
    }
    else
    {
        _1001 = _852;
        _1002 = 0.0f;
    }
    float _1005 = min(_487.x, _487.y);
    float2 _1007 = _487 * (1.0f - lerp(lerp(_9_m125.z * _589, 1.0f, _611), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _601)));
    float _1008 = _1007.x;
    float _1011 = clamp((_383 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _1012 = 1.0f - _416;
    float _1028 = lerp(clamp((clamp((_1012 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _853)) + ((_1002 * 0.100000001490116119384765625f) * _416), 0.0f, 1.0f), 1.0f, _381);
    float _1030 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _488);
    float _1039 = lerp(1.0f, 0.25f, ((_9_m117.x * _1028) * (1.0f - _381)) * _1030);
    float _1055 = (1.0f - lerp(_1012, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1028) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1012)), 0.0f, 1.0f), _1012, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1030) * (1.0f - _1008))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1002, smoothstep(0.0f, 0.0500000007450580596923828125f, _853)));
    float _1060;
    float _1061;
    if (_477)
    {
        _1060 = lerp(1.0f, _487.y, _1011);
        _1061 = lerp(1.0f, 0.0f, _1011);
    }
    else
    {
        _1060 = 1.0f;
        _1061 = 1.0f;
    }
    float _1066 = lerp(lerp(min(_1060, _1055), _1055, _1005), _416, _1008);
    float3 _1068 = _380.xyz * lerp(lerp(min(_1061, _1039), _1039, _1005), 1.0f, _1008);
    float3 _1069 = _1068 * _381;
    float3 _1070 = _1068 - _1069;
    float3 _1074 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _381)).xxx + _1069;
    float _1075 = dot(_1001, _472);
    float _1076 = max(0.0f, _1075);
    float _1077 = _1066 * _1066;
    float _1078 = _1076 * _1076;
    float _1079 = _1078 * _1076;
    float2 _1080 = float2(1.0f, _1076);
    float2 _1083 = float2(1.0f, _1077);
    float _1084 = _1077 * _1077;
    float3 _1086 = float3(1.0f, _1077, _1084 * _1077);
    float _1091 = dot(mul(_1080, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1083) / dot(mul(float3(1.0f, _1078, _1079), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1086);
    float _1096 = dot(mul(_1080, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1083) / dot(mul(float3(1.0f, _1076, _1079), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1086);
    float3 _1099 = (_1074 * _1091) + _1096.xxx;
    float _1100 = _1091 + _1096;
    float4 _1113 = _30.Load(int3(_374, 0));
    float _1114 = _1113.x;
    float4 _1279;
    if (_1114 > 0.001000000047497451305389404296875f)
    {
        float3 _1124 = reflect(_474, _1001);
        float3 _1125 = -_29_m0.xyz;
        float _1130 = dot(_1125, _1124);
        float3 _1132 = _1124 - (_1125 * _1130);
        bool3 _1134 = (_1130 < _29_m4.z).xxx;
        float3 _1142 = normalize((_1125 * _29_m4.z) + ((_1132 * rsqrt(max(6.103515625e-05f, dot(_1132, _1132)))) * _29_m4.y));
        float3 _1143 = float3(_1134.x ? _1142.x : _1124.x, _1134.y ? _1142.y : _1124.y, _1134.z ? _1142.z : _1124.z);
        float3 _1147 = _1143 + _472;
        float3 _1151 = _1147 * rsqrt(max(6.103515625e-05f, dot(_1147, _1147)));
        float _1154 = clamp(dot(_1143, _1001), 0.0f, 1.0f);
        float _1156 = clamp(dot(_1001, _1151), 0.0f, 1.0f);
        float _1159 = clamp(_1075, 0.0f, 1.0f);
        float _1180 = (((_1156 * _1084) - _1156) * _1156) + 1.0f;
        float _1183 = 1.0f - clamp(dot(_472, _1151), 0.0f, 1.0f);
        float _1184 = _1183 * _1183;
        float _1186 = (_1183 * _1184) * _1184;
        float _1210 = 1.0f - _1066;
        float _1217 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1210 * (1.04997003078460693359375f + (_1210 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1210))))));
        float _1218 = 1.0f - _1217;
        float3 _1221 = _1074 + ((1.0f.xxx - _1074) * 0.0476190485060214996337890625f);
        float3 _1261;
        do
        {
            [branch]
            if (((_393 > 0u) && (_393 <= 15u)) && (_418 > 0.0f))
            {
                uint _1245 = clamp(_393 - 1u, 0u, 14u);
                _1261 = _40.SampleLevel(_13, float3((dot(_415, _1143) * 0.5f) + 0.5f, _418 * _43_m0[_1245].w, float(_1245)), 0.0f).xyz;
                break;
            }
            _1261 = clamp(dot(_1143, _415), 0.0f, 1.0f).xxx;
            break;
        } while(false);
        float3 _1264 = ((clamp((min(((_1074 * (1.0f - _1186)) + _1186.xxx) * ((_1084 / (_1180 * _1180)) * (0.5f / (((_1154 * sqrt(((((-_1159) * _1084) + _1159) * _1159) + _1084)) + (_1159 * sqrt(((((-_1154) * _1084) + _1154) * _1154) + _1084))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1221 * (((_39.SampleLevel(_13, (float2(_1159, _1066) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_13, (float2(_1154, _1066) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1217) / _1218)) * _1221) / (1.0f.xxx - (_1221 * _1218)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1154) + ((_1070 * 1.0f) * _1261)) * _29_m1.xyz;
        float3 _1277 = lerp(_1264, _1264 * _31.SampleBias(_13, float2(_1114, 0.5f), _9_m16).xyz, (1.0f - _1114).xxx) * min(_44.SampleLevel(_13, _434, 0.0f).x, 1.0f);
        _1279 = float4(_1277.x, _1277.y, _1277.z, 0.0f.xxxx.w);
    }
    else
    {
        _1279 = 0.0f.xxxx;
    }
    float3 _1281 = _382.xxx;
    float3 _1320;
    float3 _1321;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _1296 = min(_21.SampleBias(_12, _4, _9_m16).x, _382);
        _1320 = clamp((pow(abs(max(0.0f, dot(_415, _472)) + _1296), exp2(((-16.0f) * _1066) - 1.0f)) - 1.0f) + _1296, 0.0f, 1.0f).xxx;
        _1321 = max(_1296.xxx, ((((((_1070 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1296) + ((_1070 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1296) + ((_1070 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1296);
    }
    else
    {
        _1320 = _1281;
        _1321 = _1281;
    }
    _1279.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1320 : 1.0f.xxx;
    float3 _1344;
    do
    {
        [branch]
        if (((_393 > 0u) && (_393 <= 15u)) && (_418 > 0.0f))
        {
            uint _1332 = clamp(_393 - 1u, 0u, 14u);
            _1344 = _41.SampleLevel(_13, float3(_418 * _43_m0[_1332].w, 0.5f, float(_1332)), 0.0f).xyz;
            break;
        }
        _1344 = 1.0f.xxx;
        break;
    } while(false);
    float3 _1361 = (_446 + (_415 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_421 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1371 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1380 = _1361 - (_9_m105.xyz + (_1371 * (-_9_m107.w)));
    float _1394 = max(clamp((max(abs(_1380.x), abs(_1380.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_1380.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1696;
    float4 _1697;
    float4 _1698;
    float _1699;
    float _1700;
    if ((_9_m105.w != 0.0f) && (_1394 < 1.0f))
    {
        float3 _1407 = _1361 - (_9_m105.xyz + (_1371 * (-_9_m107.y)));
        float _1421 = max(clamp((max(abs(_1407.x), abs(_1407.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1407.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1497;
        float4 _1498;
        float4 _1499;
        float4 _1500;
        if (_1421 < 1.0f)
        {
            float3 _1430 = ((_1361 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1432 = _1430 - floor(_1430);
            float4 _1436 = _50.SampleLevel(_14, _1432, 0.0f);
            float _1437 = 1.0f - _1421;
            float _1441 = _9_m106.y * 0.5f;
            float _1446 = _1432.x;
            float _1447 = clamp(_1432.y, _1441, 1.0f - _1441) * 0.3333333432674407958984375f;
            float _1448 = _1432.z;
            float4 _1451 = _51.SampleLevel(_13, float3(_1446, _1447, _1448), 0.0f);
            float _1467 = _1436.x;
            float _1477 = _1436.y;
            float _1487 = _1436.z;
            _1497 = _1394 + (_1451.w * _1437);
            _1498 = float4(((_51.SampleLevel(_13, float3(_1446, _1447 + 0.666666686534881591796875f, _1448), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1487, _1487) * _1437;
            _1499 = float4(((_51.SampleLevel(_13, float3(_1446, _1447 + 0.3333333432674407958984375f, _1448), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1477, _1477) * _1437;
            _1500 = float4(((_1451.xyz * 4.0f) - 2.0f.xxx) * _1467, _1467) * _1437;
        }
        else
        {
            _1497 = _1394;
            _1498 = 0.0f.xxxx;
            _1499 = 0.0f.xxxx;
            _1500 = 0.0f.xxxx;
        }
        float3 _1506 = _1361 - (_9_m105.xyz + (_1371 * (-_9_m107.z)));
        float _1520 = max(clamp((max(abs(_1506.x), abs(_1506.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1506.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1600;
        float4 _1601;
        float4 _1602;
        float4 _1603;
        if (_1520 < 1.0f)
        {
            float3 _1529 = ((_1361 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1531 = _1529 - floor(_1529);
            float4 _1535 = _52.SampleLevel(_14, _1531, 0.0f);
            float _1537 = _1421 * (1.0f - _1520);
            float _1541 = _9_m106.y * 0.5f;
            float _1546 = _1531.x;
            float _1547 = clamp(_1531.y, _1541, 1.0f - _1541) * 0.3333333432674407958984375f;
            float _1548 = _1531.z;
            float4 _1551 = _53.SampleLevel(_13, float3(_1546, _1547, _1548), 0.0f);
            float _1567 = _1535.x;
            float _1578 = _1535.y;
            float _1589 = _1535.z;
            _1600 = _1497 + (_1551.w * _1537);
            _1601 = _1498 + (float4(((_53.SampleLevel(_13, float3(_1546, _1547 + 0.666666686534881591796875f, _1548), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1589, _1589) * _1537);
            _1602 = _1499 + (float4(((_53.SampleLevel(_13, float3(_1546, _1547 + 0.3333333432674407958984375f, _1548), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1578, _1578) * _1537);
            _1603 = _1500 + (float4(((_1551.xyz * 4.0f) - 2.0f.xxx) * _1567, _1567) * _1537);
        }
        else
        {
            _1600 = _1497;
            _1601 = _1498;
            _1602 = _1499;
            _1603 = _1500;
        }
        float4 _1686;
        float4 _1687;
        float4 _1688;
        float _1689;
        if (_1520 > 0.0f)
        {
            float3 _1612 = ((_1361 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1615 = _9_m106.xyz * 0.5f;
            float3 _1617 = clamp(_1612 - floor(_1612), _1615, 1.0f.xxx - _1615);
            float4 _1621 = _54.SampleLevel(_14, _1617, 0.0f);
            float _1623 = _1520 * (1.0f - _1394);
            float _1627 = _9_m106.y * 0.5f;
            float _1632 = _1617.x;
            float _1633 = clamp(_1617.y, _1627, 1.0f - _1627) * 0.3333333432674407958984375f;
            float _1634 = _1617.z;
            float4 _1637 = _55.SampleLevel(_13, float3(_1632, _1633, _1634), 0.0f);
            float _1653 = _1621.x;
            float _1664 = _1621.y;
            float _1675 = _1621.z;
            _1686 = _1601 + (float4(((_55.SampleLevel(_13, float3(_1632, _1633 + 0.666666686534881591796875f, _1634), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1675, _1675) * _1623);
            _1687 = _1602 + (float4(((_55.SampleLevel(_13, float3(_1632, _1633 + 0.3333333432674407958984375f, _1634), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1664, _1664) * _1623);
            _1688 = _1603 + (float4(((_1637.xyz * 4.0f) - 2.0f.xxx) * _1653, _1653) * _1623);
            _1689 = _1600 + (_1637.w * _1623);
        }
        else
        {
            _1686 = _1601;
            _1687 = _1602;
            _1688 = _1603;
            _1689 = _1600;
        }
        float _1692 = clamp((_1689 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1696 = _1686;
        _1697 = _1687;
        _1698 = _1688;
        _1699 = _1692 - _1394;
        _1700 = (_1692 + _1394) * 0.5f;
    }
    else
    {
        _1696 = 0.0f.xxxx;
        _1697 = 0.0f.xxxx;
        _1698 = 0.0f.xxxx;
        _1699 = 0.0f;
        _1700 = 1.0f;
    }
    float4 _1720 = _1698 + float4(_9_m108.x * _1700, (_9_m108.y * _1700) + ((_9_m108.w * _1699) * 0.5f), _9_m108.z * _1700, (_9_m108.w * _1700) + ((_9_m108.y * _1699) * 0.375f));
    float4 _1740 = _1697 + float4(_9_m109.x * _1700, (_9_m109.y * _1700) + ((_9_m109.w * _1699) * 0.5f), _9_m109.z * _1700, (_9_m109.w * _1700) + ((_9_m109.y * _1699) * 0.375f));
    float4 _1760 = _1696 + float4(_9_m110.x * _1700, (_9_m110.y * _1700) + ((_9_m110.w * _1699) * 0.5f), _9_m110.z * _1700, (_9_m110.w * _1700) + ((_9_m110.y * _1699) * 0.375f));
    float4 _1918;
    float4 _1919;
    float4 _1920;
    [branch]
    if (all(bool2(_434.x >= 0.0f.xx.x, _434.y >= 0.0f.xx.y)))
    {
        float4 _1768 = _49.SampleLevel(_13, _434, 0.0f);
        float4 _1769 = abs(_1768);
        float4 _1915;
        float4 _1916;
        float4 _1917;
        [branch]
        if (any(bool4(_1769.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1769.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1769.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1769.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1775 = length(_1768.yzw);
            uint _1777;
            float _1780;
            _1777 = 0u;
            _1780 = 1.0f;
            for (float _1782 = _1775; _1782 > 4.599999904632568359375f; )
            {
                _1777++;
                _1780 *= 0.5f;
                _1782 *= 0.5f;
                continue;
            }
            float4 _1786 = _1768 * _1780;
            float4 _1791 = float4(0.0f, _1786.yzw);
            float2 _1813 = (_48.SampleLevel(_13, float2(((((length(_1791) * _47_m3.x) + _47_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _47_m2.xy) + _47_m2.zw;
            float4 _1827;
            _1827 = float4(_1813.x * 3.5449078083038330078125f, _1791.yzw * _1813.y) * exp(_1786.x * 0.282094776630401611328125f);
            for (uint _1830 = 0u; _1830 < _1777; )
            {
                _1827 = mul(float4x4(_1827, float4(_1827.yx, 0.0f, 0.0f), float4(_1827.z, 0.0f, _1827.x, 0.0f), float4(_1827.w, 0.0f, 0.0f, _1827.x)) * 0.282094776630401611328125f, _1827);
                _1830++;
                continue;
            }
            float4x4 _1851 = float4x4(_1827, float4(_1827.yx, 0.0f, 0.0f), float4(_1827.z, 0.0f, _1827.x, 0.0f), float4(_1827.w, 0.0f, 0.0f, _1827.x)) * 0.282094776630401611328125f;
            float4 _1861 = mul(_1851, float4(_1720.w * 1.1283791065216064453125f, _1720.y * (-0.977204978466033935546875f), _1720.z * 0.977204978466033935546875f, _1720.x * (-0.977204978466033935546875f)));
            float4 _1881 = mul(_1851, float4(_1740.w * 1.1283791065216064453125f, _1740.y * (-0.977204978466033935546875f), _1740.z * 0.977204978466033935546875f, _1740.x * (-0.977204978466033935546875f)));
            float4 _1901 = mul(_1851, float4(_1760.w * 1.1283791065216064453125f, _1760.y * (-0.977204978466033935546875f), _1760.z * 0.977204978466033935546875f, _1760.x * (-0.977204978466033935546875f)));
            _1915 = float4(_1861.x * 0.886226952075958251953125f, _1861.w * (-1.02332675457000732421875f), _1861.y * (-1.02332675457000732421875f), _1861.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1916 = float4(_1881.x * 0.886226952075958251953125f, _1881.w * (-1.02332675457000732421875f), _1881.y * (-1.02332675457000732421875f), _1881.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1917 = float4(_1901.x * 0.886226952075958251953125f, _1901.w * (-1.02332675457000732421875f), _1901.y * (-1.02332675457000732421875f), _1901.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1915 = _1720;
            _1916 = _1740;
            _1917 = _1760;
        }
        _1918 = _1915;
        _1919 = _1916;
        _1920 = _1917;
    }
    else
    {
        _1918 = _1720;
        _1919 = _1740;
        _1920 = _1760;
    }
    float _1927 = max(0.0f, dot(_1918.xyz * _1344.x, _415) + _1918.w);
    float _1934 = max(0.0f, dot(_1919.xyz * _1344.y, _415) + _1919.w);
    float _1941 = max(0.0f, dot(_1920.xyz * _1344.z, _415) + _1920.w);
    float3 _1951 = reflect(_474, _1001);
    float _1959 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1066, 0.001000000047497451305389404296875f))));
    float2 _1963 = floor(_421 * _27_m0.w);
    float _1980 = floor(_453 - _27_m2.y);
    float _1984 = clamp(_1980, 0.0f, _27_m1.x - 1.0f);
    uint _1994 = (_1980 <= _1984) ? (_24.Load(uint(_9_m21.z + int(_1963.x + (_1963.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1984)) * 4 + 0)) : 0u;
    float _1997 = dot(float4(_1927, _1934, _1941, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1999;
    float _2002;
    uint _2004;
    _1999 = 0.0f.xxx;
    _2002 = 1.0f;
    _2004 = _1994;
    uint _2005;
    float3 _2000;
    float _2003;
    bool _2007;
    [loop]
    for (;;)
    {
        _2007 = _2002 > 0.00999999977648258209228515625f;
        if ((_2004 != 0u) && _2007)
        {
            uint _2011 = firstbitlow(_2004);
            _2005 = _2004 ^ (1u << (_2011 & 31u));
            float3 _2031 = float3(dot(_27_m4[_2011]._m2, _450), dot(_27_m4[_2011]._m3, _450), dot(_27_m4[_2011]._m4, _450));
            float3 _2032 = abs(_2031);
            if (all(bool3(_2032.x <= _27_m4[_2011]._m1.xyz.x, _2032.y <= _27_m4[_2011]._m1.xyz.y, _2032.z <= _27_m4[_2011]._m1.xyz.z)))
            {
                float3 _2041 = _27_m4[_2011]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2043 = _2032 * 0.100000001490116119384765625f;
                float3 _2044 = _2043 * _2043;
                float3 _2047 = (_27_m4[_2011]._m1.xyz - _2032) * _27_m4[_2011]._m5.xyz;
                float3 _2095;
                [branch]
                if (_27_m4[_2011]._m6.x == 1.0f)
                {
                    float3 _2080 = float3(dot(_27_m4[_2011]._m2.xyz, _1951), dot(_27_m4[_2011]._m3.xyz, _1951), dot(_27_m4[_2011]._m4.xyz, _1951));
                    float3 _2082 = (_27_m4[_2011]._m1.xyz - _2031) / _2080;
                    float3 _2085 = ((-_27_m4[_2011]._m1.xyz) - _2031) / _2080;
                    bool3 _2086 = bool3(_2080.x > 0.0f.xxx.x, _2080.y > 0.0f.xxx.y, _2080.z > 0.0f.xxx.z);
                    float3 _2087 = float3(_2086.x ? _2082.x : _2085.x, _2086.y ? _2082.y : _2085.y, _2086.z ? _2082.z : _2085.z);
                    _2095 = _2031 + (_2080 * min(min(_2087.x, _2087.y), _2087.z));
                }
                else
                {
                    _2095 = _1951;
                }
                float3 _2096 = normalize(_2095);
                float3 _2099 = float3(int3(sign(_2096)));
                float3 _2102 = _2096 / dot(_2096, _2099).xxx;
                float3 _2116;
                if (_2102.z < 0.0f)
                {
                    float3 _2107 = abs(_2102);
                    float2 _2114 = _2099.xy * float2(1.0f - _2107.y, 1.0f - _2107.x);
                    _2116 = float3(_2114.x, _2114.y, _2102.z);
                }
                else
                {
                    _2116 = _2102;
                }
                float _2141 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2011]._m0, float4(_1001, 1.0f))));
                float _2154 = clamp((min(_2047.x, min(_2047.y, _2047.z)) * _27_m4[_2011]._m6.y) + ((((((_2041 * _2041).x - ((_2044.x + _2044.y) + _2044.z)) * _27_m4[_2011]._m5.x) * _27_m4[_2011]._m5.x) * (1.0f - _27_m4[_2011]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2011]._m6.w;
                _2000 = _1999 + ((((_22.SampleLevel(_15, float3((((_2116.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2011]._m1.w), _1959).xyz * _27_m4[_2011]._m5.w) * ((((((clamp(abs(_1997 / _2141), 0.0f, 1.0f) * 2.0f) + _1997) / (2.0f + _2141)) - 1.0f) * _9_m23.w) + 1.0f)) * _2154) * _2002);
                _2003 = _2002 * (1.0f - _2154);
            }
            else
            {
                _2000 = _1999;
                _2003 = _2002;
            }
            _1999 = _2000;
            _2002 = _2003;
            _2004 = _2005;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _2223;
    if (_2007)
    {
        float3 _2162 = normalize(_1951);
        float3 _2165 = float3(int3(sign(_2162)));
        float3 _2168 = _2162 / dot(_2162, _2165).xxx;
        float3 _2182;
        if (_2168.z < 0.0f)
        {
            float3 _2173 = abs(_2168);
            float2 _2180 = _2165.xy * float2(1.0f - _2173.y, 1.0f - _2173.x);
            _2182 = float3(_2180.x, _2180.y, _2168.z);
        }
        else
        {
            _2182 = _2168;
        }
        float _2209 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_1001, 1.0f))));
        _2223 = _1999 + ((_22.SampleLevel(_15, float3((((_2182.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1959).xyz * ((((((clamp(abs(_1997 / _2209), 0.0f, 1.0f) * 2.0f) + _1997) / (2.0f + _2209)) - 1.0f) * _9_m23.w) + 1.0f)) * _2002);
    }
    else
    {
        _2223 = _1999;
    }
    float3 _2229 = (_2223 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _2229 *= 0.25f + (0.75f * saturate(_1997));
    }
    float3 _2252;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _2246 = _20.SampleBias(_13, _4, _9_m16);
        float _2247 = _2246.x;
        _2252 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2247) + (_2229 * (1.0f - _2247));
    }
    else
    {
        _2252 = _2229;
    }
    float3 _2255 = (((float3(_1927, _1934, _1941) * _1070) * _9_m22.x) * _1321) + ((_2252 * (_1099 + ((_1074 * ((1.0f - _1100) / _1100)) * _1099))) * _1320);
    float4 _2257 = float4(_1279.x, _1279.y, _1279.z, _1279.w) + float4(_2255.x, _2255.y, _2255.z, 0.0f.xxxx.w);
    float3 _2260 = clamp(_2257.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _2275 = _448 * _9_m46.w;
    float _2280 = max(0.00999999977648258209228515625f, _2275 + _9_m47.w);
    float3 _2294 = exp(_9_m45.xyz * ((-max(0.0f, (_473 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2280)) / _2280) * exp(_2275 + _9_m48.w))));
    float _2297 = dot(_474, _9_m44.xyz);
    float _2303 = _9_m45.w * _9_m45.w;
    float _2307 = (1.0f + _2303) - ((2.0f * _9_m45.w) * _2297);
    float3 _2631;
    float _2632;
    if (_9_m55.z > 0.0f)
    {
        uint3 _2459 = (uint3(int3(_371, _372, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2460 = _2459.y;
        uint _2461 = _2459.z;
        uint _2464 = _2459.x + (_2460 * _2461);
        uint _2466 = _2460 + (_2461 * _2464);
        uint _2468 = _2461 + (_2464 * _2466);
        uint _2470 = _2464 + (_2466 * _2468);
        float _2494 = dot(_474, -_7_m0[2].xyz);
        float3 _2502 = _446 - _7_m11.xyz;
        float _2504 = (_9_m55.w * ((_2494 > 5.9604644775390625e-08f) ? (1.0f / _2494) : 0.0f)) * (1.0f / _473);
        float _2505 = _2502.y;
        float _2506 = _2504 * _2505;
        float _2508 = _7_m11.y + _2506;
        float _2509 = _2505 - _2506;
        float _2511 = (1.0f - _2504) * _473;
        float _2525 = max(-127.0f, _9_m49.z * _2509);
        float _2549 = max(-127.0f, _9_m52.x * _2509);
        float _2560 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2508 - _9_m49.x)))) * ((abs(_2525) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2525)) / _2525) : (0.693147182464599609375f - (0.2402265071868896484375f * _2525)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2508 - _9_m52.z)))) * ((abs(_2549) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2549)) / _2549) : (0.693147182464599609375f - (0.2402265071868896484375f * _2549))));
        float _2582 = clamp((_473 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2585 = clamp((max(clamp(exp2(-(_2560 * _2511)), 0.0f, 1.0f), _9_m51.w) + clamp((_473 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2582, 0.0f, 1.0f);
        float4 _2625 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _45.SampleLevel(_13, float3((_421 + ((((float3(uint3(_2470, _2466 + (_2468 * _2470), _363) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_453 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_453 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2627 = _2625.w;
        _2631 = _2625.xyz + (((_9_m51.xyz * (1.0f - _2585)) + (((_9_m54.xyz * pow(clamp(dot(_472, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2560 * max(_2511 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2582))) * _2627);
        _2632 = _2627 * _2585;
    }
    else
    {
        float3 _2335 = _446 - _7_m11.xyz;
        float _2337 = _2335.y;
        float _2351 = max(-127.0f, _9_m49.z * _2337);
        float _2375 = max(-127.0f, _9_m52.x * _2337);
        float _2386 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2351) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2351)) / _2351) : (0.693147182464599609375f - (0.2402265071868896484375f * _2351)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2375) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2375)) / _2375) : (0.693147182464599609375f - (0.2402265071868896484375f * _2375))));
        float _2408 = clamp((_473 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2411 = clamp((max(clamp(exp2(-(_2386 * _473)), 0.0f, 1.0f), _9_m51.w) + clamp((_473 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2408, 0.0f, 1.0f);
        _2631 = (_9_m51.xyz * (1.0f - _2411)) + (((_9_m54.xyz * pow(clamp(dot(_472, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2386 * max(_473 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2408));
        _2632 = _2411;
    }
    float3 _2635 = _2294 * _2632;
    float3 _2637 = (_2260 * _2635) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2297 * _2297)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2303) / max((12.56637096405029296875f * _2307) * sqrt(_2307), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2294)) * _2632) + _2631);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _2637 = (_2637 * 0.65f) + (_2260 * 0.35f);

    }
    float _2638 = dot(_2635, 0.3333333432674407958984375f.xxx);
    float4 _2639 = float4(_2637.x, _2637.y, _2637.z, _2257.w);
    _2639.w = _2638;
    float _2666 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _446) * _9_m61.z), 0.0f, 1.0f);
    float3 _2674 = lerp(_2260, _2639.xyz, min((1.0f - _2666) + ((_60.SampleLevel(_14, (_446 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _2666), 1.0f + _2638).xxx);
    _5 = float4(_2674.x, _2674.y, _2674.z, _2639.w);
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
