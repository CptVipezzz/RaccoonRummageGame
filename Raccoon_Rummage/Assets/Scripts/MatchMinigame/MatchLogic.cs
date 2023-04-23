using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class MatchLogic : MonoBehaviour
{
    static MatchLogic Instance;

    public int maxPoints = 3;
    public TextMeshProUGUI pointsText;
    public GameObject MiniGameCompletedUI;
    private int points = 0;

        private void Start()
    {
        Instance = this;    
    }

    void UpdatePointsText()
    {
        pointsText.text = points + "/" + maxPoints;
        if (points == maxPoints)
        {
            MiniGameCompletedUI.SetActive(true);
        }
    }

    public static void AddPoint()
    {
        AddPoints(1);
    }

    public static void AddPoints(int points)
    {
        Instance.points += points;
        Instance.UpdatePointsText();    
    }
}
