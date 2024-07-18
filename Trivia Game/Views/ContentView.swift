//
//  ContentView.swift
//  Trivia Game
//
//  Created by Esma Koçak on 17.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
