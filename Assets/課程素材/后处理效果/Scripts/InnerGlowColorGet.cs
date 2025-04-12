using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.Universal;
using UnityEngine.UI;

[ExecuteInEditMode]
public class InnerGlowColorGet : MonoBehaviour
{
    public Material InnerColorMat;

    public Color InnerGlowColor;
    public Color ColorDown;
    public Color ColorCenter;
    public Color ColorCenterUpBig;
    public Color ColorCenterUpSmall;
    public Color ColorLightMachine;
    public Color UpColor;
    public Color DownColor;
    [Range(0,1)]
    public float InnerGlowRange;


    [Header("將使用中的 Material 設定到 RawImage 中")]
    public bool assignMaterialToRawImage = true;

    // 執行期材質球清單
    private static Dictionary<Material, Material> materialInstances = new Dictionary<Material, Material>();

    private RawImage myRawImage;

    public Material GetCurrentMaterial()
    {
        if (Application.isPlaying)
        {
            return materialInstances.ContainsKey(InnerColorMat) ? materialInstances[InnerColorMat] : null;
        }
        else
        {
            return InnerColorMat;
        }
    }

    private void updateMaterial(Material material)
    {
        if (material == null) return;
        material.SetColor("_InnerGlowColor", InnerGlowColor);
        if (assignMaterialToRawImage)
        {
            if (myRawImage == null) myRawImage = GetComponent<RawImage>();
            if (myRawImage != null) myRawImage.material = material;
        }
    }


    void Update()
    {
        if (Application.isPlaying)
        {
            updateMaterial(InnerColorMat);
        }
        else
        {
            // 編輯器下直接更新原始資源
            updateMaterial(InnerColorMat);
        }

        Shader.SetGlobalVector("_InnerGlowColor", InnerGlowColor);
        Shader.SetGlobalVector("_ColorCenter", ColorCenter);
        Shader.SetGlobalVector("_ColorDown", ColorDown);
        Shader.SetGlobalVector("_ColorCenterUpBig", ColorCenterUpBig);
        Shader.SetGlobalVector("_ColorCenterUpSmall", ColorCenterUpSmall);
        Shader.SetGlobalVector("_ColorLightMachine", ColorLightMachine);
        Shader.SetGlobalVector("_UpColor", UpColor);
        Shader.SetGlobalVector("_DownColor", DownColor);
        Shader.SetGlobalFloat("_InnerGlowRange", InnerGlowRange);
    }
}
