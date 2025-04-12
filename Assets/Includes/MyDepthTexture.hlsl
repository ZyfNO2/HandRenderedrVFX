#ifndef MY_DEPTH_TEXTURE_INCLUDED
#define MY_DEPTH_TEXTURE_INCLUDED

//#include "Packages/com.unity.render-pipelines.lightweight/ShaderLibrary/SurfaceInput.hlsl"
//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

TEXTURE2D(_CameraDepthTexture);
SAMPLER(sampler_CameraDepthTexture);

void MyDepth_float(float2 Depthuv, out float Color)
{
#if SHADERGRAPH_PREVIEW
	Color = 0;
#else
    Color = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, sampler_CameraDepthTexture, Depthuv).r;
#endif
}

#endif
