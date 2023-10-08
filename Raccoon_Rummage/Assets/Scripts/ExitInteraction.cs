using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExitInteraction : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;
    [SerializeField] private BoxCollider boxCollider;
    public string interactionPrompt => prompt;
    public UIController UIController;

    public GameObject exitLight;

    public bool Interact(Interactor interactor)
    {
        //checks if the player has enough score to leave and displays a message via the prompt if they don't [on interaction] 
        if(GameManager.Instance.levelWin <= GameManager.Instance.score)
        {
            //does the interaction
            UIController.GameWon();
            Debug.Log("Exit Interacted with");
        }
        else 
        { 
            Debug.Log("Not enough points to win" + GameManager.Instance.score);
            prompt = "Not enough points to win " + GameManager.Instance.score + "/ " + GameManager.Instance.levelWin;
        }    
        
        return true;
        
    }

    private void OnDrawGizmos()
    {
        //Draws a cube to display they interactable area within the editor
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(boxCollider.bounds.center, boxCollider.bounds.size);
    }

    private void FixedUpdate()
    {
        //checks if the player has enough score to leave and displays a message via the prompt if they don't 
        if (GameManager.Instance.levelWin <= GameManager.Instance.score)
        {

            prompt = "Press E to exit";
            exitLight.SetActive(true);
        }
        else
        {
            prompt = "Not enough points to win " + GameManager.Instance.score + "/ " + GameManager.Instance.levelWin;
            exitLight.SetActive(false);
        }

    }
}
