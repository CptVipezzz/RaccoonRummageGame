/* Raccoon Rummage
   Main menu UI controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using TMPro;

public class MainMenuUIController : MonoBehaviour
{
    public GameObject mainMenuUI;
    public GameObject controlsUI;
    public GameObject howToPlay;

    public string gameScene;

   
    public void LoadMainMenu()
    {
        //Displays only the main menu UI elements.
        mainMenuUI.SetActive(true);
        controlsUI.SetActive(false);
        howToPlay.SetActive(false); 
    }


    public void LoadControlsMenu()
    {
        //Displays only the controls menu UI elements.
        mainMenuUI.SetActive(false);
        controlsUI.SetActive(true);
        howToPlay.SetActive(false);
    }

    public void LoadHowToMenu()
    {
        //Displays only the how to menu UI elements.
        mainMenuUI.SetActive(false);
        controlsUI.SetActive(false);
        howToPlay.SetActive(true);
    }
    public void LoadGameLevel()
    {
        //Loads the game scene.
        SceneManager.LoadScene(gameScene);
        Debug.Log("Loading game scene... " + gameScene);
    }

    public void QuitGame()
    {
        //Exits the application.
        Debug.Log("Quitting game...");
        Application.Quit();
    }


}

    
