using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Patrol : MonoBehaviour
{
    public float moveSpeed;
    public float startWaitTime;
    public float rotSpeed;
    public bool isMoving;

    public Transform[] patrolSpots;

    private int nextSpot;
    private float waitTime;
    private Vector3 nextSpotTrans;
   //private bool canRot = true;

    private void Start()
    {
        //int values
        waitTime = startWaitTime;
        nextSpot = 0;
        isMoving = false;
    }

    private void Update()
    {
        nextSpotTrans = patrolSpots[nextSpot].position;
        
        //checks to see if the "enemy" has reached the point, within a reasonable distance
        if (Vector3.Distance(transform.position, patrolSpots[nextSpot].position) < 0.12f)
        {
            isMoving = true;

            //waits for a time then moves to the next patrol point
            if (waitTime <= 0)
            {
                //loops the patrol route 
                if (nextSpot >= patrolSpots.Length - 1) { nextSpot = 0; }
                else { nextSpot++; }
                
                waitTime = startWaitTime;
            }
            else { waitTime -= Time.deltaTime; isMoving = false; }
        }
        else
        {
        LookAtTarget(patrolSpots[nextSpot]);

        //moves the "enemy" towards a point set by the patrolSpots array
        transform.position = Vector3.MoveTowards(transform.position, nextSpotTrans, moveSpeed * Time.deltaTime);

        }
    }

    private void LookAtTarget(Transform target)
    {
        Vector3 direction = target.position - transform.position;
        Quaternion rotation = Quaternion.LookRotation(direction);
        transform.rotation = rotation;
    }
}
