
TEXTURE2D(_BlueNoise);
SAMPLER(sampler_PointRepeat);

float4 _BlueNoise_TexelSize;

void SetJitter(float4 scrPos) {
    float2 uv = (scrPos.xy / scrPos.w) * _ScreenParams.xy;
#if VL_BLUENOISE
    float2 noiseUV = uv * _BlueNoise_TexelSize.xy + _WindDirection.ww;
    jitter = SAMPLE_TEXTURE2D(_BlueNoise, sampler_PointRepeat, noiseUV).r;
#else
    const float3 magic = float3( 0.06711056, 0.00583715, 52.9829189 );
    jitter = frac( magic.z * frac( dot( uv, magic.xy ) ) );
#endif

}


inline float3 ProjectOnPlane(float3 v, float3 planeNormal) {
    float sqrMag = dot(planeNormal, planeNormal);
    float dt = dot(v, planeNormal);
	return v - planeNormal * dt / sqrMag;
}

inline float3 GetRayStart(float3 wpos) {
    float3 cameraPosition = GetCameraPositionWS();
    #if defined(ORTHO_SUPPORT)
	    float3 cameraForward = UNITY_MATRIX_V[2].xyz;
	    float3 rayStart = ProjectOnPlane(wpos - cameraPosition, cameraForward) + cameraPosition;
        return lerp(cameraPosition, rayStart, unity_OrthoParams.w);
    #else
        return cameraPosition;
    #endif
}


half SampleDensity(float3 wpos) {

#if VL_NOISE    
    half density = tex3Dlod(_MainTex, float4(wpos * _NoiseScale - _WindDirection.xyz, 0)).r;
    density = saturate( (1.0 - density * _NoiseStrength) * _NoiseFinalMultiplier);
#else
    half density = 1.0;
#endif

    return density * DistanceAttenuation(wpos);
}

void AddFog(float3 wpos, float4 scrPos, float rs, half4 baseColor, inout half4 sum) {

   half density = SampleDensity(wpos);

   float energyStep = min(1.0, _Density * rs);

   if (density > 0) {
        half4 fgCol = baseColor;
        fgCol.a *= density;
        fgCol.rgb *= fgCol.aaa;
        fgCol.a = min(1.0, fgCol.a);

        fgCol *= energyStep;
        sum += fgCol * (1.0 - sum.a);
   }
}



half4 Raymarch(float3 rayStart, float3 rayDir, float4 scrPos, float t0, float t1) {

    #if VL_DIFFUSION
        #if VL_POINT
            float spec = max(dot(rayDir, normalize(_ConeTipData.xyz - _WorldSpaceCameraPos)), 0);
        #else
            float spec = max(dot(rayDir, _ToLightDir.xyz), 0);
        #endif
        float diffusion = 1.0 + spec * spec * _ToLightDir.w;
        half3 diffusionColor = _LightColor.rgb * diffusion;
        half4 lightColor = half4(diffusionColor, 1.0);
    #else
        half4 lightColor = half4(_LightColor.rgb, 1.0);
    #endif

    float rs = MIN_STEPPING + max(0, log(t1-t0)) / FOG_STEPPING;
    half4 sum = half4(0,0,0,0);

	float t = t0;
    float3 wpos = rayStart + rayDir * t;
    rayDir *= rs;

    // Uncomment the UNITY_UNROLLX line below to support shadows on WebGL 2.0 and also adjust 50 number (increase if needed)
    // UNITY_UNROLLX(50)

    while (t < t1) {
        #if VL_SHADOWS
            half atten = GetShadowAtten(t, t0, t1);
            AddFog(wpos, scrPos, rs, lightColor * atten, sum);
        #else 
            AddFog(wpos, scrPos, rs, lightColor, sum);
        #endif
        t += rs;
        wpos += rayDir;
        if (sum.a > 0.99) break;
    }

    // Last step (skipped since jittering solves banding and it's necessary for improving shadow effect)
/*
    float excess = t - t1;
    wpos -= rayDir * excess;
    #if VL_SHADOWS
        half atten = GetShadowAttenAtEnd();
        AddFog(wpos, scrPos, rs - excess, lightColor * atten, sum);
    #else
        AddFog(wpos, scrPos, rs - excess, lightColor, sum);
    #endif
*/

    // Apply dither
	sum = max(0, sum + (jitter - 0.5) * DITHERING);

    // Final alpha
    sum *= _LightColor.a;

    return sum;
}