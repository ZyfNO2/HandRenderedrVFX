using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[ExecuteInEditMode]
public class Radial : MonoBehaviour
{
    public Material SobelOutlineMaterial;

    public Material instanceForPreview;

    [Range(0, 100)]
    public float Level = 50;

    [Range(0,1)]
    public float Center_X = 0.5f;

    [Range(0,1)]
    public float Center_Y = 0.5f;

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
            return materialInstances.ContainsKey(SobelOutlineMaterial) ? materialInstances[SobelOutlineMaterial] : null;
        }
        else
        {
            return SobelOutlineMaterial;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Application.isPlaying)
        {
            /* if (SobelOutlineMaterial != null && !materialInstances.ContainsKey(SobelOutlineMaterial))
             {
                 Material material = new Material(SobelOutlineMaterial.shader);
                 material.CopyPropertiesFromMaterial(SobelOutlineMaterial);
                 materialInstances.Add(SobelOutlineMaterial, material);
             }
             // 實際運行時更新共用實體
             if (materialInstances.ContainsKey(SobelOutlineMaterial))
             {
                 instanceForPreview = materialInstances[SobelOutlineMaterial];
                 updateMaterial(materialInstances[SobelOutlineMaterial]);
             }*/
            updateMaterial(SobelOutlineMaterial);
        }
        else
        {
            // 編輯器下直接更新原始資源
            updateMaterial(SobelOutlineMaterial);
        }
    }

    private void updateMaterial(Material material)
    {
        if (material == null) return;
        material.SetFloat("_Level", Level);
        material.SetFloat("_CenterX", Center_X);
        material.SetFloat("_CenterY", Center_Y);

        if (assignMaterialToRawImage)
        {
            if (myRawImage == null) myRawImage = GetComponent<RawImage>();
            if (myRawImage != null) myRawImage.material = material;
        }
    }
}
