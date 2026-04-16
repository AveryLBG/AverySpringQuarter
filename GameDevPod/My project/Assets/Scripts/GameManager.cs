using UnityEngine;
using TMPro;

public class GameManager : MonoBehaviour
{
    // Handle the scorekeeping
    // Handle UI score for the game
    // Handle resetting on a lose state
   
    public static GameManager Instance {get; private set;}
    [SerializeField, Tooltip("The score of the player (Pickup amount)")]
    private int playerScore = 0;
    [SerializeField, Tooltip("A reference to the victory text game object")]
    private GameObject victoryTextObject;
    [SerializeField, Tooltip("The parent of all Pickups")]
    private GameObject pickupParent;
    [SerializeField, Tooltip("The UI object that keeps the player's score.")]
    private TextMeshProUGUI scoreText;
    private int remainingPickups;
    // A unity function called once at the beginning before Start()
    // A great place to initialize variables in your script
    private void Awake()
    {
        if (Instance == null)// There is no instance of Game Manger assigned yet
        {
            Instance = this; // Assign the singleton instance to this instance
        }
        else// There is already a GameManager
        {
            //Destroy the copy
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        //Turn off victory text
        victoryTextObject.SetActive(false);
        // Loop through pickup parent & count them
        remainingPickups = pickupParent.transform.childCount;
        //Reset the score 
        playerScore = 0;
        //Update Score
        scoreText.text = "Score: " + playerScore;

    }

    public void UpdateScore(int value)
    {
        //update the score
        playerScore += value;
        //update the score
        scoreText.text = "Score: " + playerScore;
        // count down remaining pickups 
        remainingPickups -= 1;
        //check if any pickups are left
        if (remainingPickups <= 0)
        {
            //end the game/ turn on the victory text
            victoryTextObject.SetActive(true);
        }
    
    }
}