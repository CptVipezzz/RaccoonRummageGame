/* Raccoon Rummage
   Game UI controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManager : MonoBehaviour
{
    [SerializeField] public AudioClip[] PickUpAudio;
    [SerializeField] private AudioClip menuClip, ambiantClip;

    public AudioSource playerSource;
    public AudioSource ambiantSource;

    public bool isWalking = false;
    private void Start()
    {
        //ambiantSource.clip = ambiantClip;
        //ambiantSource.Play();
        MenuClipOff();
    }

    public void PlayPickUpClip()
    {
        AudioClip clip = PickUpAudio[(int)Random.Range(0, PickUpAudio.Length)];
        playerSource.clip = clip;
        playerSource.Play();
    }

    public void PlayMenuClip()
    {
        AudioClip clip = menuClip;
        ambiantSource.clip = clip;
        ambiantSource.Play();
    }

    public void MenuClipOff()
    {
        playerSource.Pause();
        AudioClip clip = ambiantClip;
        ambiantSource.clip = clip;
        ambiantSource.Play();
    }   

}
