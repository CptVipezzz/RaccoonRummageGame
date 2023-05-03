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
        mainMenuUI.SetActive(true);
        controlsUI.SetActive(false);
        howToPlay.SetActive(false); 
    }

    public void LoadControlsMenu()
    {
        mainMenuUI.SetActive(false);
        controlsUI.SetActive(true);
        howToPlay.SetActive(false);
    }

    public void LoadHowToMenu()
    {
        mainMenuUI.SetActive(false);
        controlsUI.SetActive(false);
        howToPlay.SetActive(true);
    }
    public void LoadGameLevel()
    {
        SceneManager.LoadScene(gameScene);
        Debug.Log("Loading game scene... " + gameScene);
    }

    public void QuitGame()
    {
        Debug.Log("Quitting game...");
        Application.Quit();
    }


}

    
