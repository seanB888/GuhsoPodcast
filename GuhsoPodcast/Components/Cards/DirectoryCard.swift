//
//  DirectoryCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/30/22.
//

import SwiftUI

struct DirectoryCard: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Caribbean Foods. Come Eat with us.")
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
                .fill(Color.black)
        }
        .padding(.horizontal)
    }
}

struct DirectoryCard_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryCard()
    }
}
