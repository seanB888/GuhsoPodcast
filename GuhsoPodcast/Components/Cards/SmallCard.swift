//
//  SmallCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct SmallCard: View {
    @State var title: String
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 180, height: 210)
                .cornerRadius(25)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title3.bold())
                    .foregroundColor(Color.theme.brand)
                
                Text("Exclusive Content")
                    .font(.caption)
                    .foregroundColor(Color.theme.accent)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        }
        .frame(maxWidth: 180)
    }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard(title: "Meditation")
    }
}
