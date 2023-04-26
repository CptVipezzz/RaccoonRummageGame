using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    public string interactionPrompt => prompt;
    public UIController UIController;
    public CoinCollection CoinCollection;

    public bool Interact(Interactor interactor)
    {
        //does the interaction
        CoinCollection.BinInteract();
        Debug.Log("Bin interated with!");
        return true;
    }
}
