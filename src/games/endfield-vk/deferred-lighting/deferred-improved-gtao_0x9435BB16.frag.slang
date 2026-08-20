// DX11 0x66F41E33 -> Vulkan 0x9435BB16
struct _25
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

static uint _260 = 0u;

#include "./renodx_injection.hlsli"

[[vk::binding(26, 3)]]
cbuffer _6_7 : register(b26)
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

[[vk::binding(29, 3)]]
cbuffer _8_9 : register(b29)
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

[[vk::binding(31, 3)]] ByteAddressBuffer _23 : register(t31);
[[vk::binding(30, 3)]]
cbuffer _24_26 : register(b30)
{
    float4 _26_m0 : packoffset(c0);
    float4 _26_m1 : packoffset(c1);
    float4 _26_m2 : packoffset(c2);
    float4 _26_m3 : packoffset(c3);
    _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(27, 3)]]
cbuffer _27_28 : register(b27)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    float4 _28_m4 : packoffset(c4);
    uint4 _28_m5 : packoffset(c5);
    float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(28, 3)]]
cbuffer _35_36 : register(b28)
{
    float4 _36_m0 : packoffset(c0);
    float4 _36_m1 : packoffset(c1);
    float4 _36_m2 : packoffset(c2);
    float4 _36_m3 : packoffset(c3);
    float4 _36_m4 : packoffset(c4);
    uint4 _36_m5 : packoffset(c5);
    float4 _36_m6 : packoffset(c6);
    float4 _36_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(23, 3)]] Texture2D<float4> _17 : register(t23);
[[vk::binding(6, 3)]] Texture2D<float4> _18 : register(t6);
[[vk::binding(7, 3)]] Texture2D<float4> _19 : register(t7);
[[vk::binding(17, 3)]] Texture2D<float4> _20 : register(t17);
[[vk::binding(8, 3)]] Texture2DArray<float4> _21 : register(t8);
[[vk::binding(5, 3)]] Texture2D<float4> _29 : register(t5);
[[vk::binding(24, 3)]] Texture2D<float4> _30 : register(t24);
[[vk::binding(9, 3)]] Texture2D<float4> _32 : register(t9);
[[vk::binding(22, 3)]] Texture2D<float4> _33 : register(t22);
[[vk::binding(16, 3)]] Texture3D<float4> _34 : register(t16);
[[vk::binding(25, 3)]] Texture2D<float4> _37 : register(t25);
[[vk::binding(4, 3)]] Texture2D<float4> _38 : register(t4);
[[vk::binding(15, 3)]] Texture3D<float4> _39 : register(t15);
[[vk::binding(12, 3)]] Texture3D<float4> _40 : register(t12);
[[vk::binding(14, 3)]] Texture3D<float4> _41 : register(t14);
[[vk::binding(11, 3)]] Texture3D<float4> _42 : register(t11);
[[vk::binding(13, 3)]] Texture3D<float4> _43 : register(t13);
[[vk::binding(10, 3)]] Texture3D<float4> _44 : register(t10);
[[vk::binding(21, 3)]] Texture2D<float4> _45 : register(t21);
[[vk::binding(20, 3)]] Texture2D<float4> _46 : register(t20);
[[vk::binding(19, 3)]] Texture2D<float4> _47 : register(t19);
[[vk::binding(18, 3)]] Texture3D<float4> _48 : register(t18);

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
    uint2 _266 = uint2(gl_FragCoord.xy);
    int _269 = int(_266.x);
    int _270 = int(_266.y);
    int2 _272 = int3(_269, _270, 0).xy;
    float4 _274 = _45.Load(int3(_272, 0));
    float4 _276 = _46.Load(int3(_272, 0));
    float4 _278 = _47.Load(int3(_272, 0));
    uint _282 = uint(_274.x * 1023.0f);
    float _286 = float((_282 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    float _294 = float(((_282 & 7u) << 2u) | (uint(_274.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
    uint _298 = uint(round(_274.y * 1023.0f));
    float _303 = float((_298 >> 3u) & 127u) * 0.0078740157186985015869140625f;
    uint _308 = uint(_274.z * 1023.0f);
    float2 _323 = (_276.xy * 2.0f) - 1.0f.xx;
    float _327 = 1.0f - dot(1.0f.xx, abs(_323));
    float3 _329 = float3(_323.x, _327, _323.y);
    float3 _341;
    if (_327 < 0.0f)
    {
        float2 _336 = _329.xz;
        bool2 _337 = bool2(_336.x >= 0.0f.xx.x, _336.y >= 0.0f.xx.y);
        float2 _339 = (1.0f.xx - abs(_329.zx)) * float2(_337.x ? 1.0f.xx.x : (-1.0f).xx.x, _337.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _341 = float3(_339.x, _329.y, _339.y);
    }
    else
    {
        _341 = _329;
    }
    float3 _342 = normalize(_341);
    float _343 = _276.z;
    float3 _344 = _278.xyz;
    float _345 = _278.w;
    float _347 = (float(_298 & 7u) * 0.107142865657806396484375f) + 0.5f;
    float2 _350 = float2(_266);
    float2 _363 = gl_FragCoord.xy * _9_m0.zw;
    float2 _365 = (_363 * 2.0f) - 1.0f.xx;
    float4 _368 = float4(_365, _17.SampleLevel(_12, (_350 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _368.y = -_365.y;
    float4 _371 = mul(_7_m6, _368);
    float3 _375 = _371.xyz / _371.w.xxx;
    float4 _379 = float4(_375, 1.0f);
    float _382 = abs(mul(_7_m0, _379).z);
    float3 _397;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _397 = _7_m11.xyz - _375;
            break;
        }
        else
        {
            _397 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _398 = dot(_397, _397);
    float _400 = rsqrt(max(_398, 9.9999999392252902907785028219223e-09f));
    float3 _401 = _397 * _400;
    float _402 = _398 * _400;
    float3 _403 = -_401;
    float3 _405 = (0.07999999821186065673828125f * _347).xxx;
    float _406 = dot(_342, _401);
    float _407 = max(0.0f, _406);
    float4 _409 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _343) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _410 = _409.x;
    float2 _420 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_410 * _410, exp2((-9.27999973297119140625f) * _407)) * _410) + _409.y)) + _409.zw;
    float4 _432 = _33.SampleLevel(_13, _363, 0.0f);
    float _433 = _432.x;
    float4 _437 = _29.Load(int3(_272, 0));
    float _438 = _437.x;
    float4 _621;
    if (_438 > 0.001000000047497451305389404296875f)
    {
        float3 _448 = reflect(_403, _342);
        float3 _449 = -_28_m0.xyz;
        float _454 = dot(_449, _448);
        float3 _456 = _448 - (_449 * _454);
        bool3 _458 = (_454 < _28_m4.z).xxx;
        float3 _466 = normalize((_449 * _28_m4.z) + ((_456 * rsqrt(max(6.103515625e-05f, dot(_456, _456)))) * _28_m4.y));
        float3 _467 = float3(_458.x ? _466.x : _448.x, _458.y ? _466.y : _448.y, _458.z ? _466.z : _448.z);
        float3 _471 = _467 + _401;
        float3 _475 = _471 * rsqrt(max(6.103515625e-05f, dot(_471, _471)));
        float _476 = dot(_342, _467);
        float _477 = clamp(dot(_467, _342), 0.0f, 1.0f);
        float _479 = clamp(dot(_342, _475), 0.0f, 1.0f);
        float _482 = dot(_401, _467);
        float _484 = clamp(_406, 0.0f, 1.0f);
        float _485 = _343 * _343;
        float _486 = _485 * _485;
        float _507 = (((_479 * _486) - _479) * _479) + 1.0f;
        float _510 = 1.0f - clamp(dot(_401, _475), 0.0f, 1.0f);
        float _511 = _510 * _510;
        float _513 = (_510 * _511) * _511;
        float _537 = 1.0f - _343;
        float _544 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_537 * (1.04997003078460693359375f + (_537 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _537))))));
        float _545 = 1.0f - _544;
        float3 _548 = _405 + ((1.0f.xxx - _405) * 0.0476190485060214996337890625f);
        float _579 = clamp(-_482, 0.0f, 1.0f);
        float _583 = (((_579 * 0.36000001430511474609375f) - _579) * _579) + 1.0f;
        float _584 = _583 * _583;
        float3 _596 = ((min(((_405 * (1.0f - _513)) + _513.xxx) * ((_486 / (_507 * _507)) * (0.5f / (((_477 * sqrt(((((-_484) * _486) + _484) * _484) + _486)) + (_484 * sqrt(((((-_477) * _486) + _477) * _477) + _486))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_548 * (((_32.SampleLevel(_13, (float2(_484, _343) * 0.96875f) + 0.015625f.xx, 0.0f).x * _32.SampleLevel(_13, (float2(_477, _343) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _544) / _545)) * _548) / (1.0f.xxx - (_548 * _545)))) * lerp(clamp(_406 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_482, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_482 + 1.0f, 0.0f, 1.0f))) * _303;
        float3 _606 = _28_m1.xyz * (((((_344 * _303) * 1.0f) * (float((_308 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_596 * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _477)) + (((((_344 / max(0.00999999977648258209228515625f, max(max(_278.x, _278.y), _278.z)).xxx) * _286) * (clamp(0.5f - _476, 0.0f, 1.0f) * ((0.36000001430511474609375f != _584) ? (0.36000001430511474609375f / _584) : 1.0f))) + (_344 * (clamp(_476 + _294, 0.0f, 1.0f) - clamp(_477, 0.0f, 1.0f)))) * _303));
        float3 _619 = lerp(_606, _606 * _30.SampleBias(_13, float2(_438, 0.5f), _9_m16).xyz, (1.0f - _438).xxx) * lerp(_433, max(_433, _303), _294);
        _621 = float4(_619.x, _619.y, _619.z, 0.0f.xxxx.w);
    }
    else
    {
        _621 = 0.0f.xxxx;
    }
    float3 _623 = _345.xxx;
    float3 _660;
    float3 _661;
    [branch]
    /*
    Vanilla shader code from 0x9435BB16:
    if (_9_m23.x != 0.0f)
    */
    // RenoDX code: keep the GTAO sample path active when Improved GTAO is enabled.
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _636 = min(_20.SampleBias(_12, _4, _9_m16).x, _345);
        _660 = clamp((pow(abs(_407 + _636), exp2(((-16.0f) * _343) - 1.0f)) - 1.0f) + _636, 0.0f, 1.0f).xxx;
        _661 = max(_636.xxx, ((((((_344 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _636) + ((_344 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _636) + ((_344 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _636);
    }
    else
    {
        _660 = _623;
        _661 = _623;
    }
    // RenoDX code: apply the sampled GTAO term when Improved GTAO is enabled.
    _621.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _660 : 1.0f.xxx;
    float3 _671 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _680 = _375 - (_9_m105.xyz + (_671 * (-_9_m107.w)));
    float _694 = max(clamp((max(abs(_680.x), abs(_680.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_680.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _996;
    float4 _997;
    float4 _998;
    float _999;
    float _1000;
    if ((_9_m105.w != 0.0f) && (_694 < 1.0f))
    {
        float3 _707 = _375 - (_9_m105.xyz + (_671 * (-_9_m107.y)));
        float _721 = max(clamp((max(abs(_707.x), abs(_707.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_707.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _797;
        float4 _798;
        float4 _799;
        float4 _800;
        if (_721 < 1.0f)
        {
            float3 _730 = ((_375 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _732 = _730 - floor(_730);
            float4 _736 = _39.SampleLevel(_14, _732, 0.0f);
            float _737 = 1.0f - _721;
            float _741 = _9_m106.y * 0.5f;
            float _746 = _732.x;
            float _747 = clamp(_732.y, _741, 1.0f - _741) * 0.3333333432674407958984375f;
            float _748 = _732.z;
            float4 _751 = _40.SampleLevel(_13, float3(_746, _747, _748), 0.0f);
            float _767 = _736.x;
            float _777 = _736.y;
            float _787 = _736.z;
            _797 = _694 + (_751.w * _737);
            _798 = float4(((_40.SampleLevel(_13, float3(_746, _747 + 0.666666686534881591796875f, _748), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _787, _787) * _737;
            _799 = float4(((_40.SampleLevel(_13, float3(_746, _747 + 0.3333333432674407958984375f, _748), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _777, _777) * _737;
            _800 = float4(((_751.xyz * 4.0f) - 2.0f.xxx) * _767, _767) * _737;
        }
        else
        {
            _797 = _694;
            _798 = 0.0f.xxxx;
            _799 = 0.0f.xxxx;
            _800 = 0.0f.xxxx;
        }
        float3 _806 = _375 - (_9_m105.xyz + (_671 * (-_9_m107.z)));
        float _820 = max(clamp((max(abs(_806.x), abs(_806.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_806.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _900;
        float4 _901;
        float4 _902;
        float4 _903;
        if (_820 < 1.0f)
        {
            float3 _829 = ((_375 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _831 = _829 - floor(_829);
            float4 _835 = _41.SampleLevel(_14, _831, 0.0f);
            float _837 = _721 * (1.0f - _820);
            float _841 = _9_m106.y * 0.5f;
            float _846 = _831.x;
            float _847 = clamp(_831.y, _841, 1.0f - _841) * 0.3333333432674407958984375f;
            float _848 = _831.z;
            float4 _851 = _42.SampleLevel(_13, float3(_846, _847, _848), 0.0f);
            float _867 = _835.x;
            float _878 = _835.y;
            float _889 = _835.z;
            _900 = _797 + (_851.w * _837);
            _901 = _798 + (float4(((_42.SampleLevel(_13, float3(_846, _847 + 0.666666686534881591796875f, _848), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _889, _889) * _837);
            _902 = _799 + (float4(((_42.SampleLevel(_13, float3(_846, _847 + 0.3333333432674407958984375f, _848), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _878, _878) * _837);
            _903 = _800 + (float4(((_851.xyz * 4.0f) - 2.0f.xxx) * _867, _867) * _837);
        }
        else
        {
            _900 = _797;
            _901 = _798;
            _902 = _799;
            _903 = _800;
        }
        float4 _986;
        float4 _987;
        float4 _988;
        float _989;
        if (_820 > 0.0f)
        {
            float3 _912 = ((_375 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _915 = _9_m106.xyz * 0.5f;
            float3 _917 = clamp(_912 - floor(_912), _915, 1.0f.xxx - _915);
            float4 _921 = _43.SampleLevel(_14, _917, 0.0f);
            float _923 = _820 * (1.0f - _694);
            float _927 = _9_m106.y * 0.5f;
            float _932 = _917.x;
            float _933 = clamp(_917.y, _927, 1.0f - _927) * 0.3333333432674407958984375f;
            float _934 = _917.z;
            float4 _937 = _44.SampleLevel(_13, float3(_932, _933, _934), 0.0f);
            float _953 = _921.x;
            float _964 = _921.y;
            float _975 = _921.z;
            _986 = _901 + (float4(((_44.SampleLevel(_13, float3(_932, _933 + 0.666666686534881591796875f, _934), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _975, _975) * _923);
            _987 = _902 + (float4(((_44.SampleLevel(_13, float3(_932, _933 + 0.3333333432674407958984375f, _934), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _964, _964) * _923);
            _988 = _903 + (float4(((_937.xyz * 4.0f) - 2.0f.xxx) * _953, _953) * _923);
            _989 = _900 + (_937.w * _923);
        }
        else
        {
            _986 = _901;
            _987 = _902;
            _988 = _903;
            _989 = _900;
        }
        float _992 = clamp((_989 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _996 = _986;
        _997 = _987;
        _998 = _988;
        _999 = _992 - _694;
        _1000 = (_992 + _694) * 0.5f;
    }
    else
    {
        _996 = 0.0f.xxxx;
        _997 = 0.0f.xxxx;
        _998 = 0.0f.xxxx;
        _999 = 0.0f;
        _1000 = 1.0f;
    }
    float4 _1020 = _998 + float4(_9_m108.x * _1000, (_9_m108.y * _1000) + ((_9_m108.w * _999) * 0.5f), _9_m108.z * _1000, (_9_m108.w * _1000) + ((_9_m108.y * _999) * 0.375f));
    float4 _1040 = _997 + float4(_9_m109.x * _1000, (_9_m109.y * _1000) + ((_9_m109.w * _999) * 0.5f), _9_m109.z * _1000, (_9_m109.w * _1000) + ((_9_m109.y * _999) * 0.375f));
    float4 _1060 = _996 + float4(_9_m110.x * _1000, (_9_m110.y * _1000) + ((_9_m110.w * _999) * 0.5f), _9_m110.z * _1000, (_9_m110.w * _1000) + ((_9_m110.y * _999) * 0.375f));
    float4 _1218;
    float4 _1219;
    float4 _1220;
    [branch]
    if (all(bool2(_363.x >= 0.0f.xx.x, _363.y >= 0.0f.xx.y)))
    {
        float4 _1068 = _38.SampleLevel(_13, _363, 0.0f);
        float4 _1069 = abs(_1068);
        float4 _1215;
        float4 _1216;
        float4 _1217;
        [branch]
        if (any(bool4(_1069.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1069.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1069.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1069.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1075 = length(_1068.yzw);
            uint _1077;
            float _1080;
            _1077 = 0u;
            _1080 = 1.0f;
            for (float _1082 = _1075; _1082 > 4.599999904632568359375f; )
            {
                _1077++;
                _1080 *= 0.5f;
                _1082 *= 0.5f;
                continue;
            }
            float4 _1086 = _1068 * _1080;
            float4 _1091 = float4(0.0f, _1086.yzw);
            float2 _1113 = (_37.SampleLevel(_13, float2(((((length(_1091) * _36_m3.x) + _36_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _36_m2.xy) + _36_m2.zw;
            float4 _1127;
            _1127 = float4(_1113.x * 3.5449078083038330078125f, _1091.yzw * _1113.y) * exp(_1086.x * 0.282094776630401611328125f);
            for (uint _1130 = 0u; _1130 < _1077; )
            {
                _1127 = mul(float4x4(_1127, float4(_1127.yx, 0.0f, 0.0f), float4(_1127.z, 0.0f, _1127.x, 0.0f), float4(_1127.w, 0.0f, 0.0f, _1127.x)) * 0.282094776630401611328125f, _1127);
                _1130++;
                continue;
            }
            float4x4 _1151 = float4x4(_1127, float4(_1127.yx, 0.0f, 0.0f), float4(_1127.z, 0.0f, _1127.x, 0.0f), float4(_1127.w, 0.0f, 0.0f, _1127.x)) * 0.282094776630401611328125f;
            float4 _1161 = mul(_1151, float4(_1020.w * 1.1283791065216064453125f, _1020.y * (-0.977204978466033935546875f), _1020.z * 0.977204978466033935546875f, _1020.x * (-0.977204978466033935546875f)));
            float4 _1181 = mul(_1151, float4(_1040.w * 1.1283791065216064453125f, _1040.y * (-0.977204978466033935546875f), _1040.z * 0.977204978466033935546875f, _1040.x * (-0.977204978466033935546875f)));
            float4 _1201 = mul(_1151, float4(_1060.w * 1.1283791065216064453125f, _1060.y * (-0.977204978466033935546875f), _1060.z * 0.977204978466033935546875f, _1060.x * (-0.977204978466033935546875f)));
            _1215 = float4(_1161.x * 0.886226952075958251953125f, _1161.w * (-1.02332675457000732421875f), _1161.y * (-1.02332675457000732421875f), _1161.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1216 = float4(_1181.x * 0.886226952075958251953125f, _1181.w * (-1.02332675457000732421875f), _1181.y * (-1.02332675457000732421875f), _1181.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1217 = float4(_1201.x * 0.886226952075958251953125f, _1201.w * (-1.02332675457000732421875f), _1201.y * (-1.02332675457000732421875f), _1201.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1215 = _1020;
            _1216 = _1040;
            _1217 = _1060;
        }
        _1218 = _1215;
        _1219 = _1216;
        _1220 = _1217;
    }
    else
    {
        _1218 = _1020;
        _1219 = _1040;
        _1220 = _1060;
    }
    float4 _1224 = float4(_342, 1.0f);
    float3 _1229 = max(float3(dot(_1218, _1224), dot(_1219, _1224), dot(_1220, _1224)), 0.0f.xxx);
    float4 _1234 = float4(-_342, 1.0f);
    float3 _1251 = reflect(_403, _342);
    float _1259 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_343, 0.001000000047497451305389404296875f))));
    float2 _1263 = floor(_350 * _26_m0.w);
    float _1280 = floor(_382 - _26_m2.y);
    float _1284 = clamp(_1280, 0.0f, _26_m1.x - 1.0f);
    uint _1294 = (_1280 <= _1284) ? (_23.Load(uint(_9_m21.z + int(_1263.x + (_1263.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1284)) * 4 + 0)) : 0u;
    float _1297 = dot(float4(_1229, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1299;
    float _1302;
    uint _1304;
    _1299 = 0.0f.xxx;
    _1302 = 1.0f;
    _1304 = _1294;
    uint _1305;
    float3 _1300;
    float _1303;
    bool _1307;
    [loop]
    for (;;)
    {
        _1307 = _1302 > 0.00999999977648258209228515625f;
        if ((_1304 != 0u) && _1307)
        {
            uint _1311 = firstbitlow(_1304);
            _1305 = _1304 ^ (1u << (_1311 & 31u));
            float3 _1331 = float3(dot(_26_m4[_1311]._m2, _379), dot(_26_m4[_1311]._m3, _379), dot(_26_m4[_1311]._m4, _379));
            float3 _1332 = abs(_1331);
            if (all(bool3(_1332.x <= _26_m4[_1311]._m1.xyz.x, _1332.y <= _26_m4[_1311]._m1.xyz.y, _1332.z <= _26_m4[_1311]._m1.xyz.z)))
            {
                float3 _1341 = _26_m4[_1311]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1343 = _1332 * 0.100000001490116119384765625f;
                float3 _1344 = _1343 * _1343;
                float3 _1347 = (_26_m4[_1311]._m1.xyz - _1332) * _26_m4[_1311]._m5.xyz;
                float3 _1395;
                [branch]
                if (_26_m4[_1311]._m6.x == 1.0f)
                {
                    float3 _1380 = float3(dot(_26_m4[_1311]._m2.xyz, _1251), dot(_26_m4[_1311]._m3.xyz, _1251), dot(_26_m4[_1311]._m4.xyz, _1251));
                    float3 _1382 = (_26_m4[_1311]._m1.xyz - _1331) / _1380;
                    float3 _1385 = ((-_26_m4[_1311]._m1.xyz) - _1331) / _1380;
                    bool3 _1386 = bool3(_1380.x > 0.0f.xxx.x, _1380.y > 0.0f.xxx.y, _1380.z > 0.0f.xxx.z);
                    float3 _1387 = float3(_1386.x ? _1382.x : _1385.x, _1386.y ? _1382.y : _1385.y, _1386.z ? _1382.z : _1385.z);
                    _1395 = _1331 + (_1380 * min(min(_1387.x, _1387.y), _1387.z));
                }
                else
                {
                    _1395 = _1251;
                }
                float3 _1396 = normalize(_1395);
                float3 _1399 = float3(int3(sign(_1396)));
                float3 _1402 = _1396 / dot(_1396, _1399).xxx;
                float3 _1416;
                if (_1402.z < 0.0f)
                {
                    float3 _1407 = abs(_1402);
                    float2 _1414 = _1399.xy * float2(1.0f - _1407.y, 1.0f - _1407.x);
                    _1416 = float3(_1414.x, _1414.y, _1402.z);
                }
                else
                {
                    _1416 = _1402;
                }
                float _1437 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1311]._m0, _1224)));
                float _1450 = clamp((min(_1347.x, min(_1347.y, _1347.z)) * _26_m4[_1311]._m6.y) + ((((((_1341 * _1341).x - ((_1344.x + _1344.y) + _1344.z)) * _26_m4[_1311]._m5.x) * _26_m4[_1311]._m5.x) * (1.0f - _26_m4[_1311]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1311]._m6.w;
                _1300 = _1299 + ((((_21.SampleLevel(_15, float3((((_1416.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1311]._m1.w), _1259).xyz * _26_m4[_1311]._m5.w) * ((((((clamp(abs(_1297 / _1437), 0.0f, 1.0f) * 2.0f) + _1297) / (2.0f + _1437)) - 1.0f) * _9_m23.w) + 1.0f)) * _1450) * _1302);
                _1303 = _1302 * (1.0f - _1450);
            }
            else
            {
                _1300 = _1299;
                _1303 = _1302;
            }
            _1299 = _1300;
            _1302 = _1303;
            _1304 = _1305;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1515;
    if (_1307)
    {
        float3 _1458 = normalize(_1251);
        float3 _1461 = float3(int3(sign(_1458)));
        float3 _1464 = _1458 / dot(_1458, _1461).xxx;
        float3 _1478;
        if (_1464.z < 0.0f)
        {
            float3 _1469 = abs(_1464);
            float2 _1476 = _1461.xy * float2(1.0f - _1469.y, 1.0f - _1469.x);
            _1478 = float3(_1476.x, _1476.y, _1464.z);
        }
        else
        {
            _1478 = _1464;
        }
        float _1501 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, _1224)));
        _1515 = _1299 + ((_21.SampleLevel(_15, float3((((_1478.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1259).xyz * ((((((clamp(abs(_1297 / _1501), 0.0f, 1.0f) * 2.0f) + _1297) / (2.0f + _1501)) - 1.0f) * _9_m23.w) + 1.0f)) * _1302);
    }
    else
    {
        _1515 = _1299;
    }
    float3 _1521 = (_1515 * _9_m23.z) * _9_m22.y;
    float3 _1544;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _1538 = _19.SampleBias(_13, _4, _9_m16);
        float _1539 = _1538.x;
        _1544 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1539) + (_1521 * (1.0f - _1539));
    }
    else
    {
        _1544 = _1521;
    }
    float3 _1565 = ((((_1229 * _344) * _9_m22.x) * _661) + ((_1544 * ((_405 * _420.x) + (clamp(_347 * 4.0f, 0.0f, 1.0f) * _420.y).xxx)) * _660)) + (((((max(float3(dot(_1218, _1234), dot(_1219, _1234), dot(_1220, _1234)), 0.0f.xxx) * _9_m22.x) * _661) * (_344 / max(0.00999999977648258209228515625f, max(max(_278.x, _278.y), _278.z)).xxx)) * ((_286 * clamp(dot(_401, _342), 0.0f, 1.0f)) + (float(((_308 & 7u) << 2u) | (uint(_276.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
    float4 _1567 = float4(_621.x, _621.y, _621.z, _621.w) + float4(_1565.x, _1565.y, _1565.z, 0.0f.xxxx.w);
    float3 _1570 = clamp(_1567.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _1585 = _375.y * _9_m46.w;
    float _1590 = max(0.00999999977648258209228515625f, _1585 + _9_m47.w);
    float3 _1604 = exp(_9_m45.xyz * ((-max(0.0f, (_402 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1590)) / _1590) * exp(_1585 + _9_m48.w))));
    float _1607 = dot(_403, _9_m44.xyz);
    float _1613 = _9_m45.w * _9_m45.w;
    float _1617 = (1.0f + _1613) - ((2.0f * _9_m45.w) * _1607);
    float3 _1945;
    float _1946;
    if (_9_m55.z > 0.0f)
    {
        uint3 _1771 = (uint3(int3(_269, _270, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1772 = _1771.y;
        uint _1773 = _1771.z;
        uint _1776 = _1771.x + (_1772 * _1773);
        uint _1778 = _1772 + (_1773 * _1776);
        uint _1780 = _1773 + (_1776 * _1778);
        uint _1782 = _1776 + (_1778 * _1780);
        float _1806 = dot(_403, -_7_m0[2].xyz);
        float3 _1816 = _375 - _7_m11.xyz;
        float _1818 = (_9_m55.w * ((_1806 > 5.9604644775390625e-08f) ? (1.0f / _1806) : 0.0f)) * (1.0f / _402);
        float _1819 = _1816.y;
        float _1820 = _1818 * _1819;
        float _1822 = _7_m11.y + _1820;
        float _1823 = _1819 - _1820;
        float _1825 = (1.0f - _1818) * _402;
        float _1839 = max(-127.0f, _9_m49.z * _1823);
        float _1863 = max(-127.0f, _9_m52.x * _1823);
        float _1874 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1822 - _9_m49.x)))) * ((abs(_1839) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1839)) / _1839) : (0.693147182464599609375f - (0.2402265071868896484375f * _1839)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1822 - _9_m52.z)))) * ((abs(_1863) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1863)) / _1863) : (0.693147182464599609375f - (0.2402265071868896484375f * _1863))));
        float _1896 = clamp((_402 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1899 = clamp((max(clamp(exp2(-(_1874 * _1825)), 0.0f, 1.0f), _9_m51.w) + clamp((_402 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1896, 0.0f, 1.0f);
        float4 _1939 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _34.SampleLevel(_13, float3((_350 + ((((float3(uint3(_1782, _1778 + (_1780 * _1782), _260) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_382 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_382 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1941 = _1939.w;
        _1945 = _1939.xyz + (((_9_m51.xyz * (1.0f - _1899)) + (((_9_m54.xyz * pow(clamp(dot(_401, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1874 * max(_1825 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1896))) * _1941);
        _1946 = _1941 * _1899;
    }
    else
    {
        float3 _1647 = _375 - _7_m11.xyz;
        float _1649 = _1647.y;
        float _1663 = max(-127.0f, _9_m49.z * _1649);
        float _1687 = max(-127.0f, _9_m52.x * _1649);
        float _1698 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1663) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1663)) / _1663) : (0.693147182464599609375f - (0.2402265071868896484375f * _1663)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1687) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1687)) / _1687) : (0.693147182464599609375f - (0.2402265071868896484375f * _1687))));
        float _1720 = clamp((_402 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1723 = clamp((max(clamp(exp2(-(_1698 * _402)), 0.0f, 1.0f), _9_m51.w) + clamp((_402 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1720, 0.0f, 1.0f);
        _1945 = (_9_m51.xyz * (1.0f - _1723)) + (((_9_m54.xyz * pow(clamp(dot(_401, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1698 * max(_402 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1720));
        _1946 = _1723;
    }
    float3 _1949 = _1604 * _1946;
    float3 _1951 = (_1570 * _1949) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1607 * _1607)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1613) / max((12.56637096405029296875f * _1617) * sqrt(_1617), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1604)) * _1946) + _1945);

    // RenoDX code start: apply the hue-preserving fog composite.
    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _1951 = (_1951 * 0.65f) + (_1570 * 0.35f);

    }
    // RenoDX code end
    float _1952 = dot(_1949, 0.3333333432674407958984375f.xxx);
    float4 _1953 = float4(_1951.x, _1951.y, _1951.z, _1567.w);
    _1953.w = _1952;
    float _1982 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _375) * _9_m61.z), 0.0f, 1.0f);
    float3 _1990 = lerp(_1570, _1953.xyz, min((1.0f - _1982) + ((_48.SampleLevel(_14, (_375 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _1982), 1.0f + _1952).xxx);
    _5 = float4(_1990.x, _1990.y, _1990.z, _1953.w);
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
