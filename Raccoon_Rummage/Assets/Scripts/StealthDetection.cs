using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StealthDetection : MonoBehaviour
{
    private GameObject otherObject;

    private int stealth = 100;
    private bool isDetected = false;
    private float lastTick = 0f;

    public UIController UIController;
    private int stealthDrain = 1;

    // Start is called before the first frame update
    void Start()
    {
        isDetected = false;
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "LowDetect" || other.gameObject.tag == "MidDetect" || other.gameObject.tag == "HighDetect")
        {
            otherObject = other.gameObject;
            isDetected = true;
            Debug.Log("detected by " + this.gameObject.name);
        }
        else if (other.gameObject.tag == "SingleDetect")
        {
            stealth -= 15;
            //Debug.Log(this.gameObject.name + "Detected by " + other.gameObject.name);
            UpdateStealthText();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "LowDetect" || other.gameObject.tag == "MidDetect" || other.gameObject.tag == "HighDetect")
        {
            isDetected = false;
            //Debug.Log(this.gameObject.name + "Detected by " + other.gameObject.name);
        }
    }

    public void UpdateStealthText()
    {
        UIController.StealthUpdate(stealth);
        GameManager.Instance.stealth = stealth;
    }

    private void FixedUpdate()
    {
        while(isDetected == true && Time.time > stealthDrain + lastTick)
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

        UpdateStealthText();
        //Debug.Log("Stealth updateted" + otherObject.tag + " - " + stealth);
    }

    public void BinRummage()
    {
        stealth -= 10;
    }
}
