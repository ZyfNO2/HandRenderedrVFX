using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class EnableGrabTexture : MonoBehaviour
{
    public bool enableGrabTexture = true;

    private void Update()
    {
        FuntoyGlobalSettings.EnableGrabTexture = enableGrabTexture;
    }

    private void OnDisable()
    {
        FuntoyGlobalSettings.EnableGrabTexture = false;
    }

}
