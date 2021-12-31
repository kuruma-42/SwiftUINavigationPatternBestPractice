//
//  FirstDetailView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

struct FirstDetailView: View {
    @EnvironmentObject var stateManager : StateManager
    var body: some View {
        VStack(spacing: 30){
           
            EmojiListView(selectedEmoji: $stateManager.selectedItem)

        }
    }
}


struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView()
    }
}
