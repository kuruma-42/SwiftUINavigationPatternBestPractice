//
//  SwiftUINavigationPatternWalkThroughApp.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

@main
struct SwiftUINavigationPatternWalkThroughApp: App {
    @StateObject var stateManager = StateManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
