using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class FuntoyBloomRenderFeature : ScriptableRendererFeature
{
    [System.Serializable]
    public class BloomSettings
    {
        public Material radiaBlurMaterial = null;

        public Material greyWhiteMaterial = null;

        public Material bloomMaterial = null;

        [Range(2, 6)] public int MaxIterations = 6;

        [Range(0, 6)] public int Range = 3;

        [Range(0.0f, 5.0f)] public float BloomThreshold = 0.8f;

        [Range(0, 10f)] public float BloomIntensity = 0.2f;
    }

    public class FuntoyBloomPass : ScriptableRenderPass
    {
        private BloomSettings mBloomSettings;
        private string mProfilerTag;
        private RenderTextureFormat rtFormat;
        private RenderTextureDescriptor rtDescBase;
       // private float mBloomIntensity;
      //  private int mMaxRange;
     //   private float mBloomThreshold;
        private int mIterations;
        private int mRange;
        private RenderTexture[] rtTexture;
        private RenderTargetIdentifier[] rt;
        private RenderTexture rt2Texture;
        private RenderTargetIdentifier rt2;

        private FuntoyRenderBuffer funtoyRenderBuffer;
        private FuntoyGrabTexturePass funtoyGrabTexturePass;

        public FuntoyBloomPass(RenderPassEvent renderPassEvent, BloomSettings bloomSettings, string tag)
        {
            this.renderPassEvent = renderPassEvent;
            mBloomSettings = bloomSettings;
            mProfilerTag = tag;
            funtoyRenderBuffer = new FuntoyRenderBuffer();
            funtoyGrabTexturePass = new FuntoyGrabTexturePass();
           // mMaxIterations = maxIterations;
           //   mBloomIntensity = bloomIntensity;
           //  mMaxRange = range;
           //   mBloomThreshold = bloomThreshold;
        }

        public void Setup(RenderTargetIdentifier source)
        {
            funtoyRenderBuffer.Setup(source);
            funtoyGrabTexturePass.Setup(funtoyRenderBuffer);
        }


        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (!renderingData.cameraData.postProcessEnabled)
                return;

            funtoyRenderBuffer.InitCustomSource(renderingData);

            funtoyGrabTexturePass.Execute(context, ref renderingData);

            CommandBuffer cmd = CommandBufferPool.Get(mProfilerTag);            

            if (FuntoyGlobalSettings.UseGreyWhiteNew && FuntoyGlobalSettings.GreyWhiteNewMaterial != null)
            {
                FuntoyGlobalSettings.GreyWhiteNewMaterial.SetFloat("_Amount", FuntoyGlobalSettings.GreyWhiteNewAmount);
                FuntoyGlobalSettings.GreyWhiteNewMaterial.SetInt("_Switch", FuntoyGlobalSettings.GreyWhiteNewSwitch);
                FuntoyGlobalSettings.GreyWhiteNewMaterial.SetInt("_Change", FuntoyGlobalSettings.GreyWhiteNewChange);
                cmd.Blit(funtoyRenderBuffer.GetSource(), funtoyRenderBuffer.GetTarget(), FuntoyGlobalSettings.GreyWhiteNewMaterial);
                context.ExecuteCommandBuffer(cmd);
                cmd.Clear();
                funtoyRenderBuffer.SwapBuffer();
            }

            if (mBloomSettings.radiaBlurMaterial != null && FuntoyGlobalSettings.UseRadiaBlur)
            {
                mBloomSettings.radiaBlurMaterial.SetFloat("_Level", FuntoyGlobalSettings.RadiaBlurLevel);
                mBloomSettings.radiaBlurMaterial.SetFloat("_CenterX", FuntoyGlobalSettings.RadiaBlurCenterX);
                mBloomSettings.radiaBlurMaterial.SetFloat("_CenterY", FuntoyGlobalSettings.RadiaBlurCenterY);
                mBloomSettings.radiaBlurMaterial.SetFloat("_BufferRadius", FuntoyGlobalSettings.RadiaBlurBufferRadius);

                cmd.Blit(funtoyRenderBuffer.GetSource(), funtoyRenderBuffer.GetTarget(), mBloomSettings.radiaBlurMaterial);
                context.ExecuteCommandBuffer(cmd);
                cmd.Clear();
                funtoyRenderBuffer.SwapBuffer();
            }

            if (mBloomSettings.bloomMaterial != null && FuntoyGlobalSettings.UseBloom)
            {
                mIterations = mBloomSettings.MaxIterations;
                if (FuntoyGlobalSettings.EnableCustomBloom)
                {
                    mRange = Mathf.Max(0, FuntoyGlobalSettings.BloomCustomRange - (6 - mBloomSettings.MaxIterations));
                    if (mBloomSettings.bloomMaterial != null)
                    {
                        float threshold = FuntoyGlobalSettings.BloomCustomThreshold;
                        if (QualitySettings.activeColorSpace == ColorSpace.Linear)
                        {
                            threshold *= threshold;
                        }
                        mBloomSettings.bloomMaterial.SetVector("_Bloom", new Vector4(FuntoyGlobalSettings.BloomCustomIntensity, 0, 0, threshold));
                    }
                }
                else
                {
                    mRange = Mathf.Max(0, mBloomSettings.Range - (6 - mBloomSettings.MaxIterations));
                    if (mBloomSettings.bloomMaterial != null)
                    {
                        float threshold = mBloomSettings.BloomThreshold;
                        if (QualitySettings.activeColorSpace == ColorSpace.Linear)
                        {
                            threshold *= threshold;
                        }
                        mBloomSettings.bloomMaterial.SetVector("_Bloom", new Vector4(mBloomSettings.BloomIntensity, 0, 0, threshold));
                    }
                }

               // rtFormat = renderingData.cameraData.camera.allowHDR ? RenderTextureFormat.DefaultHDR : RenderTextureFormat.Default;
               // rtFormat = SystemInfo.SupportsRenderTextureFormat(RenderTextureFormat.RGB111110Float) ? RenderTextureFormat.RGB111110Float : RenderTextureFormat.ARGB32;
                rtDescBase = renderingData.cameraData.cameraTargetDescriptor;
                rtDescBase.msaaSamples = 1;
              //  rtDescBase.colorFormat = rtFormat;
                rtDescBase.depthBufferBits = 0;
                int width;
                int height;
                float aspectRatio = (float)rtDescBase.height / rtDescBase.width;
                if (aspectRatio < 1)
                {
                    width = (int)Mathf.Pow(2, mIterations + 4);
                    while (width >= rtDescBase.width)
                    {
                        mIterations--;
                        width = (int)Mathf.Pow(2, mIterations + 4);
                    }
                    height = Mathf.Max(1, (int)(width * aspectRatio));
                }
                else
                {
                    height = (int)Mathf.Pow(2, mIterations + 4);
                    while (height >= rtDescBase.height)
                    {
                        mIterations--;
                        height = (int)Mathf.Pow(2, mIterations + 4);
                    }
                    width = Mathf.Max(1, (int)(height / aspectRatio));
                }

                if (mRange < 0)
                {
                    return;
                }

                // Bloom buffers
                if (rt == null || rt.Length != mRange + 1)
                {
                    rt = new RenderTargetIdentifier[mRange + 1];
                    rtTexture = new RenderTexture[mRange + 1];
                }
                RenderTextureDescriptor rtBloomDescriptor = rtDescBase;
                rtBloomDescriptor.width = width;
                rtBloomDescriptor.height = height;
                rtTexture[0] = RenderTexture.GetTemporary(rtBloomDescriptor);
                rt[0] = rtTexture[0];
                rt2Texture = RenderTexture.GetTemporary(rtBloomDescriptor);
                rt2 = rt2Texture;
                cmd.Blit(funtoyRenderBuffer.GetSource(), rt2, mBloomSettings.bloomMaterial, 1);

                cmd.SetGlobalFloat("_BlurScale", 1);
                cmd.Blit(rt2, rt[0], mBloomSettings.bloomMaterial, 2);

                context.ExecuteCommandBuffer(cmd);

                cmd.Clear();

                if (rt2Texture != null)
                {
                    RenderTexture.ReleaseTemporary(rt2Texture);
                }

                width >>= 1;
                height >>= 1;
                for (int i = 1; i <= mRange; i++)
                {
                    rtBloomDescriptor.width = Mathf.Max(width,1);
                    rtBloomDescriptor.height = Mathf.Max(height,1);
                    rtTexture[i] = RenderTexture.GetTemporary(rtBloomDescriptor);
                    rt[i] = rtTexture[i];
                    width >>= 1;
                    height >>= 1;
                }

                for (int i = 0; i < mRange; i++)
                {
                    cmd.SetGlobalFloat("_BlurScale", 2);
                    cmd.Blit(rt[i], rt[i + 1], mBloomSettings.bloomMaterial, 2);
                }

                context.ExecuteCommandBuffer(cmd);

                cmd.Clear();

                for (int i = mRange; i > 0; i--)
                {
                    rtTexture[i - 1].MarkRestoreExpected();
                    rt[i - 1] = rtTexture[i - 1];
                    cmd.Blit(rt[i], rt[i - 1], mBloomSettings.bloomMaterial, 3);
                }
                cmd.SetGlobalTexture("_BloomTex", rt[0]);
                cmd.Blit(funtoyRenderBuffer.GetSource(), funtoyRenderBuffer.GetTarget(), mBloomSettings.bloomMaterial, 0);
                context.ExecuteCommandBuffer(cmd);
                cmd.Clear();
                if (rtTexture != null)
                {
                    for (int i = 0; i < rtTexture.Length; i++)
                    {
                        if (rtTexture[i] != null)
                        {
                            RenderTexture.ReleaseTemporary(rtTexture[i]);
                            rtTexture[i] = null;
                        }
                    }
                }
                funtoyRenderBuffer.SwapBuffer();
            }

            funtoyRenderBuffer.FinalCopy(context, cmd);

            CommandBufferPool.Release(cmd);
        }
    }

    public BloomSettings settings = new BloomSettings();

    FuntoyBloomPass bloomPass;

    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        bloomPass.Setup(renderer.cameraColorTarget);

        renderer.EnqueuePass(bloomPass);
    }

    public override void Create()
    {
       /* FuntoyBloomSettings.BloomThreshold = settings.BloomThreshold;
        FuntoyBloomSettings.Range = settings.Range;
        FuntoyBloomSettings.BloomIntensity = settings.BloomIntensity;
        FuntoyBloomSettings.MaxIterations = settings.MaxIterations;*/
        bloomPass = new FuntoyBloomPass(RenderPassEvent.BeforeRenderingPostProcessing, settings, name);
    }
}
