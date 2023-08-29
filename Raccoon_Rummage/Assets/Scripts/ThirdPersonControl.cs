using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Threading;
using UnityEngine;

public class ThirdPersonControl : MonoBehaviour
{

    public CharacterController controller;
    public Transform cam;

    public float speed = 6f;
    public float turnSmooth = 0.1f;

    float turnSmoothVelocity;

    // Update is called once per frame
    void Update()
    {
        //Gets the horizontal and vertical input values and puts them into a Vec3
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");
        Vector3 direction = new Vector3(horizontal, 0f, vertical).normalized;

        //Checks for an input 
        if (direction.magnitude >= 1f)
        {

            //Gets the current angle and then rotates the gameobject to the new angle based on the inputs
            float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + cam.eulerAngles.y; 
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnSmoothVelocity, turnSmooth);
            transform.rotation = Quaternion.Euler(0f, angle, 0f);

            //Moves the gameobject forward
            Vector3 moveDir = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward;
            controller.Move(moveDir.normalized * speed * Time.deltaTime);
        }        
    }
}
