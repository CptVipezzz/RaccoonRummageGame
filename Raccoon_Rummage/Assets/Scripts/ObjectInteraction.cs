using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    public string interactionPrompt => prompt;
    public UIController UIController;
    public CoinCollection CoinCollection;

    public GameObject binBag;
    public GameObject trashPile;
    public GameObject interactionCol;

    private bool canInteract;

    public void Start()
    {
        canInteract = true;
        binBag.SetActive(true);
        trashPile.SetActive(false);
        interactionCol.SetActive(true);
    }
    
    public bool Interact(Interactor interactor)
    {
        while (canInteract == true)
        {
            //does the interaction
            CoinCollection.BinInteract();
            PopUp();
            canInteract = false;
            binBag.SetActive(false);
            trashPile?.SetActive(true);
            interactionCol?.SetActive(false);
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

    public void PopUp()
    {
        if (CoinCollection.coin == GameManager.Instance.levelWin)
        {
            UIController.StartPopUps(CoinCollection.coin);
        }
        else { UIController.StartPopUps(CoinCollection.coin); }
    }
}
