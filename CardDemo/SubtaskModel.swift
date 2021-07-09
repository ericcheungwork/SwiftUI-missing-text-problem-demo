//
//  SubtaskModel.swift
//  CardDemo
//
//  Created by Eric Cheung on 9/7/2021.
//

import Foundation
import SwiftUI

class SubtaskModel: ObservableObject, Identifiable {
    @Published var score: String = ""
    
    init(
        score: String
    ) {
        self.score = score
    }
}
