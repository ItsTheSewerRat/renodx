// DX11 0x3923F97E -> Vulkan 0xD2311474
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

static uint _293 = 0u;

#include "./renodx_injection.hlsli"

[[vk::binding(27, 3)]]
cbuffer _6_7 : register(b27)
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

[[vk::binding(30, 3)]]
cbuffer _8_9 : register(b30)
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

[[vk::binding(32, 3)]] ByteAddressBuffer _23 : register(t32);
[[vk::binding(31, 3)]]
cbuffer _24_26 : register(b31)
{
    float4 _26_m0 : packoffset(c0);
    float4 _26_m1 : packoffset(c1);
    float4 _26_m2 : packoffset(c2);
    float4 _26_m3 : packoffset(c3);
    _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(28, 3)]]
cbuffer _27_28 : register(b28)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    float4 _28_m4 : packoffset(c4);
    uint4 _28_m5 : packoffset(c5);
    float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(29, 3)]]
cbuffer _35_36 : register(b29)
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
[[vk::binding(24, 3)]] Texture2D<float4> _17 : register(t24);
[[vk::binding(7, 3)]] Texture2D<float4> _18 : register(t7);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8);
[[vk::binding(18, 3)]] Texture2D<float4> _20 : register(t18);
[[vk::binding(9, 3)]] Texture2DArray<float4> _21 : register(t9);
[[vk::binding(6, 3)]] Texture2D<float4> _29 : register(t6);
[[vk::binding(25, 3)]] Texture2D<float4> _30 : register(t25);
[[vk::binding(10, 3)]] Texture2D<float4> _32 : register(t10);
[[vk::binding(23, 3)]] Texture2D<float4> _33 : register(t23);
[[vk::binding(17, 3)]] Texture3D<float4> _34 : register(t17);
[[vk::binding(26, 3)]] Texture2D<float4> _37 : register(t26);
[[vk::binding(5, 3)]] Texture2D<float4> _38 : register(t5);
[[vk::binding(16, 3)]] Texture3D<float4> _39 : register(t16);
[[vk::binding(13, 3)]] Texture3D<float4> _40 : register(t13);
[[vk::binding(15, 3)]] Texture3D<float4> _41 : register(t15);
[[vk::binding(12, 3)]] Texture3D<float4> _42 : register(t12);
[[vk::binding(14, 3)]] Texture3D<float4> _43 : register(t14);
[[vk::binding(11, 3)]] Texture3D<float4> _44 : register(t11);
[[vk::binding(4, 3)]] Texture2D<float4> _45 : register(t4);
[[vk::binding(22, 3)]] Texture2D<float4> _46 : register(t22);
[[vk::binding(21, 3)]] Texture2D<float4> _47 : register(t21);
[[vk::binding(20, 3)]] Texture2D<float4> _48 : register(t20);
[[vk::binding(19, 3)]] Texture3D<float4> _49 : register(t19);

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
    uint2 _299 = uint2(gl_FragCoord.xy);
    int _302 = int(_299.x);
    int _303 = int(_299.y);
    int2 _305 = int3(_302, _303, 0).xy;
    float4 _307 = _46.Load(int3(_305, 0));
    float4 _309 = _47.Load(int3(_305, 0));
    float _312 = _307.x;
    float _313 = _307.y;
    float2 _317 = (_309.xy * 2.0f) - 1.0f.xx;
    float _321 = 1.0f - dot(1.0f.xx, abs(_317));
    float3 _323 = float3(_317.x, _321, _317.y);
    float3 _335;
    if (_321 < 0.0f)
    {
        float2 _330 = _323.xz;
        bool2 _331 = bool2(_330.x >= 0.0f.xx.x, _330.y >= 0.0f.xx.y);
        float2 _333 = (1.0f.xx - abs(_323.zx)) * float2(_331.x ? 1.0f.xx.x : (-1.0f).xx.x, _331.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _335 = float3(_333.x, _323.y, _333.y);
    }
    else
    {
        _335 = _323;
    }
    float3 _336 = normalize(_335);
    float _337 = _309.z;
    float2 _341 = float2(_299);
    float2 _354 = gl_FragCoord.xy * _9_m0.zw;
    float2 _356 = (_354 * 2.0f) - 1.0f.xx;
    float4 _359 = float4(_356, _17.SampleLevel(_12, (_341 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _359.y = -_356.y;
    float4 _362 = mul(_7_m6, _359);
    float3 _366 = _362.xyz / _362.w.xxx;
    float4 _370 = float4(_366, 1.0f);
    float _373 = abs(mul(_7_m0, _370).z);
    float3 _388;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _388 = _7_m11.xyz - _366;
            break;
        }
        else
        {
            _388 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _389 = dot(_388, _388);
    float _391 = rsqrt(max(_389, 9.9999999392252902907785028219223e-09f));
    float3 _392 = _388 * _391;
    float _393 = _389 * _391;
    float3 _394 = -_392;
    bool _397 = _9_m129.x > 0.00048828125f;
    float2 _407;
    if (_397)
    {
        _407 = _45.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _407 = 1.0f.xx;
    }
    float _410 = min(_407.x, _407.y);
    float2 _411 = _407 * 1.0f;
    float _412 = _411.x;
    float _415 = clamp((_307.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _420;
    float _421;
    if (_397)
    {
        _420 = lerp(1.0f, _407.y, _415);
        _421 = lerp(1.0f, 0.0f, _415);
    }
    else
    {
        _420 = 1.0f;
        _421 = 1.0f;
    }
    float _426 = lerp(lerp(min(_420, _337), _337, _410), _337, _412);
    float3 _428 = _48.Load(int3(_305, 0)).xyz * lerp(lerp(min(_421, 1.0f), 1.0f, _410), 1.0f, _412);
    float3 _429 = _428 * _312;
    float3 _430 = _428 - _429;
    float3 _434 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _312)).xxx + _429;
    float _435 = dot(_336, _392);
    float _436 = max(0.0f, _435);
    float _437 = _426 * _426;
    float _438 = _436 * _436;
    float _439 = _438 * _436;
    float2 _440 = float2(1.0f, _436);
    float2 _443 = float2(1.0f, _437);
    float _444 = _437 * _437;
    float3 _446 = float3(1.0f, _437, _444 * _437);
    float _451 = dot(mul(_440, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _443) / dot(mul(float3(1.0f, _438, _439), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _446);
    float _456 = dot(mul(_440, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _443) / dot(mul(float3(1.0f, _436, _439), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _446);
    float3 _459 = (_434 * _451) + _456.xxx;
    float _460 = _451 + _456;
    float4 _473 = _29.Load(int3(_305, 0));
    float _474 = _473.x;
    float4 _610;
    if (_474 > 0.001000000047497451305389404296875f)
    {
        float3 _484 = reflect(_394, _336);
        float3 _485 = -_28_m0.xyz;
        float _490 = dot(_485, _484);
        float3 _492 = _484 - (_485 * _490);
        bool3 _494 = (_490 < _28_m4.z).xxx;
        float3 _502 = normalize((_485 * _28_m4.z) + ((_492 * rsqrt(max(6.103515625e-05f, dot(_492, _492)))) * _28_m4.y));
        float3 _503 = float3(_494.x ? _502.x : _484.x, _494.y ? _502.y : _484.y, _494.z ? _502.z : _484.z);
        float3 _507 = _503 + _392;
        float3 _511 = _507 * rsqrt(max(6.103515625e-05f, dot(_507, _507)));
        float _512 = clamp(dot(_503, _336), 0.0f, 1.0f);
        float _514 = clamp(dot(_336, _511), 0.0f, 1.0f);
        float _517 = clamp(_435, 0.0f, 1.0f);
        float _538 = (((_514 * _444) - _514) * _514) + 1.0f;
        float _541 = 1.0f - clamp(dot(_392, _511), 0.0f, 1.0f);
        float _542 = _541 * _541;
        float _544 = (_541 * _542) * _542;
        float _568 = 1.0f - _426;
        float _575 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_568 * (1.04997003078460693359375f + (_568 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _568))))));
        float _576 = 1.0f - _575;
        float3 _579 = _434 + ((1.0f.xxx - _434) * 0.0476190485060214996337890625f);
        float3 _595 = ((clamp((min(((_434 * (1.0f - _544)) + _544.xxx) * ((_444 / (_538 * _538)) * (0.5f / (((_512 * sqrt(((((-_517) * _444) + _517) * _517) + _444)) + (_517 * sqrt(((((-_512) * _444) + _512) * _512) + _444))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_579 * (((_32.SampleLevel(_13, (float2(_517, _426) * 0.96875f) + 0.015625f.xx, 0.0f).x * _32.SampleLevel(_13, (float2(_512, _426) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _575) / _576)) * _579) / (1.0f.xxx - (_579 * _576)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _512) + ((_430 * 1.0f) * _512)) * _28_m1.xyz;
        float3 _608 = lerp(_595, _595 * _30.SampleBias(_13, float2(_474, 0.5f), _9_m16).xyz, (1.0f - _474).xxx) * min(_33.SampleLevel(_13, _354, 0.0f).x, 1.0f);
        _610 = float4(_608.x, _608.y, _608.z, 0.0f.xxxx.w);
    }
    else
    {
        _610 = 0.0f.xxxx;
    }
    float3 _612 = _313.xxx;
    float3 _649;
    float3 _650;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _625 = min(_20.SampleBias(_12, _4, _9_m16).x, _313);
        _649 = clamp((pow(abs(_436 + _625), exp2(((-16.0f) * _426) - 1.0f)) - 1.0f) + _625, 0.0f, 1.0f).xxx;
        _650 = max(_625.xxx, ((((((_430 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _625) + ((_430 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _625) + ((_430 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _625);
    }
    else
    {
        _649 = _612;
        _650 = _612;
    }
    _610.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _649 : 1.0f.xxx;
    float3 _667 = (_366 + (_336 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_341 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _677 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _686 = _667 - (_9_m105.xyz + (_677 * (-_9_m107.w)));
    float _700 = max(clamp((max(abs(_686.x), abs(_686.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_686.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1002;
    float4 _1003;
    float4 _1004;
    float _1005;
    float _1006;
    if ((_9_m105.w != 0.0f) && (_700 < 1.0f))
    {
        float3 _713 = _667 - (_9_m105.xyz + (_677 * (-_9_m107.y)));
        float _727 = max(clamp((max(abs(_713.x), abs(_713.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_713.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _803;
        float4 _804;
        float4 _805;
        float4 _806;
        if (_727 < 1.0f)
        {
            float3 _736 = ((_667 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _738 = _736 - floor(_736);
            float4 _742 = _39.SampleLevel(_14, _738, 0.0f);
            float _743 = 1.0f - _727;
            float _747 = _9_m106.y * 0.5f;
            float _752 = _738.x;
            float _753 = clamp(_738.y, _747, 1.0f - _747) * 0.3333333432674407958984375f;
            float _754 = _738.z;
            float4 _757 = _40.SampleLevel(_13, float3(_752, _753, _754), 0.0f);
            float _773 = _742.x;
            float _783 = _742.y;
            float _793 = _742.z;
            _803 = _700 + (_757.w * _743);
            _804 = float4(((_40.SampleLevel(_13, float3(_752, _753 + 0.666666686534881591796875f, _754), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _793, _793) * _743;
            _805 = float4(((_40.SampleLevel(_13, float3(_752, _753 + 0.3333333432674407958984375f, _754), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _783, _783) * _743;
            _806 = float4(((_757.xyz * 4.0f) - 2.0f.xxx) * _773, _773) * _743;
        }
        else
        {
            _803 = _700;
            _804 = 0.0f.xxxx;
            _805 = 0.0f.xxxx;
            _806 = 0.0f.xxxx;
        }
        float3 _812 = _667 - (_9_m105.xyz + (_677 * (-_9_m107.z)));
        float _826 = max(clamp((max(abs(_812.x), abs(_812.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_812.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _906;
        float4 _907;
        float4 _908;
        float4 _909;
        if (_826 < 1.0f)
        {
            float3 _835 = ((_667 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _837 = _835 - floor(_835);
            float4 _841 = _41.SampleLevel(_14, _837, 0.0f);
            float _843 = _727 * (1.0f - _826);
            float _847 = _9_m106.y * 0.5f;
            float _852 = _837.x;
            float _853 = clamp(_837.y, _847, 1.0f - _847) * 0.3333333432674407958984375f;
            float _854 = _837.z;
            float4 _857 = _42.SampleLevel(_13, float3(_852, _853, _854), 0.0f);
            float _873 = _841.x;
            float _884 = _841.y;
            float _895 = _841.z;
            _906 = _803 + (_857.w * _843);
            _907 = _804 + (float4(((_42.SampleLevel(_13, float3(_852, _853 + 0.666666686534881591796875f, _854), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _895, _895) * _843);
            _908 = _805 + (float4(((_42.SampleLevel(_13, float3(_852, _853 + 0.3333333432674407958984375f, _854), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _884, _884) * _843);
            _909 = _806 + (float4(((_857.xyz * 4.0f) - 2.0f.xxx) * _873, _873) * _843);
        }
        else
        {
            _906 = _803;
            _907 = _804;
            _908 = _805;
            _909 = _806;
        }
        float4 _992;
        float4 _993;
        float4 _994;
        float _995;
        if (_826 > 0.0f)
        {
            float3 _918 = ((_667 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _921 = _9_m106.xyz * 0.5f;
            float3 _923 = clamp(_918 - floor(_918), _921, 1.0f.xxx - _921);
            float4 _927 = _43.SampleLevel(_14, _923, 0.0f);
            float _929 = _826 * (1.0f - _700);
            float _933 = _9_m106.y * 0.5f;
            float _938 = _923.x;
            float _939 = clamp(_923.y, _933, 1.0f - _933) * 0.3333333432674407958984375f;
            float _940 = _923.z;
            float4 _943 = _44.SampleLevel(_13, float3(_938, _939, _940), 0.0f);
            float _959 = _927.x;
            float _970 = _927.y;
            float _981 = _927.z;
            _992 = _907 + (float4(((_44.SampleLevel(_13, float3(_938, _939 + 0.666666686534881591796875f, _940), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _981, _981) * _929);
            _993 = _908 + (float4(((_44.SampleLevel(_13, float3(_938, _939 + 0.3333333432674407958984375f, _940), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _970, _970) * _929);
            _994 = _909 + (float4(((_943.xyz * 4.0f) - 2.0f.xxx) * _959, _959) * _929);
            _995 = _906 + (_943.w * _929);
        }
        else
        {
            _992 = _907;
            _993 = _908;
            _994 = _909;
            _995 = _906;
        }
        float _998 = clamp((_995 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1002 = _992;
        _1003 = _993;
        _1004 = _994;
        _1005 = _998 - _700;
        _1006 = (_998 + _700) * 0.5f;
    }
    else
    {
        _1002 = 0.0f.xxxx;
        _1003 = 0.0f.xxxx;
        _1004 = 0.0f.xxxx;
        _1005 = 0.0f;
        _1006 = 1.0f;
    }
    float4 _1026 = _1004 + float4(_9_m108.x * _1006, (_9_m108.y * _1006) + ((_9_m108.w * _1005) * 0.5f), _9_m108.z * _1006, (_9_m108.w * _1006) + ((_9_m108.y * _1005) * 0.375f));
    float4 _1046 = _1003 + float4(_9_m109.x * _1006, (_9_m109.y * _1006) + ((_9_m109.w * _1005) * 0.5f), _9_m109.z * _1006, (_9_m109.w * _1006) + ((_9_m109.y * _1005) * 0.375f));
    float4 _1066 = _1002 + float4(_9_m110.x * _1006, (_9_m110.y * _1006) + ((_9_m110.w * _1005) * 0.5f), _9_m110.z * _1006, (_9_m110.w * _1006) + ((_9_m110.y * _1005) * 0.375f));
    float4 _1224;
    float4 _1225;
    float4 _1226;
    [branch]
    if (all(bool2(_354.x >= 0.0f.xx.x, _354.y >= 0.0f.xx.y)))
    {
        float4 _1074 = _38.SampleLevel(_13, _354, 0.0f);
        float4 _1075 = abs(_1074);
        float4 _1221;
        float4 _1222;
        float4 _1223;
        [branch]
        if (any(bool4(_1075.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1075.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1075.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1075.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1081 = length(_1074.yzw);
            uint _1083;
            float _1086;
            _1083 = 0u;
            _1086 = 1.0f;
            for (float _1088 = _1081; _1088 > 4.599999904632568359375f; )
            {
                _1083++;
                _1086 *= 0.5f;
                _1088 *= 0.5f;
                continue;
            }
            float4 _1092 = _1074 * _1086;
            float4 _1097 = float4(0.0f, _1092.yzw);
            float2 _1119 = (_37.SampleLevel(_13, float2(((((length(_1097) * _36_m3.x) + _36_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _36_m2.xy) + _36_m2.zw;
            float4 _1133;
            _1133 = float4(_1119.x * 3.5449078083038330078125f, _1097.yzw * _1119.y) * exp(_1092.x * 0.282094776630401611328125f);
            for (uint _1136 = 0u; _1136 < _1083; )
            {
                _1133 = mul(float4x4(_1133, float4(_1133.yx, 0.0f, 0.0f), float4(_1133.z, 0.0f, _1133.x, 0.0f), float4(_1133.w, 0.0f, 0.0f, _1133.x)) * 0.282094776630401611328125f, _1133);
                _1136++;
                continue;
            }
            float4x4 _1157 = float4x4(_1133, float4(_1133.yx, 0.0f, 0.0f), float4(_1133.z, 0.0f, _1133.x, 0.0f), float4(_1133.w, 0.0f, 0.0f, _1133.x)) * 0.282094776630401611328125f;
            float4 _1167 = mul(_1157, float4(_1026.w * 1.1283791065216064453125f, _1026.y * (-0.977204978466033935546875f), _1026.z * 0.977204978466033935546875f, _1026.x * (-0.977204978466033935546875f)));
            float4 _1187 = mul(_1157, float4(_1046.w * 1.1283791065216064453125f, _1046.y * (-0.977204978466033935546875f), _1046.z * 0.977204978466033935546875f, _1046.x * (-0.977204978466033935546875f)));
            float4 _1207 = mul(_1157, float4(_1066.w * 1.1283791065216064453125f, _1066.y * (-0.977204978466033935546875f), _1066.z * 0.977204978466033935546875f, _1066.x * (-0.977204978466033935546875f)));
            _1221 = float4(_1167.x * 0.886226952075958251953125f, _1167.w * (-1.02332675457000732421875f), _1167.y * (-1.02332675457000732421875f), _1167.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1222 = float4(_1187.x * 0.886226952075958251953125f, _1187.w * (-1.02332675457000732421875f), _1187.y * (-1.02332675457000732421875f), _1187.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1223 = float4(_1207.x * 0.886226952075958251953125f, _1207.w * (-1.02332675457000732421875f), _1207.y * (-1.02332675457000732421875f), _1207.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1221 = _1026;
            _1222 = _1046;
            _1223 = _1066;
        }
        _1224 = _1221;
        _1225 = _1222;
        _1226 = _1223;
    }
    else
    {
        _1224 = _1026;
        _1225 = _1046;
        _1226 = _1066;
    }
    float _1231 = max(0.0f, dot(_1224.xyz, _336) + _1224.w);
    float _1236 = max(0.0f, dot(_1225.xyz, _336) + _1225.w);
    float _1241 = max(0.0f, dot(_1226.xyz, _336) + _1226.w);
    float3 _1251 = reflect(_394, _336);
    float _1259 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_426, 0.001000000047497451305389404296875f))));
    float2 _1263 = floor(_341 * _26_m0.w);
    float _1280 = floor(_373 - _26_m2.y);
    float _1284 = clamp(_1280, 0.0f, _26_m1.x - 1.0f);
    uint _1294 = (_1280 <= _1284) ? (_23.Load(uint(_9_m21.z + int(_1263.x + (_1263.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1284)) * 4 + 0)) : 0u;
    float _1297 = dot(float4(_1231, _1236, _1241, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
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
            float3 _1331 = float3(dot(_26_m4[_1311]._m2, _370), dot(_26_m4[_1311]._m3, _370), dot(_26_m4[_1311]._m4, _370));
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
                float _1441 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1311]._m0, float4(_336, 1.0f))));
                float _1454 = clamp((min(_1347.x, min(_1347.y, _1347.z)) * _26_m4[_1311]._m6.y) + ((((((_1341 * _1341).x - ((_1344.x + _1344.y) + _1344.z)) * _26_m4[_1311]._m5.x) * _26_m4[_1311]._m5.x) * (1.0f - _26_m4[_1311]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1311]._m6.w;
                _1300 = _1299 + ((((_21.SampleLevel(_15, float3((((_1416.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1311]._m1.w), _1259).xyz * _26_m4[_1311]._m5.w) * ((((((clamp(abs(_1297 / _1441), 0.0f, 1.0f) * 2.0f) + _1297) / (2.0f + _1441)) - 1.0f) * _9_m23.w) + 1.0f)) * _1454) * _1302);
                _1303 = _1302 * (1.0f - _1454);
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
    float3 _1523;
    if (_1307)
    {
        float3 _1462 = normalize(_1251);
        float3 _1465 = float3(int3(sign(_1462)));
        float3 _1468 = _1462 / dot(_1462, _1465).xxx;
        float3 _1482;
        if (_1468.z < 0.0f)
        {
            float3 _1473 = abs(_1468);
            float2 _1480 = _1465.xy * float2(1.0f - _1473.y, 1.0f - _1473.x);
            _1482 = float3(_1480.x, _1480.y, _1468.z);
        }
        else
        {
            _1482 = _1468;
        }
        float _1509 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_336, 1.0f))));
        _1523 = _1299 + ((_21.SampleLevel(_15, float3((((_1482.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1259).xyz * ((((((clamp(abs(_1297 / _1509), 0.0f, 1.0f) * 2.0f) + _1297) / (2.0f + _1509)) - 1.0f) * _9_m23.w) + 1.0f)) * _1302);
    }
    else
    {
        _1523 = _1299;
    }
    float3 _1529 = (_1523 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _1529 *= 0.25f + (0.75f * saturate(_1297));
    }
    float3 _1552;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _1546 = _19.SampleBias(_13, _4, _9_m16);
        float _1547 = _1546.x;
        _1552 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1547) + (_1529 * (1.0f - _1547));
    }
    else
    {
        _1552 = _1529;
    }
    float3 _1555 = (((float3(_1231, _1236, _1241) * _430) * _9_m22.x) * _650) + ((_1552 * (_459 + ((_434 * ((1.0f - _460) / _460)) * _459))) * _649);
    float4 _1557 = float4(_610.x, _610.y, _610.z, _610.w) + float4(_1555.x, _1555.y, _1555.z, 0.0f.xxxx.w);
    float3 _1560 = clamp(_1557.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _1575 = _366.y * _9_m46.w;
    float _1580 = max(0.00999999977648258209228515625f, _1575 + _9_m47.w);
    float3 _1594 = exp(_9_m45.xyz * ((-max(0.0f, (_393 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1580)) / _1580) * exp(_1575 + _9_m48.w))));
    float _1597 = dot(_394, _9_m44.xyz);
    float _1603 = _9_m45.w * _9_m45.w;
    float _1607 = (1.0f + _1603) - ((2.0f * _9_m45.w) * _1597);
    float3 _1935;
    float _1936;
    if (_9_m55.z > 0.0f)
    {
        uint3 _1761 = (uint3(int3(_302, _303, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1762 = _1761.y;
        uint _1763 = _1761.z;
        uint _1766 = _1761.x + (_1762 * _1763);
        uint _1768 = _1762 + (_1763 * _1766);
        uint _1770 = _1763 + (_1766 * _1768);
        uint _1772 = _1766 + (_1768 * _1770);
        float _1796 = dot(_394, -_7_m0[2].xyz);
        float3 _1806 = _366 - _7_m11.xyz;
        float _1808 = (_9_m55.w * ((_1796 > 5.9604644775390625e-08f) ? (1.0f / _1796) : 0.0f)) * (1.0f / _393);
        float _1809 = _1806.y;
        float _1810 = _1808 * _1809;
        float _1812 = _7_m11.y + _1810;
        float _1813 = _1809 - _1810;
        float _1815 = (1.0f - _1808) * _393;
        float _1829 = max(-127.0f, _9_m49.z * _1813);
        float _1853 = max(-127.0f, _9_m52.x * _1813);
        float _1864 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1812 - _9_m49.x)))) * ((abs(_1829) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1829)) / _1829) : (0.693147182464599609375f - (0.2402265071868896484375f * _1829)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1812 - _9_m52.z)))) * ((abs(_1853) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1853)) / _1853) : (0.693147182464599609375f - (0.2402265071868896484375f * _1853))));
        float _1886 = clamp((_393 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1889 = clamp((max(clamp(exp2(-(_1864 * _1815)), 0.0f, 1.0f), _9_m51.w) + clamp((_393 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1886, 0.0f, 1.0f);
        float4 _1929 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _34.SampleLevel(_13, float3((_341 + ((((float3(uint3(_1772, _1768 + (_1770 * _1772), _293) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_373 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_373 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _1931 = _1929.w;
        _1935 = _1929.xyz + (((_9_m51.xyz * (1.0f - _1889)) + (((_9_m54.xyz * pow(clamp(dot(_392, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1864 * max(_1815 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1886))) * _1931);
        _1936 = _1931 * _1889;
    }
    else
    {
        float3 _1637 = _366 - _7_m11.xyz;
        float _1639 = _1637.y;
        float _1653 = max(-127.0f, _9_m49.z * _1639);
        float _1677 = max(-127.0f, _9_m52.x * _1639);
        float _1688 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1653) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1653)) / _1653) : (0.693147182464599609375f - (0.2402265071868896484375f * _1653)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1677) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1677)) / _1677) : (0.693147182464599609375f - (0.2402265071868896484375f * _1677))));
        float _1710 = clamp((_393 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1713 = clamp((max(clamp(exp2(-(_1688 * _393)), 0.0f, 1.0f), _9_m51.w) + clamp((_393 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1710, 0.0f, 1.0f);
        _1935 = (_9_m51.xyz * (1.0f - _1713)) + (((_9_m54.xyz * pow(clamp(dot(_392, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1688 * max(_393 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1710));
        _1936 = _1713;
    }
    float3 _1939 = _1594 * _1936;
    float3 _1941 = (_1560 * _1939) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1597 * _1597)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1603) / max((12.56637096405029296875f * _1607) * sqrt(_1607), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1594)) * _1936) + _1935);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _1941 = (_1941 * 0.65f) + (_1560 * 0.35f);

    }
    float _1942 = dot(_1939, 0.3333333432674407958984375f.xxx);
    float4 _1943 = float4(_1941.x, _1941.y, _1941.z, _1557.w);
    _1943.w = _1942;
    float _1972 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _366) * _9_m61.z), 0.0f, 1.0f);
    float3 _1980 = lerp(_1560, _1943.xyz, min((1.0f - _1972) + ((_49.SampleLevel(_14, (_366 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _1972), 1.0f + _1942).xxx);
    _5 = float4(_1980.x, _1980.y, _1980.z, _1943.w);
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
