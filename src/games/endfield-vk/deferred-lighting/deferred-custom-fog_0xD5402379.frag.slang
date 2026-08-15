// DX11 0xB36BFB47 -> Vulkan 0xD5402379
struct _21
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    column_major float4x4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
    float4 _m8;
    float4 _m9;
};

static float _547 = 0.0f;
static float3 _548 = 0.0f;
static float _551 = 0.0f;
static uint _552 = 0u;

static const float2 _500[16] = { float2(-0.94201624393463134765625f, -0.39906215667724609375f), float2(0.94558608531951904296875f, -0.768907248973846435546875f), float2(-0.094184100627899169921875f, -0.929388701915740966796875f), float2(0.34495937824249267578125f, 0.29387760162353515625f), float2(-0.91588580608367919921875f, 0.4577143192291259765625f), float2(-0.8154423236846923828125f, -0.87912464141845703125f), float2(-0.38277542591094970703125f, 0.2767684459686279296875f), float2(0.9748439788818359375f, 0.7564837932586669921875f), float2(0.4432332515716552734375f, -0.9751155376434326171875f), float2(0.5374298095703125f, -0.473734200000762939453125f), float2(-0.2649691104888916015625f, -0.418930232524871826171875f), float2(0.79197514057159423828125f, 0.19090187549591064453125f), float2(-0.24188840389251708984375f, 0.997065067291259765625f), float2(-0.8140995502471923828125f, 0.91437590122222900390625f), float2(0.1998412609100341796875f, 0.786413669586181640625f), float2(0.14383161067962646484375f, -0.141007900238037109375f) };
static const float2 _501[16] = { float2(-0.3996559083461761474609375f, 0.91666519641876220703125f), float2(0.12451229989528656005859375f, -0.992218077182769775390625f), float2(0.8523542881011962890625f, 0.5229647159576416015625f), float2(-0.22931249439716339111328125f, 0.973352909088134765625f), float2(-0.772406101226806640625f, 0.63512897491455078125f), float2(0.7927525043487548828125f, -0.60954368114471435546875f), float2(-0.578049719333648681640625f, 0.816001594066619873046875f), float2(-0.831129610538482666015625f, -0.55607879161834716796875f), float2(0.8077948093414306640625f, 0.589463770389556884765625f), float2(0.47141540050506591796875f, 0.88191127777099609375f), float2(-0.3139738142490386962890625f, -0.949431717395782470703125f), float2(-0.94500672817230224609375f, -0.3270510137081146240234375f), float2(-0.1850374042987823486328125f, -0.982731521129608154296875f), float2(-0.9337558746337890625f, 0.35791051387786865234375f), float2(-0.997614085674285888671875f, 0.069036297500133514404296875f), float2(0.3061277866363525390625f, 0.951990425586700439453125f) };
static const int2 _502[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _503[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

#include "./renodx_injection.hlsli"

[[vk::binding(12, 0)]]
cbuffer _16_17 : register(b12)
{
    column_major float4x4 _17_m0 : packoffset(c0);
    column_major float4x4 _17_m1 : packoffset(c4);
    column_major float4x4 _17_m2 : packoffset(c8);
    column_major float4x4 _17_m3 : packoffset(c12);
    column_major float4x4 _17_m4 : packoffset(c16);
    column_major float4x4 _17_m5 : packoffset(c20);
    column_major float4x4 _17_m6 : packoffset(c24);
    column_major float4x4 _17_m7 : packoffset(c28);
    column_major float4x4 _17_m8 : packoffset(c32);
    column_major float4x4 _17_m9 : packoffset(c36);
    column_major float4x4 _17_m10 : packoffset(c40);
    float4 _17_m11 : packoffset(c44);
    column_major float4x4 _17_m12 : packoffset(c45);
    column_major float4x4 _17_m13 : packoffset(c49);
    column_major float4x4 _17_m14 : packoffset(c53);
    column_major float4x4 _17_m15 : packoffset(c57);
    column_major float4x4 _17_m16 : packoffset(c61);
    column_major float4x4 _17_m17 : packoffset(c65);
    column_major float4x4 _17_m18 : packoffset(c69);
    column_major float4x4 _17_m19 : packoffset(c73);
    column_major float4x4 _17_m20 : packoffset(c77);
    float4 _17_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _18_19 : register(b16)
{
    float4 _19_m0 : packoffset(c0);
    float4 _19_m1 : packoffset(c1);
    float4 _19_m2 : packoffset(c2);
    float4 _19_m3 : packoffset(c3);
    float4 _19_m4 : packoffset(c4);
    float4 _19_m5 : packoffset(c5);
    float4 _19_m6[6] : packoffset(c6);
    float4 _19_m7[6] : packoffset(c12);
    float4 _19_m8 : packoffset(c18);
    float4 _19_m9 : packoffset(c19);
    float4 _19_m10 : packoffset(c20);
    float4 _19_m11 : packoffset(c21);
    float4 _19_m12 : packoffset(c22);
    float4 _19_m13 : packoffset(c23);
    float4 _19_m14 : packoffset(c24);
    float4 _19_m15 : packoffset(c25);
    float _19_m16 : packoffset(c26);
    float _19_m17 : packoffset(c26.y);
    float _19_m18 : packoffset(c26.z);
    uint _19_m19 : packoffset(c26.w);
    float4 _19_m20 : packoffset(c27);
    int4 _19_m21 : packoffset(c28);
    float4 _19_m22 : packoffset(c29);
    float4 _19_m23 : packoffset(c30);
    float4 _19_m24 : packoffset(c31);
    float4 _19_m25 : packoffset(c32);
    float4 _19_m26 : packoffset(c33);
    float4 _19_m27 : packoffset(c34);
    float4 _19_m28 : packoffset(c35);
    float4 _19_m29 : packoffset(c36);
    float4 _19_m30 : packoffset(c37);
    float4 _19_m31 : packoffset(c38);
    float4 _19_m32[4] : packoffset(c39);
    float4 _19_m33[4] : packoffset(c43);
    float4 _19_m34[4] : packoffset(c47);
    float4 _19_m35[4] : packoffset(c51);
    float4 _19_m36 : packoffset(c55);
    float4 _19_m37 : packoffset(c56);
    float4 _19_m38[4] : packoffset(c57);
    float4 _19_m39[4] : packoffset(c61);
    float4 _19_m40[4] : packoffset(c65);
    float4 _19_m41 : packoffset(c69);
    float4 _19_m42 : packoffset(c70);
    float4 _19_m43 : packoffset(c71);
    float4 _19_m44 : packoffset(c72);
    float4 _19_m45 : packoffset(c73);
    float4 _19_m46 : packoffset(c74);
    float4 _19_m47 : packoffset(c75);
    float4 _19_m48 : packoffset(c76);
    float4 _19_m49 : packoffset(c77);
    float4 _19_m50 : packoffset(c78);
    float4 _19_m51 : packoffset(c79);
    float4 _19_m52 : packoffset(c80);
    float4 _19_m53 : packoffset(c81);
    float4 _19_m54 : packoffset(c82);
    float4 _19_m55 : packoffset(c83);
    float4 _19_m56 : packoffset(c84);
    float4 _19_m57 : packoffset(c85);
    float4 _19_m58 : packoffset(c86);
    float4 _19_m59 : packoffset(c87);
    float4 _19_m60 : packoffset(c88);
    float4 _19_m61 : packoffset(c89);
    float4 _19_m62 : packoffset(c90);
    float4 _19_m63 : packoffset(c91);
    float4 _19_m64 : packoffset(c92);
    float4 _19_m65 : packoffset(c93);
    float4 _19_m66 : packoffset(c94);
    float4 _19_m67 : packoffset(c95);
    float4 _19_m68 : packoffset(c96);
    float4 _19_m69 : packoffset(c97);
    float4 _19_m70 : packoffset(c98);
    float4 _19_m71 : packoffset(c99);
    float4 _19_m72 : packoffset(c100);
    float4 _19_m73 : packoffset(c101);
    float4 _19_m74 : packoffset(c102);
    float4 _19_m75 : packoffset(c103);
    float4 _19_m76 : packoffset(c104);
    float4 _19_m77 : packoffset(c105);
    float4 _19_m78 : packoffset(c106);
    float4 _19_m79 : packoffset(c107);
    float4 _19_m80 : packoffset(c108);
    float4 _19_m81 : packoffset(c109);
    float4 _19_m82 : packoffset(c110);
    float4 _19_m83 : packoffset(c111);
    float4 _19_m84 : packoffset(c112);
    float4 _19_m85 : packoffset(c113);
    float4 _19_m86 : packoffset(c114);
    float4 _19_m87 : packoffset(c115);
    float4 _19_m88 : packoffset(c116);
    float4 _19_m89 : packoffset(c117);
    float4 _19_m90 : packoffset(c118);
    float4 _19_m91 : packoffset(c119);
    float4 _19_m92 : packoffset(c120);
    float4 _19_m93 : packoffset(c121);
    float4 _19_m94 : packoffset(c122);
    float4 _19_m95 : packoffset(c123);
    float4 _19_m96 : packoffset(c124);
    float4 _19_m97 : packoffset(c125);
    float4 _19_m98 : packoffset(c126);
    float4 _19_m99[2] : packoffset(c127);
    float4 _19_m100[2] : packoffset(c129);
    float _19_m101 : packoffset(c131);
    float _19_m102 : packoffset(c131.y);
    float _19_m103 : packoffset(c131.z);
    float _19_m104 : packoffset(c131.w);
    float4 _19_m105 : packoffset(c132);
    float4 _19_m106 : packoffset(c133);
    float4 _19_m107 : packoffset(c134);
    float4 _19_m108 : packoffset(c135);
    float4 _19_m109 : packoffset(c136);
    float4 _19_m110 : packoffset(c137);
    float4 _19_m111 : packoffset(c138);
    float4 _19_m112 : packoffset(c139);
    float4 _19_m113 : packoffset(c140);
    float4 _19_m114 : packoffset(c141);
    float4 _19_m115 : packoffset(c142);
    float4 _19_m116 : packoffset(c143);
    float4 _19_m117 : packoffset(c144);
    float4 _19_m118 : packoffset(c145);
    float4 _19_m119 : packoffset(c146);
    float4 _19_m120 : packoffset(c147);
    float4 _19_m121 : packoffset(c148);
    float4 _19_m122 : packoffset(c149);
    float4 _19_m123 : packoffset(c150);
    float4 _19_m124 : packoffset(c151);
    float4 _19_m125 : packoffset(c152);
    float4 _19_m126 : packoffset(c153);
    float4 _19_m127 : packoffset(c154);
    float4 _19_m128 : packoffset(c155);
    float4 _19_m129 : packoffset(c156);
    float4 _19_m130 : packoffset(c157);
    float4 _19_m131 : packoffset(c158);
    float4 _19_m132 : packoffset(c159);
    float4 _19_m133 : packoffset(c160);
    float4 _19_m134 : packoffset(c161);
    column_major float4x4 _19_m135 : packoffset(c162);
    float4 _19_m136 : packoffset(c166);
    float4 _19_m137 : packoffset(c167);
    float4 _19_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _20_22 : register(b0)
{
    _21 _22_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _30 : register(t50);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _32 : register(t18);

uint4 _32_Load4(uint byte_offset)
{
    return asuint(_32[byte_offset >> 4u]);
}
[[vk::binding(47, 0)]]
cbuffer _33_34 : register(b47)
{
    int _34_m0 : packoffset(c0);
    int _34_m1 : packoffset(c0.y);
    int _34_m2 : packoffset(c0.z);
    int _34_m3 : packoffset(c0.w);
    float _34_m4 : packoffset(c1);
    float _34_m5 : packoffset(c1.y);
    float _34_m6 : packoffset(c1.z);
    float _34_m7 : packoffset(c1.w);
    float _34_m8 : packoffset(c2);
    float _34_m9 : packoffset(c2.y);
    float _34_m10 : packoffset(c2.z);
    float _34_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _35_36 : register(b14)
{
    float4 _36_m0 : packoffset(c0);
    float4 _36_m1 : packoffset(c1);
    float4 _36_m2 : packoffset(c2);
    float4 _36_m3 : packoffset(c3);
    float4 _36_m4 : packoffset(c4);
    uint4 _36_m5 : packoffset(c5);
    float4 _36_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _39_40 : register(b15)
{
    column_major float4x4 _40_m0[5] : packoffset(c0);
    float4 _40_m1[4] : packoffset(c20);
    float4 _40_m2[4] : packoffset(c24);
    float4 _40_m3[4] : packoffset(c28);
    float4 _40_m4 : packoffset(c32);
    float4 _40_m5 : packoffset(c33);
    float4 _40_m6 : packoffset(c34);
    float4 _40_m7 : packoffset(c35);
    float4 _40_m8 : packoffset(c36);
    float4 _40_m9[27] : packoffset(c37);
    column_major float4x4 _40_m10[56] : packoffset(c64);
    float4 _40_m11[56] : packoffset(c288);
    float4 _40_m12[56] : packoffset(c344);
    float4 _40_m13 : packoffset(c400);
    float4 _40_m14[47] : packoffset(c401);
    column_major float4x4 _40_m15[15] : packoffset(c448);
    float4 _40_m16[15] : packoffset(c508);
    float4 _40_m17[15] : packoffset(c523);
    float4 _40_m18[15] : packoffset(c538);
    float4 _40_m19 : packoffset(c553);
    float4 _40_m20 : packoffset(c554);
    float4 _40_m21[21] : packoffset(c555);
    column_major float4x4 _40_m22 : packoffset(c576);
    column_major float4x4 _40_m23 : packoffset(c580);
    float4 _40_m24 : packoffset(c584);
    float4 _40_m25 : packoffset(c585);
    float4 _40_m26 : packoffset(c586);
    float4 _40_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _53_54 : register(b0)
{
    float _54_m0 : packoffset(c0);
    float _54_m1 : packoffset(c0.y);
    float _54_m2 : packoffset(c0.z);
    float _54_m3 : packoffset(c0.w);
    float _54_m4 : packoffset(c1);
    float _54_m5 : packoffset(c1.y);
    float _54_m6 : packoffset(c1.z);
    float _54_m7 : packoffset(c1.w);
    float _54_m8 : packoffset(c2);
    float _54_m9 : packoffset(c2.y);
    float _54_m10 : packoffset(c2.z);
    float _54_m11 : packoffset(c2.w);
    float _54_m12 : packoffset(c3);
    float _54_m13 : packoffset(c3.y);
    float _54_m14 : packoffset(c3.z);
    float _54_m15 : packoffset(c3.w);
    float _54_m16 : packoffset(c4);
    float _54_m17 : packoffset(c4.y);
    float _54_m18 : packoffset(c4.z);
    float _54_m19 : packoffset(c4.w);
    float _54_m20 : packoffset(c5);
    float _54_m21 : packoffset(c5.y);
    float _54_m22 : packoffset(c5.z);
    float _54_m23 : packoffset(c5.w);
    float4 _54_m24 : packoffset(c6);
    float4 _54_m25 : packoffset(c7);
    float4 _54_m26 : packoffset(c8);
    float4 _54_m27 : packoffset(c9);
    float4 _54_m28 : packoffset(c10);
    float4 _54_m29 : packoffset(c11);
    float _54_m30 : packoffset(c12);
    float _54_m31 : packoffset(c12.y);
    float _54_m32 : packoffset(c12.z);
    float _54_m33 : packoffset(c12.w);
    float4 _54_m34 : packoffset(c13);
    float4 _54_m35 : packoffset(c14);
    float4 _54_m36 : packoffset(c15);
    float4 _54_m37 : packoffset(c16);
    float4 _54_m38 : packoffset(c17);
    float4 _54_m39 : packoffset(c18);
    float _54_m40 : packoffset(c19);
    float _54_m41 : packoffset(c19.y);
    float _54_m42 : packoffset(c19.z);
    float _54_m43 : packoffset(c19.w);
    float _54_m44 : packoffset(c20);
    float _54_m45 : packoffset(c20.y);
    float _54_m46 : packoffset(c20.z);
    float _54_m47 : packoffset(c20.w);
};

[[vk::binding(49, 0)]]
cbuffer _68_69 : register(b49)
{
    float4 _69_m0[32] : packoffset(c0);
    column_major float4x4 _69_m1[32] : packoffset(c32);
};

[[vk::binding(2, 0)]] SamplerState _24 : register(s2);
[[vk::binding(6, 0)]] SamplerState _25 : register(s6);
[[vk::binding(4, 0)]] SamplerState _26 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _27 : register(s7);
[[vk::binding(9, 0)]] Texture2D<float4> _41 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _42 : register(t26);
[[vk::binding(39, 0)]] Texture2D<float4> _43 : register(t39);
[[vk::binding(8, 0)]] Texture2D<float4> _44 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _45 : register(t11);
[[vk::binding(34, 0)]] Texture3D<float4> _47 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _48 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _49 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _50 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _51 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _52 : register(t29);
[[vk::binding(4, 1)]] Texture2D<float4> _55 : register(t4);
[[vk::binding(1, 1)]] Texture2D<float4> _56 : register(t1);
[[vk::binding(2, 1)]] Texture2D<float4> _57 : register(t2);
[[vk::binding(43, 0)]] Texture2D<float4> _58 : register(t43);
[[vk::binding(40, 0)]] Texture2D<float4> _59 : register(t40);
[[vk::binding(38, 0)]] Texture2D<float4> _60 : register(t38);
[[vk::binding(36, 0)]] Texture2D<float4> _61 : register(t36);
[[vk::binding(6, 1)]] Texture2D<float4> _62 : register(t6);
[[vk::binding(3, 1)]] Texture2D<float4> _63 : register(t3);
[[vk::binding(5, 1)]] Texture2D<float4> _64 : register(t5);
[[vk::binding(44, 0)]] TextureCube<float4> _66 : register(t44);
[[vk::binding(28, 0)]] Texture2D<float4> _67 : register(t28);
[[vk::binding(35, 0)]] Texture3D<float4> _72 : register(t35);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static float3 _10;
static uint _12;
static float4 _14;
static float4 _15;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float3 _10 : TEXCOORD7;
    [[vk::location(8)]] nointerpolation uint _12 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 _14 : SV_Target0;
    float4 _15 : SV_Target1;
};

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    float _567 = 1.0f / gl_FragCoord.w;
    float3 _582 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _583 = dot(_582, _582);
    float _585 = rsqrt(max(_583, 9.9999999392252902907785028219223e-09f));
    float3 _586 = _582 * _585;
    float _587 = _583 * _585;
    uint _590 = asuint(_22_m0[_12]._m2.x);
    bool _595 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _608;
    float4 _609;
    if (_595)
    {
        _608 = asfloat(_32_Load4((_590 + 2u) * 16 + 0));
        _609 = asfloat(_32_Load4(_590 * 16 + 0));
    }
    else
    {
        _608 = _22_m0[_12]._m0[2];
        _609 = _22_m0[_12]._m0[0];
    }
    float _616 = 1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z);
    float _622 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    float _624 = abs(_622);
    if (min(_22_m0[_12]._m1.x - ((_22_m0[_12]._m1.x >= 0.0f) ? _624 : (-_624)), _616 - _622) < 0.0f)
    {
        discard;
    }
    float4 _638 = _62.SampleBias(_26, _3, _19_m16);
    float3 _643 = _638.xyz * _54_m24.xyz;
    float4 _647 = _63.SampleBias(_26, _3, _19_m16);
    float _648 = _647.x;
    float _650 = _647.z;
    float _652 = 1.0f - _647.w;
    float _656 = _638.w * _54_m24.w;
    float3 _657 = _643 * 12.9200000762939453125f;
    float3 _661 = (pow(abs(_643), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
    bool3 _662 = bool3(_643.x <= 0.003130800090730190277099609375f.xxx.x, _643.y <= 0.003130800090730190277099609375f.xxx.y, _643.z <= 0.003130800090730190277099609375f.xxx.z);
    float3 _664 = clamp(float3(_662.x ? _657.x : _661.x, _662.y ? _657.y : _661.y, _662.z ? _657.z : _661.z), 0.0f.xxx, 1.0f.xxx);
    float _668 = _664.z * 31.0f;
    float _669 = floor(_668);
    float2 _673 = ((_664.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
    float3 _674 = float3(_673.x, _673.y, _664.z);
    _674.x = _673.x + (_669 * 0.03125f);
    float3 _689 = lerp(_57.SampleLevel(_25, _674.xy, 0.0f).xyz, _57.SampleLevel(_25, _674.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_668 - _669).xxx);
    float4 _693 = _64.SampleBias(_26, _3, _19_m16);
    _693.w = _693.w * _693.x;
    float2 _702 = (_693.wy * 2.0f) - 1.0f.xx;
    float3 _703 = float3(_702.x, _702.y, _548.z);
    float2 _704 = _702.xy;
    _703.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_704, _704), 0.0f, 1.0f)));
    float2 _712 = _703.xy * _54_m3;
    float3 _717 = _4 + _17_m11.xyz;
    float3 _721 = _717 - float3(_609.w, _551, _608.w);
    _721.y = 6.103515625e-05f;
    float3 _724 = normalize(_721);
    float3 _734 = mul(float3(_712.x, _712.y, _703.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
    float _743 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _54_m5));
    float3 _744 = (_734 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_734, _734)))) * _743;
    float3 _745 = normalize(_5) * _743;
    uint2 _746 = uint2(gl_FragCoord.xy);
    float3 _756 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    uint _765 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _778 = float4(float(_765 & 255u), float((_765 >> 8u) & 255u), float((_765 >> 16u) & 255u), float((_765 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _779 = _778.x;
    float _782 = _778.w;
    float _788 = _717.y;
    float _791 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _788) * _778.y;
    float _792 = max(_778.z, _791);
    float _801 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float4 _1295;
    float3 _1296;
    float3 _1297;
    float _1298;
    if (_19_m80.y < 0.5f)
    {
        float3 _819 = _717 - (_19_m105.xyz + (_756 * (-_19_m107.w)));
        float _833 = max(clamp((max(abs(_819.x), abs(_819.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_819.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _1135;
        float4 _1136;
        float4 _1137;
        float _1138;
        float _1139;
        if ((_19_m105.w != 0.0f) && (_833 < 1.0f))
        {
            float3 _846 = _717 - (_19_m105.xyz + (_756 * (-_19_m107.y)));
            float _860 = max(clamp((max(abs(_846.x), abs(_846.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_846.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _936;
            float4 _937;
            float4 _938;
            float4 _939;
            if (_860 < 1.0f)
            {
                float3 _869 = ((_717 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _871 = _869 - floor(_869);
                float4 _875 = _47.SampleLevel(_26, _871, 0.0f);
                float _876 = 1.0f - _860;
                float _880 = _19_m106.y * 0.5f;
                float _885 = _871.x;
                float _886 = clamp(_871.y, _880, 1.0f - _880) * 0.3333333432674407958984375f;
                float _887 = _871.z;
                float4 _890 = _48.SampleLevel(_25, float3(_885, _886, _887), 0.0f);
                float _906 = _875.x;
                float _916 = _875.y;
                float _926 = _875.z;
                _936 = _833 + (_890.w * _876);
                _937 = float4(((_48.SampleLevel(_25, float3(_885, _886 + 0.666666686534881591796875f, _887), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _926, _926) * _876;
                _938 = float4(((_48.SampleLevel(_25, float3(_885, _886 + 0.3333333432674407958984375f, _887), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _916, _916) * _876;
                _939 = float4(((_890.xyz * 4.0f) - 2.0f.xxx) * _906, _906) * _876;
            }
            else
            {
                _936 = _833;
                _937 = 0.0f.xxxx;
                _938 = 0.0f.xxxx;
                _939 = 0.0f.xxxx;
            }
            float3 _945 = _717 - (_19_m105.xyz + (_756 * (-_19_m107.z)));
            float _959 = max(clamp((max(abs(_945.x), abs(_945.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_945.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _1039;
            float4 _1040;
            float4 _1041;
            float4 _1042;
            if (_959 < 1.0f)
            {
                float3 _968 = ((_717 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _970 = _968 - floor(_968);
                float4 _974 = _49.SampleLevel(_26, _970, 0.0f);
                float _976 = _860 * (1.0f - _959);
                float _980 = _19_m106.y * 0.5f;
                float _985 = _970.x;
                float _986 = clamp(_970.y, _980, 1.0f - _980) * 0.3333333432674407958984375f;
                float _987 = _970.z;
                float4 _990 = _50.SampleLevel(_25, float3(_985, _986, _987), 0.0f);
                float _1006 = _974.x;
                float _1017 = _974.y;
                float _1028 = _974.z;
                _1039 = _936 + (_990.w * _976);
                _1040 = _937 + (float4(((_50.SampleLevel(_25, float3(_985, _986 + 0.666666686534881591796875f, _987), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1028, _1028) * _976);
                _1041 = _938 + (float4(((_50.SampleLevel(_25, float3(_985, _986 + 0.3333333432674407958984375f, _987), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1017, _1017) * _976);
                _1042 = _939 + (float4(((_990.xyz * 4.0f) - 2.0f.xxx) * _1006, _1006) * _976);
            }
            else
            {
                _1039 = _936;
                _1040 = _937;
                _1041 = _938;
                _1042 = _939;
            }
            float4 _1125;
            float4 _1126;
            float4 _1127;
            float _1128;
            if (_959 > 0.0f)
            {
                float3 _1051 = ((_717 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _1054 = _19_m106.xyz * 0.5f;
                float3 _1056 = clamp(_1051 - floor(_1051), _1054, 1.0f.xxx - _1054);
                float4 _1060 = _51.SampleLevel(_26, _1056, 0.0f);
                float _1062 = _959 * (1.0f - _833);
                float _1066 = _19_m106.y * 0.5f;
                float _1071 = _1056.x;
                float _1072 = clamp(_1056.y, _1066, 1.0f - _1066) * 0.3333333432674407958984375f;
                float _1073 = _1056.z;
                float4 _1076 = _52.SampleLevel(_25, float3(_1071, _1072, _1073), 0.0f);
                float _1092 = _1060.x;
                float _1103 = _1060.y;
                float _1114 = _1060.z;
                _1125 = _1040 + (float4(((_52.SampleLevel(_25, float3(_1071, _1072 + 0.666666686534881591796875f, _1073), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1114, _1114) * _1062);
                _1126 = _1041 + (float4(((_52.SampleLevel(_25, float3(_1071, _1072 + 0.3333333432674407958984375f, _1073), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1103, _1103) * _1062);
                _1127 = _1042 + (float4(((_1076.xyz * 4.0f) - 2.0f.xxx) * _1092, _1092) * _1062);
                _1128 = _1039 + (_1076.w * _1062);
            }
            else
            {
                _1125 = _1040;
                _1126 = _1041;
                _1127 = _1042;
                _1128 = _1039;
            }
            float _1131 = clamp((_1128 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _1135 = _1125;
            _1136 = _1126;
            _1137 = _1127;
            _1138 = _1131 - _833;
            _1139 = (_1131 + _833) * 0.5f;
        }
        else
        {
            _1135 = 0.0f.xxxx;
            _1136 = 0.0f.xxxx;
            _1137 = 0.0f.xxxx;
            _1138 = 0.0f;
            _1139 = 1.0f;
        }
        float4 _1159 = _1137 + float4(_19_m108.x * _1139, (_19_m108.y * _1139) + ((_19_m108.w * _1138) * 0.5f), _19_m108.z * _1139, (_19_m108.w * _1139) + ((_19_m108.y * _1138) * 0.375f));
        float4 _1179 = _1136 + float4(_19_m109.x * _1139, (_19_m109.y * _1139) + ((_19_m109.w * _1138) * 0.5f), _19_m109.z * _1139, (_19_m109.w * _1139) + ((_19_m109.y * _1138) * 0.375f));
        float4 _1199 = _1135 + float4(_19_m110.x * _1139, (_19_m110.y * _1139) + ((_19_m110.w * _1138) * 0.5f), _19_m110.z * _1139, (_19_m110.w * _1139) + ((_19_m110.y * _1138) * 0.375f));
        float4 _1203 = float4(_744, 1.0f);
        float3 _1209 = max(float3(dot(_1159, _1203), dot(_1179, _1203), dot(_1199, _1203)), 0.0f.xxx) * _801;
        float3 _1217 = ((_1159.xyz * 0.2125999927520751953125f) + (_1179.xyz * 0.715200006961822509765625f)) + (_1199.xyz * 0.072200000286102294921875f);
        float3 _1221 = _1217 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1217, _1217)));
        float _1223 = abs(_1221.y);
        float3 _1224 = _1221;
        _1224.y = _1223;
        float4 _1225 = float4(_1224.x, _1224.y, _1224.z, 0.0f.xxxx.w);
        _1225.w = 1.0f;
        float4 _1229 = float4(_1221.x, _1223, _1221.z, 1.0f);
        float3 _1234 = max(float3(dot(_1159, _1229), dot(_1179, _1229), dot(_1199, _1229)), 0.0f.xxx);
        float _1242 = _1209.z;
        float _1243 = _1209.y;
        float4 _1248 = lerp(float4(_1242, _1243, -1.0f, 0.666666686534881591796875f), float4(_1243, _1242, 0.0f, -0.3333333432674407958984375f), step(_1242, _1243).xxxx);
        float _1249 = _1209.x;
        float _1250 = _1248.x;
        float4 _1258 = lerp(float4(_1250, _1248.yw, _1249), float4(_1249, _1248.yz, _1250), step(_1250, _1249).xxxx);
        float _1259 = _1258.x;
        float _1260 = _1258.w;
        float _1261 = _1258.y;
        float _1263 = _1259 - min(_1260, _1261);
        float _1273 = frac(abs(_1258.z + ((_1260 - _1261) / ((6.0f * _1263) + 9.9999997473787516355514526367188e-05f))));
        float _1280 = min(_1263 / (_1259 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1273 - 0.5f))) * clamp(_1259, 0.0f, 1.0f));
        float _1282 = 2.0f / (2.0f - _1280);
        _1295 = _1225;
        _1296 = _1209;
        _1297 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1273, _1280, _1282).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1280.xxx) * _1282;
        _1298 = max(max(max(_1234.x, _1234.y), _1234.z), 0.0f) * _801;
    }
    else
    {
        _1295 = 0.0f.xxxx;
        _1296 = 1.0f.xxx;
        _1297 = _19_m81.xyz;
        _1298 = _801;
    }
    float3 _2018;
    float _2019;
    float _2020;
    float _2021;
    float3 _2022;
    float3 _2023;
    [branch]
    if ((clamp(_779 + _792, 0.0f, 1.0f) - _54_m20) > 0.00999999977648258209228515625f)
    {
        float _1326 = 1.0f - _648;
        float _1329 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_643 * _1326, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
        bool3 _1332 = _595.xxx;
        float3 _1334 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1338 = float3(_1332.x ? _1334.x : _10.x, _1332.y ? _1334.y : _10.y, _1332.z ? _1334.z : _10.z) * _19_m89.z;
        float3 _1340 = float3(_1332.x ? _9.xzy.x : _9.x, _1332.y ? _9.xzy.y : _9.y, _1332.z ? _9.xzy.z : _9.z);
        float3 _1342 = abs(_1340) - 0.20000000298023223876953125f.xxx;
        float3 _1345 = max((_1342 * _1342) * _1342, 6.103515625e-05f.xxx);
        float3 _1348 = _1345 / dot(_1345, 1.0f.xxx).xxx;
        float2 _1356 = _1338.xy;
        float2 _1361 = _1338.zy;
        float4 _1371 = ((_58.SampleBias(_26, _1338.xz, _19_m16) * _1348.y) + (_58.SampleBias(_26, _1356, _19_m16) * _1348.z)) + (_58.SampleBias(_26, _1361, _19_m16) * _1348.x);
        float _1372 = _1371.w;
        float _1374 = 1.10000002384185791015625f - _1372;
        float _1383 = max(smoothstep(0.800000011920928955078125f - _1372, _1374, clamp((_779 * _1326) + (_744.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1372, _1374, clamp(_791 * _1326, 0.0f, 1.0f)));
        float _1390 = smoothstep(0.5f, 0.75f, _648);
        float _1392 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _652) * _1329;
        float _1395 = clamp(_1392 + _1390, 0.0f, 1.0f) * max(_779, _792);
        bool _1399 = !((step(_779, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _792)) != 0.0f);
        bool2 _1400 = _1399.xx;
        float2 _1402 = (1.0f - _792).xx;
        float2 _1403 = float2(_1400.x ? float2(3.0f, 4.345600128173828125f).x : _1402.x, _1400.y ? float2(3.0f, 4.345600128173828125f).y : _1402.y);
        float _1404 = 1.0f - _1395;
        float _1407 = _1399 ? _19_m10.x : 1.0f;
        float _1409 = _1407 * _1403.x;
        float _1411 = _1407 * _1403.y;
        float3 _1412 = _1338 * 20.0f;
        float3 _1413 = _1338 * 34.345600128173828125f;
        float3 _1415 = pow(max(_1342, 0.0f.xxx), 10.0f.xxx);
        float3 _1419 = _1415 / max(dot(_1415, 1.0f.xxx), 6.103515625e-05f).xxx;
        float _1421 = _1419.y;
        float2 _1422 = _1412.xz * 1.0f;
        float2 _1423 = floor(_1422);
        float2 _1426 = frac(_1423 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1430 = _1426 + dot(_1426, _1426 + 34.345001220703125f.xx).xx;
        float _1431 = _1430.x;
        float _1432 = _1430.y;
        float2 _1436 = frac(float2(_1431 * _1432, _1431 + _1432));
        float2 _1439 = frac((_1423 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1443 = _1439 + dot(_1439, _1439 + 34.345001220703125f.xx).xx;
        float _1444 = _1443.x;
        float _1445 = _1443.y;
        float2 _1449 = frac(float2(_1444 * _1445, _1444 + _1445));
        float _1455 = _1436.x;
        float _1457 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1455);
        float2 _1458 = ((_1422 - _1423) + ((((_1449 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1461 = _1458.y;
        float2 _1465 = float2(_1458.x * 1.25f, _1461 * ((_1461 < 0.0f) ? 1.25f : 0.75f));
        float _1468 = _1409 + _1455;
        float _1472 = _1399 ? frac(_1468) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1468, 0.0f, 1.0f));
        float _1484 = _1436.y;
        float _1487 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1472) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1472)) * step(0.001000000047497451305389404296875f, smoothstep(_1457, 0.0f, length(_1465)))) * step(_1404, _1484 - 0.100000001490116119384765625f);
        float _1490 = _1487 * _1421;
        float _1498 = _1419.z;
        float2 _1499 = _1412.xy * 1.0f;
        float2 _1500 = floor(_1499);
        float2 _1503 = frac(_1500 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1507 = _1503 + dot(_1503, _1503 + 34.345001220703125f.xx).xx;
        float _1508 = _1507.x;
        float _1509 = _1507.y;
        float2 _1513 = frac(float2(_1508 * _1509, _1508 + _1509));
        float2 _1516 = frac((_1500 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1520 = _1516 + dot(_1516, _1516 + 34.345001220703125f.xx).xx;
        float _1521 = _1520.x;
        float _1522 = _1520.y;
        float2 _1526 = frac(float2(_1521 * _1522, _1521 + _1522));
        float _1532 = _1513.x;
        float _1534 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1532);
        float2 _1535 = ((_1499 - _1500) + ((((_1526 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1538 = _1535.y;
        float2 _1542 = float2(_1535.x * 1.25f, _1538 * ((_1538 < 0.0f) ? 1.25f : 0.75f));
        float _1545 = _1409 + _1532;
        float _1549 = _1399 ? frac(_1545) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1545, 0.0f, 1.0f));
        float _1561 = _1513.y;
        float _1564 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1549) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1549)) * step(0.001000000047497451305389404296875f, smoothstep(_1534, 0.0f, length(_1542)))) * step(_1404, _1561 - 0.100000001490116119384765625f);
        float _1567 = _1564 * _1498;
        float _1575 = _1419.x;
        float2 _1576 = _1412.zy * 1.0f;
        float2 _1577 = floor(_1576);
        float2 _1580 = frac(_1577 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1584 = _1580 + dot(_1580, _1580 + 34.345001220703125f.xx).xx;
        float _1585 = _1584.x;
        float _1586 = _1584.y;
        float2 _1590 = frac(float2(_1585 * _1586, _1585 + _1586));
        float2 _1593 = frac((_1577 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1597 = _1593 + dot(_1593, _1593 + 34.345001220703125f.xx).xx;
        float _1598 = _1597.x;
        float _1599 = _1597.y;
        float2 _1603 = frac(float2(_1598 * _1599, _1598 + _1599));
        float _1609 = _1590.x;
        float _1611 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1609);
        float2 _1612 = ((_1576 - _1577) + ((((_1603 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1615 = _1612.y;
        float2 _1619 = float2(_1612.x * 1.25f, _1615 * ((_1615 < 0.0f) ? 1.25f : 0.75f));
        float _1622 = _1409 + _1609;
        float _1626 = _1399 ? frac(_1622) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1622, 0.0f, 1.0f));
        float _1638 = _1590.y;
        float _1641 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1626) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1626)) * step(0.001000000047497451305389404296875f, smoothstep(_1611, 0.0f, length(_1619)))) * step(_1404, _1638 - 0.100000001490116119384765625f);
        float _1644 = _1641 * _1575;
        float2 _1657 = (float4(((clamp(_1465 / _1457.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1449.x)) * _1487) * _1421, _1490, _1484).xy + float4(((clamp(_1542 / _1534.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1526.x)) * _1564) * _1498, _1567, _1561).xy) + float4(((clamp(_1619 / _1611.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1603.x)) * _1641) * _1575, _1644, _1638).xy;
        float _1659 = max(_1644, max(_1490, _1567));
        float4 _1662 = float4(_1657, _1659, 0.0f);
        float2 _1664 = _1413.xz * 1.0f;
        float2 _1665 = floor(_1664);
        float2 _1668 = frac(_1665 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1672 = _1668 + dot(_1668, _1668 + 34.345001220703125f.xx).xx;
        float _1673 = _1672.x;
        float _1674 = _1672.y;
        float2 _1678 = frac(float2(_1673 * _1674, _1673 + _1674));
        float2 _1681 = frac((_1665 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1685 = _1681 + dot(_1681, _1681 + 34.345001220703125f.xx).xx;
        float _1686 = _1685.x;
        float _1687 = _1685.y;
        float2 _1691 = frac(float2(_1686 * _1687, _1686 + _1687));
        float _1697 = _1678.x;
        float _1699 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1697);
        float2 _1700 = ((_1664 - _1665) + ((((_1691 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1703 = _1700.y;
        float2 _1707 = float2(_1700.x * 1.25f, _1703 * ((_1703 < 0.0f) ? 1.25f : 0.75f));
        float _1710 = _1411 + _1697;
        float _1714 = _1399 ? frac(_1710) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1710, 0.0f, 1.0f));
        float _1726 = _1678.y;
        float _1729 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1714) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1714)) * step(0.001000000047497451305389404296875f, smoothstep(_1699, 0.0f, length(_1707)))) * step(_1404, _1726 - 0.100000001490116119384765625f);
        float _1732 = _1729 * _1421;
        float2 _1737 = _1413.xy * 1.0f;
        float2 _1738 = floor(_1737);
        float2 _1741 = frac(_1738 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1745 = _1741 + dot(_1741, _1741 + 34.345001220703125f.xx).xx;
        float _1746 = _1745.x;
        float _1747 = _1745.y;
        float2 _1751 = frac(float2(_1746 * _1747, _1746 + _1747));
        float2 _1754 = frac((_1738 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1758 = _1754 + dot(_1754, _1754 + 34.345001220703125f.xx).xx;
        float _1759 = _1758.x;
        float _1760 = _1758.y;
        float2 _1764 = frac(float2(_1759 * _1760, _1759 + _1760));
        float _1770 = _1751.x;
        float _1772 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1770);
        float2 _1773 = ((_1737 - _1738) + ((((_1764 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1776 = _1773.y;
        float2 _1780 = float2(_1773.x * 1.25f, _1776 * ((_1776 < 0.0f) ? 1.25f : 0.75f));
        float _1783 = _1411 + _1770;
        float _1787 = _1399 ? frac(_1783) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1783, 0.0f, 1.0f));
        float _1799 = _1751.y;
        float _1802 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1787) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1787)) * step(0.001000000047497451305389404296875f, smoothstep(_1772, 0.0f, length(_1780)))) * step(_1404, _1799 - 0.100000001490116119384765625f);
        float _1805 = _1802 * _1498;
        float2 _1810 = _1413.zy * 1.0f;
        float2 _1811 = floor(_1810);
        float2 _1814 = frac(_1811 * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1818 = _1814 + dot(_1814, _1814 + 34.345001220703125f.xx).xx;
        float _1819 = _1818.x;
        float _1820 = _1818.y;
        float2 _1824 = frac(float2(_1819 * _1820, _1819 + _1820));
        float2 _1827 = frac((_1811 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
        float2 _1831 = _1827 + dot(_1827, _1827 + 34.345001220703125f.xx).xx;
        float _1832 = _1831.x;
        float _1833 = _1831.y;
        float2 _1837 = frac(float2(_1832 * _1833, _1832 + _1833));
        float _1843 = _1824.x;
        float _1845 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1843);
        float2 _1846 = ((_1810 - _1811) + ((((_1837 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
        float _1849 = _1846.y;
        float2 _1853 = float2(_1846.x * 1.25f, _1849 * ((_1849 < 0.0f) ? 1.25f : 0.75f));
        float _1856 = _1411 + _1843;
        float _1860 = _1399 ? frac(_1856) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1856, 0.0f, 1.0f));
        float _1872 = _1824.y;
        float _1875 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1860) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1860)) * step(0.001000000047497451305389404296875f, smoothstep(_1845, 0.0f, length(_1853)))) * step(_1404, _1872 - 0.100000001490116119384765625f);
        float _1878 = _1875 * _1575;
        float2 _1886 = (float4(((clamp(_1707 / _1699.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1691.x)) * _1729) * _1421, _1732, _1726).xy + float4(((clamp(_1780 / _1772.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1764.x)) * _1802) * _1498, _1805, _1799).xy) + float4(((clamp(_1853 / _1845.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1837.x)) * _1875) * _1575, _1878, _1872).xy;
        float4 _1891 = float4(_1886, max(_1878, max(_1732, _1805)), 0.0f);
        float _1893 = step(max(float2(_1457 * _1487, _551) * _1421, max(float2(_1534 * _1564, _551) * _1498, float2(_1611 * _1641, _551) * _1575)).x, 0.00999999977648258209228515625f);
        float2 _1897 = _1662.xy + (_1891.xy * _1893);
        float3 _1906 = float3((_1371.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1897.x, _1897.y, 0.0f.xxx.z);
        float2 _1910 = float2(0.0f, (_19_m10.x * _19_m89.z) * 0.75f);
        float3 _1913 = float3(_1340.x, 0.0f, _1340.z);
        float3 _1919 = abs(_1913 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1913, _1913)))) - 0.20000000298023223876953125f.xxx;
        float3 _1922 = max((_1919 * _1919) * _1919, 6.103515625e-05f.xxx);
        float3 _1925 = _1922 / dot(_1922, 1.0f.xxx).xxx;
        float _1944 = _1925.z;
        float _1946 = _1925.x;
        float4 _1948 = (_59.SampleBias(_26, _1356, _19_m16) * _1944) + (_59.SampleBias(_26, _1361, _19_m16) * _1946);
        float2 _1960 = _1906.xy + ((((_1948.xy * 2.0f) - 1.0f.xx) * ((_59.SampleBias(_26, _1356 + _1910, _19_m16).w * _1944) + (_59.SampleBias(_26, _1361 + _1910, _19_m16).w * _1946))) * _1395);
        float3 _1961 = float3(_1960.x, _1960.y, _1906.z);
        float _1962 = _1948.z;
        float _1967 = max(max(max(_1662.zw * step(0.00999999977648258209228515625f, _1659), _1891.zw * _1893).x, step(1.0099999904632568359375f - _1395, _1371.z)), smoothstep(1.0f - _1962, 1.10000002384185791015625f - _1962, _1395) * _1395);
        float2 _1968 = _1960.xy;
        _1961.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1968, _1968), 0.0f, 1.0f)));
        float3 _1975 = normalize(_1961);
        float3 _1976 = cross(_744, float3(0.0f, 1.0f, 0.0f));
        bool3 _1979 = (dot(_1976, _1976) > 6.103515625e-05f).xxx;
        float3 _1980 = normalize(_1976);
        float3 _1981 = float3(_1979.x ? _1980.x : float3(1.0f, 0.0f, 0.0f).x, _1979.y ? _1980.y : float3(1.0f, 0.0f, 0.0f).y, _1979.z ? _1980.z : float3(1.0f, 0.0f, 0.0f).z);
        float _1992 = min(_652, 0.0500000007450580596923828125f);
        float _1993 = lerp(_652, _1992, _1967);
        float _2010 = lerp(1.0f, 0.5f, (_1383 * (1.0f - _1329)) * (1.0f - _1392));
        _2018 = normalize(lerp(_744, normalize(((_1981 * _1975.x) + (cross(_1981, _744) * _1975.y)) + (_744 * _1975.z)), _1967.xxx));
        _2019 = _1967;
        _2020 = _1992;
        _2021 = max(_1993 - ((0.20000000298023223876953125f * _1329) * _1383), min(0.20000000298023223876953125f, _1993));
        _2022 = _689 * _2010;
        _2023 = lerp(_643, _643 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_643, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1967 * _1390).xxx) * _2010;
    }
    else
    {
        _2018 = _744;
        _2019 = 0.0f;
        _2020 = 0.00999999977648258209228515625f;
        _2021 = _652;
        _2022 = _689;
        _2023 = _643;
    }
    float3 _2194;
    float _2195;
    float3 _2196;
    float3 _2197;
    float _2198;
    [branch]
    if (_782 > 0.00999999977648258209228515625f)
    {
        bool3 _2027 = _595.xxx;
        float3 _2029 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _2030 = float3(_2027.x ? _2029.x : _10.x, _2027.y ? _2029.y : _10.y, _2027.z ? _2029.z : _10.z);
        float3 _2033 = _2030 * _19_m89.z;
        float3 _2035 = float3(_2027.x ? _9.xzy.x : _9.x, _2027.y ? _9.xzy.y : _9.y, _2027.z ? _9.xzy.z : _9.z);
        float3 _2037 = abs(_2035) - 0.20000000298023223876953125f.xxx;
        float3 _2040 = max((_2037 * _2037) * _2037, 6.103515625e-05f.xxx);
        float3 _2043 = _2040 / dot(_2040, 1.0f.xxx).xxx;
        float _2059 = _2043.y;
        float _2061 = _2043.z;
        float _2064 = _2043.x;
        float4 _2066 = ((_60.SampleBias(_26, _2033.xz, _19_m16) * _2059) + (_60.SampleBias(_26, _2033.xy, _19_m16) * _2061)) + (_60.SampleBias(_26, _2033.zy, _19_m16) * _2064);
        float _2067 = _2035.y;
        float _2074 = clamp(_782 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _2030.y) * clamp(_782 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _2085 = smoothstep(2.0f - _2074, 2.349999904632568359375f - _2074, ((_2067 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _2066.z) * ((_650 * _650) * float(gl_FrontFacing));
        float _2097 = lerp(1.0f, 0.5f, ((_2074 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_2023 * (1.0f - _648), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _2066.w) * ((_2067 * 0.25f) + 0.75f));
        float3 _2099 = _2085.xxx;
        float2 _2105 = (_2066.xy * 2.0f) - 1.0f.xx;
        float3 _2106 = float3(_2105.x, _2105.y, _548.z);
        float2 _2107 = _2105.xy;
        _2106.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2107, _2107), 0.0f, 1.0f)));
        float2 _2115 = _2106.xy * 2.0f;
        float3 _2117 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2115.x, _2115.y, _2106.z), _2099);
        float3 _2121 = _2117 * rsqrt(max(6.103515625e-05f, dot(_2117, _2117)));
        float _2122 = _744.y;
        float _2125 = step(0.00999999977648258209228515625f, 1.0f - (_2122 * _2122));
        float _2129 = lerp(_744.z, _2122, _2125);
        float3 _2136 = (float3(0.0f, _2125, 1.0f - _2125) - (_744 * _2129)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2129 * _2129)));
        float3 _2150 = _2033 * 4.0f;
        float4 _2170 = ((_61.SampleLevel(_24, _2150.xz, 0.0f) * _2059) + (_61.SampleLevel(_24, _2150.xy, 0.0f) * _2061)) + (_61.SampleLevel(_24, _2150.zy, 0.0f) * _2064);
        float2 _2173 = (_2170.xz * 2.0f) - 1.0f.xx;
        float _2184 = smoothstep(0.949999988079071044921875f, 1.0f, frac(((dot(float3(_2173.x, _2170.y, _2173.y), (floor(_586 * 50.0f) * 0.0199999995529651641845703125f) * 0.100000001490116119384765625f) * 0.5f) + 0.5f) * 2.0f));
        float _2185 = _2184 * _2184;
        float _2188 = _2185 * ((_2185 * 2.0f) * _2085);
        float3 _2189 = 1.0f.xxx * _2188;
        _2194 = ((cross(_2136, _744) * _2121.x) + (_2136 * _2121.y)) + (_744 * _2121.z);
        _2195 = lerp(lerp(_2021, 0.89999997615814208984375f, clamp(_2085 * 4.0f, 0.0f, 1.0f)), 0.00999999977648258209228515625f, _2188);
        _2196 = lerp(_2022 * _2097, 0.3079999983310699462890625f.xxx, _2099) + (_2189 * 0.5f);
        _2197 = lerp(_2023 * _2097, 0.87999999523162841796875f.xxx, _2099) + _2189;
        _2198 = lerp(_648, 0.0f, _2085);
    }
    else
    {
        _2194 = _744;
        _2195 = _2021;
        _2196 = _2022;
        _2197 = _2023;
        _2198 = _648;
    }
    float _2200 = 0.959999978542327880859375f - (_2198 * 0.959999978542327880859375f);
    float3 _2201 = _2197 * _2200;
    float3 _2204 = lerp(0.039999999105930328369140625f.xxx * _647.y, _2197, _2198.xxx);
    float3 _2205 = _2196 * _2200;
    float _2207 = max(_2195 * _2195, 0.0078125f);
    float _2208 = _2207 * _2207;
    bool _2209 = _616 < 0.9900000095367431640625f;
    float2 _2222 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _2222.y = -_2222.y;
    float2 _2238 = lerp(((sqrt(sqrt(abs(_2222 * 0.5f))) * float2(int2(sign(_2222)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2209).xx);
    float4 _2240 = float4(_2238.x, _2238.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _2240.z = 1.0f;
    _2240.w = _2209 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _2253 = lerp(-_36_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _2257 = normalize(float3(_2253.x, 6.103515625e-05f, _2253.z));
    float3 _2267 = lerp(_36_m3.xyz, _19_m84.xyz, _19_m91.y.xxx);
    float3 _2271 = _2267 * lerp(_36_m3.w, 1.0f, _19_m91.w);
    float _2398;
    do
    {
        float _2280 = log2(float(asuint(_22_m0[_12]._m2.z))) - 8.0f;
        float _2397;
        if ((_2280 >= 0.0f) && (_2280 < _40_m20.z))
        {
            int _2288 = int(_2280);
            float _2294 = 1.0f - clamp(dot(_745, _40_m17[_2288].xyz), 0.0f, 0.89999997615814208984375f);
            float4 _2311 = mul(_40_m15[_2288], float4((_717 - (_40_m17[_2288].xyz * (_2294 * _40_m16[_2288].x))) + (_745 * (_2294 * _40_m16[_2288].y)), 1.0f));
            float _2313 = max(_2311.z, 0.00999999977648258209228515625f);
            float4 _2314 = _2311;
            _2314.z = _2313;
            bool3 _2316 = bool3(_2314.xyz.x <= 0.0f.xxx.x, _2314.xyz.y <= 0.0f.xxx.y, _2314.xyz.z <= 0.0f.xxx.z);
            bool3 _2317 = bool3(_2314.xyz.x >= 1.0f.xxx.x, _2314.xyz.y >= 1.0f.xxx.y, _2314.xyz.z >= 1.0f.xxx.z);
            if (any(bool3(_2316.x || _2317.x, _2316.y || _2317.y, _2316.z || _2317.z)) || ((asuint(_2313) & 2147483647u) > 2139095040u))
            {
                _2398 = 1.0f;
                break;
            }
            float _2338 = 4.0f * _40_m19.x;
            float2 _2339 = (_40_m18[_2288].xy + (_2314.xy * _40_m18[_2288].zw)).xy;
            int2 _2341 = int2(_746 % uint2(4u, 4u));
            int _2345 = (_2341.x * 4) + _2341.y;
            float2x2 _2352 = float2x2(_501[_2345], float2(-_501[_2345].y, _501[_2345].x));
            float _2354;
            float _2357;
            _2354 = 0.0f;
            _2357 = 0.0f;
            for (uint _2359 = 0u; _2359 < 16u; )
            {
                float4 _2371 = _43.GatherRed(_25, _2339 + (mul(_500[_2359], _2352) * _2338)) - _2313.xxxx;
                float4 _2372 = step(0.0f.xxxx, _2371);
                _2354 += dot(_2371, _2372);
                _2357 += dot(_2372, 1.0f.xxxx);
                _2359++;
                continue;
            }
            float _2383 = (2.0f * clamp(_2357 * 0.015625f, 0.0f, 1.0f)) - 1.0f;
            float _2386 = float(int(sign(_2383)));
            float _2388 = 1.0f - (_2386 * _2383);
            _2397 = min(1.0f, 0.5f - (0.5f * ((1.0f - lerp((_2388 * _2388) * _2388, _2388, clamp((_2354 * (1.0f / _2357)) * (1.0f / _2313), 0.0f, 1.0f))) * _2386)));
        }
        else
        {
            _2397 = 1.0f;
        }
        _2398 = _2397;
        break;
    } while(false);
    float2 _2875;
    do
    {
        if (_40_m7.w >= 0.9900000095367431640625f)
        {
            _2875 = float2(_40_m7.z, 1.0f);
            break;
        }
        int _2411 = int(_40_m7.x);
        bool3 _2413 = (_2411 == 2).xxx;
        float3 _2418 = _717 - float3(_2413.x ? _40_m1[0].xyz.x : _17_m11.xyz.x, _2413.y ? _40_m1[0].xyz.y : _17_m11.xyz.y, _2413.z ? _40_m1[0].xyz.z : _17_m11.xyz.z);
        float _2429 = max(clamp((_40_m6.w - dot(_2418, _2418)) * _40_m6.z, 0.0f, 1.0f), _40_m8.x);
        float _2617;
        bool _2618;
        if (_2429 > 0.0f)
        {
            float _2615;
            bool _2616;
            if (_2411 > 0)
            {
                float3 _2436 = _717 - _40_m1[0].xyz;
                float3 _2440 = _717 - _40_m1[1].xyz;
                float3 _2444 = _717 - _40_m1[2].xyz;
                float3 _2448 = _717 - _40_m1[3].xyz;
                float4 _2453 = float4(dot(_2436, _2436), dot(_2440, _2440), dot(_2444, _2444), dot(_2448, _2448));
                float4 _2462 = float4(_40_m1[0].w, _40_m1[1].w, _40_m1[2].w, _40_m1[3].w);
                float4 _2464 = float4(bool4(_2453.x < _2462.x, _2453.y < _2462.y, _2453.z < _2462.z, _2453.w < _2462.w));
                float3 _2468 = clamp(_2464.yzw - _2464.xyz, 0.0f.xxx, 1.0f.xxx);
                float _2475 = max(clamp(4.0f - dot(float4(_2464.x, _2468.x, _2468.y, _2468.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _40_m6.y);
                float4 _2482 = mul(_40_m0[uint(_2475)], float4(_717.x, _788, _717.z, 1.0f));
                float _2485 = _2482.z;
                float4 _2486 = float4(_2482.xy, _2485, _2475);
                float3 _2487 = _2486.xyz;
                bool3 _2488 = bool3(_2487.x <= 0.0f.xxx.x, _2487.y <= 0.0f.xxx.y, _2487.z <= 0.0f.xxx.z);
                bool3 _2489 = bool3(_2487.x >= 1.0f.xxx.x, _2487.y >= 1.0f.xxx.y, _2487.z >= 1.0f.xxx.z);
                bool _2495 = any(bool3(_2488.x || _2489.x, _2488.y || _2489.y, _2488.z || _2489.z)) || ((asuint(_2485) & 2147483647u) > 2139095040u);
                int _2496 = int(_2475);
                float2 _2513 = float4(_40_m3[_2496].xy + (_2486.xy * _40_m3[_2496].zw), _2485, _2475).xy * _40_m4.zw;
                float2 _2515 = floor(_2513 + 0.5f.xx);
                float2 _2516 = _2513 - _2515;
                float _2517 = _2516.x;
                float _2518 = _2517 + 0.5f;
                float _2520 = (_2518 * _2518) * 0.5f;
                float _2523 = min(_2517, 0.0f);
                float _2527 = max(_2517, 0.0f);
                float4 _2531 = float4(_2520 - _2517, (1.0f - _2517) - (_2523 * _2523), (_2517 + 1.0f) - (_2527 * _2527), _2520) * 0.44444000720977783203125f;
                float _2532 = _2516.y;
                float _2533 = _2532 + 0.5f;
                float _2535 = (_2533 * _2533) * 0.5f;
                float _2538 = min(_2532, 0.0f);
                float _2542 = max(_2532, 0.0f);
                float4 _2546 = float4(_2535 - _2532, (1.0f - _2532) - (_2538 * _2538), (_2532 + 1.0f) - (_2542 * _2542), _2535) * 0.44444000720977783203125f;
                float2 _2548 = _2531.yw;
                float2 _2549 = _2531.xz + _2548;
                float2 _2551 = _2546.yw;
                float2 _2552 = _2546.xz + _2551;
                float2 _2558 = ((_2548 / _2549) + float2(-1.5f, 0.5f)) * _40_m4.xx;
                float2 _2560 = ((_2551 / _2552) + float2(-1.5f, 0.5f)) * _40_m4.yy;
                float2 _2562 = _2515 * _40_m4.xy;
                float _2563 = _2558.x;
                float _2564 = _2560.x;
                float _2567 = _2558.y;
                float _2570 = _2560.y;
                float _2575 = _2549.x;
                float _2576 = _2552.x;
                float _2578 = _2549.y;
                float _2580 = _2552.y;
                _2615 = _2495 ? 1.0f : (((((_2575 * _2576) * _41.SampleCmpLevelZero(_27, float3(_2562 + float2(_2563, _2564), _547).xy, _2485)) + ((_2578 * _2576) * _41.SampleCmpLevelZero(_27, float3(_2562 + float2(_2567, _2564), _547).xy, _2485))) + ((_2575 * _2580) * _41.SampleCmpLevelZero(_27, float3(_2562 + float2(_2563, _2570), _547).xy, _2485))) + ((_2578 * _2580) * _41.SampleCmpLevelZero(_27, float3(_2562 + float2(_2567, _2570), _547).xy, _2485)));
                _2616 = _2495;
            }
            else
            {
                _2615 = 1.0f;
                _2616 = false;
            }
            _2617 = _2615;
            _2618 = _2616;
        }
        else
        {
            _2617 = 1.0f;
            _2618 = false;
        }
        float _2815;
        float _2816;
        if ((_2429 < 1.0f) || (_40_m8.x > 0.5f))
        {
            float _2626 = 1.0f - clamp(dot(_745, _36_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _2643 = float4((_717 - (_36_m0.xyz * (_2626 * _40_m24.x))) + (_745 * (_2626 * _40_m24.y)), 1.0f);
            float4 _2644 = mul(_40_m23, _2643);
            float2 _2645 = _2644.xy;
            float _2813;
            if (all(bool2(_2645.x > 0.0f.xx.x, _2645.y > 0.0f.xx.y)) && all(bool2(_2645.x < 1.0f.xx.x, _2645.y < 1.0f.xx.y)))
            {
                uint _2664 = clamp(uint((floor(_2644.y * _40_m25.z) + _2644.x) * _40_m25.y), 0u, 127u);
                uint _2668 = asuint(_40_m27[_2664].x);
                float2 _2669 = spvUnpackHalf2x16(_2668);
                float _2670 = _2669.x;
                float _2812;
                if (_2670 >= 0.0f)
                {
                    float4x4 _2679 = _40_m22;
                    _2679[0].w = _40_m27[_2664].y;
                    _2679[1].w = _40_m27[_2664].z;
                    _2679[2].w = _40_m27[_2664].w;
                    float4 _2686 = mul(_2679, _2643);
                    float3 _2687 = _2686.xyz;
                    float _2811;
                    if (all(bool3(_2687.x > 0.0f.xxx.x, _2687.y > 0.0f.xxx.y, _2687.z > 0.0f.xxx.z)) && all(bool3(_2687.x < 1.0f.xxx.x, _2687.y < 1.0f.xxx.y, _2687.z < 1.0f.xxx.z)))
                    {
                        float2 _2699 = (_2686.xy * _40_m24.zw) + float2(_2670, spvUnpackHalf2x16(_2668 >> 16u).x);
                        float _2704 = _2686.z;
                        float2 _2710 = float4(_2699, _2704, 1.0f).xy * _40_m26.zw;
                        float2 _2712 = floor(_2710 + 0.5f.xx);
                        float2 _2713 = _2710 - _2712;
                        float _2714 = _2713.x;
                        float _2715 = _2714 + 0.5f;
                        float _2717 = (_2715 * _2715) * 0.5f;
                        float _2720 = min(_2714, 0.0f);
                        float _2724 = max(_2714, 0.0f);
                        float4 _2728 = float4(_2717 - _2714, (1.0f - _2714) - (_2720 * _2720), (_2714 + 1.0f) - (_2724 * _2724), _2717) * 0.44444000720977783203125f;
                        float _2729 = _2713.y;
                        float _2730 = _2729 + 0.5f;
                        float _2732 = (_2730 * _2730) * 0.5f;
                        float _2735 = min(_2729, 0.0f);
                        float _2739 = max(_2729, 0.0f);
                        float4 _2743 = float4(_2732 - _2729, (1.0f - _2729) - (_2735 * _2735), (_2729 + 1.0f) - (_2739 * _2739), _2732) * 0.44444000720977783203125f;
                        float2 _2745 = _2728.yw;
                        float2 _2746 = _2728.xz + _2745;
                        float2 _2748 = _2743.yw;
                        float2 _2749 = _2743.xz + _2748;
                        float2 _2755 = ((_2745 / _2746) + float2(-1.5f, 0.5f)) * _40_m26.xx;
                        float2 _2757 = ((_2748 / _2749) + float2(-1.5f, 0.5f)) * _40_m26.yy;
                        float2 _2759 = _2712 * _40_m26.xy;
                        float _2760 = _2755.x;
                        float _2761 = _2757.x;
                        float _2764 = _2755.y;
                        float _2767 = _2757.y;
                        _2811 = ((((_2746.x * _2749.x) * _45.SampleCmpLevelZero(_27, float3(_2759 + float2(_2760, _2761), _547).xy, _2704)) + ((_2746.y * _2749.x) * _45.SampleCmpLevelZero(_27, float3(_2759 + float2(_2764, _2761), _547).xy, _2704))) + ((_2746.x * _2749.y) * _45.SampleCmpLevelZero(_27, float3(_2759 + float2(_2760, _2767), _547).xy, _2704))) + ((_2746.y * _2749.y) * _45.SampleCmpLevelZero(_27, float3(_2759 + float2(_2764, _2767), _547).xy, _2704));
                    }
                    else
                    {
                        _2811 = 1.0f;
                    }
                    _2812 = _2811;
                }
                else
                {
                    _2812 = 1.0f;
                }
                _2813 = _2812;
            }
            else
            {
                _2813 = 1.0f;
            }
            _2815 = _2618 ? _2813 : _2617;
            _2816 = _2813;
        }
        else
        {
            _2815 = _2617;
            _2816 = 1.0f;
        }
        float _2819 = lerp(lerp(_2816, _2815, _2429), min(_2816, _2815), _40_m8.x);
        float _2870;
        if (_2819 > 0.001000000047497451305389404296875f)
        {
            float3 _2826 = _717 - _19_m65.xyz;
            float2 _2836 = (_2826 + (_19_m68.xyz * _2826.y)).xz * _19_m66.z;
            float2 _2845 = _19_m67.xy * _19_m75.w;
            _2870 = _2819 * lerp(1.0f, lerp(_44.SampleLevel(_26, _2836 + _2845, 0.0f), _44.SampleLevel(_26, (_2836 * _19_m67.w) + _2845, 0.0f), smoothstep(_19_m66.x, _19_m66.y, length(_2826.xz)).xxxx).x, _19_m67.z);
        }
        else
        {
            _2870 = _2819;
        }
        _2875 = float2(lerp(_2870, _40_m7.z, _40_m7.w), _2870);
        break;
    } while(false);
    float _2879 = lerp(1.0f, _2398, _40_m6.x);
    float _2883 = lerp(lerp(1.0f, _2875.x, _40_m6.x), 1.0f, _19_m80.z);
    float _2884 = dot(_2194, _2253);
    float3 _2891 = _2205 * _19_m79.z;
    float3 _2892 = _2891 * 0.64999997615814208984375f;
    float _2896 = dot(_2201, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2909 = clamp(-dot(_2257.xz, normalize(_756.xz)), 0.0f, 1.0f);
    float _2913 = 1.0f - _19_m91.x;
    float4 _2927 = _55.SampleLevel(_25, float2((clamp(lerp(_2884, ((-_2884) * ((_2884 * 0.5f) - 1.0f)) + 0.5f, (_2909 * smoothstep(0.25f, 0.75f, 1.0f - abs(_756.y))) * _2913) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2928 = _2927.w;
    float _2930 = _2927.x;
    float _2931 = _2927.y;
    float _2932 = _2927.z;
    float _2937 = max(max(_2930, _2931), _2932) - min(min(_2930, _2931), _2932);
    float4 _2945 = _55.SampleLevel(_25, float2((dot(_2194, _756) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _2946 = _2945.w;
    float _2947 = _650 * _2879;
    float _2954 = min(min(_2879, _650), _2928);
    float _2955 = _2946 * _2947;
    float3 _2959 = ((clamp(dot(_744, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1297, 1.0f.xxx, (_19_m80.y * _2954).xxx);
    float3 _2961 = _2954.xxx;
    float3 _2984 = _2883.xxx;
    float3 _2985 = lerp((_2959 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1298), 1.5f), clamp(_1298, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_2271, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2271, _2961) + ((_2959 * clamp(_1298, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_2267 * _19_m91.y)))) * _19_m79.y, _2984);
    float3 _2986 = lerp(lerp(lerp(dot(_2892, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2892, 1.2000000476837158203125f.xxx), _2891, clamp((_2947 * _2946) + _2928, 0.0f, 1.0f).xxx), _2201, _2961);
    float3 _2992 = _2986 * ((1.0f - _2937).xxx + (_2927.xyz * _2937));
    float3 _3001 = lerp(lerp(_2891, lerp(_2896.xxx, _2201, 1.2000000476837158203125f.xxx), _2955.xxx), _2992 * clamp(dot(_2986, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2992, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2984);
    float4 _3005 = float4(_3001, _2883);
    float _3007 = lerp(_2955, _2954, _2883);
    float _3010 = lerp(_19_m79.z, 1.0f, _3007);
    float3 _3018 = float3(_756.x, lerp(0.5f, _2253.y, _2883), _756.z);
    float _3031 = clamp(dot(_2018, _586), 0.0f, 1.0f);
    float _3032 = dot(_2018, normalize(((_2253 * _2883) + ((_3018 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3018, _3018)))) * 2.0f)) + (_586 * (2.0f + _2883))));
    float _3036 = (((_3032 * _2208) - _3032) * _3032) + 1.0f;
    float _3037 = _3036 * _3036;
    float _3040 = (_2208 != _3037) ? (_2208 / _3037) : 1.0f;
    float _3041 = 2.0f * _3031;
    float _3043 = (1.0f + _3031) - _3031;
    float _3052 = _3031 * _3031;
    float3 _3064 = _2204 * _56.SampleLevel(_25, float2(lerp(_3040 / min(1.0f / (_2208 + 9.9999997473787516355514526367188e-05f), 65504.0f), _3052, _54_m4), _2195 * (1.0f - _2198)), 0.0f).xyz;
    float3 _3066 = lerp(_2204, _3064, _54_m4.xxx);
    float _3079 = (1.0f - _54_m6) + (_656 * _54_m6);
    float3 _3081 = ((_2985 * _3001) * _3079) + (((_3064 * clamp((_3040 * (0.5f / ((_3041 + (_2207 * _3043)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2985 * (((_3007 * 0.5f) + 0.5f) * _3010)) * 1.0f)) * _19_m92.w);
    float _3082 = dot(_3081, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _3085 = clamp(_3082 - 0.5f, 0.0f, 0.5f);
    float3 _3121 = normalize(cross(_756, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _3127 = dot(_586, _2194);
    float _3129 = 1.0f - abs(_3127);
    float _3151 = dot(_2257, _2194);
    float _3163 = 1.0f - _2883;
    float _3190 = lerp(_2195, _2020, _2019);
    float _3191 = _3190 * _3190;
    float _3192 = _3052 * _3031;
    float2 _3193 = float2(1.0f, _3031);
    float2 _3196 = float2(1.0f, _3191);
    float3 _3199 = float3(1.0f, _3191, (_3191 * _3191) * _3191);
    float _3204 = dot(mul(_3193, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _3196) / dot(mul(float3(1.0f, _3052, _3192), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _3199);
    float _3209 = dot(mul(_3193, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _3196) / dot(mul(float3(1.0f, _3031, _3192), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _3199);
    float3 _3212 = (_3066 * _3204) + _3209.xxx;
    float _3213 = _3204 + _3209;
    float3 _3219 = -_586;
    float3 _3237 = lerp(_3082.xxx, _3081, ((_3085 * _3085) + 1.0f).xxx) + (((((_19_m87.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _3129)) * _19_m87.w) * min(min(clamp(dot(_724, _3121) + 1.0f, 0.0f, 1.0f), _650), _2879)) * (lerp(0.25f.xxx, _2201, _19_m88.z.xxx) * clamp(dot(_3121, _2194), 0.0f, 1.0f))) + ((((((lerp(_1296 * (1.0f / max(max(max(_1296.x, _1296.y), _1296.z) * 0.5f, 1.0f)), _2271, _2984) * clamp(lerp(dot(_1295.xyz, _2194) * _1295.w, ((-_3151) * ((_3151 * 0.5f) - 1.0f)) + 0.5f, _2883), 0.0f, 1.0f)) * ((_3163 + (_2909 * _2883)) * _2913)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _3129)) * min(_650, _2879)) * (_3163 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2896) * _2883))) * max(0.1500000059604644775390625f.xxx, _2201)));
    float2 _3239 = float2(_746);
    float2 _3241 = floor(_3239 * 0.03125f);
    int _3249 = int((_3241.x + (_3241.y * _34_m5)) * 8.0f);
    float _3256 = floor(_567 - (_19_m3.y * _34_m11));
    float _3260 = clamp(_3256, 0.0f, _34_m7 - 1.0f);
    int _3262 = int(_3260 * 8.0f);
    float3 _3264;
    _3264 = _3237 + (((_66.SampleLevel(_25, reflect(_3219, _2018), (1.2000000476837158203125f * log2(max(_3190, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_3212 + ((_3066 * ((1.0f - _3213) / _3213)) * _3212)) * 1.0f)) * ((clamp(_1298, 0.5f, 1.5f) * _19_m79.w) * _3010)) * _1297);
    float3 _3265;
    [loop]
    for (int _3267 = 0; _3267 <= 7; _3264 = _3265, _3267++)
    {
        uint _3285 = (_3256 <= _3260) ? (_30.Load(uint(_3249 + _3267) * 4 + 0) & _30.Load(uint((_19_m21.y + _3262) + _3267) * 4 + 0)) : 0u;
        uint _3286 = uint(_3267);
        _3265 = _3264;
        uint _3291;
        float3 _3288;
        [loop]
        for (uint _3290 = _3285; _3290 != 0u; _3265 = _3288, _3290 = _3291)
        {
            uint _3295 = firstbitlow(_3290);
            _3291 = _3290 ^ (1u << (_3295 & 31u));
            int _3301 = int((32u * _3286) + _3295) * 8;
            int _3304 = _3301 + 1;
            int _3307 = _3301 + 2;
            int _3310 = _3301 + 3;
            int _3313 = _3301 + 4;
            int _3316 = _3301 + 5;
            int _3319 = _3301 + 6;
            int _3322 = _3301 + 7;
            uint _3326 = uint(_36_m6[_3316].w);
            float _3401;
            if ((_3326 & 1u) == 1u)
            {
                uint _3332 = asuint(_36_m6[_3316].x);
                uint _3339 = asuint(_36_m6[_3316].y);
                uint _3346 = asuint(_36_m6[_3316].z);
                uint _3353 = asuint(_36_m6[_3319].x);
                uint _3360 = asuint(_36_m6[_3319].y);
                uint _3367 = asuint(_36_m6[_3319].z);
                float3 _3386 = abs(mul(float4(_717 - _36_m6[_3304].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_3332).x, spvUnpackHalf2x16(_3346).x, spvUnpackHalf2x16(_3360).x, 0.0f), float4(spvUnpackHalf2x16(_3332 >> 16u).x, spvUnpackHalf2x16(_3346 >> 16u).x, spvUnpackHalf2x16(_3360 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_3339).x, spvUnpackHalf2x16(_3353).x, spvUnpackHalf2x16(_3367).x, 0.0f), float4(spvUnpackHalf2x16(_3339 >> 16u).x, spvUnpackHalf2x16(_3353 >> 16u).x, spvUnpackHalf2x16(_3367 >> 16u).x, 0.0f))).xyz);
                float _3393 = _36_m6[_3322].x * 0.5f;
                float _3399 = 1.0f - clamp((max(max(_3386.x, _3386.y), _3386.z) - (_3393 + 0.5f)) / (0.5f - _3393), 0.0f, 1.0f);
                _3401 = _3399 * _3399;
            }
            else
            {
                _3401 = 1.0f;
            }
            if (false || (_3401 < 0.001000000047497451305389404296875f))
            {
                _3288 = _3265;
                continue;
            }
            float3 _4094;
            if (_36_m6[_3301].w < 1.5f)
            {
                float3 _4093;
                do
                {
                    uint _3414 = asuint(_36_m6[_3310].w);
                    if ((_3414 == 16u) || ((_36_m6[_3310].z + _19_m91.z) < 0.5f))
                    {
                        _4093 = _3265;
                        break;
                    }
                    bool _3426 = (uint(_36_m6[_3301].w) & 1u) == 0u;
                    bool _3430 = (!_3426) && (_36_m6[_3307].z > 0.0f);
                    bool _3431 = _3414 == 4u;
                    float _3432 = float(_3426);
                    float _3440 = (0.5f + (0.5f * _36_m6[_3307].y)) - abs(_36_m6[_3307].x);
                    float _3441 = _36_m6[_3307].y - _3440;
                    float _3448 = abs(max((1.0f - abs(_3440)) - abs(_3441), 0.00048828125f));
                    float3 _3452 = normalize(float3(_3440, _3441, (_36_m6[_3307].x >= 0.0f) ? _3448 : (-_3448)));
                    float _3458 = lerp(_36_m6[_3319].w, max(2.0f * _36_m6[_3313].y, 0.100000001490116119384765625f), float(_3431));
                    float3 _3463 = _36_m6[_3304].xyz - _717;
                    float3 _3464 = -_3452;
                    float3 _3469 = lerp(_3463, _3464 * dot(_3463, _3464), (float(_3431 && (_36_m6[_3313].z > 0.5f)) * _3432).xxx);
                    float _3470 = dot(_3469, _3469);
                    float _3471 = rsqrt(_3470);
                    float3 _3472 = _3469 * _3471;
                    float3 _3505;
                    float _3506;
                    if (_3430)
                    {
                        float3 _3476 = (_3452 * _36_m6[_3307].z) * 0.5f;
                        float3 _3477 = _3469 - _3476;
                        float3 _3478 = _3469 + _3476;
                        float _3479 = length(_3477);
                        float _3480 = length(_3478);
                        float3 _3489 = normalize(cross(cross(_3452, _3472), _3452));
                        _3505 = _3489;
                        _3506 = ((1.0f / ((((_3479 * _3480) + dot(_3477, _3478)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_3489, _3477) / _3479) + (dot(_3489, _3478) / _3480)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_3307].z * _3471, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _3505 = _3472;
                        _3506 = 1.0f;
                    }
                    float _3528;
                    if (_3458 < 0.0f)
                    {
                        float _3522 = _3470 * (_36_m6[_3304].w * _36_m6[_3304].w);
                        float _3525 = clamp(1.0f - (_3522 * _3522), 0.0f, 1.0f);
                        _3528 = lerp(1.0f / (_3470 + 1.0f), _3506, float(_3430)) * (_3525 * _3525);
                    }
                    else
                    {
                        float3 _3511 = _3469 * _36_m6[_3304].w;
                        _3528 = _3506 * pow(1.0f - clamp(dot(_3511, _3511), 0.0f, 1.0f), _3458);
                    }
                    float _3533 = clamp((dot(_3505, _3464) - _36_m6[_3307].z) * _36_m6[_3307].w, 0.0f, 1.0f);
                    float _3536 = _3528 * lerp(1.0f, _3533 * _3533, _3432);
                    int _3538 = int(_36_m6[_3322].w);
                    float _3642;
                    if ((!_3430) && (_3538 >= 0))
                    {
                        uint _3544 = uint(_3538);
                        float2 _3635;
                        [branch]
                        if (_3432 != 0.0f)
                        {
                            float4 _3625 = mul(_69_m1[_3544], float4(_717.x, _788, _717.z, 1.0f));
                            _3635 = _69_m0[_3544].xy + (clamp(_3625.xy / _3625.w.xx, 0.0f.xx, 1.0f.xx) * _69_m0[_3544].zw);
                        }
                        else
                        {
                            float3 _3559 = mul(float4(-_3469, 0.0f), _69_m1[_3544]).xyz;
                            float3 _556 = _3559;
                            float3 _555 = _3559;
                            float3 _554 = abs(_3559);
                            uint _3568 = uint(int(_554.y > _554.x));
                            uint _3574 = (_554.z > _554[_3568]) ? 2u : _3568;
                            uint _3580 = (_3574 * 2u) + uint(_555[_3574] < 0.0f);
                            float _3584 = abs(_556[_3580 / 2u]);
                            float _3604 = 0.5f - (0.000244140625f / _69_m0[_3544].w);
                            _3635 = _69_m0[_3544].xy + (clamp(float2((float(_3580) + ((((_556[uint(_502[_3580].x)] * _503[_3580].x) / _3584) * _3604) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_556[uint(_502[_3580].y)] * _503[_3580].y) / _3584) * _3604)), 0.0f.xx, 1.0f.xx) * _69_m0[_3544].zw);
                        }
                        _3642 = _3536 * _67.SampleLevel(_25, _3635, 0.0f).x;
                    }
                    else
                    {
                        _3642 = _3536;
                    }
                    float _3643 = _3642 * _3401;
                    float3 _4092;
                    do
                    {
                        float3 _4091;
                        [branch]
                        if (_3643 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_3431)
                            {
                                _4092 = lerp(_3265, _36_m6[_3301].xyz, (_3643 * (_36_m6[_3313].x * ((1.0f - _36_m6[_3313].w) + (smoothstep(-0.5f, 0.5f, dot(_745, _3505)) * _36_m6[_3313].w)))).xxx);
                                break;
                            }
                            float _3663 = dot(_2194, _3505);
                            float _3664 = clamp(_3663, 0.0f, 1.0f);
                            float _3967;
                            if (_3414 != 0u)
                            {
                                bool _3670 = _3426 || ((_3326 & 2u) != 0u);
                                int _3719;
                                if (_3670)
                                {
                                    _3719 = int(_36_m6[_3310].x);
                                }
                                else
                                {
                                    uint _3674 = asuint(_36_m6[_3307].w);
                                    uint _3676 = asuint(_36_m6[_3310].x);
                                    float3 _3677 = _717 - _36_m6[_3304].xyz;
                                    float3 _3678 = abs(_3677);
                                    float _3679 = _3678.x;
                                    float _3680 = _3678.y;
                                    float _3682 = _3678.z;
                                    int _3714;
                                    if ((_3679 > _3680) && (_3679 > _3682))
                                    {
                                        _3714 = int((_3677.x > 0.0f) ? (_3674 >> 24u) : ((_3674 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _3706;
                                        if (_3680 > _3682)
                                        {
                                            _3706 = int((_3677.y > 0.0f) ? ((_3674 >> 8u) & 255u) : (_3674 & 255u));
                                        }
                                        else
                                        {
                                            _3706 = int((_3677.z > 0.0f) ? ((_3676 >> 8u) & 255u) : (_3676 & 255u));
                                        }
                                        _3714 = _3706;
                                    }
                                    _3719 = (_3714 < 80) ? _3714 : (-1);
                                }
                                bool _3720 = _3719 >= 0;
                                float _3966;
                                if (_3720)
                                {
                                    float3 _3727 = _717 - _36_m6[_3304].xyz;
                                    float4 _3747 = mul(_40_m10[_3719], float4((_717 - ((_3727 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3727, _3727)))) * _40_m11[_3719].x)) + (_745 * (_40_m11[_3719].y * 5.0f)), 1.0f));
                                    float _3748 = _3747.w;
                                    float3 _3751 = _3747.xyz / _3748.xxx;
                                    float2 _3752 = _3751.xy;
                                    float3 _3760 = _3751.xyz;
                                    bool3 _3761 = bool3(_3760.x <= 0.0f.xxx.x, _3760.y <= 0.0f.xxx.y, _3760.z <= 0.0f.xxx.z);
                                    bool3 _3762 = bool3(_3760.x >= 1.0f.xxx.x, _3760.y >= 1.0f.xxx.y, _3760.z >= 1.0f.xxx.z);
                                    float _3765 = _3751.z;
                                    float2 _3776 = ((_3752 * (_40_m12[_3719].zw - _40_m12[_3719].xy)) + _40_m12[_3719].xy).xy * _40_m13.zw;
                                    float2 _3778 = floor(_3776 + 0.5f.xx);
                                    float2 _3779 = _3776 - _3778;
                                    float _3781 = _3779.x + 0.5f;
                                    float _3782 = _3781 * _3781;
                                    float _3785 = 1.0f - _3779.x;
                                    float _3786 = min(_3779.x, 0.0f);
                                    float _3789 = _3779.x + 1.0f;
                                    float _3790 = max(_3779.x, 0.0f);
                                    float _3802 = _3779.y + 0.5f;
                                    float _3803 = _3802 * _3802;
                                    float _3806 = 1.0f - _3779.y;
                                    float _3807 = min(_3779.y, 0.0f);
                                    float _3810 = _3779.y + 1.0f;
                                    float _3811 = max(_3779.y, 0.0f);
                                    float3 _3823 = float3(0.1599999964237213134765625f * _3785, 0.1599999964237213134765625f * ((_3789 - (_3790 * _3790)) + 1.0f), _3782 * 0.07999999821186065673828125f);
                                    float3 _3824 = float3(0.1599999964237213134765625f * ((_3782 * 0.5f) - _3779.x), 0.1599999964237213134765625f * ((_3785 - (_3786 * _3786)) + 1.0f), 0.1599999964237213134765625f * _3789) + _3823;
                                    float3 _3826 = float3(0.1599999964237213134765625f * _3806, 0.1599999964237213134765625f * ((_3810 - (_3811 * _3811)) + 1.0f), _3803 * 0.07999999821186065673828125f);
                                    float3 _3827 = float3(0.1599999964237213134765625f * ((_3803 * 0.5f) - _3779.y), 0.1599999964237213134765625f * ((_3806 - (_3807 * _3807)) + 1.0f), 0.1599999964237213134765625f * _3810) + _3826;
                                    float3 _3833 = ((_3823 / _3824) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.xxx;
                                    float3 _3835 = ((_3826 / _3827) + float3(-2.5f, -0.5f, 1.5f)) * _40_m13.yyy;
                                    float2 _3837 = _3778 * _40_m13.xy;
                                    float _3838 = _3833.x;
                                    float _3839 = _3835.x;
                                    float _3842 = _3833.y;
                                    float _3845 = _3833.z;
                                    float _3848 = _3835.y;
                                    float _3855 = _3835.z;
                                    float _3862 = _3824.x;
                                    float _3863 = _3827.x;
                                    float _3865 = _3824.y;
                                    float _3867 = _3824.z;
                                    float _3869 = _3827.y;
                                    float _3873 = _3827.z;
                                    float _3931 = (((((((_3862 * _3863) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3838, _3839), _547).xy, _3765)) + ((_3865 * _3863) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3842, _3839), _547).xy, _3765))) + ((_3867 * _3863) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3845, _3839), _547).xy, _3765))) + ((_3862 * _3869) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3838, _3848), _547).xy, _3765))) + ((_3865 * _3869) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3842, _3848), _547).xy, _3765))) + ((_3867 * _3869) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3845, _3848), _547).xy, _3765))) + ((_3862 * _3873) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3838, _3855), _547).xy, _3765));
                                    float2 _3952 = min(_3752, 1.0f.xx - _3752);
                                    _3966 = _3720 ? lerp(1.0f, (any(bool3(_3761.x || _3762.x, _3761.y || _3762.y, _3761.z || _3762.z)) || ((asuint(_3765) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3931 + ((_3865 * _3873) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3842, _3855), _547).xy, _3765))) + ((_3867 * _3873) * _42.SampleCmpLevelZero(_27, float3(_3837 + float2(_3845, _3855), _547).xy, _3765))), _3670 ? min(_40_m11[_3719].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_40_m11[_3719].z - _3748) * 0.25f, min(_3952.x, _3952.y)))) : _40_m11[_3719].w) : 1.0f;
                                }
                                else
                                {
                                    _3966 = clamp(dot(_724, _3505) + 1.0f, 0.0f, 1.0f);
                                }
                                _3967 = _3966;
                            }
                            else
                            {
                                _3967 = 1.0f;
                            }
                            float _4047;
                            float3 _4048;
                            float _4049;
                            float3 _4050;
                            float3 _4051;
                            float _4052;
                            float _4053;
                            [branch]
                            if (_3414 == 0u)
                            {
                                float3 _4027 = _36_m6[_3301].xyz * _3643;
                                _4047 = _3643;
                                _4048 = (_36_m6[_3301].xyz * ((1.0f - _36_m6[_3313].y) + ((1.0f / max(1.0f, max(max(_4027.x, _4027.y), _4027.z) * lerp(0.75f, 0.5f, _3163))) * _36_m6[_3313].y))) * lerp(0.25f * _36_m6[_3313].x, 1.0f, clamp(_3663 + 0.5f, 0.0f, 1.0f));
                                _4049 = _3664;
                                _4050 = _3005.xyz;
                                _4051 = _3005.xyz;
                                _4052 = 1.0f;
                                _4053 = 0.0f;
                            }
                            else
                            {
                                float _4020;
                                float _4021;
                                float3 _4022;
                                float3 _4023;
                                float _4024;
                                float _4025;
                                if (_3414 == 3u)
                                {
                                    _4020 = _3643 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_3313].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_3313].x), _3129) * _3967);
                                    _4021 = clamp(dot(_2194, -normalize(cross(_756, cross(_756, _3505)))), 0.0f, 1.0f);
                                    _4022 = lerp(0.5f.xxx, _2201, _36_m6[_3313].y.xxx);
                                    _4023 = 0.0f.xxx;
                                    _4024 = 1.0f;
                                    _4025 = 0.0f;
                                }
                                else
                                {
                                    bool _3976 = _3414 == 1u;
                                    float _4000;
                                    float3 _4001;
                                    float _4002;
                                    float _4003;
                                    if (_3976)
                                    {
                                        _4000 = clamp(clamp(_3663 + _36_m6[_3313].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3967;
                                        _4001 = _2205 * _36_m6[_3313].y;
                                        _4002 = 1.0f;
                                        _4003 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _3980 = _3414 == 2u;
                                        float _3992;
                                        if (_3980)
                                        {
                                            _3992 = smoothstep(_36_m6[_3313].x + 0.0500000007450580596923828125f, _36_m6[_3313].x - 0.0500000007450580596923828125f, _2195) * ((1.0f - _36_m6[_3313].z) + (step(0.5f, _2198) * _36_m6[_3313].z));
                                        }
                                        else
                                        {
                                            _3992 = 1.0f;
                                        }
                                        _4000 = _3664;
                                        _4001 = 0.0f.xxx;
                                        _4002 = _3992;
                                        _4003 = _3980 ? _36_m6[_3313].y : 0.0f;
                                    }
                                    bool3 _4004 = _3976.xxx;
                                    _4020 = _3643;
                                    _4021 = _4000;
                                    _4022 = float3(_4004.x ? _2201.x : 0.0f.xxx.x, _4004.y ? _2201.y : 0.0f.xxx.y, _4004.z ? _2201.z : 0.0f.xxx.z);
                                    _4023 = _4001;
                                    _4024 = _4002;
                                    _4025 = _4003;
                                }
                                _4047 = _4020;
                                _4048 = _36_m6[_3301].xyz;
                                _4049 = _4021;
                                _4050 = _4022;
                                _4051 = _4023;
                                _4052 = _4024;
                                _4053 = _4025;
                            }
                            float3 _4081;
                            [branch]
                            if (_3414 != 3u)
                            {
                                float _4058 = lerp(_2207, 0.00999999977648258209228515625f, _4053);
                                float _4061 = dot(_2018, normalize(_3505 + _586));
                                float _4062 = _4058 * _4058;
                                float _4066 = (((_4061 * _4062) - _4061) * _4061) + 1.0f;
                                float _4067 = _4066 * _4066;
                                _4081 = ((_3064 * clamp((((_4062 != _4067) ? (_4062 / _4067) : 1.0f) * (0.5f / ((_3041 + (_4058 * _3043)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _4052) * _36_m6[_3322].z;
                            }
                            else
                            {
                                _4081 = 0.0f.xxx;
                            }
                            float3 _4084 = _4048 * _4047;
                            _4091 = _3265 + (((_4084 * lerp(_4051, _4050, _4049.xxx)) * _3079) + ((_4084 * _4081) * _4049));
                        }
                        else
                        {
                            _4091 = _3265;
                        }
                        _4092 = _4091;
                        break;
                    } while(false);
                    _4093 = _4092;
                    break;
                } while(false);
                _4094 = _4093;
            }
            else
            {
                _4094 = _3265;
            }
            _3288 = _4094;
        }
    }
    float3 _4134;
    [branch]
    if (_54_m12 > 0.5f)
    {
        _4134 = lerp(lerp(0.5f.xxx, lerp(dot(_3264, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3264, _54_m14.xxx), _54_m15.xxx) * _54_m13, _54_m26.xyz, _54_m26.w.xxx) + ((_54_m27.xyz * smoothstep(1.0f - _54_m16, 1.0f, 1.0f - clamp(_3127, 0.0f, 1.0f))) * _54_m17);
    }
    else
    {
        _4134 = _3264;
    }
    float4 _4141 = float4(_4134 * _19_m20.y, _656);
    _4141.w = (_54_m8 == 1.0f) ? _656 : 1.0f;
    float4 _4532;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float _4165 = _788 * _19_m46.w;
        float _4170 = max(0.00999999977648258209228515625f, _4165 + _19_m47.w);
        float3 _4184 = exp(_19_m45.xyz * ((-max(0.0f, (_587 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_4170)) / _4170) * exp(_4165 + _19_m48.w))));
        float _4187 = dot(_3219, _19_m44.xyz);
        float _4193 = _19_m45.w * _19_m45.w;
        float _4197 = (1.0f + _4193) - ((2.0f * _19_m45.w) * _4187);
        float3 _4524;
        float _4525;
        if (_19_m55.z > 0.0f)
        {
            uint3 _4352 = (uint3(int3(int(_746.x), int(_746.y), int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _4353 = _4352.y;
            uint _4354 = _4352.z;
            uint _4357 = _4352.x + (_4353 * _4354);
            uint _4359 = _4353 + (_4354 * _4357);
            uint _4361 = _4354 + (_4357 * _4359);
            uint _4363 = _4357 + (_4359 * _4361);
            float _4388 = dot(_3219, -_17_m0[2].xyz);
            float3 _4395 = _717 - _17_m11.xyz;
            float _4397 = (_19_m55.w * ((_4388 > 5.9604644775390625e-08f) ? (1.0f / _4388) : 0.0f)) * (1.0f / _587);
            float _4398 = _4395.y;
            float _4399 = _4397 * _4398;
            float _4401 = _17_m11.y + _4399;
            float _4402 = _4398 - _4399;
            float _4404 = (1.0f - _4397) * _587;
            float _4418 = max(-127.0f, _19_m49.z * _4402);
            float _4442 = max(-127.0f, _19_m52.x * _4402);
            float _4453 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_4401 - _19_m49.x)))) * ((abs(_4418) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4418)) / _4418) : (0.693147182464599609375f - (0.2402265071868896484375f * _4418)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_4401 - _19_m52.z)))) * ((abs(_4442) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4442)) / _4442) : (0.693147182464599609375f - (0.2402265071868896484375f * _4442))));
            float _4475 = clamp((_587 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _4478 = clamp((max(clamp(exp2(-(_4453 * _4404)), 0.0f, 1.0f), _19_m51.w) + clamp((_587 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _4475, 0.0f, 1.0f);
            float4 _4518 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _72.SampleLevel(_25, float3((_3239 + ((((float3(uint3(_4363, _4359 + (_4361 * _4363), _552) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_567 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_567 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _4524 = _4518.xyz + (((_19_m51.xyz * (1.0f - _4478)) + (((_19_m54.xyz * pow(clamp(dot(_586, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_4453 * max(_4404 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4475))) * _4518.w);
            _4525 = _4518.w * _4478;
        }
        else
        {
            float3 _4224 = _717 - _17_m11.xyz;
            float _4226 = _4224.y;
            float _4240 = max(-127.0f, _19_m49.z * _4226);
            float _4264 = max(-127.0f, _19_m52.x * _4226);
            float _4275 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_4240) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4240)) / _4240) : (0.693147182464599609375f - (0.2402265071868896484375f * _4240)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_4264) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4264)) / _4264) : (0.693147182464599609375f - (0.2402265071868896484375f * _4264))));
            float _4297 = clamp((_587 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _4300 = clamp((max(clamp(exp2(-(_4275 * _587)), 0.0f, 1.0f), _19_m51.w) + clamp((_587 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _4297, 0.0f, 1.0f);
            _4524 = (_19_m51.xyz * (1.0f - _4300)) + (((_19_m54.xyz * pow(clamp(dot(_586, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_4275 * max(_587 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4297));
            _4525 = _4300;
        }
        float3 _4530 = (_4141.xyz * (_4184 * _4525)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4187 * _4187)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _4193) / max((12.56637096405029296875f * _4197) * sqrt(_4197), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4184)) * _4525) + _4524);

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _4530 = (_4530 * 0.65f) + (_4141.xyz * 0.35f);

        }
        _4532 = float4(_4530.x, _4530.y, _4530.z, _4141.w);
    }
    else
    {
        _4532 = _4141;
    }
    _14 = _4532;
    _15 = _2240;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _3 = stage_input._3;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    _12 = stage_input._12;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._14 = _14;
    stage_output._15 = _15;
    return stage_output;
}
