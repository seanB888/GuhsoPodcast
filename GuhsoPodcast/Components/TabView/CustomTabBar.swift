//
//  CustomTabBar.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/21/22.
//

import SwiftUI

struct CustomTabBar: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer()
                // Link to views here...
                switch viewRouter.currentPage {
                case .home:
                    HomeView(vm: EpisodeViewModel(), otherVM: OtherEpisodeViewModel(), episodes: Episodes.all, otherEpisodes: OtherEpisodes.otherEpisodes)
                case .explore:
                    CategorySection(episodes: Episodes.all, featured: FeaturedEpisodes.featuredEpisodes, exclusive: ExclusiveEpisodes.all)
                case .directory:
                    DirectoryView(vm: DirectoryViewModel(), directory: Directory.featured)
                case .profile:
                    ProfileView()
                }
                Spacer()
                HStack {
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: proxy.size.width/5, height: proxy.size.height/45, icon: "house.fill", tabName: "Home")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .explore, width: proxy.size.width/5, height: proxy.size.height/45, icon: "rectangle.3.group.fill", tabName: "Explore")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .directory, width: proxy.size.width/5, height: proxy.size.height/45, icon: "book.fill", tabName: "Dictionary")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .profile, width: proxy.size.width/5, height: proxy.size.height/45, icon: "person.fill", tabName: "Profile")
                }
                .frame(width: proxy.size.width, height: proxy.size.height/10)
                .foregroundColor(Color.theme.brand)
                .shadow(radius: 2)
                .background(Color.theme.background)
                
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(viewRouter: ViewRouter())
    }
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: ViewRouter.PageView
    
    let width, height: CGFloat
    let icon, tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 15)
                
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color.theme.brand : Color.theme.accent.opacity(0.4))
        .padding(.horizontal, 4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
    }
}
