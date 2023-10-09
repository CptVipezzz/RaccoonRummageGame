/* Raccoon Rummage
   Pickups script
   DEFUNCT!
   Written by Jack Limerick
   34190313 */

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
}
