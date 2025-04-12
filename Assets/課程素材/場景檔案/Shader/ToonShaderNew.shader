Shader "ToonShader/ToonShaderNew"
{
    Properties
    {	
		_VertexColorTex("VertexColorTex" , 2D) = "white" {}
		//_OutlineWidth01("OutlineWidth01", Range(0, 1)) = 0
		_OutlineWidth("OutlineWidth", Range(0, 50)) = 0
		_OutlineColor("OutlineColor", Color) = (0,0,0,1)
		//_OutlineFactor("OutlineFactor",Range(0,1)) = 1
		 [NoScaleOffset]_MainTex("MainTex", 2D) = "white" {}
		Color_C1AFD425("Color", Color) = (1, 1, 1, 1)
		[ToggleUI]Boolean_6D5CF815("OtherLightOn", Float) = 0
		[HDR]Color_C3892D16("OtherLightColor", Color) = (1, 1, 1, 1)
		Color_FD6C9BB6("ShadowColor", Color) = (1, 1, 1, 1)
		[NoScaleOffset]Texture2D_DE92BF0("LightMap", 2D) = "black" {}
		[NoScaleOffset]Texture2D_7EF187FF("RampTex", 2D) = "white" {}
		Vector4_B2100EC9("Tiling&Offset", Vector) = (1, 1, 0, 0)
		[ToggleUI]Boolean_BD2F928D("CustomLightOn", Float) = 0
		Vector4_6445BC47("CustomLight", Vector) = (0, 0, 0, 0)
		[NoScaleOffset]Texture2D_81E58350("HardShadowColor", 2D) = "white" {}
		Color_BAFEA9F0("Tint01", Color) = (1, 1, 1, 1)
		Color_45F00913("Tint02", Color) = (1, 1, 1, 1)
		[HDR]Color_F4176F73("ScreenLghtColor", Color) = (0, 0, 0, 0)
		Vector1_14D51B31("SpecularPower", Range(0.1, 20)) = 3
		[HDR]Color_30008A8C("SpecularColor", Color) = (0, 0, 0, 0)
		Vector1_7D259053("SpecularRange", Range(0, 0.6)) = 0.2
		Vector1_C7DB18C5("SpecularSmooth", Range(-5, 1)) = 0
		Vector1_5663B961("RimPower", Range(0.1, 20)) = 5
		[HDR]Color_6754F1C6("RimColor", Color) = (0, 0, 0, 1)
		Vector1_9AD8DF8A("RimRange", Range(-2, 1)) = 0.5
		Vector1_89B9B85C("RimSmooth", Range(-1, 1)) = 0
		[HDR]Color_D106E8A("HairSpecularColor", Color) = (0, 0, 0, 1)
		[NoScaleOffset]Texture2D_E19E455("HairSpecularTex", 2D) = "black" {}
		[ToggleUI]Boolean_C67EB6EB("VertexColorShow", Float) = 0
		[ToggleUI]Boolean_A3CCDAEB("XYorYZ_RampUV", Float) = 0
		[NoScaleOffset]Texture2D_4A0C2C73("LightRamp", 2D) = "white" {}
		Vector1_F1979D3("LightRampRadian", Range(-1, 1)) = 1
		Vector1_632D4B63("LightOffset", Range(-1, 1)) = 0
		Vector1_C37932A7("Rotate", Range(0, 360)) = 0
		Vector1_703425E3("LightRimPower", Range(0.1, 20)) = 1
		Vector1_55FFAA23("RimIntensity", Range(0, 1)) = 0
		[HDR]Color_4808C50D("BackRimLight", Color) = (0.8962264, 0.8627908, 0.7059897, 1)
		Vector1_1FE38482("BackLightRange", Range(0.01, 10)) = 2
		Vector1_E10F59B8("NormalStrength", Range(-5, 5)) = 0
		[NoScaleOffset]Texture2D_AFFE0F8C("Normal", 2D) = "black" {}
		Vector4_FF4B755C("Normal_T&O", Vector) = (1, 1, 0, 0)
		Vector1_1E9C8C1F("ShadowValue", Range(0, 1)) = 0.5
		Vector1_597CA0EC("ShadowMapRange", Range(0, 1)) = 0
		Vector4_7268281E("LightDarkDir", Vector) = (0, 0, 0, 0)
		[ToggleUI]Boolean_1A81DE87("UseOriginalNormal", Float) = 0
		[ToggleUI]Boolean_5A562BB8("DarkDiffuseLightDirOn", Float) = 0
		Vector1_78608E79("OtherDiffuseRange", Range(0, 1)) = 0
		Vector1_5152DDBE("OtherDiffuseSmooth", Range(-1, 1)) = 0
		Color_D7AF0984("OtherDiffuseColor", Color) = (1, 1, 1, 1)
		Color_584ABCD0("DiffuseColor", Color) = (1, 1, 1, 1)
		Vector1_D9F91D89("DiffuseNoiseDetail", Range(10, 200)) = 10
		Vector1_3FF19332("DiffuseNoiseStrength", Range(0, 1)) = 0
		Color_811006DD("AddLightColor", Color) = (0, 0, 0, 0)
		Vector1_E0E07BB("ScreenLightRange", Range(0, 1)) = 1
		Vector1_2C7AE8EA("ShadowRange", Range(0, 1)) = 0
		Color_2901119A("AllColor", Color) = (1, 1, 1, 1)
		Vector1_6178D656("EndRimStep", Range(0, 1)) = 0.5
		Vector1_1EDA5197("EndRimRange", Range(0, 1)) = 0
		[HDR]Color_B09665EF("EndRimColor", Color) = (0, 0, 0, 0)
		Vector1_12A795A8("LerpValue", Range(0, 1)) = 0
		[HDR]Color_9731F5AE("LerpColor", Color) = (0, 0, 0, 0)
		[NoScaleOffset]Texture2D_8F92EDA("Ramp", 2D) = "white" {}
		[ToggleUI]Boolean_680D4A4D("AddLightUseOriginalNormal", Float) = 0
		Vector1_193A1ED3("LightRange", Range(-1, 1)) = 0
		Vector1_492E7F16("LightSmooth", Range(-1, 1)) = 0
		Color_E1F70A85("LightColor", Color) = (0, 0, 0, 1)
		Vector1_854F1F29("ShadowIntensity", Range(0, 1)) = 1
		Color_5D41734B("AllRampColor", Color) = (0, 0, 0, 1)
        [NoScaleOffset]Texture2D_75317E5D("DirtyTex", 2D) = "white" {}
     //   Color_95BA54AB("TexColor", Color) = (0, 0, 0, 0)
        Vector1_F60D8232("TexLerpValue", Range(0, 1)) = 1
      //  [HDR]Color_5C421368("DepthRimColor", Color) = (0.7264151, 0.6464638, 0.5036935, 1)
       // Vector1_2327436F("DepthRimRange", Range(0, 0.1)) = 0.002
        [ToggleUI]Boolean_18010446("DisneyDiffuse", Float) = 0
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="UniversalPipeline"
            "RenderType"="Opaque"
            "Queue"="Geometry+0"
        }
		/*  Pass {
		   Name "Outline"
		   Tags{
		   }
		   Cull Front
		   ZWrite On

		   HLSLPROGRAM
		   #pragma vertex vert
		   #pragma fragment frag
		   #include "UnityCG.cginc"
		   #pragma fragmentoption ARB_precision_hint_fastest
		   #pragma multi_compile_shadowcaster
		   #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal
		   #pragma target 3.0
		   float _OutlineWidth01;
		   float4 _OutlineColor;
		   float _OutlineFactor;
		   uniform sampler2D _VertexColorTex; uniform float4 _VertexColorTex_ST;
		   struct VertexInput {
			   float4 vertex : POSITION;
			   float2 texcoord0 : TEXCOORD0;
			   float3 normal : NORMAL;
			   float4 vertexColor : COLOR;
		   };
		   struct VertexOutput {
			   float4 pos : SV_POSITION;
			   float4 vertexColor : COLOR;
			   float2 uv0 : TEXCOORD0;
		   };
		   VertexOutput vert(VertexInput v) {
			   VertexOutput o;
			   o.pos = UnityObjectToClipPos(v.vertex);
			   o.uv0 = v.texcoord0;
			   float4 _VertexColorTex_var = tex2Dlod(_VertexColorTex, float4(TRANSFORM_TEX(o.uv0, _VertexColorTex), 0.0, 0));
			   float3 dir = normalize(v.vertex.xyz);
			   float3 dir2 = v.normal;
			   dir = lerp(dir,dir2,_OutlineFactor);
			   dir = mul((float3x3)UNITY_MATRIX_IT_MV,dir);
			   float2 offset = TransformViewToProjection(dir.xy);
			   offset = normalize(offset);

			   o.vertexColor = v.vertexColor;
			   float4 objPos = mul(unity_ObjectToWorld, float4(0,0,0,1));
			   o.pos.xy += offset * _OutlineWidth01 * o.vertexColor.g * _VertexColorTex_var.g;
			   return o;
		   }
		   float4 frag(VertexOutput i, float facing : VFACE) : COLOR {

			   return fixed4(_OutlineColor.rgb,0);
		   }
		   ENDHLSL
	   }*/
		  Pass {
		   Name "Outline"
		   Tags {
		   }
		   Cull Front

		   CGPROGRAM
		   #pragma vertex vert
		   #pragma fragment frag
		   #include "UnityCG.cginc"
		   #pragma fragmentoption ARB_precision_hint_fastest
		   #pragma multi_compile_shadowcaster
		   #pragma only_renderers d3d9 d3d11 glcore gles 
		   #pragma target 3.0
		   uniform float4 _OutlineColor;
		   uniform float _OutlineWidth;
		   uniform sampler2D _VertexColorTex; uniform float4 _VertexColorTex_ST;
		   struct VertexInput {
			   float4 vertex : POSITION;
			   float3 normal : NORMAL;
			   float2 texcoord0 : TEXCOORD0;
			   float4 vertexColor : COLOR;
		   };
		   struct VertexOutput {
			   float4 pos : SV_POSITION;
			   float2 uv0 : TEXCOORD0;
			   float4 vertexColor : COLOR;
		   };
           VertexOutput vert(VertexInput v) {
               VertexOutput o = (VertexOutput)0;
               o.uv0 = v.texcoord0;
               o.vertexColor = v.vertexColor;
               float4 pos = UnityObjectToClipPos(v.vertex);
               float3 viewNormal = mul((float3x3)UNITY_MATRIX_IT_MV, v.normal.xyz);
               float3 ndcNormal = normalize(TransformViewToProjection(viewNormal.xyz)) * clamp((pos.w*0.2+0.8),0,2) ;
               float4 _VertexColorTex_var = tex2Dlod(_VertexColorTex, float4(TRANSFORM_TEX(o.uv0, _VertexColorTex), 0.0, 0));

               pos.xy += 0.01 * _OutlineWidth * ndcNormal.xy * _VertexColorTex_var.g * o.vertexColor.g;

               o.pos = pos;
               return o;
           }
           float4 frag(VertexOutput i) : COLOR{
               return fixed4(_OutlineColor.rgb,0);
           }
		   ENDCG
	   }
              Pass
           {
               Name "Universal Forward"
               Tags
               {
                   "LightMode" = "UniversalForward"
               }

               // Render State
               Blend One Zero, One Zero
               Cull Back
               ZTest LEqual
               ZWrite On
               // ColorMask: <None>


               HLSLPROGRAM
               #pragma vertex vert
               #pragma fragment frag

               // Debug
               // <None>

               // --------------------------------------------------
               // Pass

               // Pragmas
               #pragma prefer_hlslcc gles
               #pragma exclude_renderers d3d11_9x
               #pragma target 2.0
               #pragma multi_compile_fog
               #pragma multi_compile_instancing

               // Keywords
               #pragma multi_compile _ LIGHTMAP_ON
               #pragma multi_compile _ DIRLIGHTMAP_COMBINED
               #pragma multi_compile _ _MAIN_LIGHT_SHADOWS
               #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
               #pragma multi_compile _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS _ADDITIONAL_OFF
               #pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
               #pragma multi_compile _ _SHADOWS_SOFT
               #pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
               // GraphKeywords: <None>

               // Defines
               #define _NORMAL_DROPOFF_TS 1
               #define ATTRIBUTES_NEED_NORMAL
               #define ATTRIBUTES_NEED_TANGENT
               #define ATTRIBUTES_NEED_TEXCOORD0
               #define ATTRIBUTES_NEED_TEXCOORD1
               #define ATTRIBUTES_NEED_TEXCOORD2
               #define ATTRIBUTES_NEED_COLOR
               #define VARYINGS_NEED_POSITION_WS 
               #define VARYINGS_NEED_NORMAL_WS
               #define VARYINGS_NEED_TANGENT_WS
               #define VARYINGS_NEED_TEXCOORD0
               #define VARYINGS_NEED_TEXCOORD1
               #define VARYINGS_NEED_TEXCOORD2
               #define VARYINGS_NEED_COLOR
               #define VARYINGS_NEED_VIEWDIRECTION_WS
               #define VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
               #define SHADERPASS_FORWARD

               // Includes
               #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
               #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"

               // --------------------------------------------------
               // Graph

               // Graph Properties
               CBUFFER_START(UnityPerMaterial)
               float4 Color_C1AFD425;
               float Boolean_6D5CF815;
               float4 Color_C3892D16;
               float4 Color_FD6C9BB6;
               float4 Vector4_B2100EC9;
               float Boolean_BD2F928D;
               float4 Vector4_6445BC47;
               float4 Color_BAFEA9F0;
               float4 Color_45F00913;
               float4 Color_F4176F73;
               float Vector1_14D51B31;
               float4 Color_30008A8C;
               float Vector1_7D259053;
               float Vector1_C7DB18C5;
               float Vector1_5663B961;
               float4 Color_6754F1C6;
               float Vector1_9AD8DF8A;
               float Vector1_89B9B85C;
               float4 Color_D106E8A;
               float Boolean_C67EB6EB;
               float Boolean_A3CCDAEB;
               float Vector1_F1979D3;
               float Vector1_632D4B63;
               float Vector1_C37932A7;
               float Vector1_703425E3;
               float Vector1_55FFAA23;
               float4 Color_4808C50D;
               float Vector1_1FE38482;
               float Vector1_E10F59B8;
               float4 Vector4_FF4B755C;
               float Vector1_1E9C8C1F;
               float Vector1_597CA0EC;
               float4 Vector4_7268281E;
               float Boolean_1A81DE87;
               float Boolean_5A562BB8;
               float Vector1_78608E79;
               float Vector1_5152DDBE;
               float4 Color_D7AF0984;
               float4 Color_584ABCD0;
               float Vector1_D9F91D89;
               float Vector1_3FF19332;
               float4 Color_811006DD;
               float Vector1_E0E07BB;
               float Vector1_2C7AE8EA;
               float4 Color_2901119A;
               float Vector1_6178D656;
               float Vector1_1EDA5197;
               float4 Color_B09665EF;
               float Vector1_12A795A8;
               float4 Color_9731F5AE;
               float Boolean_680D4A4D;
               float Vector1_193A1ED3;
               float Vector1_492E7F16;
               float4 Color_E1F70A85;
               float Vector1_854F1F29;
               float4 Color_5D41734B;
               float4 Color_95BA54AB;
               float Vector1_F60D8232;
               float Boolean_18010446;
               CBUFFER_END
               TEXTURE2D(_MainTex); SAMPLER(sampler_MainTex); float4 _MainTex_TexelSize;
               TEXTURE2D(Texture2D_DE92BF0); SAMPLER(samplerTexture2D_DE92BF0); float4 Texture2D_DE92BF0_TexelSize;
               TEXTURE2D(Texture2D_7EF187FF); SAMPLER(samplerTexture2D_7EF187FF); float4 Texture2D_7EF187FF_TexelSize;
               TEXTURE2D(Texture2D_81E58350); SAMPLER(samplerTexture2D_81E58350); float4 Texture2D_81E58350_TexelSize;
               TEXTURE2D(Texture2D_E19E455); SAMPLER(samplerTexture2D_E19E455); float4 Texture2D_E19E455_TexelSize;
               TEXTURE2D(Texture2D_4A0C2C73); SAMPLER(samplerTexture2D_4A0C2C73); float4 Texture2D_4A0C2C73_TexelSize;
               TEXTURE2D(Texture2D_AFFE0F8C); SAMPLER(samplerTexture2D_AFFE0F8C); float4 Texture2D_AFFE0F8C_TexelSize;
               TEXTURE2D(Texture2D_8F92EDA); SAMPLER(samplerTexture2D_8F92EDA); float4 Texture2D_8F92EDA_TexelSize;
               TEXTURE2D(Texture2D_75317E5D); SAMPLER(samplerTexture2D_75317E5D); float4 Texture2D_75317E5D_TexelSize;
               SAMPLER(_SampleTexture2D_7DE59C1B_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_D8FE27D5_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_646CEB63_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_CA86F5A3_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_D0357AA8_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_C84B153C_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_E672A4F7_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_8EF7652D_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_69FA9615_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_208A09E9_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_CD3A3C06_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_3B48CC34_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_750817E0_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_CF1E2059_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_3CA3FC67_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_4D198CD7_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_CBFA2ECD_Sampler_3_Linear_Repeat);
               SAMPLER(_SampleTexture2D_20446249_Sampler_3_Linear_Repeat);

               // Graph Functions

               // f9504c5a352d2df678f6ea5e852cd42e
               #include "Assets/Includes/CustomLighting.hlsl"

               struct Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b
               {
                   float3 WorldSpaceViewDirection;
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 Color_EE85B5ED, half Vector1_B1513F4D, half3 Vector3_4D8D716A, Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b IN, out float3 Diffuse_0, out float3 Specular_1, out float ShadowValue_2, out float3 AddLight_3)
               {
                   half4 _Property_E47F52F0_Out_0 = Color_EE85B5ED;
                   half _Property_16CA5CB6_Out_0 = Vector1_B1513F4D;
                   half3 _Property_EEAA4B84_Out_0 = Vector3_4D8D716A;
                   float3 _CustomFunction_D3E20B4_Diffuse_5;
                   float3 _CustomFunction_D3E20B4_Specular_6;
                   float _CustomFunction_D3E20B4_ShadowValue_7;
                   float3 _CustomFunction_D3E20B4_AddLight_8;
                   AdditionalLights_float((_Property_E47F52F0_Out_0.xyz), _Property_16CA5CB6_Out_0, IN.AbsoluteWorldSpacePosition, _Property_EEAA4B84_Out_0, IN.WorldSpaceViewDirection, _CustomFunction_D3E20B4_Diffuse_5, _CustomFunction_D3E20B4_Specular_6, _CustomFunction_D3E20B4_ShadowValue_7, _CustomFunction_D3E20B4_AddLight_8);
                   Diffuse_0 = _CustomFunction_D3E20B4_Diffuse_5;
                   Specular_1 = _CustomFunction_D3E20B4_Specular_6;
                   ShadowValue_2 = _CustomFunction_D3E20B4_ShadowValue_7;
                   AddLight_3 = _CustomFunction_D3E20B4_AddLight_8;
               }

               struct Bindings_GetMainLight_52012c17518825a429793d26daee4a8c
               {
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_GetMainLight_52012c17518825a429793d26daee4a8c(Bindings_GetMainLight_52012c17518825a429793d26daee4a8c IN, out half3 Direction_1, out half3 Color_2, out half DistanceAtten_3, out half ShadowAtten_4)
               {
                   half3 _CustomFunction_2BF1432_Direction_0;
                   half3 _CustomFunction_2BF1432_Color_1;
                   half _CustomFunction_2BF1432_DistanceAtten_3;
                   half _CustomFunction_2BF1432_ShadowAtten_4;
                   MainLight_half(IN.AbsoluteWorldSpacePosition, _CustomFunction_2BF1432_Direction_0, _CustomFunction_2BF1432_Color_1, _CustomFunction_2BF1432_DistanceAtten_3, _CustomFunction_2BF1432_ShadowAtten_4);
                   Direction_1 = _CustomFunction_2BF1432_Direction_0;
                   Color_2 = _CustomFunction_2BF1432_Color_1;
                   DistanceAtten_3 = _CustomFunction_2BF1432_DistanceAtten_3;
                   ShadowAtten_4 = _CustomFunction_2BF1432_ShadowAtten_4;
               }

               void Unity_Normalize_float3(float3 In, out float3 Out)
               {
                   Out = normalize(In);
               }

               void Unity_DotProduct_float3(float3 A, float3 B, out float Out)
               {
                   Out = dot(A, B);
               }

               void Unity_Multiply_float(float A, float B, out float Out)
               {
                   Out = A * B;
               }

               void Unity_Add_float(float A, float B, out float Out)
               {
                   Out = A + B;
               }

               void Unity_Clamp_float(float In, float Min, float Max, out float Out)
               {
                   Out = clamp(In, Min, Max);
               }

               void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
               {
                   Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
               }

               void Unity_FresnelEffect_float(float3 Normal, float3 ViewDir, float Power, out float Out)
               {
                   Out = pow((1.0 - saturate(dot(normalize(Normal), normalize(ViewDir)))), Power);
               }

               void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
               {
                   Out = Predicate ? True : False;
               }

               void Unity_Step_float(float Edge, float In, out float Out)
               {
                   Out = step(Edge, In);
               }

               void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
               {
                   Out = A * B;
               }

               void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
               {
                   Out = A * B;
               }

               void Unity_SampleGradient_float(Gradient Gradient, float Time, out float4 Out)
               {
                   float3 color = Gradient.colors[0].rgb;
                   [unroll]
                   for (int c = 1; c < 8; c++)
                   {
                       float colorPos = saturate((Time - Gradient.colors[c - 1].w) / (Gradient.colors[c].w - Gradient.colors[c - 1].w)) * step(c, Gradient.colorsLength - 1);
                       color = lerp(color, Gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), Gradient.type));
                   }
               #ifndef UNITY_COLORSPACE_GAMMA
                   color = SRGBToLinear(color);
               #endif
                   float alpha = Gradient.alphas[0].x;
                   [unroll]
                   for (int a = 1; a < 8; a++)
                   {
                       float alphaPos = saturate((Time - Gradient.alphas[a - 1].y) / (Gradient.alphas[a].y - Gradient.alphas[a - 1].y)) * step(a, Gradient.alphasLength - 1);
                       alpha = lerp(alpha, Gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), Gradient.type));
                   }
                   Out = float4(color, alpha);
               }

               void Unity_Add_float3(float3 A, float3 B, out float3 Out)
               {
                   Out = A + B;
               }

               void Unity_Remap_float3(float3 In, float2 InMinMax, float2 OutMinMax, out float3 Out)
               {
                   Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
               }

               void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
               {
                   Out = UV * Tiling + Offset;
               }

               struct Bindings_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d
               {
                   float3 WorldSpaceNormal;
                   float3 WorldSpaceViewDirection;
                   float3 AbsoluteWorldSpacePosition;
                   half4 uv1;
               };

               void SG_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d(TEXTURE2D_PARAM(Texture2D_A16E8BE7, samplerTexture2D_A16E8BE7), float4 Texture2D_A16E8BE7_TexelSize, float2 Vector2_C95960BD, Bindings_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d IN, out float OutVector4_1)
               {
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_70031602;
                   _GetMainLight_70031602.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_70031602_Direction_1;
                   half3 _GetMainLight_70031602_Color_2;
                   half _GetMainLight_70031602_DistanceAtten_3;
                   half _GetMainLight_70031602_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_70031602, _GetMainLight_70031602_Direction_1, _GetMainLight_70031602_Color_2, _GetMainLight_70031602_DistanceAtten_3, _GetMainLight_70031602_ShadowAtten_4);
                   float _DotProduct_1F463656_Out_2;
                   Unity_DotProduct_float3(_GetMainLight_70031602_Direction_1, IN.WorldSpaceNormal, _DotProduct_1F463656_Out_2);
                   float _Multiply_E9FCA753_Out_2;
                   Unity_Multiply_float(_DotProduct_1F463656_Out_2, 0.5, _Multiply_E9FCA753_Out_2);
                   float _Add_E2120CD_Out_2;
                   Unity_Add_float(_Multiply_E9FCA753_Out_2, 0.5, _Add_E2120CD_Out_2);
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_7184F7A7;
                   _GetMainLight_7184F7A7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_7184F7A7_Direction_1;
                   half3 _GetMainLight_7184F7A7_Color_2;
                   half _GetMainLight_7184F7A7_DistanceAtten_3;
                   half _GetMainLight_7184F7A7_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_7184F7A7, _GetMainLight_7184F7A7_Direction_1, _GetMainLight_7184F7A7_Color_2, _GetMainLight_7184F7A7_DistanceAtten_3, _GetMainLight_7184F7A7_ShadowAtten_4);
                   float3 _Add_579E7C2B_Out_2;
                   Unity_Add_float3(_GetMainLight_7184F7A7_Direction_1, IN.WorldSpaceViewDirection, _Add_579E7C2B_Out_2);
                   float3 _Normalize_31DF38BD_Out_1;
                   Unity_Normalize_float3(_Add_579E7C2B_Out_2, _Normalize_31DF38BD_Out_1);
                   float2 _Property_D305CF84_Out_0 = Vector2_C95960BD;
                   float3 _Remap_DAEAE0AC_Out_3;
                   Unity_Remap_float3(_Normalize_31DF38BD_Out_1, float2 (-1, 1), _Property_D305CF84_Out_0, _Remap_DAEAE0AC_Out_3);
                   float _Split_1E238243_R_1 = _Remap_DAEAE0AC_Out_3[0];
                   float _Split_1E238243_G_2 = _Remap_DAEAE0AC_Out_3[1];
                   float _Split_1E238243_B_3 = _Remap_DAEAE0AC_Out_3[2];
                   float _Split_1E238243_A_4 = 0;
                   float2 _Vector2_EA69B85C_Out_0 = float2(_Split_1E238243_R_1, _Split_1E238243_G_2);
                   float2 _TilingAndOffset_FFA0D934_Out_3;
                   Unity_TilingAndOffset_float(IN.uv1.xy, float2 (1, 1), _Vector2_EA69B85C_Out_0, _TilingAndOffset_FFA0D934_Out_3);
                   float4 _SampleTexture2D_7DE59C1B_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_A16E8BE7, samplerTexture2D_A16E8BE7, _TilingAndOffset_FFA0D934_Out_3);
                   float _SampleTexture2D_7DE59C1B_R_4 = _SampleTexture2D_7DE59C1B_RGBA_0.r;
                   float _SampleTexture2D_7DE59C1B_G_5 = _SampleTexture2D_7DE59C1B_RGBA_0.g;
                   float _SampleTexture2D_7DE59C1B_B_6 = _SampleTexture2D_7DE59C1B_RGBA_0.b;
                   float _SampleTexture2D_7DE59C1B_A_7 = _SampleTexture2D_7DE59C1B_RGBA_0.a;
                   float _Multiply_39E27F69_Out_2;
                   Unity_Multiply_float(_Add_E2120CD_Out_2, _SampleTexture2D_7DE59C1B_R_4, _Multiply_39E27F69_Out_2);
                   OutVector4_1 = _Multiply_39E27F69_Out_2;
               }

               struct Bindings_Specular_ec205ff2dfef6114f92e2fda01c553db
               {
                   float3 WorldSpaceNormal;
                   float3 WorldSpaceViewDirection;
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_Specular_ec205ff2dfef6114f92e2fda01c553db(float3 Vector3_FEF0CC6F, Bindings_Specular_ec205ff2dfef6114f92e2fda01c553db IN, out float SpecularValue_1)
               {
                   float3 _Normalize_C28C7E70_Out_1;
                   Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_C28C7E70_Out_1);
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_33EDCC65;
                   _GetMainLight_33EDCC65.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_33EDCC65_Direction_1;
                   half3 _GetMainLight_33EDCC65_Color_2;
                   half _GetMainLight_33EDCC65_DistanceAtten_3;
                   half _GetMainLight_33EDCC65_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_33EDCC65, _GetMainLight_33EDCC65_Direction_1, _GetMainLight_33EDCC65_Color_2, _GetMainLight_33EDCC65_DistanceAtten_3, _GetMainLight_33EDCC65_ShadowAtten_4);
                   float3 _Property_BA80EC1A_Out_0 = Vector3_FEF0CC6F;
                   float3 _Add_B9E1BB9B_Out_2;
                   Unity_Add_float3(_GetMainLight_33EDCC65_Direction_1, _Property_BA80EC1A_Out_0, _Add_B9E1BB9B_Out_2);
                   float3 _Add_42E2272B_Out_2;
                   Unity_Add_float3(IN.WorldSpaceViewDirection, _Add_B9E1BB9B_Out_2, _Add_42E2272B_Out_2);
                   float3 _Normalize_5878BC95_Out_1;
                   Unity_Normalize_float3(_Add_42E2272B_Out_2, _Normalize_5878BC95_Out_1);
                   float _DotProduct_E5BEC886_Out_2;
                   Unity_DotProduct_float3(_Normalize_C28C7E70_Out_1, _Normalize_5878BC95_Out_1, _DotProduct_E5BEC886_Out_2);
                   SpecularValue_1 = _DotProduct_E5BEC886_Out_2;
               }

               void Unity_Power_float(float A, float B, out float Out)
               {
                   Out = pow(A, B);
               }

               void Unity_ColorspaceConversion_RGB_HSV_float(float3 In, out float3 Out)
               {
                   float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                   float4 P = lerp(float4(In.bg, K.wz), float4(In.gb, K.xy), step(In.b, In.g));
                   float4 Q = lerp(float4(P.xyw, In.r), float4(In.r, P.yzx), step(P.x, In.r));
                   float D = Q.x - min(Q.w, Q.y);
                   float  E = 1e-10;
                   Out = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
               }

               void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
               {
                   Out = clamp(In, Min, Max);
               }

               void Unity_Lerp_float(float A, float B, float T, out float Out)
               {
                   Out = lerp(A, B, T);
               }

               struct Bindings_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f
               {
                   float3 WorldSpaceViewDirection;
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f(Bindings_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f IN, out float4 HalfDir_1)
               {
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_1C03764F;
                   _GetMainLight_1C03764F.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_1C03764F_Direction_1;
                   half3 _GetMainLight_1C03764F_Color_2;
                   half _GetMainLight_1C03764F_DistanceAtten_3;
                   half _GetMainLight_1C03764F_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_1C03764F, _GetMainLight_1C03764F_Direction_1, _GetMainLight_1C03764F_Color_2, _GetMainLight_1C03764F_DistanceAtten_3, _GetMainLight_1C03764F_ShadowAtten_4);
                   float3 _Add_DC286F2D_Out_2;
                   Unity_Add_float3(_GetMainLight_1C03764F_Direction_1, IN.WorldSpaceViewDirection, _Add_DC286F2D_Out_2);
                   HalfDir_1 = (float4(_Add_DC286F2D_Out_2, 1.0));
               }

               void Unity_Normalize_float4(float4 In, out float4 Out)
               {
                   Out = normalize(In);
               }

               struct Bindings_LdotH_0967663e14ef783428ddf34a3cb8dc75
               {
                   float3 WorldSpaceViewDirection;
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_LdotH_0967663e14ef783428ddf34a3cb8dc75(Bindings_LdotH_0967663e14ef783428ddf34a3cb8dc75 IN, out float LdotH_1)
               {
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_C7C38609;
                   _GetMainLight_C7C38609.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_C7C38609_Direction_1;
                   half3 _GetMainLight_C7C38609_Color_2;
                   half _GetMainLight_C7C38609_DistanceAtten_3;
                   half _GetMainLight_C7C38609_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_C7C38609, _GetMainLight_C7C38609_Direction_1, _GetMainLight_C7C38609_Color_2, _GetMainLight_C7C38609_DistanceAtten_3, _GetMainLight_C7C38609_ShadowAtten_4);
                   float3 _Normalize_576C5C2C_Out_1;
                   Unity_Normalize_float3(_GetMainLight_C7C38609_Direction_1, _Normalize_576C5C2C_Out_1);
                   Bindings_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f _HalfDir_3FB32179;
                   _HalfDir_3FB32179.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _HalfDir_3FB32179.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float4 _HalfDir_3FB32179_HalfDir_1;
                   SG_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f(_HalfDir_3FB32179, _HalfDir_3FB32179_HalfDir_1);
                   float4 _Normalize_241222A3_Out_1;
                   Unity_Normalize_float4(_HalfDir_3FB32179_HalfDir_1, _Normalize_241222A3_Out_1);
                   float _DotProduct_83436721_Out_2;
                   Unity_DotProduct_float3(_Normalize_576C5C2C_Out_1, (_Normalize_241222A3_Out_1.xyz), _DotProduct_83436721_Out_2);
                   float _Clamp_F4950E2_Out_3;
                   Unity_Clamp_float(_DotProduct_83436721_Out_2, 0, 1, _Clamp_F4950E2_Out_3);
                   LdotH_1 = _Clamp_F4950E2_Out_3;
               }

               void Unity_Subtract_float(float A, float B, out float Out)
               {
                   Out = A - B;
               }

               struct Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4
               {
                   float3 WorldSpaceNormal;
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_NdotL_514b9649e0886bc47bd9ba2f2e977bc4(Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4 IN, out float NdotL_1)
               {
                   float3 _Normalize_E76711A8_Out_1;
                   Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_E76711A8_Out_1);
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_2AD5B7F4;
                   _GetMainLight_2AD5B7F4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_2AD5B7F4_Direction_1;
                   half3 _GetMainLight_2AD5B7F4_Color_2;
                   half _GetMainLight_2AD5B7F4_DistanceAtten_3;
                   half _GetMainLight_2AD5B7F4_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_2AD5B7F4, _GetMainLight_2AD5B7F4_Direction_1, _GetMainLight_2AD5B7F4_Color_2, _GetMainLight_2AD5B7F4_DistanceAtten_3, _GetMainLight_2AD5B7F4_ShadowAtten_4);
                   float3 _Normalize_DE93A0D8_Out_1;
                   Unity_Normalize_float3(_GetMainLight_2AD5B7F4_Direction_1, _Normalize_DE93A0D8_Out_1);
                   float _DotProduct_CAE96C38_Out_2;
                   Unity_DotProduct_float3(_Normalize_E76711A8_Out_1, _Normalize_DE93A0D8_Out_1, _DotProduct_CAE96C38_Out_2);
                   float _Clamp_5F57126A_Out_3;
                   Unity_Clamp_float(_DotProduct_CAE96C38_Out_2, 0, 1, _Clamp_5F57126A_Out_3);
                   NdotL_1 = _Clamp_5F57126A_Out_3;
               }

               struct Bindings_NdotV_0491175c64680f64aa7b54a8f16c9c0a
               {
                   float3 WorldSpaceNormal;
                   float3 WorldSpaceViewDirection;
               };

               void SG_NdotV_0491175c64680f64aa7b54a8f16c9c0a(Bindings_NdotV_0491175c64680f64aa7b54a8f16c9c0a IN, out float NdotV_1)
               {
                   float3 _Normalize_7BFA9953_Out_1;
                   Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_7BFA9953_Out_1);
                   float3 _Normalize_505E2549_Out_1;
                   Unity_Normalize_float3(IN.WorldSpaceViewDirection, _Normalize_505E2549_Out_1);
                   float _DotProduct_4FD3EDE1_Out_2;
                   Unity_DotProduct_float3(_Normalize_7BFA9953_Out_1, _Normalize_505E2549_Out_1, _DotProduct_4FD3EDE1_Out_2);
                   float _Clamp_3EE21757_Out_3;
                   Unity_Clamp_float(_DotProduct_4FD3EDE1_Out_2, 0, 1, _Clamp_3EE21757_Out_3);
                   NdotV_1 = _Clamp_3EE21757_Out_3;
               }

               void Unity_Divide_float(float A, float B, out float Out)
               {
                   Out = A / B;
               }

               struct Bindings_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c
               {
                   float3 WorldSpaceNormal;
                   float3 WorldSpaceViewDirection;
                   float3 AbsoluteWorldSpacePosition;
               };

               void SG_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c(float Vector1_91BF09CC, Bindings_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c IN, out float4 Diffuse_1)
               {
                   float _Property_8F695FD3_Out_0 = Vector1_91BF09CC;
                   float _Lerp_24F0F458_Out_3;
                   Unity_Lerp_float(0, 0.5, _Property_8F695FD3_Out_0, _Lerp_24F0F458_Out_3);
                   Bindings_LdotH_0967663e14ef783428ddf34a3cb8dc75 _LdotH_9327C3D7;
                   _LdotH_9327C3D7.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _LdotH_9327C3D7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float _LdotH_9327C3D7_LdotH_1;
                   SG_LdotH_0967663e14ef783428ddf34a3cb8dc75(_LdotH_9327C3D7, _LdotH_9327C3D7_LdotH_1);
                   float _Multiply_7234BA6_Out_2;
                   Unity_Multiply_float(_LdotH_9327C3D7_LdotH_1, _LdotH_9327C3D7_LdotH_1, _Multiply_7234BA6_Out_2);
                   float _Multiply_6D9FE265_Out_2;
                   Unity_Multiply_float(_Multiply_7234BA6_Out_2, 2, _Multiply_6D9FE265_Out_2);
                   float _Multiply_AFAF8C7E_Out_2;
                   Unity_Multiply_float(_Property_8F695FD3_Out_0, _Multiply_6D9FE265_Out_2, _Multiply_AFAF8C7E_Out_2);
                   float _Add_B51DBB9D_Out_2;
                   Unity_Add_float(_Lerp_24F0F458_Out_3, _Multiply_AFAF8C7E_Out_2, _Add_B51DBB9D_Out_2);
                   float _Subtract_7A912419_Out_2;
                   Unity_Subtract_float(_Add_B51DBB9D_Out_2, 1, _Subtract_7A912419_Out_2);
                   Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4 _NdotL_66B34D04;
                   _NdotL_66B34D04.WorldSpaceNormal = IN.WorldSpaceNormal;
                   _NdotL_66B34D04.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float _NdotL_66B34D04_NdotL_1;
                   SG_NdotL_514b9649e0886bc47bd9ba2f2e977bc4(_NdotL_66B34D04, _NdotL_66B34D04_NdotL_1);
                   float _Subtract_F86BB22C_Out_2;
                   Unity_Subtract_float(1, _NdotL_66B34D04_NdotL_1, _Subtract_F86BB22C_Out_2);
                   float _Power_F54B92ED_Out_2;
                   Unity_Power_float(_Subtract_F86BB22C_Out_2, 5, _Power_F54B92ED_Out_2);
                   float _Multiply_6A61109_Out_2;
                   Unity_Multiply_float(_Subtract_7A912419_Out_2, _Power_F54B92ED_Out_2, _Multiply_6A61109_Out_2);
                   float _Add_B6BBFAED_Out_2;
                   Unity_Add_float(_Multiply_6A61109_Out_2, 1, _Add_B6BBFAED_Out_2);
                   Bindings_NdotV_0491175c64680f64aa7b54a8f16c9c0a _NdotV_20986529;
                   _NdotV_20986529.WorldSpaceNormal = IN.WorldSpaceNormal;
                   _NdotV_20986529.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   float _NdotV_20986529_NdotV_1;
                   SG_NdotV_0491175c64680f64aa7b54a8f16c9c0a(_NdotV_20986529, _NdotV_20986529_NdotV_1);
                   float _Subtract_9F9C4CA4_Out_2;
                   Unity_Subtract_float(1, _NdotV_20986529_NdotV_1, _Subtract_9F9C4CA4_Out_2);
                   float _Power_8191087F_Out_2;
                   Unity_Power_float(_Subtract_9F9C4CA4_Out_2, 5, _Power_8191087F_Out_2);
                   float _Multiply_B701DAF5_Out_2;
                   Unity_Multiply_float(_Subtract_7A912419_Out_2, _Power_8191087F_Out_2, _Multiply_B701DAF5_Out_2);
                   float _Add_745413EB_Out_2;
                   Unity_Add_float(_Multiply_B701DAF5_Out_2, 1, _Add_745413EB_Out_2);
                   float _Multiply_B35CD4CE_Out_2;
                   Unity_Multiply_float(_Add_B6BBFAED_Out_2, _Add_745413EB_Out_2, _Multiply_B35CD4CE_Out_2);
                   float _Divide_FA81D92E_Out_2;
                   Unity_Divide_float(1, 1.51, _Divide_FA81D92E_Out_2);
                   float _Lerp_2F892A57_Out_3;
                   Unity_Lerp_float(1, _Divide_FA81D92E_Out_2, _Property_8F695FD3_Out_0, _Lerp_2F892A57_Out_3);
                   float _Multiply_6EB67BC4_Out_2;
                   Unity_Multiply_float(_Multiply_B35CD4CE_Out_2, _Lerp_2F892A57_Out_3, _Multiply_6EB67BC4_Out_2);
                   float _Divide_7942D41B_Out_2;
                   Unity_Divide_float(_Multiply_6EB67BC4_Out_2, 3.14157, _Divide_7942D41B_Out_2);
                   Diffuse_1 = (_Divide_7942D41B_Out_2.xxxx);
               }

               void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
               {
                   Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
               }

               void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
               {
                   Out = normalize(float3(A.rg + B.rg, A.b * B.b));
               }

               void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
               {
                   Out = Predicate ? True : False;
               }

               void Unity_Clamp_float4(float4 In, float4 Min, float4 Max, out float4 Out)
               {
                   Out = clamp(In, Min, Max);
               }

               void Unity_OneMinus_float(float In, out float Out)
               {
                   Out = 1 - In;
               }

               void Unity_Add_float4(float4 A, float4 B, out float4 Out)
               {
                   Out = A + B;
               }

               void Unity_Blend_Multiply_float4(float4 Base, float4 Blend, out float4 Out, float Opacity)
               {
                   Out = Base * Blend;
                   Out = lerp(Base, Out, Opacity);
               }

               void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
               {
                   Out = A * B;
               }

               void Unity_Add_float2(float2 A, float2 B, out float2 Out)
               {
                   Out = A + B;
               }

               void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
               {
                   Out = Predicate ? True : False;
               }

               void Unity_Rotate_Radians_float(float2 UV, float2 Center, float Rotation, out float2 Out)
               {
                   //rotation matrix
                   UV -= Center;
                   float s = sin(Rotation);
                   float c = cos(Rotation);

                   //center rotation matrix
                   float2x2 rMatrix = float2x2(c, -s, s, c);
                   rMatrix *= 0.5;
                   rMatrix += 0.5;
                   rMatrix = rMatrix * 2 - 1;

                   //multiply the UVs by the rotation matrix
                   UV.xy = mul(UV.xy, rMatrix);
                   UV += Center;

                   Out = UV;
               }

               void Unity_Blend_Screen_float4(float4 Base, float4 Blend, out float4 Out, float Opacity)
               {
                   Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
                   Out = lerp(Base, Out, Opacity);
               }


               inline float Unity_SimpleNoise_RandomValue_float(float2 uv)
               {
                   return frac(sin(dot(uv, float2(12.9898, 78.233))) * 43758.5453);
               }

               inline float Unity_SimpleNnoise_Interpolate_float(float a, float b, float t)
               {
                   return (1.0 - t) * a + (t * b);
               }


               inline float Unity_SimpleNoise_ValueNoise_float(float2 uv)
               {
                   float2 i = floor(uv);
                   float2 f = frac(uv);
                   f = f * f * (3.0 - 2.0 * f);

                   uv = abs(frac(uv) - 0.5);
                   float2 c0 = i + float2(0.0, 0.0);
                   float2 c1 = i + float2(1.0, 0.0);
                   float2 c2 = i + float2(0.0, 1.0);
                   float2 c3 = i + float2(1.0, 1.0);
                   float r0 = Unity_SimpleNoise_RandomValue_float(c0);
                   float r1 = Unity_SimpleNoise_RandomValue_float(c1);
                   float r2 = Unity_SimpleNoise_RandomValue_float(c2);
                   float r3 = Unity_SimpleNoise_RandomValue_float(c3);

                   float bottomOfGrid = Unity_SimpleNnoise_Interpolate_float(r0, r1, f.x);
                   float topOfGrid = Unity_SimpleNnoise_Interpolate_float(r2, r3, f.x);
                   float t = Unity_SimpleNnoise_Interpolate_float(bottomOfGrid, topOfGrid, f.y);
                   return t;
               }
               void Unity_SimpleNoise_float(float2 UV, float Scale, out float Out)
               {
                   float t = 0.0;

                   float freq = pow(2.0, float(0));
                   float amp = pow(0.5, float(3 - 0));
                   t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

                   freq = pow(2.0, float(1));
                   amp = pow(0.5, float(3 - 1));
                   t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

                   freq = pow(2.0, float(2));
                   amp = pow(0.5, float(3 - 2));
                   t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

                   Out = t;
               }

               void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
               {
                   Out = lerp(A, B, T);
               }

               void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
               {
                   Out = lerp(A, B, T);
               }

               void Unity_CrossProduct_float(float3 A, float3 B, out float3 Out)
               {
                   Out = cross(A, B);
               }

               void Unity_Arctangent2_float3(float3 A, float3 B, out float3 Out)
               {
                   Out = atan2(A, B);
               }

               void Unity_Length_float(float In, out float Out)
               {
                   Out = length(In);
               }

               // Graph Vertex
               // GraphVertex: <None>

               // Graph Pixel
               struct SurfaceDescriptionInputs
               {
                   float3 WorldSpaceNormal;
                   float3 TangentSpaceNormal;
                   float3 WorldSpaceViewDirection;
                   float3 WorldSpacePosition;
                   float3 AbsoluteWorldSpacePosition;
                   float4 ScreenPosition;
                   float4 uv0;
                   float4 uv1;
                   float4 uv2;
                   float4 VertexColor;
               };

               struct SurfaceDescription
               {
                   float3 Albedo;
                   float3 Normal;
                   float3 Emission;
                   float Metallic;
                   float Smoothness;
                   float Occlusion;
                   float Alpha;
                   float AlphaClipThreshold;
               };

               SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
               {
                   SurfaceDescription surface = (SurfaceDescription)0;
                   Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b _CalculateAdditionalLights_DE348527;
                   _CalculateAdditionalLights_DE348527.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _CalculateAdditionalLights_DE348527.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float3 _CalculateAdditionalLights_DE348527_Diffuse_0;
                   float3 _CalculateAdditionalLights_DE348527_Specular_1;
                   float _CalculateAdditionalLights_DE348527_ShadowValue_2;
                   float3 _CalculateAdditionalLights_DE348527_AddLight_3;
                   SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 (0, 0, 0, 0), 0, half3 (0, 0, 0), _CalculateAdditionalLights_DE348527, _CalculateAdditionalLights_DE348527_Diffuse_0, _CalculateAdditionalLights_DE348527_Specular_1, _CalculateAdditionalLights_DE348527_ShadowValue_2, _CalculateAdditionalLights_DE348527_AddLight_3);
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_3CDE11A1;
                   _GetMainLight_3CDE11A1.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_3CDE11A1_Direction_1;
                   half3 _GetMainLight_3CDE11A1_Color_2;
                   half _GetMainLight_3CDE11A1_DistanceAtten_3;
                   half _GetMainLight_3CDE11A1_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_3CDE11A1, _GetMainLight_3CDE11A1_Direction_1, _GetMainLight_3CDE11A1_Color_2, _GetMainLight_3CDE11A1_DistanceAtten_3, _GetMainLight_3CDE11A1_ShadowAtten_4);
                   float3 _Normalize_42E51F1E_Out_1;
                   Unity_Normalize_float3(_GetMainLight_3CDE11A1_Direction_1, _Normalize_42E51F1E_Out_1);
                   float3 _Normalize_A07F6FFA_Out_1;
                   Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_A07F6FFA_Out_1);
                   float _DotProduct_A1806053_Out_2;
                   Unity_DotProduct_float3(_Normalize_42E51F1E_Out_1, _Normalize_A07F6FFA_Out_1, _DotProduct_A1806053_Out_2);
                   float _Multiply_98EDC26D_Out_2;
                   Unity_Multiply_float(_DotProduct_A1806053_Out_2, 0.5, _Multiply_98EDC26D_Out_2);
                   float _Add_591BAC8B_Out_2;
                   Unity_Add_float(_Multiply_98EDC26D_Out_2, 0.5, _Add_591BAC8B_Out_2);
                   float _Add_C8D7186B_Out_2;
                   Unity_Add_float(_CalculateAdditionalLights_DE348527_ShadowValue_2, _Add_591BAC8B_Out_2, _Add_C8D7186B_Out_2);
                   float _Clamp_9C3D662_Out_3;
                   Unity_Clamp_float(_Add_C8D7186B_Out_2, 0, 1, _Clamp_9C3D662_Out_3);
                   float _Property_68A12F69_Out_0 = Vector1_6178D656;
                   float _Property_1F447E91_Out_0 = Vector1_1EDA5197;
                   float _Remap_5EBC1AB8_Out_3;
                   Unity_Remap_float(_Property_1F447E91_Out_0, float2 (0, 1), float2 (20, 1), _Remap_5EBC1AB8_Out_3);
                   float _FresnelEffect_E58634BA_Out_3;
                   Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Remap_5EBC1AB8_Out_3, _FresnelEffect_E58634BA_Out_3);
                   float _Property_994CAA9F_Out_0 = Boolean_BD2F928D;
                   float4 _Property_629EB20E_Out_0 = Vector4_6445BC47;
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_5FA42A07;
                   _GetMainLight_5FA42A07.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_5FA42A07_Direction_1;
                   half3 _GetMainLight_5FA42A07_Color_2;
                   half _GetMainLight_5FA42A07_DistanceAtten_3;
                   half _GetMainLight_5FA42A07_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_5FA42A07, _GetMainLight_5FA42A07_Direction_1, _GetMainLight_5FA42A07_Color_2, _GetMainLight_5FA42A07_DistanceAtten_3, _GetMainLight_5FA42A07_ShadowAtten_4);
                   float3 _Branch_85DD9287_Out_3;
                   Unity_Branch_float3(_Property_994CAA9F_Out_0, (_Property_629EB20E_Out_0.xyz), _GetMainLight_5FA42A07_Direction_1, _Branch_85DD9287_Out_3);
                   float _DotProduct_D359F547_Out_2;
                   Unity_DotProduct_float3(_Branch_85DD9287_Out_3, IN.WorldSpaceNormal, _DotProduct_D359F547_Out_2);
                   float _Multiply_C1318770_Out_2;
                   Unity_Multiply_float(_DotProduct_D359F547_Out_2, 0.5, _Multiply_C1318770_Out_2);
                   float _Add_D860EA94_Out_2;
                   Unity_Add_float(_Multiply_C1318770_Out_2, 0.5, _Add_D860EA94_Out_2);
                   float _Multiply_DD7E99B5_Out_2;
                   Unity_Multiply_float(_FresnelEffect_E58634BA_Out_3, _Add_D860EA94_Out_2, _Multiply_DD7E99B5_Out_2);
                   float _Step_B28362F5_Out_2;
                   Unity_Step_float(_Property_68A12F69_Out_0, _Multiply_DD7E99B5_Out_2, _Step_B28362F5_Out_2);
                   float4 _Property_675881D2_Out_0 = Color_B09665EF;
                   float4 _Multiply_A768ECE5_Out_2;
                   Unity_Multiply_float((_Step_B28362F5_Out_2.xxxx), _Property_675881D2_Out_0, _Multiply_A768ECE5_Out_2);
                   float4 _Multiply_6CDBCFC_Out_2;
                   Unity_Multiply_float((_Clamp_9C3D662_Out_3.xxxx), _Multiply_A768ECE5_Out_2, _Multiply_6CDBCFC_Out_2);
                   float _Property_5E93A642_Out_0 = Vector1_12A795A8;
                   float4 _Multiply_66C1A223_Out_2;
                   Unity_Multiply_float(_Multiply_6CDBCFC_Out_2, (_Property_5E93A642_Out_0.xxxx), _Multiply_66C1A223_Out_2);
                   float _Property_49A8F707_Out_0 = Boolean_680D4A4D;
                   float3 _Branch_1783B76B_Out_3;
                   Unity_Branch_float3(_Property_49A8F707_Out_0, IN.WorldSpaceNormal, float3(0, 1, 0), _Branch_1783B76B_Out_3);
                   Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b _CalculateAdditionalLights_4C9B04CD;
                   _CalculateAdditionalLights_4C9B04CD.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _CalculateAdditionalLights_4C9B04CD.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float3 _CalculateAdditionalLights_4C9B04CD_Diffuse_0;
                   float3 _CalculateAdditionalLights_4C9B04CD_Specular_1;
                   float _CalculateAdditionalLights_4C9B04CD_ShadowValue_2;
                   float3 _CalculateAdditionalLights_4C9B04CD_AddLight_3;
                   SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 (0, 0, 0, 0), 0, _Branch_1783B76B_Out_3, _CalculateAdditionalLights_4C9B04CD, _CalculateAdditionalLights_4C9B04CD_Diffuse_0, _CalculateAdditionalLights_4C9B04CD_Specular_1, _CalculateAdditionalLights_4C9B04CD_ShadowValue_2, _CalculateAdditionalLights_4C9B04CD_AddLight_3);
                   float4 _Property_3732CCD4_Out_0 = Color_4808C50D;
                   Gradient _Gradient_5F2A0A5B_Out_0 = NewGradient(0, 2, 2, float4(1, 1, 1, 0),float4(1, 1, 1, 1),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0), float2(1, 0),float2(1, 1),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0));
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_BDB0AFB3;
                   _GetMainLight_BDB0AFB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_BDB0AFB3_Direction_1;
                   half3 _GetMainLight_BDB0AFB3_Color_2;
                   half _GetMainLight_BDB0AFB3_DistanceAtten_3;
                   half _GetMainLight_BDB0AFB3_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_BDB0AFB3, _GetMainLight_BDB0AFB3_Direction_1, _GetMainLight_BDB0AFB3_Color_2, _GetMainLight_BDB0AFB3_DistanceAtten_3, _GetMainLight_BDB0AFB3_ShadowAtten_4);
                   float _Vector1_2E45A686_Out_0 = -1;
                   float3 _Multiply_B36285C6_Out_2;
                   Unity_Multiply_float(_GetMainLight_BDB0AFB3_Direction_1, (_Vector1_2E45A686_Out_0.xxx), _Multiply_B36285C6_Out_2);
                   float _DotProduct_2D9940A3_Out_2;
                   Unity_DotProduct_float3(IN.WorldSpaceViewDirection, _Multiply_B36285C6_Out_2, _DotProduct_2D9940A3_Out_2);
                   float _Clamp_F3D18B04_Out_3;
                   Unity_Clamp_float(_DotProduct_2D9940A3_Out_2, 0, 1, _Clamp_F3D18B04_Out_3);
                   float _Property_FA95AC14_Out_0 = Vector1_1FE38482;
                   float _FresnelEffect_8F18321E_Out_3;
                   Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_FA95AC14_Out_0, _FresnelEffect_8F18321E_Out_3);
                   float _Multiply_86496316_Out_2;
                   Unity_Multiply_float(_Clamp_F3D18B04_Out_3, _FresnelEffect_8F18321E_Out_3, _Multiply_86496316_Out_2);
                   float _DotProduct_2D6A498_Out_2;
                   Unity_DotProduct_float3(IN.WorldSpaceNormal, _GetMainLight_BDB0AFB3_Direction_1, _DotProduct_2D6A498_Out_2);
                   float _Multiply_286E4F93_Out_2;
                   Unity_Multiply_float(_DotProduct_2D6A498_Out_2, 0.5, _Multiply_286E4F93_Out_2);
                   float _Add_8A831AAC_Out_2;
                   Unity_Add_float(_Multiply_286E4F93_Out_2, 0.5, _Add_8A831AAC_Out_2);
                   float _Multiply_63E70A49_Out_2;
                   Unity_Multiply_float(_Multiply_86496316_Out_2, _Add_8A831AAC_Out_2, _Multiply_63E70A49_Out_2);
                   float _Step_CC7CE998_Out_2;
                   Unity_Step_float(0.7, _GetMainLight_BDB0AFB3_ShadowAtten_4, _Step_CC7CE998_Out_2);
                   float _Multiply_153A89F5_Out_2;
                   Unity_Multiply_float(_Multiply_63E70A49_Out_2, _Step_CC7CE998_Out_2, _Multiply_153A89F5_Out_2);
                   float4 _SampleGradient_F4287D69_Out_2;
                   Unity_SampleGradient_float(_Gradient_5F2A0A5B_Out_0, _Multiply_153A89F5_Out_2, _SampleGradient_F4287D69_Out_2);
                   float4 _Multiply_FB28F3BA_Out_2;
                   Unity_Multiply_float(_Property_3732CCD4_Out_0, _SampleGradient_F4287D69_Out_2, _Multiply_FB28F3BA_Out_2);
                   float4 _Property_9E496C1F_Out_0 = Color_2901119A;
                   float _Property_3EF4D2A9_Out_0 = Boolean_C67EB6EB;
                   float _Split_FE680A83_R_1 = IN.VertexColor[0];
                   float _Split_FE680A83_G_2 = IN.VertexColor[1];
                   float _Split_FE680A83_B_3 = IN.VertexColor[2];
                   float _Split_FE680A83_A_4 = IN.VertexColor[3];
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_C8BF5F53;
                   _GetMainLight_C8BF5F53.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_C8BF5F53_Direction_1;
                   half3 _GetMainLight_C8BF5F53_Color_2;
                   half _GetMainLight_C8BF5F53_DistanceAtten_3;
                   half _GetMainLight_C8BF5F53_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_C8BF5F53, _GetMainLight_C8BF5F53_Direction_1, _GetMainLight_C8BF5F53_Color_2, _GetMainLight_C8BF5F53_DistanceAtten_3, _GetMainLight_C8BF5F53_ShadowAtten_4);
                   float3 _Add_168961AA_Out_2;
                   Unity_Add_float3(_GetMainLight_C8BF5F53_Direction_1, IN.WorldSpaceViewDirection, _Add_168961AA_Out_2);
                   float3 _Normalize_71C13912_Out_1;
                   Unity_Normalize_float3(_Add_168961AA_Out_2, _Normalize_71C13912_Out_1);
                   float _Split_397F50B_R_1 = _Normalize_71C13912_Out_1[0];
                   float _Split_397F50B_G_2 = _Normalize_71C13912_Out_1[1];
                   float _Split_397F50B_B_3 = _Normalize_71C13912_Out_1[2];
                   float _Split_397F50B_A_4 = 0;
                   float _Remap_54F39885_Out_3;
                   Unity_Remap_float(_Split_397F50B_R_1, float2 (-1, 1), float2 (0, 0), _Remap_54F39885_Out_3);
                   float _Remap_F850BC9E_Out_3;
                   Unity_Remap_float(_Split_397F50B_G_2, float2 (-1, 1), float2 (-0.015, 0.015), _Remap_F850BC9E_Out_3);
                   float2 _Vector2_DE21F35B_Out_0 = float2(_Remap_54F39885_Out_3, _Remap_F850BC9E_Out_3);
                   Bindings_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d _HairSpecularOffset_15D636D6;
                   _HairSpecularOffset_15D636D6.WorldSpaceNormal = IN.WorldSpaceNormal;
                   _HairSpecularOffset_15D636D6.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _HairSpecularOffset_15D636D6.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   _HairSpecularOffset_15D636D6.uv1 = IN.uv1;
                   float _HairSpecularOffset_15D636D6_OutVector4_1;
                   SG_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d(TEXTURE2D_ARGS(Texture2D_E19E455, samplerTexture2D_E19E455), Texture2D_E19E455_TexelSize, _Vector2_DE21F35B_Out_0, _HairSpecularOffset_15D636D6, _HairSpecularOffset_15D636D6_OutVector4_1);
                   float4 _Property_A43E8711_Out_0 = Color_D106E8A;
                   float4 _Multiply_B7EB0BBA_Out_2;
                   Unity_Multiply_float((_HairSpecularOffset_15D636D6_OutVector4_1.xxxx), _Property_A43E8711_Out_0, _Multiply_B7EB0BBA_Out_2);
                   Bindings_Specular_ec205ff2dfef6114f92e2fda01c553db _Specular_F90232C4;
                   _Specular_F90232C4.WorldSpaceNormal = IN.WorldSpaceNormal;
                   _Specular_F90232C4.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _Specular_F90232C4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float _Specular_F90232C4_SpecularValue_1;
                   SG_Specular_ec205ff2dfef6114f92e2fda01c553db(float3 (0, 0, 0), _Specular_F90232C4, _Specular_F90232C4_SpecularValue_1);
                   float4 _SampleTexture2D_D8FE27D5_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_DE92BF0, samplerTexture2D_DE92BF0, IN.uv0.xy);
                   float _SampleTexture2D_D8FE27D5_R_4 = _SampleTexture2D_D8FE27D5_RGBA_0.r;
                   float _SampleTexture2D_D8FE27D5_G_5 = _SampleTexture2D_D8FE27D5_RGBA_0.g;
                   float _SampleTexture2D_D8FE27D5_B_6 = _SampleTexture2D_D8FE27D5_RGBA_0.b;
                   float _SampleTexture2D_D8FE27D5_A_7 = _SampleTexture2D_D8FE27D5_RGBA_0.a;
                   float _Multiply_8FC04BB0_Out_2;
                   Unity_Multiply_float(_Specular_F90232C4_SpecularValue_1, _SampleTexture2D_D8FE27D5_B_6, _Multiply_8FC04BB0_Out_2);
                   float _Clamp_1819EFC2_Out_3;
                   Unity_Clamp_float(_Multiply_8FC04BB0_Out_2, 0, 1, _Clamp_1819EFC2_Out_3);
                   float _Property_E99639F4_Out_0 = Vector1_14D51B31;
                   float _Power_97A531F7_Out_2;
                   Unity_Power_float(_Clamp_1819EFC2_Out_3, _Property_E99639F4_Out_0, _Power_97A531F7_Out_2);
                   float _Property_E27E3B64_Out_0 = Vector1_C7DB18C5;
                   float2 _Vector2_EF16958F_Out_0 = float2(_Power_97A531F7_Out_2, _Property_E27E3B64_Out_0);
                   float _Property_695E1FF4_Out_0 = Vector1_7D259053;
                   float2 _Vector2_E21513_Out_0 = float2(_Property_695E1FF4_Out_0, 0);
                   float2 _TilingAndOffset_CC2D88DE_Out_3;
                   Unity_TilingAndOffset_float(_Vector2_EF16958F_Out_0, float2 (1, 1), _Vector2_E21513_Out_0, _TilingAndOffset_CC2D88DE_Out_3);
                   float4 _SampleTexture2D_646CEB63_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_CC2D88DE_Out_3);
                   float _SampleTexture2D_646CEB63_R_4 = _SampleTexture2D_646CEB63_RGBA_0.r;
                   float _SampleTexture2D_646CEB63_G_5 = _SampleTexture2D_646CEB63_RGBA_0.g;
                   float _SampleTexture2D_646CEB63_B_6 = _SampleTexture2D_646CEB63_RGBA_0.b;
                   float _SampleTexture2D_646CEB63_A_7 = _SampleTexture2D_646CEB63_RGBA_0.a;
                   float _Property_B15B33A8_Out_0 = Boolean_6D5CF815;
                   float4 _Property_4458853E_Out_0 = Color_C3892D16;
                   float3 _ColorspaceConversion_941D60B2_Out_1;
                   Unity_ColorspaceConversion_RGB_HSV_float((_Property_4458853E_Out_0.xyz), _ColorspaceConversion_941D60B2_Out_1);
                   float _Split_1DDBE8BA_R_1 = _ColorspaceConversion_941D60B2_Out_1[0];
                   float _Split_1DDBE8BA_G_2 = _ColorspaceConversion_941D60B2_Out_1[1];
                   float _Split_1DDBE8BA_B_3 = _ColorspaceConversion_941D60B2_Out_1[2];
                   float _Split_1DDBE8BA_A_4 = 0;
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_1B5E1E24;
                   _GetMainLight_1B5E1E24.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_1B5E1E24_Direction_1;
                   half3 _GetMainLight_1B5E1E24_Color_2;
                   half _GetMainLight_1B5E1E24_DistanceAtten_3;
                   half _GetMainLight_1B5E1E24_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_1B5E1E24, _GetMainLight_1B5E1E24_Direction_1, _GetMainLight_1B5E1E24_Color_2, _GetMainLight_1B5E1E24_DistanceAtten_3, _GetMainLight_1B5E1E24_ShadowAtten_4);
                   float3 _Clamp_4CD6697C_Out_3;
                   Unity_Clamp_float3(_GetMainLight_1B5E1E24_Color_2, float3(0, 0, 0), float3(1, 1, 1), _Clamp_4CD6697C_Out_3);
                   float3 _Branch_1CB508C3_Out_3;
                   Unity_Branch_float3(_Property_B15B33A8_Out_0, (_Split_1DDBE8BA_B_3.xxx), _Clamp_4CD6697C_Out_3, _Branch_1CB508C3_Out_3);
                   float3 _Multiply_8298097F_Out_2;
                   Unity_Multiply_float((_SampleTexture2D_646CEB63_G_5.xxx), _Branch_1CB508C3_Out_3, _Multiply_8298097F_Out_2);
                   float4 _Property_7A722D5E_Out_0 = Color_30008A8C;
                   float _Split_EDF65879_R_1 = _Property_7A722D5E_Out_0[0];
                   float _Split_EDF65879_G_2 = _Property_7A722D5E_Out_0[1];
                   float _Split_EDF65879_B_3 = _Property_7A722D5E_Out_0[2];
                   float _Split_EDF65879_A_4 = _Property_7A722D5E_Out_0[3];
                   float4 _Multiply_6EBA7981_Out_2;
                   Unity_Multiply_float(_Property_7A722D5E_Out_0, (_Split_EDF65879_A_4.xxxx), _Multiply_6EBA7981_Out_2);
                   float3 _Multiply_23E1A03A_Out_2;
                   Unity_Multiply_float(_Multiply_8298097F_Out_2, (_Multiply_6EBA7981_Out_2.xyz), _Multiply_23E1A03A_Out_2);
                   Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b _CalculateAdditionalLights_C812550F;
                   _CalculateAdditionalLights_C812550F.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _CalculateAdditionalLights_C812550F.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float3 _CalculateAdditionalLights_C812550F_Diffuse_0;
                   float3 _CalculateAdditionalLights_C812550F_Specular_1;
                   float _CalculateAdditionalLights_C812550F_ShadowValue_2;
                   float3 _CalculateAdditionalLights_C812550F_AddLight_3;
                   SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 (0, 0, 0, 0), 0, IN.WorldSpaceNormal, _CalculateAdditionalLights_C812550F, _CalculateAdditionalLights_C812550F_Diffuse_0, _CalculateAdditionalLights_C812550F_Specular_1, _CalculateAdditionalLights_C812550F_ShadowValue_2, _CalculateAdditionalLights_C812550F_AddLight_3);
                   float _Property_B5FCA258_Out_0 = Vector1_597CA0EC;
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_F66481C4;
                   _GetMainLight_F66481C4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_F66481C4_Direction_1;
                   half3 _GetMainLight_F66481C4_Color_2;
                   half _GetMainLight_F66481C4_DistanceAtten_3;
                   half _GetMainLight_F66481C4_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_F66481C4, _GetMainLight_F66481C4_Direction_1, _GetMainLight_F66481C4_Color_2, _GetMainLight_F66481C4_DistanceAtten_3, _GetMainLight_F66481C4_ShadowAtten_4);
                   float _Add_C67D54D8_Out_2;
                   Unity_Add_float(_Property_B5FCA258_Out_0, _GetMainLight_F66481C4_ShadowAtten_4, _Add_C67D54D8_Out_2);
                   float _Clamp_DF8E9816_Out_3;
                   Unity_Clamp_float(_Add_C67D54D8_Out_2, 0, 1, _Clamp_DF8E9816_Out_3);
                   float _Property_B8BC590B_Out_0 = Boolean_18010446;
                   Bindings_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c _BRDFDiffuse_4618B55C;
                   _BRDFDiffuse_4618B55C.WorldSpaceNormal = IN.WorldSpaceNormal;
                   _BRDFDiffuse_4618B55C.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                   _BRDFDiffuse_4618B55C.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float4 _BRDFDiffuse_4618B55C_Diffuse_1;
                   SG_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c(0, _BRDFDiffuse_4618B55C, _BRDFDiffuse_4618B55C_Diffuse_1);
                   float _Property_99DD7FB2_Out_0 = Boolean_BD2F928D;
                   float4 _Property_6490E027_Out_0 = Vector4_6445BC47;
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_5063FB97;
                   _GetMainLight_5063FB97.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_5063FB97_Direction_1;
                   half3 _GetMainLight_5063FB97_Color_2;
                   half _GetMainLight_5063FB97_DistanceAtten_3;
                   half _GetMainLight_5063FB97_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_5063FB97, _GetMainLight_5063FB97_Direction_1, _GetMainLight_5063FB97_Color_2, _GetMainLight_5063FB97_DistanceAtten_3, _GetMainLight_5063FB97_ShadowAtten_4);
                   float3 _Branch_5BA182D_Out_3;
                   Unity_Branch_float3(_Property_99DD7FB2_Out_0, (_Property_6490E027_Out_0.xyz), _GetMainLight_5063FB97_Direction_1, _Branch_5BA182D_Out_3);
                   float3 _Normalize_99B2299A_Out_1;
                   Unity_Normalize_float3(_Branch_5BA182D_Out_3, _Normalize_99B2299A_Out_1);
                   float4 _Property_187395B1_Out_0 = Vector4_FF4B755C;
                   float _Split_15ED24B4_R_1 = _Property_187395B1_Out_0[0];
                   float _Split_15ED24B4_G_2 = _Property_187395B1_Out_0[1];
                   float _Split_15ED24B4_B_3 = _Property_187395B1_Out_0[2];
                   float _Split_15ED24B4_A_4 = _Property_187395B1_Out_0[3];
                   float2 _Vector2_1A23EE33_Out_0 = float2(_Split_15ED24B4_R_1, _Split_15ED24B4_G_2);
                   float2 _Vector2_80176567_Out_0 = float2(_Split_15ED24B4_B_3, _Split_15ED24B4_A_4);
                   float2 _TilingAndOffset_759FF228_Out_3;
                   Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_1A23EE33_Out_0, _Vector2_80176567_Out_0, _TilingAndOffset_759FF228_Out_3);
                   float4 _SampleTexture2D_CA86F5A3_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_AFFE0F8C, samplerTexture2D_AFFE0F8C, _TilingAndOffset_759FF228_Out_3);
                   _SampleTexture2D_CA86F5A3_RGBA_0.rgb = UnpackNormalRGB(_SampleTexture2D_CA86F5A3_RGBA_0);
                   float _SampleTexture2D_CA86F5A3_R_4 = _SampleTexture2D_CA86F5A3_RGBA_0.r;
                   float _SampleTexture2D_CA86F5A3_G_5 = _SampleTexture2D_CA86F5A3_RGBA_0.g;
                   float _SampleTexture2D_CA86F5A3_B_6 = _SampleTexture2D_CA86F5A3_RGBA_0.b;
                   float _SampleTexture2D_CA86F5A3_A_7 = _SampleTexture2D_CA86F5A3_RGBA_0.a;
                   float _Property_7EE61BC_Out_0 = Vector1_E10F59B8;
                   float3 _NormalStrength_7201E44E_Out_2;
                   Unity_NormalStrength_float((_SampleTexture2D_CA86F5A3_RGBA_0.xyz), _Property_7EE61BC_Out_0, _NormalStrength_7201E44E_Out_2);
                   float3 _NormalBlend_C2FC5356_Out_2;
                   Unity_NormalBlend_float(IN.WorldSpaceNormal, _NormalStrength_7201E44E_Out_2, _NormalBlend_C2FC5356_Out_2);
                   float3 _Normalize_55BBC3A8_Out_1;
                   Unity_Normalize_float3(_NormalBlend_C2FC5356_Out_2, _Normalize_55BBC3A8_Out_1);
                   float _DotProduct_182F1931_Out_2;
                   Unity_DotProduct_float3(_Normalize_99B2299A_Out_1, _Normalize_55BBC3A8_Out_1, _DotProduct_182F1931_Out_2);
                   float4 _Branch_6C3A3F54_Out_3;
                   Unity_Branch_float4(_Property_B8BC590B_Out_0, _BRDFDiffuse_4618B55C_Diffuse_1, (_DotProduct_182F1931_Out_2.xxxx), _Branch_6C3A3F54_Out_3);
                   float4 _Multiply_65162FD0_Out_2;
                   Unity_Multiply_float((_Clamp_DF8E9816_Out_3.xxxx), _Branch_6C3A3F54_Out_3, _Multiply_65162FD0_Out_2);
                   float4 _Clamp_224BDDF6_Out_3;
                   Unity_Clamp_float4(_Multiply_65162FD0_Out_2, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_224BDDF6_Out_3);
                   float _Property_ABC33C5D_Out_0 = Vector1_1E9C8C1F;
                   float4 _Multiply_3144A62E_Out_2;
                   Unity_Multiply_float(_Clamp_224BDDF6_Out_3, (_Property_ABC33C5D_Out_0.xxxx), _Multiply_3144A62E_Out_2);
                   float _OneMinus_77654B0A_Out_1;
                   Unity_OneMinus_float(_Property_ABC33C5D_Out_0, _OneMinus_77654B0A_Out_1);
                   float4 _Add_F6E6DC2A_Out_2;
                   Unity_Add_float4(_Multiply_3144A62E_Out_2, (_OneMinus_77654B0A_Out_1.xxxx), _Add_F6E6DC2A_Out_2);
                   float _Remap_94D844C_Out_3;
                   Unity_Remap_float(_SampleTexture2D_D8FE27D5_R_4, float2 (0, 1), float2 (-1, 1), _Remap_94D844C_Out_3);
                   float _Split_419BDB3_R_1 = _Remap_94D844C_Out_3;
                   float _Split_419BDB3_G_2 = 0;
                   float _Split_419BDB3_B_3 = 0;
                   float _Split_419BDB3_A_4 = 0;
                   float4 _Add_5ACD5DD1_Out_2;
                   Unity_Add_float4(_Add_F6E6DC2A_Out_2, (_Split_419BDB3_R_1.xxxx), _Add_5ACD5DD1_Out_2);
                   float4 _Add_42A5560D_Out_2;
                   Unity_Add_float4((_CalculateAdditionalLights_C812550F_ShadowValue_2.xxxx), _Add_5ACD5DD1_Out_2, _Add_42A5560D_Out_2);
                   float4 _Clamp_2DD46803_Out_3;
                   Unity_Clamp_float4(_Add_42A5560D_Out_2, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_2DD46803_Out_3);
                   float _Property_898E8E41_Out_0 = Vector1_492E7F16;
                   float2 _Vector2_BFBB86A1_Out_0 = float2((_Clamp_2DD46803_Out_3).x, _Property_898E8E41_Out_0);
                   float _Property_66D890_Out_0 = Vector1_193A1ED3;
                   float2 _Vector2_7E947795_Out_0 = float2(_Property_66D890_Out_0, 0);
                   float2 _TilingAndOffset_79804C4_Out_3;
                   Unity_TilingAndOffset_float(_Vector2_BFBB86A1_Out_0, float2 (1, 1), _Vector2_7E947795_Out_0, _TilingAndOffset_79804C4_Out_3);
                   float4 _SampleTexture2D_D0357AA8_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_79804C4_Out_3);
                   float _SampleTexture2D_D0357AA8_R_4 = _SampleTexture2D_D0357AA8_RGBA_0.r;
                   float _SampleTexture2D_D0357AA8_G_5 = _SampleTexture2D_D0357AA8_RGBA_0.g;
                   float _SampleTexture2D_D0357AA8_B_6 = _SampleTexture2D_D0357AA8_RGBA_0.b;
                   float _SampleTexture2D_D0357AA8_A_7 = _SampleTexture2D_D0357AA8_RGBA_0.a;
                   float4 _Property_511552F2_Out_0 = Color_E1F70A85;
                   float4 _Blend_61BB58A0_Out_2;
                   Unity_Blend_Multiply_float4((_SampleTexture2D_D0357AA8_G_5.xxxx), _Property_511552F2_Out_0, _Blend_61BB58A0_Out_2, 1);
                   float2 _Vector2_C59C5490_Out_0 = float2((_Clamp_2DD46803_Out_3).x, (_Clamp_2DD46803_Out_3).x);
                   float2 _Multiply_9750DFFF_Out_2;
                   Unity_Multiply_float(_Vector2_C59C5490_Out_0, _Vector2_C59C5490_Out_0, _Multiply_9750DFFF_Out_2);
                   float _Property_45994198_Out_0 = Vector1_703425E3;
                   float _FresnelEffect_3D339E63_Out_3;
                   Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_45994198_Out_0, _FresnelEffect_3D339E63_Out_3);
                   float _Property_B11D7B9E_Out_0 = Vector1_55FFAA23;
                   float _Multiply_9A507FFA_Out_2;
                   Unity_Multiply_float(_FresnelEffect_3D339E63_Out_3, _Property_B11D7B9E_Out_0, _Multiply_9A507FFA_Out_2);
                   float2 _Add_5FF4153F_Out_2;
                   Unity_Add_float2(_Multiply_9750DFFF_Out_2, (_Multiply_9A507FFA_Out_2.xx), _Add_5FF4153F_Out_2);
                   float _Property_9FBF3BD5_Out_0 = Boolean_A3CCDAEB;
                   float4 _ScreenPosition_5F65C430_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                   float _Split_9EEAB6CD_R_1 = _ScreenPosition_5F65C430_Out_0[0];
                   float _Split_9EEAB6CD_G_2 = _ScreenPosition_5F65C430_Out_0[1];
                   float _Split_9EEAB6CD_B_3 = _ScreenPosition_5F65C430_Out_0[2];
                   float _Split_9EEAB6CD_A_4 = _ScreenPosition_5F65C430_Out_0[3];
                   float2 _Vector2_806073AF_Out_0 = float2(_Split_9EEAB6CD_R_1, _Split_9EEAB6CD_B_3);
                   float2 _Vector2_A30F7CB6_Out_0 = float2(_Split_9EEAB6CD_R_1, _Split_9EEAB6CD_G_2);
                   float2 _Branch_E8288875_Out_3;
                   Unity_Branch_float2(_Property_9FBF3BD5_Out_0, _Vector2_806073AF_Out_0, _Vector2_A30F7CB6_Out_0, _Branch_E8288875_Out_3);
                   float _Property_4DB5B4B3_Out_0 = Vector1_F1979D3;
                   float _Subtract_4AD52DC4_Out_2;
                   Unity_Subtract_float(_Property_4DB5B4B3_Out_0, 1, _Subtract_4AD52DC4_Out_2);
                   float _Multiply_2B52F7E0_Out_2;
                   Unity_Multiply_float(_Subtract_4AD52DC4_Out_2, -0.5, _Multiply_2B52F7E0_Out_2);
                   float2 _Vector2_1DD0DC4B_Out_0 = float2(_Multiply_2B52F7E0_Out_2, 1);
                   float _Property_D45FF678_Out_0 = Vector1_632D4B63;
                   float2 _Vector2_FD5E8498_Out_0 = float2(_Multiply_2B52F7E0_Out_2, _Property_D45FF678_Out_0);
                   float2 _TilingAndOffset_6B0E9429_Out_3;
                   Unity_TilingAndOffset_float(_Branch_E8288875_Out_3, _Vector2_1DD0DC4B_Out_0, _Vector2_FD5E8498_Out_0, _TilingAndOffset_6B0E9429_Out_3);
                   float _Subtract_B1A01D66_Out_2;
                   Unity_Subtract_float(_Property_4DB5B4B3_Out_0, 0.5, _Subtract_B1A01D66_Out_2);
                   float2 _Vector2_EDE09981_Out_0 = float2(_Subtract_B1A01D66_Out_2, 0);
                   float2 _TilingAndOffset_396945A1_Out_3;
                   Unity_TilingAndOffset_float(_Branch_E8288875_Out_3, _Vector2_1DD0DC4B_Out_0, _Vector2_EDE09981_Out_0, _TilingAndOffset_396945A1_Out_3);
                   float2 _Add_679361C7_Out_2;
                   Unity_Add_float2(_TilingAndOffset_6B0E9429_Out_3, _TilingAndOffset_396945A1_Out_3, _Add_679361C7_Out_2);
                   float _Property_59042198_Out_0 = Vector1_C37932A7;
                   float _Remap_2D3FC110_Out_3;
                   Unity_Remap_float(_Property_59042198_Out_0, float2 (0, 360), float2 (-1.57, 1.57), _Remap_2D3FC110_Out_3);
                   float2 _Rotate_F9485439_Out_3;
                   Unity_Rotate_Radians_float(_Add_679361C7_Out_2, float2 (0.5, 0.5), _Remap_2D3FC110_Out_3, _Rotate_F9485439_Out_3);
                   float4 _SampleTexture2D_C84B153C_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_4A0C2C73, samplerTexture2D_4A0C2C73, _Rotate_F9485439_Out_3);
                   float _SampleTexture2D_C84B153C_R_4 = _SampleTexture2D_C84B153C_RGBA_0.r;
                   float _SampleTexture2D_C84B153C_G_5 = _SampleTexture2D_C84B153C_RGBA_0.g;
                   float _SampleTexture2D_C84B153C_B_6 = _SampleTexture2D_C84B153C_RGBA_0.b;
                   float _SampleTexture2D_C84B153C_A_7 = _SampleTexture2D_C84B153C_RGBA_0.a;
                   float2 _Multiply_7C2E5DD2_Out_2;
                   Unity_Multiply_float(_Add_5FF4153F_Out_2, (_SampleTexture2D_C84B153C_G_5.xx), _Multiply_7C2E5DD2_Out_2);
                   float2 _Vector2_49FDB816_Out_0 = float2((_Multiply_7C2E5DD2_Out_2).x, (_Multiply_7C2E5DD2_Out_2).x);
                   float4 _Property_A5432A_Out_0 = Vector4_B2100EC9;
                   float _Split_F90DD6C3_R_1 = _Property_A5432A_Out_0[0];
                   float _Split_F90DD6C3_G_2 = _Property_A5432A_Out_0[1];
                   float _Split_F90DD6C3_B_3 = _Property_A5432A_Out_0[2];
                   float _Split_F90DD6C3_A_4 = _Property_A5432A_Out_0[3];
                   float2 _Vector2_97521D8F_Out_0 = float2(_Split_F90DD6C3_R_1, _Split_F90DD6C3_G_2);
                   float2 _Vector2_E05BF4E0_Out_0 = float2(_Split_F90DD6C3_B_3, _Split_F90DD6C3_A_4);
                   float2 _TilingAndOffset_D3F3D286_Out_3;
                   Unity_TilingAndOffset_float(_Vector2_49FDB816_Out_0, _Vector2_97521D8F_Out_0, _Vector2_E05BF4E0_Out_0, _TilingAndOffset_D3F3D286_Out_3);
                   float4 _SampleTexture2D_E672A4F7_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_D3F3D286_Out_3);
                   float _SampleTexture2D_E672A4F7_R_4 = _SampleTexture2D_E672A4F7_RGBA_0.r;
                   float _SampleTexture2D_E672A4F7_G_5 = _SampleTexture2D_E672A4F7_RGBA_0.g;
                   float _SampleTexture2D_E672A4F7_B_6 = _SampleTexture2D_E672A4F7_RGBA_0.b;
                   float _SampleTexture2D_E672A4F7_A_7 = _SampleTexture2D_E672A4F7_RGBA_0.a;
                   float4 _SampleTexture2D_8EF7652D_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_81E58350, samplerTexture2D_81E58350, IN.uv0.xy);
                   float _SampleTexture2D_8EF7652D_R_4 = _SampleTexture2D_8EF7652D_RGBA_0.r;
                   float _SampleTexture2D_8EF7652D_G_5 = _SampleTexture2D_8EF7652D_RGBA_0.g;
                   float _SampleTexture2D_8EF7652D_B_6 = _SampleTexture2D_8EF7652D_RGBA_0.b;
                   float _SampleTexture2D_8EF7652D_A_7 = _SampleTexture2D_8EF7652D_RGBA_0.a;
                   float4 _Property_485BCE80_Out_0 = Color_BAFEA9F0;
                   float _Property_AC0A5AD3_Out_0 = Vector1_854F1F29;
                   float4 _Multiply_43DFAA33_Out_2;
                   Unity_Multiply_float(_Property_485BCE80_Out_0, (_Property_AC0A5AD3_Out_0.xxxx), _Multiply_43DFAA33_Out_2);
                   float4 _Multiply_5C6752DC_Out_2;
                   Unity_Multiply_float(_SampleTexture2D_8EF7652D_RGBA_0, _Multiply_43DFAA33_Out_2, _Multiply_5C6752DC_Out_2);
                   float4 _Blend_584480F_Out_2;
                   Unity_Blend_Screen_float4((_SampleTexture2D_E672A4F7_G_5.xxxx), _Multiply_5C6752DC_Out_2, _Blend_584480F_Out_2, 1);
                   float _Property_6E4CC92C_Out_0 = Vector1_D9F91D89;
                   float _SimpleNoise_86591318_Out_2;
                   Unity_SimpleNoise_float((IN.AbsoluteWorldSpacePosition.xy), _Property_6E4CC92C_Out_0, _SimpleNoise_86591318_Out_2);
                   float _Property_27F90CE2_Out_0 = Vector1_3FF19332;
                   float2 _Vector2_21CB1F62_Out_0 = float2(0, _Property_27F90CE2_Out_0);
                   float _Remap_6BDADFF4_Out_3;
                   Unity_Remap_float(_SimpleNoise_86591318_Out_2, float2 (0, 1), _Vector2_21CB1F62_Out_0, _Remap_6BDADFF4_Out_3);
                   Gradient _Gradient_A2ACFD25_Out_0 = NewGradient(0, 2, 2, float4(1, 1, 1, 0),float4(1, 1, 1, 1),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0), float2(1, 0),float2(1, 1),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0));
                   float _Property_3D837A68_Out_0 = Boolean_5A562BB8;
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_FD3B0AF5;
                   _GetMainLight_FD3B0AF5.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_FD3B0AF5_Direction_1;
                   half3 _GetMainLight_FD3B0AF5_Color_2;
                   half _GetMainLight_FD3B0AF5_DistanceAtten_3;
                   half _GetMainLight_FD3B0AF5_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_FD3B0AF5, _GetMainLight_FD3B0AF5_Direction_1, _GetMainLight_FD3B0AF5_Color_2, _GetMainLight_FD3B0AF5_DistanceAtten_3, _GetMainLight_FD3B0AF5_ShadowAtten_4);
                   float3 _Normalize_7D1584BB_Out_1;
                   Unity_Normalize_float3(_GetMainLight_FD3B0AF5_Direction_1, _Normalize_7D1584BB_Out_1);
                   float4 _Property_1239A291_Out_0 = Vector4_7268281E;
                   float4 _Normalize_A86DB818_Out_1;
                   Unity_Normalize_float4(_Property_1239A291_Out_0, _Normalize_A86DB818_Out_1);
                   float3 _Branch_B23EFC5C_Out_3;
                   Unity_Branch_float3(_Property_3D837A68_Out_0, _Normalize_7D1584BB_Out_1, (_Normalize_A86DB818_Out_1.xyz), _Branch_B23EFC5C_Out_3);
                   float _Property_B7D21390_Out_0 = Boolean_1A81DE87;
                   float4 _SampleTexture2D_69FA9615_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_AFFE0F8C, samplerTexture2D_AFFE0F8C, IN.uv0.xy);
                   _SampleTexture2D_69FA9615_RGBA_0.rgb = UnpackNormalRGB(_SampleTexture2D_69FA9615_RGBA_0);
                   float _SampleTexture2D_69FA9615_R_4 = _SampleTexture2D_69FA9615_RGBA_0.r;
                   float _SampleTexture2D_69FA9615_G_5 = _SampleTexture2D_69FA9615_RGBA_0.g;
                   float _SampleTexture2D_69FA9615_B_6 = _SampleTexture2D_69FA9615_RGBA_0.b;
                   float _SampleTexture2D_69FA9615_A_7 = _SampleTexture2D_69FA9615_RGBA_0.a;
                   float3 _Branch_BB74106C_Out_3;
                   Unity_Branch_float3(_Property_B7D21390_Out_0, IN.WorldSpaceNormal, (_SampleTexture2D_69FA9615_RGBA_0.xyz), _Branch_BB74106C_Out_3);
                   float3 _Normalize_A8EC20D9_Out_1;
                   Unity_Normalize_float3(_Branch_BB74106C_Out_3, _Normalize_A8EC20D9_Out_1);
                   float _DotProduct_4A4C18DD_Out_2;
                   Unity_DotProduct_float3(_Branch_B23EFC5C_Out_3, _Normalize_A8EC20D9_Out_1, _DotProduct_4A4C18DD_Out_2);
                   float _Clamp_8ED600A8_Out_3;
                   Unity_Clamp_float(_DotProduct_4A4C18DD_Out_2, 0, 1, _Clamp_8ED600A8_Out_3);
                   float _Property_8A088262_Out_0 = Vector1_2C7AE8EA;
                   float _Remap_CDF4E33F_Out_3;
                   Unity_Remap_float(_Property_8A088262_Out_0, float2 (0, 1), float2 (0.01, 5), _Remap_CDF4E33F_Out_3);
                   float _Power_658AE671_Out_2;
                   Unity_Power_float(_Clamp_8ED600A8_Out_3, _Remap_CDF4E33F_Out_3, _Power_658AE671_Out_2);
                   float _OneMinus_86C9F979_Out_1;
                   Unity_OneMinus_float(_Power_658AE671_Out_2, _OneMinus_86C9F979_Out_1);
                   float4 _SampleGradient_6C75CC92_Out_2;
                   Unity_SampleGradient_float(_Gradient_A2ACFD25_Out_0, _OneMinus_86C9F979_Out_1, _SampleGradient_6C75CC92_Out_2);
                   float4 _Add_A1528CF6_Out_2;
                   Unity_Add_float4((_Remap_6BDADFF4_Out_3.xxxx), _SampleGradient_6C75CC92_Out_2, _Add_A1528CF6_Out_2);
                   float4 _Property_AB7527EC_Out_0 = Color_584ABCD0;
                   float4 _Blend_16029B52_Out_2;
                   Unity_Blend_Screen_float4(_Add_A1528CF6_Out_2, _Property_AB7527EC_Out_0, _Blend_16029B52_Out_2, 1);
                   float4 _Multiply_A5F4F0FA_Out_2;
                   Unity_Multiply_float(_Blend_584480F_Out_2, _Blend_16029B52_Out_2, _Multiply_A5F4F0FA_Out_2);
                   float2 _TilingAndOffset_5BC57B01_Out_3;
                   Unity_TilingAndOffset_float(_Multiply_9750DFFF_Out_2, _Vector2_97521D8F_Out_0, _Vector2_E05BF4E0_Out_0, _TilingAndOffset_5BC57B01_Out_3);
                   float4 _SampleTexture2D_208A09E9_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_5BC57B01_Out_3);
                   float _SampleTexture2D_208A09E9_R_4 = _SampleTexture2D_208A09E9_RGBA_0.r;
                   float _SampleTexture2D_208A09E9_G_5 = _SampleTexture2D_208A09E9_RGBA_0.g;
                   float _SampleTexture2D_208A09E9_B_6 = _SampleTexture2D_208A09E9_RGBA_0.b;
                   float _SampleTexture2D_208A09E9_A_7 = _SampleTexture2D_208A09E9_RGBA_0.a;
                   float4 _Property_CBAE3E61_Out_0 = Color_45F00913;
                   float4 _Blend_980DA526_Out_2;
                   Unity_Blend_Screen_float4((_SampleTexture2D_208A09E9_R_4.xxxx), _Property_CBAE3E61_Out_0, _Blend_980DA526_Out_2, 1);
                   float4 _Multiply_EC81A1A9_Out_2;
                   Unity_Multiply_float(_Multiply_A5F4F0FA_Out_2, _Blend_980DA526_Out_2, _Multiply_EC81A1A9_Out_2);
                   float4 _Property_F4B5468_Out_0 = Color_95BA54AB;
                   float4 _SampleTexture2D_CD3A3C06_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_75317E5D, samplerTexture2D_75317E5D, IN.uv1.xy);
                   float _SampleTexture2D_CD3A3C06_R_4 = _SampleTexture2D_CD3A3C06_RGBA_0.r;
                   float _SampleTexture2D_CD3A3C06_G_5 = _SampleTexture2D_CD3A3C06_RGBA_0.g;
                   float _SampleTexture2D_CD3A3C06_B_6 = _SampleTexture2D_CD3A3C06_RGBA_0.b;
                   float _SampleTexture2D_CD3A3C06_A_7 = _SampleTexture2D_CD3A3C06_RGBA_0.a;
                   float4 _Lerp_FD9BA81F_Out_3;
                   Unity_Lerp_float4(_Property_F4B5468_Out_0, float4(1, 1, 1, 1), _SampleTexture2D_CD3A3C06_RGBA_0, _Lerp_FD9BA81F_Out_3);
                   float _Property_EBFB0DDA_Out_0 = Vector1_F60D8232;
                   float4 _Lerp_EBCFAD2A_Out_3;
                   Unity_Lerp_float4(float4(1, 1, 1, 1), _Lerp_FD9BA81F_Out_3, (_Property_EBFB0DDA_Out_0.xxxx), _Lerp_EBCFAD2A_Out_3);
                   float4 _SampleTexture2D_3B48CC34_RGBA_0 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, IN.uv0.xy);
                   float _SampleTexture2D_3B48CC34_R_4 = _SampleTexture2D_3B48CC34_RGBA_0.r;
                   float _SampleTexture2D_3B48CC34_G_5 = _SampleTexture2D_3B48CC34_RGBA_0.g;
                   float _SampleTexture2D_3B48CC34_B_6 = _SampleTexture2D_3B48CC34_RGBA_0.b;
                   float _SampleTexture2D_3B48CC34_A_7 = _SampleTexture2D_3B48CC34_RGBA_0.a;
                   float4 _Property_1F6AF60D_Out_0 = Color_C1AFD425;
                   float4 _Multiply_E7249E39_Out_2;
                   Unity_Multiply_float(_SampleTexture2D_3B48CC34_RGBA_0, _Property_1F6AF60D_Out_0, _Multiply_E7249E39_Out_2);
                   float4 _Multiply_A24385FD_Out_2;
                   Unity_Multiply_float(_Lerp_EBCFAD2A_Out_3, _Multiply_E7249E39_Out_2, _Multiply_A24385FD_Out_2);
                   float _Property_E4023251_Out_0 = Boolean_6D5CF815;
                   float4 _Property_A12CC1DE_Out_0 = Color_FD6C9BB6;
                   float3 _Lerp_B7E20BA8_Out_3;
                   Unity_Lerp_float3((_Property_A12CC1DE_Out_0.xyz), float3(1, 1, 1), _Clamp_4CD6697C_Out_3, _Lerp_B7E20BA8_Out_3);
                   float3 _Branch_CAEC8E2A_Out_3;
                   Unity_Branch_float3(_Property_E4023251_Out_0, (_Property_4458853E_Out_0.xyz), _Lerp_B7E20BA8_Out_3, _Branch_CAEC8E2A_Out_3);
                   float3 _Multiply_9C52AD15_Out_2;
                   Unity_Multiply_float((_Multiply_A24385FD_Out_2.xyz), _Branch_CAEC8E2A_Out_3, _Multiply_9C52AD15_Out_2);
                   float3 _Multiply_DFF1C651_Out_2;
                   Unity_Multiply_float((_Multiply_EC81A1A9_Out_2.xyz), _Multiply_9C52AD15_Out_2, _Multiply_DFF1C651_Out_2);
                   float3 _Add_306EE3BB_Out_2;
                   Unity_Add_float3((_Blend_61BB58A0_Out_2.xyz), _Multiply_DFF1C651_Out_2, _Add_306EE3BB_Out_2);
                   float _Multiply_2C7DEC9_Out_2;
                   Unity_Multiply_float(_DotProduct_4A4C18DD_Out_2, 0.5, _Multiply_2C7DEC9_Out_2);
                   float _Add_A56CD197_Out_2;
                   Unity_Add_float(_Multiply_2C7DEC9_Out_2, 0.5, _Add_A56CD197_Out_2);
                   float _Multiply_2D8C876F_Out_2;
                   Unity_Multiply_float(_Add_A56CD197_Out_2, _Add_A56CD197_Out_2, _Multiply_2D8C876F_Out_2);
                   float _Property_16A2D86A_Out_0 = Vector1_78608E79;
                   float _Property_6E63ADB4_Out_0 = Vector1_5152DDBE;
                   float2 _Vector2_60CC7086_Out_0 = float2(_Property_16A2D86A_Out_0, _Property_6E63ADB4_Out_0);
                   float2 _TilingAndOffset_41F535A6_Out_3;
                   Unity_TilingAndOffset_float((_Multiply_2D8C876F_Out_2.xx), float2 (1, 1), _Vector2_60CC7086_Out_0, _TilingAndOffset_41F535A6_Out_3);
                   float4 _SampleTexture2D_750817E0_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_41F535A6_Out_3);
                   float _SampleTexture2D_750817E0_R_4 = _SampleTexture2D_750817E0_RGBA_0.r;
                   float _SampleTexture2D_750817E0_G_5 = _SampleTexture2D_750817E0_RGBA_0.g;
                   float _SampleTexture2D_750817E0_B_6 = _SampleTexture2D_750817E0_RGBA_0.b;
                   float _SampleTexture2D_750817E0_A_7 = _SampleTexture2D_750817E0_RGBA_0.a;
                   float4 _SampleTexture2D_CF1E2059_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_DE92BF0, samplerTexture2D_DE92BF0, IN.uv0.xy);
                   float _SampleTexture2D_CF1E2059_R_4 = _SampleTexture2D_CF1E2059_RGBA_0.r;
                   float _SampleTexture2D_CF1E2059_G_5 = _SampleTexture2D_CF1E2059_RGBA_0.g;
                   float _SampleTexture2D_CF1E2059_B_6 = _SampleTexture2D_CF1E2059_RGBA_0.b;
                   float _SampleTexture2D_CF1E2059_A_7 = _SampleTexture2D_CF1E2059_RGBA_0.a;
                   float _OneMinus_2EDFC442_Out_1;
                   Unity_OneMinus_float(_SampleTexture2D_CF1E2059_A_7, _OneMinus_2EDFC442_Out_1);
                   float _Add_77290CFA_Out_2;
                   Unity_Add_float(_SampleTexture2D_750817E0_G_5, _OneMinus_2EDFC442_Out_1, _Add_77290CFA_Out_2);
                   float _Clamp_ED61A602_Out_3;
                   Unity_Clamp_float(_Add_77290CFA_Out_2, 0, 1, _Clamp_ED61A602_Out_3);
                   float4 _Property_8195898C_Out_0 = Color_D7AF0984;
                   float4 _Blend_3914D587_Out_2;
                   Unity_Blend_Screen_float4((_Clamp_ED61A602_Out_3.xxxx), _Property_8195898C_Out_0, _Blend_3914D587_Out_2, 1);
                   float3 _Multiply_F0BE3CD9_Out_2;
                   Unity_Multiply_float(_Add_306EE3BB_Out_2, (_Blend_3914D587_Out_2.xyz), _Multiply_F0BE3CD9_Out_2);
                   float3 _Add_26A7D7BD_Out_2;
                   Unity_Add_float3(_Multiply_23E1A03A_Out_2, _Multiply_F0BE3CD9_Out_2, _Add_26A7D7BD_Out_2);
                   Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4 _NdotL_C22E8DB4;
                   _NdotL_C22E8DB4.WorldSpaceNormal = IN.WorldSpaceNormal;
                   _NdotL_C22E8DB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   float _NdotL_C22E8DB4_NdotL_1;
                   SG_NdotL_514b9649e0886bc47bd9ba2f2e977bc4(_NdotL_C22E8DB4, _NdotL_C22E8DB4_NdotL_1);
                   float _Property_B46D043F_Out_0 = Vector1_5663B961;
                   float _FresnelEffect_7AF350C4_Out_3;
                   Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_B46D043F_Out_0, _FresnelEffect_7AF350C4_Out_3);
                   float _Multiply_EF2FEB5C_Out_2;
                   Unity_Multiply_float(_NdotL_C22E8DB4_NdotL_1, _FresnelEffect_7AF350C4_Out_3, _Multiply_EF2FEB5C_Out_2);
                   float _Property_161C6979_Out_0 = Vector1_89B9B85C;
                   float2 _Vector2_23ED73E0_Out_0 = float2(_Multiply_EF2FEB5C_Out_2, _Property_161C6979_Out_0);
                   float _Property_BBC3A9E4_Out_0 = Vector1_9AD8DF8A;
                   float2 _Vector2_82BC5ED3_Out_0 = float2(_Property_BBC3A9E4_Out_0, 0);
                   float2 _TilingAndOffset_EDD5B321_Out_3;
                   Unity_TilingAndOffset_float(_Vector2_23ED73E0_Out_0, float2 (1, 1), _Vector2_82BC5ED3_Out_0, _TilingAndOffset_EDD5B321_Out_3);
                   float4 _SampleTexture2D_3CA3FC67_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_EDD5B321_Out_3);
                   float _SampleTexture2D_3CA3FC67_R_4 = _SampleTexture2D_3CA3FC67_RGBA_0.r;
                   float _SampleTexture2D_3CA3FC67_G_5 = _SampleTexture2D_3CA3FC67_RGBA_0.g;
                   float _SampleTexture2D_3CA3FC67_B_6 = _SampleTexture2D_3CA3FC67_RGBA_0.b;
                   float _SampleTexture2D_3CA3FC67_A_7 = _SampleTexture2D_3CA3FC67_RGBA_0.a;
                   float3 _Multiply_A39A02C1_Out_2;
                   Unity_Multiply_float((_SampleTexture2D_3CA3FC67_G_5.xxx), _Branch_1CB508C3_Out_3, _Multiply_A39A02C1_Out_2);
                   float4 _Property_E1672D5E_Out_0 = Color_6754F1C6;
                   float _Split_3440B87A_R_1 = _Property_E1672D5E_Out_0[0];
                   float _Split_3440B87A_G_2 = _Property_E1672D5E_Out_0[1];
                   float _Split_3440B87A_B_3 = _Property_E1672D5E_Out_0[2];
                   float _Split_3440B87A_A_4 = _Property_E1672D5E_Out_0[3];
                   float4 _Multiply_B093D9A_Out_2;
                   Unity_Multiply_float(_Property_E1672D5E_Out_0, (_Split_3440B87A_A_4.xxxx), _Multiply_B093D9A_Out_2);
                   float3 _Multiply_F9833219_Out_2;
                   Unity_Multiply_float(_Multiply_A39A02C1_Out_2, (_Multiply_B093D9A_Out_2.xyz), _Multiply_F9833219_Out_2);
                   float3 _Add_6C34D19A_Out_2;
                   Unity_Add_float3(_Add_26A7D7BD_Out_2, _Multiply_F9833219_Out_2, _Add_6C34D19A_Out_2);
                   float3 _Add_12D984C9_Out_2;
                   Unity_Add_float3((_Multiply_B7EB0BBA_Out_2.xyz), _Add_6C34D19A_Out_2, _Add_12D984C9_Out_2);
                   float3 _Branch_24350F3A_Out_3;
                   Unity_Branch_float3(_Property_3EF4D2A9_Out_0, (_Split_FE680A83_R_1.xxx), _Add_12D984C9_Out_2, _Branch_24350F3A_Out_3);
                   float3 _Multiply_C1518DFD_Out_2;
                   Unity_Multiply_float((_Property_9E496C1F_Out_0.xyz), _Branch_24350F3A_Out_3, _Multiply_C1518DFD_Out_2);
                   float3 _Add_40561523_Out_2;
                   Unity_Add_float3(_Multiply_C1518DFD_Out_2, float3(0, 0, 0), _Add_40561523_Out_2);
                   float3 _Add_8C00A4B3_Out_2;
                   Unity_Add_float3((_Multiply_FB28F3BA_Out_2.xyz), _Add_40561523_Out_2, _Add_8C00A4B3_Out_2);
                   float _Property_8DD6D434_Out_0 = Boolean_1A81DE87;
                   float4 _SampleTexture2D_4D198CD7_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_AFFE0F8C, samplerTexture2D_AFFE0F8C, IN.uv0.xy);
                   _SampleTexture2D_4D198CD7_RGBA_0.rgb = UnpackNormalRGB(_SampleTexture2D_4D198CD7_RGBA_0);
                   float _SampleTexture2D_4D198CD7_R_4 = _SampleTexture2D_4D198CD7_RGBA_0.r;
                   float _SampleTexture2D_4D198CD7_G_5 = _SampleTexture2D_4D198CD7_RGBA_0.g;
                   float _SampleTexture2D_4D198CD7_B_6 = _SampleTexture2D_4D198CD7_RGBA_0.b;
                   float _SampleTexture2D_4D198CD7_A_7 = _SampleTexture2D_4D198CD7_RGBA_0.a;
                   float3 _Branch_2F524E80_Out_3;
                   Unity_Branch_float3(_Property_8DD6D434_Out_0, IN.WorldSpaceNormal, (_SampleTexture2D_4D198CD7_RGBA_0.xyz), _Branch_2F524E80_Out_3);
                   float _Property_15CEB06B_Out_0 = Boolean_5A562BB8;
                   float _Vector1_5D259DF7_Out_0 = -1;
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_5C275F67;
                   _GetMainLight_5C275F67.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_5C275F67_Direction_1;
                   half3 _GetMainLight_5C275F67_Color_2;
                   half _GetMainLight_5C275F67_DistanceAtten_3;
                   half _GetMainLight_5C275F67_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_5C275F67, _GetMainLight_5C275F67_Direction_1, _GetMainLight_5C275F67_Color_2, _GetMainLight_5C275F67_DistanceAtten_3, _GetMainLight_5C275F67_ShadowAtten_4);
                   float3 _Multiply_99BE829F_Out_2;
                   Unity_Multiply_float((_Vector1_5D259DF7_Out_0.xxx), _GetMainLight_5C275F67_Direction_1, _Multiply_99BE829F_Out_2);
                   float4 _Property_DECD90A0_Out_0 = Vector4_7268281E;
                   float3 _Branch_60D52B8_Out_3;
                   Unity_Branch_float3(_Property_15CEB06B_Out_0, _Multiply_99BE829F_Out_2, (_Property_DECD90A0_Out_0.xyz), _Branch_60D52B8_Out_3);
                   float3 _Normalize_DADC70CF_Out_1;
                   Unity_Normalize_float3(_Branch_60D52B8_Out_3, _Normalize_DADC70CF_Out_1);
                   float _DotProduct_71C33461_Out_2;
                   Unity_DotProduct_float3(_Branch_2F524E80_Out_3, _Normalize_DADC70CF_Out_1, _DotProduct_71C33461_Out_2);
                   float _Clamp_10CDD93F_Out_3;
                   Unity_Clamp_float(_DotProduct_71C33461_Out_2, 0, 1, _Clamp_10CDD93F_Out_3);
                   float _Property_F6C99B40_Out_0 = Vector1_E0E07BB;
                   float _Remap_C3E7E90C_Out_3;
                   Unity_Remap_float(_Property_F6C99B40_Out_0, float2 (0, 1), float2 (5, 0.01), _Remap_C3E7E90C_Out_3);
                   float _Power_B3DD88BA_Out_2;
                   Unity_Power_float(_Clamp_10CDD93F_Out_3, _Remap_C3E7E90C_Out_3, _Power_B3DD88BA_Out_2);
                   float4 _Property_BF4ABCC_Out_0 = Color_811006DD;
                   float4 _Multiply_1CF222B1_Out_2;
                   Unity_Multiply_float((_Power_B3DD88BA_Out_2.xxxx), _Property_BF4ABCC_Out_0, _Multiply_1CF222B1_Out_2);
                   float3 _Add_D992007B_Out_2;
                   Unity_Add_float3(_Add_8C00A4B3_Out_2, (_Multiply_1CF222B1_Out_2.xyz), _Add_D992007B_Out_2);
                   float3 _Add_A360968B_Out_2;
                   Unity_Add_float3(_CalculateAdditionalLights_4C9B04CD_AddLight_3, _Add_D992007B_Out_2, _Add_A360968B_Out_2);
                   float3 _Vector3_8D28E779_Out_0 = float3(0, 1, 0);
                   float3 _Normalize_D9231AA0_Out_1;
                   Unity_Normalize_float3(_Vector3_8D28E779_Out_0, _Normalize_D9231AA0_Out_1);
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_480E4496;
                   _GetMainLight_480E4496.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_480E4496_Direction_1;
                   half3 _GetMainLight_480E4496_Color_2;
                   half _GetMainLight_480E4496_DistanceAtten_3;
                   half _GetMainLight_480E4496_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_480E4496, _GetMainLight_480E4496_Direction_1, _GetMainLight_480E4496_Color_2, _GetMainLight_480E4496_DistanceAtten_3, _GetMainLight_480E4496_ShadowAtten_4);
                   float3 _Normalize_BCA52B57_Out_1;
                   Unity_Normalize_float3(_GetMainLight_480E4496_Direction_1, _Normalize_BCA52B57_Out_1);
                   float _DotProduct_6D959E69_Out_2;
                   Unity_DotProduct_float3(_Normalize_D9231AA0_Out_1, _Normalize_BCA52B57_Out_1, _DotProduct_6D959E69_Out_2);
                   float3 _CrossProduct_BAE7ADB0_Out_2;
                   Unity_CrossProduct_float(_Vector3_8D28E779_Out_0, _GetMainLight_480E4496_Direction_1, _CrossProduct_BAE7ADB0_Out_2);
                   float3 _Arctangent2_7C1EFE8A_Out_2;
                   Unity_Arctangent2_float3((_DotProduct_6D959E69_Out_2.xxx), _CrossProduct_BAE7ADB0_Out_2, _Arctangent2_7C1EFE8A_Out_2);
                   float _Vector1_D6959507_Out_0 = -1.57;
                   float3 _Add_D4904F92_Out_2;
                   Unity_Add_float3(_Arctangent2_7C1EFE8A_Out_2, (_Vector1_D6959507_Out_0.xxx), _Add_D4904F92_Out_2);
                   float _Split_90B4FB3A_R_1 = _Add_D4904F92_Out_2[0];
                   float _Split_90B4FB3A_G_2 = _Add_D4904F92_Out_2[1];
                   float _Split_90B4FB3A_B_3 = _Add_D4904F92_Out_2[2];
                   float _Split_90B4FB3A_A_4 = 0;
                   float2 _Rotate_34E93380_Out_3;
                   Unity_Rotate_Radians_float(IN.uv1.xy, float2 (0.5, 0.5), _Split_90B4FB3A_B_3, _Rotate_34E93380_Out_3);
                   float4 _SampleTexture2D_CBFA2ECD_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_8F92EDA, samplerTexture2D_8F92EDA, _Rotate_34E93380_Out_3);
                   float _SampleTexture2D_CBFA2ECD_R_4 = _SampleTexture2D_CBFA2ECD_RGBA_0.r;
                   float _SampleTexture2D_CBFA2ECD_G_5 = _SampleTexture2D_CBFA2ECD_RGBA_0.g;
                   float _SampleTexture2D_CBFA2ECD_B_6 = _SampleTexture2D_CBFA2ECD_RGBA_0.b;
                   float _SampleTexture2D_CBFA2ECD_A_7 = _SampleTexture2D_CBFA2ECD_RGBA_0.a;
                   float4 _Property_68486CA5_Out_0 = Color_F4176F73;
                   float _Split_4A05D731_R_1 = _Property_68486CA5_Out_0[0];
                   float _Split_4A05D731_G_2 = _Property_68486CA5_Out_0[1];
                   float _Split_4A05D731_B_3 = _Property_68486CA5_Out_0[2];
                   float _Split_4A05D731_A_4 = _Property_68486CA5_Out_0[3];
                   float _Remap_CB5C1431_Out_3;
                   Unity_Remap_float(_Split_4A05D731_A_4, float2 (0, 1), float2 (20, 1), _Remap_CB5C1431_Out_3);
                   float _Power_BD9D5759_Out_2;
                   Unity_Power_float(_SampleTexture2D_CBFA2ECD_R_4, _Remap_CB5C1431_Out_3, _Power_BD9D5759_Out_2);
                   float4 _Multiply_D9608514_Out_2;
                   Unity_Multiply_float((_Power_BD9D5759_Out_2.xxxx), _Property_68486CA5_Out_0, _Multiply_D9608514_Out_2);
                   float3 _Vector3_8282591D_Out_0 = float3(0, 0, 1);
                   float3 _Normalize_46B3D7F8_Out_1;
                   Unity_Normalize_float3(_Vector3_8282591D_Out_0, _Normalize_46B3D7F8_Out_1);
                   Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_8C6E395D;
                   _GetMainLight_8C6E395D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                   half3 _GetMainLight_8C6E395D_Direction_1;
                   half3 _GetMainLight_8C6E395D_Color_2;
                   half _GetMainLight_8C6E395D_DistanceAtten_3;
                   half _GetMainLight_8C6E395D_ShadowAtten_4;
                   SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_8C6E395D, _GetMainLight_8C6E395D_Direction_1, _GetMainLight_8C6E395D_Color_2, _GetMainLight_8C6E395D_DistanceAtten_3, _GetMainLight_8C6E395D_ShadowAtten_4);
                   float3 _Normalize_C7937A9B_Out_1;
                   Unity_Normalize_float3(_GetMainLight_8C6E395D_Direction_1, _Normalize_C7937A9B_Out_1);
                   float _DotProduct_9CC0BA58_Out_2;
                   Unity_DotProduct_float3(_Normalize_46B3D7F8_Out_1, _Normalize_C7937A9B_Out_1, _DotProduct_9CC0BA58_Out_2);
                   float3 _CrossProduct_6ACD3CC0_Out_2;
                   Unity_CrossProduct_float(_Vector3_8282591D_Out_0, _GetMainLight_8C6E395D_Direction_1, _CrossProduct_6ACD3CC0_Out_2);
                   float3 _Arctangent2_EBBAF55D_Out_2;
                   Unity_Arctangent2_float3((_DotProduct_9CC0BA58_Out_2.xxx), _CrossProduct_6ACD3CC0_Out_2, _Arctangent2_EBBAF55D_Out_2);
                   float _Vector1_332A9534_Out_0 = -1.57;
                   float3 _Add_CBF1661A_Out_2;
                   Unity_Add_float3(_Arctangent2_EBBAF55D_Out_2, (_Vector1_332A9534_Out_0.xxx), _Add_CBF1661A_Out_2);
                   float _Split_C4826456_R_1 = _Add_CBF1661A_Out_2[0];
                   float _Split_C4826456_G_2 = _Add_CBF1661A_Out_2[1];
                   float _Split_C4826456_B_3 = _Add_CBF1661A_Out_2[2];
                   float _Split_C4826456_A_4 = 0;
                   float2 _Rotate_AB781451_Out_3;
                   Unity_Rotate_Radians_float(IN.uv2.xy, float2 (0.5, 0.5), _Split_C4826456_R_1, _Rotate_AB781451_Out_3);
                   float4 _SampleTexture2D_20446249_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_8F92EDA, samplerTexture2D_8F92EDA, _Rotate_AB781451_Out_3);
                   float _SampleTexture2D_20446249_R_4 = _SampleTexture2D_20446249_RGBA_0.r;
                   float _SampleTexture2D_20446249_G_5 = _SampleTexture2D_20446249_RGBA_0.g;
                   float _SampleTexture2D_20446249_B_6 = _SampleTexture2D_20446249_RGBA_0.b;
                   float _SampleTexture2D_20446249_A_7 = _SampleTexture2D_20446249_RGBA_0.a;
                   float _Split_736AA94F_R_1 = _Property_68486CA5_Out_0[0];
                   float _Split_736AA94F_G_2 = _Property_68486CA5_Out_0[1];
                   float _Split_736AA94F_B_3 = _Property_68486CA5_Out_0[2];
                   float _Split_736AA94F_A_4 = _Property_68486CA5_Out_0[3];
                   float _Remap_B37DF44C_Out_3;
                   Unity_Remap_float(_Split_736AA94F_A_4, float2 (0, 1), float2 (2, 1), _Remap_B37DF44C_Out_3);
                   float _Power_FA1911E9_Out_2;
                   Unity_Power_float(_SampleTexture2D_20446249_R_4, _Remap_B37DF44C_Out_3, _Power_FA1911E9_Out_2);
                   float4 _Multiply_F46A8DEA_Out_2;
                   Unity_Multiply_float(_Multiply_D9608514_Out_2, (_Power_FA1911E9_Out_2.xxxx), _Multiply_F46A8DEA_Out_2);
                   float3 _Add_4264B346_Out_2;
                   Unity_Add_float3(_Add_A360968B_Out_2, (_Multiply_F46A8DEA_Out_2.xyz), _Add_4264B346_Out_2);
                   float4 _Property_12166626_Out_0 = Color_5D41734B;
                   float4 _UV_632B278E_Out_0 = IN.uv1;
                   float _Split_65FCA20D_R_1 = _UV_632B278E_Out_0[0];
                   float _Split_65FCA20D_G_2 = _UV_632B278E_Out_0[1];
                   float _Split_65FCA20D_B_3 = _UV_632B278E_Out_0[2];
                   float _Split_65FCA20D_A_4 = _UV_632B278E_Out_0[3];
                   float _Length_25184E5F_Out_1;
                   Unity_Length_float(_Split_65FCA20D_G_2, _Length_25184E5F_Out_1);
                   float _Clamp_240CAFA6_Out_3;
                   Unity_Clamp_float(_Length_25184E5F_Out_1, 0, 1, _Clamp_240CAFA6_Out_3);
                   float _Split_CC3CE9EF_R_1 = _Property_12166626_Out_0[0];
                   float _Split_CC3CE9EF_G_2 = _Property_12166626_Out_0[1];
                   float _Split_CC3CE9EF_B_3 = _Property_12166626_Out_0[2];
                   float _Split_CC3CE9EF_A_4 = _Property_12166626_Out_0[3];
                   float _Remap_B082C3ED_Out_3;
                   Unity_Remap_float(_Split_CC3CE9EF_A_4, float2 (0, 1), float2 (100, 1), _Remap_B082C3ED_Out_3);
                   float _Power_A2DBEFEA_Out_2;
                   Unity_Power_float(_Clamp_240CAFA6_Out_3, _Remap_B082C3ED_Out_3, _Power_A2DBEFEA_Out_2);
                   float4 _Multiply_28A18BD8_Out_2;
                   Unity_Multiply_float(_Property_12166626_Out_0, (_Power_A2DBEFEA_Out_2.xxxx), _Multiply_28A18BD8_Out_2);
                   float3 _Multiply_47F42F20_Out_2;
                   Unity_Multiply_float((_Multiply_28A18BD8_Out_2.xyz), _Branch_1CB508C3_Out_3, _Multiply_47F42F20_Out_2);
                   float3 _Add_70DF8825_Out_2;
                   Unity_Add_float3(_Add_4264B346_Out_2, _Multiply_47F42F20_Out_2, _Add_70DF8825_Out_2);
                   float4 _Property_E49B4FE3_Out_0 = Color_9731F5AE;
                   float3 _Lerp_10EC75B0_Out_3;
                   Unity_Lerp_float3(_Add_70DF8825_Out_2, (_Property_E49B4FE3_Out_0.xyz), (_Property_5E93A642_Out_0.xxx), _Lerp_10EC75B0_Out_3);
                   float3 _Add_15368192_Out_2;
                   Unity_Add_float3((_Multiply_66C1A223_Out_2.xyz), _Lerp_10EC75B0_Out_3, _Add_15368192_Out_2);
                   float3 _Add_62C01C13_Out_2;
                   Unity_Add_float3(_Add_15368192_Out_2, (_Multiply_F46A8DEA_Out_2.xyz), _Add_62C01C13_Out_2);
                   surface.Albedo = IsGammaSpace() ? float3(0, 0, 0) : SRGBToLinear(float3(0, 0, 0));
                   surface.Normal = IN.TangentSpaceNormal;
                   surface.Emission = _Add_62C01C13_Out_2;
                   surface.Metallic = 1;
                   surface.Smoothness = 1;
                   surface.Occlusion = 1;
                   surface.Alpha = 1;
                   surface.AlphaClipThreshold = 0;
                   return surface;
               }

               // --------------------------------------------------
               // Structs and Packing

               // Generated Type: Attributes
               struct Attributes
               {
                   float3 positionOS : POSITION;
                   float3 normalOS : NORMAL;
                   float4 tangentOS : TANGENT;
                   float4 uv0 : TEXCOORD0;
                   float4 uv1 : TEXCOORD1;
                   float4 uv2 : TEXCOORD2;
                   float4 color : COLOR;
                   #if UNITY_ANY_INSTANCING_ENABLED
                   uint instanceID : INSTANCEID_SEMANTIC;
                   #endif
               };

               // Generated Type: Varyings
               struct Varyings
               {
                   float4 positionCS : SV_POSITION;
                   float3 positionWS;
                   float3 normalWS;
                   float4 tangentWS;
                   float4 texCoord0;
                   float4 texCoord1;
                   float4 texCoord2;
                   float4 color;
                   float3 viewDirectionWS;
                   #if defined(LIGHTMAP_ON)
                   float2 lightmapUV;
                   #endif
                   #if !defined(LIGHTMAP_ON)
                   float3 sh;
                   #endif
                   float4 fogFactorAndVertexLight;
                   float4 shadowCoord;
                   #if UNITY_ANY_INSTANCING_ENABLED
                   uint instanceID : CUSTOM_INSTANCE_ID;
                   #endif
                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                   uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                   #endif
                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                   uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                   #endif
                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                   FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                   #endif
               };

               // Generated Type: PackedVaryings
               struct PackedVaryings
               {
                   float4 positionCS : SV_POSITION;
                   #if defined(LIGHTMAP_ON)
                   #endif
                   #if !defined(LIGHTMAP_ON)
                   #endif
                   #if UNITY_ANY_INSTANCING_ENABLED
                   uint instanceID : CUSTOM_INSTANCE_ID;
                   #endif
                   float3 interp00 : TEXCOORD0;
                   float3 interp01 : TEXCOORD1;
                   float4 interp02 : TEXCOORD2;
                   float4 interp03 : TEXCOORD3;
                   float4 interp04 : TEXCOORD4;
                   float4 interp05 : TEXCOORD5;
                   float4 interp06 : TEXCOORD6;
                   float3 interp07 : TEXCOORD7;
                   float2 interp08 : TEXCOORD8;
                   float3 interp09 : TEXCOORD9;
                   float4 interp10 : TEXCOORD10;
                   float4 interp11 : TEXCOORD11;
                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                   uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                   #endif
                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                   uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                   #endif
                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                   FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                   #endif
               };

               // Packed Type: Varyings
               PackedVaryings PackVaryings(Varyings input)
               {
                   PackedVaryings output = (PackedVaryings)0;
                   output.positionCS = input.positionCS;
                   output.interp00.xyz = input.positionWS;
                   output.interp01.xyz = input.normalWS;
                   output.interp02.xyzw = input.tangentWS;
                   output.interp03.xyzw = input.texCoord0;
                   output.interp04.xyzw = input.texCoord1;
                   output.interp05.xyzw = input.texCoord2;
                   output.interp06.xyzw = input.color;
                   output.interp07.xyz = input.viewDirectionWS;
                   #if defined(LIGHTMAP_ON)
                   output.interp08.xy = input.lightmapUV;
                   #endif
                   #if !defined(LIGHTMAP_ON)
                   output.interp09.xyz = input.sh;
                   #endif
                   output.interp10.xyzw = input.fogFactorAndVertexLight;
                   output.interp11.xyzw = input.shadowCoord;
                   #if UNITY_ANY_INSTANCING_ENABLED
                   output.instanceID = input.instanceID;
                   #endif
                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                   output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                   #endif
                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                   output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                   #endif
                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                   output.cullFace = input.cullFace;
                   #endif
                   return output;
               }

               // Unpacked Type: Varyings
               Varyings UnpackVaryings(PackedVaryings input)
               {
                   Varyings output = (Varyings)0;
                   output.positionCS = input.positionCS;
                   output.positionWS = input.interp00.xyz;
                   output.normalWS = input.interp01.xyz;
                   output.tangentWS = input.interp02.xyzw;
                   output.texCoord0 = input.interp03.xyzw;
                   output.texCoord1 = input.interp04.xyzw;
                   output.texCoord2 = input.interp05.xyzw;
                   output.color = input.interp06.xyzw;
                   output.viewDirectionWS = input.interp07.xyz;
                   #if defined(LIGHTMAP_ON)
                   output.lightmapUV = input.interp08.xy;
                   #endif
                   #if !defined(LIGHTMAP_ON)
                   output.sh = input.interp09.xyz;
                   #endif
                   output.fogFactorAndVertexLight = input.interp10.xyzw;
                   output.shadowCoord = input.interp11.xyzw;
                   #if UNITY_ANY_INSTANCING_ENABLED
                   output.instanceID = input.instanceID;
                   #endif
                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                   output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                   #endif
                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                   output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                   #endif
                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                   output.cullFace = input.cullFace;
                   #endif
                   return output;
               }

               // --------------------------------------------------
               // Build Graph Inputs

               SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
               {
                   SurfaceDescriptionInputs output;
                   ZERO_INITIALIZE(SurfaceDescriptionInputs, output);

                   // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
                   float3 unnormalizedNormalWS = input.normalWS;
                   const float renormFactor = 1.0 / length(unnormalizedNormalWS);


                   output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;		// we want a unit length Normal Vector node in shader graph
                   output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);


                   output.WorldSpaceViewDirection = input.viewDirectionWS; //TODO: by default normalized in HD, but not in universal
                   output.WorldSpacePosition = input.positionWS;
                   output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
                   output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                   output.uv0 = input.texCoord0;
                   output.uv1 = input.texCoord1;
                   output.uv2 = input.texCoord2;
                   output.VertexColor = input.color;
               #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
               #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
               #else
               #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
               #endif
               #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN

                   return output;
               }


               // --------------------------------------------------
               // Main

               #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
               #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRForwardPass.hlsl"

               ENDHLSL
           }

               Pass
               {
                   Name "ShadowCaster"
                   Tags
                   {
                       "LightMode" = "ShadowCaster"
                   }

                   // Render State
                   Blend One Zero, One Zero
                   Cull Back
                   ZTest LEqual
                   ZWrite On
                   // ColorMask: <None>


                   HLSLPROGRAM
                   #pragma vertex vert
                   #pragma fragment frag

                   // Debug
                   // <None>

                   // --------------------------------------------------
                   // Pass

                   // Pragmas
                   #pragma prefer_hlslcc gles
                   #pragma exclude_renderers d3d11_9x
                   #pragma target 2.0
                   #pragma multi_compile_instancing

                   // Keywords
                   // PassKeywords: <None>
                   // GraphKeywords: <None>

                   // Defines
                   #define _NORMAL_DROPOFF_TS 1
                   #define ATTRIBUTES_NEED_NORMAL
                   #define ATTRIBUTES_NEED_TANGENT
                   #define SHADERPASS_SHADOWCASTER

                   // Includes
                   #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
                   #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
                   #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
                   #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
                   #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"

                   // --------------------------------------------------
                   // Graph

                   // Graph Properties
                   CBUFFER_START(UnityPerMaterial)
                   float4 Color_C1AFD425;
                   float Boolean_6D5CF815;
                   float4 Color_C3892D16;
                   float4 Color_FD6C9BB6;
                   float4 Vector4_B2100EC9;
                   float Boolean_BD2F928D;
                   float4 Vector4_6445BC47;
                   float4 Color_BAFEA9F0;
                   float4 Color_45F00913;
                   float4 Color_F4176F73;
                   float Vector1_14D51B31;
                   float4 Color_30008A8C;
                   float Vector1_7D259053;
                   float Vector1_C7DB18C5;
                   float Vector1_5663B961;
                   float4 Color_6754F1C6;
                   float Vector1_9AD8DF8A;
                   float Vector1_89B9B85C;
                   float4 Color_D106E8A;
                   float Boolean_C67EB6EB;
                   float Boolean_A3CCDAEB;
                   float Vector1_F1979D3;
                   float Vector1_632D4B63;
                   float Vector1_C37932A7;
                   float Vector1_703425E3;
                   float Vector1_55FFAA23;
                   float4 Color_4808C50D;
                   float Vector1_1FE38482;
                   float Vector1_E10F59B8;
                   float4 Vector4_FF4B755C;
                   float Vector1_1E9C8C1F;
                   float Vector1_597CA0EC;
                   float4 Vector4_7268281E;
                   float Boolean_1A81DE87;
                   float Boolean_5A562BB8;
                   float Vector1_78608E79;
                   float Vector1_5152DDBE;
                   float4 Color_D7AF0984;
                   float4 Color_584ABCD0;
                   float Vector1_D9F91D89;
                   float Vector1_3FF19332;
                   float4 Color_811006DD;
                   float Vector1_E0E07BB;
                   float Vector1_2C7AE8EA;
                   float4 Color_2901119A;
                   float Vector1_6178D656;
                   float Vector1_1EDA5197;
                   float4 Color_B09665EF;
                   float Vector1_12A795A8;
                   float4 Color_9731F5AE;
                   float Boolean_680D4A4D;
                   float Vector1_193A1ED3;
                   float Vector1_492E7F16;
                   float4 Color_E1F70A85;
                   float Vector1_854F1F29;
                   float4 Color_5D41734B;
                   float4 Color_95BA54AB;
                   float Vector1_F60D8232;
                   float Boolean_18010446;
                   CBUFFER_END
                   TEXTURE2D(_MainTex); SAMPLER(sampler_MainTex); float4 _MainTex_TexelSize;
                   TEXTURE2D(Texture2D_DE92BF0); SAMPLER(samplerTexture2D_DE92BF0); float4 Texture2D_DE92BF0_TexelSize;
                   TEXTURE2D(Texture2D_7EF187FF); SAMPLER(samplerTexture2D_7EF187FF); float4 Texture2D_7EF187FF_TexelSize;
                   TEXTURE2D(Texture2D_81E58350); SAMPLER(samplerTexture2D_81E58350); float4 Texture2D_81E58350_TexelSize;
                   TEXTURE2D(Texture2D_E19E455); SAMPLER(samplerTexture2D_E19E455); float4 Texture2D_E19E455_TexelSize;
                   TEXTURE2D(Texture2D_4A0C2C73); SAMPLER(samplerTexture2D_4A0C2C73); float4 Texture2D_4A0C2C73_TexelSize;
                   TEXTURE2D(Texture2D_AFFE0F8C); SAMPLER(samplerTexture2D_AFFE0F8C); float4 Texture2D_AFFE0F8C_TexelSize;
                   TEXTURE2D(Texture2D_8F92EDA); SAMPLER(samplerTexture2D_8F92EDA); float4 Texture2D_8F92EDA_TexelSize;
                   TEXTURE2D(Texture2D_75317E5D); SAMPLER(samplerTexture2D_75317E5D); float4 Texture2D_75317E5D_TexelSize;

                   // Graph Functions
                   // GraphFunctions: <None>

                   // Graph Vertex
                   // GraphVertex: <None>

                   // Graph Pixel
                   struct SurfaceDescriptionInputs
                   {
                       float3 TangentSpaceNormal;
                   };

                   struct SurfaceDescription
                   {
                       float Alpha;
                       float AlphaClipThreshold;
                   };

                   SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                   {
                       SurfaceDescription surface = (SurfaceDescription)0;
                       surface.Alpha = 1;
                       surface.AlphaClipThreshold = 0;
                       return surface;
                   }

                   // --------------------------------------------------
                   // Structs and Packing

                   // Generated Type: Attributes
                   struct Attributes
                   {
                       float3 positionOS : POSITION;
                       float3 normalOS : NORMAL;
                       float4 tangentOS : TANGENT;
                       #if UNITY_ANY_INSTANCING_ENABLED
                       uint instanceID : INSTANCEID_SEMANTIC;
                       #endif
                   };

                   // Generated Type: Varyings
                   struct Varyings
                   {
                       float4 positionCS : SV_POSITION;
                       #if UNITY_ANY_INSTANCING_ENABLED
                       uint instanceID : CUSTOM_INSTANCE_ID;
                       #endif
                       #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                       uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                       #endif
                       #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                       uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                       #endif
                       #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                       FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                       #endif
                   };

                   // Generated Type: PackedVaryings
                   struct PackedVaryings
                   {
                       float4 positionCS : SV_POSITION;
                       #if UNITY_ANY_INSTANCING_ENABLED
                       uint instanceID : CUSTOM_INSTANCE_ID;
                       #endif
                       #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                       uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                       #endif
                       #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                       uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                       #endif
                       #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                       FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                       #endif
                   };

                   // Packed Type: Varyings
                   PackedVaryings PackVaryings(Varyings input)
                   {
                       PackedVaryings output = (PackedVaryings)0;
                       output.positionCS = input.positionCS;
                       #if UNITY_ANY_INSTANCING_ENABLED
                       output.instanceID = input.instanceID;
                       #endif
                       #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                       output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                       #endif
                       #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                       output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                       #endif
                       #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                       output.cullFace = input.cullFace;
                       #endif
                       return output;
                   }

                   // Unpacked Type: Varyings
                   Varyings UnpackVaryings(PackedVaryings input)
                   {
                       Varyings output = (Varyings)0;
                       output.positionCS = input.positionCS;
                       #if UNITY_ANY_INSTANCING_ENABLED
                       output.instanceID = input.instanceID;
                       #endif
                       #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                       output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                       #endif
                       #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                       output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                       #endif
                       #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                       output.cullFace = input.cullFace;
                       #endif
                       return output;
                   }

                   // --------------------------------------------------
                   // Build Graph Inputs

                   SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                   {
                       SurfaceDescriptionInputs output;
                       ZERO_INITIALIZE(SurfaceDescriptionInputs, output);



                       output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);


                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                   #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                   #else
                   #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                   #endif
                   #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN

                       return output;
                   }


                   // --------------------------------------------------
                   // Main

                   #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
                   #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShadowCasterPass.hlsl"

                   ENDHLSL
               }

                   Pass
                   {
                       Name "DepthOnly"
                       Tags
                       {
                           "LightMode" = "DepthOnly"
                       }

                       // Render State
                       Blend One Zero, One Zero
                       Cull Back
                       ZTest LEqual
                       ZWrite On
                       ColorMask 0


                       HLSLPROGRAM
                       #pragma vertex vert
                       #pragma fragment frag

                       // Debug
                       // <None>

                       // --------------------------------------------------
                       // Pass

                       // Pragmas
                       #pragma prefer_hlslcc gles
                       #pragma exclude_renderers d3d11_9x
                       #pragma target 2.0
                       #pragma multi_compile_instancing

                       // Keywords
                       // PassKeywords: <None>
                       // GraphKeywords: <None>

                       // Defines
                       #define _NORMAL_DROPOFF_TS 1
                       #define ATTRIBUTES_NEED_NORMAL
                       #define ATTRIBUTES_NEED_TANGENT
                       #define SHADERPASS_DEPTHONLY

                       // Includes
                       #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
                       #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
                       #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
                       #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
                       #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"

                       // --------------------------------------------------
                       // Graph

                       // Graph Properties
                       CBUFFER_START(UnityPerMaterial)
                       float4 Color_C1AFD425;
                       float Boolean_6D5CF815;
                       float4 Color_C3892D16;
                       float4 Color_FD6C9BB6;
                       float4 Vector4_B2100EC9;
                       float Boolean_BD2F928D;
                       float4 Vector4_6445BC47;
                       float4 Color_BAFEA9F0;
                       float4 Color_45F00913;
                       float4 Color_F4176F73;
                       float Vector1_14D51B31;
                       float4 Color_30008A8C;
                       float Vector1_7D259053;
                       float Vector1_C7DB18C5;
                       float Vector1_5663B961;
                       float4 Color_6754F1C6;
                       float Vector1_9AD8DF8A;
                       float Vector1_89B9B85C;
                       float4 Color_D106E8A;
                       float Boolean_C67EB6EB;
                       float Boolean_A3CCDAEB;
                       float Vector1_F1979D3;
                       float Vector1_632D4B63;
                       float Vector1_C37932A7;
                       float Vector1_703425E3;
                       float Vector1_55FFAA23;
                       float4 Color_4808C50D;
                       float Vector1_1FE38482;
                       float Vector1_E10F59B8;
                       float4 Vector4_FF4B755C;
                       float Vector1_1E9C8C1F;
                       float Vector1_597CA0EC;
                       float4 Vector4_7268281E;
                       float Boolean_1A81DE87;
                       float Boolean_5A562BB8;
                       float Vector1_78608E79;
                       float Vector1_5152DDBE;
                       float4 Color_D7AF0984;
                       float4 Color_584ABCD0;
                       float Vector1_D9F91D89;
                       float Vector1_3FF19332;
                       float4 Color_811006DD;
                       float Vector1_E0E07BB;
                       float Vector1_2C7AE8EA;
                       float4 Color_2901119A;
                       float Vector1_6178D656;
                       float Vector1_1EDA5197;
                       float4 Color_B09665EF;
                       float Vector1_12A795A8;
                       float4 Color_9731F5AE;
                       float Boolean_680D4A4D;
                       float Vector1_193A1ED3;
                       float Vector1_492E7F16;
                       float4 Color_E1F70A85;
                       float Vector1_854F1F29;
                       float4 Color_5D41734B;
                       float4 Color_95BA54AB;
                       float Vector1_F60D8232;
                       float Boolean_18010446;
                       CBUFFER_END
                       TEXTURE2D(_MainTex); SAMPLER(sampler_MainTex); float4 _MainTex_TexelSize;
                       TEXTURE2D(Texture2D_DE92BF0); SAMPLER(samplerTexture2D_DE92BF0); float4 Texture2D_DE92BF0_TexelSize;
                       TEXTURE2D(Texture2D_7EF187FF); SAMPLER(samplerTexture2D_7EF187FF); float4 Texture2D_7EF187FF_TexelSize;
                       TEXTURE2D(Texture2D_81E58350); SAMPLER(samplerTexture2D_81E58350); float4 Texture2D_81E58350_TexelSize;
                       TEXTURE2D(Texture2D_E19E455); SAMPLER(samplerTexture2D_E19E455); float4 Texture2D_E19E455_TexelSize;
                       TEXTURE2D(Texture2D_4A0C2C73); SAMPLER(samplerTexture2D_4A0C2C73); float4 Texture2D_4A0C2C73_TexelSize;
                       TEXTURE2D(Texture2D_AFFE0F8C); SAMPLER(samplerTexture2D_AFFE0F8C); float4 Texture2D_AFFE0F8C_TexelSize;
                       TEXTURE2D(Texture2D_8F92EDA); SAMPLER(samplerTexture2D_8F92EDA); float4 Texture2D_8F92EDA_TexelSize;
                       TEXTURE2D(Texture2D_75317E5D); SAMPLER(samplerTexture2D_75317E5D); float4 Texture2D_75317E5D_TexelSize;

                       // Graph Functions
                       // GraphFunctions: <None>

                       // Graph Vertex
                       // GraphVertex: <None>

                       // Graph Pixel
                       struct SurfaceDescriptionInputs
                       {
                           float3 TangentSpaceNormal;
                       };

                       struct SurfaceDescription
                       {
                           float Alpha;
                           float AlphaClipThreshold;
                       };

                       SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                       {
                           SurfaceDescription surface = (SurfaceDescription)0;
                           surface.Alpha = 1;
                           surface.AlphaClipThreshold = 0;
                           return surface;
                       }

                       // --------------------------------------------------
                       // Structs and Packing

                       // Generated Type: Attributes
                       struct Attributes
                       {
                           float3 positionOS : POSITION;
                           float3 normalOS : NORMAL;
                           float4 tangentOS : TANGENT;
                           #if UNITY_ANY_INSTANCING_ENABLED
                           uint instanceID : INSTANCEID_SEMANTIC;
                           #endif
                       };

                       // Generated Type: Varyings
                       struct Varyings
                       {
                           float4 positionCS : SV_POSITION;
                           #if UNITY_ANY_INSTANCING_ENABLED
                           uint instanceID : CUSTOM_INSTANCE_ID;
                           #endif
                           #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                           uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                           #endif
                           #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                           uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                           #endif
                           #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                           FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                           #endif
                       };

                       // Generated Type: PackedVaryings
                       struct PackedVaryings
                       {
                           float4 positionCS : SV_POSITION;
                           #if UNITY_ANY_INSTANCING_ENABLED
                           uint instanceID : CUSTOM_INSTANCE_ID;
                           #endif
                           #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                           uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                           #endif
                           #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                           uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                           #endif
                           #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                           FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                           #endif
                       };

                       // Packed Type: Varyings
                       PackedVaryings PackVaryings(Varyings input)
                       {
                           PackedVaryings output = (PackedVaryings)0;
                           output.positionCS = input.positionCS;
                           #if UNITY_ANY_INSTANCING_ENABLED
                           output.instanceID = input.instanceID;
                           #endif
                           #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                           output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                           #endif
                           #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                           output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                           #endif
                           #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                           output.cullFace = input.cullFace;
                           #endif
                           return output;
                       }

                       // Unpacked Type: Varyings
                       Varyings UnpackVaryings(PackedVaryings input)
                       {
                           Varyings output = (Varyings)0;
                           output.positionCS = input.positionCS;
                           #if UNITY_ANY_INSTANCING_ENABLED
                           output.instanceID = input.instanceID;
                           #endif
                           #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                           output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                           #endif
                           #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                           output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                           #endif
                           #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                           output.cullFace = input.cullFace;
                           #endif
                           return output;
                       }

                       // --------------------------------------------------
                       // Build Graph Inputs

                       SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                       {
                           SurfaceDescriptionInputs output;
                           ZERO_INITIALIZE(SurfaceDescriptionInputs, output);



                           output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);


                       #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                       #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                       #else
                       #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                       #endif
                       #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN

                           return output;
                       }


                       // --------------------------------------------------
                       // Main

                       #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
                       #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthOnlyPass.hlsl"

                       ENDHLSL
                   }

                       Pass
                       {
                           Name "Meta"
                           Tags
                           {
                               "LightMode" = "Meta"
                           }

                           // Render State
                           Blend One Zero, One Zero
                           Cull Back
                           ZTest LEqual
                           ZWrite On
                           // ColorMask: <None>


                           HLSLPROGRAM
                           #pragma vertex vert
                           #pragma fragment frag

                           // Debug
                           // <None>

                           // --------------------------------------------------
                           // Pass

                           // Pragmas
                           #pragma prefer_hlslcc gles
                           #pragma exclude_renderers d3d11_9x
                           #pragma target 2.0

                           // Keywords
                           #pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A
                           // GraphKeywords: <None>

                           // Defines
                           #define _NORMAL_DROPOFF_TS 1
                           #define ATTRIBUTES_NEED_NORMAL
                           #define ATTRIBUTES_NEED_TANGENT
                           #define ATTRIBUTES_NEED_TEXCOORD0
                           #define ATTRIBUTES_NEED_TEXCOORD1
                           #define ATTRIBUTES_NEED_TEXCOORD2
                           #define ATTRIBUTES_NEED_COLOR
                           #define VARYINGS_NEED_POSITION_WS 
                           #define VARYINGS_NEED_NORMAL_WS
                           #define VARYINGS_NEED_TEXCOORD0
                           #define VARYINGS_NEED_TEXCOORD1
                           #define VARYINGS_NEED_TEXCOORD2
                           #define VARYINGS_NEED_COLOR
                           #define VARYINGS_NEED_VIEWDIRECTION_WS
                           #define SHADERPASS_META

                           // Includes
                           #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
                           #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
                           #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
                           #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
                           #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
                           #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"

                           // --------------------------------------------------
                           // Graph

                           // Graph Properties
                           CBUFFER_START(UnityPerMaterial)
                           float4 Color_C1AFD425;
                           float Boolean_6D5CF815;
                           float4 Color_C3892D16;
                           float4 Color_FD6C9BB6;
                           float4 Vector4_B2100EC9;
                           float Boolean_BD2F928D;
                           float4 Vector4_6445BC47;
                           float4 Color_BAFEA9F0;
                           float4 Color_45F00913;
                           float4 Color_F4176F73;
                           float Vector1_14D51B31;
                           float4 Color_30008A8C;
                           float Vector1_7D259053;
                           float Vector1_C7DB18C5;
                           float Vector1_5663B961;
                           float4 Color_6754F1C6;
                           float Vector1_9AD8DF8A;
                           float Vector1_89B9B85C;
                           float4 Color_D106E8A;
                           float Boolean_C67EB6EB;
                           float Boolean_A3CCDAEB;
                           float Vector1_F1979D3;
                           float Vector1_632D4B63;
                           float Vector1_C37932A7;
                           float Vector1_703425E3;
                           float Vector1_55FFAA23;
                           float4 Color_4808C50D;
                           float Vector1_1FE38482;
                           float Vector1_E10F59B8;
                           float4 Vector4_FF4B755C;
                           float Vector1_1E9C8C1F;
                           float Vector1_597CA0EC;
                           float4 Vector4_7268281E;
                           float Boolean_1A81DE87;
                           float Boolean_5A562BB8;
                           float Vector1_78608E79;
                           float Vector1_5152DDBE;
                           float4 Color_D7AF0984;
                           float4 Color_584ABCD0;
                           float Vector1_D9F91D89;
                           float Vector1_3FF19332;
                           float4 Color_811006DD;
                           float Vector1_E0E07BB;
                           float Vector1_2C7AE8EA;
                           float4 Color_2901119A;
                           float Vector1_6178D656;
                           float Vector1_1EDA5197;
                           float4 Color_B09665EF;
                           float Vector1_12A795A8;
                           float4 Color_9731F5AE;
                           float Boolean_680D4A4D;
                           float Vector1_193A1ED3;
                           float Vector1_492E7F16;
                           float4 Color_E1F70A85;
                           float Vector1_854F1F29;
                           float4 Color_5D41734B;
                           float4 Color_95BA54AB;
                           float Vector1_F60D8232;
                           float Boolean_18010446;
                           CBUFFER_END
                           TEXTURE2D(_MainTex); SAMPLER(sampler_MainTex); float4 _MainTex_TexelSize;
                           TEXTURE2D(Texture2D_DE92BF0); SAMPLER(samplerTexture2D_DE92BF0); float4 Texture2D_DE92BF0_TexelSize;
                           TEXTURE2D(Texture2D_7EF187FF); SAMPLER(samplerTexture2D_7EF187FF); float4 Texture2D_7EF187FF_TexelSize;
                           TEXTURE2D(Texture2D_81E58350); SAMPLER(samplerTexture2D_81E58350); float4 Texture2D_81E58350_TexelSize;
                           TEXTURE2D(Texture2D_E19E455); SAMPLER(samplerTexture2D_E19E455); float4 Texture2D_E19E455_TexelSize;
                           TEXTURE2D(Texture2D_4A0C2C73); SAMPLER(samplerTexture2D_4A0C2C73); float4 Texture2D_4A0C2C73_TexelSize;
                           TEXTURE2D(Texture2D_AFFE0F8C); SAMPLER(samplerTexture2D_AFFE0F8C); float4 Texture2D_AFFE0F8C_TexelSize;
                           TEXTURE2D(Texture2D_8F92EDA); SAMPLER(samplerTexture2D_8F92EDA); float4 Texture2D_8F92EDA_TexelSize;
                           TEXTURE2D(Texture2D_75317E5D); SAMPLER(samplerTexture2D_75317E5D); float4 Texture2D_75317E5D_TexelSize;
                           SAMPLER(_SampleTexture2D_7DE59C1B_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_D8FE27D5_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_646CEB63_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_CA86F5A3_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_D0357AA8_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_C84B153C_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_E672A4F7_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_8EF7652D_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_69FA9615_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_208A09E9_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_CD3A3C06_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_3B48CC34_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_750817E0_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_CF1E2059_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_3CA3FC67_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_4D198CD7_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_CBFA2ECD_Sampler_3_Linear_Repeat);
                           SAMPLER(_SampleTexture2D_20446249_Sampler_3_Linear_Repeat);

                           // Graph Functions

                           // f9504c5a352d2df678f6ea5e852cd42e
                           #include "Assets/Includes/CustomLighting.hlsl"

                           struct Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b
                           {
                               float3 WorldSpaceViewDirection;
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 Color_EE85B5ED, half Vector1_B1513F4D, half3 Vector3_4D8D716A, Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b IN, out float3 Diffuse_0, out float3 Specular_1, out float ShadowValue_2, out float3 AddLight_3)
                           {
                               half4 _Property_E47F52F0_Out_0 = Color_EE85B5ED;
                               half _Property_16CA5CB6_Out_0 = Vector1_B1513F4D;
                               half3 _Property_EEAA4B84_Out_0 = Vector3_4D8D716A;
                               float3 _CustomFunction_D3E20B4_Diffuse_5;
                               float3 _CustomFunction_D3E20B4_Specular_6;
                               float _CustomFunction_D3E20B4_ShadowValue_7;
                               float3 _CustomFunction_D3E20B4_AddLight_8;
                               AdditionalLights_float((_Property_E47F52F0_Out_0.xyz), _Property_16CA5CB6_Out_0, IN.AbsoluteWorldSpacePosition, _Property_EEAA4B84_Out_0, IN.WorldSpaceViewDirection, _CustomFunction_D3E20B4_Diffuse_5, _CustomFunction_D3E20B4_Specular_6, _CustomFunction_D3E20B4_ShadowValue_7, _CustomFunction_D3E20B4_AddLight_8);
                               Diffuse_0 = _CustomFunction_D3E20B4_Diffuse_5;
                               Specular_1 = _CustomFunction_D3E20B4_Specular_6;
                               ShadowValue_2 = _CustomFunction_D3E20B4_ShadowValue_7;
                               AddLight_3 = _CustomFunction_D3E20B4_AddLight_8;
                           }

                           struct Bindings_GetMainLight_52012c17518825a429793d26daee4a8c
                           {
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_GetMainLight_52012c17518825a429793d26daee4a8c(Bindings_GetMainLight_52012c17518825a429793d26daee4a8c IN, out half3 Direction_1, out half3 Color_2, out half DistanceAtten_3, out half ShadowAtten_4)
                           {
                               half3 _CustomFunction_2BF1432_Direction_0;
                               half3 _CustomFunction_2BF1432_Color_1;
                               half _CustomFunction_2BF1432_DistanceAtten_3;
                               half _CustomFunction_2BF1432_ShadowAtten_4;
                               MainLight_half(IN.AbsoluteWorldSpacePosition, _CustomFunction_2BF1432_Direction_0, _CustomFunction_2BF1432_Color_1, _CustomFunction_2BF1432_DistanceAtten_3, _CustomFunction_2BF1432_ShadowAtten_4);
                               Direction_1 = _CustomFunction_2BF1432_Direction_0;
                               Color_2 = _CustomFunction_2BF1432_Color_1;
                               DistanceAtten_3 = _CustomFunction_2BF1432_DistanceAtten_3;
                               ShadowAtten_4 = _CustomFunction_2BF1432_ShadowAtten_4;
                           }

                           void Unity_Normalize_float3(float3 In, out float3 Out)
                           {
                               Out = normalize(In);
                           }

                           void Unity_DotProduct_float3(float3 A, float3 B, out float Out)
                           {
                               Out = dot(A, B);
                           }

                           void Unity_Multiply_float(float A, float B, out float Out)
                           {
                               Out = A * B;
                           }

                           void Unity_Add_float(float A, float B, out float Out)
                           {
                               Out = A + B;
                           }

                           void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                           {
                               Out = clamp(In, Min, Max);
                           }

                           void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                           {
                               Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                           }

                           void Unity_FresnelEffect_float(float3 Normal, float3 ViewDir, float Power, out float Out)
                           {
                               Out = pow((1.0 - saturate(dot(normalize(Normal), normalize(ViewDir)))), Power);
                           }

                           void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                           {
                               Out = Predicate ? True : False;
                           }

                           void Unity_Step_float(float Edge, float In, out float Out)
                           {
                               Out = step(Edge, In);
                           }

                           void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
                           {
                               Out = A * B;
                           }

                           void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
                           {
                               Out = A * B;
                           }

                           void Unity_SampleGradient_float(Gradient Gradient, float Time, out float4 Out)
                           {
                               float3 color = Gradient.colors[0].rgb;
                               [unroll]
                               for (int c = 1; c < 8; c++)
                               {
                                   float colorPos = saturate((Time - Gradient.colors[c - 1].w) / (Gradient.colors[c].w - Gradient.colors[c - 1].w)) * step(c, Gradient.colorsLength - 1);
                                   color = lerp(color, Gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), Gradient.type));
                               }
                           #ifndef UNITY_COLORSPACE_GAMMA
                               color = SRGBToLinear(color);
                           #endif
                               float alpha = Gradient.alphas[0].x;
                               [unroll]
                               for (int a = 1; a < 8; a++)
                               {
                                   float alphaPos = saturate((Time - Gradient.alphas[a - 1].y) / (Gradient.alphas[a].y - Gradient.alphas[a - 1].y)) * step(a, Gradient.alphasLength - 1);
                                   alpha = lerp(alpha, Gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), Gradient.type));
                               }
                               Out = float4(color, alpha);
                           }

                           void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                           {
                               Out = A + B;
                           }

                           void Unity_Remap_float3(float3 In, float2 InMinMax, float2 OutMinMax, out float3 Out)
                           {
                               Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                           }

                           void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                           {
                               Out = UV * Tiling + Offset;
                           }

                           struct Bindings_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d
                           {
                               float3 WorldSpaceNormal;
                               float3 WorldSpaceViewDirection;
                               float3 AbsoluteWorldSpacePosition;
                               half4 uv1;
                           };

                           void SG_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d(TEXTURE2D_PARAM(Texture2D_A16E8BE7, samplerTexture2D_A16E8BE7), float4 Texture2D_A16E8BE7_TexelSize, float2 Vector2_C95960BD, Bindings_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d IN, out float OutVector4_1)
                           {
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_70031602;
                               _GetMainLight_70031602.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_70031602_Direction_1;
                               half3 _GetMainLight_70031602_Color_2;
                               half _GetMainLight_70031602_DistanceAtten_3;
                               half _GetMainLight_70031602_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_70031602, _GetMainLight_70031602_Direction_1, _GetMainLight_70031602_Color_2, _GetMainLight_70031602_DistanceAtten_3, _GetMainLight_70031602_ShadowAtten_4);
                               float _DotProduct_1F463656_Out_2;
                               Unity_DotProduct_float3(_GetMainLight_70031602_Direction_1, IN.WorldSpaceNormal, _DotProduct_1F463656_Out_2);
                               float _Multiply_E9FCA753_Out_2;
                               Unity_Multiply_float(_DotProduct_1F463656_Out_2, 0.5, _Multiply_E9FCA753_Out_2);
                               float _Add_E2120CD_Out_2;
                               Unity_Add_float(_Multiply_E9FCA753_Out_2, 0.5, _Add_E2120CD_Out_2);
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_7184F7A7;
                               _GetMainLight_7184F7A7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_7184F7A7_Direction_1;
                               half3 _GetMainLight_7184F7A7_Color_2;
                               half _GetMainLight_7184F7A7_DistanceAtten_3;
                               half _GetMainLight_7184F7A7_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_7184F7A7, _GetMainLight_7184F7A7_Direction_1, _GetMainLight_7184F7A7_Color_2, _GetMainLight_7184F7A7_DistanceAtten_3, _GetMainLight_7184F7A7_ShadowAtten_4);
                               float3 _Add_579E7C2B_Out_2;
                               Unity_Add_float3(_GetMainLight_7184F7A7_Direction_1, IN.WorldSpaceViewDirection, _Add_579E7C2B_Out_2);
                               float3 _Normalize_31DF38BD_Out_1;
                               Unity_Normalize_float3(_Add_579E7C2B_Out_2, _Normalize_31DF38BD_Out_1);
                               float2 _Property_D305CF84_Out_0 = Vector2_C95960BD;
                               float3 _Remap_DAEAE0AC_Out_3;
                               Unity_Remap_float3(_Normalize_31DF38BD_Out_1, float2 (-1, 1), _Property_D305CF84_Out_0, _Remap_DAEAE0AC_Out_3);
                               float _Split_1E238243_R_1 = _Remap_DAEAE0AC_Out_3[0];
                               float _Split_1E238243_G_2 = _Remap_DAEAE0AC_Out_3[1];
                               float _Split_1E238243_B_3 = _Remap_DAEAE0AC_Out_3[2];
                               float _Split_1E238243_A_4 = 0;
                               float2 _Vector2_EA69B85C_Out_0 = float2(_Split_1E238243_R_1, _Split_1E238243_G_2);
                               float2 _TilingAndOffset_FFA0D934_Out_3;
                               Unity_TilingAndOffset_float(IN.uv1.xy, float2 (1, 1), _Vector2_EA69B85C_Out_0, _TilingAndOffset_FFA0D934_Out_3);
                               float4 _SampleTexture2D_7DE59C1B_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_A16E8BE7, samplerTexture2D_A16E8BE7, _TilingAndOffset_FFA0D934_Out_3);
                               float _SampleTexture2D_7DE59C1B_R_4 = _SampleTexture2D_7DE59C1B_RGBA_0.r;
                               float _SampleTexture2D_7DE59C1B_G_5 = _SampleTexture2D_7DE59C1B_RGBA_0.g;
                               float _SampleTexture2D_7DE59C1B_B_6 = _SampleTexture2D_7DE59C1B_RGBA_0.b;
                               float _SampleTexture2D_7DE59C1B_A_7 = _SampleTexture2D_7DE59C1B_RGBA_0.a;
                               float _Multiply_39E27F69_Out_2;
                               Unity_Multiply_float(_Add_E2120CD_Out_2, _SampleTexture2D_7DE59C1B_R_4, _Multiply_39E27F69_Out_2);
                               OutVector4_1 = _Multiply_39E27F69_Out_2;
                           }

                           struct Bindings_Specular_ec205ff2dfef6114f92e2fda01c553db
                           {
                               float3 WorldSpaceNormal;
                               float3 WorldSpaceViewDirection;
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_Specular_ec205ff2dfef6114f92e2fda01c553db(float3 Vector3_FEF0CC6F, Bindings_Specular_ec205ff2dfef6114f92e2fda01c553db IN, out float SpecularValue_1)
                           {
                               float3 _Normalize_C28C7E70_Out_1;
                               Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_C28C7E70_Out_1);
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_33EDCC65;
                               _GetMainLight_33EDCC65.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_33EDCC65_Direction_1;
                               half3 _GetMainLight_33EDCC65_Color_2;
                               half _GetMainLight_33EDCC65_DistanceAtten_3;
                               half _GetMainLight_33EDCC65_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_33EDCC65, _GetMainLight_33EDCC65_Direction_1, _GetMainLight_33EDCC65_Color_2, _GetMainLight_33EDCC65_DistanceAtten_3, _GetMainLight_33EDCC65_ShadowAtten_4);
                               float3 _Property_BA80EC1A_Out_0 = Vector3_FEF0CC6F;
                               float3 _Add_B9E1BB9B_Out_2;
                               Unity_Add_float3(_GetMainLight_33EDCC65_Direction_1, _Property_BA80EC1A_Out_0, _Add_B9E1BB9B_Out_2);
                               float3 _Add_42E2272B_Out_2;
                               Unity_Add_float3(IN.WorldSpaceViewDirection, _Add_B9E1BB9B_Out_2, _Add_42E2272B_Out_2);
                               float3 _Normalize_5878BC95_Out_1;
                               Unity_Normalize_float3(_Add_42E2272B_Out_2, _Normalize_5878BC95_Out_1);
                               float _DotProduct_E5BEC886_Out_2;
                               Unity_DotProduct_float3(_Normalize_C28C7E70_Out_1, _Normalize_5878BC95_Out_1, _DotProduct_E5BEC886_Out_2);
                               SpecularValue_1 = _DotProduct_E5BEC886_Out_2;
                           }

                           void Unity_Power_float(float A, float B, out float Out)
                           {
                               Out = pow(A, B);
                           }

                           void Unity_ColorspaceConversion_RGB_HSV_float(float3 In, out float3 Out)
                           {
                               float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                               float4 P = lerp(float4(In.bg, K.wz), float4(In.gb, K.xy), step(In.b, In.g));
                               float4 Q = lerp(float4(P.xyw, In.r), float4(In.r, P.yzx), step(P.x, In.r));
                               float D = Q.x - min(Q.w, Q.y);
                               float  E = 1e-10;
                               Out = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
                           }

                           void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
                           {
                               Out = clamp(In, Min, Max);
                           }

                           void Unity_Lerp_float(float A, float B, float T, out float Out)
                           {
                               Out = lerp(A, B, T);
                           }

                           struct Bindings_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f
                           {
                               float3 WorldSpaceViewDirection;
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f(Bindings_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f IN, out float4 HalfDir_1)
                           {
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_1C03764F;
                               _GetMainLight_1C03764F.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_1C03764F_Direction_1;
                               half3 _GetMainLight_1C03764F_Color_2;
                               half _GetMainLight_1C03764F_DistanceAtten_3;
                               half _GetMainLight_1C03764F_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_1C03764F, _GetMainLight_1C03764F_Direction_1, _GetMainLight_1C03764F_Color_2, _GetMainLight_1C03764F_DistanceAtten_3, _GetMainLight_1C03764F_ShadowAtten_4);
                               float3 _Add_DC286F2D_Out_2;
                               Unity_Add_float3(_GetMainLight_1C03764F_Direction_1, IN.WorldSpaceViewDirection, _Add_DC286F2D_Out_2);
                               HalfDir_1 = (float4(_Add_DC286F2D_Out_2, 1.0));
                           }

                           void Unity_Normalize_float4(float4 In, out float4 Out)
                           {
                               Out = normalize(In);
                           }

                           struct Bindings_LdotH_0967663e14ef783428ddf34a3cb8dc75
                           {
                               float3 WorldSpaceViewDirection;
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_LdotH_0967663e14ef783428ddf34a3cb8dc75(Bindings_LdotH_0967663e14ef783428ddf34a3cb8dc75 IN, out float LdotH_1)
                           {
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_C7C38609;
                               _GetMainLight_C7C38609.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_C7C38609_Direction_1;
                               half3 _GetMainLight_C7C38609_Color_2;
                               half _GetMainLight_C7C38609_DistanceAtten_3;
                               half _GetMainLight_C7C38609_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_C7C38609, _GetMainLight_C7C38609_Direction_1, _GetMainLight_C7C38609_Color_2, _GetMainLight_C7C38609_DistanceAtten_3, _GetMainLight_C7C38609_ShadowAtten_4);
                               float3 _Normalize_576C5C2C_Out_1;
                               Unity_Normalize_float3(_GetMainLight_C7C38609_Direction_1, _Normalize_576C5C2C_Out_1);
                               Bindings_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f _HalfDir_3FB32179;
                               _HalfDir_3FB32179.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _HalfDir_3FB32179.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float4 _HalfDir_3FB32179_HalfDir_1;
                               SG_HalfDir_24d1774b10eafb74ab2e48cfd3e3cf4f(_HalfDir_3FB32179, _HalfDir_3FB32179_HalfDir_1);
                               float4 _Normalize_241222A3_Out_1;
                               Unity_Normalize_float4(_HalfDir_3FB32179_HalfDir_1, _Normalize_241222A3_Out_1);
                               float _DotProduct_83436721_Out_2;
                               Unity_DotProduct_float3(_Normalize_576C5C2C_Out_1, (_Normalize_241222A3_Out_1.xyz), _DotProduct_83436721_Out_2);
                               float _Clamp_F4950E2_Out_3;
                               Unity_Clamp_float(_DotProduct_83436721_Out_2, 0, 1, _Clamp_F4950E2_Out_3);
                               LdotH_1 = _Clamp_F4950E2_Out_3;
                           }

                           void Unity_Subtract_float(float A, float B, out float Out)
                           {
                               Out = A - B;
                           }

                           struct Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4
                           {
                               float3 WorldSpaceNormal;
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_NdotL_514b9649e0886bc47bd9ba2f2e977bc4(Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4 IN, out float NdotL_1)
                           {
                               float3 _Normalize_E76711A8_Out_1;
                               Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_E76711A8_Out_1);
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_2AD5B7F4;
                               _GetMainLight_2AD5B7F4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_2AD5B7F4_Direction_1;
                               half3 _GetMainLight_2AD5B7F4_Color_2;
                               half _GetMainLight_2AD5B7F4_DistanceAtten_3;
                               half _GetMainLight_2AD5B7F4_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_2AD5B7F4, _GetMainLight_2AD5B7F4_Direction_1, _GetMainLight_2AD5B7F4_Color_2, _GetMainLight_2AD5B7F4_DistanceAtten_3, _GetMainLight_2AD5B7F4_ShadowAtten_4);
                               float3 _Normalize_DE93A0D8_Out_1;
                               Unity_Normalize_float3(_GetMainLight_2AD5B7F4_Direction_1, _Normalize_DE93A0D8_Out_1);
                               float _DotProduct_CAE96C38_Out_2;
                               Unity_DotProduct_float3(_Normalize_E76711A8_Out_1, _Normalize_DE93A0D8_Out_1, _DotProduct_CAE96C38_Out_2);
                               float _Clamp_5F57126A_Out_3;
                               Unity_Clamp_float(_DotProduct_CAE96C38_Out_2, 0, 1, _Clamp_5F57126A_Out_3);
                               NdotL_1 = _Clamp_5F57126A_Out_3;
                           }

                           struct Bindings_NdotV_0491175c64680f64aa7b54a8f16c9c0a
                           {
                               float3 WorldSpaceNormal;
                               float3 WorldSpaceViewDirection;
                           };

                           void SG_NdotV_0491175c64680f64aa7b54a8f16c9c0a(Bindings_NdotV_0491175c64680f64aa7b54a8f16c9c0a IN, out float NdotV_1)
                           {
                               float3 _Normalize_7BFA9953_Out_1;
                               Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_7BFA9953_Out_1);
                               float3 _Normalize_505E2549_Out_1;
                               Unity_Normalize_float3(IN.WorldSpaceViewDirection, _Normalize_505E2549_Out_1);
                               float _DotProduct_4FD3EDE1_Out_2;
                               Unity_DotProduct_float3(_Normalize_7BFA9953_Out_1, _Normalize_505E2549_Out_1, _DotProduct_4FD3EDE1_Out_2);
                               float _Clamp_3EE21757_Out_3;
                               Unity_Clamp_float(_DotProduct_4FD3EDE1_Out_2, 0, 1, _Clamp_3EE21757_Out_3);
                               NdotV_1 = _Clamp_3EE21757_Out_3;
                           }

                           void Unity_Divide_float(float A, float B, out float Out)
                           {
                               Out = A / B;
                           }

                           struct Bindings_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c
                           {
                               float3 WorldSpaceNormal;
                               float3 WorldSpaceViewDirection;
                               float3 AbsoluteWorldSpacePosition;
                           };

                           void SG_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c(float Vector1_91BF09CC, Bindings_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c IN, out float4 Diffuse_1)
                           {
                               float _Property_8F695FD3_Out_0 = Vector1_91BF09CC;
                               float _Lerp_24F0F458_Out_3;
                               Unity_Lerp_float(0, 0.5, _Property_8F695FD3_Out_0, _Lerp_24F0F458_Out_3);
                               Bindings_LdotH_0967663e14ef783428ddf34a3cb8dc75 _LdotH_9327C3D7;
                               _LdotH_9327C3D7.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _LdotH_9327C3D7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float _LdotH_9327C3D7_LdotH_1;
                               SG_LdotH_0967663e14ef783428ddf34a3cb8dc75(_LdotH_9327C3D7, _LdotH_9327C3D7_LdotH_1);
                               float _Multiply_7234BA6_Out_2;
                               Unity_Multiply_float(_LdotH_9327C3D7_LdotH_1, _LdotH_9327C3D7_LdotH_1, _Multiply_7234BA6_Out_2);
                               float _Multiply_6D9FE265_Out_2;
                               Unity_Multiply_float(_Multiply_7234BA6_Out_2, 2, _Multiply_6D9FE265_Out_2);
                               float _Multiply_AFAF8C7E_Out_2;
                               Unity_Multiply_float(_Property_8F695FD3_Out_0, _Multiply_6D9FE265_Out_2, _Multiply_AFAF8C7E_Out_2);
                               float _Add_B51DBB9D_Out_2;
                               Unity_Add_float(_Lerp_24F0F458_Out_3, _Multiply_AFAF8C7E_Out_2, _Add_B51DBB9D_Out_2);
                               float _Subtract_7A912419_Out_2;
                               Unity_Subtract_float(_Add_B51DBB9D_Out_2, 1, _Subtract_7A912419_Out_2);
                               Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4 _NdotL_66B34D04;
                               _NdotL_66B34D04.WorldSpaceNormal = IN.WorldSpaceNormal;
                               _NdotL_66B34D04.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float _NdotL_66B34D04_NdotL_1;
                               SG_NdotL_514b9649e0886bc47bd9ba2f2e977bc4(_NdotL_66B34D04, _NdotL_66B34D04_NdotL_1);
                               float _Subtract_F86BB22C_Out_2;
                               Unity_Subtract_float(1, _NdotL_66B34D04_NdotL_1, _Subtract_F86BB22C_Out_2);
                               float _Power_F54B92ED_Out_2;
                               Unity_Power_float(_Subtract_F86BB22C_Out_2, 5, _Power_F54B92ED_Out_2);
                               float _Multiply_6A61109_Out_2;
                               Unity_Multiply_float(_Subtract_7A912419_Out_2, _Power_F54B92ED_Out_2, _Multiply_6A61109_Out_2);
                               float _Add_B6BBFAED_Out_2;
                               Unity_Add_float(_Multiply_6A61109_Out_2, 1, _Add_B6BBFAED_Out_2);
                               Bindings_NdotV_0491175c64680f64aa7b54a8f16c9c0a _NdotV_20986529;
                               _NdotV_20986529.WorldSpaceNormal = IN.WorldSpaceNormal;
                               _NdotV_20986529.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               float _NdotV_20986529_NdotV_1;
                               SG_NdotV_0491175c64680f64aa7b54a8f16c9c0a(_NdotV_20986529, _NdotV_20986529_NdotV_1);
                               float _Subtract_9F9C4CA4_Out_2;
                               Unity_Subtract_float(1, _NdotV_20986529_NdotV_1, _Subtract_9F9C4CA4_Out_2);
                               float _Power_8191087F_Out_2;
                               Unity_Power_float(_Subtract_9F9C4CA4_Out_2, 5, _Power_8191087F_Out_2);
                               float _Multiply_B701DAF5_Out_2;
                               Unity_Multiply_float(_Subtract_7A912419_Out_2, _Power_8191087F_Out_2, _Multiply_B701DAF5_Out_2);
                               float _Add_745413EB_Out_2;
                               Unity_Add_float(_Multiply_B701DAF5_Out_2, 1, _Add_745413EB_Out_2);
                               float _Multiply_B35CD4CE_Out_2;
                               Unity_Multiply_float(_Add_B6BBFAED_Out_2, _Add_745413EB_Out_2, _Multiply_B35CD4CE_Out_2);
                               float _Divide_FA81D92E_Out_2;
                               Unity_Divide_float(1, 1.51, _Divide_FA81D92E_Out_2);
                               float _Lerp_2F892A57_Out_3;
                               Unity_Lerp_float(1, _Divide_FA81D92E_Out_2, _Property_8F695FD3_Out_0, _Lerp_2F892A57_Out_3);
                               float _Multiply_6EB67BC4_Out_2;
                               Unity_Multiply_float(_Multiply_B35CD4CE_Out_2, _Lerp_2F892A57_Out_3, _Multiply_6EB67BC4_Out_2);
                               float _Divide_7942D41B_Out_2;
                               Unity_Divide_float(_Multiply_6EB67BC4_Out_2, 3.14157, _Divide_7942D41B_Out_2);
                               Diffuse_1 = (_Divide_7942D41B_Out_2.xxxx);
                           }

                           void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                           {
                               Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                           }

                           void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                           {
                               Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                           }

                           void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
                           {
                               Out = Predicate ? True : False;
                           }

                           void Unity_Clamp_float4(float4 In, float4 Min, float4 Max, out float4 Out)
                           {
                               Out = clamp(In, Min, Max);
                           }

                           void Unity_OneMinus_float(float In, out float Out)
                           {
                               Out = 1 - In;
                           }

                           void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                           {
                               Out = A + B;
                           }

                           void Unity_Blend_Multiply_float4(float4 Base, float4 Blend, out float4 Out, float Opacity)
                           {
                               Out = Base * Blend;
                               Out = lerp(Base, Out, Opacity);
                           }

                           void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
                           {
                               Out = A * B;
                           }

                           void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                           {
                               Out = A + B;
                           }

                           void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                           {
                               Out = Predicate ? True : False;
                           }

                           void Unity_Rotate_Radians_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                           {
                               //rotation matrix
                               UV -= Center;
                               float s = sin(Rotation);
                               float c = cos(Rotation);

                               //center rotation matrix
                               float2x2 rMatrix = float2x2(c, -s, s, c);
                               rMatrix *= 0.5;
                               rMatrix += 0.5;
                               rMatrix = rMatrix * 2 - 1;

                               //multiply the UVs by the rotation matrix
                               UV.xy = mul(UV.xy, rMatrix);
                               UV += Center;

                               Out = UV;
                           }

                           void Unity_Blend_Screen_float4(float4 Base, float4 Blend, out float4 Out, float Opacity)
                           {
                               Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
                               Out = lerp(Base, Out, Opacity);
                           }


                           inline float Unity_SimpleNoise_RandomValue_float(float2 uv)
                           {
                               return frac(sin(dot(uv, float2(12.9898, 78.233))) * 43758.5453);
                           }

                           inline float Unity_SimpleNnoise_Interpolate_float(float a, float b, float t)
                           {
                               return (1.0 - t) * a + (t * b);
                           }


                           inline float Unity_SimpleNoise_ValueNoise_float(float2 uv)
                           {
                               float2 i = floor(uv);
                               float2 f = frac(uv);
                               f = f * f * (3.0 - 2.0 * f);

                               uv = abs(frac(uv) - 0.5);
                               float2 c0 = i + float2(0.0, 0.0);
                               float2 c1 = i + float2(1.0, 0.0);
                               float2 c2 = i + float2(0.0, 1.0);
                               float2 c3 = i + float2(1.0, 1.0);
                               float r0 = Unity_SimpleNoise_RandomValue_float(c0);
                               float r1 = Unity_SimpleNoise_RandomValue_float(c1);
                               float r2 = Unity_SimpleNoise_RandomValue_float(c2);
                               float r3 = Unity_SimpleNoise_RandomValue_float(c3);

                               float bottomOfGrid = Unity_SimpleNnoise_Interpolate_float(r0, r1, f.x);
                               float topOfGrid = Unity_SimpleNnoise_Interpolate_float(r2, r3, f.x);
                               float t = Unity_SimpleNnoise_Interpolate_float(bottomOfGrid, topOfGrid, f.y);
                               return t;
                           }
                           void Unity_SimpleNoise_float(float2 UV, float Scale, out float Out)
                           {
                               float t = 0.0;

                               float freq = pow(2.0, float(0));
                               float amp = pow(0.5, float(3 - 0));
                               t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

                               freq = pow(2.0, float(1));
                               amp = pow(0.5, float(3 - 1));
                               t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

                               freq = pow(2.0, float(2));
                               amp = pow(0.5, float(3 - 2));
                               t += Unity_SimpleNoise_ValueNoise_float(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

                               Out = t;
                           }

                           void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                           {
                               Out = lerp(A, B, T);
                           }

                           void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                           {
                               Out = lerp(A, B, T);
                           }

                           void Unity_CrossProduct_float(float3 A, float3 B, out float3 Out)
                           {
                               Out = cross(A, B);
                           }

                           void Unity_Arctangent2_float3(float3 A, float3 B, out float3 Out)
                           {
                               Out = atan2(A, B);
                           }

                           void Unity_Length_float(float In, out float Out)
                           {
                               Out = length(In);
                           }

                           // Graph Vertex
                           // GraphVertex: <None>

                           // Graph Pixel
                           struct SurfaceDescriptionInputs
                           {
                               float3 WorldSpaceNormal;
                               float3 TangentSpaceNormal;
                               float3 WorldSpaceViewDirection;
                               float3 WorldSpacePosition;
                               float3 AbsoluteWorldSpacePosition;
                               float4 ScreenPosition;
                               float4 uv0;
                               float4 uv1;
                               float4 uv2;
                               float4 VertexColor;
                           };

                           struct SurfaceDescription
                           {
                               float3 Albedo;
                               float3 Emission;
                               float Alpha;
                               float AlphaClipThreshold;
                           };

                           SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                           {
                               SurfaceDescription surface = (SurfaceDescription)0;
                               Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b _CalculateAdditionalLights_DE348527;
                               _CalculateAdditionalLights_DE348527.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _CalculateAdditionalLights_DE348527.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float3 _CalculateAdditionalLights_DE348527_Diffuse_0;
                               float3 _CalculateAdditionalLights_DE348527_Specular_1;
                               float _CalculateAdditionalLights_DE348527_ShadowValue_2;
                               float3 _CalculateAdditionalLights_DE348527_AddLight_3;
                               SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 (0, 0, 0, 0), 0, half3 (0, 0, 0), _CalculateAdditionalLights_DE348527, _CalculateAdditionalLights_DE348527_Diffuse_0, _CalculateAdditionalLights_DE348527_Specular_1, _CalculateAdditionalLights_DE348527_ShadowValue_2, _CalculateAdditionalLights_DE348527_AddLight_3);
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_3CDE11A1;
                               _GetMainLight_3CDE11A1.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_3CDE11A1_Direction_1;
                               half3 _GetMainLight_3CDE11A1_Color_2;
                               half _GetMainLight_3CDE11A1_DistanceAtten_3;
                               half _GetMainLight_3CDE11A1_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_3CDE11A1, _GetMainLight_3CDE11A1_Direction_1, _GetMainLight_3CDE11A1_Color_2, _GetMainLight_3CDE11A1_DistanceAtten_3, _GetMainLight_3CDE11A1_ShadowAtten_4);
                               float3 _Normalize_42E51F1E_Out_1;
                               Unity_Normalize_float3(_GetMainLight_3CDE11A1_Direction_1, _Normalize_42E51F1E_Out_1);
                               float3 _Normalize_A07F6FFA_Out_1;
                               Unity_Normalize_float3(IN.WorldSpaceNormal, _Normalize_A07F6FFA_Out_1);
                               float _DotProduct_A1806053_Out_2;
                               Unity_DotProduct_float3(_Normalize_42E51F1E_Out_1, _Normalize_A07F6FFA_Out_1, _DotProduct_A1806053_Out_2);
                               float _Multiply_98EDC26D_Out_2;
                               Unity_Multiply_float(_DotProduct_A1806053_Out_2, 0.5, _Multiply_98EDC26D_Out_2);
                               float _Add_591BAC8B_Out_2;
                               Unity_Add_float(_Multiply_98EDC26D_Out_2, 0.5, _Add_591BAC8B_Out_2);
                               float _Add_C8D7186B_Out_2;
                               Unity_Add_float(_CalculateAdditionalLights_DE348527_ShadowValue_2, _Add_591BAC8B_Out_2, _Add_C8D7186B_Out_2);
                               float _Clamp_9C3D662_Out_3;
                               Unity_Clamp_float(_Add_C8D7186B_Out_2, 0, 1, _Clamp_9C3D662_Out_3);
                               float _Property_68A12F69_Out_0 = Vector1_6178D656;
                               float _Property_1F447E91_Out_0 = Vector1_1EDA5197;
                               float _Remap_5EBC1AB8_Out_3;
                               Unity_Remap_float(_Property_1F447E91_Out_0, float2 (0, 1), float2 (20, 1), _Remap_5EBC1AB8_Out_3);
                               float _FresnelEffect_E58634BA_Out_3;
                               Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Remap_5EBC1AB8_Out_3, _FresnelEffect_E58634BA_Out_3);
                               float _Property_994CAA9F_Out_0 = Boolean_BD2F928D;
                               float4 _Property_629EB20E_Out_0 = Vector4_6445BC47;
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_5FA42A07;
                               _GetMainLight_5FA42A07.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_5FA42A07_Direction_1;
                               half3 _GetMainLight_5FA42A07_Color_2;
                               half _GetMainLight_5FA42A07_DistanceAtten_3;
                               half _GetMainLight_5FA42A07_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_5FA42A07, _GetMainLight_5FA42A07_Direction_1, _GetMainLight_5FA42A07_Color_2, _GetMainLight_5FA42A07_DistanceAtten_3, _GetMainLight_5FA42A07_ShadowAtten_4);
                               float3 _Branch_85DD9287_Out_3;
                               Unity_Branch_float3(_Property_994CAA9F_Out_0, (_Property_629EB20E_Out_0.xyz), _GetMainLight_5FA42A07_Direction_1, _Branch_85DD9287_Out_3);
                               float _DotProduct_D359F547_Out_2;
                               Unity_DotProduct_float3(_Branch_85DD9287_Out_3, IN.WorldSpaceNormal, _DotProduct_D359F547_Out_2);
                               float _Multiply_C1318770_Out_2;
                               Unity_Multiply_float(_DotProduct_D359F547_Out_2, 0.5, _Multiply_C1318770_Out_2);
                               float _Add_D860EA94_Out_2;
                               Unity_Add_float(_Multiply_C1318770_Out_2, 0.5, _Add_D860EA94_Out_2);
                               float _Multiply_DD7E99B5_Out_2;
                               Unity_Multiply_float(_FresnelEffect_E58634BA_Out_3, _Add_D860EA94_Out_2, _Multiply_DD7E99B5_Out_2);
                               float _Step_B28362F5_Out_2;
                               Unity_Step_float(_Property_68A12F69_Out_0, _Multiply_DD7E99B5_Out_2, _Step_B28362F5_Out_2);
                               float4 _Property_675881D2_Out_0 = Color_B09665EF;
                               float4 _Multiply_A768ECE5_Out_2;
                               Unity_Multiply_float((_Step_B28362F5_Out_2.xxxx), _Property_675881D2_Out_0, _Multiply_A768ECE5_Out_2);
                               float4 _Multiply_6CDBCFC_Out_2;
                               Unity_Multiply_float((_Clamp_9C3D662_Out_3.xxxx), _Multiply_A768ECE5_Out_2, _Multiply_6CDBCFC_Out_2);
                               float _Property_5E93A642_Out_0 = Vector1_12A795A8;
                               float4 _Multiply_66C1A223_Out_2;
                               Unity_Multiply_float(_Multiply_6CDBCFC_Out_2, (_Property_5E93A642_Out_0.xxxx), _Multiply_66C1A223_Out_2);
                               float _Property_49A8F707_Out_0 = Boolean_680D4A4D;
                               float3 _Branch_1783B76B_Out_3;
                               Unity_Branch_float3(_Property_49A8F707_Out_0, IN.WorldSpaceNormal, float3(0, 1, 0), _Branch_1783B76B_Out_3);
                               Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b _CalculateAdditionalLights_4C9B04CD;
                               _CalculateAdditionalLights_4C9B04CD.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _CalculateAdditionalLights_4C9B04CD.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float3 _CalculateAdditionalLights_4C9B04CD_Diffuse_0;
                               float3 _CalculateAdditionalLights_4C9B04CD_Specular_1;
                               float _CalculateAdditionalLights_4C9B04CD_ShadowValue_2;
                               float3 _CalculateAdditionalLights_4C9B04CD_AddLight_3;
                               SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 (0, 0, 0, 0), 0, _Branch_1783B76B_Out_3, _CalculateAdditionalLights_4C9B04CD, _CalculateAdditionalLights_4C9B04CD_Diffuse_0, _CalculateAdditionalLights_4C9B04CD_Specular_1, _CalculateAdditionalLights_4C9B04CD_ShadowValue_2, _CalculateAdditionalLights_4C9B04CD_AddLight_3);
                               float4 _Property_3732CCD4_Out_0 = Color_4808C50D;
                               Gradient _Gradient_5F2A0A5B_Out_0 = NewGradient(0, 2, 2, float4(1, 1, 1, 0),float4(1, 1, 1, 1),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0), float2(1, 0),float2(1, 1),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0));
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_BDB0AFB3;
                               _GetMainLight_BDB0AFB3.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_BDB0AFB3_Direction_1;
                               half3 _GetMainLight_BDB0AFB3_Color_2;
                               half _GetMainLight_BDB0AFB3_DistanceAtten_3;
                               half _GetMainLight_BDB0AFB3_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_BDB0AFB3, _GetMainLight_BDB0AFB3_Direction_1, _GetMainLight_BDB0AFB3_Color_2, _GetMainLight_BDB0AFB3_DistanceAtten_3, _GetMainLight_BDB0AFB3_ShadowAtten_4);
                               float _Vector1_2E45A686_Out_0 = -1;
                               float3 _Multiply_B36285C6_Out_2;
                               Unity_Multiply_float(_GetMainLight_BDB0AFB3_Direction_1, (_Vector1_2E45A686_Out_0.xxx), _Multiply_B36285C6_Out_2);
                               float _DotProduct_2D9940A3_Out_2;
                               Unity_DotProduct_float3(IN.WorldSpaceViewDirection, _Multiply_B36285C6_Out_2, _DotProduct_2D9940A3_Out_2);
                               float _Clamp_F3D18B04_Out_3;
                               Unity_Clamp_float(_DotProduct_2D9940A3_Out_2, 0, 1, _Clamp_F3D18B04_Out_3);
                               float _Property_FA95AC14_Out_0 = Vector1_1FE38482;
                               float _FresnelEffect_8F18321E_Out_3;
                               Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_FA95AC14_Out_0, _FresnelEffect_8F18321E_Out_3);
                               float _Multiply_86496316_Out_2;
                               Unity_Multiply_float(_Clamp_F3D18B04_Out_3, _FresnelEffect_8F18321E_Out_3, _Multiply_86496316_Out_2);
                               float _DotProduct_2D6A498_Out_2;
                               Unity_DotProduct_float3(IN.WorldSpaceNormal, _GetMainLight_BDB0AFB3_Direction_1, _DotProduct_2D6A498_Out_2);
                               float _Multiply_286E4F93_Out_2;
                               Unity_Multiply_float(_DotProduct_2D6A498_Out_2, 0.5, _Multiply_286E4F93_Out_2);
                               float _Add_8A831AAC_Out_2;
                               Unity_Add_float(_Multiply_286E4F93_Out_2, 0.5, _Add_8A831AAC_Out_2);
                               float _Multiply_63E70A49_Out_2;
                               Unity_Multiply_float(_Multiply_86496316_Out_2, _Add_8A831AAC_Out_2, _Multiply_63E70A49_Out_2);
                               float _Step_CC7CE998_Out_2;
                               Unity_Step_float(0.7, _GetMainLight_BDB0AFB3_ShadowAtten_4, _Step_CC7CE998_Out_2);
                               float _Multiply_153A89F5_Out_2;
                               Unity_Multiply_float(_Multiply_63E70A49_Out_2, _Step_CC7CE998_Out_2, _Multiply_153A89F5_Out_2);
                               float4 _SampleGradient_F4287D69_Out_2;
                               Unity_SampleGradient_float(_Gradient_5F2A0A5B_Out_0, _Multiply_153A89F5_Out_2, _SampleGradient_F4287D69_Out_2);
                               float4 _Multiply_FB28F3BA_Out_2;
                               Unity_Multiply_float(_Property_3732CCD4_Out_0, _SampleGradient_F4287D69_Out_2, _Multiply_FB28F3BA_Out_2);
                               float4 _Property_9E496C1F_Out_0 = Color_2901119A;
                               float _Property_3EF4D2A9_Out_0 = Boolean_C67EB6EB;
                               float _Split_FE680A83_R_1 = IN.VertexColor[0];
                               float _Split_FE680A83_G_2 = IN.VertexColor[1];
                               float _Split_FE680A83_B_3 = IN.VertexColor[2];
                               float _Split_FE680A83_A_4 = IN.VertexColor[3];
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_C8BF5F53;
                               _GetMainLight_C8BF5F53.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_C8BF5F53_Direction_1;
                               half3 _GetMainLight_C8BF5F53_Color_2;
                               half _GetMainLight_C8BF5F53_DistanceAtten_3;
                               half _GetMainLight_C8BF5F53_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_C8BF5F53, _GetMainLight_C8BF5F53_Direction_1, _GetMainLight_C8BF5F53_Color_2, _GetMainLight_C8BF5F53_DistanceAtten_3, _GetMainLight_C8BF5F53_ShadowAtten_4);
                               float3 _Add_168961AA_Out_2;
                               Unity_Add_float3(_GetMainLight_C8BF5F53_Direction_1, IN.WorldSpaceViewDirection, _Add_168961AA_Out_2);
                               float3 _Normalize_71C13912_Out_1;
                               Unity_Normalize_float3(_Add_168961AA_Out_2, _Normalize_71C13912_Out_1);
                               float _Split_397F50B_R_1 = _Normalize_71C13912_Out_1[0];
                               float _Split_397F50B_G_2 = _Normalize_71C13912_Out_1[1];
                               float _Split_397F50B_B_3 = _Normalize_71C13912_Out_1[2];
                               float _Split_397F50B_A_4 = 0;
                               float _Remap_54F39885_Out_3;
                               Unity_Remap_float(_Split_397F50B_R_1, float2 (-1, 1), float2 (0, 0), _Remap_54F39885_Out_3);
                               float _Remap_F850BC9E_Out_3;
                               Unity_Remap_float(_Split_397F50B_G_2, float2 (-1, 1), float2 (-0.015, 0.015), _Remap_F850BC9E_Out_3);
                               float2 _Vector2_DE21F35B_Out_0 = float2(_Remap_54F39885_Out_3, _Remap_F850BC9E_Out_3);
                               Bindings_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d _HairSpecularOffset_15D636D6;
                               _HairSpecularOffset_15D636D6.WorldSpaceNormal = IN.WorldSpaceNormal;
                               _HairSpecularOffset_15D636D6.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _HairSpecularOffset_15D636D6.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               _HairSpecularOffset_15D636D6.uv1 = IN.uv1;
                               float _HairSpecularOffset_15D636D6_OutVector4_1;
                               SG_HairSpecularOffset_cf8beeac80870064e8535aabf407cc4d(TEXTURE2D_ARGS(Texture2D_E19E455, samplerTexture2D_E19E455), Texture2D_E19E455_TexelSize, _Vector2_DE21F35B_Out_0, _HairSpecularOffset_15D636D6, _HairSpecularOffset_15D636D6_OutVector4_1);
                               float4 _Property_A43E8711_Out_0 = Color_D106E8A;
                               float4 _Multiply_B7EB0BBA_Out_2;
                               Unity_Multiply_float((_HairSpecularOffset_15D636D6_OutVector4_1.xxxx), _Property_A43E8711_Out_0, _Multiply_B7EB0BBA_Out_2);
                               Bindings_Specular_ec205ff2dfef6114f92e2fda01c553db _Specular_F90232C4;
                               _Specular_F90232C4.WorldSpaceNormal = IN.WorldSpaceNormal;
                               _Specular_F90232C4.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _Specular_F90232C4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float _Specular_F90232C4_SpecularValue_1;
                               SG_Specular_ec205ff2dfef6114f92e2fda01c553db(float3 (0, 0, 0), _Specular_F90232C4, _Specular_F90232C4_SpecularValue_1);
                               float4 _SampleTexture2D_D8FE27D5_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_DE92BF0, samplerTexture2D_DE92BF0, IN.uv0.xy);
                               float _SampleTexture2D_D8FE27D5_R_4 = _SampleTexture2D_D8FE27D5_RGBA_0.r;
                               float _SampleTexture2D_D8FE27D5_G_5 = _SampleTexture2D_D8FE27D5_RGBA_0.g;
                               float _SampleTexture2D_D8FE27D5_B_6 = _SampleTexture2D_D8FE27D5_RGBA_0.b;
                               float _SampleTexture2D_D8FE27D5_A_7 = _SampleTexture2D_D8FE27D5_RGBA_0.a;
                               float _Multiply_8FC04BB0_Out_2;
                               Unity_Multiply_float(_Specular_F90232C4_SpecularValue_1, _SampleTexture2D_D8FE27D5_B_6, _Multiply_8FC04BB0_Out_2);
                               float _Clamp_1819EFC2_Out_3;
                               Unity_Clamp_float(_Multiply_8FC04BB0_Out_2, 0, 1, _Clamp_1819EFC2_Out_3);
                               float _Property_E99639F4_Out_0 = Vector1_14D51B31;
                               float _Power_97A531F7_Out_2;
                               Unity_Power_float(_Clamp_1819EFC2_Out_3, _Property_E99639F4_Out_0, _Power_97A531F7_Out_2);
                               float _Property_E27E3B64_Out_0 = Vector1_C7DB18C5;
                               float2 _Vector2_EF16958F_Out_0 = float2(_Power_97A531F7_Out_2, _Property_E27E3B64_Out_0);
                               float _Property_695E1FF4_Out_0 = Vector1_7D259053;
                               float2 _Vector2_E21513_Out_0 = float2(_Property_695E1FF4_Out_0, 0);
                               float2 _TilingAndOffset_CC2D88DE_Out_3;
                               Unity_TilingAndOffset_float(_Vector2_EF16958F_Out_0, float2 (1, 1), _Vector2_E21513_Out_0, _TilingAndOffset_CC2D88DE_Out_3);
                               float4 _SampleTexture2D_646CEB63_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_CC2D88DE_Out_3);
                               float _SampleTexture2D_646CEB63_R_4 = _SampleTexture2D_646CEB63_RGBA_0.r;
                               float _SampleTexture2D_646CEB63_G_5 = _SampleTexture2D_646CEB63_RGBA_0.g;
                               float _SampleTexture2D_646CEB63_B_6 = _SampleTexture2D_646CEB63_RGBA_0.b;
                               float _SampleTexture2D_646CEB63_A_7 = _SampleTexture2D_646CEB63_RGBA_0.a;
                               float _Property_B15B33A8_Out_0 = Boolean_6D5CF815;
                               float4 _Property_4458853E_Out_0 = Color_C3892D16;
                               float3 _ColorspaceConversion_941D60B2_Out_1;
                               Unity_ColorspaceConversion_RGB_HSV_float((_Property_4458853E_Out_0.xyz), _ColorspaceConversion_941D60B2_Out_1);
                               float _Split_1DDBE8BA_R_1 = _ColorspaceConversion_941D60B2_Out_1[0];
                               float _Split_1DDBE8BA_G_2 = _ColorspaceConversion_941D60B2_Out_1[1];
                               float _Split_1DDBE8BA_B_3 = _ColorspaceConversion_941D60B2_Out_1[2];
                               float _Split_1DDBE8BA_A_4 = 0;
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_1B5E1E24;
                               _GetMainLight_1B5E1E24.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_1B5E1E24_Direction_1;
                               half3 _GetMainLight_1B5E1E24_Color_2;
                               half _GetMainLight_1B5E1E24_DistanceAtten_3;
                               half _GetMainLight_1B5E1E24_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_1B5E1E24, _GetMainLight_1B5E1E24_Direction_1, _GetMainLight_1B5E1E24_Color_2, _GetMainLight_1B5E1E24_DistanceAtten_3, _GetMainLight_1B5E1E24_ShadowAtten_4);
                               float3 _Clamp_4CD6697C_Out_3;
                               Unity_Clamp_float3(_GetMainLight_1B5E1E24_Color_2, float3(0, 0, 0), float3(1, 1, 1), _Clamp_4CD6697C_Out_3);
                               float3 _Branch_1CB508C3_Out_3;
                               Unity_Branch_float3(_Property_B15B33A8_Out_0, (_Split_1DDBE8BA_B_3.xxx), _Clamp_4CD6697C_Out_3, _Branch_1CB508C3_Out_3);
                               float3 _Multiply_8298097F_Out_2;
                               Unity_Multiply_float((_SampleTexture2D_646CEB63_G_5.xxx), _Branch_1CB508C3_Out_3, _Multiply_8298097F_Out_2);
                               float4 _Property_7A722D5E_Out_0 = Color_30008A8C;
                               float _Split_EDF65879_R_1 = _Property_7A722D5E_Out_0[0];
                               float _Split_EDF65879_G_2 = _Property_7A722D5E_Out_0[1];
                               float _Split_EDF65879_B_3 = _Property_7A722D5E_Out_0[2];
                               float _Split_EDF65879_A_4 = _Property_7A722D5E_Out_0[3];
                               float4 _Multiply_6EBA7981_Out_2;
                               Unity_Multiply_float(_Property_7A722D5E_Out_0, (_Split_EDF65879_A_4.xxxx), _Multiply_6EBA7981_Out_2);
                               float3 _Multiply_23E1A03A_Out_2;
                               Unity_Multiply_float(_Multiply_8298097F_Out_2, (_Multiply_6EBA7981_Out_2.xyz), _Multiply_23E1A03A_Out_2);
                               Bindings_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b _CalculateAdditionalLights_C812550F;
                               _CalculateAdditionalLights_C812550F.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _CalculateAdditionalLights_C812550F.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float3 _CalculateAdditionalLights_C812550F_Diffuse_0;
                               float3 _CalculateAdditionalLights_C812550F_Specular_1;
                               float _CalculateAdditionalLights_C812550F_ShadowValue_2;
                               float3 _CalculateAdditionalLights_C812550F_AddLight_3;
                               SG_CalculateAdditionalLights_8578e370a0c1d0145a8a7724eaf3658b(half4 (0, 0, 0, 0), 0, IN.WorldSpaceNormal, _CalculateAdditionalLights_C812550F, _CalculateAdditionalLights_C812550F_Diffuse_0, _CalculateAdditionalLights_C812550F_Specular_1, _CalculateAdditionalLights_C812550F_ShadowValue_2, _CalculateAdditionalLights_C812550F_AddLight_3);
                               float _Property_B5FCA258_Out_0 = Vector1_597CA0EC;
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_F66481C4;
                               _GetMainLight_F66481C4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_F66481C4_Direction_1;
                               half3 _GetMainLight_F66481C4_Color_2;
                               half _GetMainLight_F66481C4_DistanceAtten_3;
                               half _GetMainLight_F66481C4_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_F66481C4, _GetMainLight_F66481C4_Direction_1, _GetMainLight_F66481C4_Color_2, _GetMainLight_F66481C4_DistanceAtten_3, _GetMainLight_F66481C4_ShadowAtten_4);
                               float _Add_C67D54D8_Out_2;
                               Unity_Add_float(_Property_B5FCA258_Out_0, _GetMainLight_F66481C4_ShadowAtten_4, _Add_C67D54D8_Out_2);
                               float _Clamp_DF8E9816_Out_3;
                               Unity_Clamp_float(_Add_C67D54D8_Out_2, 0, 1, _Clamp_DF8E9816_Out_3);
                               float _Property_B8BC590B_Out_0 = Boolean_18010446;
                               Bindings_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c _BRDFDiffuse_4618B55C;
                               _BRDFDiffuse_4618B55C.WorldSpaceNormal = IN.WorldSpaceNormal;
                               _BRDFDiffuse_4618B55C.WorldSpaceViewDirection = IN.WorldSpaceViewDirection;
                               _BRDFDiffuse_4618B55C.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float4 _BRDFDiffuse_4618B55C_Diffuse_1;
                               SG_BRDFDiffuse_eaf422ac75f3f834996bc76e0399335c(0, _BRDFDiffuse_4618B55C, _BRDFDiffuse_4618B55C_Diffuse_1);
                               float _Property_99DD7FB2_Out_0 = Boolean_BD2F928D;
                               float4 _Property_6490E027_Out_0 = Vector4_6445BC47;
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_5063FB97;
                               _GetMainLight_5063FB97.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_5063FB97_Direction_1;
                               half3 _GetMainLight_5063FB97_Color_2;
                               half _GetMainLight_5063FB97_DistanceAtten_3;
                               half _GetMainLight_5063FB97_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_5063FB97, _GetMainLight_5063FB97_Direction_1, _GetMainLight_5063FB97_Color_2, _GetMainLight_5063FB97_DistanceAtten_3, _GetMainLight_5063FB97_ShadowAtten_4);
                               float3 _Branch_5BA182D_Out_3;
                               Unity_Branch_float3(_Property_99DD7FB2_Out_0, (_Property_6490E027_Out_0.xyz), _GetMainLight_5063FB97_Direction_1, _Branch_5BA182D_Out_3);
                               float3 _Normalize_99B2299A_Out_1;
                               Unity_Normalize_float3(_Branch_5BA182D_Out_3, _Normalize_99B2299A_Out_1);
                               float4 _Property_187395B1_Out_0 = Vector4_FF4B755C;
                               float _Split_15ED24B4_R_1 = _Property_187395B1_Out_0[0];
                               float _Split_15ED24B4_G_2 = _Property_187395B1_Out_0[1];
                               float _Split_15ED24B4_B_3 = _Property_187395B1_Out_0[2];
                               float _Split_15ED24B4_A_4 = _Property_187395B1_Out_0[3];
                               float2 _Vector2_1A23EE33_Out_0 = float2(_Split_15ED24B4_R_1, _Split_15ED24B4_G_2);
                               float2 _Vector2_80176567_Out_0 = float2(_Split_15ED24B4_B_3, _Split_15ED24B4_A_4);
                               float2 _TilingAndOffset_759FF228_Out_3;
                               Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_1A23EE33_Out_0, _Vector2_80176567_Out_0, _TilingAndOffset_759FF228_Out_3);
                               float4 _SampleTexture2D_CA86F5A3_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_AFFE0F8C, samplerTexture2D_AFFE0F8C, _TilingAndOffset_759FF228_Out_3);
                               _SampleTexture2D_CA86F5A3_RGBA_0.rgb = UnpackNormalRGB(_SampleTexture2D_CA86F5A3_RGBA_0);
                               float _SampleTexture2D_CA86F5A3_R_4 = _SampleTexture2D_CA86F5A3_RGBA_0.r;
                               float _SampleTexture2D_CA86F5A3_G_5 = _SampleTexture2D_CA86F5A3_RGBA_0.g;
                               float _SampleTexture2D_CA86F5A3_B_6 = _SampleTexture2D_CA86F5A3_RGBA_0.b;
                               float _SampleTexture2D_CA86F5A3_A_7 = _SampleTexture2D_CA86F5A3_RGBA_0.a;
                               float _Property_7EE61BC_Out_0 = Vector1_E10F59B8;
                               float3 _NormalStrength_7201E44E_Out_2;
                               Unity_NormalStrength_float((_SampleTexture2D_CA86F5A3_RGBA_0.xyz), _Property_7EE61BC_Out_0, _NormalStrength_7201E44E_Out_2);
                               float3 _NormalBlend_C2FC5356_Out_2;
                               Unity_NormalBlend_float(IN.WorldSpaceNormal, _NormalStrength_7201E44E_Out_2, _NormalBlend_C2FC5356_Out_2);
                               float3 _Normalize_55BBC3A8_Out_1;
                               Unity_Normalize_float3(_NormalBlend_C2FC5356_Out_2, _Normalize_55BBC3A8_Out_1);
                               float _DotProduct_182F1931_Out_2;
                               Unity_DotProduct_float3(_Normalize_99B2299A_Out_1, _Normalize_55BBC3A8_Out_1, _DotProduct_182F1931_Out_2);
                               float4 _Branch_6C3A3F54_Out_3;
                               Unity_Branch_float4(_Property_B8BC590B_Out_0, _BRDFDiffuse_4618B55C_Diffuse_1, (_DotProduct_182F1931_Out_2.xxxx), _Branch_6C3A3F54_Out_3);
                               float4 _Multiply_65162FD0_Out_2;
                               Unity_Multiply_float((_Clamp_DF8E9816_Out_3.xxxx), _Branch_6C3A3F54_Out_3, _Multiply_65162FD0_Out_2);
                               float4 _Clamp_224BDDF6_Out_3;
                               Unity_Clamp_float4(_Multiply_65162FD0_Out_2, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_224BDDF6_Out_3);
                               float _Property_ABC33C5D_Out_0 = Vector1_1E9C8C1F;
                               float4 _Multiply_3144A62E_Out_2;
                               Unity_Multiply_float(_Clamp_224BDDF6_Out_3, (_Property_ABC33C5D_Out_0.xxxx), _Multiply_3144A62E_Out_2);
                               float _OneMinus_77654B0A_Out_1;
                               Unity_OneMinus_float(_Property_ABC33C5D_Out_0, _OneMinus_77654B0A_Out_1);
                               float4 _Add_F6E6DC2A_Out_2;
                               Unity_Add_float4(_Multiply_3144A62E_Out_2, (_OneMinus_77654B0A_Out_1.xxxx), _Add_F6E6DC2A_Out_2);
                               float _Remap_94D844C_Out_3;
                               Unity_Remap_float(_SampleTexture2D_D8FE27D5_R_4, float2 (0, 1), float2 (-1, 1), _Remap_94D844C_Out_3);
                               float _Split_419BDB3_R_1 = _Remap_94D844C_Out_3;
                               float _Split_419BDB3_G_2 = 0;
                               float _Split_419BDB3_B_3 = 0;
                               float _Split_419BDB3_A_4 = 0;
                               float4 _Add_5ACD5DD1_Out_2;
                               Unity_Add_float4(_Add_F6E6DC2A_Out_2, (_Split_419BDB3_R_1.xxxx), _Add_5ACD5DD1_Out_2);
                               float4 _Add_42A5560D_Out_2;
                               Unity_Add_float4((_CalculateAdditionalLights_C812550F_ShadowValue_2.xxxx), _Add_5ACD5DD1_Out_2, _Add_42A5560D_Out_2);
                               float4 _Clamp_2DD46803_Out_3;
                               Unity_Clamp_float4(_Add_42A5560D_Out_2, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_2DD46803_Out_3);
                               float _Property_898E8E41_Out_0 = Vector1_492E7F16;
                               float2 _Vector2_BFBB86A1_Out_0 = float2((_Clamp_2DD46803_Out_3).x, _Property_898E8E41_Out_0);
                               float _Property_66D890_Out_0 = Vector1_193A1ED3;
                               float2 _Vector2_7E947795_Out_0 = float2(_Property_66D890_Out_0, 0);
                               float2 _TilingAndOffset_79804C4_Out_3;
                               Unity_TilingAndOffset_float(_Vector2_BFBB86A1_Out_0, float2 (1, 1), _Vector2_7E947795_Out_0, _TilingAndOffset_79804C4_Out_3);
                               float4 _SampleTexture2D_D0357AA8_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_79804C4_Out_3);
                               float _SampleTexture2D_D0357AA8_R_4 = _SampleTexture2D_D0357AA8_RGBA_0.r;
                               float _SampleTexture2D_D0357AA8_G_5 = _SampleTexture2D_D0357AA8_RGBA_0.g;
                               float _SampleTexture2D_D0357AA8_B_6 = _SampleTexture2D_D0357AA8_RGBA_0.b;
                               float _SampleTexture2D_D0357AA8_A_7 = _SampleTexture2D_D0357AA8_RGBA_0.a;
                               float4 _Property_511552F2_Out_0 = Color_E1F70A85;
                               float4 _Blend_61BB58A0_Out_2;
                               Unity_Blend_Multiply_float4((_SampleTexture2D_D0357AA8_G_5.xxxx), _Property_511552F2_Out_0, _Blend_61BB58A0_Out_2, 1);
                               float2 _Vector2_C59C5490_Out_0 = float2((_Clamp_2DD46803_Out_3).x, (_Clamp_2DD46803_Out_3).x);
                               float2 _Multiply_9750DFFF_Out_2;
                               Unity_Multiply_float(_Vector2_C59C5490_Out_0, _Vector2_C59C5490_Out_0, _Multiply_9750DFFF_Out_2);
                               float _Property_45994198_Out_0 = Vector1_703425E3;
                               float _FresnelEffect_3D339E63_Out_3;
                               Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_45994198_Out_0, _FresnelEffect_3D339E63_Out_3);
                               float _Property_B11D7B9E_Out_0 = Vector1_55FFAA23;
                               float _Multiply_9A507FFA_Out_2;
                               Unity_Multiply_float(_FresnelEffect_3D339E63_Out_3, _Property_B11D7B9E_Out_0, _Multiply_9A507FFA_Out_2);
                               float2 _Add_5FF4153F_Out_2;
                               Unity_Add_float2(_Multiply_9750DFFF_Out_2, (_Multiply_9A507FFA_Out_2.xx), _Add_5FF4153F_Out_2);
                               float _Property_9FBF3BD5_Out_0 = Boolean_A3CCDAEB;
                               float4 _ScreenPosition_5F65C430_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                               float _Split_9EEAB6CD_R_1 = _ScreenPosition_5F65C430_Out_0[0];
                               float _Split_9EEAB6CD_G_2 = _ScreenPosition_5F65C430_Out_0[1];
                               float _Split_9EEAB6CD_B_3 = _ScreenPosition_5F65C430_Out_0[2];
                               float _Split_9EEAB6CD_A_4 = _ScreenPosition_5F65C430_Out_0[3];
                               float2 _Vector2_806073AF_Out_0 = float2(_Split_9EEAB6CD_R_1, _Split_9EEAB6CD_B_3);
                               float2 _Vector2_A30F7CB6_Out_0 = float2(_Split_9EEAB6CD_R_1, _Split_9EEAB6CD_G_2);
                               float2 _Branch_E8288875_Out_3;
                               Unity_Branch_float2(_Property_9FBF3BD5_Out_0, _Vector2_806073AF_Out_0, _Vector2_A30F7CB6_Out_0, _Branch_E8288875_Out_3);
                               float _Property_4DB5B4B3_Out_0 = Vector1_F1979D3;
                               float _Subtract_4AD52DC4_Out_2;
                               Unity_Subtract_float(_Property_4DB5B4B3_Out_0, 1, _Subtract_4AD52DC4_Out_2);
                               float _Multiply_2B52F7E0_Out_2;
                               Unity_Multiply_float(_Subtract_4AD52DC4_Out_2, -0.5, _Multiply_2B52F7E0_Out_2);
                               float2 _Vector2_1DD0DC4B_Out_0 = float2(_Multiply_2B52F7E0_Out_2, 1);
                               float _Property_D45FF678_Out_0 = Vector1_632D4B63;
                               float2 _Vector2_FD5E8498_Out_0 = float2(_Multiply_2B52F7E0_Out_2, _Property_D45FF678_Out_0);
                               float2 _TilingAndOffset_6B0E9429_Out_3;
                               Unity_TilingAndOffset_float(_Branch_E8288875_Out_3, _Vector2_1DD0DC4B_Out_0, _Vector2_FD5E8498_Out_0, _TilingAndOffset_6B0E9429_Out_3);
                               float _Subtract_B1A01D66_Out_2;
                               Unity_Subtract_float(_Property_4DB5B4B3_Out_0, 0.5, _Subtract_B1A01D66_Out_2);
                               float2 _Vector2_EDE09981_Out_0 = float2(_Subtract_B1A01D66_Out_2, 0);
                               float2 _TilingAndOffset_396945A1_Out_3;
                               Unity_TilingAndOffset_float(_Branch_E8288875_Out_3, _Vector2_1DD0DC4B_Out_0, _Vector2_EDE09981_Out_0, _TilingAndOffset_396945A1_Out_3);
                               float2 _Add_679361C7_Out_2;
                               Unity_Add_float2(_TilingAndOffset_6B0E9429_Out_3, _TilingAndOffset_396945A1_Out_3, _Add_679361C7_Out_2);
                               float _Property_59042198_Out_0 = Vector1_C37932A7;
                               float _Remap_2D3FC110_Out_3;
                               Unity_Remap_float(_Property_59042198_Out_0, float2 (0, 360), float2 (-1.57, 1.57), _Remap_2D3FC110_Out_3);
                               float2 _Rotate_F9485439_Out_3;
                               Unity_Rotate_Radians_float(_Add_679361C7_Out_2, float2 (0.5, 0.5), _Remap_2D3FC110_Out_3, _Rotate_F9485439_Out_3);
                               float4 _SampleTexture2D_C84B153C_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_4A0C2C73, samplerTexture2D_4A0C2C73, _Rotate_F9485439_Out_3);
                               float _SampleTexture2D_C84B153C_R_4 = _SampleTexture2D_C84B153C_RGBA_0.r;
                               float _SampleTexture2D_C84B153C_G_5 = _SampleTexture2D_C84B153C_RGBA_0.g;
                               float _SampleTexture2D_C84B153C_B_6 = _SampleTexture2D_C84B153C_RGBA_0.b;
                               float _SampleTexture2D_C84B153C_A_7 = _SampleTexture2D_C84B153C_RGBA_0.a;
                               float2 _Multiply_7C2E5DD2_Out_2;
                               Unity_Multiply_float(_Add_5FF4153F_Out_2, (_SampleTexture2D_C84B153C_G_5.xx), _Multiply_7C2E5DD2_Out_2);
                               float2 _Vector2_49FDB816_Out_0 = float2((_Multiply_7C2E5DD2_Out_2).x, (_Multiply_7C2E5DD2_Out_2).x);
                               float4 _Property_A5432A_Out_0 = Vector4_B2100EC9;
                               float _Split_F90DD6C3_R_1 = _Property_A5432A_Out_0[0];
                               float _Split_F90DD6C3_G_2 = _Property_A5432A_Out_0[1];
                               float _Split_F90DD6C3_B_3 = _Property_A5432A_Out_0[2];
                               float _Split_F90DD6C3_A_4 = _Property_A5432A_Out_0[3];
                               float2 _Vector2_97521D8F_Out_0 = float2(_Split_F90DD6C3_R_1, _Split_F90DD6C3_G_2);
                               float2 _Vector2_E05BF4E0_Out_0 = float2(_Split_F90DD6C3_B_3, _Split_F90DD6C3_A_4);
                               float2 _TilingAndOffset_D3F3D286_Out_3;
                               Unity_TilingAndOffset_float(_Vector2_49FDB816_Out_0, _Vector2_97521D8F_Out_0, _Vector2_E05BF4E0_Out_0, _TilingAndOffset_D3F3D286_Out_3);
                               float4 _SampleTexture2D_E672A4F7_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_D3F3D286_Out_3);
                               float _SampleTexture2D_E672A4F7_R_4 = _SampleTexture2D_E672A4F7_RGBA_0.r;
                               float _SampleTexture2D_E672A4F7_G_5 = _SampleTexture2D_E672A4F7_RGBA_0.g;
                               float _SampleTexture2D_E672A4F7_B_6 = _SampleTexture2D_E672A4F7_RGBA_0.b;
                               float _SampleTexture2D_E672A4F7_A_7 = _SampleTexture2D_E672A4F7_RGBA_0.a;
                               float4 _SampleTexture2D_8EF7652D_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_81E58350, samplerTexture2D_81E58350, IN.uv0.xy);
                               float _SampleTexture2D_8EF7652D_R_4 = _SampleTexture2D_8EF7652D_RGBA_0.r;
                               float _SampleTexture2D_8EF7652D_G_5 = _SampleTexture2D_8EF7652D_RGBA_0.g;
                               float _SampleTexture2D_8EF7652D_B_6 = _SampleTexture2D_8EF7652D_RGBA_0.b;
                               float _SampleTexture2D_8EF7652D_A_7 = _SampleTexture2D_8EF7652D_RGBA_0.a;
                               float4 _Property_485BCE80_Out_0 = Color_BAFEA9F0;
                               float _Property_AC0A5AD3_Out_0 = Vector1_854F1F29;
                               float4 _Multiply_43DFAA33_Out_2;
                               Unity_Multiply_float(_Property_485BCE80_Out_0, (_Property_AC0A5AD3_Out_0.xxxx), _Multiply_43DFAA33_Out_2);
                               float4 _Multiply_5C6752DC_Out_2;
                               Unity_Multiply_float(_SampleTexture2D_8EF7652D_RGBA_0, _Multiply_43DFAA33_Out_2, _Multiply_5C6752DC_Out_2);
                               float4 _Blend_584480F_Out_2;
                               Unity_Blend_Screen_float4((_SampleTexture2D_E672A4F7_G_5.xxxx), _Multiply_5C6752DC_Out_2, _Blend_584480F_Out_2, 1);
                               float _Property_6E4CC92C_Out_0 = Vector1_D9F91D89;
                               float _SimpleNoise_86591318_Out_2;
                               Unity_SimpleNoise_float((IN.AbsoluteWorldSpacePosition.xy), _Property_6E4CC92C_Out_0, _SimpleNoise_86591318_Out_2);
                               float _Property_27F90CE2_Out_0 = Vector1_3FF19332;
                               float2 _Vector2_21CB1F62_Out_0 = float2(0, _Property_27F90CE2_Out_0);
                               float _Remap_6BDADFF4_Out_3;
                               Unity_Remap_float(_SimpleNoise_86591318_Out_2, float2 (0, 1), _Vector2_21CB1F62_Out_0, _Remap_6BDADFF4_Out_3);
                               Gradient _Gradient_A2ACFD25_Out_0 = NewGradient(0, 2, 2, float4(1, 1, 1, 0),float4(1, 1, 1, 1),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0),float4(0, 0, 0, 0), float2(1, 0),float2(1, 1),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0),float2(0, 0));
                               float _Property_3D837A68_Out_0 = Boolean_5A562BB8;
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_FD3B0AF5;
                               _GetMainLight_FD3B0AF5.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_FD3B0AF5_Direction_1;
                               half3 _GetMainLight_FD3B0AF5_Color_2;
                               half _GetMainLight_FD3B0AF5_DistanceAtten_3;
                               half _GetMainLight_FD3B0AF5_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_FD3B0AF5, _GetMainLight_FD3B0AF5_Direction_1, _GetMainLight_FD3B0AF5_Color_2, _GetMainLight_FD3B0AF5_DistanceAtten_3, _GetMainLight_FD3B0AF5_ShadowAtten_4);
                               float3 _Normalize_7D1584BB_Out_1;
                               Unity_Normalize_float3(_GetMainLight_FD3B0AF5_Direction_1, _Normalize_7D1584BB_Out_1);
                               float4 _Property_1239A291_Out_0 = Vector4_7268281E;
                               float4 _Normalize_A86DB818_Out_1;
                               Unity_Normalize_float4(_Property_1239A291_Out_0, _Normalize_A86DB818_Out_1);
                               float3 _Branch_B23EFC5C_Out_3;
                               Unity_Branch_float3(_Property_3D837A68_Out_0, _Normalize_7D1584BB_Out_1, (_Normalize_A86DB818_Out_1.xyz), _Branch_B23EFC5C_Out_3);
                               float _Property_B7D21390_Out_0 = Boolean_1A81DE87;
                               float4 _SampleTexture2D_69FA9615_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_AFFE0F8C, samplerTexture2D_AFFE0F8C, IN.uv0.xy);
                               _SampleTexture2D_69FA9615_RGBA_0.rgb = UnpackNormalRGB(_SampleTexture2D_69FA9615_RGBA_0);
                               float _SampleTexture2D_69FA9615_R_4 = _SampleTexture2D_69FA9615_RGBA_0.r;
                               float _SampleTexture2D_69FA9615_G_5 = _SampleTexture2D_69FA9615_RGBA_0.g;
                               float _SampleTexture2D_69FA9615_B_6 = _SampleTexture2D_69FA9615_RGBA_0.b;
                               float _SampleTexture2D_69FA9615_A_7 = _SampleTexture2D_69FA9615_RGBA_0.a;
                               float3 _Branch_BB74106C_Out_3;
                               Unity_Branch_float3(_Property_B7D21390_Out_0, IN.WorldSpaceNormal, (_SampleTexture2D_69FA9615_RGBA_0.xyz), _Branch_BB74106C_Out_3);
                               float3 _Normalize_A8EC20D9_Out_1;
                               Unity_Normalize_float3(_Branch_BB74106C_Out_3, _Normalize_A8EC20D9_Out_1);
                               float _DotProduct_4A4C18DD_Out_2;
                               Unity_DotProduct_float3(_Branch_B23EFC5C_Out_3, _Normalize_A8EC20D9_Out_1, _DotProduct_4A4C18DD_Out_2);
                               float _Clamp_8ED600A8_Out_3;
                               Unity_Clamp_float(_DotProduct_4A4C18DD_Out_2, 0, 1, _Clamp_8ED600A8_Out_3);
                               float _Property_8A088262_Out_0 = Vector1_2C7AE8EA;
                               float _Remap_CDF4E33F_Out_3;
                               Unity_Remap_float(_Property_8A088262_Out_0, float2 (0, 1), float2 (0.01, 5), _Remap_CDF4E33F_Out_3);
                               float _Power_658AE671_Out_2;
                               Unity_Power_float(_Clamp_8ED600A8_Out_3, _Remap_CDF4E33F_Out_3, _Power_658AE671_Out_2);
                               float _OneMinus_86C9F979_Out_1;
                               Unity_OneMinus_float(_Power_658AE671_Out_2, _OneMinus_86C9F979_Out_1);
                               float4 _SampleGradient_6C75CC92_Out_2;
                               Unity_SampleGradient_float(_Gradient_A2ACFD25_Out_0, _OneMinus_86C9F979_Out_1, _SampleGradient_6C75CC92_Out_2);
                               float4 _Add_A1528CF6_Out_2;
                               Unity_Add_float4((_Remap_6BDADFF4_Out_3.xxxx), _SampleGradient_6C75CC92_Out_2, _Add_A1528CF6_Out_2);
                               float4 _Property_AB7527EC_Out_0 = Color_584ABCD0;
                               float4 _Blend_16029B52_Out_2;
                               Unity_Blend_Screen_float4(_Add_A1528CF6_Out_2, _Property_AB7527EC_Out_0, _Blend_16029B52_Out_2, 1);
                               float4 _Multiply_A5F4F0FA_Out_2;
                               Unity_Multiply_float(_Blend_584480F_Out_2, _Blend_16029B52_Out_2, _Multiply_A5F4F0FA_Out_2);
                               float2 _TilingAndOffset_5BC57B01_Out_3;
                               Unity_TilingAndOffset_float(_Multiply_9750DFFF_Out_2, _Vector2_97521D8F_Out_0, _Vector2_E05BF4E0_Out_0, _TilingAndOffset_5BC57B01_Out_3);
                               float4 _SampleTexture2D_208A09E9_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_5BC57B01_Out_3);
                               float _SampleTexture2D_208A09E9_R_4 = _SampleTexture2D_208A09E9_RGBA_0.r;
                               float _SampleTexture2D_208A09E9_G_5 = _SampleTexture2D_208A09E9_RGBA_0.g;
                               float _SampleTexture2D_208A09E9_B_6 = _SampleTexture2D_208A09E9_RGBA_0.b;
                               float _SampleTexture2D_208A09E9_A_7 = _SampleTexture2D_208A09E9_RGBA_0.a;
                               float4 _Property_CBAE3E61_Out_0 = Color_45F00913;
                               float4 _Blend_980DA526_Out_2;
                               Unity_Blend_Screen_float4((_SampleTexture2D_208A09E9_R_4.xxxx), _Property_CBAE3E61_Out_0, _Blend_980DA526_Out_2, 1);
                               float4 _Multiply_EC81A1A9_Out_2;
                               Unity_Multiply_float(_Multiply_A5F4F0FA_Out_2, _Blend_980DA526_Out_2, _Multiply_EC81A1A9_Out_2);
                               float4 _Property_F4B5468_Out_0 = Color_95BA54AB;
                               float4 _SampleTexture2D_CD3A3C06_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_75317E5D, samplerTexture2D_75317E5D, IN.uv1.xy);
                               float _SampleTexture2D_CD3A3C06_R_4 = _SampleTexture2D_CD3A3C06_RGBA_0.r;
                               float _SampleTexture2D_CD3A3C06_G_5 = _SampleTexture2D_CD3A3C06_RGBA_0.g;
                               float _SampleTexture2D_CD3A3C06_B_6 = _SampleTexture2D_CD3A3C06_RGBA_0.b;
                               float _SampleTexture2D_CD3A3C06_A_7 = _SampleTexture2D_CD3A3C06_RGBA_0.a;
                               float4 _Lerp_FD9BA81F_Out_3;
                               Unity_Lerp_float4(_Property_F4B5468_Out_0, float4(1, 1, 1, 1), _SampleTexture2D_CD3A3C06_RGBA_0, _Lerp_FD9BA81F_Out_3);
                               float _Property_EBFB0DDA_Out_0 = Vector1_F60D8232;
                               float4 _Lerp_EBCFAD2A_Out_3;
                               Unity_Lerp_float4(float4(1, 1, 1, 1), _Lerp_FD9BA81F_Out_3, (_Property_EBFB0DDA_Out_0.xxxx), _Lerp_EBCFAD2A_Out_3);
                               float4 _SampleTexture2D_3B48CC34_RGBA_0 = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, IN.uv0.xy);
                               float _SampleTexture2D_3B48CC34_R_4 = _SampleTexture2D_3B48CC34_RGBA_0.r;
                               float _SampleTexture2D_3B48CC34_G_5 = _SampleTexture2D_3B48CC34_RGBA_0.g;
                               float _SampleTexture2D_3B48CC34_B_6 = _SampleTexture2D_3B48CC34_RGBA_0.b;
                               float _SampleTexture2D_3B48CC34_A_7 = _SampleTexture2D_3B48CC34_RGBA_0.a;
                               float4 _Property_1F6AF60D_Out_0 = Color_C1AFD425;
                               float4 _Multiply_E7249E39_Out_2;
                               Unity_Multiply_float(_SampleTexture2D_3B48CC34_RGBA_0, _Property_1F6AF60D_Out_0, _Multiply_E7249E39_Out_2);
                               float4 _Multiply_A24385FD_Out_2;
                               Unity_Multiply_float(_Lerp_EBCFAD2A_Out_3, _Multiply_E7249E39_Out_2, _Multiply_A24385FD_Out_2);
                               float _Property_E4023251_Out_0 = Boolean_6D5CF815;
                               float4 _Property_A12CC1DE_Out_0 = Color_FD6C9BB6;
                               float3 _Lerp_B7E20BA8_Out_3;
                               Unity_Lerp_float3((_Property_A12CC1DE_Out_0.xyz), float3(1, 1, 1), _Clamp_4CD6697C_Out_3, _Lerp_B7E20BA8_Out_3);
                               float3 _Branch_CAEC8E2A_Out_3;
                               Unity_Branch_float3(_Property_E4023251_Out_0, (_Property_4458853E_Out_0.xyz), _Lerp_B7E20BA8_Out_3, _Branch_CAEC8E2A_Out_3);
                               float3 _Multiply_9C52AD15_Out_2;
                               Unity_Multiply_float((_Multiply_A24385FD_Out_2.xyz), _Branch_CAEC8E2A_Out_3, _Multiply_9C52AD15_Out_2);
                               float3 _Multiply_DFF1C651_Out_2;
                               Unity_Multiply_float((_Multiply_EC81A1A9_Out_2.xyz), _Multiply_9C52AD15_Out_2, _Multiply_DFF1C651_Out_2);
                               float3 _Add_306EE3BB_Out_2;
                               Unity_Add_float3((_Blend_61BB58A0_Out_2.xyz), _Multiply_DFF1C651_Out_2, _Add_306EE3BB_Out_2);
                               float _Multiply_2C7DEC9_Out_2;
                               Unity_Multiply_float(_DotProduct_4A4C18DD_Out_2, 0.5, _Multiply_2C7DEC9_Out_2);
                               float _Add_A56CD197_Out_2;
                               Unity_Add_float(_Multiply_2C7DEC9_Out_2, 0.5, _Add_A56CD197_Out_2);
                               float _Multiply_2D8C876F_Out_2;
                               Unity_Multiply_float(_Add_A56CD197_Out_2, _Add_A56CD197_Out_2, _Multiply_2D8C876F_Out_2);
                               float _Property_16A2D86A_Out_0 = Vector1_78608E79;
                               float _Property_6E63ADB4_Out_0 = Vector1_5152DDBE;
                               float2 _Vector2_60CC7086_Out_0 = float2(_Property_16A2D86A_Out_0, _Property_6E63ADB4_Out_0);
                               float2 _TilingAndOffset_41F535A6_Out_3;
                               Unity_TilingAndOffset_float((_Multiply_2D8C876F_Out_2.xx), float2 (1, 1), _Vector2_60CC7086_Out_0, _TilingAndOffset_41F535A6_Out_3);
                               float4 _SampleTexture2D_750817E0_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_41F535A6_Out_3);
                               float _SampleTexture2D_750817E0_R_4 = _SampleTexture2D_750817E0_RGBA_0.r;
                               float _SampleTexture2D_750817E0_G_5 = _SampleTexture2D_750817E0_RGBA_0.g;
                               float _SampleTexture2D_750817E0_B_6 = _SampleTexture2D_750817E0_RGBA_0.b;
                               float _SampleTexture2D_750817E0_A_7 = _SampleTexture2D_750817E0_RGBA_0.a;
                               float4 _SampleTexture2D_CF1E2059_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_DE92BF0, samplerTexture2D_DE92BF0, IN.uv0.xy);
                               float _SampleTexture2D_CF1E2059_R_4 = _SampleTexture2D_CF1E2059_RGBA_0.r;
                               float _SampleTexture2D_CF1E2059_G_5 = _SampleTexture2D_CF1E2059_RGBA_0.g;
                               float _SampleTexture2D_CF1E2059_B_6 = _SampleTexture2D_CF1E2059_RGBA_0.b;
                               float _SampleTexture2D_CF1E2059_A_7 = _SampleTexture2D_CF1E2059_RGBA_0.a;
                               float _OneMinus_2EDFC442_Out_1;
                               Unity_OneMinus_float(_SampleTexture2D_CF1E2059_A_7, _OneMinus_2EDFC442_Out_1);
                               float _Add_77290CFA_Out_2;
                               Unity_Add_float(_SampleTexture2D_750817E0_G_5, _OneMinus_2EDFC442_Out_1, _Add_77290CFA_Out_2);
                               float _Clamp_ED61A602_Out_3;
                               Unity_Clamp_float(_Add_77290CFA_Out_2, 0, 1, _Clamp_ED61A602_Out_3);
                               float4 _Property_8195898C_Out_0 = Color_D7AF0984;
                               float4 _Blend_3914D587_Out_2;
                               Unity_Blend_Screen_float4((_Clamp_ED61A602_Out_3.xxxx), _Property_8195898C_Out_0, _Blend_3914D587_Out_2, 1);
                               float3 _Multiply_F0BE3CD9_Out_2;
                               Unity_Multiply_float(_Add_306EE3BB_Out_2, (_Blend_3914D587_Out_2.xyz), _Multiply_F0BE3CD9_Out_2);
                               float3 _Add_26A7D7BD_Out_2;
                               Unity_Add_float3(_Multiply_23E1A03A_Out_2, _Multiply_F0BE3CD9_Out_2, _Add_26A7D7BD_Out_2);
                               Bindings_NdotL_514b9649e0886bc47bd9ba2f2e977bc4 _NdotL_C22E8DB4;
                               _NdotL_C22E8DB4.WorldSpaceNormal = IN.WorldSpaceNormal;
                               _NdotL_C22E8DB4.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               float _NdotL_C22E8DB4_NdotL_1;
                               SG_NdotL_514b9649e0886bc47bd9ba2f2e977bc4(_NdotL_C22E8DB4, _NdotL_C22E8DB4_NdotL_1);
                               float _Property_B46D043F_Out_0 = Vector1_5663B961;
                               float _FresnelEffect_7AF350C4_Out_3;
                               Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_B46D043F_Out_0, _FresnelEffect_7AF350C4_Out_3);
                               float _Multiply_EF2FEB5C_Out_2;
                               Unity_Multiply_float(_NdotL_C22E8DB4_NdotL_1, _FresnelEffect_7AF350C4_Out_3, _Multiply_EF2FEB5C_Out_2);
                               float _Property_161C6979_Out_0 = Vector1_89B9B85C;
                               float2 _Vector2_23ED73E0_Out_0 = float2(_Multiply_EF2FEB5C_Out_2, _Property_161C6979_Out_0);
                               float _Property_BBC3A9E4_Out_0 = Vector1_9AD8DF8A;
                               float2 _Vector2_82BC5ED3_Out_0 = float2(_Property_BBC3A9E4_Out_0, 0);
                               float2 _TilingAndOffset_EDD5B321_Out_3;
                               Unity_TilingAndOffset_float(_Vector2_23ED73E0_Out_0, float2 (1, 1), _Vector2_82BC5ED3_Out_0, _TilingAndOffset_EDD5B321_Out_3);
                               float4 _SampleTexture2D_3CA3FC67_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_7EF187FF, samplerTexture2D_7EF187FF, _TilingAndOffset_EDD5B321_Out_3);
                               float _SampleTexture2D_3CA3FC67_R_4 = _SampleTexture2D_3CA3FC67_RGBA_0.r;
                               float _SampleTexture2D_3CA3FC67_G_5 = _SampleTexture2D_3CA3FC67_RGBA_0.g;
                               float _SampleTexture2D_3CA3FC67_B_6 = _SampleTexture2D_3CA3FC67_RGBA_0.b;
                               float _SampleTexture2D_3CA3FC67_A_7 = _SampleTexture2D_3CA3FC67_RGBA_0.a;
                               float3 _Multiply_A39A02C1_Out_2;
                               Unity_Multiply_float((_SampleTexture2D_3CA3FC67_G_5.xxx), _Branch_1CB508C3_Out_3, _Multiply_A39A02C1_Out_2);
                               float4 _Property_E1672D5E_Out_0 = Color_6754F1C6;
                               float _Split_3440B87A_R_1 = _Property_E1672D5E_Out_0[0];
                               float _Split_3440B87A_G_2 = _Property_E1672D5E_Out_0[1];
                               float _Split_3440B87A_B_3 = _Property_E1672D5E_Out_0[2];
                               float _Split_3440B87A_A_4 = _Property_E1672D5E_Out_0[3];
                               float4 _Multiply_B093D9A_Out_2;
                               Unity_Multiply_float(_Property_E1672D5E_Out_0, (_Split_3440B87A_A_4.xxxx), _Multiply_B093D9A_Out_2);
                               float3 _Multiply_F9833219_Out_2;
                               Unity_Multiply_float(_Multiply_A39A02C1_Out_2, (_Multiply_B093D9A_Out_2.xyz), _Multiply_F9833219_Out_2);
                               float3 _Add_6C34D19A_Out_2;
                               Unity_Add_float3(_Add_26A7D7BD_Out_2, _Multiply_F9833219_Out_2, _Add_6C34D19A_Out_2);
                               float3 _Add_12D984C9_Out_2;
                               Unity_Add_float3((_Multiply_B7EB0BBA_Out_2.xyz), _Add_6C34D19A_Out_2, _Add_12D984C9_Out_2);
                               float3 _Branch_24350F3A_Out_3;
                               Unity_Branch_float3(_Property_3EF4D2A9_Out_0, (_Split_FE680A83_R_1.xxx), _Add_12D984C9_Out_2, _Branch_24350F3A_Out_3);
                               float3 _Multiply_C1518DFD_Out_2;
                               Unity_Multiply_float((_Property_9E496C1F_Out_0.xyz), _Branch_24350F3A_Out_3, _Multiply_C1518DFD_Out_2);
                               float3 _Add_40561523_Out_2;
                               Unity_Add_float3(_Multiply_C1518DFD_Out_2, float3(0, 0, 0), _Add_40561523_Out_2);
                               float3 _Add_8C00A4B3_Out_2;
                               Unity_Add_float3((_Multiply_FB28F3BA_Out_2.xyz), _Add_40561523_Out_2, _Add_8C00A4B3_Out_2);
                               float _Property_8DD6D434_Out_0 = Boolean_1A81DE87;
                               float4 _SampleTexture2D_4D198CD7_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_AFFE0F8C, samplerTexture2D_AFFE0F8C, IN.uv0.xy);
                               _SampleTexture2D_4D198CD7_RGBA_0.rgb = UnpackNormalRGB(_SampleTexture2D_4D198CD7_RGBA_0);
                               float _SampleTexture2D_4D198CD7_R_4 = _SampleTexture2D_4D198CD7_RGBA_0.r;
                               float _SampleTexture2D_4D198CD7_G_5 = _SampleTexture2D_4D198CD7_RGBA_0.g;
                               float _SampleTexture2D_4D198CD7_B_6 = _SampleTexture2D_4D198CD7_RGBA_0.b;
                               float _SampleTexture2D_4D198CD7_A_7 = _SampleTexture2D_4D198CD7_RGBA_0.a;
                               float3 _Branch_2F524E80_Out_3;
                               Unity_Branch_float3(_Property_8DD6D434_Out_0, IN.WorldSpaceNormal, (_SampleTexture2D_4D198CD7_RGBA_0.xyz), _Branch_2F524E80_Out_3);
                               float _Property_15CEB06B_Out_0 = Boolean_5A562BB8;
                               float _Vector1_5D259DF7_Out_0 = -1;
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_5C275F67;
                               _GetMainLight_5C275F67.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_5C275F67_Direction_1;
                               half3 _GetMainLight_5C275F67_Color_2;
                               half _GetMainLight_5C275F67_DistanceAtten_3;
                               half _GetMainLight_5C275F67_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_5C275F67, _GetMainLight_5C275F67_Direction_1, _GetMainLight_5C275F67_Color_2, _GetMainLight_5C275F67_DistanceAtten_3, _GetMainLight_5C275F67_ShadowAtten_4);
                               float3 _Multiply_99BE829F_Out_2;
                               Unity_Multiply_float((_Vector1_5D259DF7_Out_0.xxx), _GetMainLight_5C275F67_Direction_1, _Multiply_99BE829F_Out_2);
                               float4 _Property_DECD90A0_Out_0 = Vector4_7268281E;
                               float3 _Branch_60D52B8_Out_3;
                               Unity_Branch_float3(_Property_15CEB06B_Out_0, _Multiply_99BE829F_Out_2, (_Property_DECD90A0_Out_0.xyz), _Branch_60D52B8_Out_3);
                               float3 _Normalize_DADC70CF_Out_1;
                               Unity_Normalize_float3(_Branch_60D52B8_Out_3, _Normalize_DADC70CF_Out_1);
                               float _DotProduct_71C33461_Out_2;
                               Unity_DotProduct_float3(_Branch_2F524E80_Out_3, _Normalize_DADC70CF_Out_1, _DotProduct_71C33461_Out_2);
                               float _Clamp_10CDD93F_Out_3;
                               Unity_Clamp_float(_DotProduct_71C33461_Out_2, 0, 1, _Clamp_10CDD93F_Out_3);
                               float _Property_F6C99B40_Out_0 = Vector1_E0E07BB;
                               float _Remap_C3E7E90C_Out_3;
                               Unity_Remap_float(_Property_F6C99B40_Out_0, float2 (0, 1), float2 (5, 0.01), _Remap_C3E7E90C_Out_3);
                               float _Power_B3DD88BA_Out_2;
                               Unity_Power_float(_Clamp_10CDD93F_Out_3, _Remap_C3E7E90C_Out_3, _Power_B3DD88BA_Out_2);
                               float4 _Property_BF4ABCC_Out_0 = Color_811006DD;
                               float4 _Multiply_1CF222B1_Out_2;
                               Unity_Multiply_float((_Power_B3DD88BA_Out_2.xxxx), _Property_BF4ABCC_Out_0, _Multiply_1CF222B1_Out_2);
                               float3 _Add_D992007B_Out_2;
                               Unity_Add_float3(_Add_8C00A4B3_Out_2, (_Multiply_1CF222B1_Out_2.xyz), _Add_D992007B_Out_2);
                               float3 _Add_A360968B_Out_2;
                               Unity_Add_float3(_CalculateAdditionalLights_4C9B04CD_AddLight_3, _Add_D992007B_Out_2, _Add_A360968B_Out_2);
                               float3 _Vector3_8D28E779_Out_0 = float3(0, 1, 0);
                               float3 _Normalize_D9231AA0_Out_1;
                               Unity_Normalize_float3(_Vector3_8D28E779_Out_0, _Normalize_D9231AA0_Out_1);
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_480E4496;
                               _GetMainLight_480E4496.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_480E4496_Direction_1;
                               half3 _GetMainLight_480E4496_Color_2;
                               half _GetMainLight_480E4496_DistanceAtten_3;
                               half _GetMainLight_480E4496_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_480E4496, _GetMainLight_480E4496_Direction_1, _GetMainLight_480E4496_Color_2, _GetMainLight_480E4496_DistanceAtten_3, _GetMainLight_480E4496_ShadowAtten_4);
                               float3 _Normalize_BCA52B57_Out_1;
                               Unity_Normalize_float3(_GetMainLight_480E4496_Direction_1, _Normalize_BCA52B57_Out_1);
                               float _DotProduct_6D959E69_Out_2;
                               Unity_DotProduct_float3(_Normalize_D9231AA0_Out_1, _Normalize_BCA52B57_Out_1, _DotProduct_6D959E69_Out_2);
                               float3 _CrossProduct_BAE7ADB0_Out_2;
                               Unity_CrossProduct_float(_Vector3_8D28E779_Out_0, _GetMainLight_480E4496_Direction_1, _CrossProduct_BAE7ADB0_Out_2);
                               float3 _Arctangent2_7C1EFE8A_Out_2;
                               Unity_Arctangent2_float3((_DotProduct_6D959E69_Out_2.xxx), _CrossProduct_BAE7ADB0_Out_2, _Arctangent2_7C1EFE8A_Out_2);
                               float _Vector1_D6959507_Out_0 = -1.57;
                               float3 _Add_D4904F92_Out_2;
                               Unity_Add_float3(_Arctangent2_7C1EFE8A_Out_2, (_Vector1_D6959507_Out_0.xxx), _Add_D4904F92_Out_2);
                               float _Split_90B4FB3A_R_1 = _Add_D4904F92_Out_2[0];
                               float _Split_90B4FB3A_G_2 = _Add_D4904F92_Out_2[1];
                               float _Split_90B4FB3A_B_3 = _Add_D4904F92_Out_2[2];
                               float _Split_90B4FB3A_A_4 = 0;
                               float2 _Rotate_34E93380_Out_3;
                               Unity_Rotate_Radians_float(IN.uv1.xy, float2 (0.5, 0.5), _Split_90B4FB3A_B_3, _Rotate_34E93380_Out_3);
                               float4 _SampleTexture2D_CBFA2ECD_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_8F92EDA, samplerTexture2D_8F92EDA, _Rotate_34E93380_Out_3);
                               float _SampleTexture2D_CBFA2ECD_R_4 = _SampleTexture2D_CBFA2ECD_RGBA_0.r;
                               float _SampleTexture2D_CBFA2ECD_G_5 = _SampleTexture2D_CBFA2ECD_RGBA_0.g;
                               float _SampleTexture2D_CBFA2ECD_B_6 = _SampleTexture2D_CBFA2ECD_RGBA_0.b;
                               float _SampleTexture2D_CBFA2ECD_A_7 = _SampleTexture2D_CBFA2ECD_RGBA_0.a;
                               float4 _Property_68486CA5_Out_0 = Color_F4176F73;
                               float _Split_4A05D731_R_1 = _Property_68486CA5_Out_0[0];
                               float _Split_4A05D731_G_2 = _Property_68486CA5_Out_0[1];
                               float _Split_4A05D731_B_3 = _Property_68486CA5_Out_0[2];
                               float _Split_4A05D731_A_4 = _Property_68486CA5_Out_0[3];
                               float _Remap_CB5C1431_Out_3;
                               Unity_Remap_float(_Split_4A05D731_A_4, float2 (0, 1), float2 (20, 1), _Remap_CB5C1431_Out_3);
                               float _Power_BD9D5759_Out_2;
                               Unity_Power_float(_SampleTexture2D_CBFA2ECD_R_4, _Remap_CB5C1431_Out_3, _Power_BD9D5759_Out_2);
                               float4 _Multiply_D9608514_Out_2;
                               Unity_Multiply_float((_Power_BD9D5759_Out_2.xxxx), _Property_68486CA5_Out_0, _Multiply_D9608514_Out_2);
                               float3 _Vector3_8282591D_Out_0 = float3(0, 0, 1);
                               float3 _Normalize_46B3D7F8_Out_1;
                               Unity_Normalize_float3(_Vector3_8282591D_Out_0, _Normalize_46B3D7F8_Out_1);
                               Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_8C6E395D;
                               _GetMainLight_8C6E395D.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                               half3 _GetMainLight_8C6E395D_Direction_1;
                               half3 _GetMainLight_8C6E395D_Color_2;
                               half _GetMainLight_8C6E395D_DistanceAtten_3;
                               half _GetMainLight_8C6E395D_ShadowAtten_4;
                               SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_8C6E395D, _GetMainLight_8C6E395D_Direction_1, _GetMainLight_8C6E395D_Color_2, _GetMainLight_8C6E395D_DistanceAtten_3, _GetMainLight_8C6E395D_ShadowAtten_4);
                               float3 _Normalize_C7937A9B_Out_1;
                               Unity_Normalize_float3(_GetMainLight_8C6E395D_Direction_1, _Normalize_C7937A9B_Out_1);
                               float _DotProduct_9CC0BA58_Out_2;
                               Unity_DotProduct_float3(_Normalize_46B3D7F8_Out_1, _Normalize_C7937A9B_Out_1, _DotProduct_9CC0BA58_Out_2);
                               float3 _CrossProduct_6ACD3CC0_Out_2;
                               Unity_CrossProduct_float(_Vector3_8282591D_Out_0, _GetMainLight_8C6E395D_Direction_1, _CrossProduct_6ACD3CC0_Out_2);
                               float3 _Arctangent2_EBBAF55D_Out_2;
                               Unity_Arctangent2_float3((_DotProduct_9CC0BA58_Out_2.xxx), _CrossProduct_6ACD3CC0_Out_2, _Arctangent2_EBBAF55D_Out_2);
                               float _Vector1_332A9534_Out_0 = -1.57;
                               float3 _Add_CBF1661A_Out_2;
                               Unity_Add_float3(_Arctangent2_EBBAF55D_Out_2, (_Vector1_332A9534_Out_0.xxx), _Add_CBF1661A_Out_2);
                               float _Split_C4826456_R_1 = _Add_CBF1661A_Out_2[0];
                               float _Split_C4826456_G_2 = _Add_CBF1661A_Out_2[1];
                               float _Split_C4826456_B_3 = _Add_CBF1661A_Out_2[2];
                               float _Split_C4826456_A_4 = 0;
                               float2 _Rotate_AB781451_Out_3;
                               Unity_Rotate_Radians_float(IN.uv2.xy, float2 (0.5, 0.5), _Split_C4826456_R_1, _Rotate_AB781451_Out_3);
                               float4 _SampleTexture2D_20446249_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_8F92EDA, samplerTexture2D_8F92EDA, _Rotate_AB781451_Out_3);
                               float _SampleTexture2D_20446249_R_4 = _SampleTexture2D_20446249_RGBA_0.r;
                               float _SampleTexture2D_20446249_G_5 = _SampleTexture2D_20446249_RGBA_0.g;
                               float _SampleTexture2D_20446249_B_6 = _SampleTexture2D_20446249_RGBA_0.b;
                               float _SampleTexture2D_20446249_A_7 = _SampleTexture2D_20446249_RGBA_0.a;
                               float _Split_736AA94F_R_1 = _Property_68486CA5_Out_0[0];
                               float _Split_736AA94F_G_2 = _Property_68486CA5_Out_0[1];
                               float _Split_736AA94F_B_3 = _Property_68486CA5_Out_0[2];
                               float _Split_736AA94F_A_4 = _Property_68486CA5_Out_0[3];
                               float _Remap_B37DF44C_Out_3;
                               Unity_Remap_float(_Split_736AA94F_A_4, float2 (0, 1), float2 (2, 1), _Remap_B37DF44C_Out_3);
                               float _Power_FA1911E9_Out_2;
                               Unity_Power_float(_SampleTexture2D_20446249_R_4, _Remap_B37DF44C_Out_3, _Power_FA1911E9_Out_2);
                               float4 _Multiply_F46A8DEA_Out_2;
                               Unity_Multiply_float(_Multiply_D9608514_Out_2, (_Power_FA1911E9_Out_2.xxxx), _Multiply_F46A8DEA_Out_2);
                               float3 _Add_4264B346_Out_2;
                               Unity_Add_float3(_Add_A360968B_Out_2, (_Multiply_F46A8DEA_Out_2.xyz), _Add_4264B346_Out_2);
                               float4 _Property_12166626_Out_0 = Color_5D41734B;
                               float4 _UV_632B278E_Out_0 = IN.uv1;
                               float _Split_65FCA20D_R_1 = _UV_632B278E_Out_0[0];
                               float _Split_65FCA20D_G_2 = _UV_632B278E_Out_0[1];
                               float _Split_65FCA20D_B_3 = _UV_632B278E_Out_0[2];
                               float _Split_65FCA20D_A_4 = _UV_632B278E_Out_0[3];
                               float _Length_25184E5F_Out_1;
                               Unity_Length_float(_Split_65FCA20D_G_2, _Length_25184E5F_Out_1);
                               float _Clamp_240CAFA6_Out_3;
                               Unity_Clamp_float(_Length_25184E5F_Out_1, 0, 1, _Clamp_240CAFA6_Out_3);
                               float _Split_CC3CE9EF_R_1 = _Property_12166626_Out_0[0];
                               float _Split_CC3CE9EF_G_2 = _Property_12166626_Out_0[1];
                               float _Split_CC3CE9EF_B_3 = _Property_12166626_Out_0[2];
                               float _Split_CC3CE9EF_A_4 = _Property_12166626_Out_0[3];
                               float _Remap_B082C3ED_Out_3;
                               Unity_Remap_float(_Split_CC3CE9EF_A_4, float2 (0, 1), float2 (100, 1), _Remap_B082C3ED_Out_3);
                               float _Power_A2DBEFEA_Out_2;
                               Unity_Power_float(_Clamp_240CAFA6_Out_3, _Remap_B082C3ED_Out_3, _Power_A2DBEFEA_Out_2);
                               float4 _Multiply_28A18BD8_Out_2;
                               Unity_Multiply_float(_Property_12166626_Out_0, (_Power_A2DBEFEA_Out_2.xxxx), _Multiply_28A18BD8_Out_2);
                               float3 _Multiply_47F42F20_Out_2;
                               Unity_Multiply_float((_Multiply_28A18BD8_Out_2.xyz), _Branch_1CB508C3_Out_3, _Multiply_47F42F20_Out_2);
                               float3 _Add_70DF8825_Out_2;
                               Unity_Add_float3(_Add_4264B346_Out_2, _Multiply_47F42F20_Out_2, _Add_70DF8825_Out_2);
                               float4 _Property_E49B4FE3_Out_0 = Color_9731F5AE;
                               float3 _Lerp_10EC75B0_Out_3;
                               Unity_Lerp_float3(_Add_70DF8825_Out_2, (_Property_E49B4FE3_Out_0.xyz), (_Property_5E93A642_Out_0.xxx), _Lerp_10EC75B0_Out_3);
                               float3 _Add_15368192_Out_2;
                               Unity_Add_float3((_Multiply_66C1A223_Out_2.xyz), _Lerp_10EC75B0_Out_3, _Add_15368192_Out_2);
                               float3 _Add_62C01C13_Out_2;
                               Unity_Add_float3(_Add_15368192_Out_2, (_Multiply_F46A8DEA_Out_2.xyz), _Add_62C01C13_Out_2);
                               surface.Albedo = IsGammaSpace() ? float3(0, 0, 0) : SRGBToLinear(float3(0, 0, 0));
                               surface.Emission = _Add_62C01C13_Out_2;
                               surface.Alpha = 1;
                               surface.AlphaClipThreshold = 0;
                               return surface;
                           }

                           // --------------------------------------------------
                           // Structs and Packing

                           // Generated Type: Attributes
                           struct Attributes
                           {
                               float3 positionOS : POSITION;
                               float3 normalOS : NORMAL;
                               float4 tangentOS : TANGENT;
                               float4 uv0 : TEXCOORD0;
                               float4 uv1 : TEXCOORD1;
                               float4 uv2 : TEXCOORD2;
                               float4 color : COLOR;
                               #if UNITY_ANY_INSTANCING_ENABLED
                               uint instanceID : INSTANCEID_SEMANTIC;
                               #endif
                           };

                           // Generated Type: Varyings
                           struct Varyings
                           {
                               float4 positionCS : SV_POSITION;
                               float3 positionWS;
                               float3 normalWS;
                               float4 texCoord0;
                               float4 texCoord1;
                               float4 texCoord2;
                               float4 color;
                               float3 viewDirectionWS;
                               #if UNITY_ANY_INSTANCING_ENABLED
                               uint instanceID : CUSTOM_INSTANCE_ID;
                               #endif
                               #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                               uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                               #endif
                               #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                               uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                               #endif
                               #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                               FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                               #endif
                           };

                           // Generated Type: PackedVaryings
                           struct PackedVaryings
                           {
                               float4 positionCS : SV_POSITION;
                               #if UNITY_ANY_INSTANCING_ENABLED
                               uint instanceID : CUSTOM_INSTANCE_ID;
                               #endif
                               float3 interp00 : TEXCOORD0;
                               float3 interp01 : TEXCOORD1;
                               float4 interp02 : TEXCOORD2;
                               float4 interp03 : TEXCOORD3;
                               float4 interp04 : TEXCOORD4;
                               float4 interp05 : TEXCOORD5;
                               float3 interp06 : TEXCOORD6;
                               #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                               uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                               #endif
                               #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                               uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                               #endif
                               #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                               FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                               #endif
                           };

                           // Packed Type: Varyings
                           PackedVaryings PackVaryings(Varyings input)
                           {
                               PackedVaryings output = (PackedVaryings)0;
                               output.positionCS = input.positionCS;
                               output.interp00.xyz = input.positionWS;
                               output.interp01.xyz = input.normalWS;
                               output.interp02.xyzw = input.texCoord0;
                               output.interp03.xyzw = input.texCoord1;
                               output.interp04.xyzw = input.texCoord2;
                               output.interp05.xyzw = input.color;
                               output.interp06.xyz = input.viewDirectionWS;
                               #if UNITY_ANY_INSTANCING_ENABLED
                               output.instanceID = input.instanceID;
                               #endif
                               #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                               output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                               #endif
                               #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                               output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                               #endif
                               #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                               output.cullFace = input.cullFace;
                               #endif
                               return output;
                           }

                           // Unpacked Type: Varyings
                           Varyings UnpackVaryings(PackedVaryings input)
                           {
                               Varyings output = (Varyings)0;
                               output.positionCS = input.positionCS;
                               output.positionWS = input.interp00.xyz;
                               output.normalWS = input.interp01.xyz;
                               output.texCoord0 = input.interp02.xyzw;
                               output.texCoord1 = input.interp03.xyzw;
                               output.texCoord2 = input.interp04.xyzw;
                               output.color = input.interp05.xyzw;
                               output.viewDirectionWS = input.interp06.xyz;
                               #if UNITY_ANY_INSTANCING_ENABLED
                               output.instanceID = input.instanceID;
                               #endif
                               #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                               output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                               #endif
                               #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                               output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                               #endif
                               #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                               output.cullFace = input.cullFace;
                               #endif
                               return output;
                           }

                           // --------------------------------------------------
                           // Build Graph Inputs

                           SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                           {
                               SurfaceDescriptionInputs output;
                               ZERO_INITIALIZE(SurfaceDescriptionInputs, output);

                               // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
                               float3 unnormalizedNormalWS = input.normalWS;
                               const float renormFactor = 1.0 / length(unnormalizedNormalWS);


                               output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;		// we want a unit length Normal Vector node in shader graph
                               output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);


                               output.WorldSpaceViewDirection = input.viewDirectionWS; //TODO: by default normalized in HD, but not in universal
                               output.WorldSpacePosition = input.positionWS;
                               output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
                               output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                               output.uv0 = input.texCoord0;
                               output.uv1 = input.texCoord1;
                               output.uv2 = input.texCoord2;
                               output.VertexColor = input.color;
                           #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                           #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                           #else
                           #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                           #endif
                           #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN

                               return output;
                           }


                           // --------------------------------------------------
                           // Main

                           #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
                           #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/LightingMetaPass.hlsl"

                           ENDHLSL
                       }

                           Pass
                           {
                               // Name: <None>
                               Tags
                               {
                                   "LightMode" = "Universal2D"
                               }

                               // Render State
                               Blend One Zero, One Zero
                               Cull Back
                               ZTest LEqual
                               ZWrite On
                               // ColorMask: <None>


                               HLSLPROGRAM
                               #pragma vertex vert
                               #pragma fragment frag

                               // Debug
                               // <None>

                               // --------------------------------------------------
                               // Pass

                               // Pragmas
                               #pragma prefer_hlslcc gles
                               #pragma exclude_renderers d3d11_9x
                               #pragma target 2.0
                               #pragma multi_compile_instancing

                               // Keywords
                               // PassKeywords: <None>
                               // GraphKeywords: <None>

                               // Defines
                               #define _NORMAL_DROPOFF_TS 1
                               #define ATTRIBUTES_NEED_NORMAL
                               #define ATTRIBUTES_NEED_TANGENT
                               #define SHADERPASS_2D

                               // Includes
                               #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
                               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
                               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
                               #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
                               #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"

                               // --------------------------------------------------
                               // Graph

                               // Graph Properties
                               CBUFFER_START(UnityPerMaterial)
                               float4 Color_C1AFD425;
                               float Boolean_6D5CF815;
                               float4 Color_C3892D16;
                               float4 Color_FD6C9BB6;
                               float4 Vector4_B2100EC9;
                               float Boolean_BD2F928D;
                               float4 Vector4_6445BC47;
                               float4 Color_BAFEA9F0;
                               float4 Color_45F00913;
                               float4 Color_F4176F73;
                               float Vector1_14D51B31;
                               float4 Color_30008A8C;
                               float Vector1_7D259053;
                               float Vector1_C7DB18C5;
                               float Vector1_5663B961;
                               float4 Color_6754F1C6;
                               float Vector1_9AD8DF8A;
                               float Vector1_89B9B85C;
                               float4 Color_D106E8A;
                               float Boolean_C67EB6EB;
                               float Boolean_A3CCDAEB;
                               float Vector1_F1979D3;
                               float Vector1_632D4B63;
                               float Vector1_C37932A7;
                               float Vector1_703425E3;
                               float Vector1_55FFAA23;
                               float4 Color_4808C50D;
                               float Vector1_1FE38482;
                               float Vector1_E10F59B8;
                               float4 Vector4_FF4B755C;
                               float Vector1_1E9C8C1F;
                               float Vector1_597CA0EC;
                               float4 Vector4_7268281E;
                               float Boolean_1A81DE87;
                               float Boolean_5A562BB8;
                               float Vector1_78608E79;
                               float Vector1_5152DDBE;
                               float4 Color_D7AF0984;
                               float4 Color_584ABCD0;
                               float Vector1_D9F91D89;
                               float Vector1_3FF19332;
                               float4 Color_811006DD;
                               float Vector1_E0E07BB;
                               float Vector1_2C7AE8EA;
                               float4 Color_2901119A;
                               float Vector1_6178D656;
                               float Vector1_1EDA5197;
                               float4 Color_B09665EF;
                               float Vector1_12A795A8;
                               float4 Color_9731F5AE;
                               float Boolean_680D4A4D;
                               float Vector1_193A1ED3;
                               float Vector1_492E7F16;
                               float4 Color_E1F70A85;
                               float Vector1_854F1F29;
                               float4 Color_5D41734B;
                               float4 Color_95BA54AB;
                               float Vector1_F60D8232;
                               float Boolean_18010446;
                               CBUFFER_END
                               TEXTURE2D(_MainTex); SAMPLER(sampler_MainTex); float4 _MainTex_TexelSize;
                               TEXTURE2D(Texture2D_DE92BF0); SAMPLER(samplerTexture2D_DE92BF0); float4 Texture2D_DE92BF0_TexelSize;
                               TEXTURE2D(Texture2D_7EF187FF); SAMPLER(samplerTexture2D_7EF187FF); float4 Texture2D_7EF187FF_TexelSize;
                               TEXTURE2D(Texture2D_81E58350); SAMPLER(samplerTexture2D_81E58350); float4 Texture2D_81E58350_TexelSize;
                               TEXTURE2D(Texture2D_E19E455); SAMPLER(samplerTexture2D_E19E455); float4 Texture2D_E19E455_TexelSize;
                               TEXTURE2D(Texture2D_4A0C2C73); SAMPLER(samplerTexture2D_4A0C2C73); float4 Texture2D_4A0C2C73_TexelSize;
                               TEXTURE2D(Texture2D_AFFE0F8C); SAMPLER(samplerTexture2D_AFFE0F8C); float4 Texture2D_AFFE0F8C_TexelSize;
                               TEXTURE2D(Texture2D_8F92EDA); SAMPLER(samplerTexture2D_8F92EDA); float4 Texture2D_8F92EDA_TexelSize;
                               TEXTURE2D(Texture2D_75317E5D); SAMPLER(samplerTexture2D_75317E5D); float4 Texture2D_75317E5D_TexelSize;

                               // Graph Functions
                               // GraphFunctions: <None>

                               // Graph Vertex
                               // GraphVertex: <None>

                               // Graph Pixel
                               struct SurfaceDescriptionInputs
                               {
                                   float3 TangentSpaceNormal;
                               };

                               struct SurfaceDescription
                               {
                                   float3 Albedo;
                                   float Alpha;
                                   float AlphaClipThreshold;
                               };

                               SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                               {
                                   SurfaceDescription surface = (SurfaceDescription)0;
                                   surface.Albedo = IsGammaSpace() ? float3(0, 0, 0) : SRGBToLinear(float3(0, 0, 0));
                                   surface.Alpha = 1;
                                   surface.AlphaClipThreshold = 0;
                                   return surface;
                               }

                               // --------------------------------------------------
                               // Structs and Packing

                               // Generated Type: Attributes
                               struct Attributes
                               {
                                   float3 positionOS : POSITION;
                                   float3 normalOS : NORMAL;
                                   float4 tangentOS : TANGENT;
                                   #if UNITY_ANY_INSTANCING_ENABLED
                                   uint instanceID : INSTANCEID_SEMANTIC;
                                   #endif
                               };

                               // Generated Type: Varyings
                               struct Varyings
                               {
                                   float4 positionCS : SV_POSITION;
                                   #if UNITY_ANY_INSTANCING_ENABLED
                                   uint instanceID : CUSTOM_INSTANCE_ID;
                                   #endif
                                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                                   uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                                   #endif
                                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                                   uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                                   #endif
                                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                                   FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                                   #endif
                               };

                               // Generated Type: PackedVaryings
                               struct PackedVaryings
                               {
                                   float4 positionCS : SV_POSITION;
                                   #if UNITY_ANY_INSTANCING_ENABLED
                                   uint instanceID : CUSTOM_INSTANCE_ID;
                                   #endif
                                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                                   uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                                   #endif
                                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                                   uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                                   #endif
                                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                                   FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                                   #endif
                               };

                               // Packed Type: Varyings
                               PackedVaryings PackVaryings(Varyings input)
                               {
                                   PackedVaryings output = (PackedVaryings)0;
                                   output.positionCS = input.positionCS;
                                   #if UNITY_ANY_INSTANCING_ENABLED
                                   output.instanceID = input.instanceID;
                                   #endif
                                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                                   output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                                   #endif
                                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                                   output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                                   #endif
                                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                                   output.cullFace = input.cullFace;
                                   #endif
                                   return output;
                               }

                               // Unpacked Type: Varyings
                               Varyings UnpackVaryings(PackedVaryings input)
                               {
                                   Varyings output = (Varyings)0;
                                   output.positionCS = input.positionCS;
                                   #if UNITY_ANY_INSTANCING_ENABLED
                                   output.instanceID = input.instanceID;
                                   #endif
                                   #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                                   output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                                   #endif
                                   #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                                   output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                                   #endif
                                   #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                                   output.cullFace = input.cullFace;
                                   #endif
                                   return output;
                               }

                               // --------------------------------------------------
                               // Build Graph Inputs

                               SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                               {
                                   SurfaceDescriptionInputs output;
                                   ZERO_INITIALIZE(SurfaceDescriptionInputs, output);



                                   output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);


                               #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                               #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                               #else
                               #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                               #endif
                               #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN

                                   return output;
                               }


                               // --------------------------------------------------
                               // Main

                               #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
                               #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBR2DPass.hlsl"

                               ENDHLSL
                           }

    }
    CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
        FallBack "Hidden/Shader Graph/FallbackError"
}
