#include "../shared.h"

// Vulkan shader 0x76CAB70A, decompiled from the matching game shader dump.

[[vk::binding(0, 1)]] cbuffer _12_13 : register(b0)
{
    float4 _13_m0 : packoffset(c0);
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
    float2 _82 = float2(int2(((gl_LocalInvocationID.xy << uint2(1u, 1u)) + (gl_WorkGroupID.xy << uint2(3u, 3u))) - uint2(4u, 4u)));
    float4 _91 = _9.SampleLevel(_7, (_82 + 0.5f.xx) * _13_m0.zw, 0.0f);
    float4 _97 = _9.SampleLevel(_7, (_82 + float2(1.5f, 0.5f)) * _13_m0.zw, 0.0f);
    float4 _103 = _9.SampleLevel(_7, (_82 + float2(0.5f, 1.5f)) * _13_m0.zw, 0.0f);
    float4 _109 = _9.SampleLevel(_7, (_82 + 1.5f.xx) * _13_m0.zw, 0.0f);
    uint _112 = gl_LocalInvocationID.y << 4u;
    uint _113 = gl_LocalInvocationID.x + _112;
    _14[_113] = spvPackHalf2x16(float2(_91.x, 0.0f)) | (spvPackHalf2x16(float2(_97.x, 0.0f)) << 16u);
    _15[_113] = spvPackHalf2x16(float2(_91.y, 0.0f)) | (spvPackHalf2x16(float2(_97.y, 0.0f)) << 16u);
    _16[_113] = spvPackHalf2x16(float2(_91.z, 0.0f)) | (spvPackHalf2x16(float2(_97.z, 0.0f)) << 16u);
    uint _141 = _113 + 8u;
    _14[_141] = spvPackHalf2x16(float2(_103.x, 0.0f)) | (spvPackHalf2x16(float2(_109.x, 0.0f)) << 16u);
    _15[_141] = spvPackHalf2x16(float2(_103.y, 0.0f)) | (spvPackHalf2x16(float2(_109.y, 0.0f)) << 16u);
    _16[_141] = spvPackHalf2x16(float2(_103.z, 0.0f)) | (spvPackHalf2x16(float2(_109.z, 0.0f)) << 16u);
    GroupMemoryBarrierWithGroupSync();
    uint _170 = _112 + (gl_LocalInvocationID.x << 1u);
    uint _173 = (_112 + gl_LocalInvocationID.x) + (gl_LocalInvocationID.x & 4u);
    uint _175 = _14[_173];
    uint _177 = _15[_173];
    uint _179 = _16[_173];
    float3 _196 = float3(spvUnpackHalf2x16(_175 >> 16u).x, spvUnpackHalf2x16(_177 >> 16u).x, spvUnpackHalf2x16(_179 >> 16u).x);
    uint _197 = _173 + 1u;
    uint _199 = _14[_197];
    uint _201 = _15[_197];
    uint _203 = _16[_197];
    float3 _210 = float3(spvUnpackHalf2x16(_199).x, spvUnpackHalf2x16(_201).x, spvUnpackHalf2x16(_203).x);
    float3 _220 = float3(spvUnpackHalf2x16(_199 >> 16u).x, spvUnpackHalf2x16(_201 >> 16u).x, spvUnpackHalf2x16(_203 >> 16u).x);
    uint _221 = _173 + 2u;
    uint _223 = _14[_221];
    uint _225 = _15[_221];
    uint _227 = _16[_221];
    float3 _234 = float3(spvUnpackHalf2x16(_223).x, spvUnpackHalf2x16(_225).x, spvUnpackHalf2x16(_227).x);
    float3 _244 = float3(spvUnpackHalf2x16(_223 >> 16u).x, spvUnpackHalf2x16(_225 >> 16u).x, spvUnpackHalf2x16(_227 >> 16u).x);
    uint _245 = _173 + 3u;
    uint _247 = _14[_245];
    uint _249 = _15[_245];
    uint _251 = _16[_245];
    float3 _258 = float3(spvUnpackHalf2x16(_247).x, spvUnpackHalf2x16(_249).x, spvUnpackHalf2x16(_251).x);
    float3 _268 = float3(spvUnpackHalf2x16(_247 >> 16u).x, spvUnpackHalf2x16(_249 >> 16u).x, spvUnpackHalf2x16(_251 >> 16u).x);
    uint _269 = _173 + 4u;
    uint _271 = _14[_269];
    uint _273 = _15[_269];
    uint _275 = _16[_269];
    float3 _282 = float3(spvUnpackHalf2x16(_271).x, spvUnpackHalf2x16(_273).x, spvUnpackHalf2x16(_275).x);
    float3 _305 = ((((_234 * 0.2734375f) + ((_220 + _244) * 0.21875f)) + ((_210 + _258) * 0.109375f)) + ((_196 + _268) * 0.03125f)) + ((float3(spvUnpackHalf2x16(_175).x, spvUnpackHalf2x16(_177).x, spvUnpackHalf2x16(_179).x) + _282) * 0.00390625f);
    _14[_170] = asuint(_305.x);
    _15[_170] = asuint(_305.y);
    _16[_170] = asuint(_305.z);
    uint _315 = _170 + 1u;
    float3 _328 = ((((_244 * 0.2734375f) + ((_234 + _258) * 0.21875f)) + ((_220 + _268) * 0.109375f)) + ((_210 + _282) * 0.03125f)) + ((_196 + float3(spvUnpackHalf2x16(_271 >> 16u).x, spvUnpackHalf2x16(_273 >> 16u).x, spvUnpackHalf2x16(_275 >> 16u).x)) * 0.00390625f);
    _14[_315] = asuint(_328.x);
    _15[_315] = asuint(_328.y);
    _16[_315] = asuint(_328.z);
    GroupMemoryBarrierWithGroupSync();
    uint _340 = (gl_LocalInvocationID.y << 3u) + gl_LocalInvocationID.x;
    uint _349 = _340 + 8u;
    uint _358 = _340 + 16u;
    uint _367 = _340 + 24u;
    uint _376 = _340 + 32u;
    uint _385 = _340 + 40u;
    uint _394 = _340 + 48u;
    uint _403 = _340 + 56u;
    uint _412 = _340 + 64u;
    float3 _433 = ((((asfloat(uint3(_14[_376], _15[_376], _16[_376])) * 0.2734375f) + ((asfloat(uint3(_14[_367], _15[_367], _16[_367])) + asfloat(uint3(_14[_385], _15[_385], _16[_385]))) * 0.21875f)) + ((asfloat(uint3(_14[_358], _15[_358], _16[_358])) + asfloat(uint3(_14[_394], _15[_394], _16[_394]))) * 0.109375f)) + ((asfloat(uint3(_14[_349], _15[_349], _16[_349])) + asfloat(uint3(_14[_403], _15[_403], _16[_403]))) * 0.03125f)) + ((asfloat(uint3(_14[_340], _15[_340], _16[_340])) + asfloat(uint3(_14[_412], _15[_412], _16[_412]))) * 0.00390625f);
    uint2 _435 = uint2(_13_m0.xy);
    _11[gl_GlobalInvocationID.xy] = _433 * float(all(bool2(gl_GlobalInvocationID.xy.x < _435.x, gl_GlobalInvocationID.xy.y < _435.y)));
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_WorkGroupID = stage_input.gl_WorkGroupID;
    gl_LocalInvocationID = stage_input.gl_LocalInvocationID;
    gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
    comp_main();
}
