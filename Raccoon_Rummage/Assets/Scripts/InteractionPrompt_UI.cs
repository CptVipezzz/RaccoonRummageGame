/* Raccoon Rummage
   Interaction prompt script
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class InteractionPrompt_UI : MonoBehaviour
{
    private Camera mainCam;
    [SerializeField] private GameObject uiPanel;
    [SerializeField] private TextMeshProUGUI PromptText;

    private void Start()
    {
        //Takes a reff of the camera obj and hides the prompt.
        mainCam = Camera.main;
        if (mainCam == null) { Debug.Log("mainCam is Null"); }
        uiPanel.SetActive(false);
    }

    private void LateUpdate()
    {
        //Rotates the obj to look at the camera.
        var rotation = mainCam.transform.rotation;
        transform.LookAt(transform.position + rotation * Vector3.forward, rotation * Vector3.up);
    }

    public bool IsDisplayed = false;
    public void SetUp(string promptText)
    {
        //Unhides the prompt and adds the appropreate text.
        PromptText.text = promptText;
        uiPanel.SetActive(true);
        IsDisplayed = true; 
    }

    public void Close()
    {
        //Hides the interact prompt. 
        uiPanel.SetActive(false);
        IsDisplayed = false;
    }
}
