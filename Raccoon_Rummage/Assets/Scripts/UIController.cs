using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using TMPro;

public class UIController : MonoBehaviour
{
    public TextMeshProUGUI scoreText;
    public TextMeshProUGUI timerText;
    public TextMeshProUGUI stealthMeter;

    public GameObject pauseMenuUI;

    public int levelMax;
    public float timeLeft;
    public bool timerOn = false;
    public static bool isPaused = false;

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

    public void StealthUpdate(int stealth)
    {
        stealthMeter.text = "Concealment: " + stealth.ToString() + "%";
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

        if (Input.GetKeyUp(KeyCode.Escape))
        {
            if(isPaused == true)
            {
                Resume();
            }
            else 
            {
                Pause();
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

    public void Resume()
    {
       pauseMenuUI.SetActive(false);
        Time.timeScale = 1f;
        isPaused = false;
    }

    void Pause()
    {
        pauseMenuUI.SetActive(true);
        Time.timeScale = 0;
        isPaused = true;
    }

    public void LoadMenu()
    {
        SceneManager.LoadScene("MainMenu");
        Debug.Log("Menu button hit!");
    }

    public void QuitGame()
    {
        Debug.Log("Quitting game...");
        Application.Quit();
    }

}
