/* Raccoon Rummage
   Button mash minigame controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class QTEMiniGame : MonoBehaviour
{
    int currentValue = 0;
    bool hasStarted = false;
    bool timerOn;
    float currentTime;
    float currentRot;

    public int timerMax;
    public float rotSpeed;

    public TextMeshProUGUI promptText;
    public TextMeshProUGUI timerText;


    public GameObject thisMinigame;
    public GameObject indecatorWheel;

    public UIController UIController;

    // Start is called before the first frame update
    void Start()
    {
        currentTime = timerMax;
        currentValue = 0;
        currentRot = currentValue;
        indecatorWheel.transform.rotation = Quaternion.Euler(0, 0, currentRot);
        timerOn = false;
    }

    private void OnEnable()
    {
        currentTime = timerMax;
        currentValue = 0;
        currentRot = currentValue;
        indecatorWheel.transform.rotation = Quaternion.Euler(0, 0, currentRot);
        timerOn = false;
    }

    // Update is called once per frame
    void Update()
    {
        //Starts the game once the E button is pressed for the first time.
        if(hasStarted == false)
        {
            if (Input.GetKeyDown("e"))
            {
                promptText.text = "Press 'E' at the right time to win!";
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
            timerOn = true;

            //MiniGame timer.
            if (currentTime > 0)
            {
                currentTime -= Time.deltaTime;

                //Rotates the indecator a full 360 before resetting to 0.
                if (currentRot <= 360)
                {
                    currentRot += rotSpeed;
                }
                else if (currentRot > 360)
                {
                    currentRot = 0;
                }

                //Checks to see it the key was hit at the correct time.
                if(Input.GetKeyDown("e"))
                {
                    if (currentRot >= 160 && currentRot <= 200)
                    {
                        //MiniGame win state.
                        timerOn = false;
                        Debug.Log("MiniGame Won!");
                        UIController.MiniGameWin();
                    }
                    else if (hasStarted == true)
                    {
                        //MiniGame loss state.
                        timerOn = false;
                        Debug.Log("MiniGame loss!");
                        UIController.MiniGameLoss();

                    }
                }                

                //Updates the timer and indecator wheel UI elements.
                UpdateTimer(currentTime);
                SetWheel();
                timerOn = true;
            }
            else
            {
                //MiniGame loss state.
                timerOn = false;
                Debug.Log("Time is up!");
                UIController.MiniGameLoss();    
            }
        }
    }

    void SetWheel()
    {
        //Sets the indecator wheel UI elements rotation value.
        indecatorWheel.transform.rotation = Quaternion.Euler(0, 0, currentRot);
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
