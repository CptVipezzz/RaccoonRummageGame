/* Raccoon Rummage
   Game UI controller
   Written by Jack Limerick
   34190313 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSound : MonoBehaviour
{
    public AudioSource[] FootSteps;

    //public AudioSource source;
    // Start is called before the first frame update
    void Start()
    {
        //source = GetComponent<AudioSource>();
    }

    void PlayFootStepRacc()
    {
        //Loads random audio clip form array to play.
         FootSteps[(int)Random.Range(0, FootSteps.Length)].Play();
       
    }
}