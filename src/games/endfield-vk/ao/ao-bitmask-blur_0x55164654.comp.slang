#include "../shared.h"

// Vulkan shader 0x55164654, decompiled from the matching game shader dump.

static float _64 = 0.0f;

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
    uint2 _82 = gl_GlobalInvocationID.xy * uint2(2u, 1u);
    uint _85 = _82.x;
    uint _87 = _82.y;
    float2 _93 = float2(float(_85), float(_87)) * _8_m4.zw;
    float4 _97 = _11.GatherRed(_5, _93, int2(0, 0));
    float4 _101 = _11.GatherRed(_5, _93, int2(2, 0));
    float4 _105 = _11.GatherRed(_5, _93, int2(1, 2));
    float4 _76 = _10.GatherRed(_5, _93, int2(0, 0));
    float _72[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _111 = 0; _111 < 4; )
    {
        _72[_111] = _76[uint(_111)];
        _111++;
        continue;
    }
    float4 _77 = _10.GatherRed(_5, _93, int2(2, 0));
    float _73[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _125 = 0; _125 < 4; )
    {
        _73[_125] = _77[uint(_125)];
        _125++;
        continue;
    }
    float4 _78 = _10.GatherRed(_5, _93, int2(0, 2));
    float _74[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _139 = 0; _139 < 4; )
    {
        _74[_139] = _78[uint(_139)];
        _139++;
        continue;
    }
    float4 _79 = _10.GatherRed(_5, _93, int2(2, 2));
    float _75[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
    for (int _153 = 0; _153 < 4; )
    {
        _75[_153] = _79[uint(_153)];
        _153++;
        continue;
    }
    float _66[2] = { 0.0f, 0.0f };
    float4 _67[2] = { 0.0f.xxxx, 0.0f.xxxx };
    float _68[2] = { 0.0f, 0.0f };
    float _69[2] = { 0.0f, 0.0f };
    float _70[2] = { 0.0f, 0.0f };
    float _71[2] = { 0.0f, 0.0f };
    for (int _163 = 0; _163 < 2; )
    {
        bool _173 = _163 == 0;
        float _175 = _97.y;
        uint _178 = uint((_173 ? _97.x : _175) * 255.5f);
        float4 _191 = clamp(float4(_64, float((_178 >> 4u) & 3u) * 0.3333333432674407958984375f, float((_178 >> 2u) & 3u) * 0.3333333432674407958984375f, float(_178 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        uint _196 = uint((_173 ? _97.z : _101.w) * 255.5f);
        float4 _209 = clamp(float4(float((_196 >> 6u) & 3u) * 0.3333333432674407958984375f, float((_196 >> 4u) & 3u) * 0.3333333432674407958984375f, _64, float(_196 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        float _210 = _101.x;
        uint _214 = uint((_173 ? _210 : _101.y) * 255.5f);
        float4 _227 = clamp(float4(float((_214 >> 6u) & 3u) * 0.3333333432674407958984375f, _64, float((_214 >> 2u) & 3u) * 0.3333333432674407958984375f, float(_214 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        uint _232 = uint((_173 ? _105.w : _105.z) * 255.5f);
        float4 _246 = clamp(float4(float((_232 >> 6u) & 3u) * 0.3333333432674407958984375f, float((_232 >> 4u) & 3u) * 0.3333333432674407958984375f, float((_232 >> 2u) & 3u) * 0.3333333432674407958984375f, _64), 0.0f.xxxx, 1.0f.xxxx);
        uint _249 = uint((_173 ? _175 : _210) * 255.5f);
        _67[_163] = clamp(float4(float((_249 >> 6u) & 3u) * 0.3333333432674407958984375f, float((_249 >> 4u) & 3u) * 0.3333333432674407958984375f, float((_249 >> 2u) & 3u) * 0.3333333432674407958984375f, float(_249 & 3u) * 0.3333333432674407958984375f), 0.0f.xxxx, 1.0f.xxxx);
        _67[_163] *= float4(_191.y, _227.x, _209.w, _246.z);
        _67[_163] = clamp(_67[_163] + (clamp(1.5f - dot(_67[_163], 1.0f.xxxx), 0.0f, 1.0f) * 0.3333333432674407958984375f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
        _68[_163] = 0.425000011920928955078125f * ((_67[_163].x * _191.z) + (_67[_163].z * _209.x));
        _69[_163] = 0.425000011920928955078125f * ((_67[_163].z * _209.y) + (_67[_163].y * _227.z));
        _70[_163] = 0.425000011920928955078125f * ((_67[_163].w * _246.x) + (_67[_163].x * _191.w));
        _71[_163] = 0.425000011920928955078125f * ((_67[_163].y * _227.w) + (_67[_163].w * _246.y));
        float _394 = (((((((((_173 ? _72[1] : _73[0]) * _8_m2.x) + (_67[_163].x * (_173 ? _72[0] : _72[1]))) + (_67[_163].y * (_173 ? _73[0] : _73[1]))) + (_67[_163].z * (_173 ? _72[2] : _73[3]))) + (_67[_163].w * (_173 ? _74[2] : _75[3]))) + (_68[_163] * (_173 ? _72[3] : _72[2]))) + (_69[_163] * (_173 ? _73[3] : _73[2]))) + (_70[_163] * (_173 ? _74[3] : _74[2]))) + (_71[_163] * (_173 ? _75[3] : _75[2]));
        _66[_163] = _394 / ((((((((_8_m2.x + _67[_163].x) + _67[_163].y) + _67[_163].z) + _67[_163].w) + _68[_163]) + _69[_163]) + _70[_163]) + _71[_163]);
        _66[_163] *= 1.5f;
        _12[uint2(int2(int(_85 + uint(_163)), int(_87)))] = shader_injection.disable_game_ao >= 0.5f ? 1.0f : _66[_163];
        _163++;
        continue;
    }
}

[numthreads(8, 8, 1)]
void main(SPIRV_Cross_Input stage_input)
{
    gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
    comp_main();
}
