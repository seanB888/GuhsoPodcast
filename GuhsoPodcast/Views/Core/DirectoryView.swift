//
//  DirectoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct DirectoryView: View {
    @State private var showSheet: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        IconButton(icon: "chevron.left", action: {})
                            .padding(.bottom, 5)
                        
                        Text("Directory")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.theme.brand)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 25)
                
                CustomDivider(size: 0.5)
                
                // MARK: - Recent Shows...
                
                HStack {
                    Text("Upcoming Events")
                        .font(.title3)
                    Image(systemName: "location.fill")
                }
                .foregroundColor(Color.theme.brand)
                
                VStack {
                    TabView {
                        ForEach(0 ..< 3) { item in
                            RecentShowCard(textHere: "Show Title Here")
                                .fullScreenCover(isPresented: $showSheet, content: { DirectorySheet() })
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
                                SmallCard(title: "Eat Out Again")
                                    .fullScreenCover(isPresented: $showSheet, content: { DirectorySheet() })
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
                        ForEach(0 ..< 10) { item in
                            EpisodeRow(title: "Dance Hall Music", episode: 12, datePublished: "2022-10-10")
                                .fullScreenCover(isPresented: $showSheet, content: { DirectorySheet() })
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

struct DirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryView()
    }
}

struct ShowTitles: View {
    @State var action: () -> Void
    @State var title: String
    @State var subTitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading)  {
                Text(title)
                    .fontWeight(.bold)
                
                Text(subTitle)
                    .font(.callout)
                    .foregroundColor(Color.theme.accent)
            }
            .foregroundColor(Color.theme.brand)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer()
            Button {
                //
                action()
            } label: {
                Text("See All")
                    .font(.caption)
                    .foregroundColor(Color.theme.brand)
            }
        }
        .padding(.trailing)
    }
}
