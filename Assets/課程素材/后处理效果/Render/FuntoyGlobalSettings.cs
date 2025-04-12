using UnityEngine;

public class FuntoyGlobalSettings
{
    //Bloom
    public static bool UseBloom = true;

    public static bool EnableCustomBloom = false;

    public static int BloomCustomRange;

    public static float BloomCustomThreshold;

    public static float BloomCustomIntensity;

    //Radia Blur
    public static bool UseRadiaBlur = false;

    public static float RadiaBlurLevel;

    public static float RadiaBlurCenterX;

    public static float RadiaBlurCenterY;

    public static float RadiaBlurBufferRadius;

    //GreyWhiteNew
    public static bool UseGreyWhiteNew = false;

    public static Material GreyWhiteNewMaterial;

    public static float GreyWhiteNewAmount;

    public static int GreyWhiteNewSwitch;

    public static int GreyWhiteNewChange;

    //role_shadowcaster标记的更换成深度shader
    public static bool RenderDepthShader = false;

    public static bool EnableHighQuialityRole = false;

    public static bool EnableGrabTexture = false;

}
