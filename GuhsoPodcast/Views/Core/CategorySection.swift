//
//  CategoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CategorySection: View {
    @EnvironmentObject var episodeVM: EpisodeViewModel
    @State private var showSheet = false
    
    var episodes: [Episodes]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
//                        IconButton(icon: "chevron.left", action: {})
//                            .padding(.bottom, 5)
                        
                        Text("Browse")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.theme.brand)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 25)
                
                CustomDivider(size: 0.5)
                
                // MARK: - Recent Shows...
                
                ShowTitles(action: {}, title: "Recent Shows", subTitle: "Season 2")
                
                VStack {
                    TabView {
                        ForEach(episodes) { item in
                            RecentShowCard(textHere: item.title)
//                                .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet( episodes: Episodes.featureEpisodes) })
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
                
                // MARK: - Premium listening...
                VStack {
                    
                    ShowTitles(action: {}, title: "Premium Listening", subTitle: "Exclusive Content")
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 15) {
                            ForEach(episodes) { item in
                                SmallCard(title: item.title)
                                    // .fullScreenCover(isPresented: $showSheet, content: { })
                                    .onTapGesture {
                                        showSheet = true
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                
                CustomDivider(size: 0.5)
                
                // MARK: - Episode listening...
                VStack {
                    ShowTitles(action: {}, title: "Episodes", subTitle: "")
                    
                    // List section...
                    VStack(spacing: 30) {
                        ForEach(episodes) { item in
                            EpisodeRow(title: item.title, episode: item.epispode, datePublished: item.datePublished)
                                // .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet() })
                                .onTapGesture {
                                    showSheet = true
                                }
                        }
                    }
                }
                
                
            }
            .padding(.bottom, 50)
            .padding(.top, 50)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.theme.background)
        }
        .ignoresSafeArea()
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySection(episodes: Episodes.all)
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
