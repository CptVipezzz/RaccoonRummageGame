/* Raccoon Rummage
   Button mash minigame controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Web;

public class ButtonMashMiniGame : MonoBehaviour
{
    int barStartValue = 0;
    float currentValue = 0f;
    bool hasStarted = false;
    bool timerOn = false;
    float currentTime;
    float drainTimer = 0.5f;

    public float drainRate;
    public float clickRate;
    public float drainDelay;
    public int timerMax;

    public TextMeshProUGUI promptText;
    public TextMeshProUGUI timerText;
    public Slider slider;
    public GameObject thisMinigame;

    public UIController UIController;

    // Start is called before the first frame update
    void Start()
    {
        currentTime = timerMax;
        currentValue = barStartValue;
        slider.maxValue = 100;
        slider.value = currentValue;
        drainTimer = 0;

    }

    private void OnEnable()
    {
        currentTime = timerMax;
        currentValue = barStartValue;
        slider.maxValue = 100;
        slider.value = currentValue;
        drainTimer = 0;
    }

    // Update is called once per frame
    void Update()
    {
        //Starts the game once the E button has been pressed.
        if (hasStarted == false)
        {
            if (Input.GetKey("e"))
            {
                promptText.text = "Mash 'E' to win!";
                hasStarted = true;
            }
            else
            {
                promptText.text = "Press 'E' to start!";
                hasStarted = false;
            }
        }
        else if (hasStarted == true)
        {
            //Minigame timer.
            if (currentTime > 0)
            {
                currentTime -= Time.deltaTime;
                drainTimer += Time.deltaTime;

                //only drains the current value if it is above 0.
                if (currentValue > 0)
                {
                    if (drainTimer > drainDelay)
                    {
                        currentValue -= drainRate;
                        drainTimer = 0;
                    }
                }
                else
                {
                    currentValue = 0;
                }

                //Debug.Log(currentValue);
                UpdateTimer(currentTime);
                SetSlider();
                timerOn = true;
            }
            //Gameover state, once the timer hits 0.
            else
            {
                timerOn = false;
                Debug.Log("Time is up");
                UIController.MiniGameLoss();
            }

            //Win state, once the player hits 100 and theres still time.
            if (timerOn = true && currentValue >= 100)
            {
                timerOn = false;
                Debug.Log("Game Won");
                UIController.MiniGameWin();
            }

            //Increases the players score through "mashing".
            if (Input.GetKeyDown(KeyCode.E))
            {
                currentValue += clickRate;
                Debug.Log("pressed E");
            }
        }
    }

    void SetSlider()
    {
        //Sets the slider UI element
        slider.value = currentValue;
    }
    void UpdateTimer(float currentTime)
    {
        string tmpTime;

        currentTime += 1;
        float minutes = Mathf.FloorToInt(currentTime / 60);
        float seconds = Mathf.FloorToInt(currentTime % 60);

        tmpTime = string.Format("{0:00} : {1:00}", minutes, seconds);
        timerText.text = tmpTime;
    }
}
