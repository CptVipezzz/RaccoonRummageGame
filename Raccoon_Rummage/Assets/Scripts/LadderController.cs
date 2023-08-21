using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderController : MonoBehaviour
{
    public Transform character;
    bool inside = false;
    public float ladderSpeed = 3.2f;
    public ThirdPersonControl thirdPersonInput;

    // Start is called before the first frame update
    void Start()
    {
        thirdPersonInput = GetComponent<ThirdPersonControl>();
        inside = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (inside == true && Input.GetKey("w"))
        {
            character.transform.position += Vector3.up * ladderSpeed;
        }

        if (inside == true && Input.GetKey("s"))
        {
            character.transform.position += Vector3.down * ladderSpeed; 
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Ladder")
        {
            thirdPersonInput.enabled = false;
            inside = !inside;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Ladder")
        {
            thirdPersonInput.enabled = true;
            inside = !inside;
        }
    }
}
