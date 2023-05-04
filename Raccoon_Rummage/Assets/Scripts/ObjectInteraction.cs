using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    public string interactionPrompt => prompt;
    public UIController UIController;
    public CoinCollection CoinCollection;

    public GameObject interactableLight;

    private bool canInteract;

    public void Start()
    {
        canInteract = true;
        interactableLight.SetActive(true);
    }
    public bool Interact(Interactor interactor)
    {
        while (canInteract == true)
        {
            //does the interaction
            CoinCollection.BinInteract();
            canInteract= false;
            interactableLight.SetActive(false);
            Debug.Log("Bin interated with!");
        }

        PromptTextUpdate();
        return true;
        
    }

    private void FixedUpdate()
    {
        PromptTextUpdate();         
    }

    private void PromptTextUpdate()
    {
        if (canInteract == true)
        {

            prompt = "Press E to Rummage!";
        }
        else
        {
            prompt = "Already Rummaged this bin!";
        }

    }
}
