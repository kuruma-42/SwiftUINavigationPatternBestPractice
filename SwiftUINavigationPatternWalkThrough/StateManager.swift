//
//  StateManager.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import Foundation
import Combine

class StateManager: ObservableObject {
    
    @Published var selection: Int = 1
    @Published var selectedListItem: Int? = 1
    @Published var firstDetailIsShown : Bool = false
    @Published var selectedItem : String? = ""
    
    var subscription = Set<AnyCancellable>()
    
    init() {
        $firstDetailIsShown
            .filter({ !$0 })
            .removeDuplicates()
            .sink { [unowned self] value in
                self.selectedItem = nil
            }
            .store(in: &subscription)
    }
    
    func goToFirstRootView() {
        selectedItem = nil
        firstDetailIsShown = false
    }
}
