//
//  MainView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Text("Guhso Store")
                .font(.largeTitle)
            .foregroundColor(Color("Brand"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
