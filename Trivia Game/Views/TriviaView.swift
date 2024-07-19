//
//  TriviaView.swift
//  Trivia Game
//
//  Created by Esma Koçak on 18.07.2024.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        
    if triviaManager.reachedEnd {
            ZStack {
                Image("flowers")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Text("Art Quiz")
                        .lilacTitle()
                    
                    Text("Congratulations, \nyou completed the game 🎨🎉")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    
                    Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                        .fontWeight(.bold)
                    
                    Button {
                        Task.init {
                            await triviaManager.fetchTrivia()
                        }
                    } label: {
                        PrimaryButton(text: "Play Again")
                    }
                    
                    
                }   .foregroundColor(Color("AccentColor"))
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)      .fill(Color("backgroundColor"))
                            .blur(radius: 0.5)
                            .frame(width: 300, height: 250)
                        
                    )
            }
        
        } else {
               QuestionView()
                   .environmentObject(triviaManager)
        }
        
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
