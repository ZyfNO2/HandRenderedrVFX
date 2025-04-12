using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[ExecuteInEditMode]
public class RadiusBlur : MonoBehaviour
{
    public Material RadiusBlurMaterial;

    public Material instanceForPreview;

    [Range(1, 100)]
    public float Level = 1;

    [Range(0, 1)]
    public float CenterX = 0.5f;

    [Range(0, 1)]
    public float CenterY = 0.5f;

    // public Texture mask;

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
            return materialInstances.ContainsKey(RadiusBlurMaterial) ? materialInstances[RadiusBlurMaterial] : null;
        }
        else
        {
            return RadiusBlurMaterial;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Application.isPlaying)
        {
            updateMaterial(RadiusBlurMaterial);
        }
        else
        {
            // 編輯器下直接更新原始資源
            updateMaterial(RadiusBlurMaterial);
        }
    }

    private void updateMaterial(Material material)
    {
        if (material == null) return;
        material.SetFloat("_CenterX", CenterX);
        material.SetFloat("_CenterY", CenterY);
        material.SetFloat("_Level", Level);

        if (assignMaterialToRawImage)
        {
            if (myRawImage == null) myRawImage = GetComponent<RawImage>();
            if (myRawImage != null) myRawImage.material = material;
        }
    }
}
