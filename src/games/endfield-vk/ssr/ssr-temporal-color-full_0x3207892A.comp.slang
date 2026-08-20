#include "../shared.h"

[[vk::binding(0, 1)]]
cbuffer _5_6 : register(b0)
{
    column_major float4x4 _6_m0 : packoffset(c0);
    column_major float4x4 _6_m1 : packoffset(c4);
    column_major float4x4 _6_m2 : packoffset(c8);
    column_major float4x4 _6_m3 : packoffset(c12);
    column_major float4x4 _6_m4 : packoffset(c16);
    column_major float4x4 _6_m5 : packoffset(c20);
    column_major float4x4 _6_m6 : packoffset(c24);
    column_major float4x4 _6_m7 : packoffset(c28);
    column_major float4x4 _6_m8 : packoffset(c32);
    column_major float4x4 _6_m9 : packoffset(c36);
    column_major float4x4 _6_m10 : packoffset(c40);
    float4 _6_m11 : packoffset(c44);
    column_major float4x4 _6_m12 : packoffset(c45);
    column_major float4x4 _6_m13 : packoffset(c49);
    column_major float4x4 _6_m14 : packoffset(c53);
    column_major float4x4 _6_m15 : packoffset(c57);
    column_major float4x4 _6_m16 : packoffset(c61);
    column_major float4x4 _6_m17 : packoffset(c65);
    column_major float4x4 _6_m18 : packoffset(c69);
    column_major float4x4 _6_m19 : packoffset(c73);
    column_major float4x4 _6_m20 : packoffset(c77);
    float4 _6_m21 : packoffset(c81);
};

[[vk::binding(1, 1)]]
cbuffer _7_8 : register(b1)
{
    float4 _8_m0 : packoffset(c0);
    float4 _8_m1 : packoffset(c1);
    float4 _8_m2 : packoffset(c2);
    float4 _8_m3 : packoffset(c3);
    float4 _8_m4 : packoffset(c4);
    float4 _8_m5 : packoffset(c5);
    float4 _8_m6[6] : packoffset(c6);
    float4 _8_m7[6] : packoffset(c12);
    float4 _8_m8 : packoffset(c18);
    float4 _8_m9 : packoffset(c19);
    float4 _8_m10 : packoffset(c20);
    float4 _8_m11 : packoffset(c21);
    float4 _8_m12 : packoffset(c22);
    float4 _8_m13 : packoffset(c23);
    float4 _8_m14 : packoffset(c24);
    float4 _8_m15 : packoffset(c25);
    float _8_m16 : packoffset(c26);
    float _8_m17 : packoffset(c26.y);
    float _8_m18 : packoffset(c26.z);
    uint _8_m19 : packoffset(c26.w);
    float4 _8_m20 : packoffset(c27);
    int4 _8_m21 : packoffset(c28);
    float4 _8_m22 : packoffset(c29);
    float4 _8_m23 : packoffset(c30);
    float4 _8_m24 : packoffset(c31);
    float4 _8_m25 : packoffset(c32);
    float4 _8_m26 : packoffset(c33);
    float4 _8_m27 : packoffset(c34);
    float4 _8_m28 : packoffset(c35);
    float4 _8_m29 : packoffset(c36);
    float4 _8_m30 : packoffset(c37);
    float4 _8_m31 : packoffset(c38);
    float4 _8_m32[4] : packoffset(c39);
    float4 _8_m33[4] : packoffset(c43);
    float4 _8_m34[4] : packoffset(c47);
    float4 _8_m35[4] : packoffset(c51);
    float4 _8_m36 : packoffset(c55);
    float4 _8_m37 : packoffset(c56);
    float4 _8_m38[4] : packoffset(c57);
    float4 _8_m39[4] : packoffset(c61);
    float4 _8_m40[4] : packoffset(c65);
    float4 _8_m41 : packoffset(c69);
    float4 _8_m42 : packoffset(c70);
    float4 _8_m43 : packoffset(c71);
    float4 _8_m44 : packoffset(c72);
    float4 _8_m45 : packoffset(c73);
    float4 _8_m46 : packoffset(c74);
    float4 _8_m47 : packoffset(c75);
    float4 _8_m48 : packoffset(c76);
    float4 _8_m49 : packoffset(c77);
    float4 _8_m50 : packoffset(c78);
    float4 _8_m51 : packoffset(c79);
    float4 _8_m52 : packoffset(c80);
    float4 _8_m53 : packoffset(c81);
    float4 _8_m54 : packoffset(c82);
    float4 _8_m55 : packoffset(c83);
    float4 _8_m56 : packoffset(c84);
    float4 _8_m57 : packoffset(c85);
    float4 _8_m58 : packoffset(c86);
    float4 _8_m59 : packoffset(c87);
    float4 _8_m60 : packoffset(c88);
    float4 _8_m61 : packoffset(c89);
    float4 _8_m62 : packoffset(c90);
    float4 _8_m63 : packoffset(c91);
    float4 _8_m64 : packoffset(c92);
    float4 _8_m65 : packoffset(c93);
    float4 _8_m66 : packoffset(c94);
    float4 _8_m67 : packoffset(c95);
    float4 _8_m68 : packoffset(c96);
    float4 _8_m69 : packoffset(c97);
    float4 _8_m70 : packoffset(c98);
    float4 _8_m71 : packoffset(c99);
    float4 _8_m72 : packoffset(c100);
    float4 _8_m73 : packoffset(c101);
    float4 _8_m74 : packoffset(c102);
    float4 _8_m75 : packoffset(c103);
    float4 _8_m76 : packoffset(c104);
    float4 _8_m77 : packoffset(c105);
    float4 _8_m78 : packoffset(c106);
    float4 _8_m79 : packoffset(c107);
    float4 _8_m80 : packoffset(c108);
    float4 _8_m81 : packoffset(c109);
    float4 _8_m82 : packoffset(c110);
    float4 _8_m83 : packoffset(c111);
    float4 _8_m84 : packoffset(c112);
    float4 _8_m85 : packoffset(c113);
    float4 _8_m86 : packoffset(c114);
    float4 _8_m87 : packoffset(c115);
    float4 _8_m88 : packoffset(c116);
    float4 _8_m89 : packoffset(c117);
    float4 _8_m90 : packoffset(c118);
    float4 _8_m91 : packoffset(c119);
    float4 _8_m92 : packoffset(c120);
    float4 _8_m93 : packoffset(c121);
    float4 _8_m94 : packoffset(c122);
    float4 _8_m95 : packoffset(c123);
    float4 _8_m96 : packoffset(c124);
    float4 _8_m97 : packoffset(c125);
    float4 _8_m98 : packoffset(c126);
    float4 _8_m99[2] : packoffset(c127);
    float4 _8_m100[2] : packoffset(c129);
    float _8_m101 : packoffset(c131);
    float _8_m102 : packoffset(c131.y);
    float _8_m103 : packoffset(c131.z);
    float _8_m104 : packoffset(c131.w);
    float4 _8_m105 : packoffset(c132);
    float4 _8_m106 : packoffset(c133);
    float4 _8_m107 : packoffset(c134);
    float4 _8_m108 : packoffset(c135);
    float4 _8_m109 : packoffset(c136);
    float4 _8_m110 : packoffset(c137);
    float4 _8_m111 : packoffset(c138);
    float4 _8_m112 : packoffset(c139);
    float4 _8_m113 : packoffset(c140);
    float4 _8_m114 : packoffset(c141);
    float4 _8_m115 : packoffset(c142);
    float4 _8_m116 : packoffset(c143);
    float4 _8_m117 : packoffset(c144);
    float4 _8_m118 : packoffset(c145);
    float4 _8_m119 : packoffset(c146);
    float4 _8_m120 : packoffset(c147);
    float4 _8_m121 : packoffset(c148);
    float4 _8_m122 : packoffset(c149);
    float4 _8_m123 : packoffset(c150);
    float4 _8_m124 : packoffset(c151);
    float4 _8_m125 : packoffset(c152);
    float4 _8_m126 : packoffset(c153);
    float4 _8_m127 : packoffset(c154);
    float4 _8_m128 : packoffset(c155);
    float4 _8_m129 : packoffset(c156);
    float4 _8_m130 : packoffset(c157);
    float4 _8_m131 : packoffset(c158);
    float4 _8_m132 : packoffset(c159);
    float4 _8_m133 : packoffset(c160);
    float4 _8_m134 : packoffset(c161);
    column_major float4x4 _8_m135 : packoffset(c162);
    float4 _8_m136 : packoffset(c166);
    float4 _8_m137 : packoffset(c167);
    float4 _8_m138[32] : packoffset(c168);
};

[[vk::binding(2, 1)]]
cbuffer _13_14 : register(b2)
{
    float4 _14_m0 : packoffset(c0);
    float4 _14_m1 : packoffset(c1);
    float4 _14_m2 : packoffset(c2);
    float4 _14_m3 : packoffset(c3);
    float4 _14_m4 : packoffset(c4);
    float4 _14_m5 : packoffset(c5);
    float4 _14_m6 : packoffset(c6);
    float4 _14_m7 : packoffset(c7);
    float4 _14_m8 : packoffset(c8);
    float4 _14_m9 : packoffset(c9);
};

[[vk::binding(10, 0)]] ByteAddressBuffer _21 : register(t10);
[[vk::binding(9, 0)]] SamplerState _10 : register(s9);
[[vk::binding(3, 0)]] Texture2D<float4> _15 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _16 : register(t4);
[[vk::binding(5, 0)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(6, 0)]] Texture2D<float4> _18 : register(t6);
[[vk::binding(7, 0)]] Texture2D<float4> _19 : register(t7);
[[vk::binding(8, 0)]] Texture2D<float4> _20 : register(t8);
[[vk::binding(0, 0)]] RWTexture2D<float3> _23 : register(u0);
[[vk::binding(1, 0)]] RWTexture2D<unorm float2> _25 : register(u1);
[[vk::binding(2, 0)]] RWTexture2D<unorm float> _27 : register(u2);

static uint3 gl_WorkGroupID;
static uint3 gl_LocalInvocationID;
struct SPIRV_Cross_Input
{
    uint3 gl_WorkGroupID : SV_GroupID;
    uint3 gl_LocalInvocationID : SV_GroupThreadID;
};

void comp_main()
{
    do
    {
        uint _127 = _21.Load(gl_WorkGroupID.x * 4 + 0);
        uint2 _133 = (uint2((_127 >> 16u) & 65535u, _127 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_133.x >= uint(_14_m0.x)) || (_133.y >= uint(_14_m0.y)))
        {
            break;
        }
        float4 _154 = _27[_133].xxxx;
        float _155 = _154.x;
        float _167 = (_19.SampleLevel(_10, (float2(_133) + 0.5f.xx) * _14_m0.zw, 0.0f).x > 0.5f) ? _14_m3.x : max(ceil(_14_m3.x * 0.125f), 4.0f);
        if (shader_injection.improved_ssr >= 0.5f)
        {
            bool renodx_full_trace = _19.SampleLevel(_10, (float2(_133) + 0.5f.xx) * _14_m0.zw, 0.0f).x > 0.5f;
            _167 = max(_167, renodx_full_trace ? 256.0f : 32.0f);
        }
        int2 _168 = int2(_133);
        float2 _665;
        float _666;
        float2 _667;
        do
        {
            float2 _172 = float2(_168) + 0.5f.xx;
            float2 _173 = _172 * _14_m0.zw;
            if (_155 <= 0.001000000047497451305389404296875f)
            {
                _665 = 0.0f.xx;
                _666 = _155;
                _667 = _173;
                break;
            }
            float4 _180 = _17.SampleLevel(_10, _173, 0.0f);
            float _181 = _180.x;
            float2 _189 = (_173 * 2.0f) - 1.0f.xx;
            float _190 = _189.x;
            float3 _192 = float3(_190, _189.y, _181);
            float4 _195 = float4(_190, _189.y, _181, 1.0f);
            float4 _196 = mul(_6_m3, _195);
            float3 _200 = _196.xyz / _196.w.xxx;
            _200.y = -_200.y;
            float4 _210 = _20.Load(int3(int3(_168, 0).xy, 0));
            float2 _213 = (_210.xy * 2.0f) - 1.0f.xx;
            float _217 = 1.0f - dot(1.0f.xx, abs(_213));
            float3 _219 = float3(_213.x, _217, _213.y);
            float3 _231;
            if (_217 < 0.0f)
            {
                float2 _226 = _219.xz;
                bool2 _227 = bool2(_226.x >= 0.0f.xx.x, _226.y >= 0.0f.xx.y);
                float2 _229 = (1.0f.xx - abs(_219.zx)) * float2(_227.x ? 1.0f.xx.x : (-1.0f).xx.x, _227.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _231 = float3(_229.x, _219.y, _229.y);
            }
            else
            {
                _231 = _219;
            }
            float3 _232 = normalize(_231);
            float _233 = _210.z;
            float _234 = _233 * _233;
            float _235 = _234 * _234;
            float4 _254 = mul(_6_m2, float4(reflect(normalize(_200), mul(float3x3(_6_m0[0].xyz, _6_m0[1].xyz, _6_m0[2].xyz), _232)), 0.0f));
            _254.y = -_254.y;
            float4 _258 = _254 + _195;
            float3 _263 = (_258.xyz / _258.w.xxx) - _192;
            float2 _264 = _192.xy;
            float2 _265 = _263.xy;
            float _267 = 0.5f * length(_265);
            float2 _276 = 1.0f.xx - (max(abs(_265 + (_264 * _267)) - _267.xx, 0.0f.xx) / abs(_265));
            float3 _281 = _263 * (min(_276.x, _276.y) / _267);
            float _292 = _281.z;
            float _295 = max(abs(_292) / _167, 9.9999997473787516355514526367188e-05f);
            float3 _306 = float3(_281.xy * 0.5f.xx, _292) * (1.0f / _167);
            float2 _310 = abs(_306.xy * _14_m0.xy);
            float _313 = max(_310.x, _310.y);
            float3 _319 = float3((_264 * 0.5f.xx) + 0.5f.xx, _181) + (_306 * ((_313 < 1.0f) ? (1.0f / (_313 + 0.001000000047497451305389404296875f)) : frac(52.98291778564453125f * frac(dot(_172 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_14_m1.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))))));
            float _327 = _319.z - _17.SampleLevel(_10, _319.xy, 0.0f).x;
            float3 _329;
            float3 _334;
            _329 = _319;
            _334 = 0.0f.xxx;
            float3 _330;
            float _336;
            float3 _414;
            bool _415;
            float _332 = 0.0f;
            float _335 = _327;
            for (;;)
            {
                if (_332 < _167)
                {
                    float4 _343 = _329.xyxy + (_306.xyxy * float4(1.0f, 1.0f, 2.0f, 2.0f));
                    float4 _345 = _329.xyxy + (_306.xyxy * float4(3.0f, 3.0f, 4.0f, 4.0f));
                    float4 _375 = (_329.zzzz + (_306.zzzz * float4(1.0f, 2.0f, 3.0f, 4.0f))) - float4(_17.SampleLevel(_10, _343.xy, 0.0f).x, _17.SampleLevel(_10, _343.zw, 0.0f).x, _17.SampleLevel(_10, _345.xy, 0.0f).x, _17.SampleLevel(_10, _345.zw, 0.0f).x);
                    float4 _376 = _295.xxxx;
                    float4 _378 = abs(_375 + _376);
                    bool4 _379 = bool4(_378.x < _376.x, _378.y < _376.y, _378.z < _376.z, _378.w < _376.w);
                    [branch]
                    if (any(_379))
                    {
                        float _383 = _375.z;
                        bool _385 = _379.z;
                        float _389;
                        [flatten]
                        if (_385)
                        {
                            _389 = _375.y;
                        }
                        else
                        {
                            _389 = _383;
                        }
                        bool _392 = _379.y;
                        float _397;
                        float _398;
                        [flatten]
                        if (_392)
                        {
                            _397 = _375.y;
                            _398 = _375.x;
                        }
                        else
                        {
                            _397 = _385 ? _383 : _375.w;
                            _398 = _389;
                        }
                        bool _400 = _379.x;
                        float _404;
                        [flatten]
                        if (_400)
                        {
                            _404 = _375.x;
                        }
                        else
                        {
                            _404 = _397;
                        }
                        float _405 = _400 ? _335 : _398;
                        _414 = _329 + (_306 * ((_400 ? 0.0f : (_392 ? 1.0f : (_385 ? 2.0f : 3.0f))) + clamp(_405 / (_405 - _404), 0.0f, 1.0f)));
                        _415 = true;
                        break;
                    }
                    _330 = _329 + (_306 * 4.0f);
                    _336 = _375.w;
                    _329 = _330;
                    _332 += 4.0f;
                    _334 = _330;
                    _335 = _336;
                    continue;
                }
                else
                {
                    _414 = _334;
                    _415 = false;
                    break;
                }
            }
            bool4 _416 = _415.xxxx;
            float4 _420 = float4(_414, 1.0f);
            float4 _421 = float4(_414, 0.0f);
            float4 _422 = float4(_416.x ? _420.x : _421.x, _416.y ? _420.y : _421.y, _416.z ? _420.z : _421.z, _416.w ? _420.w : _421.w);
            float _510;
            float2 _511;
            float2 _512;
            [branch]
            if (_422.w == 1.0f)
            {
                float2 _427 = _422.xy;
                float _430 = _422.x;
                float _431 = _422.y;
                float _435 = min(1.0f - max(_430, _431), min(_430, _431));
                float _440 = _155 * clamp((_435 > _14_m1.y) ? 1.0f : (_435 / _14_m1.y), 0.0f, 1.0f);
                float2 _445 = _18.SampleLevel(_10, _427, 0.0f).xy;
                float2 _452 = (abs(_445) * 2.0f) - 1.0f.xx;
                float2 _453 = _452 * _452;
                float2 _459 = ((_453 * _453) * float2(int2(sign(_445 - 0.5f.xx)))) * (1.0f - _14_m2.z);
                float2 _460 = _427 - _459;
                float4 _464 = _16.SampleLevel(_10, _460, 0.0f);
                float _465 = _464.x;
                float _509;
                if ((_465 > 0.0f) && (_14_m2.z < 0.5f))
                {
                    float2 _474 = (_460 * 2.0f) - 1.0f.xx;
                    float4 _477 = float4(_474, _465, 1.0f);
                    _477.y = -_474.y;
                    float4 _480 = mul(_6_m16, _477);
                    float _485 = _422.z;
                    float2 _489 = (_427 * 2.0f) - 1.0f.xx;
                    float4 _492 = float4(_489, _485, 1.0f);
                    _492.y = -_489.y;
                    float4 _495 = mul(_6_m6, _492);
                    float _502 = 1.0f / ((_8_m2.z * _485) + _8_m2.w);
                    _509 = (length((_480.xyz / _480.w.xxx) - (_495.xyz / _495.w.xxx)) > ((_502 * _502) * 0.00999999977648258209228515625f)) ? 0.0f : _440;
                }
                else
                {
                    _509 = _440;
                }
                _510 = _509;
                _511 = _459;
                _512 = _460;
            }
            else
            {
                _510 = 0.0f;
                _511 = 0.0f.xx;
                _512 = _173;
            }
            float2 _517 = _18.SampleLevel(_10, _512, 0.0f).xy;
            float2 _524 = (abs(_517) * 2.0f) - 1.0f.xx;
            float2 _525 = _524 * _524;
            float _546 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _235) + (-1.0f))));
            float4 _549 = mul(_6_m6, _195);
            float4 _552 = _549 / _549.w.xxxx;
            float4 _560 = mul(_6_m6, float4((_422.xy * 2.0f) - 1.0f.xx, _422.z, 1.0f));
            float3 _567 = _552.xyz;
            float3 _569 = normalize(_6_m11.xyz - _567);
            float _570 = distance(_6_m11.xyz, _567);
            bool3 _574 = (abs(_232.z) < 0.999000012874603271484375f).xxx;
            float3 _577 = normalize(cross(float3(_574.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _574.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _574.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _232));
            float _579 = distance(_560 / _560.w.xxxx, _552);
            float3 _583 = cross(_577, _569);
            float3 _584 = -_569;
            float3 _588 = cos(_546).xxx;
            float _591 = sin(_546);
            float3 _595 = _6_m11.xyz - (_569 * _570);
            float3 _598 = cross(cross(_232, _577), _569);
            float4 _614 = mul(_6_m5, float4((_6_m11.xyz - (_569 * (_579 + _570))) - _6_m11.xyz, 1.0f));
            float2 _622 = (((_614.xy / _614.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy;
            float4 _628 = mul(_6_m5, float4((_595 + ((lerp(_583 * dot(_583, _584), _584, _588) + (cross(_583, _584) * _591)) * _579)) - _6_m11.xyz, 1.0f));
            float4 _642 = mul(_6_m5, float4((_595 + ((lerp(_598 * dot(_598, _584), _584, _588) + (cross(_598, _584) * _591)) * _579)) - _6_m11.xyz, 1.0f));
            _665 = float2(exp((-length((((_525 * _525) * float2(int2(sign(_517 - 0.5f.xx)))) + _511) * _8_m0.xy)) * clamp(log(0.0199999995529651641845703125f / ((_8_m2.z * _181) + _8_m2.w)) + 0.00999999977648258209228515625f, 0.0f, 1.0f)), (_235 <= 9.9999997473787516355514526367188e-05f) ? 0.0f : (clamp(log2(sqrt(pow(distance(_622, (((_628.xy / _628.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f) + pow(distance(_622, (((_642.xy / _642.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f)) * 0.5f), 0.0f, _14_m5.y) / _14_m5.y));
            if (shader_injection.improved_ssr >= 0.5f)
            {
                _665.y = saturate((_665.y - 0.25f) / 0.75f);
            }
            _666 = _510;
            _667 = _512;
            break;
        } while(false);
        float4 _671 = _15.SampleLevel(_10, _667, 0.0f);
        _23[_133] = _671.xyz * (1.0f / (max(max(_671.x, _671.y), _671.z) + 1.0f));
        _25[_133] = _665;
        _27[_133] = _666;
        break;
    } while(false);
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_WorkGroupID = stage_input.gl_WorkGroupID;
    gl_LocalInvocationID = stage_input.gl_LocalInvocationID;
    comp_main();
}
