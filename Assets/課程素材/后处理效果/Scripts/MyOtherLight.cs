using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class MyOtherLight : MonoBehaviour
{
    private GameObject MyLight;
    public Color LightColor;
    [Range(0.0f,1.0f)]
    public float L0;

    private void OnEnable()
    {
        MyLight = GetComponent<GameObject>();
    }

    void OnDrawGizmos()
    {
        Gizmos.color = LightColor;//为随后绘制的gizmos设置颜色。
        Vector3 direction = transform.TransformDirection(Vector3.forward) * 5;
        Gizmos.DrawRay(transform.position, direction);
        //Gizmos.DrawIcon(transform.position, "Light Gizmo.tiff", true);
        //  Gizmos.DrawWireSphere(transform.position, .25f);//使用center和radius参数，绘制一个线框球体。
        //  Gizmos.DrawRay()
    }
    // Update is called once per frame
    private void Update()
    {
        Shader.SetGlobalVector("_LightDir", -transform.forward);
        Shader.SetGlobalVector("_LightColor", LightColor);
        Shader.SetGlobalFloat("_L0", L0);
        //  Shader.SetGlobalColor("")
    }




}
