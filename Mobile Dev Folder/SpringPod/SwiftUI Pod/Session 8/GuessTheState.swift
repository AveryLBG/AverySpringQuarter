//
//  GuessTheState.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 1/22/26.
//

import SwiftUI

struct GuessTheState: View {
    
        @State private var states = ["Michigan", "California", "Georgia", "Illinois", "Maryland", "Pennsylvania", "Florida"].shuffled()
        @State private var choices: [String] = []
        @State private var correctAnswer: Int = 0
        @State private var showingScore = false
        @State private var scoreTitle = ""
        @State private var score: Int = 0
        @State private var questionCount = 0
        @State private var gameOver = false
        
    
        func statetapped(_ number: Int){
            if number  == correctAnswer{
                scoreTitle = "Correct"
                score = score + 1
            }else{
                scoreTitle = "Wrong, that is the state of \(choices[number])"
            }
            questionCount += 1
            if questionCount == 10{
                gameOver = true  //show final alert
            }else{
                showingScore = true
            }
        }// end of statetapped func
        
    
        func askQuestion(){
           states.shuffle()
           // Pick the correct state from the shuffled list
           let correctState = states.first ?? ""
           // Build three other unique options excluding the correct state
            let pool = states.dropFirst()
           var others: [String] = []
           for state in pool {
               if others.count == 3 { break }
               others.append(state)
           }
           var newChoices = others + [correctState]
           newChoices.shuffle()
           choices = newChoices
           // Set correctAnswer to the index within choices
           correctAnswer = choices.firstIndex(of: correctState) ?? 0
        }// end of askQuestion func
        
    
        func restartGame(){
            score = 0
            questionCount = 0
            gameOver = false
            askQuestion()
        }// end of restartGame func

    
    
    var body: some View {
        ZStack{
            
            Color.green.opacity(0.2)// tints && changes the color of the background of app's root view
           
            VStack{
                Spacer()
                Text("Gues the State")
                    .font(.largeTitle.weight(.bold)).padding(20)
                
                
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the State of ")
                            .font(.subheadline.weight(.heavy))
                            .padding(5)
                        Text(choices.isEmpty ? "" : choices[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(choices.indices, id: \.self) { number in
                        Button {
                            statetapped(number)
                        } label: {
                            Image(choices[number])
                                .aspectRatio(contentMode: .fit)
                                .clipShape(.buttonBorder)
                                .shadow(radius: 5)
                        }
                    }// end of ForEach
                }
                
                Spacer()
                Spacer()
                
                Text("score: is \(score) ")
                    .font(.title.bold())
                Text("Question number \(questionCount) out of 10")
                    .font(.subheadline)
                    .padding(.top, 5)
                
                Spacer()
            }
            .padding()
        } //end of ZStack
        .ignoresSafeArea(.all)
        
            .alert(scoreTitle, isPresented: $showingScore){
                Button("continue", action: askQuestion)
            } message: {
                Text("Your score is \(score) " )
            }//Alert for current score
        
            .alert("Game over", isPresented: $gameOver){
                Button("Restart", action: restartGame)
            } message: {
                Text("Your final score is \(score) out of 10")
            } //Alert for end of game
        
        .onAppear {
            if choices.isEmpty {
                askQuestion()
            }
        }
        
    }
}


#Preview {
    GuessTheState()
}
