using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.Universal;
using UnityEngine.UI;

[ExecuteInEditMode]
public class PostBlend : MonoBehaviour
{
    public Material PostBlendMat;

    public Material instanceForPreview;

    [Range(0, 1)]
    public float ScreenRange = 0.2f;

    [Range(0, 1)]
    public float MultiplyRange = 0.7f;

    [Range(0, 1)]
    public float BlendIntensity = 0.05f;

    //public Vector4 Color = (1, 1, 1, 1);

    public Color Tint01;

    public Color Tint02;

    [Header("將使用中的 Material 設定到 RawImage 中")]
    public bool assignMaterialToRawImage = true;

    // 執行期材質球清單
    private static Dictionary<Material, Material> materialInstances = new Dictionary<Material, Material>();

    private RawImage myRawImage;

    /// <summary>
    /// 取得使用中的材質球
    /// </summary>
    public Material GetCurrentMaterial()
    {
        if (Application.isPlaying)
        {
            return materialInstances.ContainsKey(PostBlendMat) ? materialInstances[PostBlendMat] : null;
        }
        else
        {
            return PostBlendMat;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Application.isPlaying)
        {
            updateMaterial(PostBlendMat);
        }
        else
        {
            // 編輯器下直接更新原始資源
            updateMaterial(PostBlendMat);
        }
    }

    private void updateMaterial(Material material)
    {
        if (material == null) return;
        material.SetFloat("_ScreenRange", ScreenRange);
        material.SetFloat("_MultiplyRange", MultiplyRange);
        material.SetFloat("_BlendIntensity", BlendIntensity );
        material.SetColor("_Tint01", Tint01);
        material.SetColor("_Tint02", Tint02);
        if (assignMaterialToRawImage)
        {
            if (myRawImage == null) myRawImage = GetComponent<RawImage>();
            if (myRawImage != null) myRawImage.material = material;
        }
    }
}
