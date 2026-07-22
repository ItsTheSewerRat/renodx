// DX11 0xA5B8112F -> Vulkan 0x2C4C1F9C
struct _28
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

static uint _315 = 0u;

[[vk::binding(0, 4)]]
cbuffer RenoDXInject : register(b0, space4)
{
    float4 renodx_values[15] : packoffset(c0);
};

#define RENODX_CUSTOM_FOG renodx_values[12].y
#define RENODX_CUBEMAP_AMBIENT renodx_values[13].y
#define RENODX_IMPROVED_GTAO renodx_values[14].z

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

[[vk::binding(37, 3)]]
cbuffer _8_9 : register(b37)
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

[[vk::binding(34, 3)]]
cbuffer _10_11 : register(b34)
{
    float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(39, 3)]] ByteAddressBuffer _26 : register(t39);
[[vk::binding(38, 3)]]
cbuffer _27_29 : register(b38)
{
    float4 _29_m0 : packoffset(c0);
    float4 _29_m1 : packoffset(c1);
    float4 _29_m2 : packoffset(c2);
    float4 _29_m3 : packoffset(c3);
    _28 _29_m4[32] : packoffset(c4);
};

[[vk::binding(35, 3)]]
cbuffer _30_31 : register(b35)
{
    float4 _31_m0 : packoffset(c0);
    float4 _31_m1 : packoffset(c1);
    float4 _31_m2 : packoffset(c2);
    float4 _31_m3 : packoffset(c3);
    float4 _31_m4 : packoffset(c4);
    uint4 _31_m5 : packoffset(c5);
    float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(31, 3)]]
cbuffer _35_36 : register(b31)
{
    column_major float4x4 _36_m0 : packoffset(c0);
    float4 _36_m1 : packoffset(c4);
};

[[vk::binding(33, 3)]]
cbuffer _42_43 : register(b33)
{
    float4 _43_m0[15] : packoffset(c0);
    float4 _43_m1[15] : packoffset(c15);
};

[[vk::binding(36, 3)]]
cbuffer _46_47 : register(b36)
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

[[vk::binding(1, 3)]] SamplerState _14 : register(s1);
[[vk::binding(4, 3)]] SamplerState _15 : register(s4);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0);
[[vk::binding(3, 3)]] SamplerComparisonState _18 : register(s3);
[[vk::binding(28, 3)]] Texture2D<float4> _20 : register(t28);
[[vk::binding(11, 3)]] Texture2D<float4> _21 : register(t11);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12);
[[vk::binding(23, 3)]] Texture2D<float4> _23 : register(t23);
[[vk::binding(13, 3)]] Texture2DArray<float4> _24 : register(t13);
[[vk::binding(10, 3)]] Texture2D<float4> _32 : register(t10);
[[vk::binding(29, 3)]] Texture2D<float4> _33 : register(t29);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7);
[[vk::binding(14, 3)]] Texture3D<float4> _38 : register(t14);
[[vk::binding(15, 3)]] Texture2D<float4> _39 : register(t15);
[[vk::binding(8, 3)]] Texture2DArray<float4> _40 : register(t8);
[[vk::binding(9, 3)]] Texture2DArray<float4> _41 : register(t9);
[[vk::binding(27, 3)]] Texture2D<float4> _44 : register(t27);
[[vk::binding(22, 3)]] Texture3D<float4> _45 : register(t22);
[[vk::binding(30, 3)]] Texture2D<float4> _48 : register(t30);
[[vk::binding(6, 3)]] Texture2D<float4> _49 : register(t6);
[[vk::binding(21, 3)]] Texture3D<float4> _50 : register(t21);
[[vk::binding(18, 3)]] Texture3D<float4> _51 : register(t18);
[[vk::binding(20, 3)]] Texture3D<float4> _52 : register(t20);
[[vk::binding(17, 3)]] Texture3D<float4> _53 : register(t17);
[[vk::binding(19, 3)]] Texture3D<float4> _54 : register(t19);
[[vk::binding(16, 3)]] Texture3D<float4> _55 : register(t16);
[[vk::binding(5, 3)]] Texture2D<float4> _56 : register(t5);
[[vk::binding(26, 3)]] Texture2D<float4> _57 : register(t26);
[[vk::binding(25, 3)]] Texture2D<float4> _58 : register(t25);
[[vk::binding(24, 3)]] Texture2D<float4> _59 : register(t24);

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
    uint2 _321 = uint2(gl_FragCoord.xy);
    int _324 = int(_321.x);
    int _325 = int(_321.y);
    int2 _327 = int3(_324, _325, 0).xy;
    float4 _329 = _57.Load(int3(_327, 0));
    float4 _331 = _58.Load(int3(_327, 0));
    float4 _333 = _59.Load(int3(_327, 0));
    uint _337 = uint(round(_333.w * 255.0f));
    float3 _443;
    float3 _444;
    float _445;
    float _446;
    float _447;
    float _448;
    float _449;
    float _450;
    float3 _451;
    uint _452;
    float _453;
    bool _454;
    [branch]
    if ((_337 & 128u) != 0u)
    {
        float2 _385 = (_329.xy * 2.0f) - 1.0f.xx;
        float _389 = 1.0f - dot(1.0f.xx, abs(_385));
        float3 _391 = float3(_385.x, _389, _385.y);
        float3 _403;
        if (_389 < 0.0f)
        {
            float2 _398 = _391.xz;
            bool2 _399 = bool2(_398.x >= 0.0f.xx.x, _398.y >= 0.0f.xx.y);
            float2 _401 = (1.0f.xx - abs(_391.zx)) * float2(_399.x ? 1.0f.xx.x : (-1.0f).xx.x, _399.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _403 = float3(_401.x, _391.y, _401.y);
        }
        else
        {
            _403 = _391;
        }
        float2 _408 = (_331.xy * 2.0f) - 1.0f.xx;
        float _412 = 1.0f - dot(1.0f.xx, abs(_408));
        float3 _414 = float3(_408.x, _412, _408.y);
        float3 _426;
        if (_412 < 0.0f)
        {
            float2 _421 = _414.xz;
            bool2 _422 = bool2(_421.x >= 0.0f.xx.x, _421.y >= 0.0f.xx.y);
            float2 _424 = (1.0f.xx - abs(_414.zx)) * float2(_422.x ? 1.0f.xx.x : (-1.0f).xx.x, _422.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _426 = float3(_424.x, _414.y, _424.y);
        }
        else
        {
            _426 = _414;
        }
        _443 = _333.xyz;
        _444 = normalize(_426);
        _445 = _331.z;
        _446 = _329.z;
        _447 = 0.0f;
        _448 = 0.0f;
        _449 = 0.0f;
        _450 = 0.0f;
        _451 = normalize(_403);
        _452 = uint(int((round(_329.w * 3.0f) * 4.0f) + round(_331.w * 3.0f)));
        _453 = float(_337 & 127u) * 0.0078740157186985015869140625f;
        _454 = true;
    }
    else
    {
        float2 _347 = (_331.xy * 2.0f) - 1.0f.xx;
        float _351 = 1.0f - dot(1.0f.xx, abs(_347));
        float3 _353 = float3(_347.x, _351, _347.y);
        float3 _365;
        if (_351 < 0.0f)
        {
            float2 _360 = _353.xz;
            bool2 _361 = bool2(_360.x >= 0.0f.xx.x, _360.y >= 0.0f.xx.y);
            float2 _363 = (1.0f.xx - abs(_353.zx)) * float2(_361.x ? 1.0f.xx.x : (-1.0f).xx.x, _361.y ? 1.0f.xx.y : (-1.0f).xx.y);
            _365 = float3(_363.x, _353.y, _363.y);
        }
        else
        {
            _365 = _353;
        }
        uint _373 = clamp(_337 - 1u, 0u, 62u);
        bool4 _374 = ((_337 > 0u) && (_337 <= 63u)).xxxx;
        float4 _377 = float4(_374.x ? _11_m0[_373].x : 0.0f.xxxx.x, _374.y ? _11_m0[_373].y : 0.0f.xxxx.y, _374.z ? _11_m0[_373].z : 0.0f.xxxx.z, _374.w ? _11_m0[_373].w : 0.0f.xxxx.w);
        _443 = _333.xyz;
        _444 = normalize(_365);
        _445 = _331.z;
        _446 = _329.y;
        _447 = _377.y;
        _448 = _377.z;
        _449 = _377.x * _329.x;
        _450 = _377.w;
        _451 = 0.0f.xxx;
        _452 = _337;
        _453 = 0.0f;
        _454 = false;
    }
    float2 _457 = float2(_321);
    float2 _470 = gl_FragCoord.xy * _9_m0.zw;
    float2 _472 = (_470 * 2.0f) - 1.0f.xx;
    float4 _475 = float4(_472, _20.SampleLevel(_14, (_457 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
    _475.y = -_472.y;
    float4 _478 = mul(_7_m6, _475);
    float3 _482 = _478.xyz / _478.w.xxx;
    float4 _486 = float4(_482, 1.0f);
    float _489 = abs(mul(_7_m0, _486).z);
    float3 _504;
    do
    {
        if (_9_m4.w == 0.0f)
        {
            _504 = _7_m11.xyz - _482;
            break;
        }
        else
        {
            _504 = _7_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _505 = dot(_504, _504);
    float _507 = rsqrt(max(_505, 9.9999999392252902907785028219223e-09f));
    float3 _508 = _504 * _507;
    float _509 = _505 * _507;
    float3 _510 = -_508;
    float2 _523;
    if (_9_m129.x > 0.00048828125f)
    {
        _523 = _56.SampleBias(_15, _4, _9_m16).xy;
    }
    else
    {
        _523 = 1.0f.xx;
    }
    float _524 = dot(_444, float3(0.0f, -1.0f, 0.0f));
    float3 _579;
    [branch]
    if (_9_m121.x > 0.5f)
    {
        float _551 = abs(_444.x);
        float _553 = abs(_444.y);
        float _555 = abs(_444.z);
        float3 _560 = float3(_551, _553, _555) * (1.0f / ((_551 + _553) + _555));
        _579 = ((((float3(0.0f, 0.0f, 1.0f) * _560.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _560.y)) + (float3(1.0f, 0.0f, 0.0f) * _560.z)) * ((_38.SampleLevel(_16, _482 * _9_m124.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m124.z, _9_m124.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_524)));
    }
    else
    {
        _579 = 0.0f.xxx;
    }
    float4 _593 = mul(_36_m0, float4((_482 + ((((_444 * _9_m128.z) * _9_m120.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m120.y)) * ((1.0f - clamp(_524, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _524), 0.100000001490116119384765625f, 1.0f)))) + _579, 1.0f));
    float2 _596 = (_593.xy * 0.5f) + 0.5f.xx;
    float4 _597 = float4(_596.x, _596.y, _593.z, _593.w);
    _597.y = 1.0f - _596.y;
    float _618;
    [branch]
    if (_9_m121.y > 0.5f)
    {
        _618 = _34.SampleCmpLevelZero(_18, (_597.xy + _36_m1.xy).xy, max(_593.z, 0.00048828125f));
    }
    else
    {
        _618 = 1.0f;
    }
    float _623 = lerp(_9_m125.w, 1.0f, clamp(_444.y, 0.0f, 1.0f));
    float2 _632 = abs(_482.xz - _7_m11.xz);
    float _635 = max(_632.x, _632.y);
    float _653 = min(_523.x, _523.y);
    float2 _655 = _523 * (1.0f - lerp(lerp(_9_m125.z * _623, 1.0f, lerp(_623 * _618, 1.0f, smoothstep(0.699999988079071044921875f * _9_m117.w, 0.75f * _9_m117.w, _635))), _9_m125.y, smoothstep(_9_m117.w, _9_m125.x * _9_m117.w, _635)));
    float _656 = _655.x;
    float _657 = 1.0f - _445;
    float _665 = clamp(clamp((_657 * _9_m117.z) + _9_m117.y, 0.0f, 1.0f), 0.0f, 1.0f);
    float _667 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _524);
    float _674 = lerp(1.0f, 0.25f, (_9_m117.x * _665) * _667);
    float _690 = (1.0f - lerp(_657, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _665) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_657)), 0.0f, 1.0f), _657, 0.9900000095367431640625f), ((_9_m117.x * clamp(2.0f - _9_m117.x, 0.0f, 1.0f)) * _667) * (1.0f - _656))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
    float _695 = lerp(lerp(min(1.0f, _690), _690, _653), _445, _656);
    float3 _697 = _443 * lerp(lerp(min(1.0f, _674), _674, _653), 1.0f, _656);
    float _698 = dot(_444, _508);
    float _699 = max(0.0f, _698);
    float4 _701 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _695) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _702 = _701.x;
    float2 _712 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_702 * _702, exp2((-9.27999973297119140625f) * _699)) * _702) + _701.y)) + _701.zw;
    float3 _717 = (0.039999999105930328369140625f.xxx * _712.x) + _712.y.xxx;
    float4 _723 = _32.Load(int3(_327, 0));
    float _724 = _723.x;
    float4 _1035;
    if (_724 > 0.001000000047497451305389404296875f)
    {
        float3 _735 = reflect(_510, _444);
        float3 _736 = -_31_m0.xyz;
        float _741 = dot(_736, _735);
        float3 _743 = _735 - (_736 * _741);
        bool3 _745 = (_741 < _31_m4.z).xxx;
        float3 _753 = normalize((_736 * _31_m4.z) + ((_743 * rsqrt(max(6.103515625e-05f, dot(_743, _743)))) * _31_m4.y));
        float3 _754 = float3(_745.x ? _753.x : _735.x, _745.y ? _753.y : _735.y, _745.z ? _753.z : _735.z);
        float3 _758 = _754 + _508;
        float3 _762 = _758 * rsqrt(max(6.103515625e-05f, dot(_758, _758)));
        float _764 = clamp(dot(_754, _444), 0.0f, 1.0f);
        float _766 = clamp(dot(_444, _762), 0.0f, 1.0f);
        float _768 = clamp(dot(_508, _762), 0.0f, 1.0f);
        float _770 = clamp(_698, 0.0f, 1.0f);
        float3 _944;
        float3 _945;
        [branch]
        if (_454)
        {
            float _874 = _695 * _695;
            float _875 = _874 * _874;
            float _896 = (((_766 * _875) - _766) * _766) + 1.0f;
            float _899 = 1.0f - _768;
            float _900 = _899 * _899;
            float _902 = (_899 * _900) * _900;
            float _926 = 1.0f - _695;
            float _933 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_926 * (1.04997003078460693359375f + (_926 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _926))))));
            float _934 = 1.0f - _933;
            _944 = 0.0f.xxx;
            _945 = min(((0.039999999105930328369140625f.xxx * (1.0f - _902)) + _902.xxx) * ((_875 / (_896 * _896)) * (0.5f / (((_764 * sqrt(((((-_770) * _875) + _770) * _770) + _875)) + (_770 * sqrt(((((-_764) * _875) + _764) * _764) + _875))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_39.SampleLevel(_15, (float2(_770, _695) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_15, (float2(_764, _695) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _933) / _934)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _934)));
        }
        else
        {
            float _774 = _695 * _695;
            float _775 = _774 * _774;
            float _796 = (((_766 * _775) - _766) * _766) + 1.0f;
            float _799 = 1.0f - _768;
            float _800 = _799 * _799;
            float _802 = (_799 * _800) * _800;
            float _826 = 1.0f - _695;
            float _833 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_826 * (1.04997003078460693359375f + (_826 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _826))))));
            float _834 = 1.0f - _833;
            float _857 = clamp(1.0f - _449, 0.0f, 1.0f);
            float _865 = clamp((dot(_444, _754) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            _944 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_447, _448, _449).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _448.xxx) * _449) * lerp((_446 * lerp(1.0f, (_865 * sqrt(_865)) * 1.66666662693023681640625f, _857)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_508, _754), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _857));
            _945 = min(((0.039999999105930328369140625f.xxx * (1.0f - _802)) + _802.xxx) * ((_775 / (_796 * _796)) * (0.5f / (((_764 * sqrt(((((-_770) * _775) + _770) * _770) + _775)) + (_770 * sqrt(((((-_764) * _775) + _764) * _764) + _775))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_39.SampleLevel(_15, (float2(_770, _695) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_15, (float2(_764, _695) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _833) / _834)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _834)));
        }
        float3 _946 = _697 * 1.0f;
        float3 _949 = clamp(_945 * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _764;
        float3 _1020;
        [branch]
        if (_454)
        {
            float3 _1015;
            do
            {
                [branch]
                if (((_452 > 0u) && (_452 <= 15u)) && (_453 > 0.0f))
                {
                    int _968 = int(clamp(_452 - 1u, 0u, 14u));
                    float _987 = _453 * _43_m0[_968].w;
                    float _992 = float(_968);
                    _1015 = float3(_40.SampleLevel(_15, float3((dot(normalize(lerp(_444, _451, _43_m0[_968].x.xxx)), _754) * 0.5f) + 0.5f, _987, _992), 0.0f).x, _40.SampleLevel(_15, float3((dot(normalize(lerp(_444, _451, _43_m0[_968].y.xxx)), _754) * 0.5f) + 0.5f, _987, _992), 0.0f).y, _40.SampleLevel(_15, float3((dot(normalize(lerp(_444, _451, _43_m0[_968].z.xxx)), _754) * 0.5f) + 0.5f, _987, _992), 0.0f).z);
                    break;
                }
                _1015 = _764.xxx;
                break;
            } while(false);
            _1020 = _31_m1.xyz * (((_946 * _1015) + _949) + _944);
        }
        else
        {
            _1020 = ((_949 + _944) + (_946 * _764)) * _31_m1.xyz;
        }
        float3 _1033 = lerp(_1020, _1020 * _33.SampleBias(_15, float2(_724, 0.5f), _9_m16).xyz, (1.0f - _724).xxx) * _44.SampleLevel(_15, _470, 0.0f).x;
        _1035 = float4(_1033.x, _1033.y, _1033.z, 0.0f.xxxx.w);
    }
    else
    {
        _1035 = 0.0f.xxxx;
    }
    float3 _1037 = _446.xxx;
    float3 _1074;
    float3 _1075;
    [branch]
    if (_9_m23.x != 0.0f)
    {
        float _1050 = min(_23.SampleBias(_14, _4, _9_m16).x, _446);
        _1074 = clamp((pow(abs(_699 + _1050), exp2(((-16.0f) * _695) - 1.0f)) - 1.0f) + _1050, 0.0f, 1.0f).xxx;
        _1075 = max(_1050.xxx, ((((((_697 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1050) + ((_697 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1050) + ((_697 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1050);
    }
    else
    {
        _1074 = _1037;
        _1075 = _1037;
    }
    float3 _2928;
    [branch]
    if (_454)
    {
        float3 _2018;
        do
        {
            [branch]
            if (((_452 > 0u) && (_452 <= 15u)) && (_453 > 0.0f))
            {
                uint _2006 = clamp(_452 - 1u, 0u, 14u);
                _2018 = _41.SampleLevel(_15, float3(_453 * _43_m0[_2006].w, 0.5f, float(_2006)), 0.0f).xyz;
                break;
            }
            _2018 = 1.0f.xxx;
            break;
        } while(false);
        float3 _2035 = (_482 + (_444 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_457 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _2045 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _2054 = _2035 - (_9_m105.xyz + (_2045 * (-_9_m107.w)));
        float _2068 = max(clamp((max(abs(_2054.x), abs(_2054.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_2054.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _2370;
        float4 _2371;
        float4 _2372;
        float _2373;
        float _2374;
        if ((_9_m105.w != 0.0f) && (_2068 < 1.0f))
        {
            float3 _2081 = _2035 - (_9_m105.xyz + (_2045 * (-_9_m107.y)));
            float _2095 = max(clamp((max(abs(_2081.x), abs(_2081.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2081.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _2171;
            float4 _2172;
            float4 _2173;
            float4 _2174;
            if (_2095 < 1.0f)
            {
                float3 _2104 = ((_2035 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2106 = _2104 - floor(_2104);
                float4 _2110 = _50.SampleLevel(_16, _2106, 0.0f);
                float _2111 = 1.0f - _2095;
                float _2115 = _9_m106.y * 0.5f;
                float _2120 = _2106.x;
                float _2121 = clamp(_2106.y, _2115, 1.0f - _2115) * 0.3333333432674407958984375f;
                float _2122 = _2106.z;
                float4 _2125 = _51.SampleLevel(_15, float3(_2120, _2121, _2122), 0.0f);
                float _2141 = _2110.x;
                float _2151 = _2110.y;
                float _2161 = _2110.z;
                _2171 = _2068 + (_2125.w * _2111);
                _2172 = float4(((_51.SampleLevel(_15, float3(_2120, _2121 + 0.666666686534881591796875f, _2122), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2161, _2161) * _2111;
                _2173 = float4(((_51.SampleLevel(_15, float3(_2120, _2121 + 0.3333333432674407958984375f, _2122), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2151, _2151) * _2111;
                _2174 = float4(((_2125.xyz * 4.0f) - 2.0f.xxx) * _2141, _2141) * _2111;
            }
            else
            {
                _2171 = _2068;
                _2172 = 0.0f.xxxx;
                _2173 = 0.0f.xxxx;
                _2174 = 0.0f.xxxx;
            }
            float3 _2180 = _2035 - (_9_m105.xyz + (_2045 * (-_9_m107.z)));
            float _2194 = max(clamp((max(abs(_2180.x), abs(_2180.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2180.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _2274;
            float4 _2275;
            float4 _2276;
            float4 _2277;
            if (_2194 < 1.0f)
            {
                float3 _2203 = ((_2035 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2205 = _2203 - floor(_2203);
                float4 _2209 = _52.SampleLevel(_16, _2205, 0.0f);
                float _2211 = _2095 * (1.0f - _2194);
                float _2215 = _9_m106.y * 0.5f;
                float _2220 = _2205.x;
                float _2221 = clamp(_2205.y, _2215, 1.0f - _2215) * 0.3333333432674407958984375f;
                float _2222 = _2205.z;
                float4 _2225 = _53.SampleLevel(_15, float3(_2220, _2221, _2222), 0.0f);
                float _2241 = _2209.x;
                float _2252 = _2209.y;
                float _2263 = _2209.z;
                _2274 = _2171 + (_2225.w * _2211);
                _2275 = _2172 + (float4(((_53.SampleLevel(_15, float3(_2220, _2221 + 0.666666686534881591796875f, _2222), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2263, _2263) * _2211);
                _2276 = _2173 + (float4(((_53.SampleLevel(_15, float3(_2220, _2221 + 0.3333333432674407958984375f, _2222), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2252, _2252) * _2211);
                _2277 = _2174 + (float4(((_2225.xyz * 4.0f) - 2.0f.xxx) * _2241, _2241) * _2211);
            }
            else
            {
                _2274 = _2171;
                _2275 = _2172;
                _2276 = _2173;
                _2277 = _2174;
            }
            float4 _2360;
            float4 _2361;
            float4 _2362;
            float _2363;
            if (_2194 > 0.0f)
            {
                float3 _2286 = ((_2035 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _2289 = _9_m106.xyz * 0.5f;
                float3 _2291 = clamp(_2286 - floor(_2286), _2289, 1.0f.xxx - _2289);
                float4 _2295 = _54.SampleLevel(_16, _2291, 0.0f);
                float _2297 = _2194 * (1.0f - _2068);
                float _2301 = _9_m106.y * 0.5f;
                float _2306 = _2291.x;
                float _2307 = clamp(_2291.y, _2301, 1.0f - _2301) * 0.3333333432674407958984375f;
                float _2308 = _2291.z;
                float4 _2311 = _55.SampleLevel(_15, float3(_2306, _2307, _2308), 0.0f);
                float _2327 = _2295.x;
                float _2338 = _2295.y;
                float _2349 = _2295.z;
                _2360 = _2275 + (float4(((_55.SampleLevel(_15, float3(_2306, _2307 + 0.666666686534881591796875f, _2308), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2349, _2349) * _2297);
                _2361 = _2276 + (float4(((_55.SampleLevel(_15, float3(_2306, _2307 + 0.3333333432674407958984375f, _2308), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2338, _2338) * _2297);
                _2362 = _2277 + (float4(((_2311.xyz * 4.0f) - 2.0f.xxx) * _2327, _2327) * _2297);
                _2363 = _2274 + (_2311.w * _2297);
            }
            else
            {
                _2360 = _2275;
                _2361 = _2276;
                _2362 = _2277;
                _2363 = _2274;
            }
            float _2366 = clamp((_2363 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _2370 = _2360;
            _2371 = _2361;
            _2372 = _2362;
            _2373 = _2366 - _2068;
            _2374 = (_2366 + _2068) * 0.5f;
        }
        else
        {
            _2370 = 0.0f.xxxx;
            _2371 = 0.0f.xxxx;
            _2372 = 0.0f.xxxx;
            _2373 = 0.0f;
            _2374 = 1.0f;
        }
        float4 _2394 = _2372 + float4(_9_m108.x * _2374, (_9_m108.y * _2374) + ((_9_m108.w * _2373) * 0.5f), _9_m108.z * _2374, (_9_m108.w * _2374) + ((_9_m108.y * _2373) * 0.375f));
        float4 _2414 = _2371 + float4(_9_m109.x * _2374, (_9_m109.y * _2374) + ((_9_m109.w * _2373) * 0.5f), _9_m109.z * _2374, (_9_m109.w * _2374) + ((_9_m109.y * _2373) * 0.375f));
        float4 _2434 = _2370 + float4(_9_m110.x * _2374, (_9_m110.y * _2374) + ((_9_m110.w * _2373) * 0.5f), _9_m110.z * _2374, (_9_m110.w * _2374) + ((_9_m110.y * _2373) * 0.375f));
        float4 _2592;
        float4 _2593;
        float4 _2594;
        [branch]
        if (all(bool2(_470.x >= 0.0f.xx.x, _470.y >= 0.0f.xx.y)))
        {
            float4 _2442 = _49.SampleLevel(_15, _470, 0.0f);
            float4 _2443 = abs(_2442);
            float4 _2589;
            float4 _2590;
            float4 _2591;
            [branch]
            if (any(bool4(_2443.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2443.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2443.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2443.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _2449 = length(_2442.yzw);
                uint _2451;
                float _2454;
                _2451 = 0u;
                _2454 = 1.0f;
                for (float _2456 = _2449; _2456 > 4.599999904632568359375f; )
                {
                    _2451++;
                    _2454 *= 0.5f;
                    _2456 *= 0.5f;
                    continue;
                }
                float4 _2460 = _2442 * _2454;
                float4 _2465 = float4(0.0f, _2460.yzw);
                float2 _2487 = (_48.SampleLevel(_15, float2(((((length(_2465) * _47_m3.x) + _47_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _47_m2.xy) + _47_m2.zw;
                float4 _2501;
                _2501 = float4(_2487.x * 3.5449078083038330078125f, _2465.yzw * _2487.y) * exp(_2460.x * 0.282094776630401611328125f);
                for (uint _2504 = 0u; _2504 < _2451; )
                {
                    _2501 = mul(float4x4(_2501, float4(_2501.yx, 0.0f, 0.0f), float4(_2501.z, 0.0f, _2501.x, 0.0f), float4(_2501.w, 0.0f, 0.0f, _2501.x)) * 0.282094776630401611328125f, _2501);
                    _2504++;
                    continue;
                }
                float4x4 _2525 = float4x4(_2501, float4(_2501.yx, 0.0f, 0.0f), float4(_2501.z, 0.0f, _2501.x, 0.0f), float4(_2501.w, 0.0f, 0.0f, _2501.x)) * 0.282094776630401611328125f;
                float4 _2535 = mul(_2525, float4(_2394.w * 1.1283791065216064453125f, _2394.y * (-0.977204978466033935546875f), _2394.z * 0.977204978466033935546875f, _2394.x * (-0.977204978466033935546875f)));
                float4 _2555 = mul(_2525, float4(_2414.w * 1.1283791065216064453125f, _2414.y * (-0.977204978466033935546875f), _2414.z * 0.977204978466033935546875f, _2414.x * (-0.977204978466033935546875f)));
                float4 _2575 = mul(_2525, float4(_2434.w * 1.1283791065216064453125f, _2434.y * (-0.977204978466033935546875f), _2434.z * 0.977204978466033935546875f, _2434.x * (-0.977204978466033935546875f)));
                _2589 = float4(_2535.x * 0.886226952075958251953125f, _2535.w * (-1.02332675457000732421875f), _2535.y * (-1.02332675457000732421875f), _2535.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _2590 = float4(_2555.x * 0.886226952075958251953125f, _2555.w * (-1.02332675457000732421875f), _2555.y * (-1.02332675457000732421875f), _2555.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _2591 = float4(_2575.x * 0.886226952075958251953125f, _2575.w * (-1.02332675457000732421875f), _2575.y * (-1.02332675457000732421875f), _2575.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _2589 = _2394;
                _2590 = _2414;
                _2591 = _2434;
            }
            _2592 = _2589;
            _2593 = _2590;
            _2594 = _2591;
        }
        else
        {
            _2592 = _2394;
            _2593 = _2414;
            _2594 = _2434;
        }
        float _2601 = max(0.0f, dot(_2592.xyz * _2018.x, _444) + _2592.w);
        float _2608 = max(0.0f, dot(_2593.xyz * _2018.y, _444) + _2593.w);
        float _2615 = max(0.0f, dot(_2594.xyz * _2018.z, _444) + _2594.w);
        float3 _2625 = reflect(_510, _444);
        float _2633 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_695, 0.001000000047497451305389404296875f))));
        float2 _2637 = floor(_457 * _29_m0.w);
        float _2654 = floor(_489 - _29_m2.y);
        float _2658 = clamp(_2654, 0.0f, _29_m1.x - 1.0f);
        uint _2668 = (_2654 <= _2658) ? (_26.Load(uint(_9_m21.z + int(_2637.x + (_2637.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_2658)) * 4 + 0)) : 0u;
        float _2671 = dot(float4(_2601, _2608, _2615, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _2673;
        float _2676;
        uint _2678;
        _2673 = 0.0f.xxx;
        _2676 = 1.0f;
        _2678 = _2668;
        uint _2679;
        float3 _2674;
        float _2677;
        bool _2681;
        [loop]
        for (;;)
        {
            _2681 = _2676 > 0.00999999977648258209228515625f;
            if ((_2678 != 0u) && _2681)
            {
                uint _2685 = firstbitlow(_2678);
                _2679 = _2678 ^ (1u << (_2685 & 31u));
                float3 _2705 = float3(dot(_29_m4[_2685]._m2, _486), dot(_29_m4[_2685]._m3, _486), dot(_29_m4[_2685]._m4, _486));
                float3 _2706 = abs(_2705);
                if (all(bool3(_2706.x <= _29_m4[_2685]._m1.xyz.x, _2706.y <= _29_m4[_2685]._m1.xyz.y, _2706.z <= _29_m4[_2685]._m1.xyz.z)))
                {
                    float3 _2715 = _29_m4[_2685]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _2717 = _2706 * 0.100000001490116119384765625f;
                    float3 _2718 = _2717 * _2717;
                    float3 _2721 = (_29_m4[_2685]._m1.xyz - _2706) * _29_m4[_2685]._m5.xyz;
                    float3 _2769;
                    [branch]
                    if (_29_m4[_2685]._m6.x == 1.0f)
                    {
                        float3 _2754 = float3(dot(_29_m4[_2685]._m2.xyz, _2625), dot(_29_m4[_2685]._m3.xyz, _2625), dot(_29_m4[_2685]._m4.xyz, _2625));
                        float3 _2756 = (_29_m4[_2685]._m1.xyz - _2705) / _2754;
                        float3 _2759 = ((-_29_m4[_2685]._m1.xyz) - _2705) / _2754;
                        bool3 _2760 = bool3(_2754.x > 0.0f.xxx.x, _2754.y > 0.0f.xxx.y, _2754.z > 0.0f.xxx.z);
                        float3 _2761 = float3(_2760.x ? _2756.x : _2759.x, _2760.y ? _2756.y : _2759.y, _2760.z ? _2756.z : _2759.z);
                        _2769 = _2705 + (_2754 * min(min(_2761.x, _2761.y), _2761.z));
                    }
                    else
                    {
                        _2769 = _2625;
                    }
                    float3 _2770 = normalize(_2769);
                    float3 _2773 = float3(int3(sign(_2770)));
                    float3 _2776 = _2770 / dot(_2770, _2773).xxx;
                    float3 _2790;
                    if (_2776.z < 0.0f)
                    {
                        float3 _2781 = abs(_2776);
                        float2 _2788 = _2773.xy * float2(1.0f - _2781.y, 1.0f - _2781.x);
                        _2790 = float3(_2788.x, _2788.y, _2776.z);
                    }
                    else
                    {
                        _2790 = _2776;
                    }
                    float _2814 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_2685]._m0, float4(_444, 1.0f))));
                    float _2827 = clamp((min(_2721.x, min(_2721.y, _2721.z)) * _29_m4[_2685]._m6.y) + ((((((_2715 * _2715).x - ((_2718.x + _2718.y) + _2718.z)) * _29_m4[_2685]._m5.x) * _29_m4[_2685]._m5.x) * (1.0f - _29_m4[_2685]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_2685]._m6.w;
                    _2674 = _2673 + ((((_24.SampleLevel(_17, float3((((_2790.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_2685]._m1.w), _2633).xyz * _29_m4[_2685]._m5.w) * ((((((clamp(abs(_2671 / _2814), 0.0f, 1.0f) * 2.0f) + _2671) / (2.0f + _2814)) - 1.0f) * _9_m23.w) + 1.0f)) * _2827) * _2676);
                    _2677 = _2676 * (1.0f - _2827);
                }
                else
                {
                    _2674 = _2673;
                    _2677 = _2676;
                }
                _2673 = _2674;
                _2676 = _2677;
                _2678 = _2679;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _2895;
        if (_2681)
        {
            float3 _2835 = normalize(_2625);
            float3 _2838 = float3(int3(sign(_2835)));
            float3 _2841 = _2835 / dot(_2835, _2838).xxx;
            float3 _2855;
            if (_2841.z < 0.0f)
            {
                float3 _2846 = abs(_2841);
                float2 _2853 = _2838.xy * float2(1.0f - _2846.y, 1.0f - _2846.x);
                _2855 = float3(_2853.x, _2853.y, _2841.z);
            }
            else
            {
                _2855 = _2841;
            }
            float _2881 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_444, 1.0f))));
            _2895 = _2673 + ((_24.SampleLevel(_17, float3((((_2855.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _2633).xyz * ((((((clamp(abs(_2671 / _2881), 0.0f, 1.0f) * 2.0f) + _2671) / (2.0f + _2881)) - 1.0f) * _9_m23.w) + 1.0f)) * _2676);
        }
        else
        {
            _2895 = _2673;
        }
        float3 _2901 = (_2895 * _9_m23.z) * _9_m22.y;
        float3 _2924;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _2918 = _22.SampleBias(_15, _4, _9_m16);
            float _2919 = _2918.x;
            _2924 = (_21.SampleBias(_15, _4, _9_m16).xyz * _2919) + (_2901 * (1.0f - _2919));
        }
        else
        {
            _2924 = _2901;
        }
        _2928 = (((float3(_2601, _2608, _2615) * _697) * _9_m22.x) * _1075) + ((_2924 * _717) * _1074);
    }
    else
    {
        float3 _1095 = (_482 + (_444 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_457 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m107.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
        float3 _1105 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
        float3 _1114 = _1095 - (_9_m105.xyz + (_1105 * (-_9_m107.w)));
        float _1128 = max(clamp((max(abs(_1114.x), abs(_1114.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_1114.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _1430;
        float4 _1431;
        float4 _1432;
        float _1433;
        float _1434;
        if ((_9_m105.w != 0.0f) && (_1128 < 1.0f))
        {
            float3 _1141 = _1095 - (_9_m105.xyz + (_1105 * (-_9_m107.y)));
            float _1155 = max(clamp((max(abs(_1141.x), abs(_1141.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1141.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _1231;
            float4 _1232;
            float4 _1233;
            float4 _1234;
            if (_1155 < 1.0f)
            {
                float3 _1164 = ((_1095 * 2.0f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _1166 = _1164 - floor(_1164);
                float4 _1170 = _50.SampleLevel(_16, _1166, 0.0f);
                float _1171 = 1.0f - _1155;
                float _1175 = _9_m106.y * 0.5f;
                float _1180 = _1166.x;
                float _1181 = clamp(_1166.y, _1175, 1.0f - _1175) * 0.3333333432674407958984375f;
                float _1182 = _1166.z;
                float4 _1185 = _51.SampleLevel(_15, float3(_1180, _1181, _1182), 0.0f);
                float _1201 = _1170.x;
                float _1211 = _1170.y;
                float _1221 = _1170.z;
                _1231 = _1128 + (_1185.w * _1171);
                _1232 = float4(((_51.SampleLevel(_15, float3(_1180, _1181 + 0.666666686534881591796875f, _1182), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1221, _1221) * _1171;
                _1233 = float4(((_51.SampleLevel(_15, float3(_1180, _1181 + 0.3333333432674407958984375f, _1182), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1211, _1211) * _1171;
                _1234 = float4(((_1185.xyz * 4.0f) - 2.0f.xxx) * _1201, _1201) * _1171;
            }
            else
            {
                _1231 = _1128;
                _1232 = 0.0f.xxxx;
                _1233 = 0.0f.xxxx;
                _1234 = 0.0f.xxxx;
            }
            float3 _1240 = _1095 - (_9_m105.xyz + (_1105 * (-_9_m107.z)));
            float _1254 = max(clamp((max(abs(_1240.x), abs(_1240.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1240.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _1334;
            float4 _1335;
            float4 _1336;
            float4 _1337;
            if (_1254 < 1.0f)
            {
                float3 _1263 = ((_1095 * 0.5f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _1265 = _1263 - floor(_1263);
                float4 _1269 = _52.SampleLevel(_16, _1265, 0.0f);
                float _1271 = _1155 * (1.0f - _1254);
                float _1275 = _9_m106.y * 0.5f;
                float _1280 = _1265.x;
                float _1281 = clamp(_1265.y, _1275, 1.0f - _1275) * 0.3333333432674407958984375f;
                float _1282 = _1265.z;
                float4 _1285 = _53.SampleLevel(_15, float3(_1280, _1281, _1282), 0.0f);
                float _1301 = _1269.x;
                float _1312 = _1269.y;
                float _1323 = _1269.z;
                _1334 = _1231 + (_1285.w * _1271);
                _1335 = _1232 + (float4(((_53.SampleLevel(_15, float3(_1280, _1281 + 0.666666686534881591796875f, _1282), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1323, _1323) * _1271);
                _1336 = _1233 + (float4(((_53.SampleLevel(_15, float3(_1280, _1281 + 0.3333333432674407958984375f, _1282), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1312, _1312) * _1271);
                _1337 = _1234 + (float4(((_1285.xyz * 4.0f) - 2.0f.xxx) * _1301, _1301) * _1271);
            }
            else
            {
                _1334 = _1231;
                _1335 = _1232;
                _1336 = _1233;
                _1337 = _1234;
            }
            float4 _1420;
            float4 _1421;
            float4 _1422;
            float _1423;
            if (_1254 > 0.0f)
            {
                float3 _1346 = ((_1095 * 0.125f) + 0.5f.xxx) * _9_m106.xyz;
                float3 _1349 = _9_m106.xyz * 0.5f;
                float3 _1351 = clamp(_1346 - floor(_1346), _1349, 1.0f.xxx - _1349);
                float4 _1355 = _54.SampleLevel(_16, _1351, 0.0f);
                float _1357 = _1254 * (1.0f - _1128);
                float _1361 = _9_m106.y * 0.5f;
                float _1366 = _1351.x;
                float _1367 = clamp(_1351.y, _1361, 1.0f - _1361) * 0.3333333432674407958984375f;
                float _1368 = _1351.z;
                float4 _1371 = _55.SampleLevel(_15, float3(_1366, _1367, _1368), 0.0f);
                float _1387 = _1355.x;
                float _1398 = _1355.y;
                float _1409 = _1355.z;
                _1420 = _1335 + (float4(((_55.SampleLevel(_15, float3(_1366, _1367 + 0.666666686534881591796875f, _1368), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1409, _1409) * _1357);
                _1421 = _1336 + (float4(((_55.SampleLevel(_15, float3(_1366, _1367 + 0.3333333432674407958984375f, _1368), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1398, _1398) * _1357);
                _1422 = _1337 + (float4(((_1371.xyz * 4.0f) - 2.0f.xxx) * _1387, _1387) * _1357);
                _1423 = _1334 + (_1371.w * _1357);
            }
            else
            {
                _1420 = _1335;
                _1421 = _1336;
                _1422 = _1337;
                _1423 = _1334;
            }
            float _1426 = clamp((_1423 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _1430 = _1420;
            _1431 = _1421;
            _1432 = _1422;
            _1433 = _1426 - _1128;
            _1434 = (_1426 + _1128) * 0.5f;
        }
        else
        {
            _1430 = 0.0f.xxxx;
            _1431 = 0.0f.xxxx;
            _1432 = 0.0f.xxxx;
            _1433 = 0.0f;
            _1434 = 1.0f;
        }
        float4 _1454 = _1432 + float4(_9_m108.x * _1434, (_9_m108.y * _1434) + ((_9_m108.w * _1433) * 0.5f), _9_m108.z * _1434, (_9_m108.w * _1434) + ((_9_m108.y * _1433) * 0.375f));
        float4 _1474 = _1431 + float4(_9_m109.x * _1434, (_9_m109.y * _1434) + ((_9_m109.w * _1433) * 0.5f), _9_m109.z * _1434, (_9_m109.w * _1434) + ((_9_m109.y * _1433) * 0.375f));
        float4 _1494 = _1430 + float4(_9_m110.x * _1434, (_9_m110.y * _1434) + ((_9_m110.w * _1433) * 0.5f), _9_m110.z * _1434, (_9_m110.w * _1434) + ((_9_m110.y * _1433) * 0.375f));
        float4 _1652;
        float4 _1653;
        float4 _1654;
        [branch]
        if (all(bool2(_470.x >= 0.0f.xx.x, _470.y >= 0.0f.xx.y)))
        {
            float4 _1502 = _49.SampleLevel(_15, _470, 0.0f);
            float4 _1503 = abs(_1502);
            float4 _1649;
            float4 _1650;
            float4 _1651;
            [branch]
            if (any(bool4(_1503.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1503.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1503.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1503.w > 9.9999997473787516355514526367188e-05f.xxxx.w)))
            {
                float _1509 = length(_1502.yzw);
                uint _1511;
                float _1514;
                _1511 = 0u;
                _1514 = 1.0f;
                for (float _1516 = _1509; _1516 > 4.599999904632568359375f; )
                {
                    _1511++;
                    _1514 *= 0.5f;
                    _1516 *= 0.5f;
                    continue;
                }
                float4 _1520 = _1502 * _1514;
                float4 _1525 = float4(0.0f, _1520.yzw);
                float2 _1547 = (_48.SampleLevel(_15, float2(((((length(_1525) * _47_m3.x) + _47_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _47_m2.xy) + _47_m2.zw;
                float4 _1561;
                _1561 = float4(_1547.x * 3.5449078083038330078125f, _1525.yzw * _1547.y) * exp(_1520.x * 0.282094776630401611328125f);
                for (uint _1564 = 0u; _1564 < _1511; )
                {
                    _1561 = mul(float4x4(_1561, float4(_1561.yx, 0.0f, 0.0f), float4(_1561.z, 0.0f, _1561.x, 0.0f), float4(_1561.w, 0.0f, 0.0f, _1561.x)) * 0.282094776630401611328125f, _1561);
                    _1564++;
                    continue;
                }
                float4x4 _1585 = float4x4(_1561, float4(_1561.yx, 0.0f, 0.0f), float4(_1561.z, 0.0f, _1561.x, 0.0f), float4(_1561.w, 0.0f, 0.0f, _1561.x)) * 0.282094776630401611328125f;
                float4 _1595 = mul(_1585, float4(_1454.w * 1.1283791065216064453125f, _1454.y * (-0.977204978466033935546875f), _1454.z * 0.977204978466033935546875f, _1454.x * (-0.977204978466033935546875f)));
                float4 _1615 = mul(_1585, float4(_1474.w * 1.1283791065216064453125f, _1474.y * (-0.977204978466033935546875f), _1474.z * 0.977204978466033935546875f, _1474.x * (-0.977204978466033935546875f)));
                float4 _1635 = mul(_1585, float4(_1494.w * 1.1283791065216064453125f, _1494.y * (-0.977204978466033935546875f), _1494.z * 0.977204978466033935546875f, _1494.x * (-0.977204978466033935546875f)));
                _1649 = float4(_1595.x * 0.886226952075958251953125f, _1595.w * (-1.02332675457000732421875f), _1595.y * (-1.02332675457000732421875f), _1595.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _1650 = float4(_1615.x * 0.886226952075958251953125f, _1615.w * (-1.02332675457000732421875f), _1615.y * (-1.02332675457000732421875f), _1615.z * 1.02332675457000732421875f).yzwx * 1.0f;
                _1651 = float4(_1635.x * 0.886226952075958251953125f, _1635.w * (-1.02332675457000732421875f), _1635.y * (-1.02332675457000732421875f), _1635.z * 1.02332675457000732421875f).yzwx * 1.0f;
            }
            else
            {
                _1649 = _1454;
                _1650 = _1474;
                _1651 = _1494;
            }
            _1652 = _1649;
            _1653 = _1650;
            _1654 = _1651;
        }
        else
        {
            _1652 = _1454;
            _1653 = _1474;
            _1654 = _1494;
        }
        float _1659 = max(0.0f, dot(_1652.xyz, _444) + _1652.w);
        float _1664 = max(0.0f, dot(_1653.xyz, _444) + _1653.w);
        float _1669 = max(0.0f, dot(_1654.xyz, _444) + _1654.w);
        float3 _1693 = reflect(_510, _444);
        float _1701 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_695, 0.001000000047497451305389404296875f))));
        float2 _1705 = floor(_457 * _29_m0.w);
        float _1722 = floor(_489 - _29_m2.y);
        float _1726 = clamp(_1722, 0.0f, _29_m1.x - 1.0f);
        uint _1736 = (_1722 <= _1726) ? (_26.Load(uint(_9_m21.z + int(_1705.x + (_1705.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_1726)) * 4 + 0)) : 0u;
        float _1739 = dot(float4(_1659, _1664, _1669, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
        float3 _1741;
        float _1744;
        uint _1746;
        _1741 = 0.0f.xxx;
        _1744 = 1.0f;
        _1746 = _1736;
        uint _1747;
        float3 _1742;
        float _1745;
        bool _1749;
        [loop]
        for (;;)
        {
            _1749 = _1744 > 0.00999999977648258209228515625f;
            if ((_1746 != 0u) && _1749)
            {
                uint _1753 = firstbitlow(_1746);
                _1747 = _1746 ^ (1u << (_1753 & 31u));
                float3 _1773 = float3(dot(_29_m4[_1753]._m2, _486), dot(_29_m4[_1753]._m3, _486), dot(_29_m4[_1753]._m4, _486));
                float3 _1774 = abs(_1773);
                if (all(bool3(_1774.x <= _29_m4[_1753]._m1.xyz.x, _1774.y <= _29_m4[_1753]._m1.xyz.y, _1774.z <= _29_m4[_1753]._m1.xyz.z)))
                {
                    float3 _1783 = _29_m4[_1753]._m1.xyz * 0.100000001490116119384765625f;
                    float3 _1785 = _1774 * 0.100000001490116119384765625f;
                    float3 _1786 = _1785 * _1785;
                    float3 _1789 = (_29_m4[_1753]._m1.xyz - _1774) * _29_m4[_1753]._m5.xyz;
                    float3 _1837;
                    [branch]
                    if (_29_m4[_1753]._m6.x == 1.0f)
                    {
                        float3 _1822 = float3(dot(_29_m4[_1753]._m2.xyz, _1693), dot(_29_m4[_1753]._m3.xyz, _1693), dot(_29_m4[_1753]._m4.xyz, _1693));
                        float3 _1824 = (_29_m4[_1753]._m1.xyz - _1773) / _1822;
                        float3 _1827 = ((-_29_m4[_1753]._m1.xyz) - _1773) / _1822;
                        bool3 _1828 = bool3(_1822.x > 0.0f.xxx.x, _1822.y > 0.0f.xxx.y, _1822.z > 0.0f.xxx.z);
                        float3 _1829 = float3(_1828.x ? _1824.x : _1827.x, _1828.y ? _1824.y : _1827.y, _1828.z ? _1824.z : _1827.z);
                        _1837 = _1773 + (_1822 * min(min(_1829.x, _1829.y), _1829.z));
                    }
                    else
                    {
                        _1837 = _1693;
                    }
                    float3 _1838 = normalize(_1837);
                    float3 _1841 = float3(int3(sign(_1838)));
                    float3 _1844 = _1838 / dot(_1838, _1841).xxx;
                    float3 _1858;
                    if (_1844.z < 0.0f)
                    {
                        float3 _1849 = abs(_1844);
                        float2 _1856 = _1841.xy * float2(1.0f - _1849.y, 1.0f - _1849.x);
                        _1858 = float3(_1856.x, _1856.y, _1844.z);
                    }
                    else
                    {
                        _1858 = _1844;
                    }
                    float _1882 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_1753]._m0, float4(_444, 1.0f))));
                    float _1895 = clamp((min(_1789.x, min(_1789.y, _1789.z)) * _29_m4[_1753]._m6.y) + ((((((_1783 * _1783).x - ((_1786.x + _1786.y) + _1786.z)) * _29_m4[_1753]._m5.x) * _29_m4[_1753]._m5.x) * (1.0f - _29_m4[_1753]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_1753]._m6.w;
                    _1742 = _1741 + ((((_24.SampleLevel(_17, float3((((_1858.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_1753]._m1.w), _1701).xyz * _29_m4[_1753]._m5.w) * ((((((clamp(abs(_1739 / _1882), 0.0f, 1.0f) * 2.0f) + _1739) / (2.0f + _1882)) - 1.0f) * _9_m23.w) + 1.0f)) * _1895) * _1744);
                    _1745 = _1744 * (1.0f - _1895);
                }
                else
                {
                    _1742 = _1741;
                    _1745 = _1744;
                }
                _1741 = _1742;
                _1744 = _1745;
                _1746 = _1747;
                continue;
            }
            else
            {
                break;
            }
        }
        float3 _1963;
        if (_1749)
        {
            float3 _1903 = normalize(_1693);
            float3 _1906 = float3(int3(sign(_1903)));
            float3 _1909 = _1903 / dot(_1903, _1906).xxx;
            float3 _1923;
            if (_1909.z < 0.0f)
            {
                float3 _1914 = abs(_1909);
                float2 _1921 = _1906.xy * float2(1.0f - _1914.y, 1.0f - _1914.x);
                _1923 = float3(_1921.x, _1921.y, _1909.z);
            }
            else
            {
                _1923 = _1909;
            }
            float _1949 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_444, 1.0f))));
            _1963 = _1741 + ((_24.SampleLevel(_17, float3((((_1923.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _1701).xyz * ((((((clamp(abs(_1739 / _1949), 0.0f, 1.0f) * 2.0f) + _1739) / (2.0f + _1949)) - 1.0f) * _9_m23.w) + 1.0f)) * _1744);
        }
        else
        {
            _1963 = _1741;
        }
        float3 _1969 = (_1963 * _9_m23.z) * _9_m22.y;
        float3 _1992;
        [branch]
        if (_9_m23.y != 0.0f)
        {
            float4 _1986 = _22.SampleBias(_15, _4, _9_m16);
            float _1987 = _1986.x;
            _1992 = (_21.SampleBias(_15, _4, _9_m16).xyz * _1987) + (_1969 * (1.0f - _1987));
        }
        else
        {
            _1992 = _1969;
        }
        _2928 = (((float3(_1659, _1664, _1669) * (_697 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_447, _448, _449).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _448.xxx) * _449) * _450))) * _9_m22.x) * _1075) + ((_1992 * _717) * _1074);
    }
    float4 _2930 = float4(_1035.x, _1035.y, _1035.z, _1035.w) + float4(_2928.x, _2928.y, _2928.z, 0.0f.xxxx.w);
    float _2948 = _482.y * _9_m46.w;
    float _2953 = max(0.00999999977648258209228515625f, _2948 + _9_m47.w);
    float3 _2967 = exp(_9_m45.xyz * ((-max(0.0f, (_509 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2953)) / _2953) * exp(_2948 + _9_m48.w))));
    float _2970 = dot(_510, _9_m44.xyz);
    float _2976 = _9_m45.w * _9_m45.w;
    float _2980 = (1.0f + _2976) - ((2.0f * _9_m45.w) * _2970);
    float3 _3304;
    float _3305;
    if (_9_m55.z > 0.0f)
    {
        uint3 _3132 = (uint3(int3(_324, _325, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3133 = _3132.y;
        uint _3134 = _3132.z;
        uint _3137 = _3132.x + (_3133 * _3134);
        uint _3139 = _3133 + (_3134 * _3137);
        uint _3141 = _3134 + (_3137 * _3139);
        uint _3143 = _3137 + (_3139 * _3141);
        float _3167 = dot(_510, -_7_m0[2].xyz);
        float3 _3175 = _482 - _7_m11.xyz;
        float _3177 = (_9_m55.w * ((_3167 > 5.9604644775390625e-08f) ? (1.0f / _3167) : 0.0f)) * (1.0f / _509);
        float _3178 = _3175.y;
        float _3179 = _3177 * _3178;
        float _3181 = _7_m11.y + _3179;
        float _3182 = _3178 - _3179;
        float _3184 = (1.0f - _3177) * _509;
        float _3198 = max(-127.0f, _9_m49.z * _3182);
        float _3222 = max(-127.0f, _9_m52.x * _3182);
        float _3233 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3181 - _9_m49.x)))) * ((abs(_3198) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3198)) / _3198) : (0.693147182464599609375f - (0.2402265071868896484375f * _3198)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3181 - _9_m52.z)))) * ((abs(_3222) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3222)) / _3222) : (0.693147182464599609375f - (0.2402265071868896484375f * _3222))));
        float _3255 = clamp((_509 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3258 = clamp((max(clamp(exp2(-(_3233 * _3184)), 0.0f, 1.0f), _9_m51.w) + clamp((_509 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3255, 0.0f, 1.0f);
        float4 _3298 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _45.SampleLevel(_15, float3((_457 + ((((float3(uint3(_3143, _3139 + (_3141 * _3143), _315) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_489 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_489 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        float _3300 = _3298.w;
        _3304 = _3298.xyz + (((_9_m51.xyz * (1.0f - _3258)) + (((_9_m54.xyz * pow(clamp(dot(_508, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3233 * max(_3184 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3255))) * _3300);
        _3305 = _3300 * _3258;
    }
    else
    {
        float3 _3008 = _482 - _7_m11.xyz;
        float _3010 = _3008.y;
        float _3024 = max(-127.0f, _9_m49.z * _3010);
        float _3048 = max(-127.0f, _9_m52.x * _3010);
        float _3059 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3024) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3024)) / _3024) : (0.693147182464599609375f - (0.2402265071868896484375f * _3024)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3048) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3048)) / _3048) : (0.693147182464599609375f - (0.2402265071868896484375f * _3048))));
        float _3081 = clamp((_509 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
        float _3084 = clamp((max(clamp(exp2(-(_3059 * _509)), 0.0f, 1.0f), _9_m51.w) + clamp((_509 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3081, 0.0f, 1.0f);
        _3304 = (_9_m51.xyz * (1.0f - _3084)) + (((_9_m54.xyz * pow(clamp(dot(_508, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3059 * max(_509 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3081));
        _3305 = _3084;
    }
    float3 _3308 = _2967 * _3305;
    float3 _3310 = (clamp(_2930.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3308) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2970 * _2970)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2976) / max((12.56637096405029296875f * _2980) * sqrt(_2980), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2967)) * _3305) + _3304);

    if (RENODX_CUSTOM_FOG > 0.5f)

    {

        _3310 = (_3310 * 0.65f) + (clamp(_2930.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);

    }
    float4 _3312 = float4(_3310.x, _3310.y, _3310.z, _2930.w);
    _3312.w = dot(_3308, 0.3333333432674407958984375f.xxx);
    _5 = _3312;
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
