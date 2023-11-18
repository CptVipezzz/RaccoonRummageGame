using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimStates : MonoBehaviour
{
    Animator anim;
    public UIController controller;
    public ThirdPersonControl ThirdPersonControl;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        //raccoon 
            if ((Input.GetKey("w") || Input.GetKey("a") || Input.GetKey("s") || Input.GetKey("d") 
                || Input.GetKey(KeyCode.DownArrow) || Input.GetKey(KeyCode.RightArrow) || Input.GetKey(KeyCode.UpArrow) 
                || Input.GetKey(KeyCode.LeftArrow)) && (controller.softPause == false))
            {
            anim.SetBool("isMoving", true);
            if ((Input.GetKey(KeyCode.RightShift)) || (Input.GetKey(KeyCode.LeftShift)) && controller.softPause == false)
                {
                    anim.SetBool("isSprinting", true);
                }
                else
                {
                anim.SetBool("isSprinting", false);
            }
        } 
            else
            {
            anim.SetBool("isMoving", false);
            anim.SetBool("isSprinting", false);
        }

            if (ThirdPersonControl.grounded == false)
        {
            anim.SetBool("IsFalling", true);
        }
            else
        {
            anim.SetBool("IsFalling", false);
        }

    }
}