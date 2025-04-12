using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class GetCamera : MonoBehaviour
{
    private Camera MyCamera;
  //  public Color LightColor;
 //   [Range(0.0f,1.0f)]
 //   public float L0;

    private void OnEnable()
    {
        MyCamera = GetComponent<Camera>();
    }

 

    private void Update()
    {
        Shader.SetGlobalVector("_CameraDir", -transform.forward);
       // Shader.SetGlobalVector("_LightColor", LightColor);
      //  Shader.SetGlobalFloat("_L0", L0);
        //  Shader.SetGlobalColor("")
    }




}
