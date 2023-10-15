/* Raccoon Rummage
   MiniGames controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniGamesController : MonoBehaviour
{
    public GameObject[] miniGames;

    public GameObject currentMiniGame;
    public UIController UIController;

    int arrayLength;

    public bool testbool = true;

    private void Start()
    {
       LoadMiniGame();
    }
    //Loads a random minigame from the array.
    public void LoadMiniGame()
    {
        int rdm;

        arrayLength = miniGames.Length;

        rdm = Random.Range(0, arrayLength - 1);
        currentMiniGame = miniGames[rdm];
        Debug.Log("Mingame " + currentMiniGame + " loaded");
    }

    //Plays the currently loaded minigame.
    public void PlayMiniGame()
    {
        LoadMiniGame();

        currentMiniGame.SetActive(true);
        UIController.gameUI.SetActive(false);
        Time.timeScale = 0f;
    }
}
