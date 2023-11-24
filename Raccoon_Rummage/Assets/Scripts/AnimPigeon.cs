/* Raccoon Rummage
   Game UI controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimPigeon : MonoBehaviour
{
    Animator anim;

    public bool detected = false;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        detected = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (detected == false)
        {
            anim.SetBool("Scared", false);
            
        }
        else if (detected == true)
        {
            anim.SetBool("Scared", true);
            StartCoroutine(CullModel());
        }
    }

    IEnumerator CullModel()
    {
        yield return new WaitForSeconds(1.5f);
        this.gameObject.SetActive(false);
    }
}
