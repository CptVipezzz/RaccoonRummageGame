using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Drawing.Text;
using System.Security.Cryptography;
using System.Threading;
using UnityEngine;
using UnityEngine.Windows;
using Debug = UnityEngine.Debug;
using Input = UnityEngine.Input;

public class ThirdPersonControl : MonoBehaviour
{

    public CharacterController controller;
    public Transform cam;

    [SerializeField] private float gravityMultiplyer = 0.5f;
    [SerializeField] private float jumpPwr;

    public float speed = 6f;
    public float turnSmooth = 0.1f;

    float turnSmoothVelocity;
    float gravity = -9.81f;
    float velocity;
    Vector3 moveDir = Vector3.zero;

 
    // Update is called once per frame
    void Update()
    {
        Movement();
    }

    private void Movement()
    {
        //Gets the horizontal and vertical input values and puts them into a Vec3
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");
        Vector3 direction = new Vector3(horizontal, 0f, vertical).normalized;

        //Checks for an input 
        if (direction.magnitude >= 1f)
        {

            //Gets the current angle and then rotates the gameobject to the new angle based on the inputs and the camera angle
            float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + cam.eulerAngles.y;
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnSmoothVelocity, turnSmooth);
            transform.rotation = Quaternion.Euler(0f, angle, 0f);

            //Moves the gameobject forward
            moveDir = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward;

           
        } 
        else
        {
            moveDir = Vector3.zero; 
        }
        
        ApplyGravity();
        ApplyMovement();
    }

    private void ApplyMovement()
    {
        controller.Move(speed * Time.deltaTime * moveDir.normalized);
    }

    private void ApplyGravity()
    {
        if (IsGrounded())
        {
            velocity = -0f;            
        }
        else
        {
            velocity += gravity * gravityMultiplyer * Time.deltaTime;
        }
        moveDir.y = velocity;
    }
 
    private bool IsGrounded() => controller.isGrounded; 
}

