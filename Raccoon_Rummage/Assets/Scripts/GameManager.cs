/* Raccoon Rummage
   Game Manager
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static GameManager instance;

    public int score { get; set; } = 0; //Current score.
    public int stealth { get; set; } = 100; //Current stealth value.

    public int levelWin{ get; set; } //Current level win score.

    public int levelTimeMax { get; set; } //Current level max time.

    public LevelData levelData; //Current level data, contains the static values.

    public static GameManager Instance
    {
        get
        {
            if (instance == null) Debug.Log("GameManager is NULL");

            return instance;
        }
    }

    private void Start()
    {       
        //sets vars to there default values
        instance = this;
        score = 0;
        stealth = 100;
        levelTimeMax = levelData.levelTime;
        levelWin = levelData.levelScore;
        Time.timeScale = 1;        
    }

    public void ResetValues()
    {
        //sets vars to there default values
        instance = this;
        score = 0;
        stealth = 100;
        levelWin = levelData.levelScore;
        levelTimeMax = levelData.levelTime;
        Time.timeScale = 1;        
    }
}
