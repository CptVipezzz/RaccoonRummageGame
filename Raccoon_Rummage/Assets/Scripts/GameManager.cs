using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static GameManager instance;

    public int score { get; set; } = 0;
    public int stealth { get; set; } = 100;

    public int levelWin{ get; set; }

    public int levelTimeMax { get; set; }

    //public int levelWinScore;

    public LevelData levelData;

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
