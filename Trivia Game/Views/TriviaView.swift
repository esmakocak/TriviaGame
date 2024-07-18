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
        QuestionView()
            .environmentObject(triviaManager)
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
