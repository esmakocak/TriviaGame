//
//  Extensions.swift
//  Trivia Game
//
//  Created by Esma Koçak on 18.07.2024.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
