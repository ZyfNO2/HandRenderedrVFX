using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class FuntoyGrabTexturePass : ScriptableRenderPass
{
    private ShaderTagId mGrabTextureShaderTag;
    private RenderTexture grabTexture = null;
    private RenderTargetIdentifier grabTextureIdentifier;
    private FuntoyRenderBuffer funtoyRenderBuffer;
    private FilteringSettings mGrabFilter;

    public FuntoyGrabTexturePass()
    {
        mGrabTextureShaderTag = new ShaderTagId("GrabTexture");
        RenderQueueRange queue = new RenderQueueRange();
        queue.lowerBound = 2000;
        queue.upperBound = 3000;
        mGrabFilter = new FilteringSettings(queue);
    }

    public void Setup(FuntoyRenderBuffer funtoyRenderBuffer)
    {
        this.funtoyRenderBuffer = funtoyRenderBuffer;
    }

    public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
    {
        if (!renderingData.cameraData.postProcessEnabled)
            return;
        if (FuntoyGlobalSettings.EnableGrabTexture)
        {
            RenderTextureDescriptor rtDescBase = renderingData.cameraData.cameraTargetDescriptor;
            grabTexture = RenderTexture.GetTemporary(rtDescBase);
            grabTextureIdentifier = grabTexture;
            CommandBuffer cmd = CommandBufferPool.Get("GrabTexture");
            cmd.Blit(funtoyRenderBuffer.GetSource(), grabTextureIdentifier);
            cmd.SetGlobalTexture("_GrabTexture", grabTextureIdentifier);
            cmd.SetRenderTarget(funtoyRenderBuffer.GetSource());
            context.ExecuteCommandBuffer(cmd);

            DrawingSettings grabTextureSetting = CreateDrawingSettings(mGrabTextureShaderTag, ref renderingData, SortingCriteria.CommonTransparent);
            context.DrawRenderers(renderingData.cullResults, ref grabTextureSetting,ref mGrabFilter);
                                
            CommandBufferPool.Release(cmd);
            RenderTexture.ReleaseTemporary(grabTexture);
            grabTexture = null;
        }
    }
}
