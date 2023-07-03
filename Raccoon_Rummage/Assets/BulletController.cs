using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletController : MonoBehaviour
{
    Rigidbody rb;

    public float life = 3f;
    public float arrowSpeed = .1f;
    //public float magicSpeed = 1f;

    // Start is called before the first frame update
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        Destroy(gameObject, life);
    }

    // Update is called once per frame
    void Update()
    {
        rb.AddForce(rb.transform.forward * arrowSpeed, ForceMode.Impulse);
        //Debug.Log(rb.velocity);
    }

    private void OnCollisionEnter(Collision collision)
    {
        Destroy(this.gameObject);
    }
}
