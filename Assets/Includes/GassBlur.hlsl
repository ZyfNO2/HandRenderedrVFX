#ifndef GASSBLUR_INCLUDED
#define GASSBLUR_INCLUDED

void GassBlur_float(float2 UV, float BlurRadius , Texture2D MainTex , SamplerState Sampler  ,float TextureSize ,float DepthValue , out float4 BlurColor)
{
	//float2 blurUV = 0;
	float4 col = 0;
#if SHADERGRAPH_PREVIEW
	//BlurUV = 0;
	BlurColor = 0;
#else

	
//	float sigma2 = pow(sigma, 2.0f);
//	float left = 1 / (2 * sigma2 * 3.1415926f);
	//TEXTURE2D(MainTex);
//	SAMPLER(sampler_MainTex);
//	TEXTURE2D(_MainTex);
//	SAMPLER(sampler_MainTex);
	//sampler2D sampler_MainTex;

	//float sigma3 = left * right;
		float sigma = BlurRadius / 3.0f;
		float sigma2 = sigma * sigma;
		float left = 1 / (2 * sigma2 * 3.1415926f);
		//float right = exp(-(x * x + y * y) / (2 * sigma2));
	//	return left * right;
	

	
	
	//float4 col = float4(0, 0, 0, 0);

	for (int x = -BlurRadius; x <= BlurRadius; ++x)
	{
		for (int y = -BlurRadius; y <= BlurRadius; ++y)
		{
			//获取周围像素的颜色
			//因为uv是0-1的一个值，而像素坐标是整形，我们要取材质对应位置上的颜色，需要将整形的像素坐标
			//转为uv上的坐标值
		    float4 color = SAMPLE_TEXTURE2D(MainTex, Sampler, (UV + float2(x / TextureSize, y / TextureSize)* DepthValue));
		//	float2 blurUV = UV + XY;
			//获取此像素的权重
			float weight = left * exp(-(x * x + y * y) / (2 * sigma2));
			//计算此点的最终颜色		
			//float3 col = TextureColor + TextureColor * weight;
			col += color * weight;
		}
	}
	//BlurUV = blurUV;
	BlurColor = col;
#endif

	//	BlurColor = col;

}

#endif
