/* Raccon Rummage 
   Third person controller
   Written by Jack Limerick
   34190312 */

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
    public StealthDetection StealthDetection;
    public Transform cam;

    [SerializeField] private float gravityMultiplyer = 10f;
    [SerializeField] private float jumpPwr;

    public float speed = 6f;
    public float sprintSpeed = 3f;
    public float turnSmooth = 0.1f;
    public bool grounded = true;

    float turnSmoothVelocity;
    float gravity = 9.81f;
    float velocity;
    Vector3 moveDir = Vector3.zero;

 
    // Update is called once per frame.
    void Update()
    {
        Movement();

        if (Input.GetKeyUp(KeyCode.LeftShift) || Input.GetKeyUp(KeyCode.RightShift))
        {
            StealthDetection.StartDelay();
        }
    }

    private void Movement()
    {
        //Gets the horizontal and vertical input values, normalizes them, and puts them into a Vec3.
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");
        Vector3 direction = new Vector3(horizontal, 0f, vertical).normalized;

        //Checks for an input. 
        if (direction.magnitude >= 1f)
        {

            //Gets the current angle and then rotates the gameobject to the new angle based on the inputs and the camera angle.
            float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + cam.eulerAngles.y;
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnSmoothVelocity, turnSmooth);
            transform.rotation = Quaternion.Euler(0f, angle, 0f);

            //SoundManager.instance.isWalking = true;
            //Moves the gameobject forward
            moveDir = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward; 
            
        } 
        else
        {
            moveDir = Vector3.zero;
            //SoundManager.instance.isWalking = false;
        }
        
        ApplyGravity();
        ApplyMovement();
    }

    private void ApplyMovement()
    {
        //Checks to see if either of the shift keys are pressed, if they are the player sprints.
        if (Input.GetKey(KeyCode.RightShift) || Input.GetKey(KeyCode.LeftShift))
        {
            controller.Move(sprintSpeed * Time.deltaTime * moveDir.normalized);
            StealthDetection.regenPaused = true;
        }
        else
        {
            controller.Move(speed * Time.deltaTime * moveDir.normalized);
        }
    }

    private void ApplyGravity()
    {
        //Checks to see if the player is on the ground, if not then the the player falls until they are.
        if (IsGrounded())
        {
            velocity = -gravity * Time.deltaTime;
            grounded = true;
        }
        else
        {
            velocity -= (gravity * gravityMultiplyer) * Time.deltaTime;
            grounded = false;
        }
        moveDir.y = velocity;
    }
 
    private bool IsGrounded() => controller.isGrounded; 
}

