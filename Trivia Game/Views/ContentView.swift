//
//  ContentView.swift
//  Trivia Game
//
//  Created by Esma Koçak on 17.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                    Image("flowers")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    VStack(spacing: 40) {
                        VStack(spacing: 20) {
                            Text("Art Quiz")
                                .lilacTitle()
                            Text("Are you ready to test out \n your knowledge at art?")
                                .foregroundColor(Color("AccentColor"))
                                .padding()
                            
                            NavigationLink(destination: TriviaView()) {  PrimaryButton(text: "Play")}
                        
                            
                        }
                        .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 20)      .fill(Color("backgroundColor"))
                                    .blur(radius: 1)
                                    .frame(width: 280, height: 260)
                                
                            )
                            
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
