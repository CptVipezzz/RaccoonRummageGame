/* Raccoon Rummage Game
   Pick up collection script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinCollection : MonoBehaviour
{
    public int coin = 0;

    public UIController UIController;
    public StealthDetection stealthDetection;
    public SoundManager soundManager;

    private void OnTriggerEnter(Collider other)
    {
        //Checks the tag to find which value to give to the player then causes the pop-up to appear.
        if(other.gameObject.tag == "LowScoreCoin")
        { 
            GameManager.Instance.score += 1;
            soundManager.PlayPickUpClip();
            UIController.pickUpValue = 1;
            Destroy(other.gameObject);
            PopUp();
        }
        else if (other.gameObject.tag == "MidScoreCoin")
        {
            GameManager.Instance.score += 3;
            //SoundManager.instance.PlayPickUpClip();
            UIController.pickUpValue = 3;
            Destroy(other.gameObject);
            PopUp();
        }
        else if (other.gameObject.tag == "HighScoreCoin")
        {
            GameManager.Instance.score +=  5;
            soundManager.PlayPickUpClip();
            UIController.pickUpValue = 5;
            Destroy(other.gameObject);
            PopUp();
        }
        //
        else if (other.gameObject.tag == "StealthRegen")
        {
            stealthDetection.StealthRegenAmount();
            other.gameObject.SetActive(false);
        }

        //Updates the UI score text.
        UpdateScoreText();
    }

    //Updates the score when a bin object is interacted with.
    public void BinInteract()
    {
        GameManager.Instance.score += 5;
        soundManager.PlayPickUpClip();
        UIController.pickUpValue = 5;
        UpdateScoreText();
    }

    //Updates the UI score text.
   public void UpdateScoreText ()
    {
        UIController.ScoreUpdate(GameManager.Instance.score);
        //GameManager.Instance.score = coin;
    }

    public void PopUp()
    {
        //Decides which pop-up to display based ont he current score.
        if ( coin == GameManager.Instance.levelWin)
        {
            UIController.StartPopUps(GameManager.Instance.score);
        }
        else { UIController.StartPopUps(GameManager.Instance.score); }
    }

}
