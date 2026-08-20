#include "../shared.h"

// Current Vulkan shader mapped from DX11 0xC7F04612.
struct _19
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

static float _377 = (float)0;
static float4 _378 = (float4)0;
static uint _381 = (uint)0;

static const float4 _355[4] = { float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f) };
static const int2 _356[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _357[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _14_15 : register(b12)
{
    column_major float4x4 _15_m0 : packoffset(c0);
    column_major float4x4 _15_m1 : packoffset(c4);
    column_major float4x4 _15_m2 : packoffset(c8);
    column_major float4x4 _15_m3 : packoffset(c12);
    column_major float4x4 _15_m4 : packoffset(c16);
    column_major float4x4 _15_m5 : packoffset(c20);
    column_major float4x4 _15_m6 : packoffset(c24);
    column_major float4x4 _15_m7 : packoffset(c28);
    column_major float4x4 _15_m8 : packoffset(c32);
    column_major float4x4 _15_m9 : packoffset(c36);
    column_major float4x4 _15_m10 : packoffset(c40);
    float4 _15_m11 : packoffset(c44);
    column_major float4x4 _15_m12 : packoffset(c45);
    column_major float4x4 _15_m13 : packoffset(c49);
    column_major float4x4 _15_m14 : packoffset(c53);
    column_major float4x4 _15_m15 : packoffset(c57);
    column_major float4x4 _15_m16 : packoffset(c61);
    column_major float4x4 _15_m17 : packoffset(c65);
    column_major float4x4 _15_m18 : packoffset(c69);
    column_major float4x4 _15_m19 : packoffset(c73);
    column_major float4x4 _15_m20 : packoffset(c77);
    float4 _15_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _16_17 : register(b16)
{
    float4 _17_m0 : packoffset(c0);
    float4 _17_m1 : packoffset(c1);
    float4 _17_m2 : packoffset(c2);
    float4 _17_m3 : packoffset(c3);
    float4 _17_m4 : packoffset(c4);
    float4 _17_m5 : packoffset(c5);
    float4 _17_m6[6] : packoffset(c6);
    float4 _17_m7[6] : packoffset(c12);
    float4 _17_m8 : packoffset(c18);
    float4 _17_m9 : packoffset(c19);
    float4 _17_m10 : packoffset(c20);
    float4 _17_m11 : packoffset(c21);
    float4 _17_m12 : packoffset(c22);
    float4 _17_m13 : packoffset(c23);
    float4 _17_m14 : packoffset(c24);
    float4 _17_m15 : packoffset(c25);
    float _17_m16 : packoffset(c26);
    float _17_m17 : packoffset(c26.y);
    float _17_m18 : packoffset(c26.z);
    uint _17_m19 : packoffset(c26.w);
    float4 _17_m20 : packoffset(c27);
    int4 _17_m21 : packoffset(c28);
    float4 _17_m22 : packoffset(c29);
    float4 _17_m23 : packoffset(c30);
    float4 _17_m24 : packoffset(c31);
    float4 _17_m25 : packoffset(c32);
    float4 _17_m26 : packoffset(c33);
    float4 _17_m27 : packoffset(c34);
    float4 _17_m28 : packoffset(c35);
    float4 _17_m29 : packoffset(c36);
    float4 _17_m30 : packoffset(c37);
    float4 _17_m31 : packoffset(c38);
    float4 _17_m32[4] : packoffset(c39);
    float4 _17_m33[4] : packoffset(c43);
    float4 _17_m34[4] : packoffset(c47);
    float4 _17_m35[4] : packoffset(c51);
    float4 _17_m36 : packoffset(c55);
    float4 _17_m37 : packoffset(c56);
    float4 _17_m38[4] : packoffset(c57);
    float4 _17_m39[4] : packoffset(c61);
    float4 _17_m40[4] : packoffset(c65);
    float4 _17_m41 : packoffset(c69);
    float4 _17_m42 : packoffset(c70);
    float4 _17_m43 : packoffset(c71);
    float4 _17_m44 : packoffset(c72);
    float4 _17_m45 : packoffset(c73);
    float4 _17_m46 : packoffset(c74);
    float4 _17_m47 : packoffset(c75);
    float4 _17_m48 : packoffset(c76);
    float4 _17_m49 : packoffset(c77);
    float4 _17_m50 : packoffset(c78);
    float4 _17_m51 : packoffset(c79);
    float4 _17_m52 : packoffset(c80);
    float4 _17_m53 : packoffset(c81);
    float4 _17_m54 : packoffset(c82);
    float4 _17_m55 : packoffset(c83);
    float4 _17_m56 : packoffset(c84);
    float4 _17_m57 : packoffset(c85);
    float4 _17_m58 : packoffset(c86);
    float4 _17_m59 : packoffset(c87);
    float4 _17_m60 : packoffset(c88);
    float4 _17_m61 : packoffset(c89);
    float4 _17_m62 : packoffset(c90);
    float4 _17_m63 : packoffset(c91);
    float4 _17_m64 : packoffset(c92);
    float4 _17_m65 : packoffset(c93);
    float4 _17_m66 : packoffset(c94);
    float4 _17_m67 : packoffset(c95);
    float4 _17_m68 : packoffset(c96);
    float4 _17_m69 : packoffset(c97);
    float4 _17_m70 : packoffset(c98);
    float4 _17_m71 : packoffset(c99);
    float4 _17_m72 : packoffset(c100);
    float4 _17_m73 : packoffset(c101);
    float4 _17_m74 : packoffset(c102);
    float4 _17_m75 : packoffset(c103);
    float4 _17_m76 : packoffset(c104);
    float4 _17_m77 : packoffset(c105);
    float4 _17_m78 : packoffset(c106);
    float4 _17_m79 : packoffset(c107);
    float4 _17_m80 : packoffset(c108);
    float4 _17_m81 : packoffset(c109);
    float4 _17_m82 : packoffset(c110);
    float4 _17_m83 : packoffset(c111);
    float4 _17_m84 : packoffset(c112);
    float4 _17_m85 : packoffset(c113);
    float4 _17_m86 : packoffset(c114);
    float4 _17_m87 : packoffset(c115);
    float4 _17_m88 : packoffset(c116);
    float4 _17_m89 : packoffset(c117);
    float4 _17_m90 : packoffset(c118);
    float4 _17_m91 : packoffset(c119);
    float4 _17_m92 : packoffset(c120);
    float4 _17_m93 : packoffset(c121);
    float4 _17_m94 : packoffset(c122);
    float4 _17_m95 : packoffset(c123);
    float4 _17_m96 : packoffset(c124);
    float4 _17_m97 : packoffset(c125);
    float4 _17_m98 : packoffset(c126);
    float4 _17_m99[2] : packoffset(c127);
    float4 _17_m100[2] : packoffset(c129);
    float _17_m101 : packoffset(c131);
    float _17_m102 : packoffset(c131.y);
    float _17_m103 : packoffset(c131.z);
    float _17_m104 : packoffset(c131.w);
    float4 _17_m105 : packoffset(c132);
    float4 _17_m106 : packoffset(c133);
    float4 _17_m107 : packoffset(c134);
    float4 _17_m108 : packoffset(c135);
    float4 _17_m109 : packoffset(c136);
    float4 _17_m110 : packoffset(c137);
    float4 _17_m111 : packoffset(c138);
    float4 _17_m112 : packoffset(c139);
    float4 _17_m113 : packoffset(c140);
    float4 _17_m114 : packoffset(c141);
    float4 _17_m115 : packoffset(c142);
    float4 _17_m116 : packoffset(c143);
    float4 _17_m117 : packoffset(c144);
    float4 _17_m118 : packoffset(c145);
    float4 _17_m119 : packoffset(c146);
    float4 _17_m120 : packoffset(c147);
    float4 _17_m121 : packoffset(c148);
    float4 _17_m122 : packoffset(c149);
    float4 _17_m123 : packoffset(c150);
    float4 _17_m124 : packoffset(c151);
    float4 _17_m125 : packoffset(c152);
    float4 _17_m126 : packoffset(c153);
    float4 _17_m127 : packoffset(c154);
    float4 _17_m128 : packoffset(c155);
    float4 _17_m129 : packoffset(c156);
    float4 _17_m130 : packoffset(c157);
    float4 _17_m131 : packoffset(c158);
    float4 _17_m132 : packoffset(c159);
    float4 _17_m133 : packoffset(c160);
    float4 _17_m134 : packoffset(c161);
    column_major float4x4 _17_m135 : packoffset(c162);
    float4 _17_m136 : packoffset(c166);
    float4 _17_m137 : packoffset(c167);
    float4 _17_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _18_20 : register(b0)
{
    _19 _20_m0[256] : packoffset(c0);
};

[[vk::binding(50, 0)]] ByteAddressBuffer _29 : register(t50);
[[vk::binding(4, 1)]]
cbuffer _36_37 : register(b4)
{
    float _37_m0 : packoffset(c0);
    float _37_m1 : packoffset(c0.y);
    float _37_m2 : packoffset(c0.z);
    float _37_m3 : packoffset(c0.w);
    float _37_m4 : packoffset(c1);
    float _37_m5 : packoffset(c1.y);
    float _37_m6 : packoffset(c1.z);
    float _37_m7 : packoffset(c1.w);
    float _37_m8 : packoffset(c2);
    float _37_m9 : packoffset(c2.y);
    float _37_m10 : packoffset(c2.z);
    float _37_m11 : packoffset(c2.w);
    float _37_m12 : packoffset(c3);
    float _37_m13 : packoffset(c3.y);
    float _37_m14 : packoffset(c3.z);
    float _37_m15 : packoffset(c3.w);
    float4 _37_m16 : packoffset(c4);
    float _37_m17 : packoffset(c5);
    float _37_m18 : packoffset(c5.y);
    float _37_m19 : packoffset(c5.z);
    float _37_m20 : packoffset(c5.w);
    float _37_m21 : packoffset(c6);
    float _37_m22 : packoffset(c6.y);
    float _37_m23 : packoffset(c6.z);
    float _37_m24 : packoffset(c6.w);
    float _37_m25 : packoffset(c7);
    float _37_m26 : packoffset(c7.y);
    float _37_m27 : packoffset(c7.z);
    float _37_m28 : packoffset(c7.w);
    float _37_m29 : packoffset(c8);
    float _37_m30 : packoffset(c8.y);
    float _37_m31 : packoffset(c8.z);
    float _37_m32 : packoffset(c8.w);
    float _37_m33 : packoffset(c9);
    float _37_m34 : packoffset(c9.y);
    float _37_m35 : packoffset(c9.z);
    float _37_m36 : packoffset(c9.w);
    float _37_m37 : packoffset(c10);
    float _37_m38 : packoffset(c10.y);
    float _37_m39 : packoffset(c10.z);
    float _37_m40 : packoffset(c10.w);
    float _37_m41 : packoffset(c11);
    float _37_m42 : packoffset(c11.y);
    float _37_m43 : packoffset(c11.z);
    float _37_m44 : packoffset(c11.w);
    float _37_m45 : packoffset(c12);
    float _37_m46 : packoffset(c12.y);
    float _37_m47 : packoffset(c12.z);
    float _37_m48 : packoffset(c12.w);
    float _37_m49 : packoffset(c13);
    float _37_m50 : packoffset(c13.y);
    float _37_m51 : packoffset(c13.z);
    float _37_m52 : packoffset(c13.w);
    float _37_m53 : packoffset(c14);
    float _37_m54 : packoffset(c14.y);
    float _37_m55 : packoffset(c14.z);
    float _37_m56 : packoffset(c14.w);
    float4 _37_m57 : packoffset(c15);
    float4 _37_m58 : packoffset(c16);
    float4 _37_m59 : packoffset(c17);
    float4 _37_m60 : packoffset(c18);
    float4 _37_m61 : packoffset(c19);
    float _37_m62 : packoffset(c20);
    float _37_m63 : packoffset(c20.y);
    float _37_m64 : packoffset(c20.z);
    float _37_m65 : packoffset(c20.w);
    float4 _37_m66 : packoffset(c21);
    float4 _37_m67 : packoffset(c22);
    float4 _37_m68 : packoffset(c23);
    float4 _37_m69 : packoffset(c24);
    float4 _37_m70 : packoffset(c25);
    float _37_m71 : packoffset(c26);
    float _37_m72 : packoffset(c26.y);
    float _37_m73 : packoffset(c26.z);
    float _37_m74 : packoffset(c26.w);
    float4 _37_m75 : packoffset(c27);
    float4 _37_m76 : packoffset(c28);
    float4 _37_m77 : packoffset(c29);
    float4 _37_m78 : packoffset(c30);
    float _37_m79 : packoffset(c31);
    float _37_m80 : packoffset(c31.y);
    float _37_m81 : packoffset(c31.z);
    float _37_m82 : packoffset(c31.w);
    float _37_m83 : packoffset(c32);
    float _37_m84 : packoffset(c32.y);
    float _37_m85 : packoffset(c32.z);
    float _37_m86 : packoffset(c32.w);
    float _37_m87 : packoffset(c33);
    float _37_m88 : packoffset(c33.y);
    float _37_m89 : packoffset(c33.z);
    float _37_m90 : packoffset(c33.w);
    float _37_m91 : packoffset(c34);
    float _37_m92 : packoffset(c34.y);
    float _37_m93 : packoffset(c34.z);
    float _37_m94 : packoffset(c34.w);
    float _37_m95 : packoffset(c35);
    float _37_m96 : packoffset(c35.y);
    float _37_m97 : packoffset(c35.z);
    float _37_m98 : packoffset(c35.w);
    float _37_m99 : packoffset(c36);
    float _37_m100 : packoffset(c36.y);
    float _37_m101 : packoffset(c36.z);
    float4 _37_m102 : packoffset(c37);
    float4 _37_m103 : packoffset(c38);
    float4 _37_m104 : packoffset(c39);
    float4 _37_m105 : packoffset(c40);
    float4 _37_m106 : packoffset(c41);
    float4 _37_m107 : packoffset(c42);
    float4 _37_m108 : packoffset(c43);
    float4 _37_m109 : packoffset(c44);
    float4 _37_m110 : packoffset(c45);
    float4 _37_m111 : packoffset(c46);
    float4 _37_m112 : packoffset(c47);
    float4 _37_m113 : packoffset(c48);
    float4 _37_m114 : packoffset(c49);
    float4 _37_m115 : packoffset(c50);
    float _37_m116 : packoffset(c51);
    float _37_m117 : packoffset(c51.y);
    float _37_m118 : packoffset(c51.z);
    float _37_m119 : packoffset(c51.w);
    float _37_m120 : packoffset(c52);
    float _37_m121 : packoffset(c52.y);
    float _37_m122 : packoffset(c52.z);
    float _37_m123 : packoffset(c52.w);
    float _37_m124 : packoffset(c53);
    float _37_m125 : packoffset(c53.y);
    float _37_m126 : packoffset(c53.z);
    float _37_m127 : packoffset(c53.w);
    float _37_m128 : packoffset(c54);
    float _37_m129 : packoffset(c54.y);
    float _37_m130 : packoffset(c54.z);
    float _37_m131 : packoffset(c54.w);
    float _37_m132 : packoffset(c55);
    float _37_m133 : packoffset(c55.y);
    float _37_m134 : packoffset(c55.z);
    float _37_m135 : packoffset(c55.w);
    float4 _37_m136 : packoffset(c56);
    float4 _37_m137 : packoffset(c57);
};

[[vk::binding(47, 0)]]
cbuffer _46_47 : register(b47)
{
    int _47_m0 : packoffset(c0);
    int _47_m1 : packoffset(c0.y);
    int _47_m2 : packoffset(c0.z);
    int _47_m3 : packoffset(c0.w);
    float _47_m4 : packoffset(c1);
    float _47_m5 : packoffset(c1.y);
    float _47_m6 : packoffset(c1.z);
    float _47_m7 : packoffset(c1.w);
    float _47_m8 : packoffset(c2);
    float _47_m9 : packoffset(c2.y);
    float _47_m10 : packoffset(c2.z);
    float _47_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _48_49 : register(b14)
{
    float4 _49_m0 : packoffset(c0);
    float4 _49_m1 : packoffset(c1);
    float4 _49_m2 : packoffset(c2);
    float4 _49_m3 : packoffset(c3);
    float4 _49_m4 : packoffset(c4);
    uint4 _49_m5 : packoffset(c5);
    float4 _49_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _50_51 : register(b15)
{
    column_major float4x4 _51_m0[5] : packoffset(c0);
    float4 _51_m1[4] : packoffset(c20);
    float4 _51_m2[4] : packoffset(c24);
    float4 _51_m3[4] : packoffset(c28);
    float4 _51_m4 : packoffset(c32);
    float4 _51_m5 : packoffset(c33);
    float4 _51_m6 : packoffset(c34);
    float4 _51_m7 : packoffset(c35);
    float4 _51_m8 : packoffset(c36);
    float4 _51_m9[27] : packoffset(c37);
    column_major float4x4 _51_m10[56] : packoffset(c64);
    float4 _51_m11[56] : packoffset(c288);
    float4 _51_m12[56] : packoffset(c344);
    float4 _51_m13 : packoffset(c400);
    float4 _51_m14[47] : packoffset(c401);
    column_major float4x4 _51_m15[15] : packoffset(c448);
    float4 _51_m16[15] : packoffset(c508);
    float4 _51_m17[15] : packoffset(c523);
    float4 _51_m18[15] : packoffset(c538);
    float4 _51_m19 : packoffset(c553);
    float4 _51_m20 : packoffset(c554);
    float4 _51_m21[21] : packoffset(c555);
    column_major float4x4 _51_m22 : packoffset(c576);
    column_major float4x4 _51_m23 : packoffset(c580);
    float4 _51_m24 : packoffset(c584);
    float4 _51_m25 : packoffset(c585);
    float4 _51_m26 : packoffset(c586);
    float4 _51_m27[128] : packoffset(c587);
};

[[vk::binding(49, 0)]]
cbuffer _60_61 : register(b49)
{
    float4 _61_m0[32] : packoffset(c0);
    column_major float4x4 _61_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _22 : register(s3);
[[vk::binding(6, 0)]] SamplerState _23 : register(s6);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _25 : register(s7);
[[vk::binding(45, 0)]] Texture2D<float4> _27 : register(t45);
[[vk::binding(8, 1)]] Texture2D<float4> _30 : register(t8);
[[vk::binding(5, 1)]] SamplerState _31 : register(s5);
[[vk::binding(10, 1)]] Texture2D<float4> _32 : register(t10);
[[vk::binding(7, 1)]] SamplerState _33 : register(s7);
[[vk::binding(9, 1)]] Texture2D<float4> _34 : register(t9);
[[vk::binding(6, 1)]] SamplerState _35 : register(s6);
[[vk::binding(35, 0)]] Texture3D<float4> _39 : register(t35);
[[vk::binding(34, 0)]] Texture3D<float4> _40 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _41 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _42 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _43 : register(t30);
[[vk::binding(32, 0)]] Texture3D<float4> _44 : register(t32);
[[vk::binding(29, 0)]] Texture3D<float4> _45 : register(t29);
[[vk::binding(9, 0)]] Texture2D<float4> _52 : register(t9);
[[vk::binding(26, 0)]] Texture2D<float4> _53 : register(t26);
[[vk::binding(8, 0)]] Texture2D<float4> _54 : register(t8);
[[vk::binding(11, 0)]] Texture2D<float4> _55 : register(t11);
[[vk::binding(10, 0)]] Texture2D<float4> _56 : register(t10);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27);
[[vk::binding(28, 0)]] Texture2D<float4> _59 : register(t28);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float4 _4 = (float4)0;
static float4 _5 = (float4)0;
static float3 _6 = (float3)0;
static float4 _7 = (float4)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static uint _10 = (uint)0;
static float4 _12 = (float4)0;
static float4 _13 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float4 _4 : TEXCOORD0;
    [[vk::location(1)]] float4 _5 : TEXCOORD1;
    [[vk::location(2)]] float3 _6 : TEXCOORD2;
    [[vk::location(4)]] float4 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] nointerpolation uint _10 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _12 : SV_Target0;
    [[vk::location(1)]] float4 _13 : SV_Target1;
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
    float2 _407 = gl_FragCoord.xy * _17_m0.zw;
    uint2 _408 = uint2(gl_FragCoord.xy);
    float2 _410 = (_407 * 2.0f) - 1.0f.xx;
    float4 _413 = float4(_410, gl_FragCoord.z, 1.0f);
    _413.y = -_410.y;
    float4 _416 = mul(_15_m6, _413);
    float3 _420 = _416.xyz / _416.w.xxx;
    float4 _424 = float4(_420, 1.0f);
    float _427 = abs(mul(_15_m0, _424).z);
    float3 _428 = _6 * 1.0f;
    float3 _443;
    do
    {
        if (_17_m4.w == 0.0f)
        {
            _443 = _15_m11.xyz - _420;
            break;
        }
        else
        {
            _443 = _15_m0[2].xyz;
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _444 = dot(_443, _443);
    float _446 = rsqrt(max(_444, 9.9999999392252902907785028219223e-09f));
    float3 _447 = _443 * _446;
    float _448 = _444 * _446;
    float2 _471 = ((_4.zw * _37_m4) - (_5.xy * _37_m4)) + _5.xy;
    float4 _472 = _5 * _37_m4;
    float2 _508 = ((mul(((((_4.xy * _37_m59.x) + (_471 * _37_m59.y)) + (_37_m57.xy * _17_m75.w)) + (_37_m57.zw * _472.x)) - 0.5f.xx, float2x2(float2(_37_m58.xy), float2(_37_m58.zw))) + 0.5f.xx) * _37_m60.xy) + _37_m60.zw;
    float _516 = _472.y;
    float _589 = lerp(0.0f, frac((_20_m0[_10]._m0[0].w + _20_m0[_10]._m0[1].w) + _20_m0[_10]._m0[2].w), _37_m130);
    _508.y = _508.y * (1.0f + min(_589, 0.5f));
    float4 _614 = _34.SampleBias(_35, float4(((mul(((((_4.xy * _37_m78.x) + (_471 * _37_m78.y)) + (_37_m76.xy * _17_m75.w)) + (_37_m76.zw * _516)) - 0.5f.xx, float2x2(float2(_37_m77.xy), float2(_37_m77.zw))) + 0.5f.xx) * _37_m75.xy) + _37_m75.zw, 0.0f, 0.0f).xy, _17_m16);
    float _618 = (_614.x * (_37_m71 + 1.0f)) - _37_m71;
    float2 _621 = float2(_618 * _37_m73, _618 * _37_m74);
    float4 _624 = _614;
    _624.w = _614.w * _618;
    float2 _630 = (((_624.wy * 2.0f) - 1.0f.xx).xy * _37_m73).xy;
    bool2 _632 = (_37_m72 != 0.0f).xx;
    float2 _634 = float2(_632.x ? _630.x : _621.x, _632.y ? _630.y : _621.y) * 1.0f;
    float4 _644 = _30.SampleBias(_31, (_508 + _589.xx) + (_634 * _37_m53), _17_m16);
    float4 _649 = ((_37_m16 * lerp(_7, 1.0f.xxxx, _37_m5.xxxx)) * float4(_37_m6, _37_m6, _37_m6, _37_m7)) * lerp(_644, float4(1.0f, 1.0f, 1.0f, _644.x), _37_m54.xxxx);
    float _685 = _32.SampleBias(_33, (((mul(((((_4.xy * _37_m69.x) + (_471 * _37_m69.y)) + (_37_m67.xy * _17_m75.w)) + (_37_m67.zw * _516)) - 0.5f.xx, float2x2(float2(_37_m68.xy), float2(_37_m68.zw))) + 0.5f.xx) * _37_m66.xy) + _37_m66.zw) + (_634 * _37_m62), _17_m16).x - lerp(-1.0f, ((_37_m63 + (_5.z * _37_m4)) * 2.019999980926513671875f) - 1.0099999904632568359375f, clamp(lerp(1.0f, lerp(_7.x, _7.w, _37_m131), _37_m132) - _37_m133, 0.0f, 1.0f));
    float _687 = clamp(_685 * _37_m64, 0.0f, 1.0f);
    float _690 = clamp((_37_m65 - _685) * _37_m64, 0.0f, 1.0f);
    float2 _709 = ((float2(_408) * _17_m0.zw) * 2.0f) - 1.0f.xx;
    float4 _712 = float4(_709, _27.SampleLevel(_22, _407, 0.0f).x, 1.0f);
    _712.y = -_709.y;
    float4 _715 = mul(_15_m6, _712);
    bool3 _749 = (gl_FrontFacing ? true : false).xxx;
    float3 _750 = -_428;
    float3 _751 = float3(_749.x ? _428.x : _750.x, _749.y ? _428.y : _750.y, _749.z ? _428.z : _750.z);
    float _781 = (((((_649.w * lerp(_687, _687, _37_m70.w)) * ((_37_m79 != 0.0f) ? (clamp((_427 - _37_m80) / (_37_m81 - _37_m80), 0.0f, 1.0f) * clamp((_427 - _37_m82) / (_37_m83 - _37_m82), 0.0f, 1.0f)) : 1.0f)) * clamp(((abs(mul(_15_m0, float4(_715.xyz / _715.w.xxx, 1.0f)).z) - _427) + _37_m88) / _37_m87, 0.0f, 1.0f)) * lerp(1.0f, _7.w, _37_m128)) * lerp(1.0f, pow(abs(dot(_6, _447)), _37_m121), _37_m123)) * (1.0f - _20_m0[_10]._m1.y);
    float _793 = clamp(_781, 0.0f, 1.0f);
    float3 _794 = clamp((lerp(_649.xyz, (_37_m70.xyz * _690) * _37_m6, _690.xxx).xyz * ((1.0f - _37_m12) + (_17_m20.y * _37_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
    float3 _797 = _794 * _37_m124;
    float _810 = (_37_m93 * lerp(1.0f, _7.x, _37_m128)) * _797.x;
    float2 _861;
    if (clamp((_37_m3 + 1.0f) - _37_m0, 0.0f, 1.0f) > 0.5f)
    {
        float2 _847 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
        _847.y = -_847.y;
        _861 = ((sqrt(sqrt(abs(_847 * 0.5f))) * float2(int2(sign(_847)))) * 0.5f) + 0.5f.xx;
    }
    else
    {
        _861 = 0.0f.xx;
    }
    float3 _863 = (0.07999999821186065673828125f * _37_m127).xxx;
    uint2 _894;
    float _895;
    if (_17_m24.y == 1.0f)
    {
        float4 _871 = mul(_17_m135, _424);
        float4 _874 = _871;
        _874.y = -_871.y;
        float4 _877 = _874 * (1.0f / _871.w);
        _894 = uint2(clamp(((_877.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _17_m0.xy);
        _895 = 1.0f / ((_17_m2.z * _877.z) + _17_m2.w);
    }
    else
    {
        _894 = _408;
        _895 = _427;
    }
    float3 _897 = _420 + (_751 * 0.25f);
    float3 _907 = mul(float3x3(_15_m1[0].xyz, _15_m1[1].xyz, _15_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _916 = _897 - (_17_m105.xyz + (_907 * (-_17_m107.w)));
    float _930 = max(clamp((max(abs(_916.x), abs(_916.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_916.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1232;
    float4 _1233;
    float4 _1234;
    float _1235;
    float _1236;
    if ((_17_m105.w != 0.0f) && (_930 < 1.0f))
    {
        float3 _943 = _897 - (_17_m105.xyz + (_907 * (-_17_m107.y)));
        float _957 = max(clamp((max(abs(_943.x), abs(_943.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_943.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
        float _1033;
        float4 _1034;
        float4 _1035;
        float4 _1036;
        if (_957 < 1.0f)
        {
            float3 _966 = ((_897 * 2.0f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _968 = _966 - floor(_966);
            float4 _972 = _40.SampleLevel(_24, _968, 0.0f);
            float _973 = 1.0f - _957;
            float _977 = _17_m106.y * 0.5f;
            float _982 = _968.x;
            float _983 = clamp(_968.y, _977, 1.0f - _977) * 0.3333333432674407958984375f;
            float _984 = _968.z;
            float4 _987 = _41.SampleLevel(_23, float3(_982, _983, _984), 0.0f);
            float _1003 = _972.x;
            float _1013 = _972.y;
            float _1023 = _972.z;
            _1033 = _930 + (_987.w * _973);
            _1034 = float4(((_41.SampleLevel(_23, float3(_982, _983 + 0.666666686534881591796875f, _984), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1023, _1023) * _973;
            _1035 = float4(((_41.SampleLevel(_23, float3(_982, _983 + 0.3333333432674407958984375f, _984), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1013, _1013) * _973;
            _1036 = float4(((_987.xyz * 4.0f) - 2.0f.xxx) * _1003, _1003) * _973;
        }
        else
        {
            _1033 = _930;
            _1034 = 0.0f.xxxx;
            _1035 = 0.0f.xxxx;
            _1036 = 0.0f.xxxx;
        }
        float3 _1042 = _897 - (_17_m105.xyz + (_907 * (-_17_m107.z)));
        float _1056 = max(clamp((max(abs(_1042.x), abs(_1042.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1042.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
        float _1136;
        float4 _1137;
        float4 _1138;
        float4 _1139;
        if (_1056 < 1.0f)
        {
            float3 _1065 = ((_897 * 0.5f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _1067 = _1065 - floor(_1065);
            float4 _1071 = _42.SampleLevel(_24, _1067, 0.0f);
            float _1073 = _957 * (1.0f - _1056);
            float _1077 = _17_m106.y * 0.5f;
            float _1082 = _1067.x;
            float _1083 = clamp(_1067.y, _1077, 1.0f - _1077) * 0.3333333432674407958984375f;
            float _1084 = _1067.z;
            float4 _1087 = _43.SampleLevel(_23, float3(_1082, _1083, _1084), 0.0f);
            float _1103 = _1071.x;
            float _1114 = _1071.y;
            float _1125 = _1071.z;
            _1136 = _1033 + (_1087.w * _1073);
            _1137 = _1034 + (float4(((_43.SampleLevel(_23, float3(_1082, _1083 + 0.666666686534881591796875f, _1084), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1125, _1125) * _1073);
            _1138 = _1035 + (float4(((_43.SampleLevel(_23, float3(_1082, _1083 + 0.3333333432674407958984375f, _1084), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1114, _1114) * _1073);
            _1139 = _1036 + (float4(((_1087.xyz * 4.0f) - 2.0f.xxx) * _1103, _1103) * _1073);
        }
        else
        {
            _1136 = _1033;
            _1137 = _1034;
            _1138 = _1035;
            _1139 = _1036;
        }
        float4 _1222;
        float4 _1223;
        float4 _1224;
        float _1225;
        if (_1056 > 0.0f)
        {
            float3 _1148 = ((_897 * 0.125f) + 0.5f.xxx) * _17_m106.xyz;
            float3 _1151 = _17_m106.xyz * 0.5f;
            float3 _1153 = clamp(_1148 - floor(_1148), _1151, 1.0f.xxx - _1151);
            float4 _1157 = _44.SampleLevel(_24, _1153, 0.0f);
            float _1159 = _1056 * (1.0f - _930);
            float _1163 = _17_m106.y * 0.5f;
            float _1168 = _1153.x;
            float _1169 = clamp(_1153.y, _1163, 1.0f - _1163) * 0.3333333432674407958984375f;
            float _1170 = _1153.z;
            float4 _1173 = _45.SampleLevel(_23, float3(_1168, _1169, _1170), 0.0f);
            float _1189 = _1157.x;
            float _1200 = _1157.y;
            float _1211 = _1157.z;
            _1222 = _1137 + (float4(((_45.SampleLevel(_23, float3(_1168, _1169 + 0.666666686534881591796875f, _1170), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1211, _1211) * _1159);
            _1223 = _1138 + (float4(((_45.SampleLevel(_23, float3(_1168, _1169 + 0.3333333432674407958984375f, _1170), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1200, _1200) * _1159);
            _1224 = _1139 + (float4(((_1173.xyz * 4.0f) - 2.0f.xxx) * _1189, _1189) * _1159);
            _1225 = _1136 + (_1173.w * _1159);
        }
        else
        {
            _1222 = _1137;
            _1223 = _1138;
            _1224 = _1139;
            _1225 = _1136;
        }
        float _1228 = clamp((_1225 * 2.0f) - 1.0f, 0.0f, 1.0f);
        _1232 = _1222;
        _1233 = _1223;
        _1234 = _1224;
        _1235 = _1228 - _930;
        _1236 = (_1228 + _930) * 0.5f;
    }
    else
    {
        _1232 = 0.0f.xxxx;
        _1233 = 0.0f.xxxx;
        _1234 = 0.0f.xxxx;
        _1235 = 0.0f;
        _1236 = 1.0f;
    }
    float4 _1256 = _1234 + float4(_17_m108.x * _1236, (_17_m108.y * _1236) + ((_17_m108.w * _1235) * 0.5f), _17_m108.z * _1236, (_17_m108.w * _1236) + ((_17_m108.y * _1235) * 0.375f));
    float4 _1276 = _1233 + float4(_17_m109.x * _1236, (_17_m109.y * _1236) + ((_17_m109.w * _1235) * 0.5f), _17_m109.z * _1236, (_17_m109.w * _1236) + ((_17_m109.y * _1235) * 0.375f));
    float4 _1296 = _1232 + float4(_17_m110.x * _1236, (_17_m110.y * _1236) + ((_17_m110.w * _1235) * 0.5f), _17_m110.z * _1236, (_17_m110.w * _1236) + ((_17_m110.y * _1235) * 0.375f));
    float3 _1324 = lerp(1.0f.xxx, clamp(abs((frac(float3(_37_m91, _37_m92, _810).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _37_m92.xxx) * _810;
    float3 _1331 = ((float3(max(0.0f, dot(_1256.xyz, _751) + _1256.w), max(0.0f, dot(_1276.xyz, _751) + _1276.w), max(0.0f, dot(_1296.xyz, _751) + _1296.w)) * (_797 + (_1324 * _37_m94))) * 1.0f) * _17_m22.x;
    float3 _1340 = (((_1331.x + _1331.y) + _1331.z) * 0.3333333432674407958984375f).xxx;
    float3 _1345 = (_1340 + ((_1331 - _1340) * _37_m122)) + ((-0.0f).xxx * _37_m122);
    float3 _1351 = _17_m76.w.xxx;
    float _1359 = 1.0f - _37_m11;
    float3 _1362 = _420 + (_751 * 0.5f);
    float2 _1812;
    do
    {
        if (_51_m7.w >= 0.9900000095367431640625f)
        {
            _1812 = float2(_51_m7.z, 1.0f);
            break;
        }
        int _1375 = int(_51_m7.x);
        bool3 _1377 = (_1375 == 2).xxx;
        float3 _1385 = _1362 - float3(_1377.x ? _51_m1[0].xyz.x : _15_m11.xyz.x, _1377.y ? _51_m1[0].xyz.y : _15_m11.xyz.y, _1377.z ? _51_m1[0].xyz.z : _15_m11.xyz.z);
        float _1396 = max(clamp((_51_m6.w - dot(_1385, _1385)) * _51_m6.z, 0.0f, 1.0f), _51_m8.x);
        float _1553;
        bool _1554;
        if (_1396 > 0.0f)
        {
            float _1551;
            bool _1552;
            if (_1375 > 0)
            {
                float3 _1403 = _1362 - _51_m1[0].xyz;
                float3 _1407 = _1362 - _51_m1[1].xyz;
                float3 _1411 = _1362 - _51_m1[2].xyz;
                float3 _1415 = _1362 - _51_m1[3].xyz;
                float4 _1420 = float4(dot(_1403, _1403), dot(_1407, _1407), dot(_1411, _1411), dot(_1415, _1415));
                float4 _1429 = float4(_51_m1[0].w, _51_m1[1].w, _51_m1[2].w, _51_m1[3].w);
                float4 _1431 = float4(bool4(_1420.x < _1429.x, _1420.y < _1429.y, _1420.z < _1429.z, _1420.w < _1429.w));
                float3 _1435 = clamp(_1431.yzw - _1431.xyz, 0.0f.xxx, 1.0f.xxx);
                float _1439 = clamp(4.0f - dot(float4(_1431.x, _1435.x, _1435.y, _1435.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
                float _1441 = clamp(_1439 + 1.0f, 0.0f, 3.0f);
                uint _1442 = uint(_1439);
                uint _1450 = uint(_1441);
                float _1456 = dot(_1420, _355[_1450]) / _51_m1[_1450].w;
                float _1474;
                if (((_1441 > _1439) && (_1456 >= 0.0f)) && (_1456 <= 1.0f))
                {
                    _1474 = _1439 + step(frac(52.98291778564453125f * frac(dot(float2(_894) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1420, _355[_1442]) / _51_m1[_1442].w) - 0.89999997615814208984375f) * 12.0f);
                }
                else
                {
                    _1474 = _1439;
                }
                float _1475 = clamp(_1474, 0.0f, 4.0f);
                float4 _1483 = mul(_51_m0[uint(_1475)], float4(_1362, 1.0f));
                float _1486 = _1483.z;
                float4 _1487 = float4(_1483.xy, _1486, _1475);
                float3 _1488 = _1487.xyz;
                bool3 _1489 = bool3(_1488.x <= 0.0f.xxx.x, _1488.y <= 0.0f.xxx.y, _1488.z <= 0.0f.xxx.z);
                bool3 _1490 = bool3(_1488.x >= 1.0f.xxx.x, _1488.y >= 1.0f.xxx.y, _1488.z >= 1.0f.xxx.z);
                bool _1496 = any(bool3(_1489.x || _1490.x, _1489.y || _1490.y, _1489.z || _1490.z)) || ((asuint(_1486) & 2147483647u) > 2139095040u);
                int _1497 = int(_1475);
                float2 _1512 = float4(_51_m3[_1497].xy + (_1487.xy * _51_m3[_1497].zw), _1486, _1475).xy;
                _1551 = _1496 ? 1.0f : (0.25f * (((_52.SampleCmpLevelZero(_25, float3(_1512 + (_51_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _377).xy, _1486) + _52.SampleCmpLevelZero(_25, float3(_1512 + (_51_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _377).xy, _1486)) + _52.SampleCmpLevelZero(_25, float3(_1512 + (_51_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _377).xy, _1486)) + _52.SampleCmpLevelZero(_25, float3(_1512 + (_51_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _377).xy, _1486)));
                _1552 = _1496;
            }
            else
            {
                _1551 = 1.0f;
                _1552 = false;
            }
            _1553 = _1551;
            _1554 = _1552;
        }
        else
        {
            _1553 = 1.0f;
            _1554 = false;
        }
        float _1754;
        float _1755;
        if ((_1396 < 1.0f) || (_51_m8.x > 0.5f))
        {
            float _1565 = 1.0f - clamp(dot(_751, _49_m0.xyz), 0.0f, 0.89999997615814208984375f);
            float4 _1582 = float4((_1362 - (_49_m0.xyz * (_1565 * _51_m24.x))) + (_751 * (_1565 * _51_m24.y)), 1.0f);
            float4 _1583 = mul(_51_m23, _1582);
            float2 _1584 = _1583.xy;
            float _1752;
            if (all(bool2(_1584.x > 0.0f.xx.x, _1584.y > 0.0f.xx.y)) && all(bool2(_1584.x < 1.0f.xx.x, _1584.y < 1.0f.xx.y)))
            {
                uint _1603 = clamp(uint((floor(_1583.y * _51_m25.z) + _1583.x) * _51_m25.y), 0u, 127u);
                uint _1607 = asuint(_51_m27[_1603].x);
                float2 _1608 = spvUnpackHalf2x16(_1607);
                float _1609 = _1608.x;
                float _1751;
                if (_1609 >= 0.0f)
                {
                    float4x4 _1618 = _51_m22;
                    _1618[0].w = _51_m27[_1603].y;
                    _1618[1].w = _51_m27[_1603].z;
                    _1618[2].w = _51_m27[_1603].w;
                    float4 _1625 = mul(_1618, _1582);
                    float3 _1626 = _1625.xyz;
                    float _1750;
                    if (all(bool3(_1626.x > 0.0f.xxx.x, _1626.y > 0.0f.xxx.y, _1626.z > 0.0f.xxx.z)) && all(bool3(_1626.x < 1.0f.xxx.x, _1626.y < 1.0f.xxx.y, _1626.z < 1.0f.xxx.z)))
                    {
                        float2 _1638 = (_1625.xy * _51_m24.zw) + float2(_1609, spvUnpackHalf2x16(_1607 >> 16u).x);
                        float _1643 = _1625.z;
                        float2 _1649 = float4(_1638, _1643, 1.0f).xy * _51_m26.zw;
                        float2 _1651 = floor(_1649 + 0.5f.xx);
                        float2 _1652 = _1649 - _1651;
                        float _1653 = _1652.x;
                        float _1654 = _1653 + 0.5f;
                        float _1656 = (_1654 * _1654) * 0.5f;
                        float _1659 = min(_1653, 0.0f);
                        float _1663 = max(_1653, 0.0f);
                        float4 _1667 = float4(_1656 - _1653, (1.0f - _1653) - (_1659 * _1659), (_1653 + 1.0f) - (_1663 * _1663), _1656) * 0.44444000720977783203125f;
                        float _1668 = _1652.y;
                        float _1669 = _1668 + 0.5f;
                        float _1671 = (_1669 * _1669) * 0.5f;
                        float _1674 = min(_1668, 0.0f);
                        float _1678 = max(_1668, 0.0f);
                        float4 _1682 = float4(_1671 - _1668, (1.0f - _1668) - (_1674 * _1674), (_1668 + 1.0f) - (_1678 * _1678), _1671) * 0.44444000720977783203125f;
                        float2 _1684 = _1667.yw;
                        float2 _1685 = _1667.xz + _1684;
                        float2 _1687 = _1682.yw;
                        float2 _1688 = _1682.xz + _1687;
                        float2 _1694 = ((_1684 / _1685) + float2(-1.5f, 0.5f)) * _51_m26.xx;
                        float2 _1696 = ((_1687 / _1688) + float2(-1.5f, 0.5f)) * _51_m26.yy;
                        float2 _1698 = _1651 * _51_m26.xy;
                        float _1699 = _1694.x;
                        float _1700 = _1696.x;
                        float2 _1702 = _1698 + float2(_1699, _1700);
                        float _1703 = _1694.y;
                        float2 _1705 = _1698 + float2(_1703, _1700);
                        float _1706 = _1696.y;
                        float2 _1708 = _1698 + float2(_1699, _1706);
                        float2 _1710 = _1698 + float2(_1703, _1706);
                        float _1711 = _1685.x;
                        float _1712 = _1688.x;
                        float _1714 = _1685.y;
                        float _1716 = _1688.y;
                        _1750 = ((((_1711 * _1712) * _55.SampleCmpLevelZero(_25, float3(_1702, _377).xy, _1643)) + ((_1714 * _1712) * _55.SampleCmpLevelZero(_25, float3(_1705, _377).xy, _1643))) + ((_1711 * _1716) * _55.SampleCmpLevelZero(_25, float3(_1708, _377).xy, _1643))) + ((_1714 * _1716) * _55.SampleCmpLevelZero(_25, float3(_1710, _377).xy, _1643));
                    }
                    else
                    {
                        _1750 = 1.0f;
                    }
                    _1751 = _1750;
                }
                else
                {
                    _1751 = 1.0f;
                }
                _1752 = _1751;
            }
            else
            {
                _1752 = 1.0f;
            }
            _1754 = _1554 ? _1752 : _1553;
            _1755 = _1752;
        }
        else
        {
            _1754 = _1553;
            _1755 = 1.0f;
        }
        float _1758 = lerp(lerp(_1755, _1754, _1396), min(_1755, _1754), _51_m8.x);
        float _1807;
        if (_1758 > 0.001000000047497451305389404296875f)
        {
            float3 _1765 = _1362 - _17_m65.xyz;
            float2 _1775 = (_1765 + (_17_m68.xyz * _1765.y)).xz * _17_m66.z;
            float2 _1782 = _17_m67.xy * _17_m75.w;
            _1807 = _1758 * lerp(1.0f, lerp(_54.SampleLevel(_24, _1775 + _1782, 0.0f), _54.SampleLevel(_24, (_1775 * _17_m67.w) + _1782, 0.0f), smoothstep(_17_m66.x, _17_m66.y, length(_1765.xz)).xxxx).x, _17_m67.z);
        }
        else
        {
            _1807 = _1758;
        }
        _1812 = float2(lerp(_1807, _51_m7.z, _51_m7.w), _1807);
        break;
    } while(false);
    float _1817 = lerp(1.0f, min(1.0f, _1812.x), _51_m6.x);
    float4 _1982;
    if (_1817 > 0.001000000047497451305389404296875f)
    {
        float3 _1828 = reflect(-_447, _751);
        float3 _1829 = -_49_m0.xyz;
        float _1834 = dot(_1829, _1828);
        float3 _1836 = _1828 - (_1829 * _1834);
        bool3 _1838 = (_1834 < _49_m4.z).xxx;
        float3 _1846 = normalize((_1829 * _49_m4.z) + ((_1836 * rsqrt(max(6.103515625e-05f, dot(_1836, _1836)))) * _49_m4.y));
        float3 _1847 = float3(_1838.x ? _1846.x : _1828.x, _1838.y ? _1846.y : _1828.y, _1838.z ? _1846.z : _1828.z);
        float3 _1851 = _1847 + _447;
        float3 _1855 = _1851 * rsqrt(max(6.103515625e-05f, dot(_1851, _1851)));
        float _1857 = clamp(dot(_1847, _751), 0.0f, 1.0f);
        float _1859 = clamp(dot(_751, _1855), 0.0f, 1.0f);
        float _1864 = clamp(dot(_751, _447), 0.0f, 1.0f);
        float _1865 = _37_m126 * _37_m126;
        float _1866 = _1865 * _1865;
        float _1887 = (((_1859 * _1866) - _1859) * _1859) + 1.0f;
        float _1890 = 1.0f - clamp(dot(_447, _1855), 0.0f, 1.0f);
        float _1891 = _1890 * _1890;
        float _1893 = (_1890 * _1891) * _1891;
        float _1917 = 1.0f - _37_m126;
        float _1924 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1917 * (1.04997003078460693359375f + (_1917 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1917))))));
        float _1925 = 1.0f - _1924;
        float3 _1928 = _863 + ((1.0f.xxx - _863) * 0.0476190485060214996337890625f);
        float _1939 = clamp(1.0f - _810, 0.0f, 1.0f);
        float _1947 = clamp((dot(_751, _1847) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        float3 _1964 = clamp(clamp((min(((_863 * (1.0f - _1893)) + _1893.xxx) * ((_1866 / (_1887 * _1887)) * (0.5f / (((_1857 * sqrt(((((-_1864) * _1866) + _1864) * _1864) + _1866)) + (_1864 * sqrt(((((-_1857) * _1866) + _1857) * _1857) + _1866))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1928 * (((_58.SampleLevel(_23, (float2(_1864, _37_m126) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_1857, _37_m126) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1924) / _1925)) * _1928) / (1.0f.xxx - (_1928 * _1925)))) * _49_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_793, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _37_m120;
        float3 _1969 = (((_1964 * _1857) + (_1324 * lerp(lerp(1.0f, (_1947 * sqrt(_1947)) * 1.66666662693023681640625f, _1939) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_447, _1847), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _1939)))) + ((_797 * 1.0f) * _1857)) * _49_m1.xyz;
        float3 _1980 = lerp(_1969, _1969 * _56.SampleBias(_23, float2(_1817, 0.5f), _17_m16).xyz, (1.0f - _1817).xxx) * 1.0f;
        _1982 = float4(_1980.x, _1980.y, _1980.z, 0.0f.xxxx.w);
    }
    else
    {
        _1982 = 0.0f.xxxx;
    }
    float2 _1983 = float2(_894);
    float2 _1985 = floor(_1983 * 0.03125f);
    int _1993 = int((_1985.x + (_1985.y * _47_m5)) * 8.0f);
    float _2000 = floor(_895 - (_17_m3.y * _47_m11));
    float _2004 = clamp(_2000, 0.0f, _47_m7 - 1.0f);
    int _2006 = int(_2004 * 8.0f);
    float3 _2008;
    float _2011;
    _2008 = 0.0f.xxx;
    _2011 = 1.0f;
    float3 _2009;
    float _2012;
    [loop]
    for (int _2013 = 0; _2013 <= 7; _2008 = _2009, _2011 = _2012, _2013++)
    {
        uint _2031 = (_2000 <= _2004) ? (_29.Load(uint(_1993 + _2013) * 4 + 0) & _29.Load(uint((_17_m21.y + _2006) + _2013) * 4 + 0)) : 0u;
        uint _2032 = uint(_2013);
        float3 _2036;
        _2012 = _2011;
        _2036 = 0.0f.xxx;
        uint _2039;
        float _2034;
        float3 _2037;
        [loop]
        for (uint _2038 = _2031; _2038 != 0u; _2012 = _2034, _2036 = _2037, _2038 = _2039)
        {
            uint _2043 = firstbitlow(_2038);
            _2039 = _2038 ^ (1u << (_2043 & 31u));
            int _2049 = int((32u * _2032) + _2043) * 8;
            int _2052 = _2049 + 1;
            int _2055 = _2049 + 2;
            int _2058 = _2049 + 3;
            int _2061 = _2049 + 5;
            int _2064 = _2049 + 6;
            int _2067 = _2049 + 7;
            uint _2071 = uint(_49_m6[_2061].w);
            float _2146;
            if ((_2071 & 1u) == 1u)
            {
                uint _2077 = asuint(_49_m6[_2061].x);
                uint _2084 = asuint(_49_m6[_2061].y);
                uint _2091 = asuint(_49_m6[_2061].z);
                uint _2098 = asuint(_49_m6[_2064].x);
                uint _2105 = asuint(_49_m6[_2064].y);
                uint _2112 = asuint(_49_m6[_2064].z);
                float3 _2131 = abs(mul(float4(_420 - _49_m6[_2052].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2077).x, spvUnpackHalf2x16(_2091).x, spvUnpackHalf2x16(_2105).x, 0.0f), float4(spvUnpackHalf2x16(_2077 >> 16u).x, spvUnpackHalf2x16(_2091 >> 16u).x, spvUnpackHalf2x16(_2105 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2084).x, spvUnpackHalf2x16(_2098).x, spvUnpackHalf2x16(_2112).x, 0.0f), float4(spvUnpackHalf2x16(_2084 >> 16u).x, spvUnpackHalf2x16(_2098 >> 16u).x, spvUnpackHalf2x16(_2112 >> 16u).x, 0.0f))).xyz);
                float _2138 = _49_m6[_2067].x * 0.5f;
                float _2144 = 1.0f - clamp((max(max(_2131.x, _2131.y), _2131.z) - (_2138 + 0.5f)) / (0.5f - _2138), 0.0f, 1.0f);
                _2146 = _2144 * _2144;
            }
            else
            {
                _2146 = 1.0f;
            }
            bool _2150 = _49_m6[_2058].z > 0.5f;
            if ((false || (_2146 < 0.001000000047497451305389404296875f)) || _2150)
            {
                _2034 = _2012;
                _2037 = _2036;
                continue;
            }
            float _3284;
            float3 _3285;
            if (_49_m6[_2049].w < 1.5f)
            {
                float3 _2638 = float3(0.100000001490116119384765625f, _37_m126, 1.0f);
                float _2647 = (0.5f + (0.5f * _49_m6[_2055].y)) - abs(_49_m6[_2055].x);
                float _2648 = _49_m6[_2055].y - _2647;
                float _2655 = abs(max((1.0f - abs(_2647)) - abs(_2648), 0.00048828125f));
                float3 _2659 = normalize(float3(_2647, _2648, (_49_m6[_2055].x >= 0.0f) ? _2655 : (-_2655)));
                float3 _2660 = _49_m6[_2052].xyz - _420;
                float _2661 = dot(_2660, _2660);
                float _2662 = rsqrt(_2661);
                float3 _2663 = _2660 * _2662;
                float _2667 = clamp(_49_m6[_2067].y * _2662, 0.0f, 1.0f);
                int _2672 = int(_49_m6[_2067].w);
                float3 _2673 = _2659 * _49_m6[_2055].z;
                float3 _2674 = _2673 * 0.5f;
                float3 _2675 = _2660 - _2674;
                float3 _2676 = _2660 + _2674;
                bool _2679 = (uint(_49_m6[_2049].w) & 1u) == 0u;
                bool _2682 = _2679 || ((_2071 & 2u) != 0u);
                bool _2685 = (!_2679) && (_49_m6[_2055].z > 0.0f);
                float _2704;
                float _2705;
                if (_2685)
                {
                    float _2689 = length(_2675);
                    float _2690 = length(_2676);
                    _2704 = clamp(0.5f * ((dot(_751, _2675) / _2689) + (dot(_751, _2676) / _2690)), 0.0f, 1.0f);
                    _2705 = 1.0f / ((((_2689 * _2690) + dot(_2675, _2676)) * 0.5f) + 1.0f);
                }
                else
                {
                    _2704 = clamp(dot(_751, _2663), 0.0f, 1.0f);
                    _2705 = 1.0f;
                }
                float _2727;
                if (_49_m6[_2064].w < 0.0f)
                {
                    float _2721 = _2661 * (_49_m6[_2052].w * _49_m6[_2052].w);
                    float _2724 = clamp(1.0f - (_2721 * _2721), 0.0f, 1.0f);
                    _2727 = lerp(1.0f / (_2661 + 1.0f), _2705, float(_2685)) * (_2724 * _2724);
                }
                else
                {
                    float3 _2710 = _2660 * _49_m6[_2052].w;
                    _2727 = _2705 * pow(1.0f - clamp(dot(_2710, _2710), 0.0f, 1.0f), _49_m6[_2064].w);
                }
                float _2733 = clamp((dot(_2663, -_2659) - _49_m6[_2055].z) * _49_m6[_2055].w, 0.0f, 1.0f);
                float _2737 = _2727 * lerp(1.0f, _2733 * _2733, float(_2679));
                float _2837;
                if ((!_2685) && (_2672 >= 0))
                {
                    uint _2743 = uint(_2672);
                    float2 _2830;
                    [branch]
                    if (_2679)
                    {
                        float4 _2820 = mul(_61_m1[_2743], _424);
                        _2830 = _61_m0[_2743].xy + (clamp(_2820.xy / _2820.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2743].zw);
                    }
                    else
                    {
                        float3 _2757 = mul(float4(-_2660, 0.0f), _61_m1[_2743]).xyz;
                        float3 _385 = _2757;
                        float3 _384 = _2757;
                        float3 _383 = abs(_2757);
                        uint _2766 = uint(int(_383.y > _383.x));
                        uint _2772 = (_383.z > _383[_2766]) ? 2u : _2766;
                        uint _2778 = (_2772 * 2u) + uint(_384[_2772] < 0.0f);
                        float _2782 = abs(_385[_2778 / 2u]);
                        float _2802 = 0.5f - (0.000244140625f / _61_m0[_2743].w);
                        _2830 = _61_m0[_2743].xy + (clamp(float2((float(_2778) + ((((_385[uint(_356[_2778].x)] * _357[_2778].x) / _2782) * _2802) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_385[uint(_356[_2778].y)] * _357[_2778].y) / _2782) * _2802)), 0.0f.xx, 1.0f.xx) * _61_m0[_2743].zw);
                    }
                    _2837 = _2737 * _59.SampleLevel(_23, _2830, 0.0f).x;
                }
                else
                {
                    _2837 = _2737;
                }
                bool _2838 = _2837 > 0.0f;
                float _3126;
                if (_2838)
                {
                    int _2890;
                    if (_2682)
                    {
                        _2890 = int(_49_m6[_2058].x);
                    }
                    else
                    {
                        uint _2845 = asuint(_49_m6[_2055].w);
                        uint _2847 = asuint(_49_m6[_2058].x);
                        float3 _2848 = _420 - _49_m6[_2052].xyz;
                        float3 _2849 = abs(_2848);
                        float _2850 = _2849.x;
                        float _2851 = _2849.y;
                        float _2853 = _2849.z;
                        int _2885;
                        if ((_2850 > _2851) && (_2850 > _2853))
                        {
                            _2885 = int((_2848.x > 0.0f) ? (_2845 >> 24u) : ((_2845 >> 16u) & 255u));
                        }
                        else
                        {
                            int _2877;
                            if (_2851 > _2853)
                            {
                                _2877 = int((_2848.y > 0.0f) ? ((_2845 >> 8u) & 255u) : (_2845 & 255u));
                            }
                            else
                            {
                                _2877 = int((_2848.z > 0.0f) ? ((_2847 >> 8u) & 255u) : (_2847 & 255u));
                            }
                            _2885 = _2877;
                        }
                        _2890 = (_2885 < 80) ? _2885 : (-1);
                    }
                    float4 _2907 = mul(_51_m10[_2890], float4((_420 - ((-_2663) * _51_m11[_2890].x)) + (_751 * (_51_m11[_2890].y * 5.0f)), 1.0f));
                    float _2908 = _2907.w;
                    float3 _2911 = _2907.xyz / _2908.xxx;
                    float2 _2912 = _2911.xy;
                    float3 _2920 = _2911.xyz;
                    bool3 _2921 = bool3(_2920.x <= 0.0f.xxx.x, _2920.y <= 0.0f.xxx.y, _2920.z <= 0.0f.xxx.z);
                    bool3 _2922 = bool3(_2920.x >= 1.0f.xxx.x, _2920.y >= 1.0f.xxx.y, _2920.z >= 1.0f.xxx.z);
                    float _2925 = _2911.z;
                    float2 _2936 = ((_2912 * (_51_m12[_2890].zw - _51_m12[_2890].xy)) + _51_m12[_2890].xy).xy * _51_m13.zw;
                    float2 _2938 = floor(_2936 + 0.5f.xx);
                    float2 _2939 = _2936 - _2938;
                    float _2940 = _2939.x;
                    float _2941 = _2940 + 0.5f;
                    float _2942 = _2941 * _2941;
                    float _2945 = 1.0f - _2940;
                    float _2946 = min(_2940, 0.0f);
                    float _2949 = _2940 + 1.0f;
                    float _2950 = max(_2940, 0.0f);
                    float _2961 = _2939.y;
                    float _2962 = _2961 + 0.5f;
                    float _2963 = _2962 * _2962;
                    float _2966 = 1.0f - _2961;
                    float _2967 = min(_2961, 0.0f);
                    float _2970 = _2961 + 1.0f;
                    float _2971 = max(_2961, 0.0f);
                    float3 _2983 = float3(0.1599999964237213134765625f * _2945, 0.1599999964237213134765625f * ((_2949 - (_2950 * _2950)) + 1.0f), _2942 * 0.07999999821186065673828125f);
                    float3 _2984 = float3(0.1599999964237213134765625f * ((_2942 * 0.5f) - _2940), 0.1599999964237213134765625f * ((_2945 - (_2946 * _2946)) + 1.0f), 0.1599999964237213134765625f * _2949) + _2983;
                    float3 _2986 = float3(0.1599999964237213134765625f * _2966, 0.1599999964237213134765625f * ((_2970 - (_2971 * _2971)) + 1.0f), _2963 * 0.07999999821186065673828125f);
                    float3 _2987 = float3(0.1599999964237213134765625f * ((_2963 * 0.5f) - _2961), 0.1599999964237213134765625f * ((_2966 - (_2967 * _2967)) + 1.0f), 0.1599999964237213134765625f * _2970) + _2986;
                    float3 _2993 = ((_2983 / _2984) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                    float3 _2995 = ((_2986 / _2987) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                    float2 _2997 = _2938 * _51_m13.xy;
                    float _2998 = _2993.x;
                    float _2999 = _2995.x;
                    float _3002 = _2993.y;
                    float _3005 = _2993.z;
                    float _3008 = _2995.y;
                    float _3015 = _2995.z;
                    float _3022 = _2984.x;
                    float _3023 = _2987.x;
                    float _3025 = _2984.y;
                    float _3027 = _2984.z;
                    float _3029 = _2987.y;
                    float _3033 = _2987.z;
                    float _3091 = (((((((_3022 * _3023) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_2998, _2999), _377).xy, _2925)) + ((_3025 * _3023) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_3002, _2999), _377).xy, _2925))) + ((_3027 * _3023) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_3005, _2999), _377).xy, _2925))) + ((_3022 * _3029) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_2998, _3008), _377).xy, _2925))) + ((_3025 * _3029) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_3002, _3008), _377).xy, _2925))) + ((_3027 * _3029) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_3005, _3008), _377).xy, _2925))) + ((_3022 * _3033) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_2998, _3015), _377).xy, _2925));
                    float2 _3112 = min(_2912, 1.0f.xx - _2912);
                    _3126 = (_2890 >= 0) ? lerp(1.0f, (any(bool3(_2921.x || _2922.x, _2921.y || _2922.y, _2921.z || _2922.z)) || ((asuint(_2925) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3091 + ((_3025 * _3033) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_3002, _3015), _377).xy, _2925))) + ((_3027 * _3033) * _53.SampleCmpLevelZero(_25, float3(_2997 + float2(_3005, _3015), _377).xy, _2925))), _2682 ? min(_51_m11[_2890].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2890].z - _2908) * 0.25f, min(_3112.x, _3112.y)))) : _51_m11[_2890].w) : 1.0f;
                }
                else
                {
                    _3126 = 1.0f;
                }
                float3 _3151;
                float3 _3152;
                if (_2685)
                {
                    float3 _3129 = _2638 * _2638;
                    float3 _3131 = reflect(-_447, _751);
                    float _3140 = dot(_3131, _2673);
                    _3151 = _3129 / clamp(_3129 + (0.5f * clamp(_49_m6[_2055].z * _2662, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
                    _3152 = normalize(_2675 + (_2673 * clamp(dot(_2675, (_3131 * _3140) - _2673) / ((_49_m6[_2055].z * _49_m6[_2055].z) - (_3140 * _3140)), 0.0f, 1.0f)));
                }
                else
                {
                    _3151 = 1.0f.xxx;
                    _3152 = _2663;
                }
                float3 _3153 = _3152 + _447;
                float3 _3157 = _3153 * rsqrt(max(6.103515625e-05f, dot(_3153, _3153)));
                float3 _3283;
                if (_2838)
                {
                    float _3161 = clamp(_2704, 0.0f, 1.0f);
                    float _3163 = clamp(dot(_751, _3157), 0.0f, 1.0f);
                    float _3165 = clamp(dot(_447, _3157), 0.0f, 1.0f);
                    float _3168 = clamp(dot(_751, _447), 0.0f, 1.0f);
                    float _3169 = _37_m126 * _37_m126;
                    float _3179;
                    if (_2667 > 0.0f)
                    {
                        _3179 = clamp(_3169 + ((_2667 * _2667) / ((_3165 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _3179 = _3169;
                    }
                    float _3180 = _3179 * _3179;
                    float _3201 = (((_3163 * _3180) - _3163) * _3163) + 1.0f;
                    float _3206 = 1.0f - _3165;
                    float _3207 = _3206 * _3206;
                    float _3209 = (_3206 * _3207) * _3207;
                    float _3233 = 1.0f - _37_m126;
                    float _3240 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3233 * (1.04997003078460693359375f + (_3233 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3233))))));
                    float _3241 = 1.0f - _3240;
                    float3 _3244 = _863 + ((1.0f.xxx - _863) * 0.0476190485060214996337890625f);
                    float _3255 = clamp(1.0f - _810, 0.0f, 1.0f);
                    float _3263 = clamp((dot(_751, _3152) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
                    float3 _3279 = (clamp((min(((_863 * (1.0f - _3209)) + _3209.xxx) * (((_3180 / (_3201 * _3201)) * _3151.y) * (0.5f / (((_3161 * sqrt(((((-_3168) * _3180) + _3168) * _3168) + _3180)) + (_3168 * sqrt(((((-_3161) * _3180) + _3161) * _3161) + _3180))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3244 * (((_58.SampleLevel(_23, (float2(_3168, _37_m126) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_3161, _37_m126) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3240) / _3241)) * _3244) / (1.0f.xxx - (_3244 * _3241)))) * _49_m6[_2067].z, 0.0f.xxx, 1000.0f.xxx) * _2704) + (_1324 * lerp(lerp(1.0f, (_3263 * sqrt(_3263)) * 1.66666662693023681640625f, _3255) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_447, _3152), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3255)));
                    _3283 = (_3279 + ((_797 * _3151.z) * _2704)) * (((_49_m6[_2049].xyz * _2837) * _3126) * _2146);
                }
                else
                {
                    _3283 = 0.0f.xxx;
                }
                _3284 = _2012;
                _3285 = _3283;
            }
            else
            {
                float _2636;
                do
                {
                    if (_2150)
                    {
                        _2636 = 1.0f;
                        break;
                    }
                    float _2170 = (0.5f + (0.5f * _49_m6[_2055].y)) - abs(_49_m6[_2055].x);
                    float _2171 = _49_m6[_2055].y - _2170;
                    float _2178 = abs(max((1.0f - abs(_2170)) - abs(_2171), 0.00048828125f));
                    float3 _2182 = normalize(float3(_2170, _2171, (_49_m6[_2055].x >= 0.0f) ? _2178 : (-_2178)));
                    float3 _2183 = _49_m6[_2052].xyz - _420;
                    float _2184 = dot(_2183, _2183);
                    float3 _2186 = _2183 * rsqrt(_2184);
                    int _2189 = int(_49_m6[_2067].w);
                    float3 _2191 = (_2182 * _49_m6[_2055].z) * 0.5f;
                    float3 _2192 = _2183 - _2191;
                    float3 _2193 = _2183 + _2191;
                    bool _2196 = (uint(_49_m6[_2049].w) & 1u) == 0u;
                    bool _2199 = _2196 || ((_2071 & 2u) != 0u);
                    bool _2202 = (!_2196) && (_49_m6[_2055].z > 0.0f);
                    float _2214;
                    if (_2202)
                    {
                        _2214 = 1.0f / ((((length(_2192) * length(_2193)) + dot(_2192, _2193)) * 0.5f) + 1.0f);
                    }
                    else
                    {
                        _2214 = 1.0f;
                    }
                    float _2236;
                    if (_49_m6[_2064].w < 0.0f)
                    {
                        float _2230 = _2184 * (_49_m6[_2052].w * _49_m6[_2052].w);
                        float _2233 = clamp(1.0f - (_2230 * _2230), 0.0f, 1.0f);
                        _2236 = lerp(1.0f / (_2184 + 1.0f), _2214, float(_2202)) * (_2233 * _2233);
                    }
                    else
                    {
                        float3 _2219 = _2183 * _49_m6[_2052].w;
                        _2236 = _2214 * pow(1.0f - clamp(dot(_2219, _2219), 0.0f, 1.0f), _49_m6[_2064].w);
                    }
                    float _2242 = clamp((dot(_2186, -_2182) - _49_m6[_2055].z) * _49_m6[_2055].w, 0.0f, 1.0f);
                    float _2246 = _2236 * lerp(1.0f, _2242 * _2242, float(_2196));
                    float _2346;
                    if ((!_2202) && (_2189 >= 0))
                    {
                        uint _2252 = uint(_2189);
                        float2 _2339;
                        [branch]
                        if (_2196)
                        {
                            float4 _2329 = mul(_61_m1[_2252], _424);
                            _2339 = _61_m0[_2252].xy + (clamp(_2329.xy / _2329.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2252].zw);
                        }
                        else
                        {
                            float3 _2266 = mul(float4(-_2183, 0.0f), _61_m1[_2252]).xyz;
                            float3 _388 = _2266;
                            float3 _387 = _2266;
                            float3 _386 = abs(_2266);
                            uint _2275 = uint(int(_386.y > _386.x));
                            uint _2281 = (_386.z > _386[_2275]) ? 2u : _2275;
                            uint _2287 = (_2281 * 2u) + uint(_387[_2281] < 0.0f);
                            float _2291 = abs(_388[_2287 / 2u]);
                            float _2311 = 0.5f - (0.000244140625f / _61_m0[_2252].w);
                            _2339 = _61_m0[_2252].xy + (clamp(float2((float(_2287) + ((((_388[uint(_356[_2287].x)] * _357[_2287].x) / _2291) * _2311) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_356[_2287].y)] * _357[_2287].y) / _2291) * _2311)), 0.0f.xx, 1.0f.xx) * _61_m0[_2252].zw);
                        }
                        _2346 = _2246 * _59.SampleLevel(_23, _2339, 0.0f).x;
                    }
                    else
                    {
                        _2346 = _2246;
                    }
                    float _2635;
                    if (_2346 > 0.0f)
                    {
                        int _2399;
                        if (_2199)
                        {
                            _2399 = int(_49_m6[_2058].x);
                        }
                        else
                        {
                            uint _2354 = asuint(_49_m6[_2055].w);
                            uint _2356 = asuint(_49_m6[_2058].x);
                            float3 _2357 = _420 - _49_m6[_2052].xyz;
                            float3 _2358 = abs(_2357);
                            float _2359 = _2358.x;
                            float _2360 = _2358.y;
                            float _2362 = _2358.z;
                            int _2394;
                            if ((_2359 > _2360) && (_2359 > _2362))
                            {
                                _2394 = int((_2357.x > 0.0f) ? (_2354 >> 24u) : ((_2354 >> 16u) & 255u));
                            }
                            else
                            {
                                int _2386;
                                if (_2360 > _2362)
                                {
                                    _2386 = int((_2357.y > 0.0f) ? ((_2354 >> 8u) & 255u) : (_2354 & 255u));
                                }
                                else
                                {
                                    _2386 = int((_2357.z > 0.0f) ? ((_2356 >> 8u) & 255u) : (_2356 & 255u));
                                }
                                _2394 = _2386;
                            }
                            _2399 = (_2394 < 80) ? _2394 : (-1);
                        }
                        float4 _2416 = mul(_51_m10[_2399], float4((_420 - ((-_2186) * _51_m11[_2399].x)) + (_751 * (_51_m11[_2399].y * 5.0f)), 1.0f));
                        float _2417 = _2416.w;
                        float3 _2420 = _2416.xyz / _2417.xxx;
                        float2 _2421 = _2420.xy;
                        float3 _2429 = _2420.xyz;
                        bool3 _2430 = bool3(_2429.x <= 0.0f.xxx.x, _2429.y <= 0.0f.xxx.y, _2429.z <= 0.0f.xxx.z);
                        bool3 _2431 = bool3(_2429.x >= 1.0f.xxx.x, _2429.y >= 1.0f.xxx.y, _2429.z >= 1.0f.xxx.z);
                        float _2434 = _2420.z;
                        float2 _2445 = ((_2421 * (_51_m12[_2399].zw - _51_m12[_2399].xy)) + _51_m12[_2399].xy).xy * _51_m13.zw;
                        float2 _2447 = floor(_2445 + 0.5f.xx);
                        float2 _2448 = _2445 - _2447;
                        float _2449 = _2448.x;
                        float _2450 = _2449 + 0.5f;
                        float _2451 = _2450 * _2450;
                        float _2454 = 1.0f - _2449;
                        float _2455 = min(_2449, 0.0f);
                        float _2458 = _2449 + 1.0f;
                        float _2459 = max(_2449, 0.0f);
                        float _2470 = _2448.y;
                        float _2471 = _2470 + 0.5f;
                        float _2472 = _2471 * _2471;
                        float _2475 = 1.0f - _2470;
                        float _2476 = min(_2470, 0.0f);
                        float _2479 = _2470 + 1.0f;
                        float _2480 = max(_2470, 0.0f);
                        float3 _2492 = float3(0.1599999964237213134765625f * _2454, 0.1599999964237213134765625f * ((_2458 - (_2459 * _2459)) + 1.0f), _2451 * 0.07999999821186065673828125f);
                        float3 _2493 = float3(0.1599999964237213134765625f * ((_2451 * 0.5f) - _2449), 0.1599999964237213134765625f * ((_2454 - (_2455 * _2455)) + 1.0f), 0.1599999964237213134765625f * _2458) + _2492;
                        float3 _2495 = float3(0.1599999964237213134765625f * _2475, 0.1599999964237213134765625f * ((_2479 - (_2480 * _2480)) + 1.0f), _2472 * 0.07999999821186065673828125f);
                        float3 _2496 = float3(0.1599999964237213134765625f * ((_2472 * 0.5f) - _2470), 0.1599999964237213134765625f * ((_2475 - (_2476 * _2476)) + 1.0f), 0.1599999964237213134765625f * _2479) + _2495;
                        float3 _2502 = ((_2492 / _2493) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.xxx;
                        float3 _2504 = ((_2495 / _2496) + float3(-2.5f, -0.5f, 1.5f)) * _51_m13.yyy;
                        float2 _2506 = _2447 * _51_m13.xy;
                        float _2507 = _2502.x;
                        float _2508 = _2504.x;
                        float _2511 = _2502.y;
                        float _2514 = _2502.z;
                        float _2517 = _2504.y;
                        float _2524 = _2504.z;
                        float _2531 = _2493.x;
                        float _2532 = _2496.x;
                        float _2534 = _2493.y;
                        float _2536 = _2493.z;
                        float _2538 = _2496.y;
                        float _2542 = _2496.z;
                        float _2600 = (((((((_2531 * _2532) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2507, _2508), _377).xy, _2434)) + ((_2534 * _2532) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2511, _2508), _377).xy, _2434))) + ((_2536 * _2532) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2514, _2508), _377).xy, _2434))) + ((_2531 * _2538) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2507, _2517), _377).xy, _2434))) + ((_2534 * _2538) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2511, _2517), _377).xy, _2434))) + ((_2536 * _2538) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2514, _2517), _377).xy, _2434))) + ((_2531 * _2542) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2507, _2524), _377).xy, _2434));
                        float2 _2621 = min(_2421, 1.0f.xx - _2421);
                        _2635 = (_2399 >= 0) ? lerp(1.0f, (any(bool3(_2430.x || _2431.x, _2430.y || _2431.y, _2430.z || _2431.z)) || ((asuint(_2434) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2600 + ((_2534 * _2542) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2511, _2524), _377).xy, _2434))) + ((_2536 * _2542) * _53.SampleCmpLevelZero(_25, float3(_2506 + float2(_2514, _2524), _377).xy, _2434))), _2199 ? min(_51_m11[_2399].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_51_m11[_2399].z - _2417) * 0.25f, min(_2621.x, _2621.y)))) : _51_m11[_2399].w) : 1.0f;
                    }
                    else
                    {
                        _2635 = 1.0f;
                    }
                    _2636 = _2635;
                    break;
                } while(false);
                _3284 = _2012 * _2636;
                _3285 = 0.0f.xxx;
            }
            _2034 = _3284;
            _2037 = _2036 + _3285;
        }
        _2009 = _2008 + _2036;
    }
    float3 _3295 = -_447;
    float _3296 = 1.0f - _37_m1;
    float _3311 = _420.y * _17_m46.w;
    float _3316 = max(0.00999999977648258209228515625f, _3311 + _17_m47.w);
    float3 _3330 = exp(_17_m45.xyz * ((-max(0.0f, (_448 * _17_m44.w) - _17_m43.w)) * (((1.0f - exp(-_3316)) / _3316) * exp(_3311 + _17_m48.w))));
    float _3333 = dot(_3295, _17_m44.xyz);
    float _3339 = _17_m45.w * _17_m45.w;
    float _3343 = (1.0f + _3339) - ((2.0f * _17_m45.w) * _3333);
    float3 _3675;
    float _3676;
    if (_17_m55.z > 0.0f)
    {
        uint3 _3501 = (uint3(int3(int(_894.x), int(_894.y), int(_17_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3502 = _3501.y;
        uint _3503 = _3501.z;
        uint _3506 = _3501.x + (_3502 * _3503);
        uint _3508 = _3502 + (_3503 * _3506);
        uint _3510 = _3503 + (_3506 * _3508);
        uint _3512 = _3506 + (_3508 * _3510);
        float _3536 = dot(_3295, -_15_m0[2].xyz);
        float3 _3546 = _420 - _15_m11.xyz;
        float _3548 = (_17_m55.w * ((_3536 > 5.9604644775390625e-08f) ? (1.0f / _3536) : 0.0f)) * (1.0f / _448);
        float _3549 = _3546.y;
        float _3550 = _3548 * _3549;
        float _3552 = _15_m11.y + _3550;
        float _3553 = _3549 - _3550;
        float _3555 = (1.0f - _3548) * _448;
        float _3569 = max(-127.0f, _17_m49.z * _3553);
        float _3593 = max(-127.0f, _17_m52.x * _3553);
        float _3604 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_3552 - _17_m49.x)))) * ((abs(_3569) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3569)) / _3569) : (0.693147182464599609375f - (0.2402265071868896484375f * _3569)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_3552 - _17_m52.z)))) * ((abs(_3593) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3593)) / _3593) : (0.693147182464599609375f - (0.2402265071868896484375f * _3593))));
        float _3626 = clamp((_448 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3629 = clamp((max(clamp(exp2(-(_3604 * _3555)), 0.0f, 1.0f), _17_m51.w) + clamp((_448 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3626, 0.0f, 1.0f);
        float4 _3669 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _39.SampleLevel(_23, float3((_1983 + ((((float3(uint3(_3512, _3508 + (_3510 * _3512), _381) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _17_m59.w).xy) * _17_m57.xy, (log2((_895 * _17_m56.x) + _17_m56.y) * _17_m56.z) / _17_m55.z), 0.0f), clamp((_895 - _17_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
        _3675 = _3669.xyz + (((_17_m51.xyz * (1.0f - _3629)) + (((_17_m54.xyz * pow(clamp(dot(_447, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3604 * max(_3555 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3626))) * _3669.w);
        _3676 = _3669.w * _3629;
    }
    else
    {
        float3 _3373 = _420 - _15_m11.xyz;
        float _3375 = _3373.y;
        float _3389 = max(-127.0f, _17_m49.z * _3375);
        float _3413 = max(-127.0f, _17_m52.x * _3375);
        float _3424 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_15_m11.y - _17_m49.x)))) * ((abs(_3389) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3389)) / _3389) : (0.693147182464599609375f - (0.2402265071868896484375f * _3389)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_15_m11.y - _17_m52.z)))) * ((abs(_3413) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3413)) / _3413) : (0.693147182464599609375f - (0.2402265071868896484375f * _3413))));
        float _3446 = clamp((_448 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
        float _3449 = clamp((max(clamp(exp2(-(_3424 * _448)), 0.0f, 1.0f), _17_m51.w) + clamp((_448 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _3446, 0.0f, 1.0f);
        _3675 = (_17_m51.xyz * (1.0f - _3449)) + (((_17_m54.xyz * pow(clamp(dot(_447, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_3424 * max(_448 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3446));
        _3676 = _3449;
    }
    float3 _3685 = (((((((lerp(dot(_1345, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1345, _1351) * _17_m76.xyz) * _37_m11) + (_1345 * _1359)) + (_794 * (1.0f - _37_m124))) + (_1982.xyz + (_2008 * _2011)).xyz).xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_3330 * _3676)) : (_3330 * _3676))) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3333 * _3333)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _3339) / max((12.56637096405029296875f * _3343) * sqrt(_3343), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3330)) * _3676 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_3675 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f))) * _3296)).xyz * _793;
    float4 _3686 = float4(_3685.x, _3685.y, _3685.z, _378.w);
    float _3687 = _793 * _3296;
    _3686.w = _3687;
    float3 _3696 = ((lerp(dot(_3686.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _3686.xyz, _1351) * _17_m76.xyz) * _37_m11) + (_3686.xyz * _1359);
    float2 _3706 = min(_861, 1.0f.xx);
    float4 _3707 = float4(_3706.x, _3706.y, _378.z, _378.w);
    _3707.z = float(clamp(max(dot(_3696.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _3687, _3687) * 10.0f, 0.0f, 1.0f) > 0.5f);
    _3707.w = (_37_m2 * _37_m0) * float(clamp(max(dot(_794, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _793, _793) * 10.0f, 0.0f, 1.0f) > 0.5f);
    float3 renodx_output_color = float3(_3696.x, _3696.y, _3696.z);
    if (GLASS_TRANSPARENCY > 0.5f) {
        float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
        if (renodx_luminance > 0.5f) {
            float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
            renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
        }
    }
    _12 = float4(renodx_output_color, _3686.w);
    _13 = _3707;
    if (GLASS_TRANSPARENCY > 0.5f) _13.w = 0.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    _4 = stage_input._4;
    _5 = stage_input._5;
    _6 = stage_input._6;
    _7 = stage_input._7;
    _8 = stage_input._8;
    _9 = stage_input._9;
    _10 = stage_input._10;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._12 = _12;
    stage_output._13 = _13;
    return stage_output;
}
