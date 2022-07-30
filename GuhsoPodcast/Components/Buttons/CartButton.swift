//
//  CartButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CartButton: View {
    
    var body: some View {
        NavigationLink(destination: { MainView() }) {
            Image(systemName: "tshirt")
                .badge(2)
                .font(.title3)
                .foregroundColor(Color.theme.brand)
        }

    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}
