//
//  EmojiView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

struct EmojiView: View {
    @Environment(\.presentationMode) var presentaionMode
    @EnvironmentObject var stateManager : StateManager
    
    
    let item: String
    var body: some View {
        
        VStack(spacing: 30 ){
            Text(item)
                .font(.system(size: 120))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.pink)
            
            Button {
                stateManager.firstDetailIsShown = false
            } label: {
                Text("go back to root")
            }

            Button {
                stateManager.selectedItem = nil
            } label: {
                Text("go one step back")
            }
        }
    
    }
}

//struct EmojiView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmojiView(item: "🙇")
//    }
//}
