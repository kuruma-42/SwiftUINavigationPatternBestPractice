//
//  SecondTabView.swift
//  SwiftUINavigationPatternWalkThrough
//
//  Created by Yong Jun Cha on 2021/12/30.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var isPresentingOverlay : Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("SecondTabView")
                
                Button {
                    isPresentingOverlay.toggle()
                } label: {
                    Text("show overlay")
                }

            }
        }
        .fullScreenCover(isPresented: $isPresentingOverlay) {
            print("Presenting Over ")
        } content: {
            
            VStack{
                Text("Show")
                Button(action: {
                    isPresentingOverlay.toggle()
                }, label: {
                    Text("Done")
                })
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow)
        }


    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
