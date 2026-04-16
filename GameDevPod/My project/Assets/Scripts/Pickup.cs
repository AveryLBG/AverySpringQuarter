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

        if (controller !=null)//we've hit the player
        {
            //Destroy this pickup
            Destroy(gameObject);
            //Tell the gameManager to update the score
            GameManager.Instance.UpdateScore(1);
        }
    }

    private void Update()
    {
        //Make the pickup rotate 15 on x, 45 on y, and 60 on z
        transform.Rotate(new Vector3(15, 45, 60) * rotateSpeed * Time.deltaTime, Space.Self);
    }
}
