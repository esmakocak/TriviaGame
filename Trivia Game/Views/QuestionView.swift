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
                    Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
                    
                }
                
                ProgressBar(progress: triviaManager.progress)
                
                VStack(alignment: .leading, spacing: 20){
                    Text(triviaManager.question)
                        .font(.system(size: 20))
                        .padding()
                        .bold()
                        .foregroundColor(.gray)
                    
                    ForEach(triviaManager.answerChoices, id: \.id) {
                        answer in
                        AnswerRow(answer: answer)
                            .environmentObject(triviaManager)
                    }
                    
                }
                
                Button {
                    triviaManager.goToNextQuestion()
                } label: {
                    PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.5))
                }
                .disabled(!triviaManager.answerSelected)
                
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
