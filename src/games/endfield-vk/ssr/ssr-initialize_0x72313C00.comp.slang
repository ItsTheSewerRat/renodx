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
cbuffer _11_12 : register(b1)
{
    float4 _12_m0 : packoffset(c0);
    float4 _12_m1 : packoffset(c1);
    float4 _12_m2 : packoffset(c2);
    float4 _12_m3 : packoffset(c3);
    float4 _12_m4 : packoffset(c4);
    float4 _12_m5 : packoffset(c5);
    float4 _12_m6 : packoffset(c6);
    float4 _12_m7 : packoffset(c7);
    float4 _12_m8 : packoffset(c8);
    float4 _12_m9 : packoffset(c9);
};

[[vk::binding(6, 0)]] ByteAddressBuffer _15 : register(t6);
[[vk::binding(5, 0)]] SamplerState _8 : register(s5);
[[vk::binding(3, 0)]] Texture2D<float4> _13 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _14 : register(t4);
[[vk::binding(0, 0)]] RWTexture2D<unorm float2> _17 : register(u0);
[[vk::binding(1, 0)]] RWTexture2D<unorm float2> _18 : register(u1);
[[vk::binding(2, 0)]] RWTexture2D<unorm float> _20 : register(u2);

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
        uint _92 = ((uint(_12_m6.z) * 2u) - 1u) - gl_WorkGroupID.x;
        uint _94 = _15.Load(_92 * 4 + 0);
        uint2 _100 = (uint2((_94 >> 16u) & 65535u, _94 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_100.x >= uint(_12_m0.x)) || (_100.y >= uint(_12_m0.y)))
        {
            break;
        }
        int2 _115 = int2(_100);
        float2 _120 = (float2(_115) + 0.5f.xx) * _12_m0.zw;
        float4 _124 = _13.SampleLevel(_8, _120, 0.0f);
        float _125 = _124.x;
        float2 _294;
        if (_125 != 0.0f)
        {
            float4 _134 = _14.Load(int3(int3(_115, 0).xy, 0));
            float2 _137 = (_134.xy * 2.0f) - 1.0f.xx;
            float _141 = 1.0f - dot(1.0f.xx, abs(_137));
            float3 _143 = float3(_137.x, _141, _137.y);
            float3 _155;
            if (_141 < 0.0f)
            {
                float2 _150 = _143.xz;
                bool2 _151 = bool2(_150.x >= 0.0f.xx.x, _150.y >= 0.0f.xx.y);
                float2 _153 = (1.0f.xx - abs(_143.zx)) * float2(_151.x ? 1.0f.xx.x : (-1.0f).xx.x, _151.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _155 = float3(_153.x, _143.y, _153.y);
            }
            else
            {
                _155 = _143;
            }
            float3 _156 = normalize(_155);
            float _157 = _134.z;
            float _158 = _157 * _157;
            float _159 = _158 * _158;
            float2 _293;
            if (_159 > 9.9999997473787516355514526367188e-05f)
            {
                float _174 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _159) + (-1.0f))));
                float4 _178 = mul(_6_m6, float4((_120 * 2.0f) - 1.0f.xx, _125, 1.0f));
                float4 _181 = _178 / _178.w.xxxx;
                float4 _188 = mul(_6_m6, float4((float3(_120, _125).xy * 2.0f) - 1.0f.xx, _125, 1.0f));
                float3 _195 = _181.xyz;
                float3 _197 = normalize(_6_m11.xyz - _195);
                float _198 = distance(_6_m11.xyz, _195);
                bool3 _202 = (abs(_156.z) < 0.999000012874603271484375f).xxx;
                float3 _205 = normalize(cross(float3(_202.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _202.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _202.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _156));
                float _207 = distance(_188 / _188.w.xxxx, _181);
                float3 _211 = cross(_205, _197);
                float3 _212 = -_197;
                float3 _216 = cos(_174).xxx;
                float _219 = sin(_174);
                float3 _223 = _6_m11.xyz - (_197 * _198);
                float3 _226 = cross(cross(_156, _205), _197);
                float4 _242 = mul(_6_m5, float4((_6_m11.xyz - (_197 * (_207 + _198))) - _6_m11.xyz, 1.0f));
                float2 _251 = (((_242.xy / _242.w.xx).xy * 0.5f) + 0.5f.xx) * _12_m0.xy;
                float4 _257 = mul(_6_m5, float4((_223 + ((lerp(_211 * dot(_211, _212), _212, _216) + (cross(_211, _212) * _219)) * _207)) - _6_m11.xyz, 1.0f));
                float4 _271 = mul(_6_m5, float4((_223 + ((lerp(_226 * dot(_226, _212), _212, _216) + (cross(_226, _212) * _219)) * _207)) - _6_m11.xyz, 1.0f));
                float2 _292 = 0.0f.xx;
                _292.y = clamp(log2(sqrt(pow(distance(_251, (((_257.xy / _257.w.xx).xy * 0.5f) + 0.5f.xx) * _12_m0.xy), 2.0f) + pow(distance(_251, (((_271.xy / _271.w.xx).xy * 0.5f) + 0.5f.xx) * _12_m0.xy), 2.0f)) * 0.5f), 0.0f, _12_m5.y) / _12_m5.y;
                if (shader_injection.improved_ssr >= 0.5f)
                {
                    _292.y = saturate((_292.y - 0.25f) / 0.75f);
                }
                _293 = _292;
            }
            else
            {
                _293 = 0.0f.xx;
            }
            _294 = _293;
        }
        else
        {
            _294 = 0.0f.xx;
        }
        _17[_100] = (float2(_100) + 0.5f.xx) * _12_m0.zw;
        _18[_100] = _294;
        _20[_100] = 0.0f;
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
