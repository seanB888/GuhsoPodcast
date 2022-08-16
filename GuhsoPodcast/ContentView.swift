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
            Tabs()
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
            .background(.red)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
