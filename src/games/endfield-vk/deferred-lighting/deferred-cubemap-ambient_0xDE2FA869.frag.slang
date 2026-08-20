// DX11 0x8E45AB83 -> Vulkan 0xDE2FA869
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

static float _358 = 0.0f;
static uint _359 = 0u;

#include "./renodx_injection.hlsli"

[[vk::binding(34, 3)]]
cbuffer _6_7 : register(b34)
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

[[vk::binding(38, 3)]]
cbuffer _8_9 : register(b38)
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

[[vk::binding(40, 3)]] ByteAddressBuffer _24 : register(t40);
[[vk::binding(39, 3)]]
cbuffer _25_27 : register(b39)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(36, 3)]]
cbuffer _28_29 : register(b36)
{
    float4 _29_m0 : packoffset(c0);
    float4 _29_m1 : packoffset(c1);
    float4 _29_m2 : packoffset(c2);
    float4 _29_m3 : packoffset(c3);
    float4 _29_m4 : packoffset(c4);
    uint4 _29_m5 : packoffset(c5);
    float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(33, 3)]]
cbuffer _33_34 : register(b33)
{
    column_major float4x4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c4);
};

[[vk::binding(35, 3)]]
cbuffer _42_43 : register(b35)
{
    float4 _43_m0[15] : packoffset(c0);
    float4 _43_m1[15] : packoffset(c15);
};

[[vk::binding(37, 3)]]
cbuffer _46_47 : register(b37)
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
[[vk::binding(30, 3)]] Texture2D<float4> _18 : register(t30);
[[vk::binding(12, 3)]] Texture2D<float4> _19 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13);
[[vk::binding(25, 3)]] Texture2D<float4> _21 : register(t25);
[[vk::binding(15, 3)]] Texture2DArray<float4> _22 : register(t15);
[[vk::binding(11, 3)]] Texture2D<float4> _30 : register(t11);
[[vk::binding(31, 3)]] Texture2D<float4> _31 : register(t31);
[[vk::binding(7, 3)]] Texture2D<float4> _32 : register(t7);
[[vk::binding(16, 3)]] Texture3D<float4> _36 : register(t16);
[[vk::binding(8, 3)]] Texture2D<float4> _37 : register(t8);
[[vk::binding(14, 3)]] Texture2D<float4> _38 : register(t14);
[[vk::binding(17, 3)]] Texture2D<float4> _39 : register(t17);
[[vk::binding(9, 3)]] Texture2DArray<float4> _40 : register(t9);
[[vk::binding(10, 3)]] Texture2DArray<float4> _41 : register(t10);
[[vk::binding(29, 3)]] Texture2D<float4> _44 : register(t29);
[[vk::binding(24, 3)]] Texture3D<float4> _45 : register(t24);
[[vk::binding(32, 3)]] Texture2D<float4> _48 : register(t32);
[[vk::binding(6, 3)]] Texture2D<float4> _49 : register(t6);
[[vk::binding(23, 3)]] Texture3D<float4> _50 : register(t23);
[[vk::binding(20, 3)]] Texture3D<float4> _51 : register(t20);
[[vk::binding(22, 3)]] Texture3D<float4> _52 : register(t22);
[[vk::binding(19, 3)]] Texture3D<float4> _53 : register(t19);
[[vk::binding(21, 3)]] Texture3D<float4> _54 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _55 : register(t18);
[[vk::binding(5, 3)]] Texture2D<float4> _56 : register(t5);
[[vk::binding(28, 3)]] Texture2D<float4> _57 : register(t28);
[[vk::binding(27, 3)]] Texture2D<float4> _58 : register(t27);
[[vk::binding(26, 3)]] Texture2D<float4> _59 : register(t26);

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
    uint2 _364 = uint2(gl_FragCoord.xy);
    int _367 = int(_364.x);
    int _368 = int(_364.y);
    int2 _370 = int3(_367, _368, 0).xy;
    float4 _372 = _57.Load(int3(_370, 0));
    float4 _374 = _58.Load(int3(_370, 0));
    float4 _376 = _59.Load(int3(_370, 0));
    float _377 = _372.x;
    float _378 = _372.y;
    float _379 = _372.z;
    uint _389 = uint(int((round(_372.w * 3.0f) * 4.0f) + round(_374.w * 3.0f)));
    float2 _392 = (_374.xy * 2.0f) - 1.0f.xx;
    float _396 = 1.0f - dot(1.0f.xx, abs(_392));
    float3 _398 = float3(_392.x, _396, _392.y);
    float3 _410;
    if (_396 < 0.0f)
    {
        float2 _405 = _398.xz;
        bool2 _406 = bool2(_405.x >= 0.0f.xx.x, _405.y >= 0.0f.xx.y);
        float2 _408 = (1.0f.xx - abs(_398.zx)) * float2(_406.x ? 1.0f.xx.x : (-1.0f).xx.x, _406.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _410 = float3(_408.x, _398.y, _408.y);
    }
    else
    {
        _410 = _398;
    }
    float3 _411 = normalize(_410);
    float _412 = _374.z;
    float _414 = _376.w;
    float2 _417 = float2(_364);
    float2 _430 = gl_FragCoord.xy * _9_m0.zw;
    float2 _432 = (_430 * 2.0f) - 1.0f.xx;
    float4 _435 = float4(_432, _18.SampleLevel(_12, (_417 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _435.y = -_432.y;
    float4 _438 = mul(_7_m6, _435);
    float3 _442 = _438.xyz / _438.w.xxx;
    float _443 = _442.x;
    float _444 = _442.y;
    float4 _446 = float4(_443, _444, _442.z, 1.0f);
    float _449 = abs(mul(_7_m0, _446).z);
    float3 _464;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _464 = _7_m11.xyz - _442;
            break;
        }
        else
        {
            _464 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _465 = dot(_464, _464);
    float _467 = rsqrt(max(_465, 9.9999999392252902907785028219223e-09f));
    float3 _468 = _464 * _467;
    float _469 = _465 * _467;
    float3 _470 = -_468;
    bool _473 = _9_m129.x > 0.00048828125f;
    float2 _483;
    if (_473)
    {
        _483 = _56.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _483 = 1.0f.xx;
    }
    float _484 = dot(_411, float3(0.0f, -1.0f, 0.0f));
    float3 _540;
    float3 _541;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _511 = abs(_411.x);
        float _513 = abs(_411.y);
        float _515 = abs(_411.z);
        float3 _520 = float3(_511, _513, _515) * (1.0f / ((_511 + _513) + _515));
        float4 _533 = _36.SampleLevel(_14, _442 * _9_m124.x, 0.0f);
        float _534 = _533.x;
        _540 = float3(_534, _358, _358);
        _541 = ((((float3(0.0f, 0.0f, 1.0f) * _520.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _520.y)) + (float3(1.0f, 0.0f, 0.0f) * _520.z)) * ((_534 * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_484)));
    }
    else
    {
        _540 = 0.0f.xxx;
        _541 = 0.0f.xxx;
    }
    float4 _555 = mul(_34_m0, float4((_442 + ((((_411 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_484, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _484), 0.100000001490116119384765625f, 1.0f)))) + _541, 1.0f));
    float2 _558 = (_555.xy * 0.5f) + 0.5f.xx;
    float4 _559 = float4(_558.x, _558.y, _555.z, _555.w);
    _559.y = 1.0f - _558.y;
    float _580;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _580 = _32.SampleCmpLevelZero(_16, (_559.xy + _34_m1.xy).xy, max(_555.z, 0.00048828125f));
    }
    else
    {
        _580 = 1.0f;
    }
    float _583 = _411.y;
    float _584 = clamp(_583, 0.0f, 1.0f);
    float _585 = lerp(_9_m125.w, 1.0f, _584);
    float2 _589 = _442.xz;
    float2 _594 = abs(_589 - _7_m11.xz);
    float _597 = max(_594.x, _594.y);
    float _607 = lerp(_585 * _580, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _597));
    float3 _614 = ddy_fine(_442);
    float3 _615 = ddx_fine(_442);
    float3 _616 = cross(_614, _615);
    float _622 = clamp((_616 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_616, _616)))).y, 0.0f, 1.0f);
    float _625 = _9_m118.z * 0.300000011920928955078125f;
    float _627 = _625 + 0.68599998950958251953125f;
    float _634 = 1.0f - clamp((_449 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
    float _649 = smoothstep(min(_9_m123.w, 0.9900000095367431640625f), _9_m123.w, clamp(smoothstep(max(_627, 0.9700000286102294921875f), 0.9900000095367431640625f, _584) + (smoothstep(0.990999996662139892578125f, 1.0f, _622) * step(_378, (_540.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
    float3 _848;
    float _849;
    [branch]
    if ((_9_m118.y > 0.00048828125f) && ((smoothstep(_625 + 0.686999976634979248046875f, _627, _622) * smoothstep(-0.5f, -0.100000001490116119384765625f, _583)) > 0.00048828125f))
    {
        float3 _658 = abs(_411);
        float3 _659 = _658 * _658;
        float3 _664 = _659 * (1.0f / (_659.x + _659.z));
        float3 _666 = normalize(cross(_411, float3(0.0f, 1.0f, 0.0f)));
        float3 _668 = normalize(cross(_666, _411));
        float3 _684 = floor((_442 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
        float _692 = frac(sin(dot(fmod(_684.xz + _684.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float2 _696 = (step(0.0f.xx, _411.zx) * 2.0f) - 1.0f.xx;
        float3 _699 = _442;
        _699.x = _443 * _696.x;
        _699.z = _442.z * (-_696.y);
        float _711 = _540.x * _692;
        float2 _719 = float2(frac(((-_9_m118.x) * (((1.0f - _692) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_711 * 3.0f)), frac((_9_m118.x * (-0.300000011920928955078125f)) + (_711 * 6.0f)));
        float _722 = floor(_692 * 5.0f) + 1.0f;
        float2 _726 = frac(float2(_722, 0.100000001490116119384765625f * _722) * _444);
        float2 _738 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _726 - (_719 - 1.0f.xx)), _719 - _726), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _726 - _719), (_719 + 1.0f.xx) - _726), step(_719, _726));
        float _739 = _738.x;
        float _741 = smoothstep(0.4000000059604644775390625f, 1.0f, _739 * _739);
        float _742 = _738.y;
        float _747 = (_742 * 2.0f) - 1.0f;
        float2 _756 = float2((_540.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _741) * _747), (1.0f.xx * _540.x).y * (_540.x + (((_741 * 0.00999999977648258209228515625f) * _741) * _747)));
        float4 _780 = (_37.SampleBias(_14, (_699.zy * _9_m119.xy) + _756, _9_m16) * _664.x) + (_37.SampleBias(_14, (_699.xy * _9_m119.xy) + _756, _9_m16) * _664.z);
        float2 _783 = (_780.xy * 2.0f) - 1.0f.xx;
        float _789 = _780.w;
        float _799 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_742 + (((_741 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_789 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_747 * _789) * 0.5f) + _741, 0.0f, 1.0f)));
        float _805 = _780.z;
        float _815 = (((lerp(0.100000001490116119384765625f, (_799 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _799, 0.0f, 1.0f), 5.0f), _805)) * _805) * _9_m118.y) * 0.3300000131130218505859375f) * ((_9_m117.x * (_607 * step(0.04500000178813934326171875f, _379))) * _634);
        float2 _818 = _783.xy;
        float _823 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_818, _818), 0.0f, 1.0f)));
        float3 _824 = float3(_783, _823);
        float2 _828 = _824.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _815) * _9_m118.y);
        float3 _829 = float3(_828.x, _828.y, _824.z);
        _829.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m118.y)), _823, _815);
        _848 = lerp(_411, mul(float4x4(float4(_666.x, _668.x, _411.x, 0.0f), float4(_666.y, _668.y, _583, 0.0f), float4(_666.z, _668.z, _411.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_829 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_829, _829))), 0.0f)).xyz, _815.xxx);
        _849 = (_815 * _9_m118.y) * 0.3300000131130218505859375f;
    }
    else
    {
        _848 = _411;
        _849 = 0.0f;
    }
    float3 _997;
    float _998;
    [branch]
    if (_649 > 0.00048828125f)
    {
        float2 _856 = (-_589) * _9_m123.xy;
        float2 _858 = frac(_856);
        float2 _905;
        [branch]
        if (_9_m122.y > 0.00048828125f)
        {
            float _868 = frac(sin(dot(fmod(floor(_856), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
            float _881 = floor(frac(_9_m122.x + _868) * (_9_m123.z * _9_m123.z));
            float _883 = 1.0f / _9_m123.z;
            _905 = ((_38.SampleBias(_13, frac((lerp(_858, _858.yx, step(_868, 0.5f).xx) * _883) + float2(_883 * fmod(_881, _9_m123.z), _883 * ((_9_m123.z - 1.0f) - floor(_881 * _883)))), _9_m16).xy * 2.0f) * _9_m122.y) - _9_m122.y.xx;
        }
        else
        {
            _905 = 0.0f.xx;
        }
        float2 _946;
        [branch]
        if (_9_m122.w > 0.00048828125f)
        {
            float4 _931 = _38.SampleBias(_14, (_856 + float2(0.0f, _9_m122.z)) + ((float2(_540.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _935 = _38.SampleBias(_14, (_856 - float2(_9_m122.z, 0.0f)) - ((float2(1.0f, 1.0f - _540.x) * 0.5f) - 0.5f.xx), _9_m16);
            float4 _941 = (((float4(_931.z, _931.w, _935.z, _935.w) * 2.0f) * _9_m122.w) - _9_m122.w.xxxx) * _540.x;
            _946 = _905 + (_941.xy + _941.zw);
        }
        else
        {
            _946 = _905;
        }
        float _954 = (((_540.x * 0.699999988079071044921875f) + (_412 * 0.300000011920928955078125f)) * clamp((_412 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _378;
        float _958 = smoothstep(min(_954, 0.9900000095367431640625f), clamp(_954 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m123.w);
        float _969 = _9_m117.x * _649;
        float3 _979 = float3(_946, max(0.00048828125f, sqrt(1.0f - clamp(dot(_946, _946), 0.0f, 1.0f))));
        float3 _985 = (_979 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_979, _979)))).yzx * float3(1.0f, 1.0f, -1.0f);
        _997 = lerp(_411, _985, (((_969 * _958) * _607) * _634).xxx);
        _998 = max((smoothstep(0.0f, _378 * 0.20000000298023223876953125f, (_969 * clamp(lerp((_9_m123.w * (1.0f - _540.x)) * 0.5f, 1.0f, _958) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m123.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _985.y) * _607) * _634, 0.0f);
    }
    else
    {
        _997 = _848;
        _998 = 0.0f;
    }
    float _1001 = min(_483.x, _483.y);
    float2 _1003 = _483 * (1.0f - lerp(lerp(_9_m125.z * _585, 1.0f, _607), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _597)));
    float _1004 = _1003.x;
    float _1007 = clamp((_379 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _1008 = 1.0f - _412;
    float _1024 = lerp(clamp((clamp((_1008 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f) + lerp(0.0f, _9_m119.z, _849)) + ((_998 * 0.100000001490116119384765625f) * _412), 0.0f, 1.0f), 1.0f, _377);
    float _1026 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _484);
    float _1035 = lerp(1.0f, 0.25f, ((_9_m117.x * _1024) * (1.0f - _377)) * _1026);
    float _1051 = (1.0f - lerp(_1008, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1024) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1008)), 0.0f, 1.0f), _1008, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _1026) * (1.0f - _1004))) * lerp(1.0f, 0.100000001490116119384765625f, max(_998, smoothstep(0.0f, 0.0500000007450580596923828125f, _849)));
    float _1056;
    float _1057;
    if (_473)
    {
        _1056 = lerp(1.0f, _483.y, _1007);
        _1057 = lerp(1.0f, 0.0f, _1007);
    }
    else
    {
        _1056 = 1.0f;
        _1057 = 1.0f;
    }
    float _1062 = lerp(lerp(min(_1056, _1051), _1051, _1001), _412, _1004);
    float3 _1064 = _376.xyz * lerp(lerp(min(_1057, _1035), _1035, _1001), 1.0f, _1004);
    float3 _1065 = _1064 * _377;
    float3 _1066 = _1064 - _1065;
    float3 _1070 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _377)).xxx + _1065;
    float _1071 = dot(_997, _468);
    float _1072 = max(0.0f, _1071);
    float _1073 = _1062 * _1062;
    float _1074 = _1072 * _1072;
    float _1075 = _1074 * _1072;
    float2 _1076 = float2(1.0f, _1072);
    float2 _1079 = float2(1.0f, _1073);
    float _1080 = _1073 * _1073;
    float3 _1082 = float3(1.0f, _1073, _1080 * _1073);
    float _1087 = dot(mul(_1076, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1079) / dot(mul(float3(1.0f, _1074, _1075), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1082);
    float _1092 = dot(mul(_1076, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1079) / dot(mul(float3(1.0f, _1072, _1075), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1082);
    float3 _1095 = (_1070 * _1087) + _1092.xxx;
    float _1096 = _1087 + _1092;
    float4 _1109 = _30.Load(int3(_370, 0));
    float _1110 = _1109.x;
    float4 _1275;
    if (_1110 > 0.001000000047497451305389404296875f)
    {
        float3 _1120 = reflect(_470, _997);
        float3 _1121 = -_29_m0.xyz;
        float _1126 = dot(_1121, _1120);
        float3 _1128 = _1120 - (_1121 * _1126);
        bool3 _1130 = (_1126 < _29_m4.z).xxx;
        float3 _1138 = normalize((_1121 * _29_m4.z) + ((_1128 * rsqrt(max(6.103515625e-05f, dot(_1128, _1128)))) * _29_m4.y));
        float3 _1139 = float3(_1130.x ? _1138.x : _1120.x, _1130.y ? _1138.y : _1120.y, _1130.z ? _1138.z : _1120.z);
        float3 _1143 = _1139 + _468;
        float3 _1147 = _1143 * rsqrt(max(6.103515625e-05f, dot(_1143, _1143)));
        float _1150 = clamp(dot(_1139, _997), 0.0f, 1.0f);
        float _1152 = clamp(dot(_997, _1147), 0.0f, 1.0f);
        float _1155 = clamp(_1071, 0.0f, 1.0f);
        float _1176 = (((_1152 * _1080) - _1152) * _1152) + 1.0f;
        float _1179 = 1.0f - clamp(dot(_468, _1147), 0.0f, 1.0f);
        float _1180 = _1179 * _1179;
        float _1182 = (_1179 * _1180) * _1180;
        float _1206 = 1.0f - _1062;
        float _1213 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1206 * (1.04997003078460693359375f + (_1206 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1206))))));
        float _1214 = 1.0f - _1213;
        float3 _1217 = _1070 + ((1.0f.xxx - _1070) * 0.0476190485060214996337890625f);
        float3 _1257;
        do
        {
            [branch]
            if (((_389 > 0u) && (_389 <= 15u)) && (_414 > 0.0f))
            {
                uint _1241 = clamp(_389 - 1u, 0u, 14u);
                _1257 = _40.SampleLevel(_13, float3((dot(_411, _1139) * 0.5f) + 0.5f, _414 * _43_m0[_1241].w, float(_1241)), 0.0f).xyz;
                break;
            }
            _1257 = clamp(dot(_1139, _411), 0.0f, 1.0f).xxx;
            break;
        } while(false);
        float3 _1260 = ((clamp((min(((_1070 * (1.0f - _1182)) + _1182.xxx) * ((_1080 / (_1176 * _1176)) * (0.5f / (((_1150 * sqrt(((((-_1155) * _1080) + _1155) * _1155) + _1080)) + (_1155 * sqrt(((((-_1150) * _1080) + _1150) * _1150) + _1080))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1217 * (((_39.SampleLevel(_13, (float2(_1155, _1062) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_13, (float2(_1150, _1062) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1213) / _1214)) * _1217) / (1.0f.xxx - (_1217 * _1214)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1150) + ((_1066 * 1.0f) * _1257)) * _29_m1.xyz;
        float3 _1273 = lerp(_1260, _1260 * _31.SampleBias(_13, float2(_1110, 0.5f), _9_m16).xyz, (1.0f - _1110).xxx) * min(_44.SampleLevel(_13, _430, 0.0f).x, 1.0f);
        _1275 = float4(_1273.x, _1273.y, _1273.z, 0.0f.xxxx.w);
    }
    else
    {
        _1275 = 0.0f.xxxx;
    }
    float3 _1277 = _378.xxx;
    float3 _1316;
    float3 _1317;
    [branch]
    /*
    Vanilla shader code from 0xDE2FA869:
    if (_9_m23.x != 0.0f)
    */
    // RenoDX code: keep the GTAO sample path active when Improved GTAO is enabled.
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _1292 = min(_21.SampleBias(_12, _4, _9_m16).x, _378);
        _1316 = clamp((pow(abs(max(0.0f, dot(_411, _468)) + _1292), exp2(((-16.0f) * _1062) - 1.0f)) - 1.0f) + _1292, 0.0f, 1.0f).xxx;
        _1317 = max(_1292.xxx, ((((((_1066 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1292) + ((_1066 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1292) + ((_1066 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1292);
    }
    else
    {
        _1316 = _1277;
        _1317 = _1277;
    }
    // RenoDX code: apply the sampled GTAO term when Improved GTAO is enabled.
    _1275.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1316 : 1.0f.xxx;
    float3 _1340;
    do
    {
        [branch]
        if (((_389 > 0u) && (_389 <= 15u)) && (_414 > 0.0f))
        {
            uint _1328 = clamp(_389 - 1u, 0u, 14u);
            _1340 = _41.SampleLevel(_13, float3(_414 * _43_m0[_1328].w, 0.5f, float(_1328)), 0.0f).xyz;
            break;
        }
        _1340 = 1.0f.xxx;
        break;
    } while(false);
    float3 _1357 = (_442 + (_411 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_417 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1367 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1376 = _1357 - (_9_m105.xyz + (_1367 * (-_9_m107.w)));
    float _1390 = max(clamp((max(abs(_1376.x), abs(_1376.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_1376.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1692;
    float4 _1693;
    float4 _1694;
    float _1695;
    float _1696;
    if ((_9_m105.w != 0.0f) && (_1390 < 1.0f))
    {
        float3 _1403 = _1357 - (_9_m105.xyz + (_1367 * (-_9_m107.y)));
        float _1417 = max(clamp((max(abs(_1403.x), abs(_1403.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1403.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1493;
        float4 _1494;
        float4 _1495;
        float4 _1496;
        if (_1417 < 1.0f)
        {
            float3 _1426 = ((_1357 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1428 = _1426 - floor(_1426);
            float4 _1432 = _50.SampleLevel(_14, _1428, 0.0f);
            float _1433 = 1.0f - _1417;
            float _1437 = _9_m106.y * 0.5f;
            float _1442 = _1428.x;
            float _1443 = clamp(_1428.y, _1437, 1.0f - _1437) * 0.3333333432674407958984375f;
            float _1444 = _1428.z;
            float4 _1447 = _51.SampleLevel(_13, float3(_1442, _1443, _1444), 0.0f);
            float _1463 = _1432.x;
            float _1473 = _1432.y;
            float _1483 = _1432.z;
            _1493 = _1390 + (_1447.w * _1433);
            _1494 = float4(((_51.SampleLevel(_13, float3(_1442, _1443 + 0.666666686534881591796875f, _1444), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1483, _1483) * _1433;
            _1495 = float4(((_51.SampleLevel(_13, float3(_1442, _1443 + 0.3333333432674407958984375f, _1444), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1473, _1473) * _1433;
            _1496 = float4(((_1447.xyz * 4.0f) - 2.0f.xxx) * _1463, _1463) * _1433;
        }
        else
        {
            _1493 = _1390;
            _1494 = 0.0f.xxxx;
            _1495 = 0.0f.xxxx;
            _1496 = 0.0f.xxxx;
        }
        float3 _1502 = _1357 - (_9_m105.xyz + (_1367 * (-_9_m107.z)));
        float _1516 = max(clamp((max(abs(_1502.x), abs(_1502.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1502.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1596;
        float4 _1597;
        float4 _1598;
        float4 _1599;
        if (_1516 < 1.0f)
        {
            float3 _1525 = ((_1357 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1527 = _1525 - floor(_1525);
            float4 _1531 = _52.SampleLevel(_14, _1527, 0.0f);
            float _1533 = _1417 * (1.0f - _1516);
            float _1537 = _9_m106.y * 0.5f;
            float _1542 = _1527.x;
            float _1543 = clamp(_1527.y, _1537, 1.0f - _1537) * 0.3333333432674407958984375f;
            float _1544 = _1527.z;
            float4 _1547 = _53.SampleLevel(_13, float3(_1542, _1543, _1544), 0.0f);
            float _1563 = _1531.x;
            float _1574 = _1531.y;
            float _1585 = _1531.z;
            _1596 = _1493 + (_1547.w * _1533);
            _1597 = _1494 + (float4(((_53.SampleLevel(_13, float3(_1542, _1543 + 0.666666686534881591796875f, _1544), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1585, _1585) * _1533);
            _1598 = _1495 + (float4(((_53.SampleLevel(_13, float3(_1542, _1543 + 0.3333333432674407958984375f, _1544), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1574, _1574) * _1533);
            _1599 = _1496 + (float4(((_1547.xyz * 4.0f) - 2.0f.xxx) * _1563, _1563) * _1533);
        }
        else
        {
            _1596 = _1493;
            _1597 = _1494;
            _1598 = _1495;
            _1599 = _1496;
        }
        float4 _1682;
        float4 _1683;
        float4 _1684;
        float _1685;
        if (_1516 > 0.0f)
        {
            float3 _1608 = ((_1357 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1611 = _9_m106.xyz * 0.5f;
            float3 _1613 = clamp(_1608 - floor(_1608), _1611, 1.0f.xxx - _1611);
            float4 _1617 = _54.SampleLevel(_14, _1613, 0.0f);
            float _1619 = _1516 * (1.0f - _1390);
            float _1623 = _9_m106.y * 0.5f;
            float _1628 = _1613.x;
            float _1629 = clamp(_1613.y, _1623, 1.0f - _1623) * 0.3333333432674407958984375f;
            float _1630 = _1613.z;
            float4 _1633 = _55.SampleLevel(_13, float3(_1628, _1629, _1630), 0.0f);
            float _1649 = _1617.x;
            float _1660 = _1617.y;
            float _1671 = _1617.z;
            _1682 = _1597 + (float4(((_55.SampleLevel(_13, float3(_1628, _1629 + 0.666666686534881591796875f, _1630), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1671, _1671) * _1619);
            _1683 = _1598 + (float4(((_55.SampleLevel(_13, float3(_1628, _1629 + 0.3333333432674407958984375f, _1630), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1660, _1660) * _1619);
            _1684 = _1599 + (float4(((_1633.xyz * 4.0f) - 2.0f.xxx) * _1649, _1649) * _1619);
            _1685 = _1596 + (_1633.w * _1619);
        }
        else
        {
            _1682 = _1597;
            _1683 = _1598;
            _1684 = _1599;
            _1685 = _1596;
        }
        float _1688 = clamp((_1685 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1692 = _1682;
        _1693 = _1683;
        _1694 = _1684;
        _1695 = _1688 - _1390;
        _1696 = (_1688 + _1390) * 0.5f;
    }
    else
    {
        _1692 = 0.0f.xxxx;
        _1693 = 0.0f.xxxx;
        _1694 = 0.0f.xxxx;
        _1695 = 0.0f;
        _1696 = 1.0f;
    }
    float4 _1716 = _1694 + float4(_9_m108.x * _1696, (_9_m108.y * _1696) + ((_9_m108.w * _1695) * 0.5f), _9_m108.z * _1696, (_9_m108.w * _1696) + ((_9_m108.y * _1695) * 0.375f));
    float4 _1736 = _1693 + float4(_9_m109.x * _1696, (_9_m109.y * _1696) + ((_9_m109.w * _1695) * 0.5f), _9_m109.z * _1696, (_9_m109.w * _1696) + ((_9_m109.y * _1695) * 0.375f));
    float4 _1756 = _1692 + float4(_9_m110.x * _1696, (_9_m110.y * _1696) + ((_9_m110.w * _1695) * 0.5f), _9_m110.z * _1696, (_9_m110.w * _1696) + ((_9_m110.y * _1695) * 0.375f));
    float4 _1914;
    float4 _1915;
    float4 _1916;
    [branch]
    if (all(bool2(_430.x >= 0.0f.xx.x, _430.y >= 0.0f.xx.y)))
    {
        float4 _1764 = _49.SampleLevel(_13, _430, 0.0f);
        float4 _1765 = abs(_1764);
        float4 _1911;
        float4 _1912;
        float4 _1913;
        [branch]
        if (any(bool4(_1765.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1765.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1765.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1765.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1771 = length(_1764.yzw);
            uint _1773;
            float _1776;
            _1773 = 0u;
            _1776 = 1.0f;
            for (float _1778 = _1771; _1778 > 4.599999904632568359375f; )
            {
                _1773++;
                _1776 *= 0.5f;
                _1778 *= 0.5f;
                continue;
            }
            float4 _1782 = _1764 * _1776;
            float4 _1787 = float4(0.0f, _1782.yzw);
            float2 _1809 = (_48.SampleLevel(_13, float2(((((length(_1787) * _47_m3.x) + _47_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _47_m2.xy) + _47_m2.zw;
            float4 _1823;
            _1823 = float4(_1809.x * 3.5449078083038330078125f, _1787.yzw * _1809.y) * exp(_1782.x * 0.282094776630401611328125f);
            for (uint _1826 = 0u; _1826 < _1773; )
            {
                _1823 = mul(float4x4(_1823, float4(_1823.yx, 0.0f, 0.0f), float4(_1823.z, 0.0f, _1823.x, 0.0f), float4(_1823.w, 0.0f, 0.0f, _1823.x)) * 0.282094776630401611328125f, _1823);
                _1826++;
                continue;
            }
            float4x4 _1847 = float4x4(_1823, float4(_1823.yx, 0.0f, 0.0f), float4(_1823.z, 0.0f, _1823.x, 0.0f), float4(_1823.w, 0.0f, 0.0f, _1823.x)) * 0.282094776630401611328125f;
            float4 _1857 = mul(_1847, float4(_1716.w * 1.1283791065216064453125f, _1716.y * (-0.977204978466033935546875f), _1716.z * 0.977204978466033935546875f, _1716.x * (-0.977204978466033935546875f)));
            float4 _1877 = mul(_1847, float4(_1736.w * 1.1283791065216064453125f, _1736.y * (-0.977204978466033935546875f), _1736.z * 0.977204978466033935546875f, _1736.x * (-0.977204978466033935546875f)));
            float4 _1897 = mul(_1847, float4(_1756.w * 1.1283791065216064453125f, _1756.y * (-0.977204978466033935546875f), _1756.z * 0.977204978466033935546875f, _1756.x * (-0.977204978466033935546875f)));
            _1911 = float4(_1857.x * 0.886226952075958251953125f, _1857.w * (-1.02332675457000732421875f), _1857.y * (-1.02332675457000732421875f), _1857.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1912 = float4(_1877.x * 0.886226952075958251953125f, _1877.w * (-1.02332675457000732421875f), _1877.y * (-1.02332675457000732421875f), _1877.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1913 = float4(_1897.x * 0.886226952075958251953125f, _1897.w * (-1.02332675457000732421875f), _1897.y * (-1.02332675457000732421875f), _1897.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1911 = _1716;
            _1912 = _1736;
            _1913 = _1756;
        }
        _1914 = _1911;
        _1915 = _1912;
        _1916 = _1913;
    }
    else
    {
        _1914 = _1716;
        _1915 = _1736;
        _1916 = _1756;
    }
    float _1923 = max(0.0f, dot(_1914.xyz * _1340.x, _411) + _1914.w);
    float _1930 = max(0.0f, dot(_1915.xyz * _1340.y, _411) + _1915.w);
    float _1937 = max(0.0f, dot(_1916.xyz * _1340.z, _411) + _1916.w);
    float3 _1947 = reflect(_470, _997);
    float _1955 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1062, 0.001000000047497451305389404296875f))));
    float2 _1959 = floor(_417 * _27_m0.w);
    float _1976 = floor(_449 - _27_m2.y);
    float _1980 = clamp(_1976, 0.0f, _27_m1.x - 1.0f);
    uint _1990 = (_1976 <= _1980) ? (_24.Load(uint(_9_m21.z + int(_1959.x + (_1959.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1980)) * 4 + 0)) : 0u;
    float _1993 = dot(float4(_1923, _1930, _1937, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1995;
    float _1998;
    uint _2000;
    _1995 = 0.0f.xxx;
    _1998 = 1.0f;
    _2000 = _1990;
    uint _2001;
    float3 _1996;
    float _1999;
    bool _2003;
    [loop]
    for (;;)
    {
        _2003 = _1998 > 0.00999999977648258209228515625f;
        if ((_2000 != 0u) && _2003)
        {
            uint _2007 = firstbitlow(_2000);
            _2001 = _2000 ^ (1u << (_2007 & 31u));
            float3 _2027 = float3(dot(_27_m4[_2007]._m2, _446), dot(_27_m4[_2007]._m3, _446), dot(_27_m4[_2007]._m4, _446));
            float3 _2028 = abs(_2027);
            if (all(bool3(_2028.x <= _27_m4[_2007]._m1.xyz.x, _2028.y <= _27_m4[_2007]._m1.xyz.y, _2028.z <= _27_m4[_2007]._m1.xyz.z)))
            {
                float3 _2037 = _27_m4[_2007]._m1.xyz * 0.100000001490116119384765625f;
                float3 _2039 = _2028 * 0.100000001490116119384765625f;
                float3 _2040 = _2039 * _2039;
                float3 _2043 = (_27_m4[_2007]._m1.xyz - _2028) * _27_m4[_2007]._m5.xyz;
                float3 _2091;
                [branch]
                if (_27_m4[_2007]._m6.x == 1.0f)
                {
                    float3 _2076 = float3(dot(_27_m4[_2007]._m2.xyz, _1947), dot(_27_m4[_2007]._m3.xyz, _1947), dot(_27_m4[_2007]._m4.xyz, _1947));
                    float3 _2078 = (_27_m4[_2007]._m1.xyz - _2027) / _2076;
                    float3 _2081 = ((-_27_m4[_2007]._m1.xyz) - _2027) / _2076;
                    bool3 _2082 = bool3(_2076.x > 0.0f.xxx.x, _2076.y > 0.0f.xxx.y, _2076.z > 0.0f.xxx.z);
                    float3 _2083 = float3(_2082.x ? _2078.x : _2081.x, _2082.y ? _2078.y : _2081.y, _2082.z ? _2078.z : _2081.z);
                    _2091 = _2027 + (_2076 * min(min(_2083.x, _2083.y), _2083.z));
                }
                else
                {
                    _2091 = _1947;
                }
                float3 _2092 = normalize(_2091);
                float3 _2095 = float3(int3(sign(_2092)));
                float3 _2098 = _2092 / dot(_2092, _2095).xxx;
                float3 _2112;
                if (_2098.z < 0.0f)
                {
                    float3 _2103 = abs(_2098);
                    float2 _2110 = _2095.xy * float2(1.0f - _2103.y, 1.0f - _2103.x);
                    _2112 = float3(_2110.x, _2110.y, _2098.z);
                }
                else
                {
                    _2112 = _2098;
                }
                float _2137 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2007]._m0, float4(_997, 1.0f))));
                float _2150 = clamp((min(_2043.x, min(_2043.y, _2043.z)) * _27_m4[_2007]._m6.y) + ((((((_2037 * _2037).x - ((_2040.x + _2040.y) + _2040.z)) * _27_m4[_2007]._m5.x) * _27_m4[_2007]._m5.x) * (1.0f - _27_m4[_2007]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2007]._m6.w;
                _1996 = _1995 + ((((_22.SampleLevel(_15, float3((((_2112.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2007]._m1.w), _1955).xyz * _27_m4[_2007]._m5.w) * ((((((clamp(abs(_1993 / _2137), 0.0f, 1.0f) * 2.0f) + _1993) / (2.0f + _2137)) - 1.0f) * _9_m23.w) + 1.0f)) * _2150) * _1998);
                _1999 = _1998 * (1.0f - _2150);
            }
            else
            {
                _1996 = _1995;
                _1999 = _1998;
            }
            _1995 = _1996;
            _1998 = _1999;
            _2000 = _2001;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _2219;
    if (_2003)
    {
        float3 _2158 = normalize(_1947);
        float3 _2161 = float3(int3(sign(_2158)));
        float3 _2164 = _2158 / dot(_2158, _2161).xxx;
        float3 _2178;
        if (_2164.z < 0.0f)
        {
            float3 _2169 = abs(_2164);
            float2 _2176 = _2161.xy * float2(1.0f - _2169.y, 1.0f - _2169.x);
            _2178 = float3(_2176.x, _2176.y, _2164.z);
        }
        else
        {
            _2178 = _2164;
        }
        float _2205 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_997, 1.0f))));
        _2219 = _1995 + ((_22.SampleLevel(_15, float3((((_2178.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1955).xyz * ((((((clamp(abs(_1993 / _2205), 0.0f, 1.0f) * 2.0f) + _1993) / (2.0f + _2205)) - 1.0f) * _9_m23.w) + 1.0f)) * _1998);
    }
    else
    {
        _2219 = _1995;
    }
    float3 _2225 = (_2219 * _9_m23.z) * _9_m22.y;
    // RenoDX code start: link cubemap ambient intensity to the scene lighting response.
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _2225 *= 0.25f + (0.75f * saturate(_1993));
    }
    // RenoDX code end
    float3 _2248;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _2242 = _20.SampleBias(_13, _4, _9_m16);
        float _2243 = _2242.x;
        _2248 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2243) + (_2225 * (1.0f - _2243));
    }
    else
    {
        _2248 = _2225;
    }
    float3 _2251 = (((float3(_1923, _1930, _1937) * _1066) * _9_m22.x) * _1317) + ((_2248 * (_1095 + ((_1070 * ((1.0f - _1096) / _1096)) * _1095))) * _1316);
    float4 _2253 = float4(_1275.x, _1275.y, _1275.z, _1275.w) + float4(_2251.x, _2251.y, _2251.z, 0.0f.xxxx.w);
    float _2271 = _444 * _9_m46.w;
    float _2276 = max(0.00999999977648258209228515625f, _2271 + _9_m47.w);
    float3 _2290 = exp(_9_m45.xyz * ((-max(0.0f, (_469 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2276)) / _2276) * exp(_2271 + _9_m48.w))));
    float _2293 = dot(_470, _9_m44.xyz);
    float _2299 = _9_m45.w * _9_m45.w;
    float _2303 = (1.0f + _2299) - ((2.0f * _9_m45.w) * _2293);
    float3 _2627;
    float _2628;
    if (_9_m55.z > 0.0f)
    {
        uint3 _2455 = (uint3(int3(_367, _368, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2456 = _2455.y;
        uint _2457 = _2455.z;
        uint _2460 = _2455.x + (_2456 * _2457);
        uint _2462 = _2456 + (_2457 * _2460);
        uint _2464 = _2457 + (_2460 * _2462);
        uint _2466 = _2460 + (_2462 * _2464);
        float _2490 = dot(_470, -_7_m0[2].xyz);
        float3 _2498 = _442 - _7_m11.xyz;
        float _2500 = (_9_m55.w * ((_2490 > 5.9604644775390625e-08f) ? (1.0f / _2490) : 0.0f)) * (1.0f / _469);
        float _2501 = _2498.y;
        float _2502 = _2500 * _2501;
        float _2504 = _7_m11.y + _2502;
        float _2505 = _2501 - _2502;
        float _2507 = (1.0f - _2500) * _469;
        float _2521 = max(-127.0f, _9_m49.z * _2505);
        float _2545 = max(-127.0f, _9_m52.x * _2505);
        float _2556 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2504 - _9_m49.x)))) * ((abs(_2521) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2521)) / _2521) : (0.693147182464599609375f - (0.2402265071868896484375f * _2521)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2504 - _9_m52.z)))) * ((abs(_2545) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2545)) / _2545) : (0.693147182464599609375f - (0.2402265071868896484375f * _2545))));
        float _2578 = clamp((_469 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2581 = clamp((max(clamp(exp2(-(_2556 * _2507)), 0.0f, 1.0f), _9_m51.w) + clamp((_469 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2578, 0.0f, 1.0f);
        float4 _2621 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _45.SampleLevel(_13, float3((_417 + ((((float3(uint3(_2466, _2462 + (_2464 * _2466), _359) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_449 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_449 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2623 = _2621.w;
        _2627 = _2621.xyz + (((_9_m51.xyz * (1.0f - _2581)) + (((_9_m54.xyz * pow(clamp(dot(_468, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2556 * max(_2507 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2578))) * _2623);
        _2628 = _2623 * _2581;
    }
    else
    {
        float3 _2331 = _442 - _7_m11.xyz;
        float _2333 = _2331.y;
        float _2347 = max(-127.0f, _9_m49.z * _2333);
        float _2371 = max(-127.0f, _9_m52.x * _2333);
        float _2382 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2347) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2347)) / _2347) : (0.693147182464599609375f - (0.2402265071868896484375f * _2347)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2371) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2371)) / _2371) : (0.693147182464599609375f - (0.2402265071868896484375f * _2371))));
        float _2404 = clamp((_469 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2407 = clamp((max(clamp(exp2(-(_2382 * _469)), 0.0f, 1.0f), _9_m51.w) + clamp((_469 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2404, 0.0f, 1.0f);
        _2627 = (_9_m51.xyz * (1.0f - _2407)) + (((_9_m54.xyz * pow(clamp(dot(_468, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2382 * max(_469 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2404));
        _2628 = _2407;
    }
    float3 _2631 = _2290 * _2628;
    float3 _2633 = (clamp(_2253.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2631) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2293 * _2293)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2299) / max((12.56637096405029296875f * _2303) * sqrt(_2303), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2290)) * _2628) + _2627);

    // RenoDX code start: apply the hue-preserving fog composite.
    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _2633 = (_2633 * 0.65f) + (clamp(_2253.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    // RenoDX code end
    float4 _2635 = float4(_2633.x, _2633.y, _2633.z, _2253.w);
    _2635.w = dot(_2631, 0.3333333432674407958984375f.xxx);
    _5 = _2635;
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
