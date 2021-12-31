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
        
        
        if UIDevice.current.userInterfaceIdiom == .phone {
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
        } else {
            // IPad Or Other Device 
            NavigationView{
                List{
                    NavigationLink(tag: 1, selection: $stateManager.selectedListItem) {
                        FirstBodyView()
                    } label: {
                        Text("First")
                    }

                    
                    NavigationLink(tag: 2, selection: $stateManager.selectedListItem) {
                        SecondTabView()
                    } label: {
                        Text("Second")
                    }
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
