using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using UnityEngine;
using UnityEngine.SocialPlatforms;

[ExecuteInEditMode]
public class LightList : MonoBehaviour
{
    public bool ColorOn;
    public Color LightColor;
    public float Intensity = 1;
    public List<Light> lightlist;

    //private Light SpotLight;

    private void Update()
    {
        if (ColorOn == true)
        {
            for(int i = 0; i < lightlist.Count; i++)
            {
                lightlist[i].color = LightColor;
                lightlist[i].intensity = Intensity;
                //SpotLight.color = LightColor;
                //  matlist[i].SetFloat("_DarkOn", 1);
                //   matlist[i].SetFloat("_LightColorOff", 1);
                //  matlist[i].SetVector("_ColorOn", ColorOn);
            }
        }
        else
        {
            for (int i = 0; i < lightlist.Count; i++)
            {
                lightlist[i].color = LightColor * 0;
                //   matlist[i].SetFloat("_LightColorOff", 0);
                //    matlist[i].SetVector("_ColorOn", Color.white);
            }
        }
        
    }


}
