#include "../shared.h"

// Vulkan shader 0xA7971E21, decompiled from the matching game shader dump.

static float _65 = 0.0f;

[[vk::binding(0, 1)]] cbuffer _7_8 : register(b0)
{
    float4 _8_m0 : packoffset(c0);
    float4 _8_m1 : packoffset(c1);
    float4 _8_m2 : packoffset(c2);
    float4 _8_m3 : packoffset(c3);
    float4 _8_m4 : packoffset(c4);
};

[[vk::binding(3, 0)]] SamplerState _5 : register(s3);
[[vk::binding(1, 0)]] Texture2D<float4> _10 : register(t1);
[[vk::binding(2, 0)]] Texture2D<float4> _11 : register(t2);
[[vk::binding(0, 0)]] RWTexture2D<unorm float> _12 : register(u0);

static uint3 gl_GlobalInvocationID;
struct SPIRV_Cross_Input
{
    uint3 gl_GlobalInvocationID : SV_DispatchThreadID;
};

void comp_main()
{
    uint2 _83 = gl_GlobalInvocationID.xy * uint2(2u, 1u);
    float _86 = _8_m2.x * 0.20000000298023223876953125f;
    uint _87 = _83.x;
    uint _89 = _83.y;
    float2 _95 = float2(float(_87), float(_89)) * _8_m4.zw;
    float4 _99 = _11.GatherRed(_5, _95, int2(0, 0));
    float4 _103 = _11.GatherRed(_5, _95, int2(2, 0));
    float4 _107 = _11.GatherRed(_5, _95, int2(1, 2));
    float4 _77 = _10.GatherRed(_5, _95, int2(0, 0));
    float _73[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _113 = 0; _113 < 4; )
    {
        _73[_113] = _77[uint(_113)];
        _113++;
        continue;
    }
    float4 _78 = _10.GatherRed(_5, _95, int2(2, 0));
    float _74[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _127 = 0; _127 < 4; )
    {
        _74[_127] = _78[uint(_127)];
        _127++;
        continue;
    }
    float4 _79 = _10.GatherRed(_5, _95, int2(0, 2));
    float _75[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _141 = 0; _141 < 4; )
    {
        _75[_141] = _79[uint(_141)];
        _141++;
        continue;
    }
    float4 _80 = _10.GatherRed(_5, _95, int2(2, 2));
    float _76[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _155 = 0; _155 < 4; )
    {
        _76[_155] = _80[uint(_155)];
        _155++;
        continue;
    }
    float _67[2] = { 0.0f, 0.0f };
    float4 _68[2] = { 0.0f.xxxx, 0.0f.xxxx };
    float _69[2] = { 0.0f, 0.0f };
    float _70[2] = { 0.0f, 0.0f };
    float _71[2] = { 0.0f, 0.0f };
    float _72[2] = { 0.0f, 0.0f };
    for (int _165 = 0; _165 < 2; )
    {
        bool _175 = _165 == 0;
        float _177 = _99.y;
        uint _180 = uint((_175 ? _99.x : _177) * 255.5f);
        float4 _193 = clamp(float4(_65, float((_180 >> 4u) & 3u) * 0.3333333432674407958984375f, float((_180 >> 2u) & 3u) * 0.3333333432674407958984375f, float(_180 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        uint _198 = uint((_175 ? _99.z : _103.w) * 255.5f);
        float4 _211 = clamp(float4(float((_198 >> 6u) & 3u) * 0.3333333432674407958984375f, float((_198 >> 4u) & 3u) * 0.3333333432674407958984375f, _65, float(_198 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        float _212 = _103.x;
        uint _216 = uint((_175 ? _212 : _103.y) * 255.5f);
        float4 _229 = clamp(float4(float((_216 >> 6u) & 3u) * 0.3333333432674407958984375f, _65, float((_216 >> 2u) & 3u) * 0.3333333432674407958984375f, float(_216 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        uint _234 = uint((_175 ? _107.w : _107.z) * 255.5f);
        float4 _248 = clamp(float4(float((_234 >> 6u) & 3u) * 0.3333333432674407958984375f, float((_234 >> 4u) & 3u) * 0.3333333432674407958984375f, float((_234 >> 2u) & 3u) * 0.3333333432674407958984375f, _65), 0.0f.xxxx, 1.0f.xxxx);
        uint _251 = uint((_175 ? _177 : _212) * 255.5f);
        _68[_165] = clamp(float4(float((_251 >> 6u) & 3u) * 0.3333333432674407958984375f, float((_251 >> 4u) & 3u) * 0.3333333432674407958984375f, float((_251 >> 2u) & 3u) * 0.3333333432674407958984375f, float(_251 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        _68[_165] *= float4(_193.y, _229.x, _211.w, _248.z);
        _68[_165] = clamp(_68[_165] + (clamp(1.5f - dot(_68[_165], 1.0f.xxxx), 0.0f, 1.0f) * 0.3333333432674407958984375f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
        _69[_165] = 0.425000011920928955078125f * ((_68[_165].x * _193.z) + (_68[_165].z * _211.x));
        _70[_165] = 0.425000011920928955078125f * ((_68[_165].z * _211.y) + (_68[_165].y * _229.z));
        _71[_165] = 0.425000011920928955078125f * ((_68[_165].w * _248.x) + (_68[_165].x * _193.w));
        _72[_165] = 0.425000011920928955078125f * ((_68[_165].y * _229.w) + (_68[_165].w * _248.y));
        float _396 = (((((((((_175 ? _73[1] : _74[0]) * _86) + (_68[_165].x * (_175 ? _73[0] : _73[1]))) + (_68[_165].y * (_175 ? _74[0] : _74[1]))) + (_68[_165].z * (_175 ? _73[2] : _74[3]))) + (_68[_165].w * (_175 ? _75[2] : _76[3]))) + (_69[_165] * (_175 ? _73[3] : _73[2]))) + (_70[_165] * (_175 ? _74[3] : _74[2]))) + (_71[_165] * (_175 ? _75[3] : _75[2]))) + (_72[_165] * (_175 ? _76[3] : _76[2]));
        _67[_165] = _396 / ((((((((_86 + _68[_165].x) + _68[_165].y) + _68[_165].z) + _68[_165].w) + _69[_165]) + _70[_165]) + _71[_165]) + _72[_165]);
        _67[_165] = _67[_165];
        /*
        Vanilla shader code from 0xA7971E21:
        _12[uint2(int2(int(_87 + uint(_165)), int(_89)))] = _67[_165];
        */
        // RenoDX code: Replace the game's visibility-bitmask AO with neutral visibility when game AO is disabled.
        _12[uint2(int2(int(_87 + uint(_165)), int(_89)))] = shader_injection.disable_game_ao >= 0.5f ? 1.0f : _67[_165];
        _165++;
        continue;
    }
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
    comp_main();
}
