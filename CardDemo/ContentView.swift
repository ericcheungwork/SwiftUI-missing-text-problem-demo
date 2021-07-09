//
//  ContentView.swift
//  CardDemo
//
//  Created by Eric Cheung on 9/7/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {

        HStack {
            List {
                ForEach(userData.subtasks) { subtask in
                    SubtaskRowNextToCard(subtaskModel: subtask)
                }
            }
            
            if userData.currentSubtask != nil {
                SubtaskCard()
                    .padding(.all)
            }
        }
        .onAppear {
                        
            for _ in 0..<20 {
                appendASubtask()
            }
            
        }
        
    }
    
    func appendASubtask() {
        let aSubtask = SubtaskModel(
        score: ""
        )
        
        userData.subtasks.append(aSubtask)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
