/* Raccoon Rummage
   Door interaction script
   Written by Jack Limerick
   34190313 */

using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class DoorInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    [SerializeField] private BoxCollider boxCollider;

    public string interactionPrompt => prompt;
    public GameObject pivotPoint;

    float openAngle = 90.0f;
    bool doorOpen = false;
    Quaternion defaultState;

    public bool Interact(Interactor interactor)
    {

        //Checks to see if the "door" is currently open of closed.
        if (doorOpen == false)
        {
            //Opens the door.
            prompt = "Press 'E' to open!";
            pivotPoint.transform.Rotate(defaultState.x, defaultState.y + openAngle, defaultState.z); 
            doorOpen = true;
            //Debug.Log(defaultState.y);
        }
        else if (doorOpen == true)
        {
            //Closes the door.
            prompt = "Press 'E' to close!";
            pivotPoint.transform.Rotate(defaultState.x, defaultState.y - openAngle, defaultState.z);
            doorOpen = false;
            //Debug.Log(defaultState.y);
            
        }
       /* else
        {
            Debug.Log("Interaction error " + doorOpen);
        }*/

        return true;
    }

    // Start is called before the first frame update
    void Start()
    {
        //Sets the default values and positions.
        defaultState = pivotPoint.transform.rotation;
        defaultState.y = 0;
        prompt = "Press 'E' to open!";
    }


    private void OnDrawGizmos()
    {
        //Draws a cube to display they interactable area within the editor.
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(boxCollider.bounds.center, boxCollider.bounds.size);
    }
}
