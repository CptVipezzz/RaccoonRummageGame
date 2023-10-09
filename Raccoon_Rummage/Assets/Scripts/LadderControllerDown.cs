/* Raccoon Rummage
   Decend ladder interaction script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderControllerDown : MonoBehaviour, I_Interactable
{
    [SerializeField] private string prompt;

    public GameObject character;
    public GameObject ladderBottomPos;
    public string interactionPrompt => prompt;
    public CharacterController PlayerCharacter;

    public bool Interact(Interactor interactor)
    {
        //Moves the player character to the position on the ladderBottomPos gameobject.
        PlayerCharacter.enabled = false;        
        character.transform.position = ladderBottomPos.transform.position;        
        PlayerCharacter.enabled = true;

            Debug.Log("Ladder top interacted");

        return true;
        //throw new System.NotImplementedException();
    }
}
