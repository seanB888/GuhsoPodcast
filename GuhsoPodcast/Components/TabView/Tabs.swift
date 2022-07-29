//
//  Tabs.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            VStack {
                HomeView()
            }
            .tabItem({TabLable(icon: "house", text: "Home")})
            .tag(1)
            VStack {
                CategorySection()
            }
            .tabItem({TabLable(icon: "rectangle.3.group", text: "Explore")})
            .tag(2)
            VStack {
                DirectoryView()
            }
            .tabItem({TabLable(icon: "book.fill", text: "Directory")})
            .tag(3)
            VStack {
                ProfileView()
            }
            .tabItem({TabLable(icon: "person", text: "Profile")})
            .tag(4)
        }
        .accentColor(Color("Brand"))
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
