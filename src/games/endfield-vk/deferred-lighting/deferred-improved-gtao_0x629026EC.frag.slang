// DX11 0x09E3521F -> Vulkan 0x629026EC
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

static uint _289 = 0u;

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
[[vk::binding(7, 3)]] Texture2D<float4> _18 : register(t7);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8);
[[vk::binding(18, 3)]] Texture2D<float4> _20 : register(t18);
[[vk::binding(9, 3)]] Texture2DArray<float4> _21 : register(t9);
[[vk::binding(6, 3)]] Texture2D<float4> _29 : register(t6);
[[vk::binding(24, 3)]] Texture2D<float4> _30 : register(t24);
[[vk::binding(10, 3)]] Texture2D<float4> _32 : register(t10);
[[vk::binding(22, 3)]] Texture2D<float4> _33 : register(t22);
[[vk::binding(17, 3)]] Texture3D<float4> _34 : register(t17);
[[vk::binding(25, 3)]] Texture2D<float4> _37 : register(t25);
[[vk::binding(5, 3)]] Texture2D<float4> _38 : register(t5);
[[vk::binding(16, 3)]] Texture3D<float4> _39 : register(t16);
[[vk::binding(13, 3)]] Texture3D<float4> _40 : register(t13);
[[vk::binding(15, 3)]] Texture3D<float4> _41 : register(t15);
[[vk::binding(12, 3)]] Texture3D<float4> _42 : register(t12);
[[vk::binding(14, 3)]] Texture3D<float4> _43 : register(t14);
[[vk::binding(11, 3)]] Texture3D<float4> _44 : register(t11);
[[vk::binding(4, 3)]] Texture2D<float4> _45 : register(t4);
[[vk::binding(21, 3)]] Texture2D<float4> _46 : register(t21);
[[vk::binding(20, 3)]] Texture2D<float4> _47 : register(t20);
[[vk::binding(19, 3)]] Texture2D<float4> _48 : register(t19);

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
    uint2 _295 = uint2(gl_FragCoord.xy);
    int _298 = int(_295.x);
    int _299 = int(_295.y);
    int2 _301 = int3(_298, _299, 0).xy;
    float4 _303 = _46.Load(int3(_301, 0));
    float4 _305 = _47.Load(int3(_301, 0));
    float _308 = _303.x;
    float _309 = _303.y;
    float2 _313 = (_305.xy * 2.0f) - 1.0f.xx;
    float _317 = 1.0f - dot(1.0f.xx, abs(_313));
    float3 _319 = float3(_313.x, _317, _313.y);
    float3 _331;
    if (_317 < 0.0f)
    {
        float2 _326 = _319.xz;
        bool2 _327 = bool2(_326.x >= 0.0f.xx.x, _326.y >= 0.0f.xx.y);
        float2 _329 = (1.0f.xx - abs(_319.zx)) * float2(_327.x ? 1.0f.xx.x : (-1.0f).xx.x, _327.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _331 = float3(_329.x, _319.y, _329.y);
    }
    else
    {
        _331 = _319;
    }
    float3 _332 = normalize(_331);
    float _333 = _305.z;
    float2 _337 = float2(_295);
    float2 _350 = gl_FragCoord.xy * _9_m0.zw;
    float2 _352 = (_350 * 2.0f) - 1.0f.xx;
    float4 _355 = float4(_352, _17.SampleLevel(_12, (_337 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _355.y = -_352.y;
    float4 _358 = mul(_7_m6, _355);
    float3 _362 = _358.xyz / _358.w.xxx;
    float4 _366 = float4(_362, 1.0f);
    float _369 = abs(mul(_7_m0, _366).z);
    float3 _384;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _384 = _7_m11.xyz - _362;
            break;
        }
        else
        {
            _384 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _385 = dot(_384, _384);
    float _387 = rsqrt(max(_385, 9.9999999392252902907785028219223e-09f));
    float3 _388 = _384 * _387;
    float _389 = _385 * _387;
    float3 _390 = -_388;
    bool _393 = _9_m129.x > 0.00048828125f;
    float2 _403;
    if (_393)
    {
        _403 = _45.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _403 = 1.0f.xx;
    }
    float _406 = min(_403.x, _403.y);
    float2 _407 = _403 * 1.0f;
    float _408 = _407.x;
    float _411 = clamp((_303.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _416;
    float _417;
    if (_393)
    {
        _416 = lerp(1.0f, _403.y, _411);
        _417 = lerp(1.0f, 0.0f, _411);
    }
    else
    {
        _416 = 1.0f;
        _417 = 1.0f;
    }
    float _422 = lerp(lerp(min(_416, _333), _333, _406), _333, _408);
    float3 _424 = _48.Load(int3(_301, 0)).xyz * lerp(lerp(min(_417, 1.0f), 1.0f, _406), 1.0f, _408);
    float3 _425 = _424 * _308;
    float3 _426 = _424 - _425;
    float3 _430 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _308)).xxx + _425;
    float _431 = dot(_332, _388);
    float _432 = max(0.0f, _431);
    float _433 = _422 * _422;
    float _434 = _432 * _432;
    float _435 = _434 * _432;
    float2 _436 = float2(1.0f, _432);
    float2 _439 = float2(1.0f, _433);
    float _440 = _433 * _433;
    float3 _442 = float3(1.0f, _433, _440 * _433);
    float _447 = dot(mul(_436, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _439) / dot(mul(float3(1.0f, _434, _435), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _442);
    float _452 = dot(mul(_436, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _439) / dot(mul(float3(1.0f, _432, _435), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _442);
    float3 _455 = (_430 * _447) + _452.xxx;
    float _456 = _447 + _452;
    float4 _469 = _29.Load(int3(_301, 0));
    float _470 = _469.x;
    float4 _606;
    if (_470 > 0.001000000047497451305389404296875f)
    {
        float3 _480 = reflect(_390, _332);
        float3 _481 = -_28_m0.xyz;
        float _486 = dot(_481, _480);
        float3 _488 = _480 - (_481 * _486);
        bool3 _490 = (_486 < _28_m4.z).xxx;
        float3 _498 = normalize((_481 * _28_m4.z) + ((_488 * rsqrt(max(6.103515625e-05f, dot(_488, _488)))) * _28_m4.y));
        float3 _499 = float3(_490.x ? _498.x : _480.x, _490.y ? _498.y : _480.y, _490.z ? _498.z : _480.z);
        float3 _503 = _499 + _388;
        float3 _507 = _503 * rsqrt(max(6.103515625e-05f, dot(_503, _503)));
        float _508 = clamp(dot(_499, _332), 0.0f, 1.0f);
        float _510 = clamp(dot(_332, _507), 0.0f, 1.0f);
        float _513 = clamp(_431, 0.0f, 1.0f);
        float _534 = (((_510 * _440) - _510) * _510) + 1.0f;
        float _537 = 1.0f - clamp(dot(_388, _507), 0.0f, 1.0f);
        float _538 = _537 * _537;
        float _540 = (_537 * _538) * _538;
        float _564 = 1.0f - _422;
        float _571 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_564 * (1.04997003078460693359375f + (_564 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _564))))));
        float _572 = 1.0f - _571;
        float3 _575 = _430 + ((1.0f.xxx - _430) * 0.0476190485060214996337890625f);
        float3 _591 = ((clamp((min(((_430 * (1.0f - _540)) + _540.xxx) * ((_440 / (_534 * _534)) * (0.5f / (((_508 * sqrt(((((-_513) * _440) + _513) * _513) + _440)) + (_513 * sqrt(((((-_508) * _440) + _508) * _508) + _440))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_575 * (((_32.SampleLevel(_13, (float2(_513, _422) * 0.96875f) + 0.015625f.xx, 0.0f).x * _32.SampleLevel(_13, (float2(_508, _422) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _571) / _572)) * _575) / (1.0f.xxx - (_575 * _572)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _508) + ((_426 * 1.0f) * _508)) * _28_m1.xyz;
        float3 _604 = lerp(_591, _591 * _30.SampleBias(_13, float2(_470, 0.5f), _9_m16).xyz, (1.0f - _470).xxx) * min(_33.SampleLevel(_13, _350, 0.0f).x, 1.0f);
        _606 = float4(_604.x, _604.y, _604.z, 0.0f.xxxx.w);
    }
    else
    {
        _606 = 0.0f.xxxx;
    }
    float3 _608 = _309.xxx;
    float3 _645;
    float3 _646;
    [branch]
    /*
    Vanilla shader code from 0x629026EC:
    if (_9_m23.x != 0.0f)
    */
    // RenoDX code: keep the GTAO sample path active when Improved GTAO is enabled.
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _621 = min(_20.SampleBias(_12, _4, _9_m16).x, _309);
        _645 = clamp((pow(abs(_432 + _621), exp2(((-16.0f) * _422) - 1.0f)) - 1.0f) + _621, 0.0f, 1.0f).xxx;
        _646 = max(_621.xxx, ((((((_426 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _621) + ((_426 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _621) + ((_426 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _621);
    }
    else
    {
        _645 = _608;
        _646 = _608;
    }
    // RenoDX code: apply the sampled GTAO term when Improved GTAO is enabled.
    _606.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _645 : 1.0f.xxx;
    float3 _663 = (_362 + (_332 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_337 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _673 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _682 = _663 - (_9_m105.xyz + (_673 * (-_9_m107.w)));
    float _696 = max(clamp((max(abs(_682.x), abs(_682.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_682.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _998;
    float4 _999;
    float4 _1000;
    float _1001;
    float _1002;
    if ((_9_m105.w != 0.0f) && (_696 < 1.0f))
    {
        float3 _709 = _663 - (_9_m105.xyz + (_673 * (-_9_m107.y)));
        float _723 = max(clamp((max(abs(_709.x), abs(_709.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_709.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _799;
        float4 _800;
        float4 _801;
        float4 _802;
        if (_723 < 1.0f)
        {
            float3 _732 = ((_663 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _734 = _732 - floor(_732);
            float4 _738 = _39.SampleLevel(_14, _734, 0.0f);
            float _739 = 1.0f - _723;
            float _743 = _9_m106.y * 0.5f;
            float _748 = _734.x;
            float _749 = clamp(_734.y, _743, 1.0f - _743) * 0.3333333432674407958984375f;
            float _750 = _734.z;
            float4 _753 = _40.SampleLevel(_13, float3(_748, _749, _750), 0.0f);
            float _769 = _738.x;
            float _779 = _738.y;
            float _789 = _738.z;
            _799 = _696 + (_753.w * _739);
            _800 = float4(((_40.SampleLevel(_13, float3(_748, _749 + 0.666666686534881591796875f, _750), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _789, _789) * _739;
            _801 = float4(((_40.SampleLevel(_13, float3(_748, _749 + 0.3333333432674407958984375f, _750), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _779, _779) * _739;
            _802 = float4(((_753.xyz * 4.0f) - 2.0f.xxx) * _769, _769) * _739;
        }
        else
        {
            _799 = _696;
            _800 = 0.0f.xxxx;
            _801 = 0.0f.xxxx;
            _802 = 0.0f.xxxx;
        }
        float3 _808 = _663 - (_9_m105.xyz + (_673 * (-_9_m107.z)));
        float _822 = max(clamp((max(abs(_808.x), abs(_808.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_808.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _902;
        float4 _903;
        float4 _904;
        float4 _905;
        if (_822 < 1.0f)
        {
            float3 _831 = ((_663 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _833 = _831 - floor(_831);
            float4 _837 = _41.SampleLevel(_14, _833, 0.0f);
            float _839 = _723 * (1.0f - _822);
            float _843 = _9_m106.y * 0.5f;
            float _848 = _833.x;
            float _849 = clamp(_833.y, _843, 1.0f - _843) * 0.3333333432674407958984375f;
            float _850 = _833.z;
            float4 _853 = _42.SampleLevel(_13, float3(_848, _849, _850), 0.0f);
            float _869 = _837.x;
            float _880 = _837.y;
            float _891 = _837.z;
            _902 = _799 + (_853.w * _839);
            _903 = _800 + (float4(((_42.SampleLevel(_13, float3(_848, _849 + 0.666666686534881591796875f, _850), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _891, _891) * _839);
            _904 = _801 + (float4(((_42.SampleLevel(_13, float3(_848, _849 + 0.3333333432674407958984375f, _850), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _880, _880) * _839);
            _905 = _802 + (float4(((_853.xyz * 4.0f) - 2.0f.xxx) * _869, _869) * _839);
        }
        else
        {
            _902 = _799;
            _903 = _800;
            _904 = _801;
            _905 = _802;
        }
        float4 _988;
        float4 _989;
        float4 _990;
        float _991;
        if (_822 > 0.0f)
        {
            float3 _914 = ((_663 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _917 = _9_m106.xyz * 0.5f;
            float3 _919 = clamp(_914 - floor(_914), _917, 1.0f.xxx - _917);
            float4 _923 = _43.SampleLevel(_14, _919, 0.0f);
            float _925 = _822 * (1.0f - _696);
            float _929 = _9_m106.y * 0.5f;
            float _934 = _919.x;
            float _935 = clamp(_919.y, _929, 1.0f - _929) * 0.3333333432674407958984375f;
            float _936 = _919.z;
            float4 _939 = _44.SampleLevel(_13, float3(_934, _935, _936), 0.0f);
            float _955 = _923.x;
            float _966 = _923.y;
            float _977 = _923.z;
            _988 = _903 + (float4(((_44.SampleLevel(_13, float3(_934, _935 + 0.666666686534881591796875f, _936), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _977, _977) * _925);
            _989 = _904 + (float4(((_44.SampleLevel(_13, float3(_934, _935 + 0.3333333432674407958984375f, _936), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _966, _966) * _925);
            _990 = _905 + (float4(((_939.xyz * 4.0f) - 2.0f.xxx) * _955, _955) * _925);
            _991 = _902 + (_939.w * _925);
        }
        else
        {
            _988 = _903;
            _989 = _904;
            _990 = _905;
            _991 = _902;
        }
        float _994 = clamp((_991 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _998 = _988;
        _999 = _989;
        _1000 = _990;
        _1001 = _994 - _696;
        _1002 = (_994 + _696) * 0.5f;
    }
    else
    {
        _998 = 0.0f.xxxx;
        _999 = 0.0f.xxxx;
        _1000 = 0.0f.xxxx;
        _1001 = 0.0f;
        _1002 = 1.0f;
    }
    float4 _1022 = _1000 + float4(_9_m108.x * _1002, (_9_m108.y * _1002) + ((_9_m108.w * _1001) * 0.5f), _9_m108.z * _1002, (_9_m108.w * _1002) + ((_9_m108.y * _1001) * 0.375f));
    float4 _1042 = _999 + float4(_9_m109.x * _1002, (_9_m109.y * _1002) + ((_9_m109.w * _1001) * 0.5f), _9_m109.z * _1002, (_9_m109.w * _1002) + ((_9_m109.y * _1001) * 0.375f));
    float4 _1062 = _998 + float4(_9_m110.x * _1002, (_9_m110.y * _1002) + ((_9_m110.w * _1001) * 0.5f), _9_m110.z * _1002, (_9_m110.w * _1002) + ((_9_m110.y * _1001) * 0.375f));
    float4 _1220;
    float4 _1221;
    float4 _1222;
    [branch]
    if (all(bool2(_350.x >= 0.0f.xx.x, _350.y >= 0.0f.xx.y)))
    {
        float4 _1070 = _38.SampleLevel(_13, _350, 0.0f);
        float4 _1071 = abs(_1070);
        float4 _1217;
        float4 _1218;
        float4 _1219;
        [branch]
        if (any(bool4(_1071.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1071.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1071.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1071.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1077 = length(_1070.yzw);
            uint _1079;
            float _1082;
            _1079 = 0u;
            _1082 = 1.0f;
            for (float _1084 = _1077; _1084 > 4.599999904632568359375f; )
            {
                _1079++;
                _1082 *= 0.5f;
                _1084 *= 0.5f;
                continue;
            }
            float4 _1088 = _1070 * _1082;
            float4 _1093 = float4(0.0f, _1088.yzw);
            float2 _1115 = (_37.SampleLevel(_13, float2(((((length(_1093) * _36_m3.x) + _36_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _36_m2.xy) + _36_m2.zw;
            float4 _1129;
            _1129 = float4(_1115.x * 3.5449078083038330078125f, _1093.yzw * _1115.y) * exp(_1088.x * 0.282094776630401611328125f);
            for (uint _1132 = 0u; _1132 < _1079; )
            {
                _1129 = mul(float4x4(_1129, float4(_1129.yx, 0.0f, 0.0f), float4(_1129.z, 0.0f, _1129.x, 0.0f), float4(_1129.w, 0.0f, 0.0f, _1129.x)) * 0.282094776630401611328125f, _1129);
                _1132++;
                continue;
            }
            float4x4 _1153 = float4x4(_1129, float4(_1129.yx, 0.0f, 0.0f), float4(_1129.z, 0.0f, _1129.x, 0.0f), float4(_1129.w, 0.0f, 0.0f, _1129.x)) * 0.282094776630401611328125f;
            float4 _1163 = mul(_1153, float4(_1022.w * 1.1283791065216064453125f, _1022.y * (-0.977204978466033935546875f), _1022.z * 0.977204978466033935546875f, _1022.x * (-0.977204978466033935546875f)));
            float4 _1183 = mul(_1153, float4(_1042.w * 1.1283791065216064453125f, _1042.y * (-0.977204978466033935546875f), _1042.z * 0.977204978466033935546875f, _1042.x * (-0.977204978466033935546875f)));
            float4 _1203 = mul(_1153, float4(_1062.w * 1.1283791065216064453125f, _1062.y * (-0.977204978466033935546875f), _1062.z * 0.977204978466033935546875f, _1062.x * (-0.977204978466033935546875f)));
            _1217 = float4(_1163.x * 0.886226952075958251953125f, _1163.w * (-1.02332675457000732421875f), _1163.y * (-1.02332675457000732421875f), _1163.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1218 = float4(_1183.x * 0.886226952075958251953125f, _1183.w * (-1.02332675457000732421875f), _1183.y * (-1.02332675457000732421875f), _1183.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1219 = float4(_1203.x * 0.886226952075958251953125f, _1203.w * (-1.02332675457000732421875f), _1203.y * (-1.02332675457000732421875f), _1203.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1217 = _1022;
            _1218 = _1042;
            _1219 = _1062;
        }
        _1220 = _1217;
        _1221 = _1218;
        _1222 = _1219;
    }
    else
    {
        _1220 = _1022;
        _1221 = _1042;
        _1222 = _1062;
    }
    float _1227 = max(0.0f, dot(_1220.xyz, _332) + _1220.w);
    float _1232 = max(0.0f, dot(_1221.xyz, _332) + _1221.w);
    float _1237 = max(0.0f, dot(_1222.xyz, _332) + _1222.w);
    float3 _1247 = reflect(_390, _332);
    float _1255 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_422, 0.001000000047497451305389404296875f))));
    float2 _1259 = floor(_337 * _26_m0.w);
    float _1276 = floor(_369 - _26_m2.y);
    float _1280 = clamp(_1276, 0.0f, _26_m1.x - 1.0f);
    uint _1290 = (_1276 <= _1280) ? (_23.Load(uint(_9_m21.z + int(_1259.x + (_1259.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1280)) * 4 + 0)) : 0u;
    float _1293 = dot(float4(_1227, _1232, _1237, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1295;
    float _1298;
    uint _1300;
    _1295 = 0.0f.xxx;
    _1298 = 1.0f;
    _1300 = _1290;
    uint _1301;
    float3 _1296;
    float _1299;
    bool _1303;
    [loop]
    for (;;)
    {
        _1303 = _1298 > 0.00999999977648258209228515625f;
        if ((_1300 != 0u) && _1303)
        {
            uint _1307 = firstbitlow(_1300);
            _1301 = _1300 ^ (1u << (_1307 & 31u));
            float3 _1327 = float3(dot(_26_m4[_1307]._m2, _366), dot(_26_m4[_1307]._m3, _366), dot(_26_m4[_1307]._m4, _366));
            float3 _1328 = abs(_1327);
            if (all(bool3(_1328.x <= _26_m4[_1307]._m1.xyz.x, _1328.y <= _26_m4[_1307]._m1.xyz.y, _1328.z <= _26_m4[_1307]._m1.xyz.z)))
            {
                float3 _1337 = _26_m4[_1307]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1339 = _1328 * 0.100000001490116119384765625f;
                float3 _1340 = _1339 * _1339;
                float3 _1343 = (_26_m4[_1307]._m1.xyz - _1328) * _26_m4[_1307]._m5.xyz;
                float3 _1391;
                [branch]
                if (_26_m4[_1307]._m6.x == 1.0f)
                {
                    float3 _1376 = float3(dot(_26_m4[_1307]._m2.xyz, _1247), dot(_26_m4[_1307]._m3.xyz, _1247), dot(_26_m4[_1307]._m4.xyz, _1247));
                    float3 _1378 = (_26_m4[_1307]._m1.xyz - _1327) / _1376;
                    float3 _1381 = ((-_26_m4[_1307]._m1.xyz) - _1327) / _1376;
                    bool3 _1382 = bool3(_1376.x > 0.0f.xxx.x, _1376.y > 0.0f.xxx.y, _1376.z > 0.0f.xxx.z);
                    float3 _1383 = float3(_1382.x ? _1378.x : _1381.x, _1382.y ? _1378.y : _1381.y, _1382.z ? _1378.z : _1381.z);
                    _1391 = _1327 + (_1376 * min(min(_1383.x, _1383.y), _1383.z));
                }
                else
                {
                    _1391 = _1247;
                }
                float3 _1392 = normalize(_1391);
                float3 _1395 = float3(int3(sign(_1392)));
                float3 _1398 = _1392 / dot(_1392, _1395).xxx;
                float3 _1412;
                if (_1398.z < 0.0f)
                {
                    float3 _1403 = abs(_1398);
                    float2 _1410 = _1395.xy * float2(1.0f - _1403.y, 1.0f - _1403.x);
                    _1412 = float3(_1410.x, _1410.y, _1398.z);
                }
                else
                {
                    _1412 = _1398;
                }
                float _1437 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1307]._m0, float4(_332, 1.0f))));
                float _1450 = clamp((min(_1343.x, min(_1343.y, _1343.z)) * _26_m4[_1307]._m6.y) + ((((((_1337 * _1337).x - ((_1340.x + _1340.y) + _1340.z)) * _26_m4[_1307]._m5.x) * _26_m4[_1307]._m5.x) * (1.0f - _26_m4[_1307]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1307]._m6.w;
                _1296 = _1295 + ((((_21.SampleLevel(_15, float3((((_1412.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1307]._m1.w), _1255).xyz * _26_m4[_1307]._m5.w) * ((((((clamp(abs(_1293 / _1437), 0.0f, 1.0f) * 2.0f) + _1293) / (2.0f + _1437)) - 1.0f) * _9_m23.w) + 1.0f)) * _1450) * _1298);
                _1299 = _1298 * (1.0f - _1450);
            }
            else
            {
                _1296 = _1295;
                _1299 = _1298;
            }
            _1295 = _1296;
            _1298 = _1299;
            _1300 = _1301;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1519;
    if (_1303)
    {
        float3 _1458 = normalize(_1247);
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
        float _1505 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_332, 1.0f))));
        _1519 = _1295 + ((_21.SampleLevel(_15, float3((((_1478.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1255).xyz * ((((((clamp(abs(_1293 / _1505), 0.0f, 1.0f) * 2.0f) + _1293) / (2.0f + _1505)) - 1.0f) * _9_m23.w) + 1.0f)) * _1298);
    }
    else
    {
        _1519 = _1295;
    }
    float3 _1525 = (_1519 * _9_m23.z) * _9_m22.y;
    // RenoDX code start: link cubemap ambient intensity to the scene lighting response.
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _1525 *= 0.25f + (0.75f * saturate(_1293));
    }
    // RenoDX code end
    float3 _1548;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _1542 = _19.SampleBias(_13, _4, _9_m16);
        float _1543 = _1542.x;
        _1548 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1543) + (_1525 * (1.0f - _1543));
    }
    else
    {
        _1548 = _1525;
    }
    float3 _1551 = (((float3(_1227, _1232, _1237) * _426) * _9_m22.x) * _646) + ((_1548 * (_455 + ((_430 * ((1.0f - _456) / _456)) * _455))) * _645);
    float4 _1553 = float4(_606.x, _606.y, _606.z, _606.w) + float4(_1551.x, _1551.y, _1551.z, 0.0f.xxxx.w);
    float _1571 = _362.y * _9_m46.w;
    float _1576 = max(0.00999999977648258209228515625f, _1571 + _9_m47.w);
    float3 _1590 = exp(_9_m45.xyz * ((-max(0.0f, (_389 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1576)) / _1576) * exp(_1571 + _9_m48.w))));
    float _1593 = dot(_390, _9_m44.xyz);
    float _1599 = _9_m45.w * _9_m45.w;
    float _1603 = (1.0f + _1599) - ((2.0f * _9_m45.w) * _1593);
    float3 _1931;
    float _1932;
    if (_9_m55.z > 0.0f)
    {
        uint3 _1757 = (uint3(int3(_298, _299, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1758 = _1757.y;
        uint _1759 = _1757.z;
        uint _1762 = _1757.x + (_1758 * _1759);
        uint _1764 = _1758 + (_1759 * _1762);
        uint _1766 = _1759 + (_1762 * _1764);
        uint _1768 = _1762 + (_1764 * _1766);
        float _1792 = dot(_390, -_7_m0[2].xyz);
        float3 _1802 = _362 - _7_m11.xyz;
        float _1804 = (_9_m55.w * ((_1792 > 5.9604644775390625e-08f) ? (1.0f / _1792) : 0.0f)) * (1.0f / _389);
        float _1805 = _1802.y;
        float _1806 = _1804 * _1805;
        float _1808 = _7_m11.y + _1806;
        float _1809 = _1805 - _1806;
        float _1811 = (1.0f - _1804) * _389;
        float _1825 = max(-127.0f, _9_m49.z * _1809);
        float _1849 = max(-127.0f, _9_m52.x * _1809);
        float _1860 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1808 - _9_m49.x)))) * ((abs(_1825) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1825)) / _1825) : (0.693147182464599609375f - (0.2402265071868896484375f * _1825)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1808 - _9_m52.z)))) * ((abs(_1849) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1849)) / _1849) : (0.693147182464599609375f - (0.2402265071868896484375f * _1849))));
        float _1882 = clamp((_389 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1885 = clamp((max(clamp(exp2(-(_1860 * _1811)), 0.0f, 1.0f), _9_m51.w) + clamp((_389 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1882, 0.0f, 1.0f);
        float4 _1925 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _34.SampleLevel(_13, float3((_337 + ((((float3(uint3(_1768, _1764 + (_1766 * _1768), _289) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_369 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_369 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1927 = _1925.w;
        _1931 = _1925.xyz + (((_9_m51.xyz * (1.0f - _1885)) + (((_9_m54.xyz * pow(clamp(dot(_388, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1860 * max(_1811 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1882))) * _1927);
        _1932 = _1927 * _1885;
    }
    else
    {
        float3 _1633 = _362 - _7_m11.xyz;
        float _1635 = _1633.y;
        float _1649 = max(-127.0f, _9_m49.z * _1635);
        float _1673 = max(-127.0f, _9_m52.x * _1635);
        float _1684 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1649) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1649)) / _1649) : (0.693147182464599609375f - (0.2402265071868896484375f * _1649)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1673) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1673)) / _1673) : (0.693147182464599609375f - (0.2402265071868896484375f * _1673))));
        float _1706 = clamp((_389 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1709 = clamp((max(clamp(exp2(-(_1684 * _389)), 0.0f, 1.0f), _9_m51.w) + clamp((_389 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1706, 0.0f, 1.0f);
        _1931 = (_9_m51.xyz * (1.0f - _1709)) + (((_9_m54.xyz * pow(clamp(dot(_388, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1684 * max(_389 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1706));
        _1932 = _1709;
    }
    float3 _1935 = _1590 * _1932;
    float3 _1937 = (clamp(_1553.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _1935) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1593 * _1593)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1599) / max((12.56637096405029296875f * _1603) * sqrt(_1603), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1590)) * _1932) + _1931);

    // RenoDX code start: apply the hue-preserving fog composite.
    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _1937 = (_1937 * 0.65f) + (clamp(_1553.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    // RenoDX code end
    float4 _1939 = float4(_1937.x, _1937.y, _1937.z, _1553.w);
    _1939.w = dot(_1935, 0.3333333432674407958984375f.xxx);
    _5 = _1939;
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
