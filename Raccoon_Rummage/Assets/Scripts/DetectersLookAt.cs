using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectersLookAt : MonoBehaviour
{
    public float rotSpeed;
    public GameObject detecters;

    //public Transform target;

    public void LookAtTarget(Transform target)
    {
        //Rotates the "enemy" towards the next patrolSpot.
        Vector3 direction = target.position - detecters.transform.position;
        //Quaternion rotation = Quaternion.LookRotation(direction);

        float step = rotSpeed * Time.deltaTime;
        Vector3 newDir = Vector3.RotateTowards(transform.forward, direction, step, 0f);
        this.transform.rotation = Quaternion.LookRotation(newDir);
    }

}
