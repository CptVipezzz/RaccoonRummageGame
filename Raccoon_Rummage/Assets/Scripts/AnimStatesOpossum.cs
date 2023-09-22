using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimStatesOpossum : MonoBehaviour
{
    Animator anim;

    public Patrol patrol;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        //patrol = GetComponent<Patrol>();
    }

    // Update is called once per frame
    void Update()
    {
        if (patrol.isMoving == true)
        {
            anim.SetBool("isMoving", true);
        }
        else
        {
            anim.SetBool("isMoving", false);
        }
        
    }
}
