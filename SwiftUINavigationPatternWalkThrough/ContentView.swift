//
//  ContentView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

struct ContentView: View {
    // State Driven
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        
        TabView(selection: $stateManager.selection){
            
            FirstTabView()
                .tabItem {
                    Text("First")
                }
                .tag(1)
            
            SecondTabView()
                .tabItem {
                    Text("Second")
                }
                .tag(2)
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
