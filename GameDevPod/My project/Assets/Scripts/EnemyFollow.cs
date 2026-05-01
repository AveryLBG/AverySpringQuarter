using UnityEngine;
using UnityEngine.AI;

public class EnemyFollow : MonoBehaviour
{

   [SerializeField] private NavMeshAgent agent;
   [SerializeField] private Transform target;

   private void Awake()
   {
      agent = GetComponent<NavMeshAgent>();
   }


   private void Update()
   {
        // update the destination of the enemy to the player's current position
        if (target != null)
        {
            agent.SetDestination(target.position);
        }
        

   }
   

   private void OnCollisionEnter(Collision collision)
   {
      PlayerController player = collision.gameObject.GetComponent<PlayerController>();

      //if we hit the player
      if (player != null)
      {

         //destroy the player
         Destroy(collision.gameObject);
         //reset the game
         GameManager.Instance.Invoke("GameOver", 2f);
      }
   }


}
