// DX11 0xDDFFCC65 -> Vulkan 0x3B7B7ED4
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

static uint _298 = 0u;

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(28, 3)]]
cbuffer _6_7 : register(b28)
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

[[vk::binding(32, 3)]]
cbuffer _8_9 : register(b32)
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

[[vk::binding(34, 3)]] ByteAddressBuffer _23 : register(t34);
[[vk::binding(33, 3)]]
cbuffer _24_26 : register(b33)
{
    float4 _26_m0 : packoffset(c0);
    float4 _26_m1 : packoffset(c1);
    float4 _26_m2 : packoffset(c2);
    float4 _26_m3 : packoffset(c3);
    _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(30, 3)]]
cbuffer _27_28 : register(b30)
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
    float4 _36_m0[15] : packoffset(c0);
    float4 _36_m1[15] : packoffset(c15);
};

[[vk::binding(31, 3)]]
cbuffer _39_40 : register(b31)
{
    float4 _40_m0 : packoffset(c0);
    float4 _40_m1 : packoffset(c1);
    float4 _40_m2 : packoffset(c2);
    float4 _40_m3 : packoffset(c3);
    float4 _40_m4 : packoffset(c4);
    uint4 _40_m5 : packoffset(c5);
    float4 _40_m6 : packoffset(c6);
    float4 _40_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0);
[[vk::binding(25, 3)]] Texture2D<float4> _17 : register(t25);
[[vk::binding(9, 3)]] Texture2D<float4> _18 : register(t9);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10);
[[vk::binding(20, 3)]] Texture2D<float4> _20 : register(t20);
[[vk::binding(11, 3)]] Texture2DArray<float4> _21 : register(t11);
[[vk::binding(8, 3)]] Texture2D<float4> _29 : register(t8);
[[vk::binding(26, 3)]] Texture2D<float4> _30 : register(t26);
[[vk::binding(12, 3)]] Texture2D<float4> _32 : register(t12);
[[vk::binding(6, 3)]] Texture2DArray<float4> _33 : register(t6);
[[vk::binding(7, 3)]] Texture2DArray<float4> _34 : register(t7);
[[vk::binding(24, 3)]] Texture2D<float4> _37 : register(t24);
[[vk::binding(19, 3)]] Texture3D<float4> _38 : register(t19);
[[vk::binding(27, 3)]] Texture2D<float4> _41 : register(t27);
[[vk::binding(5, 3)]] Texture2D<float4> _42 : register(t5);
[[vk::binding(18, 3)]] Texture3D<float4> _43 : register(t18);
[[vk::binding(15, 3)]] Texture3D<float4> _44 : register(t15);
[[vk::binding(17, 3)]] Texture3D<float4> _45 : register(t17);
[[vk::binding(14, 3)]] Texture3D<float4> _46 : register(t14);
[[vk::binding(16, 3)]] Texture3D<float4> _47 : register(t16);
[[vk::binding(13, 3)]] Texture3D<float4> _48 : register(t13);
[[vk::binding(4, 3)]] Texture2D<float4> _49 : register(t4);
[[vk::binding(23, 3)]] Texture2D<float4> _50 : register(t23);
[[vk::binding(22, 3)]] Texture2D<float4> _51 : register(t22);
[[vk::binding(21, 3)]] Texture2D<float4> _52 : register(t21);

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
    uint2 _304 = uint2(gl_FragCoord.xy);
    int _307 = int(_304.x);
    int _308 = int(_304.y);
    int2 _310 = int3(_307, _308, 0).xy;
    float4 _312 = _50.Load(int3(_310, 0));
    float4 _314 = _51.Load(int3(_310, 0));
    float4 _316 = _52.Load(int3(_310, 0));
    float _317 = _312.x;
    float _318 = _312.y;
    uint _329 = uint(int((round(_312.w * 3.0f) * 4.0f) + round(_314.w * 3.0f)));
    float2 _332 = (_314.xy * 2.0f) - 1.0f.xx;
    float _336 = 1.0f - dot(1.0f.xx, abs(_332));
    float3 _338 = float3(_332.x, _336, _332.y);
    float3 _350;
    if (_336 < 0.0f)
    {
        float2 _345 = _338.xz;
        bool2 _346 = bool2(_345.x >= 0.0f.xx.x, _345.y >= 0.0f.xx.y);
        float2 _348 = (1.0f.xx - abs(_338.zx)) * float2(_346.x ? 1.0f.xx.x : (-1.0f).xx.x, _346.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _350 = float3(_348.x, _338.y, _348.y);
    }
    else
    {
        _350 = _338;
    }
    float3 _351 = normalize(_350);
    float _352 = _314.z;
    float _354 = _316.w;
    float2 _357 = float2(_304);
    float2 _370 = gl_FragCoord.xy * _9_m0.zw;
    float2 _372 = (_370 * 2.0f) - 1.0f.xx;
    float4 _375 = float4(_372, _17.SampleLevel(_12, (_357 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _375.y = -_372.y;
    float4 _378 = mul(_7_m6, _375);
    float3 _382 = _378.xyz / _378.w.xxx;
    float4 _386 = float4(_382, 1.0f);
    float _389 = abs(mul(_7_m0, _386).z);
    float3 _404;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _404 = _7_m11.xyz - _382;
            break;
        }
        else
        {
            _404 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _405 = dot(_404, _404);
    float _407 = rsqrt(max(_405, 9.9999999392252902907785028219223e-09f));
    float3 _408 = _404 * _407;
    float _409 = _405 * _407;
    float3 _410 = -_408;
    bool _413 = _9_m129.x > 0.00048828125f;
    float2 _423;
    if (_413)
    {
        _423 = _49.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _423 = 1.0f.xx;
    }
    float _426 = min(_423.x, _423.y);
    float2 _427 = _423 * 1.0f;
    float _428 = _427.x;
    float _431 = clamp((_312.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _436;
    float _437;
    if (_413)
    {
        _436 = lerp(1.0f, _423.y, _431);
        _437 = lerp(1.0f, 0.0f, _431);
    }
    else
    {
        _436 = 1.0f;
        _437 = 1.0f;
    }
    float _442 = lerp(lerp(min(_436, _352), _352, _426), _352, _428);
    float3 _444 = _316.xyz * lerp(lerp(min(_437, 1.0f), 1.0f, _426), 1.0f, _428);
    float3 _445 = _444 * _317;
    float3 _446 = _444 - _445;
    float3 _450 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _317)).xxx + _445;
    float _451 = dot(_351, _408);
    float _452 = max(0.0f, _451);
    float _453 = _442 * _442;
    float _454 = _452 * _452;
    float _455 = _454 * _452;
    float2 _456 = float2(1.0f, _452);
    float2 _459 = float2(1.0f, _453);
    float _460 = _453 * _453;
    float3 _462 = float3(1.0f, _453, _460 * _453);
    float _467 = dot(mul(_456, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _459) / dot(mul(float3(1.0f, _454, _455), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _462);
    float _472 = dot(mul(_456, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _459) / dot(mul(float3(1.0f, _452, _455), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _462);
    float3 _475 = (_450 * _467) + _472.xxx;
    float _476 = _467 + _472;
    float4 _489 = _29.Load(int3(_310, 0));
    float _490 = _489.x;
    float4 _653;
    if (_490 > 0.001000000047497451305389404296875f)
    {
        float3 _500 = reflect(_410, _351);
        float3 _501 = -_28_m0.xyz;
        float _506 = dot(_501, _500);
        float3 _508 = _500 - (_501 * _506);
        bool3 _510 = (_506 < _28_m4.z).xxx;
        float3 _518 = normalize((_501 * _28_m4.z) + ((_508 * rsqrt(max(6.103515625e-05f, dot(_508, _508)))) * _28_m4.y));
        float3 _519 = float3(_510.x ? _518.x : _500.x, _510.y ? _518.y : _500.y, _510.z ? _518.z : _500.z);
        float3 _523 = _519 + _408;
        float3 _527 = _523 * rsqrt(max(6.103515625e-05f, dot(_523, _523)));
        float _528 = clamp(dot(_519, _351), 0.0f, 1.0f);
        float _530 = clamp(dot(_351, _527), 0.0f, 1.0f);
        float _533 = clamp(_451, 0.0f, 1.0f);
        float _554 = (((_530 * _460) - _530) * _530) + 1.0f;
        float _557 = 1.0f - clamp(dot(_408, _527), 0.0f, 1.0f);
        float _558 = _557 * _557;
        float _560 = (_557 * _558) * _558;
        float _584 = 1.0f - _442;
        float _591 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_584 * (1.04997003078460693359375f + (_584 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _584))))));
        float _592 = 1.0f - _591;
        float3 _595 = _450 + ((1.0f.xxx - _450) * 0.0476190485060214996337890625f);
        float3 _635;
        do
        {
            [branch]
            if (((_329 > 0u) && (_329 <= 15u)) && (_354 > 0.0f))
            {
                uint _619 = clamp(_329 - 1u, 0u, 14u);
                _635 = _33.SampleLevel(_13, float3((dot(_351, _519) * 0.5f) + 0.5f, _354 * _36_m0[_619].w, float(_619)), 0.0f).xyz;
                break;
            }
            _635 = _528.xxx;
            break;
        } while(false);
        float3 _638 = ((clamp((min(((_450 * (1.0f - _560)) + _560.xxx) * ((_460 / (_554 * _554)) * (0.5f / (((_528 * sqrt(((((-_533) * _460) + _533) * _533) + _460)) + (_533 * sqrt(((((-_528) * _460) + _528) * _528) + _460))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_595 * (((_32.SampleLevel(_13, (float2(_533, _442) * 0.96875f) + 0.015625f.xx, 0.0f).x * _32.SampleLevel(_13, (float2(_528, _442) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _591) / _592)) * _595) / (1.0f.xxx - (_595 * _592)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _528) + ((_446 * 1.0f) * _635)) * _28_m1.xyz;
        float3 _651 = lerp(_638, _638 * _30.SampleBias(_13, float2(_490, 0.5f), _9_m16).xyz, (1.0f - _490).xxx) * min(_37.SampleLevel(_13, _370, 0.0f).x, 1.0f);
        _653 = float4(_651.x, _651.y, _651.z, 0.0f.xxxx.w);
    }
    else
    {
        _653 = 0.0f.xxxx;
    }
    float3 _655 = _318.xxx;
    float3 _692;
    float3 _693;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _668 = min(_20.SampleBias(_12, _4, _9_m16).x, _318);
        _692 = clamp((pow(abs(_452 + _668), exp2(((-16.0f) * _442) - 1.0f)) - 1.0f) + _668, 0.0f, 1.0f).xxx;
        _693 = max(_668.xxx, ((((((_446 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _668) + ((_446 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _668) + ((_446 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _668);
    }
    else
    {
        _692 = _655;
        _693 = _655;
    }
    _653.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _692 : 1.0f.xxx;
    float3 _716;
    do
    {
        [branch]
        if (((_329 > 0u) && (_329 <= 15u)) && (_354 > 0.0f))
        {
            uint _704 = clamp(_329 - 1u, 0u, 14u);
            _716 = _34.SampleLevel(_13, float3(_354 * _36_m0[_704].w, 0.5f, float(_704)), 0.0f).xyz;
            break;
        }
        _716 = 1.0f.xxx;
        break;
    } while(false);
    float3 _733 = (_382 + (_351 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_357 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _743 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _752 = _733 - (_9_m105.xyz + (_743 * (-_9_m107.w)));
    float _766 = max(clamp((max(abs(_752.x), abs(_752.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_752.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1068;
    float4 _1069;
    float4 _1070;
    float _1071;
    float _1072;
    if ((_9_m105.w != 0.0f) && (_766 < 1.0f))
    {
        float3 _779 = _733 - (_9_m105.xyz + (_743 * (-_9_m107.y)));
        float _793 = max(clamp((max(abs(_779.x), abs(_779.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_779.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _869;
        float4 _870;
        float4 _871;
        float4 _872;
        if (_793 < 1.0f)
        {
            float3 _802 = ((_733 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _804 = _802 - floor(_802);
            float4 _808 = _43.SampleLevel(_14, _804, 0.0f);
            float _809 = 1.0f - _793;
            float _813 = _9_m106.y * 0.5f;
            float _818 = _804.x;
            float _819 = clamp(_804.y, _813, 1.0f - _813) * 0.3333333432674407958984375f;
            float _820 = _804.z;
            float4 _823 = _44.SampleLevel(_13, float3(_818, _819, _820), 0.0f);
            float _839 = _808.x;
            float _849 = _808.y;
            float _859 = _808.z;
            _869 = _766 + (_823.w * _809);
            _870 = float4(((_44.SampleLevel(_13, float3(_818, _819 + 0.666666686534881591796875f, _820), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _859, _859) * _809;
            _871 = float4(((_44.SampleLevel(_13, float3(_818, _819 + 0.3333333432674407958984375f, _820), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _849, _849) * _809;
            _872 = float4(((_823.xyz * 4.0f) - 2.0f.xxx) * _839, _839) * _809;
        }
        else
        {
            _869 = _766;
            _870 = 0.0f.xxxx;
            _871 = 0.0f.xxxx;
            _872 = 0.0f.xxxx;
        }
        float3 _878 = _733 - (_9_m105.xyz + (_743 * (-_9_m107.z)));
        float _892 = max(clamp((max(abs(_878.x), abs(_878.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_878.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _972;
        float4 _973;
        float4 _974;
        float4 _975;
        if (_892 < 1.0f)
        {
            float3 _901 = ((_733 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _903 = _901 - floor(_901);
            float4 _907 = _45.SampleLevel(_14, _903, 0.0f);
            float _909 = _793 * (1.0f - _892);
            float _913 = _9_m106.y * 0.5f;
            float _918 = _903.x;
            float _919 = clamp(_903.y, _913, 1.0f - _913) * 0.3333333432674407958984375f;
            float _920 = _903.z;
            float4 _923 = _46.SampleLevel(_13, float3(_918, _919, _920), 0.0f);
            float _939 = _907.x;
            float _950 = _907.y;
            float _961 = _907.z;
            _972 = _869 + (_923.w * _909);
            _973 = _870 + (float4(((_46.SampleLevel(_13, float3(_918, _919 + 0.666666686534881591796875f, _920), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _961, _961) * _909);
            _974 = _871 + (float4(((_46.SampleLevel(_13, float3(_918, _919 + 0.3333333432674407958984375f, _920), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _950, _950) * _909);
            _975 = _872 + (float4(((_923.xyz * 4.0f) - 2.0f.xxx) * _939, _939) * _909);
        }
        else
        {
            _972 = _869;
            _973 = _870;
            _974 = _871;
            _975 = _872;
        }
        float4 _1058;
        float4 _1059;
        float4 _1060;
        float _1061;
        if (_892 > 0.0f)
        {
            float3 _984 = ((_733 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _987 = _9_m106.xyz * 0.5f;
            float3 _989 = clamp(_984 - floor(_984), _987, 1.0f.xxx - _987);
            float4 _993 = _47.SampleLevel(_14, _989, 0.0f);
            float _995 = _892 * (1.0f - _766);
            float _999 = _9_m106.y * 0.5f;
            float _1004 = _989.x;
            float _1005 = clamp(_989.y, _999, 1.0f - _999) * 0.3333333432674407958984375f;
            float _1006 = _989.z;
            float4 _1009 = _48.SampleLevel(_13, float3(_1004, _1005, _1006), 0.0f);
            float _1025 = _993.x;
            float _1036 = _993.y;
            float _1047 = _993.z;
            _1058 = _973 + (float4(((_48.SampleLevel(_13, float3(_1004, _1005 + 0.666666686534881591796875f, _1006), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1047, _1047) * _995);
            _1059 = _974 + (float4(((_48.SampleLevel(_13, float3(_1004, _1005 + 0.3333333432674407958984375f, _1006), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1036, _1036) * _995);
            _1060 = _975 + (float4(((_1009.xyz * 4.0f) - 2.0f.xxx) * _1025, _1025) * _995);
            _1061 = _972 + (_1009.w * _995);
        }
        else
        {
            _1058 = _973;
            _1059 = _974;
            _1060 = _975;
            _1061 = _972;
        }
        float _1064 = clamp((_1061 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1068 = _1058;
        _1069 = _1059;
        _1070 = _1060;
        _1071 = _1064 - _766;
        _1072 = (_1064 + _766) * 0.5f;
    }
    else
    {
        _1068 = 0.0f.xxxx;
        _1069 = 0.0f.xxxx;
        _1070 = 0.0f.xxxx;
        _1071 = 0.0f;
        _1072 = 1.0f;
    }
    float4 _1092 = _1070 + float4(_9_m108.x * _1072, (_9_m108.y * _1072) + ((_9_m108.w * _1071) * 0.5f), _9_m108.z * _1072, (_9_m108.w * _1072) + ((_9_m108.y * _1071) * 0.375f));
    float4 _1112 = _1069 + float4(_9_m109.x * _1072, (_9_m109.y * _1072) + ((_9_m109.w * _1071) * 0.5f), _9_m109.z * _1072, (_9_m109.w * _1072) + ((_9_m109.y * _1071) * 0.375f));
    float4 _1132 = _1068 + float4(_9_m110.x * _1072, (_9_m110.y * _1072) + ((_9_m110.w * _1071) * 0.5f), _9_m110.z * _1072, (_9_m110.w * _1072) + ((_9_m110.y * _1071) * 0.375f));
    float4 _1290;
    float4 _1291;
    float4 _1292;
    [branch]
    if (all(bool2(_370.x >= 0.0f.xx.x, _370.y >= 0.0f.xx.y)))
    {
        float4 _1140 = _42.SampleLevel(_13, _370, 0.0f);
        float4 _1141 = abs(_1140);
        float4 _1287;
        float4 _1288;
        float4 _1289;
        [branch]
        if (any(bool4(_1141.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1141.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1141.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1141.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1147 = length(_1140.yzw);
            uint _1149;
            float _1152;
            _1149 = 0u;
            _1152 = 1.0f;
            for (float _1154 = _1147; _1154 > 4.599999904632568359375f; )
            {
                _1149++;
                _1152 *= 0.5f;
                _1154 *= 0.5f;
                continue;
            }
            float4 _1158 = _1140 * _1152;
            float4 _1163 = float4(0.0f, _1158.yzw);
            float2 _1185 = (_41.SampleLevel(_13, float2(((((length(_1163) * _40_m3.x) + _40_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _40_m2.xy) + _40_m2.zw;
            float4 _1199;
            _1199 = float4(_1185.x * 3.5449078083038330078125f, _1163.yzw * _1185.y) * exp(_1158.x * 0.282094776630401611328125f);
            for (uint _1202 = 0u; _1202 < _1149; )
            {
                _1199 = mul(float4x4(_1199, float4(_1199.yx, 0.0f, 0.0f), float4(_1199.z, 0.0f, _1199.x, 0.0f), float4(_1199.w, 0.0f, 0.0f, _1199.x)) * 0.282094776630401611328125f, _1199);
                _1202++;
                continue;
            }
            float4x4 _1223 = float4x4(_1199, float4(_1199.yx, 0.0f, 0.0f), float4(_1199.z, 0.0f, _1199.x, 0.0f), float4(_1199.w, 0.0f, 0.0f, _1199.x)) * 0.282094776630401611328125f;
            float4 _1233 = mul(_1223, float4(_1092.w * 1.1283791065216064453125f, _1092.y * (-0.977204978466033935546875f), _1092.z * 0.977204978466033935546875f, _1092.x * (-0.977204978466033935546875f)));
            float4 _1253 = mul(_1223, float4(_1112.w * 1.1283791065216064453125f, _1112.y * (-0.977204978466033935546875f), _1112.z * 0.977204978466033935546875f, _1112.x * (-0.977204978466033935546875f)));
            float4 _1273 = mul(_1223, float4(_1132.w * 1.1283791065216064453125f, _1132.y * (-0.977204978466033935546875f), _1132.z * 0.977204978466033935546875f, _1132.x * (-0.977204978466033935546875f)));
            _1287 = float4(_1233.x * 0.886226952075958251953125f, _1233.w * (-1.02332675457000732421875f), _1233.y * (-1.02332675457000732421875f), _1233.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1288 = float4(_1253.x * 0.886226952075958251953125f, _1253.w * (-1.02332675457000732421875f), _1253.y * (-1.02332675457000732421875f), _1253.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1289 = float4(_1273.x * 0.886226952075958251953125f, _1273.w * (-1.02332675457000732421875f), _1273.y * (-1.02332675457000732421875f), _1273.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1287 = _1092;
            _1288 = _1112;
            _1289 = _1132;
        }
        _1290 = _1287;
        _1291 = _1288;
        _1292 = _1289;
    }
    else
    {
        _1290 = _1092;
        _1291 = _1112;
        _1292 = _1132;
    }
    float _1299 = max(0.0f, dot(_1290.xyz * _716.x, _351) + _1290.w);
    float _1306 = max(0.0f, dot(_1291.xyz * _716.y, _351) + _1291.w);
    float _1313 = max(0.0f, dot(_1292.xyz * _716.z, _351) + _1292.w);
    float3 _1323 = reflect(_410, _351);
    float _1331 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_442, 0.001000000047497451305389404296875f))));
    float2 _1335 = floor(_357 * _26_m0.w);
    float _1352 = floor(_389 - _26_m2.y);
    float _1356 = clamp(_1352, 0.0f, _26_m1.x - 1.0f);
    uint _1366 = (_1352 <= _1356) ? (_23.Load(uint(_9_m21.z + int(_1335.x + (_1335.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1356)) * 4 + 0)) : 0u;
    float _1369 = dot(float4(_1299, _1306, _1313, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1371;
    float _1374;
    uint _1376;
    _1371 = 0.0f.xxx;
    _1374 = 1.0f;
    _1376 = _1366;
    uint _1377;
    float3 _1372;
    float _1375;
    bool _1379;
    [loop]
    for (;;)
    {
        _1379 = _1374 > 0.00999999977648258209228515625f;
        if ((_1376 != 0u) && _1379)
        {
            uint _1383 = firstbitlow(_1376);
            _1377 = _1376 ^ (1u << (_1383 & 31u));
            float3 _1403 = float3(dot(_26_m4[_1383]._m2, _386), dot(_26_m4[_1383]._m3, _386), dot(_26_m4[_1383]._m4, _386));
            float3 _1404 = abs(_1403);
            if (all(bool3(_1404.x <= _26_m4[_1383]._m1.xyz.x, _1404.y <= _26_m4[_1383]._m1.xyz.y, _1404.z <= _26_m4[_1383]._m1.xyz.z)))
            {
                float3 _1413 = _26_m4[_1383]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1415 = _1404 * 0.100000001490116119384765625f;
                float3 _1416 = _1415 * _1415;
                float3 _1419 = (_26_m4[_1383]._m1.xyz - _1404) * _26_m4[_1383]._m5.xyz;
                float3 _1467;
                [branch]
                if (_26_m4[_1383]._m6.x == 1.0f)
                {
                    float3 _1452 = float3(dot(_26_m4[_1383]._m2.xyz, _1323), dot(_26_m4[_1383]._m3.xyz, _1323), dot(_26_m4[_1383]._m4.xyz, _1323));
                    float3 _1454 = (_26_m4[_1383]._m1.xyz - _1403) / _1452;
                    float3 _1457 = ((-_26_m4[_1383]._m1.xyz) - _1403) / _1452;
                    bool3 _1458 = bool3(_1452.x > 0.0f.xxx.x, _1452.y > 0.0f.xxx.y, _1452.z > 0.0f.xxx.z);
                    float3 _1459 = float3(_1458.x ? _1454.x : _1457.x, _1458.y ? _1454.y : _1457.y, _1458.z ? _1454.z : _1457.z);
                    _1467 = _1403 + (_1452 * min(min(_1459.x, _1459.y), _1459.z));
                }
                else
                {
                    _1467 = _1323;
                }
                float3 _1468 = normalize(_1467);
                float3 _1471 = float3(int3(sign(_1468)));
                float3 _1474 = _1468 / dot(_1468, _1471).xxx;
                float3 _1488;
                if (_1474.z < 0.0f)
                {
                    float3 _1479 = abs(_1474);
                    float2 _1486 = _1471.xy * float2(1.0f - _1479.y, 1.0f - _1479.x);
                    _1488 = float3(_1486.x, _1486.y, _1474.z);
                }
                else
                {
                    _1488 = _1474;
                }
                float _1513 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1383]._m0, float4(_351, 1.0f))));
                float _1526 = clamp((min(_1419.x, min(_1419.y, _1419.z)) * _26_m4[_1383]._m6.y) + ((((((_1413 * _1413).x - ((_1416.x + _1416.y) + _1416.z)) * _26_m4[_1383]._m5.x) * _26_m4[_1383]._m5.x) * (1.0f - _26_m4[_1383]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1383]._m6.w;
                _1372 = _1371 + ((((_21.SampleLevel(_15, float3((((_1488.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1383]._m1.w), _1331).xyz * _26_m4[_1383]._m5.w) * ((((((clamp(abs(_1369 / _1513), 0.0f, 1.0f) * 2.0f) + _1369) / (2.0f + _1513)) - 1.0f) * _9_m23.w) + 1.0f)) * _1526) * _1374);
                _1375 = _1374 * (1.0f - _1526);
            }
            else
            {
                _1372 = _1371;
                _1375 = _1374;
            }
            _1371 = _1372;
            _1374 = _1375;
            _1376 = _1377;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1595;
    if (_1379)
    {
        float3 _1534 = normalize(_1323);
        float3 _1537 = float3(int3(sign(_1534)));
        float3 _1540 = _1534 / dot(_1534, _1537).xxx;
        float3 _1554;
        if (_1540.z < 0.0f)
        {
            float3 _1545 = abs(_1540);
            float2 _1552 = _1537.xy * float2(1.0f - _1545.y, 1.0f - _1545.x);
            _1554 = float3(_1552.x, _1552.y, _1540.z);
        }
        else
        {
            _1554 = _1540;
        }
        float _1581 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_351, 1.0f))));
        _1595 = _1371 + ((_21.SampleLevel(_15, float3((((_1554.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1331).xyz * ((((((clamp(abs(_1369 / _1581), 0.0f, 1.0f) * 2.0f) + _1369) / (2.0f + _1581)) - 1.0f) * _9_m23.w) + 1.0f)) * _1374);
    }
    else
    {
        _1595 = _1371;
    }
    float3 _1601 = (_1595 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _1601 *= 0.25f + (0.75f * saturate(_1369));
    }
    float3 _1624;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _1618 = _19.SampleBias(_13, _4, _9_m16);
        float _1619 = _1618.x;
        _1624 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1619) + (_1601 * (1.0f - _1619));
    }
    else
    {
        _1624 = _1601;
    }
    float3 _1627 = (((float3(_1299, _1306, _1313) * _446) * _9_m22.x) * _693) + ((_1624 * (_475 + ((_450 * ((1.0f - _476) / _476)) * _475))) * _692);
    float4 _1629 = float4(_653.x, _653.y, _653.z, _653.w) + float4(_1627.x, _1627.y, _1627.z, 0.0f.xxxx.w);
    float _1647 = _382.y * _9_m46.w;
    float _1652 = max(0.00999999977648258209228515625f, _1647 + _9_m47.w);
    float3 _1666 = exp(_9_m45.xyz * ((-max(0.0f, (_409 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1652)) / _1652) * exp(_1647 + _9_m48.w))));
    float _1669 = dot(_410, _9_m44.xyz);
    float _1675 = _9_m45.w * _9_m45.w;
    float _1679 = (1.0f + _1675) - ((2.0f * _9_m45.w) * _1669);
    float3 _2007;
    float _2008;
    if (_9_m55.z > 0.0f)
    {
        uint3 _1833 = (uint3(int3(_307, _308, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1834 = _1833.y;
        uint _1835 = _1833.z;
        uint _1838 = _1833.x + (_1834 * _1835);
        uint _1840 = _1834 + (_1835 * _1838);
        uint _1842 = _1835 + (_1838 * _1840);
        uint _1844 = _1838 + (_1840 * _1842);
        float _1868 = dot(_410, -_7_m0[2].xyz);
        float3 _1878 = _382 - _7_m11.xyz;
        float _1880 = (_9_m55.w * ((_1868 > 5.9604644775390625e-08f) ? (1.0f / _1868) : 0.0f)) * (1.0f / _409);
        float _1881 = _1878.y;
        float _1882 = _1880 * _1881;
        float _1884 = _7_m11.y + _1882;
        float _1885 = _1881 - _1882;
        float _1887 = (1.0f - _1880) * _409;
        float _1901 = max(-127.0f, _9_m49.z * _1885);
        float _1925 = max(-127.0f, _9_m52.x * _1885);
        float _1936 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1884 - _9_m49.x)))) * ((abs(_1901) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1901)) / _1901) : (0.693147182464599609375f - (0.2402265071868896484375f * _1901)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1884 - _9_m52.z)))) * ((abs(_1925) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1925)) / _1925) : (0.693147182464599609375f - (0.2402265071868896484375f * _1925))));
        float _1958 = clamp((_409 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1961 = clamp((max(clamp(exp2(-(_1936 * _1887)), 0.0f, 1.0f), _9_m51.w) + clamp((_409 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1958, 0.0f, 1.0f);
        float4 _2001 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _38.SampleLevel(_13, float3((_357 + ((((float3(uint3(_1844, _1840 + (_1842 * _1844), _298) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_389 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_389 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2003 = _2001.w;
        _2007 = _2001.xyz + (((_9_m51.xyz * (1.0f - _1961)) + (((_9_m54.xyz * pow(clamp(dot(_408, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1936 * max(_1887 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1958))) * _2003);
        _2008 = _2003 * _1961;
    }
    else
    {
        float3 _1709 = _382 - _7_m11.xyz;
        float _1711 = _1709.y;
        float _1725 = max(-127.0f, _9_m49.z * _1711);
        float _1749 = max(-127.0f, _9_m52.x * _1711);
        float _1760 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1725) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1725)) / _1725) : (0.693147182464599609375f - (0.2402265071868896484375f * _1725)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1749) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1749)) / _1749) : (0.693147182464599609375f - (0.2402265071868896484375f * _1749))));
        float _1782 = clamp((_409 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1785 = clamp((max(clamp(exp2(-(_1760 * _409)), 0.0f, 1.0f), _9_m51.w) + clamp((_409 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1782, 0.0f, 1.0f);
        _2007 = (_9_m51.xyz * (1.0f - _1785)) + (((_9_m54.xyz * pow(clamp(dot(_408, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1760 * max(_409 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1782));
        _2008 = _1785;
    }
    float3 _2011 = _1666 * _2008;
    float3 _2013 = (clamp(_1629.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2011) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1669 * _1669)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1675) / max((12.56637096405029296875f * _1679) * sqrt(_1679), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1666)) * _2008) + _2007);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _2013 = (_2013 * 0.65f) + (clamp(_1629.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _2015 = float4(_2013.x, _2013.y, _2013.z, _1629.w);
    _2015.w = dot(_2011, 0.3333333432674407958984375f.xxx);
    _5 = _2015;
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
