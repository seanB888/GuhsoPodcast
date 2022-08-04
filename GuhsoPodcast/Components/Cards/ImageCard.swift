//
//  ImageCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/4/22.
//

import SwiftUI

struct ImageCard: View {
    @State var title: String
    @State var episodeNumber: String
    @State var hostName: String
    
    var body: some View {
        VStack {
            // Favorite button
            HStack {
                Spacer()
                FavButton()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
//
//                    PlayButton(action: {})
//                        .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        HStack {
                            Text("Episode:")
                            Text(episodeNumber)
                        }
                        .font(.callout)
                        
                        HStack {
                            Text("Hosted by:")
                            Text(hostName)
                        }
                        .font(.footnote)
                    }
                    .foregroundColor(Color("Accent1"))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
                .padding(.horizontal, 25)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .frame(height: 350)
        .background{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.black)
                .overlay {
                    Image("logoorange")
                        .resizable()
                        .frame(width: 220, height: 190)
                        .aspectRatio(contentMode: .fill)
                        .offset(y: -20)
                }
        }
        .padding(.horizontal)
    }
}

struct ImageCard_Previews: PreviewProvider {
    static var previews: some View {
        ImageCard(title: "Episode title", episodeNumber: "2", hostName: "Julia & Sean")
    }
}
