//
//  ContentView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 1
    var body: some View {
        Tabs()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
