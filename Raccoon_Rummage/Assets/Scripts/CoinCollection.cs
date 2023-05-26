using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinCollection : MonoBehaviour
{
   private int coin = 0;

    public UIController UIController;
    public StealthDetection stealthDetection;

    private void Start()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "LowScoreCoin")
        { 
            coin += 1;
            Destroy(other.gameObject);
        }
        else if (other.gameObject.tag == "MidScoreCoin")
        {
            coin += 3;
            Destroy(other.gameObject);
        }
        else if (other.gameObject.tag == "HighScoreCoin")
        {
            coin +=  5;
            Destroy(other.gameObject);
        }

        UpdateScoreText();
        
    }

    public void BinInteract()
    {
        coin += 5;
        stealthDetection.BinRummage();
        UpdateScoreText();
    }

   public void UpdateScoreText ()
    {
        UIController.ScoreUpdate(coin);
        GameManager.Instance.score = coin;
    }

}
