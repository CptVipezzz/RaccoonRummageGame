using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class SpriteJump : MonoBehaviour
{
    public Image[] Trash;

    private Image trashInst;
    private Transform spawnPoint;

    // Start is called before the first frame update
    void Start()
    {
        spawnPoint = this.gameObject.transform;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void SpawnTrash()
    {
        int rdmSprite;
        int rdmVelo;

        rdmSprite = Random.Range(0, Trash.Length);
        //rdmVelo = Random.Range()

        trashInst = Instantiate(Trash[rdmSprite], spawnPoint.position, spawnPoint.rotation);
    }
}
