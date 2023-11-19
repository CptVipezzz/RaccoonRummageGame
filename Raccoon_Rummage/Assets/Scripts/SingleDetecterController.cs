using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SingleDetecterController : MonoBehaviour
{
    [SerializeField] private GameObject detecter;
    [SerializeField] private GameObject[] pigeons;

    public UIController Controller;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            detecter.SetActive(false);
            for(int i = 0; i < pigeons.Length; i++)
            {
                AnimPigeon tmp;
                tmp = pigeons[i].GetComponent<AnimPigeon>();
                tmp.detected = true;
            }

            Controller.PlayDetectedPop();
        }
    }
}
