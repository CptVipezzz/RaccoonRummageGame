using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Threading;
using UnityEditor.Experimental.GraphView;
using UnityEngine;

public class ThirdPersonControl : MonoBehaviour
{
    [SerializeField] private LayerMask groundMask;

    public CharacterController controller;
    public float speed = 6f;

    Camera playerCamera;

    private void Start()
    {
        playerCamera = Camera.main;
    }
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
            //Moves the gameobject in the direction input by the player using WASD & Arrow keys
            float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + playerCamera.transform.eulerAngles.y; 
            Vector3 moveDir = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward;
            controller.Move(moveDir.normalized * speed * Time.deltaTime);
        }

        Aim();
        
    }

    private (bool hit, Vector3 position) GetMousePosition()
    {
        var ray = playerCamera.ScreenPointToRay(Input.mousePosition);

        if (Physics.Raycast(ray, out var hitInfo, Mathf.Infinity, groundMask))
        {
            //the raay hit something return its position
            return (hit: true, position:hitInfo.point);
        }
        else
        {
            //the ray did not hit anything
            return(hit: false, position: Vector3.zero);
        }
    }

    private void Aim()
    {
        var (hit, position) = GetMousePosition();
        if (hit)
        {
            //calc direction
            var direction = position - transform.position;
            //ignore height 
            direction.y = 0f;

            //transform look in direction
            transform.forward = direction;
        }
    }
}
