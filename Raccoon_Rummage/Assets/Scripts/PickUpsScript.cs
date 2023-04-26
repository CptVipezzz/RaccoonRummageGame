using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpsScript : MonoBehaviour, IPickUp
{
    public static event Action OnPickUpCollected; 

    public void Collect()
    {
        Debug.Log("Item Collected.");
        OnPickUpCollected?.Invoke();
        Destroy(this.gameObject);
    }

    /*private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            
        }
    }*/
}
