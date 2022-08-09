//
//  EpisodeCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct EpisodeCard: View {
    @State var title: String
    @State var episodeNumber: String
    @State var hostName: String
    @State var coverImage: String
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                FavButton()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    
                    PlayButton(action: {})
                        .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.theme.brand)
                        
                        HStack {
                            Text("Episode:")
                            Text(episodeNumber)
                        }
                        .font(.callout)
                        
                        HStack {
                            // Text("Hosted by:")
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
            // Background Image...
            
            GeometryReader { proxy in
                AsyncImage(url: URL(string: coverImage)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
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
                .frame(width: proxy.frame(in: .global).width)
                .cornerRadius(20)
                .overlay(
                    LinearGradient(gradient: .init(colors: [Color.clear, Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
                        .cornerRadius(20)
                )
            }
            
        }
        .padding(.horizontal)
    }
}

struct EpisodeCard_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeCard(title: "Episode Title", episodeNumber: "1", hostName: "Host Name", coverImage: "")
    }
}
