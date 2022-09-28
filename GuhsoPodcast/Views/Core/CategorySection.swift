//
//  CategoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CategorySection: View {
    var episodes: [Episodes]
    var featured: [FeaturedEpisodes]
    var exclusive: [ExclusiveEpisodes]
    
    @EnvironmentObject var episodeVM: EpisodeViewModel
    @EnvironmentObject var featuredEpisodeVM: FeaturedEpisodeViewModel
    @EnvironmentObject var exclusiveEpisodesVM: ExclusiveEpisodesViewModel
    @State private var showSheet = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    // MARK: - Top section
                    VStack(alignment: .leading) {
                        
                        Text("Browse")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.theme.brand)
                    }
                    
                }
                .padding(.top, 45)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 25)
                
                // Divider...
                CustomDivider(size: 0.5)
                
                // MARK: - Recent Shows...
                // ShowTitles(action: {}, title: "Recent Shows", subTitle: "Season 2")
                VStack {
                    TabView {
                        ForEach(featured) { item in
                            RecentShowCard(textHere: item.title, image: item.album_cover)
                                .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet(episodes: Episodes.all[0]) })
                                .onTapGesture {
                                    self.showSheet = true
                                }
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height: 180)
                }
                .padding(.bottom)
                
                CustomDivider(size: 0.5)
                
                // MARK: - Premium listening/ Exclusive Episodes...
                VStack(alignment: .leading, spacing: 20) {
                    Text("Premium Listening")
                        .font(.title3.bold())
                        .foregroundColor(Color.theme.brand)
                        .padding(.horizontal, 25)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(exclusive) { item in
                                SmallCard(title: item.title, image: item.album_cover)
                                    .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet(episodes: Episodes.all[0]) })
                                    .onTapGesture {
                                        self.showSheet = true
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom)
                
                CustomDivider(size: 0.5)
                
                // MARK: - Episode listening...
                VStack {
                    // ShowTitles(action: {}, title: "Episodes", subTitle: "")
                    
                    // List section...
                    VStack(spacing: 30) {
                        ForEach(episodes) { item in
                            EpisodeRow(title: item.title, season: item.season, episode: item.epispode, datePublished: item.datePublished, image: item.album_cover)
                                .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet(episodes: Episodes.all[0]) })
                                .onTapGesture {
                                    showSheet = true
                                }
                        }
                    }
                }
                .padding(.top, 20)
                
                
            }
            .padding(.bottom, 50)
            .padding(.top, 50)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.theme.background)
        }
        .ignoresSafeArea()
    }
}

struct CategorySection_Previews: PreviewProvider {
    static var previews: some View {
        CategorySection(episodes: Episodes.all, featured: FeaturedEpisodes.featuredEpisodes, exclusive: ExclusiveEpisodes.all)
    }
}

//struct ShowTitles: View {
//    @State var action: () -> Void
//    @State var title: String
//    @State var subTitle: String
//    
//    var body: some View {
//        HStack {
//            VStack(alignment: .leading)  {
//                Text(title)
//                    .fontWeight(.bold)
//                
//                Text(subTitle)
//                    .font(.callout)
//                    .foregroundColor(Color.theme.accent)
//            }
//            .foregroundColor(Color.theme.brand)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.horizontal, 25)
//            
//            Spacer()
//            Button {
//                //
//                action()
//            } label: {
//                Text("See All")
//                    .font(.caption)
//                    .foregroundColor(Color.theme.brand)
//            }
//        }
//        .padding(.trailing)
//    }
//}
