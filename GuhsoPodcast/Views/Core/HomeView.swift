//
//  HomeView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm: EpisodeViewModel
    @StateObject var otherVM: OtherEpisodeViewModel
    var episodes: [Episodes]
    var otherEpisodes: [OtherEpisodes]
    @State var showSheet: Bool = false
    
    var body: some View {
            VStack {
                ScrollView(showsIndicators: false) {
                    // MARK: - Recent Episodes
                    RecentEpisodes(episodes: Episodes.recentEpisodes)
                        
                    
                    // MARK: - Category Section
                    CategoryView(episodes: Episodes.all)
                    
                    // MARK: - Other episodes
                    VStack {
                        HStack {
                            Text("Other Episodes")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            NavigationLink(destination: { CategorySection(episodes: Episodes.all, featured: FeaturedEpisodes.featuredEpisodes, exclusive: ExclusiveEpisodes.all)}) {
                                Text("See All")
                                    .font(.caption)
                                    .foregroundColor(Color.theme.brand)
                            }
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // LazyGrid view...
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 10, content: {
                            
                            // Other Shows...
                            ForEach(otherEpisodes) { index in
                                AsyncImage(url: URL(string: index.album_cover)) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 150)
                                        .cornerRadius(10)
                                        .overlay(
                                            Text(index.title)
                                                .fontWeight(.bold)
                                                .lineLimit(1)
                                                .foregroundColor(Color.theme.brand)
                                                .offset(y: 30)
                                                .padding(.horizontal)
                                        )
                                } placeholder: {
                                    Rectangle()
                                        .fill(Color.black)
                                        .overlay{
                                            Text(index.title)
                                                .foregroundColor(Color.theme.brand)
                                                .lineLimit(1)
                                                .padding(.horizontal, 25)
                                        }
                                }
                                .frame(height: 150)
                                .cornerRadius(10)
                                .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet() })
                                .onTapGesture {
                                    self.showSheet = true
                                }
                            }
                        })
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                    .padding(.top)
                }
            }
            .navigationTitle("Guhso")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BG"))
            
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(vm: EpisodeViewModel(), otherVM: OtherEpisodeViewModel(), episodes: Episodes.all, otherEpisodes: OtherEpisodes.otherEpisodes, showSheet: false)
            .previewInterfaceOrientation(.portrait)
    }
}
