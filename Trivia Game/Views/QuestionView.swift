//
//  QuestionView.swift
//  Trivia Game
//
//  Created by Esma Koçak on 18.07.2024.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        ZStack {
            Image("11")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            
            VStack(spacing: 40){
                HStack{
                    Text("Art Quiz")
                        .lilacTitle()
                        .padding()
                        
                    
                    Spacer()
                    Text("1 out of 10")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
                    
                }
                
                ProgressBar(progress: 40)
                
                VStack(alignment: .leading, spacing: 20){
                    Text("What nationality was the surrealist painter Salvador Dali?")
                        .font(.system(size: 20))
                        .padding()
                        .bold()
                        .foregroundColor(.gray)
                    
                    AnswerRow(answer: Answer(text: "Spanish", isCorrect: true))
                        .environmentObject(triviaManager)

                    AnswerRow(answer: Answer(text: "German", isCorrect: false))
                        .environmentObject(triviaManager)
                }
                
                PrimaryButton(text: "Next")
                
                Spacer()
                
                
                
            }
            .padding(20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationBarBackButtonHidden()
        }
        
    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
