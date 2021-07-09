//
//  SubtaskCard.swift
//  CardDemo
//
//  Created by Eric Cheung on 9/7/2021.
//

import SwiftUI

struct SubtaskCard: View {
    
    @EnvironmentObject var userData: UserData
        
    var body: some View {
        
        Button(action: {
            print("+ button was tapped")
            appendScore(newScore: "+")
        }) {
            Image(systemName: "plus.circle.fill")
        }
        .buttonStyle(PlainButtonStyle())
        
    }
    
    func appendScore(newScore: String) {
        if let subtaskModel = userData.currentSubtask {
            subtaskModel.score = subtaskModel.score + newScore + " "
                        
            NotificationCenter.default.post(name: NSNotification.Name.init("changedCurrentSubtask"), object: nil, userInfo: nil)
        }
    }
}

struct SubtaskCard_Previews: PreviewProvider {
    static var previews: some View {
        SubtaskCard()
    }
}
