/* Raccoon Rummage
   Game UI controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using TMPro;
using Cinemachine;

public class UIController : MonoBehaviour
{
    public TextMeshProUGUI scoreText;
    public TextMeshProUGUI timerText;
    public TextMeshProUGUI stealthMeter;

    public TextMeshProUGUI finalScoreTextWin;
    public TextMeshProUGUI finalTimerTextWin;
    public TextMeshProUGUI finalScoreTextLoss;

    public TextMeshProUGUI popUpText;

    public GameObject pauseMenuUI;
    public GameObject winScreenUI;
    public GameObject lossScreenUI;
    public GameObject clockFace;
    public GameObject detected;
    public GameObject altDetected;
    public GameObject hidden;
    public GameObject alarm;
    public GameObject gameUI;
    public GameObject pickUpPopUp;
    public GameObject minimumFoodPopUp;
    public GameObject starLeftWin;
    public GameObject starRightWin;    
    public GameObject starMiddleWin;
    public GameObject starLeftLoss;
    public GameObject starRightLoss;
    public GameObject starMiddleLoss;

    public GameObject playCharacter;
    public GameObject playerCamera;
    ThirdPersonControl controller;
    CinemachineFreeLook freeLook;

    public GameObject[] miniGames;

    public StealthDetection StealthDetection;
    public CoinCollection CoinCollection;
    public LevelData LevelData;

    public Slider slider;

    private float timeLeft;
    private float maxTime;
    public bool timerOn = false;
    public static bool isPaused = false;
    private string currentSceneName;
    public bool isHidden = true;
    public int pickUpValue;
    private bool popCheck = true;
    private int arrayLength;

    public bool softPause = false;

    private GameObject currentMiniGame;

    private string tmpTime;

    // Start is called before the first frame update
    void Start()
    {
        //Init values and set objects to there default states/ values.
        pauseMenuUI.SetActive(false);
        winScreenUI.SetActive(false);   
        lossScreenUI.SetActive(false);

        starLeftWin.SetActive(false);
        starRightWin.SetActive(false);
        starMiddleWin.SetActive(false);
        starLeftLoss.SetActive(false);
        starRightLoss.SetActive(false);
        starMiddleLoss.SetActive(false);

        Cursor.visible = false;
        SetMaxStealth(GameManager.Instance.stealth);

        LoadMiniGame();

        currentSceneName = SceneManager.GetActiveScene().name;

        scoreText.text = "Food: 0/ " + LevelData.levelScore;
        timeLeft = LevelData.levelTime;
        maxTime = LevelData.levelTime;
        timerOn = true;
        popCheck = true;

        controller = playCharacter.GetComponent<ThirdPersonControl>();
        freeLook = playerCamera.GetComponent<CinemachineFreeLook>();

        clockFace.transform.rotation = Quaternion.Euler(0, 0, 0);
    }

    public void ScoreUpdate(int coin)
    {
        //Updates the score text in the UI
        scoreText.text = "Food: " + coin.ToString() + "/ " + GameManager.Instance.levelWin;        
    }

    public void StealthUpdate(int stealth)
    {
        SetStealth(stealth);
    }

    private void Update()
    {
        if(timerOn)
        {
            //Count down timer, while time is left decrement the time value (in seconds) the updates the UI.
            if(timeLeft > 0)
            {
                timeLeft -= Time.deltaTime;
                UpdateTimer(timeLeft);
                SetClockRot(timeLeft);
            }
            else
            {
                //If timer runs out displays the [Game Over] screen.
                Debug.Log("Time is up");
                timeLeft = 0;
                timerOn = false;
                GameLoss();
            }
        }

        //Displays the pause menu when the [ESC] key is pressed.
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

        //Displays the [Game Over] screen if the stealth value hits 0.
        if (GameManager.Instance.stealth <= 0)
        {
            Debug.Log("Player Detected");
            GameLoss();
        }

        //Displays the detected popup and UI changes while the player is within a detector.
        if (isHidden == false)
        {
            detected.SetActive(true);
            alarm.SetActive(true);
            hidden.SetActive(false);
        }
        else
        {
            //Hides the detected popup and UI changes while the player is not in a detector.
            detected.SetActive(false);
            alarm.SetActive(false);
            hidden.SetActive(true);
        }
    }

    void UpdateTimer(float currentTime)
    {
        //Formats the timer value int Minuetes and seconds to display in the UI.
        currentTime += 1;

        float minutes = Mathf.FloorToInt(currentTime / 60);
        float seconds = Mathf.FloorToInt(currentTime % 60);

        tmpTime = string.Format("{0:00} : {1:00}", minutes, seconds);
        timerText.text = tmpTime;
        
    }

    public void Resume()
    {
        //Resumes the game and hides the pause UI elements.
        pauseMenuUI.SetActive(false);
        gameUI.SetActive(true);
        Time.timeScale = 1f;
        isPaused = false;
        Cursor.visible = false;
    }

    void Pause()
    {
        //Pauses the game and displayes only the pause UI elements.
        pauseMenuUI.SetActive(true);
        gameUI.SetActive(false);
        Time.timeScale = 0;
        isPaused = true;
        Cursor.visible = true;
    }

    public void LoadMenu()
    {
        //Loads the main menu scene.
        SceneManager.LoadScene("MainMenu");
        Debug.Log("Menu button hit!");
    }

    public void QuitGame()
    {
        //Exits the application.
        Debug.Log("Quitting game...");
        Application.Quit();
    }

    public void Restart()
    {
        //Loads the current level.
        GameManager.Instance.ResetValues();
        //SoundManager.Instance.MenuClipOff();
        SceneManager.LoadScene(currentSceneName);
        Debug.Log("Reloading level...");
    }

    public void GameWon()
    {
        //Displays only the game won UI elements.
        Time.timeScale = 0;
        isPaused = true;
        winScreenUI.SetActive(true); 
        gameUI.SetActive(false);
        finalScoreTextWin.text = "Your final score is: " + GameManager.Instance.score + " out of " + GameManager.Instance.levelWin;
        finalTimerTextWin.text = "You managed that with " + tmpTime + " left!";

        if (GameManager.Instance.score >= GameManager.Instance.levelWin && GameManager.Instance.score < 200)
        {
            starLeftWin.SetActive(true);
            starRightWin.SetActive(false);
            starMiddleWin.SetActive(false);
        }
        else if(GameManager.Instance.score >= 200 && GameManager.Instance.score < 275)
        {
            starLeftWin.SetActive(true);
            starRightWin.SetActive(true);
            starMiddleWin.SetActive(false);
        }
        else if(GameManager.Instance.score >= 275)
        {

            starLeftWin.SetActive(true);
            starRightWin.SetActive(true);
            starMiddleWin.SetActive(true);
        }
        Cursor.visible = true;
        //SoundManager.Instance.PlayMenuClip();
        Debug.Log(GameManager.Instance.score);

    }

    public void GameLoss()
    {
        //Displays only the game over UI elements.
        lossScreenUI.SetActive(true);
        pickUpPopUp.SetActive(false);
        minimumFoodPopUp.SetActive(false);
        gameUI.SetActive(false);
        isHidden = true;
        Time.timeScale = 0;
        isPaused = true;
        
        finalScoreTextLoss.text = "Your final score is: " + GameManager.Instance.score + " out of " + GameManager.Instance.levelWin;

        if (GameManager.Instance.score >= GameManager.Instance.levelWin && GameManager.Instance.score < 200)
        {
            starLeftLoss.SetActive(true);
            starRightLoss.SetActive(false);
            starMiddleLoss.SetActive(false);
        }
        else if (GameManager.Instance.score >= 200 && GameManager.Instance.score < 275)
        {
            starLeftLoss.SetActive(true);
            starRightLoss.SetActive(true);
            starMiddleLoss.SetActive(false);
        }
        else if (GameManager.Instance.score >= 275)
        {

            starLeftLoss.SetActive(true);
            starRightLoss.SetActive(true);
            starMiddleLoss.SetActive(true);
        }

        //SoundManager.Instance.PlayMenuClip();
        Cursor.visible = true;
    }

    public void SetStealth(int stealth)
    {
        //Sets the slider UI element.
        slider.value = stealth;
    }

    public void SetMaxStealth(int stealthMax)
    {
        //Sets the max stealth values in the slider UI elements.
        slider.maxValue = stealthMax;
        slider.value = stealthMax;
    }

    public void SetClockRot(float timeLeft)
    {
        //Rotates the clock UI element as the time decreases.
        float percentPassed = (timeLeft / maxTime);
        percentPassed = percentPassed * 100f;
        float realPercentPassed = 100f - percentPassed;
        float currentRot = (1.8f * realPercentPassed);

        //Debug.Log(rotAmount + "/ " + percentPassed + "/ " + currentRot + "/ " + realPercentPassed);

        clockFace.transform.rotation = Quaternion.Euler(0, 0, -currentRot );   
    }

    IEnumerator PickUpPopUp()
    {
        //Displays the pickup popup with the appropreate value for the pickup obtained.
        Debug.Log("popup");
        pickUpPopUp.SetActive(true);
        popUpText.text = "+" + pickUpValue;
        yield return new WaitForSeconds(2f);

        pickUpPopUp.SetActive(false);
    }

    IEnumerator CanLeavePopUp()
    {
        //Displays the can leave popup 
        minimumFoodPopUp.SetActive(true);       
        yield return new WaitForSeconds(5f);

        minimumFoodPopUp.SetActive(false);
    }

    IEnumerator MiniLossPop()
    {
        altDetected.SetActive(true);

        yield return new WaitForSeconds(1f);

        altDetected.SetActive(false);

    }

    public void StartPopUps(int coin)
    {
        //Used by external scripts to start the appropreate popup coroutine.
        if (coin >= GameManager.Instance.levelWin && popCheck == true)
        {
            StartCoroutine(CanLeavePopUp());
            popCheck = false;
        }

        StartCoroutine(PickUpPopUp());
    }

    public void PlayMiniGame()
    {
        LoadMiniGame();
        SoftPause();

        currentMiniGame.SetActive(true);
        gameUI.SetActive(false);

    }

    void LoadMiniGame()
    {
        int rdm;

        arrayLength = miniGames.Length;

        rdm = Random.Range(0, arrayLength - 1);
        currentMiniGame = miniGames[rdm];
        Debug.Log("Mingame " + currentMiniGame + " loaded");

    }

    void SoftPause()
    {
        if (softPause == false)
        {
            softPause = true;
            timerOn = false;
            controller.enabled = false;
            freeLook.enabled = false;
            StealthDetection.concealed = true;
        }
        else
        {
            softPause = false;
            timerOn = true;
            controller.enabled = true;
            freeLook.enabled = true;
            StealthDetection.concealed = false;
        }
    }

    public void MiniGameLoss()
    {
        SoftPause();
        //Displays loss screen.
        StealthDetection.BinRummage();
        StealthUpdate(GameManager.Instance.stealth);

        currentMiniGame.SetActive(false);
        gameUI.SetActive(true);

        StartCoroutine(MiniLossPop());
    }

    public void MiniGameWin()
    {
        SoftPause();
        //Displays win screen.
        CoinCollection.BinInteract();

        StartPopUps(CoinCollection.coin);
        currentMiniGame.SetActive(false);
        gameUI.SetActive(true);
    }

    public void PlayDetectedPop()
    {
        StartCoroutine(MiniLossPop());
    }
}
