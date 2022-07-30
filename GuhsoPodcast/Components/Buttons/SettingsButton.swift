//
//  SettingsButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct SettingsButton: View {
    var body: some View {
        NavigationLink (destination: { SettingsView() }) {
            Image(systemName: "ellipsis")
                .foregroundColor(Color.theme.brand)
                .font(.title3)
                .rotationEffect(.degrees(90))
            
        }
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton()
    }
}
