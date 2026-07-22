// DX11 0x3300FBDA -> Vulkan 0xFA8530EF
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

static uint _302 = 0u;

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

[[vk::binding(29, 3)]]
cbuffer _6_7 : register(b29)
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

[[vk::binding(33, 3)]]
cbuffer _8_9 : register(b33)
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

[[vk::binding(35, 3)]] ByteAddressBuffer _23 : register(t35);
[[vk::binding(34, 3)]]
cbuffer _24_26 : register(b34)
{
    float4 _26_m0 : packoffset(c0);
    float4 _26_m1 : packoffset(c1);
    float4 _26_m2 : packoffset(c2);
    float4 _26_m3 : packoffset(c3);
    _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(31, 3)]]
cbuffer _27_28 : register(b31)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    float4 _28_m4 : packoffset(c4);
    uint4 _28_m5 : packoffset(c5);
    float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(30, 3)]]
cbuffer _35_36 : register(b30)
{
    float4 _36_m0[15] : packoffset(c0);
    float4 _36_m1[15] : packoffset(c15);
};

[[vk::binding(32, 3)]]
cbuffer _39_40 : register(b32)
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
[[vk::binding(26, 3)]] Texture2D<float4> _17 : register(t26);
[[vk::binding(9, 3)]] Texture2D<float4> _18 : register(t9);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10);
[[vk::binding(20, 3)]] Texture2D<float4> _20 : register(t20);
[[vk::binding(11, 3)]] Texture2DArray<float4> _21 : register(t11);
[[vk::binding(8, 3)]] Texture2D<float4> _29 : register(t8);
[[vk::binding(27, 3)]] Texture2D<float4> _30 : register(t27);
[[vk::binding(12, 3)]] Texture2D<float4> _32 : register(t12);
[[vk::binding(6, 3)]] Texture2DArray<float4> _33 : register(t6);
[[vk::binding(7, 3)]] Texture2DArray<float4> _34 : register(t7);
[[vk::binding(25, 3)]] Texture2D<float4> _37 : register(t25);
[[vk::binding(19, 3)]] Texture3D<float4> _38 : register(t19);
[[vk::binding(28, 3)]] Texture2D<float4> _41 : register(t28);
[[vk::binding(5, 3)]] Texture2D<float4> _42 : register(t5);
[[vk::binding(18, 3)]] Texture3D<float4> _43 : register(t18);
[[vk::binding(15, 3)]] Texture3D<float4> _44 : register(t15);
[[vk::binding(17, 3)]] Texture3D<float4> _45 : register(t17);
[[vk::binding(14, 3)]] Texture3D<float4> _46 : register(t14);
[[vk::binding(16, 3)]] Texture3D<float4> _47 : register(t16);
[[vk::binding(13, 3)]] Texture3D<float4> _48 : register(t13);
[[vk::binding(4, 3)]] Texture2D<float4> _49 : register(t4);
[[vk::binding(24, 3)]] Texture2D<float4> _50 : register(t24);
[[vk::binding(23, 3)]] Texture2D<float4> _51 : register(t23);
[[vk::binding(22, 3)]] Texture2D<float4> _52 : register(t22);
[[vk::binding(21, 3)]] Texture3D<float4> _53 : register(t21);

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
    uint2 _308 = uint2(gl_FragCoord.xy);
    int _311 = int(_308.x);
    int _312 = int(_308.y);
    int2 _314 = int3(_311, _312, 0).xy;
    float4 _316 = _50.Load(int3(_314, 0));
    float4 _318 = _51.Load(int3(_314, 0));
    float4 _320 = _52.Load(int3(_314, 0));
    float _321 = _316.x;
    float _322 = _316.y;
    uint _333 = uint(int((round(_316.w * 3.0f) * 4.0f) + round(_318.w * 3.0f)));
    float2 _336 = (_318.xy * 2.0f) - 1.0f.xx;
    float _340 = 1.0f - dot(1.0f.xx, abs(_336));
    float3 _342 = float3(_336.x, _340, _336.y);
    float3 _354;
    if (_340 < 0.0f)
    {
        float2 _349 = _342.xz;
        bool2 _350 = bool2(_349.x >= 0.0f.xx.x, _349.y >= 0.0f.xx.y);
        float2 _352 = (1.0f.xx - abs(_342.zx)) * float2(_350.x ? 1.0f.xx.x : (-1.0f).xx.x, _350.y ? 1.0f.xx.y : (-1.0f).xx.y);
        _354 = float3(_352.x, _342.y, _352.y);
    }
    else
    {
        _354 = _342;
    }
    float3 _355 = normalize(_354);
    float _356 = _318.z;
    float _358 = _320.w;
    float2 _361 = float2(_308);
    float2 _374 = gl_FragCoord.xy * _9_m0.zw;
    float2 _376 = (_374 * 2.0f) - 1.0f.xx;
    float4 _379 = float4(_376, _17.SampleLevel(_12, (_361 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _379.y = -_376.y;
    float4 _382 = mul(_7_m6, _379);
    float3 _386 = _382.xyz / _382.w.xxx;
    float4 _390 = float4(_386, 1.0f);
    float _393 = abs(mul(_7_m0, _390).z);
    float3 _408;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _408 = _7_m11.xyz - _386;
            break;
        }
        else
        {
            _408 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _409 = dot(_408, _408);
    float _411 = rsqrt(max(_409, 9.9999999392252902907785028219223e-09f));
    float3 _412 = _408 * _411;
    float _413 = _409 * _411;
    float3 _414 = -_412;
    bool _417 = _9_m129.x > 0.00048828125f;
    float2 _427;
    if (_417)
    {
        _427 = _49.SampleBias(_13, _4, _9_m16).xy;
    }
    else
    {
        _427 = 1.0f.xx;
    }
    float _430 = min(_427.x, _427.y);
    float2 _431 = _427 * 1.0f;
    float _432 = _431.x;
    float _435 = clamp((_316.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
    float _440;
    float _441;
    if (_417)
    {
        _440 = lerp(1.0f, _427.y, _435);
        _441 = lerp(1.0f, 0.0f, _435);
    }
    else
    {
        _440 = 1.0f;
        _441 = 1.0f;
    }
    float _446 = lerp(lerp(min(_440, _356), _356, _430), _356, _432);
    float3 _448 = _320.xyz * lerp(lerp(min(_441, 1.0f), 1.0f, _430), 1.0f, _432);
    float3 _449 = _448 * _321;
    float3 _450 = _448 - _449;
    float3 _454 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _321)).xxx + _449;
    float _455 = dot(_355, _412);
    float _456 = max(0.0f, _455);
    float _457 = _446 * _446;
    float _458 = _456 * _456;
    float _459 = _458 * _456;
    float2 _460 = float2(1.0f, _456);
    float2 _463 = float2(1.0f, _457);
    float _464 = _457 * _457;
    float3 _466 = float3(1.0f, _457, _464 * _457);
    float _471 = dot(mul(_460, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _463) / dot(mul(float3(1.0f, _458, _459), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _466);
    float _476 = dot(mul(_460, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _463) / dot(mul(float3(1.0f, _456, _459), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _466);
    float3 _479 = (_454 * _471) + _476.xxx;
    float _480 = _471 + _476;
    float4 _493 = _29.Load(int3(_314, 0));
    float _494 = _493.x;
    float4 _657;
    if (_494 > 0.001000000047497451305389404296875f)
    {
        float3 _504 = reflect(_414, _355);
        float3 _505 = -_28_m0.xyz;
        float _510 = dot(_505, _504);
        float3 _512 = _504 - (_505 * _510);
        bool3 _514 = (_510 < _28_m4.z).xxx;
        float3 _522 = normalize((_505 * _28_m4.z) + ((_512 * rsqrt(max(6.103515625e-05f, dot(_512, _512)))) * _28_m4.y));
        float3 _523 = float3(_514.x ? _522.x : _504.x, _514.y ? _522.y : _504.y, _514.z ? _522.z : _504.z);
        float3 _527 = _523 + _412;
        float3 _531 = _527 * rsqrt(max(6.103515625e-05f, dot(_527, _527)));
        float _532 = clamp(dot(_523, _355), 0.0f, 1.0f);
        float _534 = clamp(dot(_355, _531), 0.0f, 1.0f);
        float _537 = clamp(_455, 0.0f, 1.0f);
        float _558 = (((_534 * _464) - _534) * _534) + 1.0f;
        float _561 = 1.0f - clamp(dot(_412, _531), 0.0f, 1.0f);
        float _562 = _561 * _561;
        float _564 = (_561 * _562) * _562;
        float _588 = 1.0f - _446;
        float _595 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_588 * (1.04997003078460693359375f + (_588 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _588))))));
        float _596 = 1.0f - _595;
        float3 _599 = _454 + ((1.0f.xxx - _454) * 0.0476190485060214996337890625f);
        float3 _639;
        do
        {
            [branch]
            if (((_333 > 0u) && (_333 <= 15u)) && (_358 > 0.0f))
            {
                uint _623 = clamp(_333 - 1u, 0u, 14u);
                _639 = _33.SampleLevel(_13, float3((dot(_355, _523) * 0.5f) + 0.5f, _358 * _36_m0[_623].w, float(_623)), 0.0f).xyz;
                break;
            }
            _639 = _532.xxx;
            break;
        } while(false);
        float3 _642 = ((clamp((min(((_454 * (1.0f - _564)) + _564.xxx) * ((_464 / (_558 * _558)) * (0.5f / (((_532 * sqrt(((((-_537) * _464) + _537) * _537) + _464)) + (_537 * sqrt(((((-_532) * _464) + _532) * _532) + _464))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_599 * (((_32.SampleLevel(_13, (float2(_537, _446) * 0.96875f) + 0.015625f.xx, 0.0f).x * _32.SampleLevel(_13, (float2(_532, _446) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _595) / _596)) * _599) / (1.0f.xxx - (_599 * _596)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _532) + ((_450 * 1.0f) * _639)) * _28_m1.xyz;
        float3 _655 = lerp(_642, _642 * _30.SampleBias(_13, float2(_494, 0.5f), _9_m16).xyz, (1.0f - _494).xxx) * min(_37.SampleLevel(_13, _374, 0.0f).x, 1.0f);
        _657 = float4(_655.x, _655.y, _655.z, 0.0f.xxxx.w);
    }
    else
    {
        _657 = 0.0f.xxxx;
    }
    float3 _659 = _322.xxx;
    float3 _696;
    float3 _697;
    [branch]
    if (_9_m23.x != 0.0f)
    {
        float _672 = min(_20.SampleBias(_12, _4, _9_m16).x, _322);
        _696 = clamp((pow(abs(_456 + _672), exp2(((-16.0f) * _446) - 1.0f)) - 1.0f) + _672, 0.0f, 1.0f).xxx;
        _697 = max(_672.xxx, ((((((_450 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _672) + ((_450 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _672) + ((_450 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _672);
    }
    else
    {
        _696 = _659;
        _697 = _659;
    }
    float3 _720;
    do
    {
        [branch]
        if (((_333 > 0u) && (_333 <= 15u)) && (_358 > 0.0f))
        {
            uint _708 = clamp(_333 - 1u, 0u, 14u);
            _720 = _34.SampleLevel(_13, float3(_358 * _36_m0[_708].w, 0.5f, float(_708)), 0.0f).xyz;
            break;
        }
        _720 = 1.0f.xxx;
        break;
    } while(false);
    float3 _737 = (_386 + (_355 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_361 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _747 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _756 = _737 - (_9_m105.xyz + (_747 * (-_9_m107.w)));
    float _770 = max(clamp((max(abs(_756.x), abs(_756.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_756.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1072;
    float4 _1073;
    float4 _1074;
    float _1075;
    float _1076;
    if ((_9_m105.w != 0.0f) && (_770 < 1.0f))
    {
        float3 _783 = _737 - (_9_m105.xyz + (_747 * (-_9_m107.y)));
        float _797 = max(clamp((max(abs(_783.x), abs(_783.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_783.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _873;
        float4 _874;
        float4 _875;
        float4 _876;
        if (_797 < 1.0f)
        {
            float3 _806 = ((_737 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _808 = _806 - floor(_806);
            float4 _812 = _43.SampleLevel(_14, _808, 0.0f);
            float _813 = 1.0f - _797;
            float _817 = _9_m106.y * 0.5f;
            float _822 = _808.x;
            float _823 = clamp(_808.y, _817, 1.0f - _817) * 0.3333333432674407958984375f;
            float _824 = _808.z;
            float4 _827 = _44.SampleLevel(_13, float3(_822, _823, _824), 0.0f);
            float _843 = _812.x;
            float _853 = _812.y;
            float _863 = _812.z;
            _873 = _770 + (_827.w * _813);
            _874 = float4(((_44.SampleLevel(_13, float3(_822, _823 + 0.666666686534881591796875f, _824), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _863, _863) * _813;
            _875 = float4(((_44.SampleLevel(_13, float3(_822, _823 + 0.3333333432674407958984375f, _824), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _853, _853) * _813;
            _876 = float4(((_827.xyz * 4.0f) - 2.0f.xxx) * _843, _843) * _813;
        }
        else
        {
            _873 = _770;
            _874 = 0.0f.xxxx;
            _875 = 0.0f.xxxx;
            _876 = 0.0f.xxxx;
        }
        float3 _882 = _737 - (_9_m105.xyz + (_747 * (-_9_m107.z)));
        float _896 = max(clamp((max(abs(_882.x), abs(_882.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_882.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _976;
        float4 _977;
        float4 _978;
        float4 _979;
        if (_896 < 1.0f)
        {
            float3 _905 = ((_737 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _907 = _905 - floor(_905);
            float4 _911 = _45.SampleLevel(_14, _907, 0.0f);
            float _913 = _797 * (1.0f - _896);
            float _917 = _9_m106.y * 0.5f;
            float _922 = _907.x;
            float _923 = clamp(_907.y, _917, 1.0f - _917) * 0.3333333432674407958984375f;
            float _924 = _907.z;
            float4 _927 = _46.SampleLevel(_13, float3(_922, _923, _924), 0.0f);
            float _943 = _911.x;
            float _954 = _911.y;
            float _965 = _911.z;
            _976 = _873 + (_927.w * _913);
            _977 = _874 + (float4(((_46.SampleLevel(_13, float3(_922, _923 + 0.666666686534881591796875f, _924), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _965, _965) * _913);
            _978 = _875 + (float4(((_46.SampleLevel(_13, float3(_922, _923 + 0.3333333432674407958984375f, _924), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _954, _954) * _913);
            _979 = _876 + (float4(((_927.xyz * 4.0f) - 2.0f.xxx) * _943, _943) * _913);
        }
        else
        {
            _976 = _873;
            _977 = _874;
            _978 = _875;
            _979 = _876;
        }
        float4 _1062;
        float4 _1063;
        float4 _1064;
        float _1065;
        if (_896 > 0.0f)
        {
            float3 _988 = ((_737 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
            float3 _991 = _9_m106.xyz * 0.5f;
            float3 _993 = clamp(_988 - floor(_988), _991, 1.0f.xxx - _991);
            float4 _997 = _47.SampleLevel(_14, _993, 0.0f);
            float _999 = _896 * (1.0f - _770);
            float _1003 = _9_m106.y * 0.5f;
            float _1008 = _993.x;
            float _1009 = clamp(_993.y, _1003, 1.0f - _1003) * 0.3333333432674407958984375f;
            float _1010 = _993.z;
            float4 _1013 = _48.SampleLevel(_13, float3(_1008, _1009, _1010), 0.0f);
            float _1029 = _997.x;
            float _1040 = _997.y;
            float _1051 = _997.z;
            _1062 = _977 + (float4(((_48.SampleLevel(_13, float3(_1008, _1009 + 0.666666686534881591796875f, _1010), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1051, _1051) * _999);
            _1063 = _978 + (float4(((_48.SampleLevel(_13, float3(_1008, _1009 + 0.3333333432674407958984375f, _1010), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1040, _1040) * _999);
            _1064 = _979 + (float4(((_1013.xyz * 4.0f) - 2.0f.xxx) * _1029, _1029) * _999);
            _1065 = _976 + (_1013.w * _999);
        }
        else
        {
            _1062 = _977;
            _1063 = _978;
            _1064 = _979;
            _1065 = _976;
        }
        float _1068 = clamp((_1065 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1072 = _1062;
        _1073 = _1063;
        _1074 = _1064;
        _1075 = _1068 - _770;
        _1076 = (_1068 + _770) * 0.5f;
    }
    else
    {
        _1072 = 0.0f.xxxx;
        _1073 = 0.0f.xxxx;
        _1074 = 0.0f.xxxx;
        _1075 = 0.0f;
        _1076 = 1.0f;
    }
    float4 _1096 = _1074 + float4(_9_m108.x * _1076, (_9_m108.y * _1076) + ((_9_m108.w * _1075) * 0.5f), _9_m108.z * _1076, (_9_m108.w * _1076) + ((_9_m108.y * _1075) * 0.375f));
    float4 _1116 = _1073 + float4(_9_m109.x * _1076, (_9_m109.y * _1076) + ((_9_m109.w * _1075) * 0.5f), _9_m109.z * _1076, (_9_m109.w * _1076) + ((_9_m109.y * _1075) * 0.375f));
    float4 _1136 = _1072 + float4(_9_m110.x * _1076, (_9_m110.y * _1076) + ((_9_m110.w * _1075) * 0.5f), _9_m110.z * _1076, (_9_m110.w * _1076) + ((_9_m110.y * _1075) * 0.375f));
    float4 _1294;
    float4 _1295;
    float4 _1296;
    [branch]
    if (all(bool2(_374.x >= 0.0f.xx.x, _374.y >= 0.0f.xx.y)))
    {
        float4 _1144 = _42.SampleLevel(_13, _374, 0.0f);
        float4 _1145 = abs(_1144);
        float4 _1291;
        float4 _1292;
        float4 _1293;
        [branch]
        if (any(bool4(_1145.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1145.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1145.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1145.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
        {
            float _1151 = length(_1144.yzw);
            uint _1153;
            float _1156;
            _1153 = 0u;
            _1156 = 1.0f;
            for (float _1158 = _1151; _1158 > 4.599999904632568359375f; )
            {
                _1153++;
                _1156 *= 0.5f;
                _1158 *= 0.5f;
                continue;
            }
            float4 _1162 = _1144 * _1156;
            float4 _1167 = float4(0.0f, _1162.yzw);
            float2 _1189 = (_41.SampleLevel(_13, float2(((((length(_1167) * _40_m3.x) + _40_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _40_m2.xy) + _40_m2.zw;
            float4 _1203;
            _1203 = float4(_1189.x * 3.5449078083038330078125f, _1167.yzw * _1189.y) * exp(_1162.x * 0.282094776630401611328125f);
            for (uint _1206 = 0u; _1206 < _1153; )
            {
                _1203 = mul(float4x4(_1203, float4(_1203.yx, 0.0f, 0.0f), float4(_1203.z, 0.0f, _1203.x, 0.0f), float4(_1203.w, 0.0f, 0.0f, _1203.x)) * 0.282094776630401611328125f, _1203);
                _1206++;
                continue;
            }
            float4x4 _1227 = float4x4(_1203, float4(_1203.yx, 0.0f, 0.0f), float4(_1203.z, 0.0f, _1203.x, 0.0f), float4(_1203.w, 0.0f, 0.0f, _1203.x)) * 0.282094776630401611328125f;
            float4 _1237 = mul(_1227, float4(_1096.w * 1.1283791065216064453125f, _1096.y * (-0.977204978466033935546875f), _1096.z * 0.977204978466033935546875f, _1096.x * (-0.977204978466033935546875f)));
            float4 _1257 = mul(_1227, float4(_1116.w * 1.1283791065216064453125f, _1116.y * (-0.977204978466033935546875f), _1116.z * 0.977204978466033935546875f, _1116.x * (-0.977204978466033935546875f)));
            float4 _1277 = mul(_1227, float4(_1136.w * 1.1283791065216064453125f, _1136.y * (-0.977204978466033935546875f), _1136.z * 0.977204978466033935546875f, _1136.x * (-0.977204978466033935546875f)));
            _1291 = float4(_1237.x * 0.886226952075958251953125f, _1237.w * (-1.02332675457000732421875f), _1237.y * (-1.02332675457000732421875f), _1237.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1292 = float4(_1257.x * 0.886226952075958251953125f, _1257.w * (-1.02332675457000732421875f), _1257.y * (-1.02332675457000732421875f), _1257.z * 1.02332675457000732421875f).yzwx * 1.0f;
            _1293 = float4(_1277.x * 0.886226952075958251953125f, _1277.w * (-1.02332675457000732421875f), _1277.y * (-1.02332675457000732421875f), _1277.z * 1.02332675457000732421875f).yzwx * 1.0f;
        }
        else
        {
            _1291 = _1096;
            _1292 = _1116;
            _1293 = _1136;
        }
        _1294 = _1291;
        _1295 = _1292;
        _1296 = _1293;
    }
    else
    {
        _1294 = _1096;
        _1295 = _1116;
        _1296 = _1136;
    }
    float _1303 = max(0.0f, dot(_1294.xyz * _720.x, _355) + _1294.w);
    float _1310 = max(0.0f, dot(_1295.xyz * _720.y, _355) + _1295.w);
    float _1317 = max(0.0f, dot(_1296.xyz * _720.z, _355) + _1296.w);
    float3 _1327 = reflect(_414, _355);
    float _1335 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_446, 0.001000000047497451305389404296875f))));
    float2 _1339 = floor(_361 * _26_m0.w);
    float _1356 = floor(_393 - _26_m2.y);
    float _1360 = clamp(_1356, 0.0f, _26_m1.x - 1.0f);
    uint _1370 = (_1356 <= _1360) ? (_23.Load(uint(_9_m21.z + int(_1339.x + (_1339.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1360)) * 4 + 0)) : 0u;
    float _1373 = dot(float4(_1303, _1310, _1317, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1375;
    float _1378;
    uint _1380;
    _1375 = 0.0f.xxx;
    _1378 = 1.0f;
    _1380 = _1370;
    uint _1381;
    float3 _1376;
    float _1379;
    bool _1383;
    [loop]
    for (;;)
    {
        _1383 = _1378 > 0.00999999977648258209228515625f;
        if ((_1380 != 0u) && _1383)
        {
            uint _1387 = firstbitlow(_1380);
            _1381 = _1380 ^ (1u << (_1387 & 31u));
            float3 _1407 = float3(dot(_26_m4[_1387]._m2, _390), dot(_26_m4[_1387]._m3, _390), dot(_26_m4[_1387]._m4, _390));
            float3 _1408 = abs(_1407);
            if (all(bool3(_1408.x <= _26_m4[_1387]._m1.xyz.x, _1408.y <= _26_m4[_1387]._m1.xyz.y, _1408.z <= _26_m4[_1387]._m1.xyz.z)))
            {
                float3 _1417 = _26_m4[_1387]._m1.xyz * 0.100000001490116119384765625f;
                float3 _1419 = _1408 * 0.100000001490116119384765625f;
                float3 _1420 = _1419 * _1419;
                float3 _1423 = (_26_m4[_1387]._m1.xyz - _1408) * _26_m4[_1387]._m5.xyz;
                float3 _1471;
                [branch]
                if (_26_m4[_1387]._m6.x == 1.0f)
                {
                    float3 _1456 = float3(dot(_26_m4[_1387]._m2.xyz, _1327), dot(_26_m4[_1387]._m3.xyz, _1327), dot(_26_m4[_1387]._m4.xyz, _1327));
                    float3 _1458 = (_26_m4[_1387]._m1.xyz - _1407) / _1456;
                    float3 _1461 = ((-_26_m4[_1387]._m1.xyz) - _1407) / _1456;
                    bool3 _1462 = bool3(_1456.x > 0.0f.xxx.x, _1456.y > 0.0f.xxx.y, _1456.z > 0.0f.xxx.z);
                    float3 _1463 = float3(_1462.x ? _1458.x : _1461.x, _1462.y ? _1458.y : _1461.y, _1462.z ? _1458.z : _1461.z);
                    _1471 = _1407 + (_1456 * min(min(_1463.x, _1463.y), _1463.z));
                }
                else
                {
                    _1471 = _1327;
                }
                float3 _1472 = normalize(_1471);
                float3 _1475 = float3(int3(sign(_1472)));
                float3 _1478 = _1472 / dot(_1472, _1475).xxx;
                float3 _1492;
                if (_1478.z < 0.0f)
                {
                    float3 _1483 = abs(_1478);
                    float2 _1490 = _1475.xy * float2(1.0f - _1483.y, 1.0f - _1483.x);
                    _1492 = float3(_1490.x, _1490.y, _1478.z);
                }
                else
                {
                    _1492 = _1478;
                }
                float _1517 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1387]._m0, float4(_355, 1.0f))));
                float _1530 = clamp((min(_1423.x, min(_1423.y, _1423.z)) * _26_m4[_1387]._m6.y) + ((((((_1417 * _1417).x - ((_1420.x + _1420.y) + _1420.z)) * _26_m4[_1387]._m5.x) * _26_m4[_1387]._m5.x) * (1.0f - _26_m4[_1387]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1387]._m6.w;
                _1376 = _1375 + ((((_21.SampleLevel(_15, float3((((_1492.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1387]._m1.w), _1335).xyz * _26_m4[_1387]._m5.w) * ((((((clamp(abs(_1373 / _1517), 0.0f, 1.0f) * 2.0f) + _1373) / (2.0f + _1517)) - 1.0f) * _9_m23.w) + 1.0f)) * _1530) * _1378);
                _1379 = _1378 * (1.0f - _1530);
            }
            else
            {
                _1376 = _1375;
                _1379 = _1378;
            }
            _1375 = _1376;
            _1378 = _1379;
            _1380 = _1381;
            continue;
        }
        else
        {
            break;
        }
    }
    float3 _1599;
    if (_1383)
    {
        float3 _1538 = normalize(_1327);
        float3 _1541 = float3(int3(sign(_1538)));
        float3 _1544 = _1538 / dot(_1538, _1541).xxx;
        float3 _1558;
        if (_1544.z < 0.0f)
        {
            float3 _1549 = abs(_1544);
            float2 _1556 = _1541.xy * float2(1.0f - _1549.y, 1.0f - _1549.x);
            _1558 = float3(_1556.x, _1556.y, _1544.z);
        }
        else
        {
            _1558 = _1544;
        }
        float _1585 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_355, 1.0f))));
        _1599 = _1375 + ((_21.SampleLevel(_15, float3((((_1558.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1335).xyz * ((((((clamp(abs(_1373 / _1585), 0.0f, 1.0f) * 2.0f) + _1373) / (2.0f + _1585)) - 1.0f) * _9_m23.w) + 1.0f)) * _1378);
    }
    else
    {
        _1599 = _1375;
    }
    float3 _1605 = (_1599 * _9_m23.z) * _9_m22.y;
    if (RENODX_CUBEMAP_AMBIENT != 0.0f)
    {
        _1605 *= 0.25f + (0.75f * saturate(_1373));
    }
    float3 _1628;
    [branch]
    if (_9_m23.y != 0.0f)
    {
        float4 _1622 = _19.SampleBias(_13, _4, _9_m16);
        float _1623 = _1622.x;
        _1628 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1623) + (_1605 * (1.0f - _1623));
    }
    else
    {
        _1628 = _1605;
    }
    float3 _1631 = (((float3(_1303, _1310, _1317) * _450) * _9_m22.x) * _697) + ((_1628 * (_479 + ((_454 * ((1.0f - _480) / _480)) * _479))) * _696);
    float4 _1633 = float4(_657.x, _657.y, _657.z, _657.w) + float4(_1631.x, _1631.y, _1631.z, 0.0f.xxxx.w);
    float3 _1636 = clamp(_1633.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
    float _1651 = _386.y * _9_m46.w;
    float _1656 = max(0.00999999977648258209228515625f, _1651 + _9_m47.w);
    float3 _1670 = exp(_9_m45.xyz * ((-max(0.0f, (_413 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1656)) / _1656) * exp(_1651 + _9_m48.w))));
    float _1673 = dot(_414, _9_m44.xyz);
    float _1679 = _9_m45.w * _9_m45.w;
    float _1683 = (1.0f + _1679) - ((2.0f * _9_m45.w) * _1673);
    float3 _2011;
    float _2012;
    if (_9_m55.z > 0.0f)
    {
        uint3 _1837 = (uint3(int3(_311, _312, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1838 = _1837.y;
        uint _1839 = _1837.z;
        uint _1842 = _1837.x + (_1838 * _1839);
        uint _1844 = _1838 + (_1839 * _1842);
        uint _1846 = _1839 + (_1842 * _1844);
        uint _1848 = _1842 + (_1844 * _1846);
        float _1872 = dot(_414, -_7_m0[2].xyz);
        float3 _1882 = _386 - _7_m11.xyz;
        float _1884 = (_9_m55.w * ((_1872 > 5.9604644775390625e-08f) ? (1.0f / _1872) : 0.0f)) * (1.0f / _413);
        float _1885 = _1882.y;
        float _1886 = _1884 * _1885;
        float _1888 = _7_m11.y + _1886;
        float _1889 = _1885 - _1886;
        float _1891 = (1.0f - _1884) * _413;
        float _1905 = max(-127.0f, _9_m49.z * _1889);
        float _1929 = max(-127.0f, _9_m52.x * _1889);
        float _1940 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1888 - _9_m49.x)))) * ((abs(_1905) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1905)) / _1905) : (0.693147182464599609375f - (0.2402265071868896484375f * _1905)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1888 - _9_m52.z)))) * ((abs(_1929) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1929)) / _1929) : (0.693147182464599609375f - (0.2402265071868896484375f * _1929))));
        float _1962 = clamp((_413 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1965 = clamp((max(clamp(exp2(-(_1940 * _1891)), 0.0f, 1.0f), _9_m51.w) + clamp((_413 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1962, 0.0f, 1.0f);
        float4 _2005 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _38.SampleLevel(_13, float3((_361 + ((((float3(uint3(_1848, _1844 + (_1846 * _1848), _302) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_393 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_393 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _2007 = _2005.w;
        _2011 = _2005.xyz + (((_9_m51.xyz * (1.0f - _1965)) + (((_9_m54.xyz * pow(clamp(dot(_412, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1940 * max(_1891 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1962))) * _2007);
        _2012 = _2007 * _1965;
    }
    else
    {
        float3 _1713 = _386 - _7_m11.xyz;
        float _1715 = _1713.y;
        float _1729 = max(-127.0f, _9_m49.z * _1715);
        float _1753 = max(-127.0f, _9_m52.x * _1715);
        float _1764 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1729) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1729)) / _1729) : (0.693147182464599609375f - (0.2402265071868896484375f * _1729)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1753) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1753)) / _1753) : (0.693147182464599609375f - (0.2402265071868896484375f * _1753))));
        float _1786 = clamp((_413 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _1789 = clamp((max(clamp(exp2(-(_1764 * _413)), 0.0f, 1.0f), _9_m51.w) + clamp((_413 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1786, 0.0f, 1.0f);
        _2011 = (_9_m51.xyz * (1.0f - _1789)) + (((_9_m54.xyz * pow(clamp(dot(_412, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1764 * max(_413 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1786));
        _2012 = _1789;
    }
    float3 _2015 = _1670 * _2012;
    float3 _2017 = (_1636 * _2015) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1673 * _1673)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1679) / max((12.56637096405029296875f * _1683) * sqrt(_1683), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1670)) * _2012) + _2011);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _2017 = (_2017 * 0.65f) + (_1636 * 0.35f);

    }
    float _2018 = dot(_2015, 0.3333333432674407958984375f.xxx);
    float4 _2019 = float4(_2017.x, _2017.y, _2017.z, _1633.w);
    _2019.w = _2018;
    float _2048 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _386) * _9_m61.z), 0.0f, 1.0f);
    float3 _2056 = lerp(_1636, _2019.xyz, min((1.0f - _2048) + ((_53.SampleLevel(_14, (_386 * _9_m61.y) + (_9_m60.xyz * _9_m75.w), 0.0f).w * 2.0f) * _2048), 1.0f + _2018).xxx);
    _5 = float4(_2056.x, _2056.y, _2056.z, _2019.w);
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
