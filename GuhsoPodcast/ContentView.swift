//
//  ContentView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            // Tabs()
            CustomTabBar(viewRouter: ViewRouter())
                .navigationTitle("Guhso")
            // MARK: -ToolBar Section
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    SettingsButton()
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack {
                        CartButton()
                        ProfileButton()
                    }
                }
            }
            .background(Color.theme.background)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
