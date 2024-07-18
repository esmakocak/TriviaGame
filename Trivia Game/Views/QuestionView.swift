//
//  QuestionView.swift
//  Trivia Game
//
//  Created by Esma Koçak on 18.07.2024.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 40){
                HStack{
                    Text("Art Quiz")
                        .lilacTitle()
                    Spacer()
                    Text("1 out of 10")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
                }
                
                ProgressBar(progress: 40)
                
                VStack(alignment: .leading, spacing: 20){
                    Text("What nationality was the surrealist painter Salvador Dali?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                }
                
            }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}

#Preview {
    QuestionView()
}
