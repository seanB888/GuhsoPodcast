//
//  HomeView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct HomeView: View {
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
                    ExtractedCategoryView()
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
            
            TabView {
                ForEach(0 ..< 5) { item in
                    EpisodeCard()
                        .fullScreenCover(isPresented: $showSheet, content: { PlayerSheet() })
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

struct ExtractedCategoryView: View {
    
    let threeRows = [
        GridItem(.flexible(minimum: 40, maximum: 50)),
        GridItem(.flexible(minimum: 40, maximum: 50)),
        GridItem(.flexible(minimum: 40, maximum: 50))
    ]
    
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
            
            VStack {
                LazyHGrid(rows: threeRows) {
                    ForEach(0 ..< 12) { item in
                        CategoryButton()
                    }
                }
            }
        }
    }
}
