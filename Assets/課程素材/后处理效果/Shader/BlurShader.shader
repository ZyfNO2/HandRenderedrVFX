// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "BlurShader"
{
	Properties
	{
		_MainTex("Texture", 2D) = "white" {}
		_BlurRadius("BlurRadius", Range(1, 15)) = 5
		_TextureSize("TextureSize", Float) = 256
		_BlendValue("BlendValue", Range(0,1)) = 0
		[HDR]_BlendColor("BlendColor", Color) = (1,1,1,1)
		_Threshold("Threshold", Range(0,10)) = 1
	}
		SubShader
		{
			// No culling or depth
			Cull Off ZWrite Off ZTest Always

			Pass
			{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				#include "UnityCG.cginc"

				struct appdata
				{
					float4 vertex : POSITION;
					float2 uv : TEXCOORD0;
				};

				struct v2f
				{
					float2 uv : TEXCOORD0;
					float4 vertex : SV_POSITION;
				};

				v2f vert(appdata v)
				{
					v2f o;
					o.vertex = UnityObjectToClipPos(v.vertex);
					o.uv = v.uv;
					return o;
				}

				sampler2D _MainTex;
				int _BlurRadius;
				float _TextureSize;
				float _BlendValue;
				fixed4 _BlendColor;
				float _Threshold;

				//这一步其实可以用计算出来的常量来替代，不需要在循环中每一步计算
				float GetGaussWeight(float x, float y, float sigma)
				{
					float sigma2 = pow(sigma, 2.0f);
					float left = 1 / (2 * sigma2 * 3.1415926f);
					float right = exp(-(x * x + y * y) / (2 * sigma2));
					return left * right;
				}

				fixed4 GaussBlur(float2 uv)
				{
					//因为高斯函数中3σ以外的点的权重已经很小了，因此σ取半径r/3的值
					float sigma = (float)_BlurRadius / 3.0f;
					float4 col = float4(0, 0, 0, 0);
					for (int x = -_BlurRadius; x <= _BlurRadius; ++x)
					{
						for (int y = -_BlurRadius; y <= _BlurRadius; ++y)
						{
							//获取周围像素的颜色
							//因为uv是0-1的一个值，而像素坐标是整形，我们要取材质对应位置上的颜色，需要将整形的像素坐标
							//转为uv上的坐标值
							float4 color = tex2D(_MainTex, uv + float2(x / _TextureSize, y / _TextureSize));
							//获取此像素的权重
							float weight = GetGaussWeight(x, y, sigma);
							//计算此点的最终颜色
							col += color * weight;

						}
					}
					return col;
				}

				fixed4 frag(v2f i) : SV_Target
				{
					float4 orignal = tex2D(_MainTex, i.uv);
					float4 GaussBlurgray = GaussBlur(i.uv);
					float gray = saturate(dot(GaussBlurgray.rgb, float3(0.299, 0.587, 0.114))+_Threshold);
					float3 orignalgray = float3(gray, gray, gray);
					float4 col = orignal* (1-_BlendValue) + GaussBlur(i.uv) * _BlendValue * _BlendColor;
					//float4 col = orignal + GaussBlur(i.uv) * _BlendValue * gray * _BlendColor;
					//float4 col = SimpleBlur(i.uv);

					return col;
				}
				ENDCG
			}
		}
}