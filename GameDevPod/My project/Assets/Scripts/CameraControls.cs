using UnityEngine;

public class CameraControls : MonoBehaviour
{
  //Create Variables
  [SerializeField, Tooltip("A reference to the target's transform component.")]
  private Transform target; 
  [SerializeField, Tooltip("An offset for the camera relative to the target's position.")]
  private Vector3 posOffset;

  private void LateUpdate()
  {
   //Every frame, update the camera's position and offset
   if (target != null)
   {
      transform.position = target.position + posOffset;
   }
   
  }
  
}
