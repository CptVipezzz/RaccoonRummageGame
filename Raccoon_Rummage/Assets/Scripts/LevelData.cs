/* Raccoon Rummage
   Store of important level data to be used by the Game Manager
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelData : MonoBehaviour
{
    [SerializeField] public int levelTime; //Sets the time limit of the level. [in seconds]
    [SerializeField] public int levelScore;//Sets the score the player needs to reach to "win" the level.

}

