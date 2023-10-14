/* Raccoon Rummage
   Button mash minigame controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

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
    public Slider slider;
    public GameObject thisMinigame;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    private void Awake()
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
                SetSlider();
                timerOn = true;
            }
            //Gameover state, once the timer hits 0.
            else
            {
                timerOn = false;
                Debug.Log("Time is up");
                GameOver();
            }

            //Win state, once the player hits 100 and theres still time.
            if (timerOn = true && currentValue >= 100)
            {
                timerOn = false;
                Debug.Log("Game Won");
                //Win
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
    void GameOver()
    {
        GameManager.Instance.stealth -= 10;
        //Displays loss screen.
        thisMinigame.SetActive(false);

    }

    void GameWon()
    {
        GameManager.Instance.score += 5;
        //Displays win screen.
        thisMinigame.SetActive(false);
    }

}
