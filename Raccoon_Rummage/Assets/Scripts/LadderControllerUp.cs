using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderControllerUp : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;

    public GameObject character;
    public GameObject ladderTopPos;
    public string interactionPrompt => prompt;
    public CharacterController PlayerCharacter;

    
    public bool Interact(Interactor interactor)
    {
       
        PlayerCharacter.enabled = false;
        character.transform.position = ladderTopPos.transform.position;
        PlayerCharacter.enabled = true;

            Debug.Log("Ladder top interacted");
        
        return true;
        //throw new System.NotImplementedException();
    }
}
