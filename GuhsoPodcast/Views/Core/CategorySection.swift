//
//  CategoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CategorySection: View {
    @State var showSheet = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        IconButton(icon: "chevron.left", action: {})
                            .padding(.bottom, 5)
                        
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
                        ForEach(0 ..< 3) { item in
                            RecentShowCard()
                                .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet() })
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
                            ForEach(0 ..< 5) { item in
                                SmallCard()
                                    .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet() })
                                    .onTapGesture {
                                        self.showSheet = true
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
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            EpisodeRow()
                                .fullScreenCover(isPresented: $showSheet, content: { EpisodeSheet() })
                                .onTapGesture {
                                    self.showSheet = true
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
        CategorySection()
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
