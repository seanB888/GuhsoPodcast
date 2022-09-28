//
//  RecentEpisodes.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/14/22.
//

import SwiftUI

struct RecentEpisodes: View {
    var episodes: [Episodes]
    @State var showSheet = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Recent Episodes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            .padding(.top)
            .padding(.bottom, -20)
            
            TabView {
                ForEach(episodes) { item in
                    EpisodeCard(
                        title: (item.title),
                        episodeNumber: ("\(item.epispode)"),
                        hostName: (item.datePublished),
                        coverImage: item.album_cover
                    )
                    // EpisodeSheet(episodes: Episodes.all[0])
                    .fullScreenCover(isPresented: $showSheet, content: { Player() })
                    .onTapGesture {
                        showSheet = true
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 415)
        }
    }
}

struct RecentEpisodes_Previews: PreviewProvider {
    static var previews: some View {
        RecentEpisodes(episodes: Episodes.all)
    }
}
