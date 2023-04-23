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
        //takes a reff of the camera obj and hides the prompt
        mainCam = Camera.main;
        uiPanel.SetActive(false);
    }

    private void LateUpdate()
    {
        //rotates the obj to look at the camera
        var rotation = mainCam.transform.rotation;
        transform.LookAt(transform.position + rotation * Vector3.forward, rotation * Vector3.up);
    }

    public bool IsDisplayed = false;
    public void SetUp(string promptText)
    {
        //unhides the prompt and adds the appropreate text
        PromptText.text = promptText;
        uiPanel.SetActive(true);
        IsDisplayed = true; 
    }

    public void Close()
    {
        //hides the interact prompt 
        uiPanel.SetActive(false);
        IsDisplayed = false;
    }
}
