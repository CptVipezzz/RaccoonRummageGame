using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static GameManager instance;

    public int score { get; set; } = 0;
    public int stealth { get; set; } = 100;

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
        instance = this;
        score = 0;
    }
}
