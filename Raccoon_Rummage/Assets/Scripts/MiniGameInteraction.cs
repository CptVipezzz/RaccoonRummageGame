using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniGameInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    public string interactionPrompt => prompt;

    public bool Interact(Interactor interactor)
    {
        //does the interaction
        Debug.Log("Bin interated with!");
        return true;
    }
}
