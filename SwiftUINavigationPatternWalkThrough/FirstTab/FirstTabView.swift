//
//  FirstTabView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

struct FirstTabView: View {
//    @State private var isDetailViewActive : Bool = false
    @EnvironmentObject var stateManager : StateManager
    
    var body: some View {
        NavigationView{
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
}

//struct FirstTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        FirstTabView()
//    }
//}
