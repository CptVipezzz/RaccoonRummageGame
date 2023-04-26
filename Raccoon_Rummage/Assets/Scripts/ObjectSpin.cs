using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectSpin : MonoBehaviour
{
    public float rotSpeed = 100f;

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0f, rotSpeed * Time.deltaTime, 0f, Space.Self);
    }
}
