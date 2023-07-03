using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerShooting : MonoBehaviour
{

    public Transform spawnPoint;
    public GameObject bullet;
    public float speed = 10;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            var fired = Instantiate(bullet, spawnPoint.position, spawnPoint.rotation);
            
        }
    }
}
