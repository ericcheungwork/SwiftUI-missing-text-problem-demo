//
//  SubtaskRowNextToCard.swift
//  CardDemo
//
//  Created by Eric Cheung on 9/7/2021.
//

import SwiftUI

struct SubtaskRowNextToCard: View {
    
    @ObservedObject var subtaskModel: SubtaskModel
    @EnvironmentObject var userData: UserData
    
    @State var scoreWithRound: String = ""
    
    var body: some View {
        
        Button(action: {
            userData.currentSubtask = subtaskModel
        }) {
            Text(scoreWithRound)
        }
        .onAppear {
            updateScore()
        }
        .onReceive(NotificationCenter.default.publisher(for: NSNotification.Name.init("changedCurrentSubtask"))) { obj in
            updateScore()
        }
        
    }
    
    func updateScore() {
        scoreWithRound = subtaskModel.score
    }
    
}

//struct SubtaskRowNextToCard_Previews: PreviewProvider {
//    static var previews: some View {
//        SubtaskRowNextToCard()
//    }
//}
