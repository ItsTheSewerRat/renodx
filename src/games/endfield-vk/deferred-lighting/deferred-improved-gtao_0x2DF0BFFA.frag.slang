// DX11 0xEE78E1BA -> Vulkan 0x2DF0BFFA
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

static uint _288 = 0u;

#include "./renodx_injection.hlsli"

[[vk::binding(31, 3)]]
cbuffer _6_7 : register(b31)
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

[[vk::binding(34, 3)]]
cbuffer _8_9 : register(b34)
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

[[vk::binding(36, 3)]] ByteAddressBuffer _24 : register(t36);
[[vk::binding(35, 3)]]
cbuffer _25_27 : register(b35)
{
    float4 _27_m0 : packoffset(c0);
    float4 _27_m1 : packoffset(c1);
    float4 _27_m2 : packoffset(c2);
    float4 _27_m3 : packoffset(c3);
    _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(32, 3)]]
cbuffer _28_29 : register(b32)
{
    float4 _29_m0 : packoffset(c0);
    float4 _29_m1 : packoffset(c1);
    float4 _29_m2 : packoffset(c2);
    float4 _29_m3 : packoffset(c3);
    float4 _29_m4 : packoffset(c4);
    uint4 _29_m5 : packoffset(c5);
    float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(30, 3)]]
cbuffer _33_34 : register(b30)
{
    column_major float4x4 _34_m0 : packoffset(c0);
    float4 _34_m1 : packoffset(c4);
};

[[vk::binding(33, 3)]]
cbuffer _40_41 : register(b33)
{
    float4 _41_m0 : packoffset(c0);
    float4 _41_m1 : packoffset(c1);
    float4 _41_m2 : packoffset(c2);
    float4 _41_m3 : packoffset(c3);
    float4 _41_m4 : packoffset(c4);
    uint4 _41_m5 : packoffset(c5);
    float4 _41_m6 : packoffset(c6);
    float4 _41_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3);
[[vk::binding(27, 3)]] Texture2D<float4> _18 : register(t27);
[[vk::binding(9, 3)]] Texture2D<float4> _19 : register(t9);
[[vk::binding(10, 3)]] Texture2D<float4> _20 : register(t10);
[[vk::binding(21, 3)]] Texture2D<float4> _21 : register(t21);
[[vk::binding(11, 3)]] Texture2DArray<float4> _22 : register(t11);
[[vk::binding(8, 3)]] Texture2D<float4> _30 : register(t8);
[[vk::binding(28, 3)]] Texture2D<float4> _31 : register(t28);
[[vk::binding(7, 3)]] Texture2D<float4> _32 : register(t7);
[[vk::binding(12, 3)]] Texture3D<float4> _36 : register(t12);
[[vk::binding(13, 3)]] Texture2D<float4> _37 : register(t13);
[[vk::binding(26, 3)]] Texture2D<float4> _38 : register(t26);
[[vk::binding(20, 3)]] Texture3D<float4> _39 : register(t20);
[[vk::binding(29, 3)]] Texture2D<float4> _42 : register(t29);
[[vk::binding(6, 3)]] Texture2D<float4> _43 : register(t6);
[[vk::binding(19, 3)]] Texture3D<float4> _44 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _45 : register(t16);
[[vk::binding(18, 3)]] Texture3D<float4> _46 : register(t18);
[[vk::binding(15, 3)]] Texture3D<float4> _47 : register(t15);
[[vk::binding(17, 3)]] Texture3D<float4> _48 : register(t17);
[[vk::binding(14, 3)]] Texture3D<float4> _49 : register(t14);
[[vk::binding(5, 3)]] Texture2D<float4> _50 : register(t5);
[[vk::binding(25, 3)]] Texture2D<float4> _51 : register(t25);
[[vk::binding(24, 3)]] Texture2D<float4> _52 : register(t24);
[[vk::binding(23, 3)]] Texture2D<float4> _53 : register(t23);
[[vk::binding(22, 3)]] Texture3D<float4> _54 : register(t22);

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
    uint2 _294 = uint2(gl_FragCoord.xy);
    int _297 = int(_294.x);
    int _298 = int(_294.y);
    int2 _300 = int3(_297, _298, 0).xy;
    float4 _302 = _51.Load(int3(_300, 0));
    float4 _304 = _52.Load(int3(_300, 0));
    float4 _306 = _53.Load(int3(_300, 0));
    uint _310 = uint(_302.x * 1023.0f);
    float _314 = float((_310 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    float _322 = float(((_310 & 7u) << 2u) | (uint(_302.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
    uint _326 = uint(round(_302.y * 1023.0f));
    float _331 = float((_326 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    uint _336 = uint(_302.z * 1023.0f);
    float2 _351 = (_304.xy * 2.0f) - 1.0f.xx;
    float _355 = 1.0f - dot(1.0f.xx, abs(_351));
    float3 _357 = float3(_351.x, _355, _351.y);
    float3 _369;
    if (_355 < 0.0f)
    {
        float2 _364 = _357.xz;
        bool2 _365 = bool2(_364.x >= 0.0f.xx.x, _364.y >= 0.0f.xx.y);
        float2 _367 = (1.0f.xx - abs(_357.zx)) * float2(_365.x ? 1.0f.xx.x : (-1.0f).xx.x, _365.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _369 = float3(_367.x, _357.y, _367.y);
    }
    else
    {
        _369 = _357;
    }
    float3 _370 = normalize(_369);
    float _371 = _304.z;
    float _373 = _306.w;
    float _375 = (float(_326 & 7u) * 0.107142865657806396484375f) + 0.5f;
    float2 _378 = float2(_294);
    float2 _391 = gl_FragCoord.xy * _9_m0.zw;
    float2 _393 = (_391 * 2.0f) - 1.0f.xx;
    float4 _396 = float4(_393, _18.SampleLevel(_12, (_378 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _396.y = -_393.y;
    float4 _399 = mul(_7_m6, _396);
    float3 _403 = _399.xyz / _399.w.xxx;
    float4 _407 = float4(_403, 1.0f);
    float _410 = abs(mul(_7_m0, _407).z);
    float3 _425;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _425 = _7_m11.xyz - _403;
            break;
        }
        else
        {
            _425 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _426 = dot(_425, _425);
    float _428 = rsqrt(max(_426, 9.9999999392252902907785028219223e-09f));
    float3 _429 = _425 * _428;
    float _430 = _426 * _428;
    float3 _431 = -_429;
    float2 _444;
    if (_9_m129.x > 0.00048828125f)
    {
        _444 = _50.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _444 = 1.0f.xx;
    }
    float _445 = dot(_370, float3(0.0f, -1.0f, 0.0f));
    float3 _500;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _472 = abs(_370.x);
        float _474 = abs(_370.y);
        float _476 = abs(_370.z);
        float3 _481 = float3(_472, _474, _476) * (1.0f / ((_472 + _474) + _476));
        _500 = ((((float3(0.0f, 0.0f, 1.0f) * _481.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _481.y)) + (float3(1.0f, 0.0f, 0.0f) * _481.z)) * ((_36.SampleLevel(_14, _403 * _9_m124.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_445)));
    }
    else
    {
        _500 = 0.0f.xxx;
    }
    float4 _514 = mul(_34_m0, float4((_403 + ((((_370 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_445, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _445), 0.100000001490116119384765625f, 1.0f)))) + _500, 1.0f));
    float2 _517 = (_514.xy * 0.5f) + 0.5f.xx;
    float4 _518 = float4(_517.x, _517.y, _514.z, _514.w);
    _518.y = 1.0f - _517.y;
    float _539;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _539 = _32.SampleCmpLevelZero(_16, (_518.xy + _34_m1.xy).xy, max(_514.z, 0.00048828125f));
    }
    else
    {
        _539 = 1.0f;
    }
    float _544 = lerp(_9_m125.w, 1.0f, clamp(_370.y, 0.0f, 1.0f));
    float2 _553 = abs(_403.xz - _7_m11.xz);
    float _556 = max(_553.x, _553.y);
    float _575 = 1.0f - (_444 * (1.0f - lerp(lerp(_9_m125.z * _544, 1.0f, lerp(_544 * _539, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _556))), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _556)))).x;
    float _576 = 1.0f - _371;
    float _583 = clamp((_576 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f);
    float3 _591 = _306.xyz * lerp(1.0f, 0.25f, (_9_m117.x * _583) * _575);
    float _601 = lerp(_576, clamp(_576 + (((0.60000002384185791015625f - (0.4000000059604644775390625f * _583)) * _576) * (_371 + (-0.300000011920928955078125f))), _576, 0.699999988079071044921875f), (_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _575);
    float _602 = 1.0f - _601;
    float3 _604 = (0.07999999821186065673828125f * _375).xxx;
    float _605 = dot(_370, _429);
    float _606 = max(0.0f, _605);
    float4 _608 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _602) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _609 = _608.x;
    float2 _619 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_609 * _609, exp2((-9.27999973297119140625f) * _606)) * _609) + _608.y)) + _608.zw;
    float4 _631 = _38.SampleLevel(_13, _391, 0.0f);
    float _632 = _631.x;
    float4 _636 = _30.Load(int3(_300, 0));
    float _637 = _636.x;
    float4 _819;
    if (_637 > 0.001000000047497451305389404296875f)
    {
        float3 _647 = reflect(_431, _370);
        float3 _648 = -_29_m0.xyz;
        float _653 = dot(_648, _647);
        float3 _655 = _647 - (_648 * _653);
        bool3 _657 = (_653 < _29_m4.z).xxx;
        float3 _665 = normalize((_648 * _29_m4.z) + ((_655 * rsqrt(max(6.103515625e-05f, dot(_655, _655)))) * _29_m4.y));
        float3 _666 = float3(_657.x ? _665.x : _647.x, _657.y ? _665.y : _647.y, _657.z ? _665.z : _647.z);
        float3 _670 = _666 + _429;
        float3 _674 = _670 * rsqrt(max(6.103515625e-05f, dot(_670, _670)));
        float _675 = dot(_370, _666);
        float _676 = clamp(dot(_666, _370), 0.0f, 1.0f);
        float _678 = clamp(dot(_370, _674), 0.0f, 1.0f);
        float _681 = dot(_429, _666);
        float _683 = clamp(_605, 0.0f, 1.0f);
        float _684 = _602 * _602;
        float _685 = _684 * _684;
        float _706 = (((_678 * _685) - _678) * _678) + 1.0f;
        float _709 = 1.0f - clamp(dot(_429, _674), 0.0f, 1.0f);
        float _710 = _709 * _709;
        float _712 = (_709 * _710) * _710;
        float _742 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_601 * (1.04997003078460693359375f + (_601 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _601))))));
        float _743 = 1.0f - _742;
        float3 _746 = _604 + ((1.0f.xxx - _604) * 0.0476190485060214996337890625f);
        float _777 = clamp(-_681, 0.0f, 1.0f);
        float _781 = (((_777 * 0.36000001430511474609375f) - _777) * _777) + 1.0f;
        float _782 = _781 * _781;
        float3 _794 = ((min(((_604 * (1.0f - _712)) + _712.xxx) * ((_685 / (_706 * _706)) * (0.5f / (((_676 * sqrt(((((-_683) * _685) + _683) * _683) + _685)) + (_683 * sqrt(((((-_676) * _685) + _676) * _676) + _685))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_746 * (((_37.SampleLevel(_13, (float2(_683, _602) * 0.96875f) + 0.015625f.xx, 0.0f).x * _37.SampleLevel(_13, (float2(_676, _602) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _742) / _743)) * _746) / (1.0f.xxx - (_746 * _743)))) * lerp(clamp(_605 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_681, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_681 + 1.0f, 0.0f, 1.0f))) * _331;
        float3 _804 = _29_m1.xyz * (((((_591 * _331) * 1.0f) * (float((_336 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_794 * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _676)) + (((((_591 / max(0.00999999977648258209228515625f, max(max(_591.x, _591.y), _591.z)).xxx) * _314) * (clamp(0.5f - _675, 0.0f, 1.0f) * ((0.36000001430511474609375f != _782) ? (0.36000001430511474609375f / _782) : 1.0f))) + (_591 * (clamp(_675 + _322, 0.0f, 1.0f) - clamp(_676, 0.0f, 1.0f)))) * _331));
        float3 _817 = lerp(_804, _804 * _31.SampleBias(_13, float2(_637, 0.5f), _9_m16).xyz, (1.0f - _637).xxx) * lerp(_632, max(_632, _331), _322);
        _819 = float4(_817.x, _817.y, _817.z, 0.0f.xxxx.w);
    }
    else
    {
        _819 = 0.0f.xxxx;
    }
    float3 _821 = _373.xxx;
    float3 _858;
    float3 _859;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _834 = min(_21.SampleBias(_12, _4, _9_m16).x, _373);
        _858 = clamp((pow(abs(_606 + _834), exp2(((-16.0f) * _602) - 1.0f)) - 1.0f) + _834, 0.0f, 1.0f).xxx;
        _859 = max(_834.xxx, ((((((_591 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _834) + ((_591 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _834) + ((_591 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _834);
    }
    else
    {
        _858 = _821;
        _859 = _821;
    }
    _819.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _858 : 1.0f.xxx;
    float3 _869 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _878 = _403 - (_9_m105.xyz + (_869 * (-_9_m107.w)));
    float _892 = max(clamp((max(abs(_878.x), abs(_878.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_878.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1194;
    float4 _1195;
    float4 _1196;
    float _1197;
    float _1198;
    if ((_9_m105.w != 0.0f) && (_892 < 1.0f))
    {
        float3 _905 = _403 - (_9_m105.xyz + (_869 * (-_9_m107.y)));
        float _919 = max(clamp((max(abs(_905.x), abs(_905.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_905.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _995;
        float4 _996;
        float4 _997;
        float4 _998;
        if (_919 < 1.0f)
        {
            float3 _928 = ((_403 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _930 = _928 - floor(_928);
            float4 _934 = _44.SampleLevel(_14, _930, 0.0f);
            float _935 = 1.0f - _919;
            float _939 = _9_m106.y * 0.5f;
            float _944 = _930.x;
            float _945 = clamp(_930.y, _939, 1.0f - _939) * 0.3333333432674407958984375f;
            float _946 = _930.z;
            float4 _949 = _45.SampleLevel(_13, float3(_944, _945, _946), 0.0f);
            float _965 = _934.x;
            float _975 = _934.y;
            float _985 = _934.z;
            _995 = _892 + (_949.w * _935);
            _996 = float4(((_45.SampleLevel(_13, float3(_944, _945 + 0.666666686534881591796875f, _946), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _985, _985) * _935;
            _997 = float4(((_45.SampleLevel(_13, float3(_944, _945 + 0.3333333432674407958984375f, _946), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _975, _975) * _935;
            _998 = float4(((_949.xyz * 4.0f) - 2.0f.xxx) * _965, _965) * _935;
        }
        else
        {
            _995 = _892;
            _996 = 0.0f.xxxx;
            _997 = 0.0f.xxxx;
            _998 = 0.0f.xxxx;
        }
        float3 _1004 = _403 - (_9_m105.xyz + (_869 * (-_9_m107.z)));
        float _1018 = max(clamp((max(abs(_1004.x), abs(_1004.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1004.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1098;
        float4 _1099;
        float4 _1100;
        float4 _1101;
        if (_1018 < 1.0f)
        {
            float3 _1027 = ((_403 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1029 = _1027 - floor(_1027);
            float4 _1033 = _46.SampleLevel(_14, _1029, 0.0f);
            float _1035 = _919 * (1.0f - _1018);
            float _1039 = _9_m106.y * 0.5f;
            float _1044 = _1029.x;
            float _1045 = clamp(_1029.y, _1039, 1.0f - _1039) * 0.3333333432674407958984375f;
            float _1046 = _1029.z;
            float4 _1049 = _47.SampleLevel(_13, float3(_1044, _1045, _1046), 0.0f);
            float _1065 = _1033.x;
            float _1076 = _1033.y;
            float _1087 = _1033.z;
            _1098 = _995 + (_1049.w * _1035);
            _1099 = _996 + (float4(((_47.SampleLevel(_13, float3(_1044, _1045 + 0.666666686534881591796875f, _1046), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1087, _1087) * _1035);
            _1100 = _997 + (float4(((_47.SampleLevel(_13, float3(_1044, _1045 + 0.3333333432674407958984375f, _1046), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1076, _1076) * _1035);
            _1101 = _998 + (float4(((_1049.xyz * 4.0f) - 2.0f.xxx) * _1065, _1065) * _1035);
        }
        else
        {
            _1098 = _995;
            _1099 = _996;
            _1100 = _997;
            _1101 = _998;
        }
        float4 _1184;
        float4 _1185;
        float4 _1186;
        float _1187;
        if (_1018 > 0.0f)
        {
            float3 _1110 = ((_403 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _1113 = _9_m106.xyz * 0.5f;
            float3 _1115 = clamp(_1110 - floor(_1110), _1113, 1.0f.xxx - _1113);
            float4 _1119 = _48.SampleLevel(_14, _1115, 0.0f);
            float _1121 = _1018 * (1.0f - _892);
            float _1125 = _9_m106.y * 0.5f;
            float _1130 = _1115.x;
            float _1131 = clamp(_1115.y, _1125, 1.0f - _1125) * 0.3333333432674407958984375f;
            float _1132 = _1115.z;
            float4 _1135 = _49.SampleLevel(_13, float3(_1130, _1131, _1132), 0.0f);
            float _1151 = _1119.x;
            float _1162 = _1119.y;
            float _1173 = _1119.z;
            _1184 = _1099 + (float4(((_49.SampleLevel(_13, float3(_1130, _1131 + 0.666666686534881591796875f, _1132), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1173, _1173) * _1121);
            _1185 = _1100 + (float4(((_49.SampleLevel(_13, float3(_1130, _1131 + 0.3333333432674407958984375f, _1132), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1162, _1162) * _1121);
            _1186 = _1101 + (float4(((_1135.xyz * 4.0f) - 2.0f.xxx) * _1151, _1151) * _1121);
            _1187 = _1098 + (_1135.w * _1121);
        }
        else
        {
            _1184 = _1099;
            _1185 = _1100;
            _1186 = _1101;
            _1187 = _1098;
        }
        float _1190 = clamp((_1187 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1194 = _1184;
        _1195 = _1185;
        _1196 = _1186;
        _1197 = _1190 - _892;
        _1198 = (_1190 + _892) * 0.5f;
    }
    else
    {
        _1194 = 0.0f.xxxx;
        _1195 = 0.0f.xxxx;
        _1196 = 0.0f.xxxx;
        _1197 = 0.0f;
        _1198 = 1.0f;
    }
    float4 _1218 = _1196 + float4(_9_m108.x * _1198, (_9_m108.y * _1198) + ((_9_m108.w * _1197) * 0.5f), _9_m108.z * _1198, (_9_m108.w * _1198) + ((_9_m108.y * _1197) * 0.375f));
    float4 _1238 = _1195 + float4(_9_m109.x * _1198, (_9_m109.y * _1198) + ((_9_m109.w * _1197) * 0.5f), _9_m109.z * _1198, (_9_m109.w * _1198) + ((_9_m109.y * _1197) * 0.375f));
    float4 _1258 = _1194 + float4(_9_m110.x * _1198, (_9_m110.y * _1198) + ((_9_m110.w * _1197) * 0.5f), _9_m110.z * _1198, (_9_m110.w * _1198) + ((_9_m110.y * _1197) * 0.375f));
    float4 _1416;
    float4 _1417;
    float4 _1418;
    [branch]
    if (all(bool2(_391.x >= 0.0f.xx.x, _391.y >= 0.0f.xx.y)))
    {
        float4 _1266 = _43.SampleLevel(_13, _391, 0.0f);
        float4 _1267 = abs(_1266);
        float4 _1413;
        float4 _1414;
        float4 _1415;
        [branch]
        if (any(bool4(_1267.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1267.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1267.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1267.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1273 = length(_1266.yzw);
            uint _1275;
            float _1278;
            _1275 = 0u;
            _1278 = 1.0f;
            for (float _1280 = _1273; _1280 > 4.599999904632568359375f; )
            {
                _1275++;
                _1278 *= 0.5f;
                _1280 *= 0.5f;
                continue;
            }
            float4 _1284 = _1266 * _1278;
            float4 _1289 = float4(0.0f, _1284.yzw);
            float2 _1311 = (_42.SampleLevel(_13, float2(((((length(_1289) * _41_m3.x) + _41_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _41_m2.xy) + _41_m2.zw;
            float4 _1325;
            _1325 = float4(_1311.x * 3.5449078083038330078125f, _1289.yzw * _1311.y) * exp(_1284.x * 0.282094776630401611328125f);
            for (uint _1328 = 0u; _1328 < _1275; )
            {
                _1325 = mul(float4x4(_1325, float4(_1325.yx, 0.0f, 0.0f), float4(_1325.z, 0.0f, _1325.x, 0.0f), float4(_1325.w, 0.0f, 0.0f, _1325.x)) * 0.282094776630401611328125f, _1325);
                _1328++;
                continue;
            }
            float4x4 _1349 = float4x4(_1325, float4(_1325.yx, 0.0f, 0.0f), float4(_1325.z, 0.0f, _1325.x, 0.0f), float4(_1325.w, 0.0f, 0.0f, _1325.x)) * 0.282094776630401611328125f;
            float4 _1359 = mul(_1349, float4(_1218.w * 1.1283791065216064453125f, _1218.y * (-0.977204978466033935546875f), _1218.z * 0.977204978466033935546875f, _1218.x * (-0.977204978466033935546875f)));
            float4 _1379 = mul(_1349, float4(_1238.w * 1.1283791065216064453125f, _1238.y * (-0.977204978466033935546875f), _1238.z * 0.977204978466033935546875f, _1238.x * (-0.977204978466033935546875f)));
            float4 _1399 = mul(_1349, float4(_1258.w * 1.1283791065216064453125f, _1258.y * (-0.977204978466033935546875f), _1258.z * 0.977204978466033935546875f, _1258.x * (-0.977204978466033935546875f)));
            _1413 = float4(_1359.x * 0.886226952075958251953125f, _1359.w * (-1.02332675457000732421875f), _1359.y * (-1.02332675457000732421875f), _1359.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1414 = float4(_1379.x * 0.886226952075958251953125f, _1379.w * (-1.02332675457000732421875f), _1379.y * (-1.02332675457000732421875f), _1379.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1415 = float4(_1399.x * 0.886226952075958251953125f, _1399.w * (-1.02332675457000732421875f), _1399.y * (-1.02332675457000732421875f), _1399.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1413 = _1218;
            _1414 = _1238;
            _1415 = _1258;
        }
        _1416 = _1413;
        _1417 = _1414;
        _1418 = _1415;
    }
    else
    {
        _1416 = _1218;
        _1417 = _1238;
        _1418 = _1258;
    }
    float4 _1421 = float4(_370, 1.0f);
    float3 _1426 = max(float3(dot(_1416, _1421), dot(_1417, _1421), dot(_1418, _1421)), 0.0f.xxx);
    float4 _1431 = float4(-_370, 1.0f);
    float3 _1448 = reflect(_431, _370);
    float _1456 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_602, 0.001000000047497451305389404296875f))));
    float2 _1460 = floor(_378 * _27_m0.w);
    float _1477 = floor(_410 - _27_m2.y);
    float _1481 = clamp(_1477, 0.0f, _27_m1.x - 1.0f);
    uint _1491 = (_1477 <= _1481) ? (_24.Load(uint(_9_m21.z + int(_1460.x + (_1460.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1481)) * 4 + 0)) : 0u;
    float _1494 = dot(float4(_1426, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1496;
    float _1499;
    uint _1501;
    _1496 = 0.0f.xxx;
    _1499 = 1.0f;
    _1501 = _1491;
    uint _1502;
    float3 _1497;
    float _1500;
    bool _1504;
    [loop]
    for (;;)
    {
        _1504 = _1499 > 0.00999999977648258209228515625f;
        if ((_1501 != 0u) && _1504)
        {
            uint _1508 = firstbitlow(_1501);
            _1502 = _1501 ^ (1u << (_1508 & 31u));
            float3 _1528 = float3(dot(_27_m4[_1508]._m2, _407), dot(_27_m4[_1508]._m3, _407), dot(_27_m4[_1508]._m4, _407));
            float3 _1529 = abs(_1528);
            if (all(bool3(_1529.x <= _27_m4[_1508]._m1.xyz.x, _1529.y <= _27_m4[_1508]._m1.xyz.y, _1529.z <= _27_m4[_1508]._m1.xyz.z)))
            {
                float3 _1538 = _27_m4[_1508]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1540 = _1529 * 0.100000001490116119384765625f;
                float3 _1541 = _1540 * _1540;
                float3 _1544 = (_27_m4[_1508]._m1.xyz - _1529) * _27_m4[_1508]._m5.xyz;
                float3 _1592;
                [branch]
                if (_27_m4[_1508]._m6.x == 1.0f)
                {
                    float3 _1577 = float3(dot(_27_m4[_1508]._m2.xyz, _1448), dot(_27_m4[_1508]._m3.xyz, _1448), dot(_27_m4[_1508]._m4.xyz, _1448));
                    float3 _1579 = (_27_m4[_1508]._m1.xyz - _1528) / _1577;
                    float3 _1582 = ((-_27_m4[_1508]._m1.xyz) - _1528) / _1577;
                    bool3 _1583 = bool3(_1577.x > 0.0f.xxx.x, _1577.y > 0.0f.xxx.y, _1577.z > 0.0f.xxx.z);
                    float3 _1584 = float3(_1583.x ? _1579.x : _1582.x, _1583.y ? _1579.y : _1582.y, _1583.z ? _1579.z : _1582.z);
                    _1592 = _1528 + (_1577 * min(min(_1584.x, _1584.y), _1584.z));
                }
                else
                {
                    _1592 = _1448;
                }
                float3 _1593 = normalize(_1592);
                float3 _1596 = float3(int3(sign(_1593)));
                float3 _1599 = _1593 / dot(_1593, _1596).xxx;
                float3 _1613;
                if (_1599.z < 0.0f)
                {
                    float3 _1604 = abs(_1599);
                    float2 _1611 = _1596.xy * float2(1.0f - _1604.y, 1.0f - _1604.x);
                    _1613 = float3(_1611.x, _1611.y, _1599.z);
                }
                else
                {
                    _1613 = _1599;
                }
                float _1634 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1508]._m0, _1421)));
                float _1647 = clamp((min(_1544.x, min(_1544.y, _1544.z)) * _27_m4[_1508]._m6.y) + ((((((_1538 * _1538).x - ((_1541.x + _1541.y) + _1541.z)) * _27_m4[_1508]._m5.x) * _27_m4[_1508]._m5.x) * (1.0f - _27_m4[_1508]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1508]._m6.w;
                _1497 = _1496 + ((((_22.SampleLevel(_15, float3((((_1613.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1508]._m1.w), _1456).xyz * _27_m4[_1508]._m5.w) * ((((((clamp(abs(_1494 / _1634), 0.0f, 1.0f) * 2.0f) + _1494) / (2.0f + _1634)) - 1.0f) * _9_m23.w) + 1.0f)) * _1647) * _1499);
                _1500 = _1499 * (1.0f - _1647);
            }
            else
            {
                _1497 = _1496;
                _1500 = _1499;
            }
            _1496 = _1497;
            _1499 = _1500;
            _1501 = _1502;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1712;
    if (_1504)
    {
        float3 _1655 = normalize(_1448);
        float3 _1658 = float3(int3(sign(_1655)));
        float3 _1661 = _1655 / dot(_1655, _1658).xxx;
        float3 _1675;
        if (_1661.z < 0.0f)
        {
            float3 _1666 = abs(_1661);
            float2 _1673 = _1658.xy * float2(1.0f - _1666.y, 1.0f - _1666.x);
            _1675 = float3(_1673.x, _1673.y, _1661.z);
        }
        else
        {
            _1675 = _1661;
        }
        float _1698 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, _1421)));
        _1712 = _1496 + ((_22.SampleLevel(_15, float3((((_1675.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1456).xyz * ((((((clamp(abs(_1494 / _1698), 0.0f, 1.0f) * 2.0f) + _1494) / (2.0f + _1698)) - 1.0f) * _9_m23.w) + 1.0f)) * _1499);
    }
    else
    {
        _1712 = _1496;
    }
    float3 _1718 = (_1712 * _9_m23.z) * _9_m22.y;
    float3 _1741;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _1735 = _20.SampleBias(_13, _4, _9_m16);
        float _1736 = _1735.x;
        _1741 = (_19.SampleBias(_13, _4, _9_m16).xyz * _1736) + (_1718 * (1.0f - _1736));
    }
    else
    {
        _1741 = _1718;
    }
    float3 _1762 = ((((_1426 * _591) * _9_m22.x) * _859) + ((_1741 * ((_604 * _619.x) + (clamp(_375 * 4.0f, 0.0f, 1.0f) * _619.y).xxx)) * _858)) + (((((max(float3(dot(_1416, _1431), dot(_1417, _1431), dot(_1418, _1431)), 0.0f.xxx) * _9_m22.x) * _859) * (_591 / max(0.00999999977648258209228515625f, max(max(_591.x, _591.y), _591.z)).xxx)) * ((_314 * clamp(dot(_429, _370), 0.0f, 1.0f)) + (float(((_336 & 7u) << 2u) | (uint(_304.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
    float4 _1764 = float4(_819.x, _819.y, _819.z, _819.w) + float4(_1762.x, _1762.y, _1762.z, 0.0f.xxxx.w);
    float3 _1767 = clamp(_1764.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _1782 = _403.y * _9_m46.w;
    float _1787 = max(0.00999999977648258209228515625f, _1782 + _9_m47.w);
    float3 _1801 = exp(_9_m45.xyz * ((-max(0.0f, (_430 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1787)) / _1787) * exp(_1782 + _9_m48.w))));
    float _1804 = dot(_431, _9_m44.xyz);
    float _1810 = _9_m45.w * _9_m45.w;
    float _1814 = (1.0f + _1810) - ((2.0f * _9_m45.w) * _1804);
    float3 _2138;
    float _2139;
    if (_9_m55.z > 0.0f)
    {
        uint3 _1966 = (uint3(int3(_297, _298, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1967 = _1966.y;
        uint _1968 = _1966.z;
        uint _1971 = _1966.x + (_1967 * _1968);
        uint _1973 = _1967 + (_1968 * _1971);
        uint _1975 = _1968 + (_1971 * _1973);
        uint _1977 = _1971 + (_1973 * _1975);
        float _2001 = dot(_431, -_7_m0[2].xyz);
        float3 _2009 = _403 - _7_m11.xyz;
        float _2011 = (_9_m55.w * ((_2001 > 5.9604644775390625e-08f) ? (1.0f / _2001) : 0.0f)) * (1.0f / _430);
        float _2012 = _2009.y;
        float _2013 = _2011 * _2012;
        float _2015 = _7_m11.y + _2013;
        float _2016 = _2012 - _2013;
        float _2018 = (1.0f - _2011) * _430;
        float _2032 = max(-127.0f, _9_m49.z * _2016);
        float _2056 = max(-127.0f, _9_m52.x * _2016);
        float _2067 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2015 - _9_m49.x)))) * ((abs(_2032) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2032)) / _2032) : (0.693147182464599609375f - (0.2402265071868896484375f * _2032)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2015 - _9_m52.z)))) * ((abs(_2056) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2056)) / _2056) : (0.693147182464599609375f - (0.2402265071868896484375f * _2056))));
        float _2089 = clamp((_430 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2092 = clamp((max(clamp(exp2(-(_2067 * _2018)), 0.0f, 1.0f), _9_m51.w) + clamp((_430 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2089, 0.0f, 1.0f);
        float4 _2132 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _39.SampleLevel(_13, float3((_378 + ((((float3(uint3(_1977, _1973 + (_1975 * _1977), _288) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_410 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_410 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2134 = _2132.w;
        _2138 = _2132.xyz + (((_9_m51.xyz * (1.0f - _2092)) + (((_9_m54.xyz * pow(clamp(dot(_429, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2067 * max(_2018 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2089))) * _2134);
        _2139 = _2134 * _2092;
    }
    else
    {
        float3 _1842 = _403 - _7_m11.xyz;
        float _1844 = _1842.y;
        float _1858 = max(-127.0f, _9_m49.z * _1844);
        float _1882 = max(-127.0f, _9_m52.x * _1844);
        float _1893 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1858) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1858)) / _1858) : (0.693147182464599609375f - (0.2402265071868896484375f * _1858)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1882) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1882)) / _1882) : (0.693147182464599609375f - (0.2402265071868896484375f * _1882))));
        float _1915 = clamp((_430 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1918 = clamp((max(clamp(exp2(-(_1893 * _430)), 0.0f, 1.0f), _9_m51.w) + clamp((_430 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1915, 0.0f, 1.0f);
        _2138 = (_9_m51.xyz * (1.0f - _1918)) + (((_9_m54.xyz * pow(clamp(dot(_429, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1893 * max(_430 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1915));
        _2139 = _1918;
    }
    float3 _2142 = _1801 * _2139;
    float3 _2144 = (_1767 * _2142) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1804 * _1804)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1810) / max((12.56637096405029296875f * _1814) * sqrt(_1814), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1801)) * _2139) + _2138);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _2144 = (_2144 * 0.65f) + (_1767 * 0.35f);

    }
    float _2145 = dot(_2142, 0.3333333432674407958984375f.xxx);
    float4 _2146 = float4(_2144.x, _2144.y, _2144.z, _1764.w);
    _2146.w = _2145;
    float _2173 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _403) * _9_m61.z), 0.0f, 1.0f);
    float3 _2181 = lerp(_1767, _2146.xyz, min((1.0f - _2173) + ((_54.SampleLevel(_14, (_403 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _2173), 1.0f + _2145).xxx);
    _5 = float4(_2181.x, _2181.y, _2181.z, _2146.w);
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
