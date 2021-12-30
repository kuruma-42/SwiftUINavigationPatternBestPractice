//
//  FirstDetailView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

struct FirstDetailView: View {
    @EnvironmentObject var stateManager : StateManager
    let items : [String] = ["😍","😘","🥰","🙆‍♂️","👼", ]
    var body: some View {
        VStack(spacing: 30){
            List( items, id: \.self) { item in
                
                NavigationLink(tag: item, selection: $stateManager.selectedItem) {
                    EmojiView(item: item)
                } label: {
                    Text("\(item)")
                }
            }
            .navigationTitle("First Detail View")
            

        }
    }
}


struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView()
    }
}
