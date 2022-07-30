//
//  FavButton2.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct FavButton2: View {
    @State private var isFav = false
    @State var action: () -> Void
    
    var body: some View {
        Button {
            //
            isFav.toggle()
            action()
        } label: {
            Image(systemName: isFav ? "heart.fill" : "heart")
                .font(.title3)
                .foregroundColor(Color.theme.brand)
        }

    }
}

struct FavButton2_Previews: PreviewProvider {
    static var previews: some View {
        FavButton2(action: {})
    }
}
