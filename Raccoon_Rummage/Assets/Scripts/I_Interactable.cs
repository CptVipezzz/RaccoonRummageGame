using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface I_Interactable
{
   public string interactionPrompt { get; }

   public bool Interact(Interactor interactor);
}
