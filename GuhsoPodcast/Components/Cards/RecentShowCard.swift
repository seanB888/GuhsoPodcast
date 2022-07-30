//
//  RecentShowCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct RecentShowCard: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("What Our Caribbean parents Never Taught Us.")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color.theme.brand)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
                .padding(.horizontal, 25)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .frame(height: 180)
        .background{
            Rectangle()
        }
        .padding(.horizontal)
    }
}

struct RecentShowCard_Previews: PreviewProvider {
    static var previews: some View {
        RecentShowCard()
    }
}
