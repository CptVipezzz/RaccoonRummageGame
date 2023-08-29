using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    [SerializeField] private BoxCollider boxCollider;

    public string interactionPrompt => prompt;
    public GameObject pivotPoint;

    float openAngle = 90f;
    bool doorOpen = false;
    Quaternion defaultState;

    public bool Interact(Interactor interactor)
    {
        if (doorOpen == false)
        {
            prompt = "Press 'E' to open!";
            pivotPoint.transform.Rotate(defaultState.x, defaultState.y + openAngle, defaultState.z); 
            doorOpen = true;
        }
        else if (doorOpen == true)
        {
            prompt = "Press 'E' to close!";
            pivotPoint.transform.Rotate(defaultState.x, defaultState.y - openAngle, defaultState.z);
            doorOpen = false;
        }

        return true;
    }

    // Start is called before the first frame update
    void Start()
    {
        defaultState = pivotPoint.transform.rotation;
        prompt = "Press 'E' to open!";
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnDrawGizmos()
    {
        //Draws a cube to display they interactable area within the editor
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(boxCollider.bounds.center, boxCollider.bounds.size);
    }
}