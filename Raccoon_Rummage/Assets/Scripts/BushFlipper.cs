/* Raccoon Rummage
   Detection/ stealth script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BushFlipper : MonoBehaviour
{
    MeshRenderer MeshRenderer;
    public GameObject conceald;
    // Start is called before the first frame update
    void Start()
    {
        MeshRenderer = GetComponent<MeshRenderer>();
    }

    private void OnTriggerEnter(Collider other)
    {
        //Switchs off the mesh renderer when the player enters the bush object.
        MeshRenderer.enabled = false;
        //Switchs on the indecater sphere while the mesh render is inactive.
        conceald.SetActive(true);
    }

    private void OnTriggerExit(Collider other)
    {
        //Switchs oon the mesh renderer when the player exits the bush object.
        MeshRenderer.enabled = true;
        //Switchs off the indecater sphere while the mesh render is active.
        conceald.SetActive(false);
    }
}
