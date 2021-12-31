//
//  FirstBodyView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/31.
//

import SwiftUI

struct FirstBodyView: View {
    @EnvironmentObject var stateManager : StateManager
    
    var body: some View {
        VStack{
            Text("FirstTabView")
            NavigationLink(isActive: $stateManager.firstDetailIsShown) {
                FirstDetailView()
            } label: {
                Text("go")
            }
        }
    }
}

struct FirstBodyView_Previews: PreviewProvider {
    static var previews: some View {
        FirstBodyView()
    }
}
