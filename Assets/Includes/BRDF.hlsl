#ifndef BRDF_INCLUDED
#define BRDF_INCLUDED

void Disney_float(float3 Direction, float3 WorldNormal, float3 WorldView, float Roughness, out float Diffuse)
{
#if SHADERGRAPH_PREVIEW
	Diffuse = 0;
#else
	WorldNormal = normalize(WorldNormal);
	WorldView = SafeNormalize(WorldView);
	Direction = normalize(Direction);

	float3 HalfDir = normalize(Direction + WorldView);

	float NdotL = saturate(dot(WorldNormal, Direction));
	float NdotV = saturate(dot(WorldNormal, WorldView));
	float LdotH = saturate(dot(Direction, HalfDir));

	float NLPow5 = pow((1 - NdotL), 5);
	float NVPow5 = pow((1 - NdotV), 5);
	float Fd90 = 0.5 + 2 * LdotH * LdotH * Roughness;

	float Disney = (1 + (Fd90 - 1) * NLPow5) * (1 + (Fd90 - 1) * NVPow5);

	Diffuse = Disney * NdotL;
#endif

}
void Disney_half(half3 Direction, half3 WorldNormal, half3 WorldView, half Roughness, out half Diffuse)
{
#if SHADERGRAPH_PREVIEW
	Diffuse = 0;
#else
	WorldNormal = normalize(WorldNormal);
	WorldView = SafeNormalize(WorldView);
	Direction = normalize(Direction);

	half3 HalfDir = normalize(Direction + WorldView);

	half NdotL = saturate(dot(WorldNormal, Direction));
	half NdotV = saturate(dot(WorldNormal, WorldView));
	half LdotH = saturate(dot(Direction, HalfDir));

	half NLPow5 = pow((1 - NdotL), 5);
	half NVPow5 = pow((1 - NdotV), 5);
	half Fd90 = 0.5 + 2 * LdotH * LdotH * Roughness;

	half Disney = (1 + (Fd90 - 1) * NLPow5) * (1 + (Fd90 - 1) * NVPow5);

	Diffuse = Disney * NdotL;
#endif

}

void BRDF_float(float3 Direction, float3 WorldNormal, float3 WorldView, float Roughness, float F0, out float Specular)
{
#if SHADERGRAPH_PREVIEW
	Specular = 0;
#else
	WorldNormal = normalize(WorldNormal);
	WorldView = SafeNormalize(WorldView);
	Direction = normalize(Direction);
	float3 HalfDir = normalize(Direction + WorldView);
	//float PI = 3.141596;

	float NdotL = saturate(dot(WorldNormal, Direction));
	float NdotV = saturate(dot(WorldNormal, WorldView));
	float LdotH = saturate(dot(Direction, HalfDir));
	float NdotH = saturate(dot(WorldNormal, HalfDir));

	//BRDF F

	float BRDF_F = F0 + (1 - F0) * (pow((1 - LdotH), 5));

	//BRDF D

	float alpha = Roughness * Roughness;
	float alphaSqr = alpha * alpha;
	float denominator = NdotH * NdotH * (alphaSqr - 1) + 1;
	float BRDF_D = alphaSqr / (3.14 * denominator * denominator);

	//BRDF G

	float k = (Roughness + 1) * (Roughness + 1) / 8;
	float G1 = NdotV / ( NdotV * (1 - k) + k);
	float G2 = NdotL / ( NdotL * (1 - k) + k);
	float BRDF_G = G1 * G2;

	//BRDF Specular

	float BRDF_Specular = BRDF_F * BRDF_G * BRDF_D * NdotL;

	Specular = BRDF_Specular;
#endif

}


void BRDF_Half( half3 Direction, half3 WorldNormal, half3 WorldView, half Roughness, half F0, out half Specular)
{
#if SHADERGRAPH_PREVIEW
	Specular = 0;
#else
	WorldNormal = normalize(WorldNormal);
	WorldView = SafeNormalize(WorldView);
	Direction = normalize(Direction);
	half3 HalfDir = normalize(Direction + WorldView);
	//half PI = 3.141596;

	half NdotL = saturate(dot(WorldNormal, Direction));
	half NdotV = saturate(dot(WorldNormal, WorldView));
	half LdotH = saturate(dot(Direction, HalfDir));
	half NdotH = saturate(dot(WorldNormal, HalfDir));

	//BRDF F

	half BRDF_F = F0 + (1 - F0) * (pow((1 - LdotH), 5));

	//BRDF D

	half alpha = Roughness * Roughness;
	half alphaSqr = alpha * alpha;
	half denominator = NdotH * NdotH * (alphaSqr - 1) + 1;
	half BRDF_D = alphaSqr / (3.14 * denominator * denominator);

	//BRDF G

	half k = (Roughness + 1) * (Roughness + 1) / 8;
	half G1 = NdotV / (NdotV * (1 - k) + k);
	half G2 = NdotL / (NdotL * (1 - k) + k);
	half BRDF_G = G1 * G2;

	//BRDF Specular

	half BRDF_Specular = BRDF_F * BRDF_G * BRDF_D * NdotL;

	Specular = BRDF_Specular;
#endif

}
#endif
