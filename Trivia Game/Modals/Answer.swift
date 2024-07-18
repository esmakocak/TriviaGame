//
//  Answer.swift
//  Trivia Game
//
//  Created by Esma Koçak on 18.07.2024.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
    
}
