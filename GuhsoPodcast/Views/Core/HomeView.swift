//
//  HomeView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = EpisodeViewModel()
    @State var showSheet: Bool = false
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.red
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    // MARK: - Recent Episodes
                    RecentEpisodes()
                    
                    // MARK: - Category Section
                    CategoryView()
                    
                    // MARK: - Other episodes
                    VStack {
                        HStack {
                            Text("Other Episodes")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            NavigationLink(destination: { CategorySection()}) {
                                Text("See All")
                                    .font(.caption)
                                    .foregroundColor(Color.theme.brand)
                            }
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 10, content: {
                            
                            // Other Shows...
                            ForEach(0 ..< 6) { index in
                                GeometryReader { proxy in
                                    Rectangle()
                                        .fill(Color.black)
                                        .overlay{
                                            Text("Show Title Here")
                                                .foregroundColor(Color.theme.brand)
                                                .lineLimit(1)
                                        }
                                        .frame(width: proxy.frame(in: .global).width, height: 150)
                                    // based on the index number we are changing the corner style...
                                        .clipShape(CustomCorners(corners: index % 2 == 0 ? [.topLeft, .bottomLeft] : [.topRight, .bottomRight], radius: 15))
                                        .fullScreenCover(isPresented: $showSheet, content: { RemotePlayerSheet() })
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
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}

// MARK: -RecentEpisode Code
struct RecentEpisodes: View {
    @StateObject private var vm = EpisodeViewModel()
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
                ForEach(0 ..< 6) { item in
                    EpisodeCard(
                        title: ("Title Of Show"),
                        episodeNumber: ("1"),
                        hostName: ("Sean")
                    )
                    .fullScreenCover(isPresented: $showSheet, content: { RemotePlayerSheet() })
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
                    ForEach(0 ..< 8) { item in
                        CategoryButton()
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
