using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;

public class EnemyAi : MonoBehaviour
{
    [SerializeField] float health = 3f;
    [SerializeField] float moveSpeed = 5f;

    Transform target;
   
    // Start is called before the first frame update
    void Start()
    {
        target = GameObject.FindGameObjectWithTag("Player").transform;
    }

    private void Update()
    {
        if(target != null)
        {           

            transform.LookAt(new Vector3(target.position.x, transform.position.y, target.position.z));
            transform.position = Vector3.MoveTowards(transform.position, target.position, moveSpeed * Time.deltaTime);

        }
    }

    

}
