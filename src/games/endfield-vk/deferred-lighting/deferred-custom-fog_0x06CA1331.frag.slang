// DX11 0x4FA33192 -> Vulkan 0x06CA1331
struct _27
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

[[vk::binding(30, 3)]]
cbuffer _10_11 : register(b30)
{
    float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(35, 3)]] ByteAddressBuffer _25 : register(t35);
[[vk::binding(34, 3)]]
cbuffer _26_28 : register(b34)
{
    float4 _28_m0 : packoffset(c0);
    float4 _28_m1 : packoffset(c1);
    float4 _28_m2 : packoffset(c2);
    float4 _28_m3 : packoffset(c3);
    _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(31, 3)]]
cbuffer _29_30 : register(b31)
{
    float4 _30_m0 : packoffset(c0);
    float4 _30_m1 : packoffset(c1);
    float4 _30_m2 : packoffset(c2);
    float4 _30_m3 : packoffset(c3);
    float4 _30_m4 : packoffset(c4);
    uint4 _30_m5 : packoffset(c5);
    float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(29, 3)]]
cbuffer _37_38 : register(b29)
{
    float4 _38_m0[15] : packoffset(c0);
    float4 _38_m1[15] : packoffset(c15);
};

[[vk::binding(32, 3)]]
cbuffer _41_42 : register(b32)
{
    float4 _42_m0 : packoffset(c0);
    float4 _42_m1 : packoffset(c1);
    float4 _42_m2 : packoffset(c2);
    float4 _42_m3 : packoffset(c3);
    float4 _42_m4 : packoffset(c4);
    uint4 _42_m5 : packoffset(c5);
    float4 _42_m6 : packoffset(c6);
    float4 _42_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _14 : register(s1);
[[vk::binding(3, 3)]] SamplerState _15 : register(s3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0);
[[vk::binding(25, 3)]] Texture2D<float4> _19 : register(t25);
[[vk::binding(9, 3)]] Texture2D<float4> _20 : register(t9);
[[vk::binding(10, 3)]] Texture2D<float4> _21 : register(t10);
[[vk::binding(20, 3)]] Texture2D<float4> _22 : register(t20);
[[vk::binding(11, 3)]] Texture2DArray<float4> _23 : register(t11);
[[vk::binding(8, 3)]] Texture2D<float4> _31 : register(t8);
[[vk::binding(26, 3)]] Texture2D<float4> _32 : register(t26);
[[vk::binding(12, 3)]] Texture2D<float4> _34 : register(t12);
[[vk::binding(6, 3)]] Texture2DArray<float4> _35 : register(t6);
[[vk::binding(7, 3)]] Texture2DArray<float4> _36 : register(t7);
[[vk::binding(24, 3)]] Texture2D<float4> _39 : register(t24);
[[vk::binding(19, 3)]] Texture3D<float4> _40 : register(t19);
[[vk::binding(27, 3)]] Texture2D<float4> _43 : register(t27);
[[vk::binding(5, 3)]] Texture2D<float4> _44 : register(t5);
[[vk::binding(18, 3)]] Texture3D<float4> _45 : register(t18);
[[vk::binding(15, 3)]] Texture3D<float4> _46 : register(t15);
[[vk::binding(17, 3)]] Texture3D<float4> _47 : register(t17);
[[vk::binding(14, 3)]] Texture3D<float4> _48 : register(t14);
[[vk::binding(16, 3)]] Texture3D<float4> _49 : register(t16);
[[vk::binding(13, 3)]] Texture3D<float4> _50 : register(t13);
[[vk::binding(4, 3)]] Texture2D<float4> _51 : register(t4);
[[vk::binding(23, 3)]] Texture2D<float4> _52 : register(t23);
[[vk::binding(22, 3)]] Texture2D<float4> _53 : register(t22);
[[vk::binding(21, 3)]] Texture2D<float4> _54 : register(t21);

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
    float4 _303 = _52.Load(int3(_301, 0));
    float4 _305 = _53.Load(int3(_301, 0));
    float4 _307 = _54.Load(int3(_301, 0));
    uint _311 = uint(round(_307.w * 255.0f));
    float3 _417;
    float3 _418;
    float _419;
    float _420;
    float _421;
    float _422;
    float _423;
    float _424;
    float3 _425;
    uint _426;
    float _427;
    bool _428;
    [branch]
    if ((_311 & 128u) != 0u)
    {
        float2 _359 = (_303.xy * 2.0f) - 1.0f.xx;
        float _363 = 1.0f - dot(1.0f.xx, abs(_359));
        float3 _365 = float3(_359.x, _363, _359.y);
        float3 _377;
        if (_363 < 0.0f)
        {
            float2 _372 = _365.xz;
            bool2 _373 = bool2(_372.x >= 0.0f.xx.x, _372.y >= 0.0f.xx.y);
            float2 _375 = (1.0f.xx - abs(_365.zx)) * float2(_373.x ? 1.0f.xx.x : (-1.0f).xx.x, _373.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _377 = float3(_375.x, _365.y, _375.y);
        }
        else
        {
            _377 = _365;
        }
        float2 _382 = (_305.xy * 2.0f) - 1.0f.xx;
        float _386 = 1.0f - dot(1.0f.xx, abs(_382));
        float3 _388 = float3(_382.x, _386, _382.y);
        float3 _400;
        if (_386 < 0.0f)
        {
            float2 _395 = _388.xz;
            bool2 _396 = bool2(_395.x >= 0.0f.xx.x, _395.y >= 0.0f.xx.y);
            float2 _398 = (1.0f.xx - abs(_388.zx)) * float2(_396.x ? 1.0f.xx.x : (-1.0f).xx.x, _396.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _400 = float3(_398.x, _388.y, _398.y);
        }
        else
        {
            _400 = _388;
        }
        _417 = _307.xyz;
        _418 = normalize(_400);
        _419 = _305.z;
        _420 = _303.z;
        _421 = 0.0f;
        _422 = 0.0f;
        _423 = 0.0f;
        _424 = 0.0f;
        _425 = normalize(_377);
        _426 = uint(int((round(_303.w * 3.0f) * 4.0f) + round(_305.w * 3.0f)));
        _427 = float(_311 & 127u) * 0.0078740157186985015869140625f;
        _428 = true;
    }
    else
    {
        float2 _321 = (_305.xy * 2.0f) - 1.0f.xx;
        float _325 = 1.0f - dot(1.0f.xx, abs(_321));
        float3 _327 = float3(_321.x, _325, _321.y);
        float3 _339;
        if (_325 < 0.0f)
        {
            float2 _334 = _327.xz;
            bool2 _335 = bool2(_334.x >= 0.0f.xx.x, _334.y >= 0.0f.xx.y);
            float2 _337 = (1.0f.xx - abs(_327.zx)) * float2(_335.x ? 1.0f.xx.x : (-1.0f).xx.x, _335.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _339 = float3(_337.x, _327.y, _337.y);
        }
        else
        {
            _339 = _327;
        }
        uint _347 = clamp(_311 - 1u, 0u, 62u);
        bool4 _348 = ((_311 > 0u) && (_311 <= 63u)).xxxx;
        float4 _351 = float4(_348.x ? _11_m0[_347].x : 0.0f.xxxx.x, _348.y ? _11_m0[_347].y : 0.0f.xxxx.y, _348.z ? _11_m0[_347].z : 0.0f.xxxx.z, _348.w ? _11_m0[_347].w : 0.0f.xxxx.w);
        _417 = _307.xyz;
        _418 = normalize(_339);
        _419 = _305.z;
        _420 = _303.y;
        _421 = _351.y;
        _422 = _351.z;
        _423 = _351.x * _303.x;
        _424 = _351.w;
        _425 = 0.0f.xxx;
        _426 = _311;
        _427 = 0.0f;
        _428 = false;
    }
    float2 _431 = float2(_295);
    float2 _444 = gl_FragCoord.xy * _9_m0.zw;
    float2 _446 = (_444 * 2.0f) - 1.0f.xx;
    float4 _449 = float4(_446, _19.SampleLevel(_14, (_431 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _449.y = -_446.y;
    float4 _452 = mul(_7_m6, _449);
    float3 _456 = _452.xyz / _452.w.xxx;
    float4 _460 = float4(_456, 1.0f);
    float _463 = abs(mul(_7_m0, _460).z);
    float3 _478;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _478 = _7_m11.xyz - _456;
            break;
        }
        else
        {
            _478 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _479 = dot(_478, _478);
    float _481 = rsqrt(max(_479, 9.9999999392252902907785028219223e-09f));
    float3 _482 = _478 * _481;
    float _483 = _479 * _481;
    float3 _484 = -_482;
    float2 _497;
    if (_9_m129.x > 0.00048828125f)
    {
        _497 = _51.SampleBias(_15, _4, _9_m16).xy;
    }
    else
    {
        _497 = 1.0f.xx;
    }
    float _500 = min(_497.x, _497.y);
    float2 _501 = _497 * 1.0f;
    float _502 = _501.x;
    float _507 = lerp(lerp(min(1.0f, _419), _419, _500), _419, _502);
    float3 _509 = _417 * lerp(lerp(min(1.0f, 1.0f), 1.0f, _500), 1.0f, _502);
    float _510 = dot(_418, _482);
    float _511 = max(0.0f, _510);
    float4 _513 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _507) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _514 = _513.x;
    float2 _524 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_514 * _514, exp2((-9.27999973297119140625f) * _511)) * _514) + _513.y)) + _513.zw;
    float3 _529 = (0.039999999105930328369140625f.xxx * _524.x) + _524.y.xxx;
    float4 _535 = _31.Load(int3(_301, 0));
    float _536 = _535.x;
    float4 _847;
    if (_536 > 0.001000000047497451305389404296875f)
    {
        float3 _547 = reflect(_484, _418);
        float3 _548 = -_30_m0.xyz;
        float _553 = dot(_548, _547);
        float3 _555 = _547 - (_548 * _553);
        bool3 _557 = (_553 < _30_m4.z).xxx;
        float3 _565 = normalize((_548 * _30_m4.z) + ((_555 * rsqrt(max(6.103515625e-05f, dot(_555, _555)))) * _30_m4.y));
        float3 _566 = float3(_557.x ? _565.x : _547.x, _557.y ? _565.y : _547.y, _557.z ? _565.z : _547.z);
        float3 _570 = _566 + _482;
        float3 _574 = _570 * rsqrt(max(6.103515625e-05f, dot(_570, _570)));
        float _576 = clamp(dot(_566, _418), 0.0f, 1.0f);
        float _578 = clamp(dot(_418, _574), 0.0f, 1.0f);
        float _580 = clamp(dot(_482, _574), 0.0f, 1.0f);
        float _582 = clamp(_510, 0.0f, 1.0f);
        float3 _756;
        float3 _757;
        [branch]
        if (_428)
        {
            float _686 = _507 * _507;
            float _687 = _686 * _686;
            float _708 = (((_578 * _687) - _578) * _578) + 1.0f;
            float _711 = 1.0f - _580;
            float _712 = _711 * _711;
            float _714 = (_711 * _712) * _712;
            float _738 = 1.0f - _507;
            float _745 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_738 * (1.04997003078460693359375f + (_738 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _738))))));
            float _746 = 1.0f - _745;
            _756 = 0.0f.xxx;
            _757 = min(((0.039999999105930328369140625f.xxx * (1.0f - _714)) + _714.xxx) * ((_687 / (_708 * _708)) * (0.5f / (((_576 * sqrt(((((-_582) * _687) + _582) * _582) + _687)) + (_582 * sqrt(((((-_576) * _687) + _576) * _576) + _687))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_34.SampleLevel(_15, (float2(_582, _507) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_15, (float2(_576, _507) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _745) / _746)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _746)));
        }
        else
        {
            float _586 = _507 * _507;
            float _587 = _586 * _586;
            float _608 = (((_578 * _587) - _578) * _578) + 1.0f;
            float _611 = 1.0f - _580;
            float _612 = _611 * _611;
            float _614 = (_611 * _612) * _612;
            float _638 = 1.0f - _507;
            float _645 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_638 * (1.04997003078460693359375f + (_638 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _638))))));
            float _646 = 1.0f - _645;
            float _669 = clamp(1.0f - _423, 0.0f, 1.0f);
            float _677 = clamp((dot(_418, _566) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            _756 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_421, _422, _423).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _422.xxx) * _423) * lerp((_420 * lerp(1.0f, (_677 * sqrt(_677)) * 1.66666662693023681640625f, _669)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_482, _566), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _669));
            _757 = min(((0.039999999105930328369140625f.xxx * (1.0f - _614)) + _614.xxx) * ((_587 / (_608 * _608)) * (0.5f / (((_576 * sqrt(((((-_582) * _587) + _582) * _582) + _587)) + (_582 * sqrt(((((-_576) * _587) + _576) * _576) + _587))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_34.SampleLevel(_15, (float2(_582, _507) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_15, (float2(_576, _507) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _645) / _646)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _646)));
        }
        float3 _758 = _509 * 1.0f;
        float3 _761 = clamp(_757 * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _576;
        float3 _832;
        [branch]
        if (_428)
        {
            float3 _827;
            do
            {
                [branch]
                if (((_426 > 0u) && (_426 <= 15u)) && (_427 > 0.0f))
                {
                    int _780 = int(clamp(_426 - 1u, 0u, 14u));
                    float _799 = _427 * _38_m0[_780].w;
                    float _804 = float(_780);
                    _827 = float3(_35.SampleLevel(_15, float3((dot(normalize(lerp(_418, _425, _38_m0[_780].x.xxx)), _566) * 0.5f) + 0.5f, _799, _804), 0.0f).x, _35.SampleLevel(_15, float3((dot(normalize(lerp(_418, _425, _38_m0[_780].y.xxx)), _566) * 0.5f) + 0.5f, _799, _804), 0.0f).y, _35.SampleLevel(_15, float3((dot(normalize(lerp(_418, _425, _38_m0[_780].z.xxx)), _566) * 0.5f) + 0.5f, _799, _804), 0.0f).z);
                    break;
                }
                _827 = _576.xxx;
                break;
            } while(false);
            _832 = _30_m1.xyz * (((_758 * _827) + _761) + _756);
        }
        else
        {
            _832 = ((_761 + _756) + (_758 * _576)) * _30_m1.xyz;
        }
        float3 _845 = lerp(_832, _832 * _32.SampleBias(_15, float2(_536, 0.5f), _9_m16).xyz, (1.0f - _536).xxx) * _39.SampleLevel(_15, _444, 0.0f).x;
        _847 = float4(_845.x, _845.y, _845.z, 0.0f.xxxx.w);
    }
    else
    {
        _847 = 0.0f.xxxx;
    }
    float3 _849 = _420.xxx;
    float3 _886;
    float3 _887;
    [branch]
    if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
    {
        float _862 = min(_22.SampleBias(_14, _4, _9_m16).x, _420);
        _886 = clamp((pow(abs(_511 + _862), exp2(((-16.0f) * _507) - 1.0f)) - 1.0f) + _862, 0.0f, 1.0f).xxx;
        _887 = max(_862.xxx, ((((((_509 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _862) + ((_509 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _862) + ((_509 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _862);
    }
    else
    {
        _886 = _849;
        _887 = _849;
    }
    _847.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _886 : 1.0f.xxx;
    float3 _2744;
    [branch]
    if (_428)
    {
        float3 _1832;
        do
        {
            [branch]
            if (((_426 > 0u) && (_426 <= 15u)) && (_427 > 0.0f))
            {
                uint _1820 = clamp(_426 - 1u, 0u, 14u);
                _1832 = _36.SampleLevel(_15, float3(_427 * _38_m0[_1820].w, 0.5f, float(_1820)), 0.0f).xyz;
                break;
            }
            _1832 = 1.0f.xxx;
            break;
        } while(false);
        float3 _1849 = (_456 + (_418 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_431 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _1859 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _1868 = _1849 - (_9_m105.xyz + (_1859 * (-_9_m107.w)));
        float _1882 = max(clamp((max(abs(_1868.x), abs(_1868.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_1868.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _2184;
        float4 _2185;
        float4 _2186;
        float _2187;
        float _2188;
        if ((_9_m105.w != 0.0f) && (_1882 < 1.0f))
        {
            float3 _1895 = _1849 - (_9_m105.xyz + (_1859 * (-_9_m107.y)));
            float _1909 = max(clamp((max(abs(_1895.x), abs(_1895.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1895.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _1985;
            float4 _1986;
            float4 _1987;
            float4 _1988;
            if (_1909 < 1.0f)
            {
                float3 _1918 = ((_1849 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _1920 = _1918 - floor(_1918);
                float4 _1924 = _45.SampleLevel(_16, _1920, 0.0f);
                float _1925 = 1.0f - _1909;
                float _1929 = _9_m106.y * 0.5f;
                float _1934 = _1920.x;
                float _1935 = clamp(_1920.y, _1929, 1.0f - _1929) * 0.3333333432674407958984375f;
                float _1936 = _1920.z;
                float4 _1939 = _46.SampleLevel(_15, float3(_1934, _1935, _1936), 0.0f);
                float _1955 = _1924.x;
                float _1965 = _1924.y;
                float _1975 = _1924.z;
                _1985 = _1882 + (_1939.w * _1925);
                _1986 = float4(((_46.SampleLevel(_15, float3(_1934, _1935 + 0.666666686534881591796875f, _1936), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1975, _1975) * _1925;
                _1987 = float4(((_46.SampleLevel(_15, float3(_1934, _1935 + 0.3333333432674407958984375f, _1936), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1965, _1965) * _1925;
                _1988 = float4(((_1939.xyz * 4.0f) - 2.0f.xxx) * _1955, _1955) * _1925;
            }
            else
            {
                _1985 = _1882;
                _1986 = 0.0f.xxxx;
                _1987 = 0.0f.xxxx;
                _1988 = 0.0f.xxxx;
            }
            float3 _1994 = _1849 - (_9_m105.xyz + (_1859 * (-_9_m107.z)));
            float _2008 = max(clamp((max(abs(_1994.x), abs(_1994.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1994.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _2088;
            float4 _2089;
            float4 _2090;
            float4 _2091;
            if (_2008 < 1.0f)
            {
                float3 _2017 = ((_1849 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2019 = _2017 - floor(_2017);
                float4 _2023 = _47.SampleLevel(_16, _2019, 0.0f);
                float _2025 = _1909 * (1.0f - _2008);
                float _2029 = _9_m106.y * 0.5f;
                float _2034 = _2019.x;
                float _2035 = clamp(_2019.y, _2029, 1.0f - _2029) * 0.3333333432674407958984375f;
                float _2036 = _2019.z;
                float4 _2039 = _48.SampleLevel(_15, float3(_2034, _2035, _2036), 0.0f);
                float _2055 = _2023.x;
                float _2066 = _2023.y;
                float _2077 = _2023.z;
                _2088 = _1985 + (_2039.w * _2025);
                _2089 = _1986 + (float4(((_48.SampleLevel(_15, float3(_2034, _2035 + 0.666666686534881591796875f, _2036), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2077, _2077) * _2025);
                _2090 = _1987 + (float4(((_48.SampleLevel(_15, float3(_2034, _2035 + 0.3333333432674407958984375f, _2036), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2066, _2066) * _2025);
                _2091 = _1988 + (float4(((_2039.xyz * 4.0f) - 2.0f.xxx) * _2055, _2055) * _2025);
            }
            else
            {
                _2088 = _1985;
                _2089 = _1986;
                _2090 = _1987;
                _2091 = _1988;
            }
            float4 _2174;
            float4 _2175;
            float4 _2176;
            float _2177;
            if (_2008 > 0.0f)
            {
                float3 _2100 = ((_1849 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2103 = _9_m106.xyz * 0.5f;
                float3 _2105 = clamp(_2100 - floor(_2100), _2103, 1.0f.xxx - _2103);
                float4 _2109 = _49.SampleLevel(_16, _2105, 0.0f);
                float _2111 = _2008 * (1.0f - _1882);
                float _2115 = _9_m106.y * 0.5f;
                float _2120 = _2105.x;
                float _2121 = clamp(_2105.y, _2115, 1.0f - _2115) * 0.3333333432674407958984375f;
                float _2122 = _2105.z;
                float4 _2125 = _50.SampleLevel(_15, float3(_2120, _2121, _2122), 0.0f);
                float _2141 = _2109.x;
                float _2152 = _2109.y;
                float _2163 = _2109.z;
                _2174 = _2089 + (float4(((_50.SampleLevel(_15, float3(_2120, _2121 + 0.666666686534881591796875f, _2122), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2163, _2163) * _2111);
                _2175 = _2090 + (float4(((_50.SampleLevel(_15, float3(_2120, _2121 + 0.3333333432674407958984375f, _2122), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2152, _2152) * _2111);
                _2176 = _2091 + (float4(((_2125.xyz * 4.0f) - 2.0f.xxx) * _2141, _2141) * _2111);
                _2177 = _2088 + (_2125.w * _2111);
            }
            else
            {
                _2174 = _2089;
                _2175 = _2090;
                _2176 = _2091;
                _2177 = _2088;
            }
            float _2180 = clamp((_2177 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _2184 = _2174;
            _2185 = _2175;
            _2186 = _2176;
            _2187 = _2180 - _1882;
            _2188 = (_2180 + _1882) * 0.5f;
        }
        else
        {
            _2184 = 0.0f.xxxx;
            _2185 = 0.0f.xxxx;
            _2186 = 0.0f.xxxx;
            _2187 = 0.0f;
            _2188 = 1.0f;
        }
        float4 _2208 = _2186 + float4(_9_m108.x * _2188, (_9_m108.y * _2188) + ((_9_m108.w * _2187) * 0.5f), _9_m108.z * _2188, (_9_m108.w * _2188) + ((_9_m108.y * _2187) * 0.375f));
        float4 _2228 = _2185 + float4(_9_m109.x * _2188, (_9_m109.y * _2188) + ((_9_m109.w * _2187) * 0.5f), _9_m109.z * _2188, (_9_m109.w * _2188) + ((_9_m109.y * _2187) * 0.375f));
        float4 _2248 = _2184 + float4(_9_m110.x * _2188, (_9_m110.y * _2188) + ((_9_m110.w * _2187) * 0.5f), _9_m110.z * _2188, (_9_m110.w * _2188) + ((_9_m110.y * _2187) * 0.375f));
        float4 _2406;
        float4 _2407;
        float4 _2408;
        [branch]
        if (all(bool2(_444.x >= 0.0f.xx.x, _444.y >= 0.0f.xx.y)))
        {
            float4 _2256 = _44.SampleLevel(_15, _444, 0.0f);
            float4 _2257 = abs(_2256);
            float4 _2403;
            float4 _2404;
            float4 _2405;
            [branch]
            if (any(bool4(_2257.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2257.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2257.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2257.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _2263 = length(_2256.yzw);
                uint _2265;
                float _2268;
                _2265 = 0u;
                _2268 = 1.0f;
                for (float _2270 = _2263; _2270 > 4.599999904632568359375f; )
                {
                    _2265++;
                    _2268 *= 0.5f;
                    _2270 *= 0.5f;
                    continue;
                }
                float4 _2274 = _2256 * _2268;
                float4 _2279 = float4(0.0f, _2274.yzw);
                float2 _2301 = (_43.SampleLevel(_15, float2(((((length(_2279) * _42_m3.x) + _42_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _42_m2.xy) + _42_m2.zw;
                float4 _2315;
                _2315 = float4(_2301.x * 3.5449078083038330078125f, _2279.yzw * _2301.y) * exp(_2274.x * 0.282094776630401611328125f);
                for (uint _2318 = 0u; _2318 < _2265; )
                {
                    _2315 = mul(float4x4(_2315, float4(_2315.yx, 0.0f, 0.0f), float4(_2315.z, 0.0f, _2315.x, 0.0f), float4(_2315.w, 0.0f, 0.0f, _2315.x)) * 0.282094776630401611328125f, _2315);
                    _2318++;
                    continue;
                }
                float4x4 _2339 = float4x4(_2315, float4(_2315.yx, 0.0f, 0.0f), float4(_2315.z, 0.0f, _2315.x, 0.0f), float4(_2315.w, 0.0f, 0.0f, _2315.x)) * 0.282094776630401611328125f;
                float4 _2349 = mul(_2339, float4(_2208.w * 1.1283791065216064453125f, _2208.y * (-0.977204978466033935546875f), _2208.z * 0.977204978466033935546875f, _2208.x * (-0.977204978466033935546875f)));
                float4 _2369 = mul(_2339, float4(_2228.w * 1.1283791065216064453125f, _2228.y * (-0.977204978466033935546875f), _2228.z * 0.977204978466033935546875f, _2228.x * (-0.977204978466033935546875f)));
                float4 _2389 = mul(_2339, float4(_2248.w * 1.1283791065216064453125f, _2248.y * (-0.977204978466033935546875f), _2248.z * 0.977204978466033935546875f, _2248.x * (-0.977204978466033935546875f)));
                _2403 = float4(_2349.x * 0.886226952075958251953125f, _2349.w * (-1.02332675457000732421875f), _2349.y * (-1.02332675457000732421875f), _2349.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _2404 = float4(_2369.x * 0.886226952075958251953125f, _2369.w * (-1.02332675457000732421875f), _2369.y * (-1.02332675457000732421875f), _2369.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _2405 = float4(_2389.x * 0.886226952075958251953125f, _2389.w * (-1.02332675457000732421875f), _2389.y * (-1.02332675457000732421875f), _2389.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _2403 = _2208;
                _2404 = _2228;
                _2405 = _2248;
            }
            _2406 = _2403;
            _2407 = _2404;
            _2408 = _2405;
        }
        else
        {
            _2406 = _2208;
            _2407 = _2228;
            _2408 = _2248;
        }
        float _2415 = max(0.0f, dot(_2406.xyz * _1832.x, _418) + _2406.w);
        float _2422 = max(0.0f, dot(_2407.xyz * _1832.y, _418) + _2407.w);
        float _2429 = max(0.0f, dot(_2408.xyz * _1832.z, _418) + _2408.w);
        float3 _2439 = reflect(_484, _418);
        float _2447 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_507, 0.001000000047497451305389404296875f))));
        float2 _2451 = floor(_431 * _28_m0.w);
        float _2468 = floor(_463 - _28_m2.y);
        float _2472 = clamp(_2468, 0.0f, _28_m1.x - 1.0f);
        uint _2482 = (_2468 <= _2472) ? (_25.Load(uint(_9_m21.z + int(_2451.x + (_2451.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_2472)) * 4 + 0)) : 0u;
        float _2485 = dot(float4(_2415, _2422, _2429, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _2487;
        float _2490;
        uint _2492;
        _2487 = 0.0f.xxx;
        _2490 = 1.0f;
        _2492 = _2482;
        uint _2493;
        float3 _2488;
        float _2491;
        bool _2495;
        [loop]
        for (;;)
        {
            _2495 = _2490 > 0.00999999977648258209228515625f;
            if ((_2492 != 0u) && _2495)
            {
                uint _2499 = firstbitlow(_2492);
                _2493 = _2492 ^ (1u << (_2499 & 31u));
                float3 _2519 = float3(dot(_28_m4[_2499]._m2, _460), dot(_28_m4[_2499]._m3, _460), dot(_28_m4[_2499]._m4, _460));
                float3 _2520 = abs(_2519);
                if (all(bool3(_2520.x <= _28_m4[_2499]._m1.xyz.x, _2520.y <= _28_m4[_2499]._m1.xyz.y, _2520.z <= _28_m4[_2499]._m1.xyz.z)))
                {
                    float3 _2529 = _28_m4[_2499]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _2531 = _2520 * 0.100000001490116119384765625f;
                    float3 _2532 = _2531 * _2531;
                    float3 _2535 = (_28_m4[_2499]._m1.xyz - _2520) * _28_m4[_2499]._m5.xyz;
                    float3 _2583;
                    [branch]
                    if (_28_m4[_2499]._m6.x == 1.0f)
                    {
                        float3 _2568 = float3(dot(_28_m4[_2499]._m2.xyz, _2439), dot(_28_m4[_2499]._m3.xyz, _2439), dot(_28_m4[_2499]._m4.xyz, _2439));
                        float3 _2570 = (_28_m4[_2499]._m1.xyz - _2519) / _2568;
                        float3 _2573 = ((-_28_m4[_2499]._m1.xyz) - _2519) / _2568;
                        bool3 _2574 = bool3(_2568.x > 0.0f.xxx.x, _2568.y > 0.0f.xxx.y, _2568.z > 0.0f.xxx.z);
                        float3 _2575 = float3(_2574.x ? _2570.x : _2573.x, _2574.y ? _2570.y : _2573.y, _2574.z ? _2570.z : _2573.z);
                        _2583 = _2519 + (_2568 * min(min(_2575.x, _2575.y), _2575.z));
                    }
                    else
                    {
                        _2583 = _2439;
                    }
                    float3 _2584 = normalize(_2583);
                    float3 _2587 = float3(int3(sign(_2584)));
                    float3 _2590 = _2584 / dot(_2584, _2587).xxx;
                    float3 _2604;
                    if (_2590.z < 0.0f)
                    {
                        float3 _2595 = abs(_2590);
                        float2 _2602 = _2587.xy * float2(1.0f - _2595.y, 1.0f - _2595.x);
                        _2604 = float3(_2602.x, _2602.y, _2590.z);
                    }
                    else
                    {
                        _2604 = _2590;
                    }
                    float _2629 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_2499]._m0, float4(_418, 1.0f))));
                    float _2642 = clamp((min(_2535.x, min(_2535.y, _2535.z)) * _28_m4[_2499]._m6.y) + ((((((_2529 * _2529).x - ((_2532.x + _2532.y) + _2532.z)) * _28_m4[_2499]._m5.x) * _28_m4[_2499]._m5.x) * (1.0f - _28_m4[_2499]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_2499]._m6.w;
                    _2488 = _2487 + ((((_23.SampleLevel(_17, float3((((_2604.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_2499]._m1.w), _2447).xyz * _28_m4[_2499]._m5.w) * ((((((clamp(abs(_2485 / _2629), 0.0f, 1.0f) * 2.0f) + _2485) / (2.0f + _2629)) - 1.0f) * _9_m23.w) + 1.0f)) * _2642) * _2490);
                    _2491 = _2490 * (1.0f - _2642);
                }
                else
                {
                    _2488 = _2487;
                    _2491 = _2490;
                }
                _2487 = _2488;
                _2490 = _2491;
                _2492 = _2493;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _2711;
        if (_2495)
        {
            float3 _2650 = normalize(_2439);
            float3 _2653 = float3(int3(sign(_2650)));
            float3 _2656 = _2650 / dot(_2650, _2653).xxx;
            float3 _2670;
            if (_2656.z < 0.0f)
            {
                float3 _2661 = abs(_2656);
                float2 _2668 = _2653.xy * float2(1.0f - _2661.y, 1.0f - _2661.x);
                _2670 = float3(_2668.x, _2668.y, _2656.z);
            }
            else
            {
                _2670 = _2656;
            }
            float _2697 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_418, 1.0f))));
            _2711 = _2487 + ((_23.SampleLevel(_17, float3((((_2670.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _2447).xyz * ((((((clamp(abs(_2485 / _2697), 0.0f, 1.0f) * 2.0f) + _2485) / (2.0f + _2697)) - 1.0f) * _9_m23.w) + 1.0f)) * _2490);
        }
        else
        {
            _2711 = _2487;
        }
        float3 _2717 = (_2711 * _9_m23.z) * _9_m22.y;
        float3 _2740;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _2734 = _21.SampleBias(_15, _4, _9_m16);
            float _2735 = _2734.x;
            _2740 = (_20.SampleBias(_15, _4, _9_m16).xyz * _2735) + (_2717 * (1.0f - _2735));
        }
        else
        {
            _2740 = _2717;
        }
        _2744 = (((float3(_2415, _2422, _2429) * _509) * _9_m22.x) * _887) + ((_2740 * _529) * _886);
    }
    else
    {
        float3 _907 = (_456 + (_418 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_431 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _917 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _926 = _907 - (_9_m105.xyz + (_917 * (-_9_m107.w)));
        float _940 = max(clamp((max(abs(_926.x), abs(_926.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_926.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _1242;
        float4 _1243;
        float4 _1244;
        float _1245;
        float _1246;
        if ((_9_m105.w != 0.0f) && (_940 < 1.0f))
        {
            float3 _953 = _907 - (_9_m105.xyz + (_917 * (-_9_m107.y)));
            float _967 = max(clamp((max(abs(_953.x), abs(_953.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_953.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _1043;
            float4 _1044;
            float4 _1045;
            float4 _1046;
            if (_967 < 1.0f)
            {
                float3 _976 = ((_907 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _978 = _976 - floor(_976);
                float4 _982 = _45.SampleLevel(_16, _978, 0.0f);
                float _983 = 1.0f - _967;
                float _987 = _9_m106.y * 0.5f;
                float _992 = _978.x;
                float _993 = clamp(_978.y, _987, 1.0f - _987) * 0.3333333432674407958984375f;
                float _994 = _978.z;
                float4 _997 = _46.SampleLevel(_15, float3(_992, _993, _994), 0.0f);
                float _1013 = _982.x;
                float _1023 = _982.y;
                float _1033 = _982.z;
                _1043 = _940 + (_997.w * _983);
                _1044 = float4(((_46.SampleLevel(_15, float3(_992, _993 + 0.666666686534881591796875f, _994), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1033, _1033) * _983;
                _1045 = float4(((_46.SampleLevel(_15, float3(_992, _993 + 0.3333333432674407958984375f, _994), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1023, _1023) * _983;
                _1046 = float4(((_997.xyz * 4.0f) - 2.0f.xxx) * _1013, _1013) * _983;
            }
            else
            {
                _1043 = _940;
                _1044 = 0.0f.xxxx;
                _1045 = 0.0f.xxxx;
                _1046 = 0.0f.xxxx;
            }
            float3 _1052 = _907 - (_9_m105.xyz + (_917 * (-_9_m107.z)));
            float _1066 = max(clamp((max(abs(_1052.x), abs(_1052.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1052.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _1146;
            float4 _1147;
            float4 _1148;
            float4 _1149;
            if (_1066 < 1.0f)
            {
                float3 _1075 = ((_907 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _1077 = _1075 - floor(_1075);
                float4 _1081 = _47.SampleLevel(_16, _1077, 0.0f);
                float _1083 = _967 * (1.0f - _1066);
                float _1087 = _9_m106.y * 0.5f;
                float _1092 = _1077.x;
                float _1093 = clamp(_1077.y, _1087, 1.0f - _1087) * 0.3333333432674407958984375f;
                float _1094 = _1077.z;
                float4 _1097 = _48.SampleLevel(_15, float3(_1092, _1093, _1094), 0.0f);
                float _1113 = _1081.x;
                float _1124 = _1081.y;
                float _1135 = _1081.z;
                _1146 = _1043 + (_1097.w * _1083);
                _1147 = _1044 + (float4(((_48.SampleLevel(_15, float3(_1092, _1093 + 0.666666686534881591796875f, _1094), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1135, _1135) * _1083);
                _1148 = _1045 + (float4(((_48.SampleLevel(_15, float3(_1092, _1093 + 0.3333333432674407958984375f, _1094), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1124, _1124) * _1083);
                _1149 = _1046 + (float4(((_1097.xyz * 4.0f) - 2.0f.xxx) * _1113, _1113) * _1083);
            }
            else
            {
                _1146 = _1043;
                _1147 = _1044;
                _1148 = _1045;
                _1149 = _1046;
            }
            float4 _1232;
            float4 _1233;
            float4 _1234;
            float _1235;
            if (_1066 > 0.0f)
            {
                float3 _1158 = ((_907 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _1161 = _9_m106.xyz * 0.5f;
                float3 _1163 = clamp(_1158 - floor(_1158), _1161, 1.0f.xxx - _1161);
                float4 _1167 = _49.SampleLevel(_16, _1163, 0.0f);
                float _1169 = _1066 * (1.0f - _940);
                float _1173 = _9_m106.y * 0.5f;
                float _1178 = _1163.x;
                float _1179 = clamp(_1163.y, _1173, 1.0f - _1173) * 0.3333333432674407958984375f;
                float _1180 = _1163.z;
                float4 _1183 = _50.SampleLevel(_15, float3(_1178, _1179, _1180), 0.0f);
                float _1199 = _1167.x;
                float _1210 = _1167.y;
                float _1221 = _1167.z;
                _1232 = _1147 + (float4(((_50.SampleLevel(_15, float3(_1178, _1179 + 0.666666686534881591796875f, _1180), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1221, _1221) * _1169);
                _1233 = _1148 + (float4(((_50.SampleLevel(_15, float3(_1178, _1179 + 0.3333333432674407958984375f, _1180), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1210, _1210) * _1169);
                _1234 = _1149 + (float4(((_1183.xyz * 4.0f) - 2.0f.xxx) * _1199, _1199) * _1169);
                _1235 = _1146 + (_1183.w * _1169);
            }
            else
            {
                _1232 = _1147;
                _1233 = _1148;
                _1234 = _1149;
                _1235 = _1146;
            }
            float _1238 = clamp((_1235 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _1242 = _1232;
            _1243 = _1233;
            _1244 = _1234;
            _1245 = _1238 - _940;
            _1246 = (_1238 + _940) * 0.5f;
        }
        else
        {
            _1242 = 0.0f.xxxx;
            _1243 = 0.0f.xxxx;
            _1244 = 0.0f.xxxx;
            _1245 = 0.0f;
            _1246 = 1.0f;
        }
        float4 _1266 = _1244 + float4(_9_m108.x * _1246, (_9_m108.y * _1246) + ((_9_m108.w * _1245) * 0.5f), _9_m108.z * _1246, (_9_m108.w * _1246) + ((_9_m108.y * _1245) * 0.375f));
        float4 _1286 = _1243 + float4(_9_m109.x * _1246, (_9_m109.y * _1246) + ((_9_m109.w * _1245) * 0.5f), _9_m109.z * _1246, (_9_m109.w * _1246) + ((_9_m109.y * _1245) * 0.375f));
        float4 _1306 = _1242 + float4(_9_m110.x * _1246, (_9_m110.y * _1246) + ((_9_m110.w * _1245) * 0.5f), _9_m110.z * _1246, (_9_m110.w * _1246) + ((_9_m110.y * _1245) * 0.375f));
        float4 _1464;
        float4 _1465;
        float4 _1466;
        [branch]
        if (all(bool2(_444.x >= 0.0f.xx.x, _444.y >= 0.0f.xx.y)))
        {
            float4 _1314 = _44.SampleLevel(_15, _444, 0.0f);
            float4 _1315 = abs(_1314);
            float4 _1461;
            float4 _1462;
            float4 _1463;
            [branch]
            if (any(bool4(_1315.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1315.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1315.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1315.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _1321 = length(_1314.yzw);
                uint _1323;
                float _1326;
                _1323 = 0u;
                _1326 = 1.0f;
                for (float _1328 = _1321; _1328 > 4.599999904632568359375f; )
                {
                    _1323++;
                    _1326 *= 0.5f;
                    _1328 *= 0.5f;
                    continue;
                }
                float4 _1332 = _1314 * _1326;
                float4 _1337 = float4(0.0f, _1332.yzw);
                float2 _1359 = (_43.SampleLevel(_15, float2(((((length(_1337) * _42_m3.x) + _42_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _42_m2.xy) + _42_m2.zw;
                float4 _1373;
                _1373 = float4(_1359.x * 3.5449078083038330078125f, _1337.yzw * _1359.y) * exp(_1332.x * 0.282094776630401611328125f);
                for (uint _1376 = 0u; _1376 < _1323; )
                {
                    _1373 = mul(float4x4(_1373, float4(_1373.yx, 0.0f, 0.0f), float4(_1373.z, 0.0f, _1373.x, 0.0f), float4(_1373.w, 0.0f, 0.0f, _1373.x)) * 0.282094776630401611328125f, _1373);
                    _1376++;
                    continue;
                }
                float4x4 _1397 = float4x4(_1373, float4(_1373.yx, 0.0f, 0.0f), float4(_1373.z, 0.0f, _1373.x, 0.0f), float4(_1373.w, 0.0f, 0.0f, _1373.x)) * 0.282094776630401611328125f;
                float4 _1407 = mul(_1397, float4(_1266.w * 1.1283791065216064453125f, _1266.y * (-0.977204978466033935546875f), _1266.z * 0.977204978466033935546875f, _1266.x * (-0.977204978466033935546875f)));
                float4 _1427 = mul(_1397, float4(_1286.w * 1.1283791065216064453125f, _1286.y * (-0.977204978466033935546875f), _1286.z * 0.977204978466033935546875f, _1286.x * (-0.977204978466033935546875f)));
                float4 _1447 = mul(_1397, float4(_1306.w * 1.1283791065216064453125f, _1306.y * (-0.977204978466033935546875f), _1306.z * 0.977204978466033935546875f, _1306.x * (-0.977204978466033935546875f)));
                _1461 = float4(_1407.x * 0.886226952075958251953125f, _1407.w * (-1.02332675457000732421875f), _1407.y * (-1.02332675457000732421875f), _1407.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _1462 = float4(_1427.x * 0.886226952075958251953125f, _1427.w * (-1.02332675457000732421875f), _1427.y * (-1.02332675457000732421875f), _1427.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _1463 = float4(_1447.x * 0.886226952075958251953125f, _1447.w * (-1.02332675457000732421875f), _1447.y * (-1.02332675457000732421875f), _1447.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _1461 = _1266;
                _1462 = _1286;
                _1463 = _1306;
            }
            _1464 = _1461;
            _1465 = _1462;
            _1466 = _1463;
        }
        else
        {
            _1464 = _1266;
            _1465 = _1286;
            _1466 = _1306;
        }
        float _1471 = max(0.0f, dot(_1464.xyz, _418) + _1464.w);
        float _1476 = max(0.0f, dot(_1465.xyz, _418) + _1465.w);
        float _1481 = max(0.0f, dot(_1466.xyz, _418) + _1466.w);
        float3 _1505 = reflect(_484, _418);
        float _1513 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_507, 0.001000000047497451305389404296875f))));
        float2 _1517 = floor(_431 * _28_m0.w);
        float _1534 = floor(_463 - _28_m2.y);
        float _1538 = clamp(_1534, 0.0f, _28_m1.x - 1.0f);
        uint _1548 = (_1534 <= _1538) ? (_25.Load(uint(_9_m21.z + int(_1517.x + (_1517.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_1538)) * 4 + 0)) : 0u;
        float _1551 = dot(float4(_1471, _1476, _1481, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _1553;
        float _1556;
        uint _1558;
        _1553 = 0.0f.xxx;
        _1556 = 1.0f;
        _1558 = _1548;
        uint _1559;
        float3 _1554;
        float _1557;
        bool _1561;
        [loop]
        for (;;)
        {
            _1561 = _1556 > 0.00999999977648258209228515625f;
            if ((_1558 != 0u) && _1561)
            {
                uint _1565 = firstbitlow(_1558);
                _1559 = _1558 ^ (1u << (_1565 & 31u));
                float3 _1585 = float3(dot(_28_m4[_1565]._m2, _460), dot(_28_m4[_1565]._m3, _460), dot(_28_m4[_1565]._m4, _460));
                float3 _1586 = abs(_1585);
                if (all(bool3(_1586.x <= _28_m4[_1565]._m1.xyz.x, _1586.y <= _28_m4[_1565]._m1.xyz.y, _1586.z <= _28_m4[_1565]._m1.xyz.z)))
                {
                    float3 _1595 = _28_m4[_1565]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _1597 = _1586 * 0.100000001490116119384765625f;
                    float3 _1598 = _1597 * _1597;
                    float3 _1601 = (_28_m4[_1565]._m1.xyz - _1586) * _28_m4[_1565]._m5.xyz;
                    float3 _1649;
                    [branch]
                    if (_28_m4[_1565]._m6.x == 1.0f)
                    {
                        float3 _1634 = float3(dot(_28_m4[_1565]._m2.xyz, _1505), dot(_28_m4[_1565]._m3.xyz, _1505), dot(_28_m4[_1565]._m4.xyz, _1505));
                        float3 _1636 = (_28_m4[_1565]._m1.xyz - _1585) / _1634;
                        float3 _1639 = ((-_28_m4[_1565]._m1.xyz) - _1585) / _1634;
                        bool3 _1640 = bool3(_1634.x > 0.0f.xxx.x, _1634.y > 0.0f.xxx.y, _1634.z > 0.0f.xxx.z);
                        float3 _1641 = float3(_1640.x ? _1636.x : _1639.x, _1640.y ? _1636.y : _1639.y, _1640.z ? _1636.z : _1639.z);
                        _1649 = _1585 + (_1634 * min(min(_1641.x, _1641.y), _1641.z));
                    }
                    else
                    {
                        _1649 = _1505;
                    }
                    float3 _1650 = normalize(_1649);
                    float3 _1653 = float3(int3(sign(_1650)));
                    float3 _1656 = _1650 / dot(_1650, _1653).xxx;
                    float3 _1670;
                    if (_1656.z < 0.0f)
                    {
                        float3 _1661 = abs(_1656);
                        float2 _1668 = _1653.xy * float2(1.0f - _1661.y, 1.0f - _1661.x);
                        _1670 = float3(_1668.x, _1668.y, _1656.z);
                    }
                    else
                    {
                        _1670 = _1656;
                    }
                    float _1695 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_1565]._m0, float4(_418, 1.0f))));
                    float _1708 = clamp((min(_1601.x, min(_1601.y, _1601.z)) * _28_m4[_1565]._m6.y) + ((((((_1595 * _1595).x - ((_1598.x + _1598.y) + _1598.z)) * _28_m4[_1565]._m5.x) * _28_m4[_1565]._m5.x) * (1.0f - _28_m4[_1565]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_1565]._m6.w;
                    _1554 = _1553 + ((((_23.SampleLevel(_17, float3((((_1670.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_1565]._m1.w), _1513).xyz * _28_m4[_1565]._m5.w) * ((((((clamp(abs(_1551 / _1695), 0.0f, 1.0f) * 2.0f) + _1551) / (2.0f + _1695)) - 1.0f) * _9_m23.w) + 1.0f)) * _1708) * _1556);
                    _1557 = _1556 * (1.0f - _1708);
                }
                else
                {
                    _1554 = _1553;
                    _1557 = _1556;
                }
                _1553 = _1554;
                _1556 = _1557;
                _1558 = _1559;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _1777;
        if (_1561)
        {
            float3 _1716 = normalize(_1505);
            float3 _1719 = float3(int3(sign(_1716)));
            float3 _1722 = _1716 / dot(_1716, _1719).xxx;
            float3 _1736;
            if (_1722.z < 0.0f)
            {
                float3 _1727 = abs(_1722);
                float2 _1734 = _1719.xy * float2(1.0f - _1727.y, 1.0f - _1727.x);
                _1736 = float3(_1734.x, _1734.y, _1722.z);
            }
            else
            {
                _1736 = _1722;
            }
            float _1763 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_418, 1.0f))));
            _1777 = _1553 + ((_23.SampleLevel(_17, float3((((_1736.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _1513).xyz * ((((((clamp(abs(_1551 / _1763), 0.0f, 1.0f) * 2.0f) + _1551) / (2.0f + _1763)) - 1.0f) * _9_m23.w) + 1.0f)) * _1556);
        }
        else
        {
            _1777 = _1553;
        }
        float3 _1783 = (_1777 * _9_m23.z) * _9_m22.y;
        float3 _1806;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _1800 = _21.SampleBias(_15, _4, _9_m16);
            float _1801 = _1800.x;
            _1806 = (_20.SampleBias(_15, _4, _9_m16).xyz * _1801) + (_1783 * (1.0f - _1801));
        }
        else
        {
            _1806 = _1783;
        }
        _2744 = (((float3(_1471, _1476, _1481) * (_509 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_421, _422, _423).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _422.xxx) * _423) * _424))) * _9_m22.x) * _887) + ((_1806 * _529) * _886);
    }
    float4 _2746 = float4(_847.x, _847.y, _847.z, _847.w) + float4(_2744.x, _2744.y, _2744.z, 0.0f.xxxx.w);
    float _2764 = _456.y * _9_m46.w;
    float _2769 = max(0.00999999977648258209228515625f, _2764 + _9_m47.w);
    float3 _2783 = exp(_9_m45.xyz * ((-max(0.0f, (_483 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2769)) / _2769) * exp(_2764 + _9_m48.w))));
    float _2786 = dot(_484, _9_m44.xyz);
    float _2792 = _9_m45.w * _9_m45.w;
    float _2796 = (1.0f + _2792) - ((2.0f * _9_m45.w) * _2786);
    float3 _3124;
    float _3125;
    if (_9_m55.z > 0.0f)
    {
        uint3 _2950 = (uint3(int3(_298, _299, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2951 = _2950.y;
        uint _2952 = _2950.z;
        uint _2955 = _2950.x + (_2951 * _2952);
        uint _2957 = _2951 + (_2952 * _2955);
        uint _2959 = _2952 + (_2955 * _2957);
        uint _2961 = _2955 + (_2957 * _2959);
        float _2985 = dot(_484, -_7_m0[2].xyz);
        float3 _2995 = _456 - _7_m11.xyz;
        float _2997 = (_9_m55.w * ((_2985 > 5.9604644775390625e-08f) ? (1.0f / _2985) : 0.0f)) * (1.0f / _483);
        float _2998 = _2995.y;
        float _2999 = _2997 * _2998;
        float _3001 = _7_m11.y + _2999;
        float _3002 = _2998 - _2999;
        float _3004 = (1.0f - _2997) * _483;
        float _3018 = max(-127.0f, _9_m49.z * _3002);
        float _3042 = max(-127.0f, _9_m52.x * _3002);
        float _3053 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3001 - _9_m49.x)))) * ((abs(_3018) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3018)) / _3018) : (0.693147182464599609375f - (0.2402265071868896484375f * _3018)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3001 - _9_m52.z)))) * ((abs(_3042) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3042)) / _3042) : (0.693147182464599609375f - (0.2402265071868896484375f * _3042))));
        float _3075 = clamp((_483 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3078 = clamp((max(clamp(exp2(-(_3053 * _3004)), 0.0f, 1.0f), _9_m51.w) + clamp((_483 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3075, 0.0f, 1.0f);
        float4 _3118 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _40.SampleLevel(_15, float3((_431 + ((((float3(uint3(_2961, _2957 + (_2959 * _2961), _289) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_463 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_463 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3120 = _3118.w;
        _3124 = _3118.xyz + (((_9_m51.xyz * (1.0f - _3078)) + (((_9_m54.xyz * pow(clamp(dot(_482, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3053 * max(_3004 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3075))) * _3120);
        _3125 = _3120 * _3078;
    }
    else
    {
        float3 _2826 = _456 - _7_m11.xyz;
        float _2828 = _2826.y;
        float _2842 = max(-127.0f, _9_m49.z * _2828);
        float _2866 = max(-127.0f, _9_m52.x * _2828);
        float _2877 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2842) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2842)) / _2842) : (0.693147182464599609375f - (0.2402265071868896484375f * _2842)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2866) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2866)) / _2866) : (0.693147182464599609375f - (0.2402265071868896484375f * _2866))));
        float _2899 = clamp((_483 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _2902 = clamp((max(clamp(exp2(-(_2877 * _483)), 0.0f, 1.0f), _9_m51.w) + clamp((_483 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2899, 0.0f, 1.0f);
        _3124 = (_9_m51.xyz * (1.0f - _2902)) + (((_9_m54.xyz * pow(clamp(dot(_482, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2877 * max(_483 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2899));
        _3125 = _2902;
    }
    float3 _3128 = _2783 * _3125;
    float3 _3130 = (clamp(_2746.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3128) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2786 * _2786)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2792) / max((12.56637096405029296875f * _2796) * sqrt(_2796), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2783)) * _3125) + _3124);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3130 = (_3130 * 0.65f) + (clamp(_2746.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _3132 = float4(_3130.x, _3130.y, _3130.z, _2746.w);
    _3132.w = dot(_3128, 0.3333333432674407958984375f.xxx);
    _5 = _3132;
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
