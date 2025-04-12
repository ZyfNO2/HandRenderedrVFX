Shader "Fluid"
{
    Properties
    {
        [NoScaleOffset] Texture2D_DA4464BD("Position", 2D) = "white" {}
        [NoScaleOffset]Texture2D_69B0C4F8("Normal", 2D) = "white" {}
        Vector1_753FEEC9("posMax", Float) = 0
        Vector1_29C83DC1("posMin", Float) = 0
        Vector1_713B5E36("TotalFrame", Float) = 0
        Vector1_FD9E303D("CurrentFrame", Float) = 0
        [HDR]Color_5D769878("MainColor", Color) = (1, 1, 1, 1)
        [HDR]Color_F30D2C02("RampColor", Color) = (1, 1, 1, 1)
        _PositionFix("PositionFix", Vector) = (0, 0, 0, 0)
        Vector1_6FE17041("ALPHA", Range(0, 1)) = 1
        Color_55C2B6AD("ShadowColorSmooth", Color) = (1, 1, 1, 1)
        Vector3_BDD3DB95("SpecularMove", Vector) = (1, 1, 1, 0)
        [HDR]Color_C62D7A7("SpecularColor", Color) = (1, 1, 1, 1)
        Vector1_E338451F("SpecularRange", Range(0.5, 1)) = 0.95
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="UniversalPipeline"
            "RenderType"="Transparent"
            "Queue"="Transparent+0"
        }
        
         Pass
        {
            Name "Pass"
            Tags
            {
        // LightMode: <None>
    }

    // Render State
    Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
    Cull front
    ZTest LEqual
    ZWrite Off
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
            #pragma shader_feature _ _SAMPLE_GI
            // GraphKeywords: <None>

            // Defines
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS 
            #define VARYINGS_NEED_NORMAL_WS
            #define VARYINGS_NEED_VIEWDIRECTION_WS
            #define FEATURES_GRAPH_VERTEX
            #define SHADERPASS_UNLIT

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
            float Vector1_753FEEC9;
            float Vector1_29C83DC1;
            float Vector1_713B5E36;
            float Vector1_FD9E303D;
            float4 Color_5D769878;
            float4 Color_F30D2C02;
            float3 _PositionFix;
            float Vector1_6FE17041;
            float4 Color_55C2B6AD;
            float3 Vector3_BDD3DB95;
            float4 Color_C62D7A7;
            float Vector1_E338451F;
            CBUFFER_END
            TEXTURE2D(Texture2D_DA4464BD); SAMPLER(samplerTexture2D_DA4464BD); float4 Texture2D_DA4464BD_TexelSize;
            TEXTURE2D(Texture2D_69B0C4F8); SAMPLER(samplerTexture2D_69B0C4F8); float4 Texture2D_69B0C4F8_TexelSize;

            // Graph Functions

            // aa9d72f9da61a43927bf05d75c39f599
            #include "Assets/VAT/VATHelper.hlsl"

            struct Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449
            {
                half4 uv0;
            };

            void SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_PARAM(Texture2D_723FE25D, samplerTexture2D_723FE25D), float4 Texture2D_723FE25D_TexelSize, TEXTURE2D_PARAM(Texture2D_B43CF398, samplerTexture2D_B43CF398), float4 Texture2D_B43CF398_TexelSize, float2 Vector2_3E3E2341, float Vector1_E465B47, float Vector1_344DB06C, Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 IN, out float3 Position_1, out float3 Normal_2)
            {
                float4 _UV_D1FCCDC4_Out_0 = IN.uv0;
                float2 _Property_105A5D0_Out_0 = Vector2_3E3E2341;
                float _Property_88BBAE5B_Out_0 = Vector1_E465B47;
                float _Property_8C752295_Out_0 = Vector1_344DB06C;
                float3 _CustomFunction_C1F80312_Position_6;
                float3 _CustomFunction_C1F80312_Normal_7;
                FluidVAT_float((_UV_D1FCCDC4_Out_0.xy), Texture2D_723FE25D, Texture2D_B43CF398, _Property_105A5D0_Out_0, _Property_88BBAE5B_Out_0, _Property_8C752295_Out_0, _CustomFunction_C1F80312_Position_6, _CustomFunction_C1F80312_Normal_7);
                Position_1 = _CustomFunction_C1F80312_Position_6;
                Normal_2 = _CustomFunction_C1F80312_Normal_7;
            }

            void Unity_Add_float3(float3 A, float3 B, out float3 Out)
            {
                Out = A + B;
            }

            // cb2022aaf4fb0a965dd50567e160ea9e
            #include "Assets/Includes/CustomLighting.hlsl"

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

            void Unity_Saturate_float(float In, out float Out)
            {
                Out = saturate(In);
            }

            void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
            {
                Out = lerp(A, B, T);
            }

            void Unity_Multiply_float(float A, float B, out float Out)
            {
                Out = A * B;
            }

            void Unity_Step_float(float Edge, float In, out float Out)
            {
                Out = step(Edge, In);
            }

            void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
            {
                Out = A * B;
            }

            void Unity_Power_float(float A, float B, out float Out)
            {
                Out = pow(A, B);
            }

            void Unity_Add_float4(float4 A, float4 B, out float4 Out)
            {
                Out = A + B;
            }

            // Graph Vertex
            struct VertexDescriptionInputs
            {
                float3 ObjectSpaceTangent;
                float4 uv0;
            };

            struct VertexDescription
            {
                float3 VertexPosition;
                float3 VertexNormal;
                float3 VertexTangent;
            };

            VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
            {
                VertexDescription description = (VertexDescription)0;
                float3 _Property_581C8F75_Out_0 = _PositionFix;
                float _Property_A6944D18_Out_0 = Vector1_753FEEC9;
                float _Property_E79F8A3A_Out_0 = Vector1_29C83DC1;
                float2 _Vector2_4B08F9AC_Out_0 = float2(_Property_A6944D18_Out_0, _Property_E79F8A3A_Out_0);
                float _Property_40AD6C65_Out_0 = Vector1_713B5E36;
                float _Property_5B6BE827_Out_0 = Vector1_FD9E303D;
                Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 _Fluid_86A4F35E;
                _Fluid_86A4F35E.uv0 = IN.uv0;
                float3 _Fluid_86A4F35E_Position_1;
                float3 _Fluid_86A4F35E_Normal_2;
                SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_ARGS(Texture2D_DA4464BD, samplerTexture2D_DA4464BD), Texture2D_DA4464BD_TexelSize, TEXTURE2D_ARGS(Texture2D_69B0C4F8, samplerTexture2D_69B0C4F8), Texture2D_69B0C4F8_TexelSize, _Vector2_4B08F9AC_Out_0, _Property_40AD6C65_Out_0, _Property_5B6BE827_Out_0, _Fluid_86A4F35E, _Fluid_86A4F35E_Position_1, _Fluid_86A4F35E_Normal_2);
                float3 _Add_48DDE024_Out_2;
                Unity_Add_float3(_Property_581C8F75_Out_0, _Fluid_86A4F35E_Position_1, _Add_48DDE024_Out_2);
                description.VertexPosition = _Add_48DDE024_Out_2;
                description.VertexNormal = _Fluid_86A4F35E_Normal_2;
                description.VertexTangent = IN.ObjectSpaceTangent;
                return description;
            }

            // Graph Pixel
            struct SurfaceDescriptionInputs
            {
                float3 ObjectSpaceNormal;
                float3 WorldSpaceNormal;
                float3 WorldSpaceViewDirection;
                float3 WorldSpacePosition;
                float3 AbsoluteWorldSpacePosition;
                float4 ScreenPosition;
            };

            struct SurfaceDescription
            {
                float3 Color;
                float Alpha;
                float AlphaClipThreshold;
            };

            SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
            {
                SurfaceDescription surface = (SurfaceDescription)0;
                float4 _Property_2B667BED_Out_0 = Color_55C2B6AD;
                Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_913C3334;
                _GetMainLight_913C3334.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                half3 _GetMainLight_913C3334_Direction_1;
                half3 _GetMainLight_913C3334_Color_2;
                half _GetMainLight_913C3334_DistanceAtten_3;
                half _GetMainLight_913C3334_ShadowAtten_4;
                SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_913C3334, _GetMainLight_913C3334_Direction_1, _GetMainLight_913C3334_Color_2, _GetMainLight_913C3334_DistanceAtten_3, _GetMainLight_913C3334_ShadowAtten_4);
                float3 _Normalize_8F7972FC_Out_1;
                Unity_Normalize_float3(_GetMainLight_913C3334_Direction_1, _Normalize_8F7972FC_Out_1);
                float3 _Normalize_E4A14AC7_Out_1;
                Unity_Normalize_float3(IN.ObjectSpaceNormal, _Normalize_E4A14AC7_Out_1);
                float _DotProduct_FC7D36CE_Out_2;
                Unity_DotProduct_float3(_Normalize_8F7972FC_Out_1, _Normalize_E4A14AC7_Out_1, _DotProduct_FC7D36CE_Out_2);
                float _Saturate_410F9BE_Out_1;
                Unity_Saturate_float(_DotProduct_FC7D36CE_Out_2, _Saturate_410F9BE_Out_1);
                float4 _Lerp_EA2D9E96_Out_3;
                Unity_Lerp_float4(_Property_2B667BED_Out_0, float4(1, 1, 1, 1), (_Saturate_410F9BE_Out_1.xxxx), _Lerp_EA2D9E96_Out_3);
                float4 _Property_EDE2DF12_Out_0 = Color_C62D7A7;
                float _Property_A28E4654_Out_0 = Vector1_E338451F;
                float3 _Property_C7C10506_Out_0 = Vector3_BDD3DB95;
                float3 _Add_AB356017_Out_2;
                Unity_Add_float3(_Property_C7C10506_Out_0, IN.WorldSpaceViewDirection, _Add_AB356017_Out_2);
                float3 _Normalize_BFE6B035_Out_1;
                Unity_Normalize_float3(_Add_AB356017_Out_2, _Normalize_BFE6B035_Out_1);
                float _DotProduct_728FE3B1_Out_2;
                Unity_DotProduct_float3(_Normalize_BFE6B035_Out_1, IN.ObjectSpaceNormal, _DotProduct_728FE3B1_Out_2);
                float _Saturate_94DCA2EC_Out_1;
                Unity_Saturate_float(_DotProduct_728FE3B1_Out_2, _Saturate_94DCA2EC_Out_1);
                float _Multiply_2F2E54A7_Out_2;
                Unity_Multiply_float(_Saturate_410F9BE_Out_1, _GetMainLight_913C3334_ShadowAtten_4, _Multiply_2F2E54A7_Out_2);
                float _Step_9E23421E_Out_2;
                Unity_Step_float(0.5, _Multiply_2F2E54A7_Out_2, _Step_9E23421E_Out_2);
                float _Multiply_45C77876_Out_2;
                Unity_Multiply_float(_Saturate_94DCA2EC_Out_1, _Step_9E23421E_Out_2, _Multiply_45C77876_Out_2);
                float _Step_F19F1F11_Out_2;
                Unity_Step_float(_Property_A28E4654_Out_0, _Multiply_45C77876_Out_2, _Step_F19F1F11_Out_2);
                float4 _Multiply_D7C613F_Out_2;
                Unity_Multiply_float(_Property_EDE2DF12_Out_0, (_Step_F19F1F11_Out_2.xxxx), _Multiply_D7C613F_Out_2);
                float4 _Property_8E132E99_Out_0 = Color_5D769878;
                float4 _Property_447F0F51_Out_0 = Color_F30D2C02;
                float4 _ScreenPosition_683593DF_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                float _Split_6E2DC0BF_R_1 = _ScreenPosition_683593DF_Out_0[0];
                float _Split_6E2DC0BF_G_2 = _ScreenPosition_683593DF_Out_0[1];
                float _Split_6E2DC0BF_B_3 = _ScreenPosition_683593DF_Out_0[2];
                float _Split_6E2DC0BF_A_4 = _ScreenPosition_683593DF_Out_0[3];
                float _Power_A709F1C2_Out_2;
                Unity_Power_float(_Split_6E2DC0BF_G_2, 3, _Power_A709F1C2_Out_2);
                float4 _Lerp_B46FB55D_Out_3;
                Unity_Lerp_float4(_Property_447F0F51_Out_0, float4(1, 1, 1, 1), (_Power_A709F1C2_Out_2.xxxx), _Lerp_B46FB55D_Out_3);
                float4 _Multiply_1DF8E86E_Out_2;
                Unity_Multiply_float(_Property_8E132E99_Out_0, _Lerp_B46FB55D_Out_3, _Multiply_1DF8E86E_Out_2);
                float4 _Add_79E71EDD_Out_2;
                Unity_Add_float4(_Multiply_D7C613F_Out_2, _Multiply_1DF8E86E_Out_2, _Add_79E71EDD_Out_2);
                float4 _Multiply_C818DA93_Out_2;
                Unity_Multiply_float(_Lerp_EA2D9E96_Out_3, _Add_79E71EDD_Out_2, _Multiply_C818DA93_Out_2);
                float _Property_2CF50122_Out_0 = Vector1_6FE17041;
                surface.Color = (_Multiply_C818DA93_Out_2.xyz);
                surface.Alpha = _Property_2CF50122_Out_0;
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
                float3 interp02 : TEXCOORD2;
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
                output.interp02.xyz = input.viewDirectionWS;
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
                output.viewDirectionWS = input.interp02.xyz;
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

            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);

                output.ObjectSpaceTangent = input.tangentOS;
                output.uv0 = input.uv0;

                return output;
            }

            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);

                // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
                float3 unnormalizedNormalWS = input.normalWS;
                const float renormFactor = 1.0 / length(unnormalizedNormalWS);


                output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;		// we want a unit length Normal Vector node in shader graph
                output.ObjectSpaceNormal = normalize(mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M));           // transposed multiplication by inverse matrix to handle normal scale


                output.WorldSpaceViewDirection = input.viewDirectionWS; //TODO: by default normalized in HD, but not in universal
                output.WorldSpacePosition = input.positionWS;
                output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
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
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/UnlitPass.hlsl"

            ENDHLSL
        }


        Pass
        {
            Name "Pass"
            Tags
            {
            // LightMode: <None>
        }

        // Render State
        Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
        Cull back
        ZTest LEqual
        ZWrite Off
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
            #pragma shader_feature _ _SAMPLE_GI
            // GraphKeywords: <None>

            // Defines
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS 
            #define VARYINGS_NEED_NORMAL_WS
            #define VARYINGS_NEED_VIEWDIRECTION_WS
            #define FEATURES_GRAPH_VERTEX
            #define SHADERPASS_UNLIT

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
            float Vector1_753FEEC9;
            float Vector1_29C83DC1;
            float Vector1_713B5E36;
            float Vector1_FD9E303D;
            float4 Color_5D769878;
            float4 Color_F30D2C02;
            float3 _PositionFix;
            float Vector1_6FE17041;
            float4 Color_55C2B6AD;
            float3 Vector3_BDD3DB95;
            float4 Color_C62D7A7;
            float Vector1_E338451F;
            CBUFFER_END
            TEXTURE2D(Texture2D_DA4464BD); SAMPLER(samplerTexture2D_DA4464BD); float4 Texture2D_DA4464BD_TexelSize;
            TEXTURE2D(Texture2D_69B0C4F8); SAMPLER(samplerTexture2D_69B0C4F8); float4 Texture2D_69B0C4F8_TexelSize;

            // Graph Functions

            // aa9d72f9da61a43927bf05d75c39f599
            #include "Assets/VAT/VATHelper.hlsl"

            struct Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449
            {
                half4 uv0;
            };

            void SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_PARAM(Texture2D_723FE25D, samplerTexture2D_723FE25D), float4 Texture2D_723FE25D_TexelSize, TEXTURE2D_PARAM(Texture2D_B43CF398, samplerTexture2D_B43CF398), float4 Texture2D_B43CF398_TexelSize, float2 Vector2_3E3E2341, float Vector1_E465B47, float Vector1_344DB06C, Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 IN, out float3 Position_1, out float3 Normal_2)
            {
                float4 _UV_D1FCCDC4_Out_0 = IN.uv0;
                float2 _Property_105A5D0_Out_0 = Vector2_3E3E2341;
                float _Property_88BBAE5B_Out_0 = Vector1_E465B47;
                float _Property_8C752295_Out_0 = Vector1_344DB06C;
                float3 _CustomFunction_C1F80312_Position_6;
                float3 _CustomFunction_C1F80312_Normal_7;
                FluidVAT_float((_UV_D1FCCDC4_Out_0.xy), Texture2D_723FE25D, Texture2D_B43CF398, _Property_105A5D0_Out_0, _Property_88BBAE5B_Out_0, _Property_8C752295_Out_0, _CustomFunction_C1F80312_Position_6, _CustomFunction_C1F80312_Normal_7);
                Position_1 = _CustomFunction_C1F80312_Position_6;
                Normal_2 = _CustomFunction_C1F80312_Normal_7;
            }

            void Unity_Add_float3(float3 A, float3 B, out float3 Out)
            {
                Out = A + B;
            }

            // cb2022aaf4fb0a965dd50567e160ea9e
            #include "Assets/Includes/CustomLighting.hlsl"

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

            void Unity_Saturate_float(float In, out float Out)
            {
                Out = saturate(In);
            }

            void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
            {
                Out = lerp(A, B, T);
            }

            void Unity_Multiply_float(float A, float B, out float Out)
            {
                Out = A * B;
            }

            void Unity_Step_float(float Edge, float In, out float Out)
            {
                Out = step(Edge, In);
            }

            void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
            {
                Out = A * B;
            }

            void Unity_Power_float(float A, float B, out float Out)
            {
                Out = pow(A, B);
            }

            void Unity_Add_float4(float4 A, float4 B, out float4 Out)
            {
                Out = A + B;
            }

            // Graph Vertex
            struct VertexDescriptionInputs
            {
                float3 ObjectSpaceTangent;
                float4 uv0;
            };

            struct VertexDescription
            {
                float3 VertexPosition;
                float3 VertexNormal;
                float3 VertexTangent;
            };

            VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
            {
                VertexDescription description = (VertexDescription)0;
                float3 _Property_581C8F75_Out_0 = _PositionFix;
                float _Property_A6944D18_Out_0 = Vector1_753FEEC9;
                float _Property_E79F8A3A_Out_0 = Vector1_29C83DC1;
                float2 _Vector2_4B08F9AC_Out_0 = float2(_Property_A6944D18_Out_0, _Property_E79F8A3A_Out_0);
                float _Property_40AD6C65_Out_0 = Vector1_713B5E36;
                float _Property_5B6BE827_Out_0 = Vector1_FD9E303D;
                Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 _Fluid_86A4F35E;
                _Fluid_86A4F35E.uv0 = IN.uv0;
                float3 _Fluid_86A4F35E_Position_1;
                float3 _Fluid_86A4F35E_Normal_2;
                SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_ARGS(Texture2D_DA4464BD, samplerTexture2D_DA4464BD), Texture2D_DA4464BD_TexelSize, TEXTURE2D_ARGS(Texture2D_69B0C4F8, samplerTexture2D_69B0C4F8), Texture2D_69B0C4F8_TexelSize, _Vector2_4B08F9AC_Out_0, _Property_40AD6C65_Out_0, _Property_5B6BE827_Out_0, _Fluid_86A4F35E, _Fluid_86A4F35E_Position_1, _Fluid_86A4F35E_Normal_2);
                float3 _Add_48DDE024_Out_2;
                Unity_Add_float3(_Property_581C8F75_Out_0, _Fluid_86A4F35E_Position_1, _Add_48DDE024_Out_2);
                description.VertexPosition = _Add_48DDE024_Out_2;
                description.VertexNormal = _Fluid_86A4F35E_Normal_2;
                description.VertexTangent = IN.ObjectSpaceTangent;
                return description;
            }

            // Graph Pixel
            struct SurfaceDescriptionInputs
            {
                float3 ObjectSpaceNormal;
                float3 WorldSpaceNormal;
                float3 WorldSpaceViewDirection;
                float3 WorldSpacePosition;
                float3 AbsoluteWorldSpacePosition;
                float4 ScreenPosition;
            };

            struct SurfaceDescription
            {
                float3 Color;
                float Alpha;
                float AlphaClipThreshold;
            };

            SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
            {
                SurfaceDescription surface = (SurfaceDescription)0;
                float4 _Property_2B667BED_Out_0 = Color_55C2B6AD;
                Bindings_GetMainLight_52012c17518825a429793d26daee4a8c _GetMainLight_913C3334;
                _GetMainLight_913C3334.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
                half3 _GetMainLight_913C3334_Direction_1;
                half3 _GetMainLight_913C3334_Color_2;
                half _GetMainLight_913C3334_DistanceAtten_3;
                half _GetMainLight_913C3334_ShadowAtten_4;
                SG_GetMainLight_52012c17518825a429793d26daee4a8c(_GetMainLight_913C3334, _GetMainLight_913C3334_Direction_1, _GetMainLight_913C3334_Color_2, _GetMainLight_913C3334_DistanceAtten_3, _GetMainLight_913C3334_ShadowAtten_4);
                float3 _Normalize_8F7972FC_Out_1;
                Unity_Normalize_float3(_GetMainLight_913C3334_Direction_1, _Normalize_8F7972FC_Out_1);
                float3 _Normalize_E4A14AC7_Out_1;
                Unity_Normalize_float3(IN.ObjectSpaceNormal, _Normalize_E4A14AC7_Out_1);
                float _DotProduct_FC7D36CE_Out_2;
                Unity_DotProduct_float3(_Normalize_8F7972FC_Out_1, _Normalize_E4A14AC7_Out_1, _DotProduct_FC7D36CE_Out_2);
                float _Saturate_410F9BE_Out_1;
                Unity_Saturate_float(_DotProduct_FC7D36CE_Out_2, _Saturate_410F9BE_Out_1);
                float4 _Lerp_EA2D9E96_Out_3;
                Unity_Lerp_float4(_Property_2B667BED_Out_0, float4(1, 1, 1, 1), (_Saturate_410F9BE_Out_1.xxxx), _Lerp_EA2D9E96_Out_3);
                float4 _Property_EDE2DF12_Out_0 = Color_C62D7A7;
                float _Property_A28E4654_Out_0 = Vector1_E338451F;
                float3 _Property_C7C10506_Out_0 = Vector3_BDD3DB95;
                float3 _Add_AB356017_Out_2;
                Unity_Add_float3(_Property_C7C10506_Out_0, IN.WorldSpaceViewDirection, _Add_AB356017_Out_2);
                float3 _Normalize_BFE6B035_Out_1;
                Unity_Normalize_float3(_Add_AB356017_Out_2, _Normalize_BFE6B035_Out_1);
                float _DotProduct_728FE3B1_Out_2;
                Unity_DotProduct_float3(_Normalize_BFE6B035_Out_1, IN.ObjectSpaceNormal, _DotProduct_728FE3B1_Out_2);
                float _Saturate_94DCA2EC_Out_1;
                Unity_Saturate_float(_DotProduct_728FE3B1_Out_2, _Saturate_94DCA2EC_Out_1);
                float _Multiply_2F2E54A7_Out_2;
                Unity_Multiply_float(_Saturate_410F9BE_Out_1, _GetMainLight_913C3334_ShadowAtten_4, _Multiply_2F2E54A7_Out_2);
                float _Step_9E23421E_Out_2;
                Unity_Step_float(0.5, _Multiply_2F2E54A7_Out_2, _Step_9E23421E_Out_2);
                float _Multiply_45C77876_Out_2;
                Unity_Multiply_float(_Saturate_94DCA2EC_Out_1, _Step_9E23421E_Out_2, _Multiply_45C77876_Out_2);
                float _Step_F19F1F11_Out_2;
                Unity_Step_float(_Property_A28E4654_Out_0, _Multiply_45C77876_Out_2, _Step_F19F1F11_Out_2);
                float4 _Multiply_D7C613F_Out_2;
                Unity_Multiply_float(_Property_EDE2DF12_Out_0, (_Step_F19F1F11_Out_2.xxxx), _Multiply_D7C613F_Out_2);
                float4 _Property_8E132E99_Out_0 = Color_5D769878;
                float4 _Property_447F0F51_Out_0 = Color_F30D2C02;
                float4 _ScreenPosition_683593DF_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                float _Split_6E2DC0BF_R_1 = _ScreenPosition_683593DF_Out_0[0];
                float _Split_6E2DC0BF_G_2 = _ScreenPosition_683593DF_Out_0[1];
                float _Split_6E2DC0BF_B_3 = _ScreenPosition_683593DF_Out_0[2];
                float _Split_6E2DC0BF_A_4 = _ScreenPosition_683593DF_Out_0[3];
                float _Power_A709F1C2_Out_2;
                Unity_Power_float(_Split_6E2DC0BF_G_2, 3, _Power_A709F1C2_Out_2);
                float4 _Lerp_B46FB55D_Out_3;
                Unity_Lerp_float4(_Property_447F0F51_Out_0, float4(1, 1, 1, 1), (_Power_A709F1C2_Out_2.xxxx), _Lerp_B46FB55D_Out_3);
                float4 _Multiply_1DF8E86E_Out_2;
                Unity_Multiply_float(_Property_8E132E99_Out_0, _Lerp_B46FB55D_Out_3, _Multiply_1DF8E86E_Out_2);
                float4 _Add_79E71EDD_Out_2;
                Unity_Add_float4(_Multiply_D7C613F_Out_2, _Multiply_1DF8E86E_Out_2, _Add_79E71EDD_Out_2);
                float4 _Multiply_C818DA93_Out_2;
                Unity_Multiply_float(_Lerp_EA2D9E96_Out_3, _Add_79E71EDD_Out_2, _Multiply_C818DA93_Out_2);
                float _Property_2CF50122_Out_0 = Vector1_6FE17041;
                surface.Color = (_Multiply_C818DA93_Out_2.xyz);
                surface.Alpha = _Property_2CF50122_Out_0;
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
                float3 interp02 : TEXCOORD2;
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
                output.interp02.xyz = input.viewDirectionWS;
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
                output.viewDirectionWS = input.interp02.xyz;
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

            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
            {
                VertexDescriptionInputs output;
                ZERO_INITIALIZE(VertexDescriptionInputs, output);

                output.ObjectSpaceTangent = input.tangentOS;
                output.uv0 = input.uv0;

                return output;
            }

            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);

                // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
                float3 unnormalizedNormalWS = input.normalWS;
                const float renormFactor = 1.0 / length(unnormalizedNormalWS);


                output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;		// we want a unit length Normal Vector node in shader graph
                output.ObjectSpaceNormal = normalize(mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M));           // transposed multiplication by inverse matrix to handle normal scale


                output.WorldSpaceViewDirection = input.viewDirectionWS; //TODO: by default normalized in HD, but not in universal
                output.WorldSpacePosition = input.positionWS;
                output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
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
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/UnlitPass.hlsl"

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
                Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
                Cull Off
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
                #pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A
                // GraphKeywords: <None>

                // Defines
                #define _SURFACE_TYPE_TRANSPARENT 1
                #define ATTRIBUTES_NEED_NORMAL
                #define ATTRIBUTES_NEED_TANGENT
                #define ATTRIBUTES_NEED_TEXCOORD0
                #define FEATURES_GRAPH_VERTEX
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
                float Vector1_753FEEC9;
                float Vector1_29C83DC1;
                float Vector1_713B5E36;
                float Vector1_FD9E303D;
                float4 Color_5D769878;
                float4 Color_F30D2C02;
                float4 Color_DE23930F;
                float3 _PositionFix;
                float Vector1_6FE17041;
                float4 Color_C62D7A7;
                CBUFFER_END
                TEXTURE2D(Texture2D_DA4464BD); SAMPLER(samplerTexture2D_DA4464BD); float4 Texture2D_DA4464BD_TexelSize;
                TEXTURE2D(Texture2D_69B0C4F8); SAMPLER(samplerTexture2D_69B0C4F8); float4 Texture2D_69B0C4F8_TexelSize;

                // Graph Functions

                // aa9d72f9da61a43927bf05d75c39f599
                #include "Assets/VAT/VATHelper.hlsl"

                struct Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449
                {
                    half4 uv0;
                };

                void SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_PARAM(Texture2D_723FE25D, samplerTexture2D_723FE25D), float4 Texture2D_723FE25D_TexelSize, TEXTURE2D_PARAM(Texture2D_B43CF398, samplerTexture2D_B43CF398), float4 Texture2D_B43CF398_TexelSize, float2 Vector2_3E3E2341, float Vector1_E465B47, float Vector1_344DB06C, Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 IN, out float3 Position_1, out float3 Normal_2)
                {
                    float4 _UV_D1FCCDC4_Out_0 = IN.uv0;
                    float2 _Property_105A5D0_Out_0 = Vector2_3E3E2341;
                    float _Property_88BBAE5B_Out_0 = Vector1_E465B47;
                    float _Property_8C752295_Out_0 = Vector1_344DB06C;
                    float3 _CustomFunction_C1F80312_Position_6;
                    float3 _CustomFunction_C1F80312_Normal_7;
                    FluidVAT_float((_UV_D1FCCDC4_Out_0.xy), Texture2D_723FE25D, Texture2D_B43CF398, _Property_105A5D0_Out_0, _Property_88BBAE5B_Out_0, _Property_8C752295_Out_0, _CustomFunction_C1F80312_Position_6, _CustomFunction_C1F80312_Normal_7);
                    Position_1 = _CustomFunction_C1F80312_Position_6;
                    Normal_2 = _CustomFunction_C1F80312_Normal_7;
                }

                void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                {
                    Out = A + B;
                }

                // Graph Vertex
                struct VertexDescriptionInputs
                {
                    float3 ObjectSpaceTangent;
                    float4 uv0;
                };

                struct VertexDescription
                {
                    float3 VertexPosition;
                    float3 VertexNormal;
                    float3 VertexTangent;
                };

                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    float3 _Property_581C8F75_Out_0 = _PositionFix;
                    float _Property_A6944D18_Out_0 = Vector1_753FEEC9;
                    float _Property_E79F8A3A_Out_0 = Vector1_29C83DC1;
                    float2 _Vector2_4B08F9AC_Out_0 = float2(_Property_A6944D18_Out_0, _Property_E79F8A3A_Out_0);
                    float _Property_40AD6C65_Out_0 = Vector1_713B5E36;
                    float _Property_5B6BE827_Out_0 = Vector1_FD9E303D;
                    Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 _Fluid_86A4F35E;
                    _Fluid_86A4F35E.uv0 = IN.uv0;
                    float3 _Fluid_86A4F35E_Position_1;
                    float3 _Fluid_86A4F35E_Normal_2;
                    SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_ARGS(Texture2D_DA4464BD, samplerTexture2D_DA4464BD), Texture2D_DA4464BD_TexelSize, TEXTURE2D_ARGS(Texture2D_69B0C4F8, samplerTexture2D_69B0C4F8), Texture2D_69B0C4F8_TexelSize, _Vector2_4B08F9AC_Out_0, _Property_40AD6C65_Out_0, _Property_5B6BE827_Out_0, _Fluid_86A4F35E, _Fluid_86A4F35E_Position_1, _Fluid_86A4F35E_Normal_2);
                    float3 _Add_48DDE024_Out_2;
                    Unity_Add_float3(_Property_581C8F75_Out_0, _Fluid_86A4F35E_Position_1, _Add_48DDE024_Out_2);
                    description.VertexPosition = _Add_48DDE024_Out_2;
                    description.VertexNormal = _Fluid_86A4F35E_Normal_2;
                    description.VertexTangent = IN.ObjectSpaceTangent;
                    return description;
                }

                // Graph Pixel
                struct SurfaceDescriptionInputs
                {
                };

                struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };

                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    float _Property_2CF50122_Out_0 = Vector1_6FE17041;
                    surface.Alpha = _Property_2CF50122_Out_0;
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

                VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);

                    output.ObjectSpaceTangent = input.tangentOS;
                    output.uv0 = input.uv0;

                    return output;
                }

                SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);





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
                    Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
                    Cull Off
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
                    #define _SURFACE_TYPE_TRANSPARENT 1
                    #define ATTRIBUTES_NEED_TANGENT
                    #define ATTRIBUTES_NEED_TEXCOORD0
                    #define FEATURES_GRAPH_VERTEX
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
                    float Vector1_753FEEC9;
                    float Vector1_29C83DC1;
                    float Vector1_713B5E36;
                    float Vector1_FD9E303D;
                    float4 Color_5D769878;
                    float4 Color_F30D2C02;
                    float4 Color_DE23930F;
                    float3 _PositionFix;
                    float Vector1_6FE17041;
                    float4 Color_C62D7A7;
                    CBUFFER_END
                    TEXTURE2D(Texture2D_DA4464BD); SAMPLER(samplerTexture2D_DA4464BD); float4 Texture2D_DA4464BD_TexelSize;
                    TEXTURE2D(Texture2D_69B0C4F8); SAMPLER(samplerTexture2D_69B0C4F8); float4 Texture2D_69B0C4F8_TexelSize;

                    // Graph Functions

                    // aa9d72f9da61a43927bf05d75c39f599
                    #include "Assets/VAT/VATHelper.hlsl"

                    struct Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449
                    {
                        half4 uv0;
                    };

                    void SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_PARAM(Texture2D_723FE25D, samplerTexture2D_723FE25D), float4 Texture2D_723FE25D_TexelSize, TEXTURE2D_PARAM(Texture2D_B43CF398, samplerTexture2D_B43CF398), float4 Texture2D_B43CF398_TexelSize, float2 Vector2_3E3E2341, float Vector1_E465B47, float Vector1_344DB06C, Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 IN, out float3 Position_1, out float3 Normal_2)
                    {
                        float4 _UV_D1FCCDC4_Out_0 = IN.uv0;
                        float2 _Property_105A5D0_Out_0 = Vector2_3E3E2341;
                        float _Property_88BBAE5B_Out_0 = Vector1_E465B47;
                        float _Property_8C752295_Out_0 = Vector1_344DB06C;
                        float3 _CustomFunction_C1F80312_Position_6;
                        float3 _CustomFunction_C1F80312_Normal_7;
                        FluidVAT_float((_UV_D1FCCDC4_Out_0.xy), Texture2D_723FE25D, Texture2D_B43CF398, _Property_105A5D0_Out_0, _Property_88BBAE5B_Out_0, _Property_8C752295_Out_0, _CustomFunction_C1F80312_Position_6, _CustomFunction_C1F80312_Normal_7);
                        Position_1 = _CustomFunction_C1F80312_Position_6;
                        Normal_2 = _CustomFunction_C1F80312_Normal_7;
                    }

                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }

                    // Graph Vertex
                    struct VertexDescriptionInputs
                    {
                        float3 ObjectSpaceTangent;
                        float4 uv0;
                    };

                    struct VertexDescription
                    {
                        float3 VertexPosition;
                        float3 VertexNormal;
                        float3 VertexTangent;
                    };

                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float3 _Property_581C8F75_Out_0 = _PositionFix;
                        float _Property_A6944D18_Out_0 = Vector1_753FEEC9;
                        float _Property_E79F8A3A_Out_0 = Vector1_29C83DC1;
                        float2 _Vector2_4B08F9AC_Out_0 = float2(_Property_A6944D18_Out_0, _Property_E79F8A3A_Out_0);
                        float _Property_40AD6C65_Out_0 = Vector1_713B5E36;
                        float _Property_5B6BE827_Out_0 = Vector1_FD9E303D;
                        Bindings_Fluid_034419a0e2c27f047b3af59b3f0db449 _Fluid_86A4F35E;
                        _Fluid_86A4F35E.uv0 = IN.uv0;
                        float3 _Fluid_86A4F35E_Position_1;
                        float3 _Fluid_86A4F35E_Normal_2;
                        SG_Fluid_034419a0e2c27f047b3af59b3f0db449(TEXTURE2D_ARGS(Texture2D_DA4464BD, samplerTexture2D_DA4464BD), Texture2D_DA4464BD_TexelSize, TEXTURE2D_ARGS(Texture2D_69B0C4F8, samplerTexture2D_69B0C4F8), Texture2D_69B0C4F8_TexelSize, _Vector2_4B08F9AC_Out_0, _Property_40AD6C65_Out_0, _Property_5B6BE827_Out_0, _Fluid_86A4F35E, _Fluid_86A4F35E_Position_1, _Fluid_86A4F35E_Normal_2);
                        float3 _Add_48DDE024_Out_2;
                        Unity_Add_float3(_Property_581C8F75_Out_0, _Fluid_86A4F35E_Position_1, _Add_48DDE024_Out_2);
                        description.VertexPosition = _Add_48DDE024_Out_2;
                        description.VertexNormal = _Fluid_86A4F35E_Normal_2;
                        description.VertexTangent = IN.ObjectSpaceTangent;
                        return description;
                    }

                    // Graph Pixel
                    struct SurfaceDescriptionInputs
                    {
                    };

                    struct SurfaceDescription
                    {
                        float Alpha;
                        float AlphaClipThreshold;
                    };

                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float _Property_2CF50122_Out_0 = Vector1_6FE17041;
                        surface.Alpha = _Property_2CF50122_Out_0;
                        surface.AlphaClipThreshold = 0;
                        return surface;
                    }

                    // --------------------------------------------------
                    // Structs and Packing

                    // Generated Type: Attributes
                    struct Attributes
                    {
                        float3 positionOS : POSITION;
                        float4 tangentOS : TANGENT;
                        float4 uv0 : TEXCOORD0;
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

                    VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                    {
                        VertexDescriptionInputs output;
                        ZERO_INITIALIZE(VertexDescriptionInputs, output);

                        output.ObjectSpaceTangent = input.tangentOS;
                        output.uv0 = input.uv0;

                        return output;
                    }

                    SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                    {
                        SurfaceDescriptionInputs output;
                        ZERO_INITIALIZE(SurfaceDescriptionInputs, output);





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

        }
            FallBack "Hidden/Shader Graph/FallbackError"
}