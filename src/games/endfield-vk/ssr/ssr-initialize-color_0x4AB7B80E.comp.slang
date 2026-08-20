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
cbuffer _12_13 : register(b1)
{
    float4 _13_m0 : packoffset(c0);
    float4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c2);
    float4 _13_m3 : packoffset(c3);
    float4 _13_m4 : packoffset(c4);
    float4 _13_m5 : packoffset(c5);
    float4 _13_m6 : packoffset(c6);
    float4 _13_m7 : packoffset(c7);
    float4 _13_m8 : packoffset(c8);
    float4 _13_m9 : packoffset(c9);
};

[[vk::binding(8, 0)]] ByteAddressBuffer _17 : register(t8);
[[vk::binding(6, 0)]] SamplerState _8 : register(s6);
[[vk::binding(7, 0)]] SamplerState _9 : register(s7);
[[vk::binding(3, 0)]] Texture2D<float4> _14 : register(t3);
[[vk::binding(4, 0)]] Texture2D<float4> _15 : register(t4);
[[vk::binding(5, 0)]] Texture2D<float4> _16 : register(t5);
[[vk::binding(0, 0)]] RWTexture2D<float3> _19 : register(u0);
[[vk::binding(1, 0)]] RWTexture2D<unorm float2> _21 : register(u1);
[[vk::binding(2, 0)]] RWTexture2D<unorm float> _23 : register(u2);

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
        uint _96 = ((uint(_13_m6.z) * 2u) - 1u) - gl_WorkGroupID.x;
        uint _98 = _17.Load(_96 * 4 + 0);
        uint2 _104 = (uint2((_98 >> 16u) & 65535u, _98 & 65535u) * uint2(8u, 8u)) + gl_LocalInvocationID.xy;
        if ((_104.x >= uint(_13_m0.x)) || (_104.y >= uint(_13_m0.y)))
        {
            break;
        }
        int2 _119 = int2(_104);
        float2 _124 = (float2(_119) + 0.5f.xx) * _13_m0.zw;
        float4 _128 = _15.SampleLevel(_8, _124, 0.0f);
        float _129 = _128.x;
        float2 _298;
        if (_129 != 0.0f)
        {
            float4 _138 = _16.Load(int3(int3(_119, 0).xy, 0));
            float2 _141 = (_138.xy * 2.0f) - 1.0f.xx;
            float _145 = 1.0f - dot(1.0f.xx, abs(_141));
            float3 _147 = float3(_141.x, _145, _141.y);
            float3 _159;
            if (_145 < 0.0f)
            {
                float2 _154 = _147.xz;
                bool2 _155 = bool2(_154.x >= 0.0f.xx.x, _154.y >= 0.0f.xx.y);
                float2 _157 = (1.0f.xx - abs(_147.zx)) * float2(_155.x ? 1.0f.xx.x : (-1.0f).xx.x, _155.y ? 1.0f.xx.y : (-1.0f).xx.y);
                _159 = float3(_157.x, _147.y, _157.y);
            }
            else
            {
                _159 = _147;
            }
            float3 _160 = normalize(_159);
            float _161 = _138.z;
            float _162 = _161 * _161;
            float _163 = _162 * _162;
            float2 _297;
            if (_163 > 9.9999997473787516355514526367188e-05f)
            {
                float _178 = acos(pow(0.24400000274181365966796875f, 1.0f / ((2.0f / _163) + (-1.0f))));
                float4 _182 = mul(_6_m6, float4((_124 * 2.0f) - 1.0f.xx, _129, 1.0f));
                float4 _185 = _182 / _182.w.xxxx;
                float4 _192 = mul(_6_m6, float4((float3(_124, _129).xy * 2.0f) - 1.0f.xx, _129, 1.0f));
                float3 _199 = _185.xyz;
                float3 _201 = normalize(_6_m11.xyz - _199);
                float _202 = distance(_6_m11.xyz, _199);
                bool3 _206 = (abs(_160.z) < 0.999000012874603271484375f).xxx;
                float3 _209 = normalize(cross(float3(_206.x ? float3(0.0f, 0.0f, 1.0f).x : float3(1.0f, 0.0f, 0.0f).x, _206.y ? float3(0.0f, 0.0f, 1.0f).y : float3(1.0f, 0.0f, 0.0f).y, _206.z ? float3(0.0f, 0.0f, 1.0f).z : float3(1.0f, 0.0f, 0.0f).z), _160));
                float _211 = distance(_192 / _192.w.xxxx, _185);
                float3 _215 = cross(_209, _201);
                float3 _216 = -_201;
                float3 _220 = cos(_178).xxx;
                float _223 = sin(_178);
                float3 _227 = _6_m11.xyz - (_201 * _202);
                float3 _230 = cross(cross(_160, _209), _201);
                float4 _246 = mul(_6_m5, float4((_6_m11.xyz - (_201 * (_211 + _202))) - _6_m11.xyz, 1.0f));
                float2 _255 = (((_246.xy / _246.w.xx).xy * 0.5f) + 0.5f.xx) * _13_m0.xy;
                float4 _261 = mul(_6_m5, float4((_227 + ((lerp(_215 * dot(_215, _216), _216, _220) + (cross(_215, _216) * _223)) * _211)) - _6_m11.xyz, 1.0f));
                float4 _275 = mul(_6_m5, float4((_227 + ((lerp(_230 * dot(_230, _216), _216, _220) + (cross(_230, _216) * _223)) * _211)) - _6_m11.xyz, 1.0f));
                float2 _296 = 0.0f.xx;
                _296.y = clamp(log2(sqrt(pow(distance(_255, (((_261.xy / _261.w.xx).xy * 0.5f) + 0.5f.xx) * _13_m0.xy), 2.0f) + pow(distance(_255, (((_275.xy / _275.w.xx).xy * 0.5f) + 0.5f.xx) * _13_m0.xy), 2.0f)) * 0.5f), 0.0f, _13_m5.y) / _13_m5.y;
                // RenoDX code start: favor sharper initialization data when Improved SSR is enabled.
                if (shader_injection.improved_ssr >= 0.5f)
                {
                    _296.y = saturate((_296.y - 0.25f) / 0.75f);
                }
                // RenoDX code end
                _297 = _296;
            }
            else
            {
                _297 = 0.0f.xx;
            }
            _298 = _297;
        }
        else
        {
            _298 = 0.0f.xx;
        }
        float4 _305 = _14.SampleLevel(_9, (float2(_104) + 0.5f.xx) * _13_m0.zw, 0.0f);
        _19[_104] = _305.xyz * (1.0f / (max(max(_305.x, _305.y), _305.z) + 1.0f));
        _21[_104] = _298;
        _23[_104] = 0.0f;
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
