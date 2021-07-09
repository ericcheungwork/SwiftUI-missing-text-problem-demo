//
//  UserData.swift
//  CardDemo
//
//  Created by Eric Cheung on 9/7/2021.
//

import Foundation
import SwiftUI

final class UserData: ObservableObject {
    @Published var subtasks: [SubtaskModel] = []
    @Published var currentSubtask: SubtaskModel?
}
