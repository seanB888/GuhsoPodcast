//
//  RecentShowCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct RecentShowCard: View {
    @State var textHere: String
    @State var image: String
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 180)
                    .overlay(
                        VStack(alignment: .leading) {
                            HStack(alignment: .bottom) {
                                VStack(alignment: .leading) {
                                    Text(textHere)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .lineLimit(1)
                                }
                                .foregroundColor(Color.theme.brand)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 20)
                            .padding(.horizontal, 25)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    )
            } placeholder: {
                VStack(alignment: .leading) {
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading) {
                            Text("Guhso")
                                .font(.title3)
                                .fontWeight(.bold)
                                .lineLimit(1)
                        }
                        .foregroundColor(Color.theme.brand)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 25)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
        }
        .frame(height: 180)
        .background{
            Rectangle()
                .fill(Color.black)
        }
        .padding(.horizontal)
    }
}

struct RecentShowCard_Previews: PreviewProvider {
    static var previews: some View {
        RecentShowCard(textHere: "Hello", image: "")
    }
}
