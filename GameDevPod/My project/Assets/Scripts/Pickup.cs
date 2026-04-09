using UnityEngine;

public class Pickup : MonoBehaviour
{
    //behaviour 1: destroy on contact
    //behaviour 2: tusk act 4 ifkwim

    [SerializeField, Tooltip("Controls rotation speed.")]
    private float rotateSpeed = 10f;

    //calls when another collider hits this object.
    private void OnTriggerEnter(Collider other)
    {
        //Store the player's playercontroller.
        PlayerController controller = other.GetComponent<PlayerController>();


    }
}
