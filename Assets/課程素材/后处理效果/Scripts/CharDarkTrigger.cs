using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class CharDarkTrigger : MonoBehaviour
{
    public bool DarkOn;
    public bool LightColorOff;
    public Color ColorOn;
    public List<Material> matlist;

    private void Update()
    {
        if (DarkOn == true)
        {
            for(int i = 0; i < matlist.Count; i++)
            {
                matlist[i].SetFloat("_DarkOn", 1);
             //   matlist[i].SetFloat("_LightColorOff", 1);
              //  matlist[i].SetVector("_ColorOn", ColorOn);
            }
        }
        else
        {
            for (int i = 0; i < matlist.Count; i++)
            {
                matlist[i].SetFloat("_DarkOn", 0);
             //   matlist[i].SetFloat("_LightColorOff", 0);
            //    matlist[i].SetVector("_ColorOn", Color.white);
            }
        }
        if (LightColorOff == true)
        {
            for (int i = 0; i < matlist.Count; i++)
            {
             //   matlist[i].SetFloat("_DarkOn", 1);
                 matlist[i].SetFloat("_LightColorOff", 1);
                 matlist[i].SetVector("_ColorOn", ColorOn);
            }
        }
        else
        {
            for (int i = 0; i < matlist.Count; i++)
            {
              //  matlist[i].SetFloat("_DarkOn", 0);
                  matlist[i].SetFloat("_LightColorOff", 0);
                  matlist[i].SetVector("_ColorOn", Color.white);
            }
        }
    }


}
