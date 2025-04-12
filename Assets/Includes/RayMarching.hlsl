#ifndef RAYMARCHING_INCLUDED
#define RAYMARCHING_INCLUDED

void rayMarching_float(float3 boundsMin, float3 boundsMax, float3 rayOrigin, float3 rayDir, out float dstToBox, out float dstInsideBox)
{
#if SHADERGRAPH_PREVIEW
     boundsMin = float3(0,0,0);
	 boundsMax = float3(1, 1, 1);
	 rayOrigin = float3(0.5, 0.5, 0.5);
	 rayDir = float3(0, 0, 0);
	 dstToBox = 0;
	 dstInsideBox = 0;
#else
	float3 t0 = (boundsMin - rayOrigin) / rayDis;
	float3 t1 = (boundsMax - rayOrigin) / rayDis;

	float3 tmin = min(t0, t1);
	float3 tmax = max(t0, t1);

	float dstA = max(max(tmin.x, tmin.y), tmin.z);
	float dstB = min(min(tmax.x, tmax.y), tmax.z);

	dstToBox = max(0, dstA);
	dstInsideBox = max(0, dstB - dstToBox);

#endif

}

#endif