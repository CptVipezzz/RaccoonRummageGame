/* Raccoon Rummage
   Pickups rotation script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectSpin : MonoBehaviour
{
    public float rotSpeed = 100f;

    // Update is called once per frame
    void Update()
    {
        //Rotates the attatched gameobject.
        transform.Rotate(0f, rotSpeed * Time.deltaTime, 0f, Space.Self);
    }
}
