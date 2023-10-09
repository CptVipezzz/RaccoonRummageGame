/* Raccoon Rummage
   Detection/ stealth script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class StealthDetection : MonoBehaviour
{
    private GameObject otherObject;

    private int stealth = 100;
    private bool isDetected = false;
    private float lastTick = 0f;

    public UIController UIController;
    private float stealthDrain = 0.5f;

    // Start is called before the first frame update
    void Start()
    {
        isDetected = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        //Checks the tag of the trigger to ensure it is a detecter.
        if (other.gameObject.tag == "LowDetect" || other.gameObject.tag == "MidDetect" || other.gameObject.tag == "HighDetect")
        {
            //Allows for passive drain of stealth while in the trigger.
            otherObject = other.gameObject;
            isDetected = true;
            Debug.Log("detected by " + other.gameObject.name);
        }
        else if (other.gameObject.tag == "SingleDetect")
        {
            //One off stealth drain.
            stealth -= 15;
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
            Debug.Log(other.gameObject.name + " Detected by " + other.gameObject.name);
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
    

        UpdateStealthText();
        //Debug.Log("Stealth updateted" + otherObject.tag + " - " + stealth);
    }

    //drains stealth on bin interaction [TO BE CHANGED ON ADDITION OF MINIGAMES!]
    public void BinRummage()
    {
        stealth -= 10;
    }
}
