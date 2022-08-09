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
            HomeView(episodes: Episodes.all)
                .tabItem({TabLable(icon: "house", text: "Home")})
                .tag(1)
            
            CategorySection(episodes: Episodes.all)
                .badge(2)
                .tabItem({TabLable(icon: "rectangle.3.group", text: "Explore")})
                .tag(2)
            
            DirectoryView()
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
