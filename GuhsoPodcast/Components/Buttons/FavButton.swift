//
//  FavButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct FavButton: View {
    @State private var isFav = false
    
    var body: some View {
        Button {
            //
            isFav.toggle()
        } label: {
            Image(systemName: isFav ? "heart.fill" : "heart")
                .font(.title2)
                .foregroundColor(Color("Brand"))
        }
        .padding(10)
        .background(Color("Accent1").opacity(0.2))
        .clipShape(Circle())

    }
}

struct FavButton_Previews: PreviewProvider {
    static var previews: some View {
        FavButton()
    }
}
