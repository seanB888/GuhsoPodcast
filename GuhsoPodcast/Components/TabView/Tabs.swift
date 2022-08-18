//
//  Tabs.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct Tabs: View {
    @State private var selectedTab: Int = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(vm: EpisodeViewModel(), otherVM: OtherEpisodeViewModel(), episodes: Episodes.all, otherEpisodes: OtherEpisodes.otherEpisodes)
                .tabItem({TabLable(icon: "house", text: "Home")})
                .tag(1)
            
            CategorySection(episodes: Episodes.all, featured: FeaturedEpisodes.featuredEpisodes, exclusive: ExclusiveEpisodes.all)
                .badge(2)
                .tabItem({TabLable(icon: "rectangle.3.group", text: "Explore")})
                .tag(2)
            
            DirectoryView(vm: DirectoryViewModel(), directory: Directory.featured)
                .tabItem({TabLable(icon: "book.fill", text: "Directory")})
                .tag(3)
            
            ProfileView()
                .tabItem({TabLable(icon: "person", text: "Profile")})
                .tag(4)
        }
        .accentColor(Color.theme.brand)
    }
    
    struct TabLable: View {
        let icon: String
        let text: String
        
        var body: some View {
            HStack {
                Image(systemName: icon)
                Text(text)
            }
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
