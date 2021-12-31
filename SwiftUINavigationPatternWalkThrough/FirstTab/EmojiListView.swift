//
//  EmojiListView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/31.
//

import SwiftUI

struct EmojiListView: View {
    let items : [String] = ["😍","😘","🥰","🙆‍♂️","👼", ]
    @Binding var selectedEmoji: String?
    
    var body: some View {
        VStack(spacing: 30){
            List( items, id: \.self) { item in
                
                NavigationLink(tag: item, selection: $selectedEmoji) {
                    EmojiView(item: item)
                } label: {
                    Text("\(item)")
                }
            }
            .navigationTitle("First Detail View")
            
            
        }
    }
}

//struct EmojiListView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmojiListView()
//    }
//}
