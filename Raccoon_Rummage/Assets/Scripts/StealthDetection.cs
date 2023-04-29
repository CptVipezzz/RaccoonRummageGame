using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StealthDetection : MonoBehaviour
{
    private int stealth = 100;

    public UIController UIController;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        
        if (other.gameObject.tag == "LoeDetect")
        {
            stealth -= 1;
        }
    }

    public void UpdateStealthText()
    {
        UIController.StealthUpdate(stealth);
        GameManager.Instance.stealth = stealth;
    }
}
