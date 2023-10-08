using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimStates : MonoBehaviour
{
   Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        //raccoon 
            if (Input.GetKey("w") || Input.GetKey("a") || Input.GetKey("s") || Input.GetKey("d") 
                || Input.GetKey(KeyCode.DownArrow) || Input.GetKey(KeyCode.RightArrow) || Input.GetKey(KeyCode.UpArrow) 
                || Input.GetKey(KeyCode.LeftArrow))
            {
            anim.SetBool("isMoving", true);
            } 
            else
            {
            anim.SetBool("isMoving", false);
            }        

    }
}