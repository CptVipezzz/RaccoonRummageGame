/* Raccoon Rummage
   Detection/ stealth script
   Written by Jack Limerick
   34190313 */

using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Rendering;

public class StealthDetection : MonoBehaviour
{
    private GameObject otherObject;

    public int stealth = 100; //switch back after test!
    private bool isDetected = false;
    private float lastTick = 0f;

    public UIController UIController;
    private float stealthDrain = 0.5f;
    public bool concealed = false;

    public float regenDelay;
    public float regenAmount;
    float regenTimer = 0;

    public bool regenPaused = false;
    float delayAmount = 5f;

    // Start is called before the first frame update
    void Start()
    {
        isDetected = false;
        concealed = false;
        regenTimer = 0;
    }

    private void OnTriggerEnter(Collider other)
    {
        //Checks to see if the player is currently in an object that grants concealed.
        if  (other.gameObject.tag == "Concealed")
        {
            concealed = true;
            Debug.Log("Concealed");
        }

        //Checks the tag of the trigger to ensure it is a detecter and that the player isnt concealed.
        if ((other.gameObject.tag == "LowDetect" || other.gameObject.tag == "MidDetect" || other.gameObject.tag == "HighDetect") && concealed == false)
        {
            //Allows for passive drain of stealth while in the trigger.
            otherObject = other.gameObject;
            isDetected = true;
            regenPaused = true;
            Debug.Log("detected by " + other.gameObject.name);
        }
        else if (other.gameObject.tag == "SingleDetect" && concealed == false)
        {
            //One off stealth drain.
            stealth -= 15;
            regenPaused = true;
            Debug.Log(this.gameObject.name + " Detected by " + other.gameObject.name);
            UpdateStealthText();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        //Checks the tag of the trigger to ensure it is a detecter.
        if (other.gameObject.tag == "LowDetect" || other.gameObject.tag == "MidDetect" || other.gameObject.tag == "HighDetect")
        {
            //stops the passive drain on stealth
            isDetected = false;
            StartCoroutine(DelayTimer());
            Debug.Log(other.gameObject.name + " Detected by " + other.gameObject.name);
        }

        //Reverts the concealed var to its default state once the trigger has been left.
        if (other.gameObject.tag == "Concealed")
        {
            concealed = false;
        }
    }

    //Updates the value of stealth within the gamemanager and the UI.
    public void UpdateStealthText()
    {
        UIController.StealthUpdate(stealth);
        GameManager.Instance.stealth = stealth;
    }

    private void FixedUpdate()
    {
        //Dictates by how much stealth is drained overtime via the gameobjects tag.
        while (isDetected == true && Time.time > stealthDrain + lastTick)
        {
            if (otherObject.tag == "LowDetect")
            {
                stealth -= 8;
            }
            else if (otherObject.tag == "MidDetect")
            {
                stealth -= 15;
            }
            else if (otherObject.tag == "HighDetect")
            {
                stealth -= 20;
            }

            lastTick = Time.time;
           
        }

        //Sets the is hidden value in the UIController to enact UI changes.
        if (isDetected == true)
        {
            UIController.isHidden = false;
        }
        else if (isDetected == false)
        {
            UIController.isHidden = true;
        }

        if (regenPaused == false)
        {
            StealthRegen();
        }
        
        UpdateStealthText();
    }

    //drains stealth on Minigame loss.
    public void BinRummage()
    {
        stealth -= 10;
    }

    //Regenerates the stealth value over time up to its max amount (100).
    void StealthRegen()
    {
        regenTimer += Time.deltaTime;

        if (regenTimer > regenDelay && stealth < 100)
        {
            stealth += Convert.ToInt32(regenAmount);
            regenTimer = 0;
        }
        else if (regenTimer > regenDelay && stealth >= 100)
        {
            stealth = 100;
            regenTimer = 0;
        }
    }

    //Delays the regen of stealth by delayAmount.
    IEnumerator DelayTimer()
    {
        regenPaused = true;
        yield return new WaitForSeconds(delayAmount);

        regenPaused = false;
    }

    public void StartDelay()
    {
        StartCoroutine(DelayTimer());
    }
}
