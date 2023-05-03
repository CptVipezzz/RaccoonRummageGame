using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExitInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    [SerializeField] private BoxCollider boxCollider;
    public string interactionPrompt => prompt;
    public UIController UIController;

    public bool Interact(Interactor interactor)
    {
        if(GameManager.Instance.levelWin <= GameManager.Instance.score)
        {
            //does the interaction
            UIController.GameWon();
            Debug.Log("Exit Interacted with");
        }
        else 
        { 
            Debug.Log("Not enough points to win" + GameManager.Instance.score);
            prompt = "Not enough pointsto win " + GameManager.Instance.score + "/ " + GameManager.Instance.levelWin;
        }    
        
        return true;
        
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(boxCollider.bounds.center, boxCollider.bounds.size);
    }

    private void FixedUpdate()
    {
        if (GameManager.Instance.levelWin <= GameManager.Instance.score)
        {

            prompt = "Press E to exit";
        }
        else
        {
            prompt = "Not enough pointsto win " + GameManager.Instance.score + "/ " + GameManager.Instance.levelWin;
        }

    }
}
