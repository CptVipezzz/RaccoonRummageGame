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

    public TextMeshProUGUI finalScoreText;
    public TextMeshProUGUI finalTimerText;

    public GameObject pauseMenuUI;
    public GameObject winScreenUI;
    public GameObject lossScreenUI;
    public GameObject clockFace;
    public GameObject detected;
    public GameObject hidden;

    public Slider slider;

    //public static int levelMax;
    private float timeLeft;
    public float maxTime;
    public bool timerOn = false;
    public static bool isPaused = false;
    private string currentSceneName;
    public bool isHidden = true;

    private string tmpTime;

    // Start is called before the first frame update
    void Start()
    {
        pauseMenuUI.SetActive(false);
        winScreenUI.SetActive(false);   
        lossScreenUI.SetActive(false);
        Cursor.visible = false;
        SetMaxStealth(GameManager.Instance.stealth);

        currentSceneName = SceneManager.GetActiveScene().name;

        scoreText.text = "Food: 0/ " + GameManager.Instance.levelWin;
        timeLeft = maxTime;
        timerOn = true;
    }

    public void ScoreUpdate(int coin)
    {
        scoreText.text = "Food: " + coin.ToString() + "/ " + GameManager.Instance.levelWin;        
    }

    public void StealthUpdate(int stealth)
    {
        /*if (stealth >= 0)
        {
            stealthMeter.text = "Concealment: " + stealth.ToString() + "%";
        }
        else if (stealth < 0)
        {
            stealthMeter.text = "Concealment: 0%";
        }*/

        SetStealth(stealth);
    }

    private void Update()
    {
        if(timerOn)
        {
            if(timeLeft > 0)
            {
                timeLeft -= Time.deltaTime;
                UpdateTimer(timeLeft);
                SetClockRot(timeLeft);
            }
            else
            {
                Debug.Log("Time is up");
                timeLeft = 0;
                timerOn = false;
                GameLoss();
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

        if (GameManager.Instance.stealth <= 0)
        {
            Debug.Log("Player Detected");
            GameLoss();
        }

        if (isHidden == false)
        {
            detected.SetActive(true);
            hidden.SetActive(false);
        }
        else
        {
            detected.SetActive(false);
            hidden.SetActive(true);
        }
    }

    void UpdateTimer(float currentTime)
    {
        currentTime += 1;

        float minutes = Mathf.FloorToInt(currentTime / 60);
        float seconds = Mathf.FloorToInt(currentTime % 60);

        tmpTime = string.Format("{0:00} : {1:00}", minutes, seconds);
        timerText.text = tmpTime;
        
    }

    public void Resume()
    {
       pauseMenuUI.SetActive(false);
        Time.timeScale = 1f;
        isPaused = false;
        Cursor.visible = false;
    }

    void Pause()
    {
        pauseMenuUI.SetActive(true);
        Time.timeScale = 0;
        isPaused = true;
        Cursor.visible = true;
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

    public void Restart()
    {
        SceneManager.LoadScene(currentSceneName);
        Debug.Log("Reloading level...");
    }

    public void GameWon()
    {
        Time.timeScale = 0;
        isPaused = true;
        winScreenUI.SetActive(true);  
        finalScoreText.text = "Your final score is: " + GameManager.Instance.score + " out of " + GameManager.Instance.levelWin;
        finalTimerText.text = "You managed that with " + tmpTime + " left!";
        Cursor.visible = true;

    }

    public void GameLoss()
    {
        lossScreenUI.SetActive(true);
        Time.timeScale = 0;
        isPaused = true;
        Cursor.visible = true;
    }

    public void SetStealth(int stealth)
    {
        slider.value = stealth;
    }

    public void SetMaxStealth(int stealthMax)
    {
        slider.maxValue = stealthMax;
        slider.value = stealthMax;
    }

    public void SetClockRot(float timeLeft)
    {
        float percentPassed;

        percentPassed = timeLeft / maxTime * 100;
        clockFace.transform.rotation = Quaternion.Euler(0, 0, 1.8f * percentPassed);   
    }
}
