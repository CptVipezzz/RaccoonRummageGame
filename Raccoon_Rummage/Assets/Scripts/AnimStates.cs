using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimStates : MonoBehaviour
{
   Animator anim;

    public LadderController ladderController;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {        
        //raccoon
        if (ladderController.onLadder == true)
        {
            

            if (Input.GetKey("w"))
            {
                anim.SetBool("upLadder", true);
                anim.SetBool("onLadder", false);
            }
            else if (Input.GetKey("s"))
            {
                anim.SetBool("downLadder", true);
                anim.SetBool("onLadder", false);
            }
            else 
            {
                anim.SetBool("upLadder", false);
                anim.SetBool("downLadder", false);
                anim.SetBool("onLadder", true);
            }
        }
        else if (ladderController.onLadder == false)
        {
            if (Input.GetKey("w") || Input.GetKey("a") || Input.GetKey("s") || Input.GetKey("d"))
            {
            anim.SetBool("isMoving", true);
            } 
            else
            {
            anim.SetBool("isMoving", false);
            }

        }

    }
}