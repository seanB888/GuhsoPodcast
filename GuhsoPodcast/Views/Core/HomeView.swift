//
//  HomeView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var authentication = Authentication()
    var episodes: [Episodes]
    @EnvironmentObject var episodeVM: EpisodeViewModel
    @StateObject private var vm = EpisodeViewModel()
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    // MARK: - Recent Episodes
                    RecentEpisodes(episodes: Episodes.featureEpisodes)
                    
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
                            NavigationLink(destination: { CategorySection(episodes: Episodes.all)}) {
                                Text("See All")
                                    .font(.caption)
                                    .foregroundColor(Color.theme.brand)
                            }
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 10, content: {
                            
                            // Other Shows...
                            ForEach(episodes) { index in
                                GeometryReader { proxy in
                                    
                                    AsyncImage(url: URL(string: index.album_cover)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
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
                                    .frame(width: proxy.frame(in: .global).width, height: 150)
                                    // based on the index number we are changing the corner style...
//                                    .clipShape(CustomCorners(corners: index % 2 == 0 ? [.topLeft, .bottomLeft] : [.topRight, .bottomRight], radius: 15))
                                    //.fullScreenCover(isPresented: $showSheet, content: { RemotePlayerSheet() })
                                    .onTapGesture {
                                        self.showSheet = true
                                    }
                                }
                                .frame(height: 150)
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
            // MARK: -ToolBar Section
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    SettingsButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    CartButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    ProfileButton()
                    if authentication.isValidated {
                        ProfileView()
                        .environmentObject(authentication)
                    } else {
                        LoginView()
                            .environmentObject(authentication)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(episodes: Episodes.all)
            .previewInterfaceOrientation(.portrait)
    }
}

// MARK: -RecentEpisode Code
struct RecentEpisodes: View {
    var episodes: [Episodes]
    @EnvironmentObject var episodeVM: EpisodeViewModel
    
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
                    //.fullScreenCover(isPresented: $showSheet, content: { RemotePlayerSheet() })
                    .onTapGesture {
                        self.showSheet = true
                    }
                    
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 415)
        }
    }
}

struct CategoryView: View {
    var episodes: [Episodes]
    @EnvironmentObject var episodeVM: EpisodeViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Tags of categories
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(episodes) { item in
                        CategoryButton(categoryTitle: item.category)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
