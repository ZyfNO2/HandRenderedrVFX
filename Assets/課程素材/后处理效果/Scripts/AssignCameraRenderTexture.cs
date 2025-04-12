using UnityEngine;

/// <summary>
/// 對 Camera 指定一張全螢幕大小的 RenderTexture，並把這張 RenderTexture 一併設定到指定的 Material 欄位上
/// </summary>
[ExecuteInEditMode]
public class AssignCameraRenderTexture : MonoBehaviour
{
	/// <summary>
	/// 目標材質
	/// </summary>
	[Header("要將 RenderTexture 寫入的 Material")]
    public Material targetMaterial;

    /// <summary>
    /// 目標欄位
    /// </summary>
    [Header("寫入的欄位名稱")]
	public string propertyName;

    private Camera _myCamera;
    private Camera myCamera
    {
        get
        {
            if (_myCamera == null) _myCamera = GetComponent<Camera>();
            return _myCamera;
        }
    }

    private RenderTexture myTexture;

    void Start()
    {
        updateResize();
    }

    private void OnDestroy()
    {
        if (myTexture != null) RenderTexture.ReleaseTemporary(myTexture);
        myTexture = null;
    }

    // Update is called once per frame
    void Update()
    {
        updateResize();
        updateMaterial();
    }

    // 更新攝影機繪圖尺寸大小
    private void updateResize()
    {
        if (myCamera == null) return;
        if (myTexture == null) myTexture = RenderTexture.GetTemporary(Screen.width, Screen.height);
        if (myCamera.targetTexture != myTexture) myCamera.targetTexture = myTexture;
    }

    // 更新材質
    private void updateMaterial()
    {
        if (targetMaterial != null && myTexture != null)
        {
            targetMaterial.SetTexture(propertyName, myTexture);
        }
    }
}
