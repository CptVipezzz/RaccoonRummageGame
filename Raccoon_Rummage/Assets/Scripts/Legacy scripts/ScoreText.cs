using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ScoreText : MonoBehaviour
{
    public TextMeshProUGUI scoreText;

    int pickUpCount;

    private void OnEnable()
    {
        PickUpsScript.OnPickUpCollected += IncrementScore;
    }

    private void OnDisable()
    {
        PickUpsScript.OnPickUpCollected -= IncrementScore;  
    }

    public void IncrementScore()
    {
        pickUpCount++;
        scoreText.text = $"Food: {pickUpCount}";    
    }
}
