//
//  PrimaryButton.swift
//  Trivia Game
//
//  Created by Esma Koçak on 18.07.2024.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(color: .white, radius: 10)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
