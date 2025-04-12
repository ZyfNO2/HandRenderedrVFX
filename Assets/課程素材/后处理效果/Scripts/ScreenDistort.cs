using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[ExecuteInEditMode]
public class ScreenDistort : MonoBehaviour
{
    public Material ScreenDistortMaterial;

    public Material instanceForPreview;

    public Vector4 Speed_Strength;


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
            return materialInstances.ContainsKey(ScreenDistortMaterial) ? materialInstances[ScreenDistortMaterial] : null;
        }
        else
        {
            return ScreenDistortMaterial;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Application.isPlaying)
        {
            updateMaterial(ScreenDistortMaterial);
        }
        else
        {
            // 編輯器下直接更新原始資源
            updateMaterial(ScreenDistortMaterial);
        }
    }

    private void updateMaterial(Material material)
    {
        if (material == null) return;
        material.SetVector("_Speed_Strength", Speed_Strength);


        if (assignMaterialToRawImage)
        {
            if (myRawImage == null) myRawImage = GetComponent<RawImage>();
            if (myRawImage != null) myRawImage.material = material;
        }
    }
}
