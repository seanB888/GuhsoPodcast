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
                .font(.title3)
                .foregroundColor(Color("Brand"))
        }

    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}
