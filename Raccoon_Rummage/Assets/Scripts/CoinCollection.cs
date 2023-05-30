using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinCollection : MonoBehaviour
{
    public int coin = 0;

    public UIController UIController;
    public StealthDetection stealthDetection;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "LowScoreCoin")
        { 
            coin += 1;
            UIController.pickUpValue = 1;
            Destroy(other.gameObject);
            PopUp();
        }
        else if (other.gameObject.tag == "MidScoreCoin")
        {
            coin += 3;
            UIController.pickUpValue = 3;
            Destroy(other.gameObject);
            PopUp();
        }
        else if (other.gameObject.tag == "HighScoreCoin")
        {
            coin +=  5;
            UIController.pickUpValue = 5;
            Destroy(other.gameObject);
            PopUp();
        }

        UpdateScoreText();
    }

    public void BinInteract()
    {
        coin += 5;
        UIController.pickUpValue = 5;
        stealthDetection.BinRummage();
        UpdateScoreText();
    }

   public void UpdateScoreText ()
    {
        UIController.ScoreUpdate(coin);
        GameManager.Instance.score = coin;
    }

    public void PopUp()
    {
        if ( coin == GameManager.Instance.levelWinScore)
        {
            UIController.StartPopUps(2);
        }
        else { UIController.StartPopUps(1); }
    }

}
