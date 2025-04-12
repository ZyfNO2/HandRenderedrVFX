#ifndef MY_DEPTH_INCLUDED
#define MY_DEPTH_INCLUDED

void MyDepth_float(float3 ObjPosition, out float2 ObjPositionClipUV)
{
#if SHADERGRAPH_PREVIEW
    ObjPositionClipUV = (0,0);
#else
    float3 quadPivotPosWS = TransformObjectToWorld(ObjPosition);
    float3 quadPivotPosVS = TransformWorldToView(quadPivotPosWS);
    float3 testPosVS = quadPivotPosVS;
    float4 PivotPosCS = mul(GetViewToHClipMatrix(), float4(testPosVS, 1));
    float4 PivotScreenPos = ComputeScreenPos(PivotPosCS);
    float2 screenUV = PivotScreenPos.xy / PivotScreenPos.w;
    ObjPositionClipUV = screenUV;
#endif
}

#endif
