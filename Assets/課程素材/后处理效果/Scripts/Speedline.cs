using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[ExecuteInEditMode]
public class Speedline : MonoBehaviour
{
    public Material SpeedlineMaterial;

    public Material instanceForPreview;

    [Range(0, 1)]
    public float X_Move = 0.5f;

    [Range(0, 1)]
    public float Y_Move = 0.5f;

    [Range(0, 10)]
    public float maskIntensity = 1;

    public Color color;

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
            return materialInstances.ContainsKey(SpeedlineMaterial) ? materialInstances[SpeedlineMaterial] : null;
        }
        else
        {
            return SpeedlineMaterial;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Application.isPlaying)
        {
            updateMaterial(SpeedlineMaterial);
        }
        else
        {
            // 編輯器下直接更新原始資源
            updateMaterial(SpeedlineMaterial);
        }
    }

    private void updateMaterial(Material material)
    {
        if (material == null) return;
        material.SetColor("_Color", color);
        material.SetFloat("_X_Move", X_Move);
        material.SetFloat("_Y_Move", Y_Move);
        material.SetFloat("_MaskIntensity", maskIntensity);

        if (assignMaterialToRawImage)
        {
            if (myRawImage == null) myRawImage = GetComponent<RawImage>();
            if (myRawImage != null) myRawImage.material = material;
        }
    }
}
