/* Raccoon Rummage
   Bin/ Minigames interaction script
   Written by Jack Limerick
   34190313 */

using System;
using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

public class Interactor : MonoBehaviour
{
    [SerializeField] private Transform interactionPoint;
    [SerializeField] private float interactionPointRadius = 1.5f;
    [SerializeField] private LayerMask interactableMask;
    [SerializeField] private int numFound;
    [SerializeField] private InteractionPrompt_UI interactionPrompt_UI;

    private readonly Collider[] colliders = new Collider[3];

    private I_Interactable interactable;

    private void Update()
    {
        //Passes by reff 3 of the objects it locates and puts them into the array 'colliders' and returns the total number of said found objects.
        numFound = Physics.OverlapSphereNonAlloc(interactionPoint.position, interactionPointRadius, colliders, interactableMask);

        if (numFound > 0)
        {
           interactable = colliders[0].GetComponent<I_Interactable>();

            //Checks to see if there is an interacatble object in the array.
            if (interactable != null)
            {
                //Displays the interact prompt.
                if (!interactionPrompt_UI.IsDisplayed) interactionPrompt_UI.SetUp(interactable.interactionPrompt);
                //Looks for correct input.
                if (Input.GetKeyDown("e") == true) interactable.Interact(this);
            }
        }
        else
        {
            //Hides the interact prompt.
            if (interactable != null) interactable = null;
            if (interactionPrompt_UI.IsDisplayed) interactionPrompt_UI.Close();
        }
    }
    
    private void OnDrawGizmos()
    {
        //Draws a sphere to indicate the interaction point radius.
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(interactionPoint.position, interactionPointRadius);
    }
}
