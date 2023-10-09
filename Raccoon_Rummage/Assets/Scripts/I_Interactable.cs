/* Raccoon Rummage
   Interaction class script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface I_Interactable
{
   public string interactionPrompt { get; }

   public bool Interact(Interactor interactor);
}
