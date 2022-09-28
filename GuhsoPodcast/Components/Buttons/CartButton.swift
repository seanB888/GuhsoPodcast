//
//  CartButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CartButton: View {
    var count: Int
    
    var body: some View {
        NavigationLink(destination: { MainView() }) {
            ZStack(alignment: .topTrailing) {
                Image(systemName: "tshirt")
                    .badge(2)
                    .font(.title3)
                .foregroundColor(Color.theme.brand)
                
            // Custom badge...
            if count > 0 {
                Text("\(count)")
                    .font(.caption.bold())
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .padding(2)
                    .background(.red)
                    .clipShape(Circle())
                    .offset(x: 0,y: -5)
            }
            }
        }

    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(count: 2)
    }
}
