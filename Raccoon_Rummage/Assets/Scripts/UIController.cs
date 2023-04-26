using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIController : MonoBehaviour
{
    public TextMeshProUGUI scoreText;
    public TextMeshProUGUI timerText;

    public int levelMax;
    public float timeLeft;
    public bool timerOn = false;

    // Start is called before the first frame update
    void Start()
    {
        scoreText.text = "Food: 0/ " + levelMax;
        timerOn = true;
    }

    public void ScoreUpdate(int coin)
    {
        scoreText.text = "Food: " + coin.ToString() + "/ " + levelMax;        
    }

    public void StealthUpdate()
    {
        //Stealth UI updates go here
    }

    private void Update()
    {
        if(timerOn)
        {
            if(timeLeft > 0)
            {
                timeLeft -= Time.deltaTime;
                UpdateTimer(timeLeft);
            }
            else
            {
                Debug.Log("Time is up");
                timeLeft = 0;
                timerOn = false;
            }
        }
    }

    void UpdateTimer(float currentTime)
    {
        currentTime += 1;

        float minutes = Mathf.FloorToInt(currentTime / 60);
        float seconds = Mathf.FloorToInt(currentTime % 60);

        timerText.text = string.Format("{0:00} : {1:00}", minutes, seconds);
    }

}
