#include "../shared.h"

// Vulkan shader 0xF660BBAD, decompiled from the matching game shader dump.

[[vk::binding(0, 1)]] cbuffer _12_13 : register(b0)
{
    float4 _13_m0 : packoffset(c0);
    float4 _13_m1 : packoffset(c1);
    float4 _13_m2 : packoffset(c2);
    float4 _13_m3 : packoffset(c3);
};

[[vk::binding(2, 0)]] SamplerState _7 : register(s2);
[[vk::binding(1, 0)]] Texture2D<float4> _9 : register(t1);
[[vk::binding(0, 0)]] RWTexture2D<float3> _11 : register(u0);

static uint3 gl_WorkGroupID;
static uint3 gl_LocalInvocationID;
static uint3 gl_GlobalInvocationID;
struct SPIRV_Cross_Input
{
    uint3 gl_WorkGroupID : SV_GroupID;
    uint3 gl_LocalInvocationID : SV_GroupThreadID;
    uint3 gl_GlobalInvocationID : SV_DispatchThreadID;
};

groupshared uint _14[128];
groupshared uint _15[128];
groupshared uint _16[128];

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void comp_main()
{
    float2 _84 = float2(int2(((gl_LocalInvocationID.xy << uint2(1u, 1u)) + (gl_WorkGroupID.xy << uint2(3u, 3u))) - uint2(4u, 4u)));
    float4 _93 = _9.SampleLevel(_7, (_84 + 0.5f.xx) * _13_m0.zw, 0.0f);
    float3 _105 = _93.xyz / (max(max(max(_93.x, _93.y), _93.z), _13_m1.x) / _13_m1.x).xxx;
    float4 _111 = _9.SampleLevel(_7, (_84 + float2(1.5f, 0.5f)) * _13_m0.zw, 0.0f);
    float3 _121 = _111.xyz / (max(max(max(_111.x, _111.y), _111.z), _13_m1.x) / _13_m1.x).xxx;
    float4 _127 = _9.SampleLevel(_7, (_84 + float2(0.5f, 1.5f)) * _13_m0.zw, 0.0f);
    float3 _137 = _127.xyz / (max(max(max(_127.x, _127.y), _127.z), _13_m1.x) / _13_m1.x).xxx;
    float4 _143 = _9.SampleLevel(_7, (_84 + 1.5f.xx) * _13_m0.zw, 0.0f);
    float3 _153 = _143.xyz / (max(max(max(_143.x, _143.y), _143.z), _13_m1.x) / _13_m1.x).xxx;
    uint _156 = gl_LocalInvocationID.y << 4u;
    uint _157 = gl_LocalInvocationID.x + _156;
    _14[_157] = spvPackHalf2x16(float2(_105.x, 0.0f)) | (spvPackHalf2x16(float2(_121.x, 0.0f)) << 16u);
    _15[_157] = spvPackHalf2x16(float2(_105.y, 0.0f)) | (spvPackHalf2x16(float2(_121.y, 0.0f)) << 16u);
    _16[_157] = spvPackHalf2x16(float2(_105.z, 0.0f)) | (spvPackHalf2x16(float2(_121.z, 0.0f)) << 16u);
    uint _185 = _157 + 8u;
    _14[_185] = spvPackHalf2x16(float2(_137.x, 0.0f)) | (spvPackHalf2x16(float2(_153.x, 0.0f)) << 16u);
    _15[_185] = spvPackHalf2x16(float2(_137.y, 0.0f)) | (spvPackHalf2x16(float2(_153.y, 0.0f)) << 16u);
    _16[_185] = spvPackHalf2x16(float2(_137.z, 0.0f)) | (spvPackHalf2x16(float2(_153.z, 0.0f)) << 16u);
    GroupMemoryBarrierWithGroupSync();
    uint _214 = _156 + (gl_LocalInvocationID.x << 1u);
    uint _217 = (_156 + gl_LocalInvocationID.x) + (gl_LocalInvocationID.x & 4u);
    uint _219 = _14[_217];
    uint _221 = _15[_217];
    uint _223 = _16[_217];
    float3 _240 = float3(spvUnpackHalf2x16(_219 >> 16u).x, spvUnpackHalf2x16(_221 >> 16u).x, spvUnpackHalf2x16(_223 >> 16u).x);
    uint _241 = _217 + 1u;
    uint _243 = _14[_241];
    uint _245 = _15[_241];
    uint _247 = _16[_241];
    float3 _254 = float3(spvUnpackHalf2x16(_243).x, spvUnpackHalf2x16(_245).x, spvUnpackHalf2x16(_247).x);
    float3 _264 = float3(spvUnpackHalf2x16(_243 >> 16u).x, spvUnpackHalf2x16(_245 >> 16u).x, spvUnpackHalf2x16(_247 >> 16u).x);
    uint _265 = _217 + 2u;
    uint _267 = _14[_265];
    uint _269 = _15[_265];
    uint _271 = _16[_265];
    float3 _278 = float3(spvUnpackHalf2x16(_267).x, spvUnpackHalf2x16(_269).x, spvUnpackHalf2x16(_271).x);
    float3 _288 = float3(spvUnpackHalf2x16(_267 >> 16u).x, spvUnpackHalf2x16(_269 >> 16u).x, spvUnpackHalf2x16(_271 >> 16u).x);
    uint _289 = _217 + 3u;
    uint _291 = _14[_289];
    uint _293 = _15[_289];
    uint _295 = _16[_289];
    float3 _302 = float3(spvUnpackHalf2x16(_291).x, spvUnpackHalf2x16(_293).x, spvUnpackHalf2x16(_295).x);
    float3 _312 = float3(spvUnpackHalf2x16(_291 >> 16u).x, spvUnpackHalf2x16(_293 >> 16u).x, spvUnpackHalf2x16(_295 >> 16u).x);
    uint _313 = _217 + 4u;
    uint _315 = _14[_313];
    uint _317 = _15[_313];
    uint _319 = _16[_313];
    float3 _326 = float3(spvUnpackHalf2x16(_315).x, spvUnpackHalf2x16(_317).x, spvUnpackHalf2x16(_319).x);
    float3 _349 = ((((_278 * 0.2734375f) + ((_264 + _288) * 0.21875f)) + ((_254 + _302) * 0.109375f)) + ((_240 + _312) * 0.03125f)) + ((float3(spvUnpackHalf2x16(_219).x, spvUnpackHalf2x16(_221).x, spvUnpackHalf2x16(_223).x) + _326) * 0.00390625f);
    _14[_214] = asuint(_349.x);
    _15[_214] = asuint(_349.y);
    _16[_214] = asuint(_349.z);
    uint _359 = _214 + 1u;
    float3 _372 = ((((_288 * 0.2734375f) + ((_278 + _302) * 0.21875f)) + ((_264 + _312) * 0.109375f)) + ((_254 + _326) * 0.03125f)) + ((_240 + float3(spvUnpackHalf2x16(_315 >> 16u).x, spvUnpackHalf2x16(_317 >> 16u).x, spvUnpackHalf2x16(_319 >> 16u).x)) * 0.00390625f);
    _14[_359] = asuint(_372.x);
    _15[_359] = asuint(_372.y);
    _16[_359] = asuint(_372.z);
    GroupMemoryBarrierWithGroupSync();
    uint _384 = (gl_LocalInvocationID.y << 3u) + gl_LocalInvocationID.x;
    uint _393 = _384 + 8u;
    uint _402 = _384 + 16u;
    uint _411 = _384 + 24u;
    uint _420 = _384 + 32u;
    uint _429 = _384 + 40u;
    uint _438 = _384 + 48u;
    uint _447 = _384 + 56u;
    uint _456 = _384 + 64u;
    float3 _477 = ((((asfloat(uint3(_14[_420], _15[_420], _16[_420])) * 0.2734375f) + ((asfloat(uint3(_14[_411], _15[_411], _16[_411])) + asfloat(uint3(_14[_429], _15[_429], _16[_429]))) * 0.21875f)) + ((asfloat(uint3(_14[_402], _15[_402], _16[_402])) + asfloat(uint3(_14[_438], _15[_438], _16[_438]))) * 0.109375f)) + ((asfloat(uint3(_14[_393], _15[_393], _16[_393])) + asfloat(uint3(_14[_447], _15[_447], _16[_447]))) * 0.03125f)) + ((asfloat(uint3(_14[_384], _15[_384], _16[_384])) + asfloat(uint3(_14[_456], _15[_456], _16[_456]))) * 0.00390625f);
    uint2 _479 = uint2(_13_m0.xy);
    _11[gl_GlobalInvocationID.xy] = _477 * float(all(bool2(gl_GlobalInvocationID.xy.x < _479.x, gl_GlobalInvocationID.xy.y < _479.y)));
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_WorkGroupID = stage_input.gl_WorkGroupID;
    gl_LocalInvocationID = stage_input.gl_LocalInvocationID;
    gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
    comp_main();
}
