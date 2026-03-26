using UnityEngine;

public class PlayerController : MonoBehaviour
{
    //Create variables
    [SerializeField, Tooltip("The player's Rigidbody, can be used to apply movement.") ]

    private Rigidbody rb;
    
    [SerializeField, Tooltip("Movement speed multiplier") ]

    private float moveSpeed = 7f;

    private void Awake() 
    {
        //Initialize Variables
        rb = GetComponent<Rigidbody>();
    }

    private void FixedUpdate() 
    {
        //Gather input from player
        float xInput = Input.GetAxis("Horizontal");// Left & Right movement
        float zInput = Input.GetAxis("Vertical");// Forward & Back Movement
        //Convert input into move direction
        Vector3 moveDir = new Vector3(xInput, 0, zInput);

    
        //Apply Input into movement on the player character.
        rb.AddForce(moveDir * moveSpeed * Time.deltaTime ,ForceMode.Impulse);
    }
}
