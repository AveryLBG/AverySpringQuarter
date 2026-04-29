using UnityEngine;
using UnityEngine.AI;

public class EnemyFollow : MonoBehaviour
{

   [SerializeField] private NavMeshAgent agent;
   [SerializeField] private Transform target;


   private void Update()
   {
        // update the destination of the enemy to the player's current position
        agent.SetDestination(target.position);

   }
   

   private void Oncollisionenter(Collision collision)


}
