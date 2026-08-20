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

[[vk::binding(9, 0)]] ByteAddressBuffer _20 : register(t9);
[[vk::binding(8, 0)]] SamplerState _10 : register(s8);
[[vk::binding(3, 0)]] Texture2D<float4> _15 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _16 : register(t4);
[[vk::binding(5, 0)]] Texture2D<float4> _17 : register(t5);
[[vk::binding(6, 0)]] Texture2D<float4> _18 : register(t6);
[[vk::binding(7, 0)]] Texture2D<float4> _19 : register(t7);
[[vk::binding(0, 0)]] RWTexture2D<float3> _22 : register(u0);
[[vk::binding(1, 0)]] RWTexture2D<unorm float2> _24 : register(u1);
[[vk::binding(2, 0)]] RWTexture2D<unorm float> _26 : register(u2);

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
        uint _128 = uint(_14_m6.z) + gl_WorkGroupID.x;
        uint _130 = _20.Load(_128 * 4 + 0);
        uint2 _136 = (uint2((_130 >> 16u) & 65535u, _130 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_136.x >= uint(_14_m0.x)) || (_136.y >= uint(_14_m0.y)))
        {
            break;
        }
        float4 _152 = _26[_136].xxxx;
        float _153 = _152.x;
        float _158 = max(ceil(_14_m3.x * 0.125f), 4.0f);
        // RenoDX code start: raise the low-quality ray floor when Improved SSR is enabled.
        if (shader_injection.improved_ssr >= 0.5f)
        {
            _158 = max(_158, 32.0f);
        }
        // RenoDX code end
        int2 _159 = int2(_136);
        float2 _658;
        float _659;
        float2 _660;
        do
        {
            float2 _163 = float2(_159) + 0.5f.xx;
            float2 _166 = _163 * _14_m0.zw;
            if (_153 <= 0.001000000047497451305389404296875f)
            {
                _658 = 0.0f.xx;
                _659 = _153;
                _660 = _166;
                break;
            }
            float4 _173 = _17.SampleLevel(_10, _166, 0.0f);
            float _174 = _173.x;
            float2 _182 = (_166 * 2.0f) - 1.0f.xx;
            float _183 = _182.x;
            float3 _185 = float3(_183, _182.y, _174);
            float4 _188 = float4(_183, _182.y, _174, 1.0f);
            float4 _189 = mul(_6_m3, _188);
            float3 _193 = _189.xyz / _189.w.xxx;
            _193.y = -_193.y;
            float4 _203 = _19.Load(int3(int3(_159, 0).xy, 0));
            float2 _206 = (_203.xy * 2.0f) - 1.0f.xx;
            float _210 = 1.0f - dot(1.0f.xx, abs(_206));
            float3 _212 = float3(_206.x, _210, _206.y);
            float3 _224;
            if (_210 < 0.0f)
            {
                float2 _219 = _212.xz;
                bool2 _220 = bool2(_219.x >= 0.0f.xx.x, _219.y >= 0.0f.xx.y);
                float2 _222 = (1.0f.xx - abs(_212.zx)) * float2(_220.x ? 1.0f.xx.x : (-1.0f).xx.x, _220.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _224 = float3(_222.x, _212.y, _222.y);
            }
            else
            {
                _224 = _212;
            }
            float3 _225 = normalize(_224);
            float _226 = _203.z;
            float _227 = _226 * _226;
            float _228 = _227 * _227;
            float4 _247 = mul(_6_m2, float4(reflect(normalize(_193), mul(float3x3(_6_m0[0].xyz, _6_m0[1].xyz, _6_m0[2].xyz), _225)), 0.0f));
            _247.y = -_247.y;
            float4 _251 = _247 + _188;
            float3 _256 = (_251.xyz / _251.w.xxx) - _185;
            float2 _257 = _185.xy;
            float2 _258 = _256.xy;
            float _260 = 0.5f * length(_258);
            float2 _269 = 1.0f.xx - (max(abs(_258 + (_257 * _260)) - _260.xx, 0.0f.xx) / abs(_258));
            float3 _274 = _256 * (min(_269.x, _269.y) / _260);
            float _285 = _274.z;
            float _288 = max(abs(_285) / _158, 9.9999997473787516355514526367188e-05f);
            float3 _299 = float3(_274.xy * 0.5f.xx, _285) * (1.0f / _158);
            float2 _303 = abs(_299.xy * _14_m0.xy);
            float _306 = max(_303.x, _303.y);
            float3 _312 = float3((_257 * 0.5f.xx) + 0.5f.xx, _174) + (_299 * ((_306 < 1.0f) ? (1.0f / (_306 + 0.001000000047497451305389404296875f)) : frac(52.98291778564453125f * frac(dot(_163 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_14_m1.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))))));
            float _320 = _312.z - _17.SampleLevel(_10, _312.xy, 0.0f).x;
            float3 _322;
            float3 _327;
            _322 = _312;
            _327 = 0.0f.xxx;
            float3 _323;
            float _329;
            float3 _407;
            bool _408;
            float _325 = 0.0f;
            float _328 = _320;
            for (;;)
            {
                if (_325 < _158)
                {
                    float4 _334 = _299.xyxy;
                    float4 _336 = _322.xyxy + (_334 * float4(1.0f, 1.0f, 2.0f, 2.0f));
                    float4 _338 = _322.xyxy + (_334 * float4(3.0f, 3.0f, 4.0f, 4.0f));
                    float4 _368 = (_322.zzzz + (_299.zzzz * float4(1.0f, 2.0f, 3.0f, 4.0f))) - float4(_17.SampleLevel(_10, _336.xy, 0.0f).x, _17.SampleLevel(_10, _336.zw, 0.0f).x, _17.SampleLevel(_10, _338.xy, 0.0f).x, _17.SampleLevel(_10, _338.zw, 0.0f).x);
                    float4 _369 = _288.xxxx;
                    float4 _371 = abs(_368 + _369);
                    bool4 _372 = bool4(_371.x < _369.x, _371.y < _369.y, _371.z < _369.z, _371.w < _369.w);
                    [branch]
                    if (any(_372))
                    {
                        float _376 = _368.z;
                        bool _378 = _372.z;
                        float _382;
                        [flatten]
                        if (_378)
                        {
                            _382 = _368.y;
                        }
                        else
                        {
                            _382 = _376;
                        }
                        bool _385 = _372.y;
                        float _390;
                        float _391;
                        [flatten]
                        if (_385)
                        {
                            _390 = _368.y;
                            _391 = _368.x;
                        }
                        else
                        {
                            _390 = _378 ? _376 : _368.w;
                            _391 = _382;
                        }
                        bool _393 = _372.x;
                        float _397;
                        [flatten]
                        if (_393)
                        {
                            _397 = _368.x;
                        }
                        else
                        {
                            _397 = _390;
                        }
                        float _398 = _393 ? _328 : _391;
                        _407 = _322 + (_299 * ((_393 ? 0.0f : (_385 ? 1.0f : (_378 ? 2.0f : 3.0f))) + clamp(_398 / (_398 - _397), 0.0f, 1.0f)));
                        _408 = true;
                        break;
                    }
                    _323 = _322 + (_299 * 4.0f);
                    _329 = _368.w;
                    _322 = _323;
                    _325 += 4.0f;
                    _327 = _323;
                    _328 = _329;
                    continue;
                }
                else
                {
                    _407 = _327;
                    _408 = false;
                    break;
                }
            }
            bool4 _409 = _408.xxxx;
            float4 _413 = float4(_407, 1.0f);
            float4 _414 = float4(_407, 0.0f);
            float4 _415 = float4(_409.x ? _413.x : _414.x, _409.y ? _413.y : _414.y, _409.z ? _413.z : _414.z, _409.w ? _413.w : _414.w);
            float _503;
            float2 _504;
            float2 _505;
            [branch]
            if (_415.w == 1.0f)
            {
                float2 _420 = _415.xy;
                float _423 = _415.x;
                float _424 = _415.y;
                float _428 = min(1.0f - max(_423, _424), min(_423, _424));
                float _433 = _153 * clamp((_428 > _14_m1.y) ? 1.0f : (_428 / _14_m1.y), 0.0f, 1.0f);
                float2 _438 = _18.SampleLevel(_10, _420, 0.0f).xy;
                float2 _445 = (abs(_438) * 2.0f) - 1.0f.xx;
                float2 _446 = _445 * _445;
                float2 _452 = ((_446 * _446) * float2(int2(sign(_438 - 0.5f.xx)))) * (1.0f - _14_m2.z);
                float2 _453 = _420 - _452;
                float4 _457 = _16.SampleLevel(_10, _453, 0.0f);
                float _458 = _457.x;
                float _502;
                if ((_458 > 0.0f) && (_14_m2.z < 0.5f))
                {
                    float2 _467 = (_453 * 2.0f) - 1.0f.xx;
                    float4 _470 = float4(_467, _458, 1.0f);
                    _470.y = -_467.y;
                    float4 _473 = mul(_6_m16, _470);
                    float _478 = _415.z;
                    float2 _482 = (_420 * 2.0f) - 1.0f.xx;
                    float4 _485 = float4(_482, _478, 1.0f);
                    _485.y = -_482.y;
                    float4 _488 = mul(_6_m6, _485);
                    float _495 = 1.0f / ((_8_m2.z * _478) + _8_m2.w);
                    _502 = (length((_473.xyz / _473.w.xxx) - (_488.xyz / _488.w.xxx)) > ((_495 * _495) * 0.00999999977648258209228515625f)) ? 0.0f : _433;
                }
                else
                {
                    _502 = _433;
                }
                _503 = _502;
                _504 = _452;
                _505 = _453;
            }
            else
            {
                _503 = 0.0f;
                _504 = 0.0f.xx;
                _505 = _166;
            }
            float2 _510 = _18.SampleLevel(_10, _505, 0.0f).xy;
            float2 _517 = (abs(_510) * 2.0f) - 1.0f.xx;
            float2 _518 = _517 * _517;
            float _539 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _228) + (-1.0f))));
            float4 _542 = mul(_6_m6, _188);
            float4 _545 = _542 / _542.w.xxxx;
            float4 _553 = mul(_6_m6, float4((_415.xy * 2.0f) - 1.0f.xx, _415.z, 1.0f));
            float3 _560 = _545.xyz;
            float3 _562 = normalize(_6_m11.xyz - _560);
            float _563 = distance(_6_m11.xyz, _560);
            bool3 _567 = (abs(_225.z) < 0.999000012874603271484375f).xxx;
            float3 _570 = normalize(cross(float3(_567.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _567.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _567.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _225));
            float _572 = distance(_553 / _553.w.xxxx, _545);
            float3 _576 = cross(_570, _562);
            float3 _577 = -_562;
            float3 _581 = cos(_539).xxx;
            float _584 = sin(_539);
            float3 _588 = _6_m11.xyz - (_562 * _563);
            float3 _591 = cross(cross(_225, _570), _562);
            float4 _607 = mul(_6_m5, float4((_6_m11.xyz - (_562 * (_572 + _563))) - _6_m11.xyz, 1.0f));
            float2 _615 = (((_607.xy / _607.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy;
            float4 _621 = mul(_6_m5, float4((_588 + ((lerp(_576 * dot(_576, _577), _577, _581) + (cross(_576, _577) * _584)) * _572)) - _6_m11.xyz, 1.0f));
            float4 _635 = mul(_6_m5, float4((_588 + ((lerp(_591 * dot(_591, _577), _577, _581) + (cross(_591, _577) * _584)) * _572)) - _6_m11.xyz, 1.0f));
            _658 = float2(exp((-length((((_518 * _518) * float2(int2(sign(_510 - 0.5f.xx)))) + _504) * _8_m0.xy)) * clamp(log(0.0199999995529651641845703125f / ((_8_m2.z * _174) + _8_m2.w)) + 0.00999999977648258209228515625f, 0.0f, 1.0f)), (_228 <= 9.9999997473787516355514526367188e-05f) ? 0.0f : (clamp(log2(sqrt(pow(distance(_615, (((_621.xy / _621.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f) + pow(distance(_615, (((_635.xy / _635.w.xx).xy * 0.5f) + 0.5f.xx) * _14_m0.xy), 2.0f)) * 0.5f), 0.0f, _14_m5.y) / _14_m5.y));
            // RenoDX code start: favor sharper temporal color data when Improved SSR is enabled.
            if (shader_injection.improved_ssr >= 0.5f)
            {
                _658.y = saturate((_658.y - 0.25f) / 0.75f);
            }
            // RenoDX code end
            _659 = _503;
            _660 = _505;
            break;
        } while(false);
        float4 _664 = _15.SampleLevel(_10, _660, 0.0f);
        _22[_136] = _664.xyz * (1.0f / (max(max(_664.x, _664.y), _664.z) + 1.0f));
        _24[_136] = _658;
        _26[_136] = _659;
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
