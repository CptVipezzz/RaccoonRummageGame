using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManager : MonoBehaviour
{
    public static SoundManager Instance;

    [SerializeField] private AudioSource[] walkingSource;
    [SerializeField] private AudioSource[] PickUpAudio;
    [SerializeField] private AudioSource menuSource, ambiantSource;

    public bool isWalking = false;

    //int rdm = 0;
    public static SoundManager instance 
    {
        get
        {
            if (instance == null) Debug.Log("SoundManager is NULL");

            return instance;
        }
    }
    private void Update()
    {
        PlayWalkingClip();
    }
   

    public void PlayPickUpClip()
    {
        int rdm = Random.Range(0, PickUpAudio.Length);
        PickUpAudio[rdm].Play();
    }

    public void PlayMenuClip()
    {
        menuSource.Play();
        ambiantSource.Pause();
    }

    public void MenuClipOff()
    {
        menuSource.Pause();
    }

    void PlayWalkingClip()
    {
        //int rdm = Random.Range(0, PickUpAudio.Length);

        if (isWalking == true)
        {
            
            walkingSource[0].Play();
        }
        else
        {
            walkingSource[0].Pause();  
        }
    }
   

}
