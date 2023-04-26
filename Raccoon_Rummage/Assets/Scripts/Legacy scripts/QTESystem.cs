using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class QTESystem : MonoBehaviour
{
    public GameObject DisplayBox;
    public GameObject PassBox;

    public int QTEGenerate;
    public int waitingForKey;
    public int correctKey;
    public int countingDown;

    private void Update()
    {
        if (waitingForKey == 0)
        {
            QTEGenerate = Random.Range(1, 4);
            countingDown = 1;

            if(QTEGenerate == 1)
            {
                waitingForKey = 1;
                DisplayBox.GetComponent<Text>().text = "[E]";
            }
            else if (QTEGenerate == 2)
            {
                waitingForKey = 1;
                DisplayBox.GetComponent<Text>().text = "[R]";
            }
            else if (QTEGenerate == 3)
            {
                waitingForKey = 1;
                DisplayBox.GetComponent<Text>().text = "[T]";
            }
        }

        if (QTEGenerate == 1)
        {
            if(Input.anyKeyDown)
            {
                if (Input.GetKeyDown("e") == true)
                {
                    correctKey = 1;
                    StartCoroutine(KeyPressing());
                }
                else
                {
                    correctKey = 2;
                    StartCoroutine(KeyPressing());
                }
            }
        }

        if (QTEGenerate == 2)
        {
            if (Input.anyKeyDown)
            {
                if (Input.GetKeyDown("r") == true)
                {
                    correctKey = 1;
                    StartCoroutine(KeyPressing());
                }
                else
                {
                    correctKey = 2;
                    StartCoroutine(KeyPressing());
                }
            }
        }

        if (QTEGenerate == 3)
        {
            if (Input.anyKeyDown)
            {
                if (Input.GetKeyDown("t") == true)
                {
                    correctKey = 1;
                    StartCoroutine(KeyPressing());
                }
                else
                {
                    correctKey = 2;
                    StartCoroutine(KeyPressing());
                }
            }
        }
    }

    IEnumerator KeyPressing()
    {
        QTEGenerate = 4;

        if (correctKey == 1)
        {
            countingDown = 2;
            PassBox.GetComponent<Text>().text = "Pass!";
            yield return new WaitForSeconds(1.5f);
            correctKey = 0;
            PassBox.GetComponent<Text>().text = "";
            
        }
    }
}
