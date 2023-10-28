/* Raccoon Rummage
   Enemy patrol movement script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Patrol : MonoBehaviour
{
    public float moveSpeed;
    public float startWaitTime;
    public float rotSpeed;
    public bool isMoving;
    public bool TurnRight;
    public bool TurnLeft;

    public GameObject[] patrolSpots;

    private int nextSpot;
    private float waitTime;
    private Vector3 nextSpotTrans;

    private void Start()
    {
        //int values
        waitTime = startWaitTime;
        nextSpot = 0;
        isMoving = true;

        TurnRight = false;
        TurnLeft = false;
    }

    private void Update()
    {
        //Finds the next position to move to in the array and sets the direction for the anim controller.
        nextSpotTrans = patrolSpots[nextSpot].transform.position;
        FindDirection();


        //Checks to see if the "enemy" has reached the point, within a reasonable distance.
        if (Vector3.Distance(transform.position, patrolSpots[nextSpot].transform.position) < 0.12f)
        {
            isMoving = true;

            //Waits for a time then moves to the next patrol point.
            if (waitTime <= 0)
            {
                //Loops the patrol route.
                if (nextSpot >= patrolSpots.Length - 1) { nextSpot = 0; }
                else { nextSpot++; }

                waitTime = startWaitTime;
            }
            else { waitTime -= Time.deltaTime; isMoving = false; }
        }
        else
        {
            LookAtTarget(patrolSpots[nextSpot].transform);

            //Moves the "enemy" towards a point set by the patrolSpots array.
            transform.position = Vector3.MoveTowards(transform.position, nextSpotTrans, moveSpeed * Time.deltaTime);

        }
    }

    private void LookAtTarget(Transform target)
    {
        //Rotates the "enemy" towards the next patrolSpot.
        Vector3 direction = target.position - transform.position;
        Quaternion rotation = Quaternion.LookRotation(direction);
        transform.rotation = rotation;
    }

    private void FindDirection()
    {
        PatrolPointDir patrolPointDir = patrolSpots[nextSpot].GetComponent<PatrolPointDir>();
        //Finds the direction of the next patrolSpot, as defined by the PatrolPointDir script found on each of the gameobjects, and sets the anim bool values as appropreate.
        if (patrolPointDir.leftTurn == true && patrolPointDir.rightTurn == false)
        {
            TurnLeft = true;
            TurnRight = false;
        }
        else if (patrolPointDir.leftTurn == false && patrolPointDir.rightTurn == true)
        {
            TurnRight = true;
            TurnLeft = false;
        }
        else
        {
            TurnLeft = false;
            TurnRight = false;
        }
    }
}
