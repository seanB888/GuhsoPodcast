//
//  EpisodeSheet.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/31/22.
//

import SwiftUI

struct EpisodeSheet: View {
    @Environment (\.presentationMode) var presentationMode
    @State var volume: CGFloat = 0.75
    @State private var value: Double = 0.0
    var episodes: Episodes
    
    var body: some View {
        VStack {
            // MARK: - Close Button
            HStack {
                Button {
                    // TODO: dismiss action
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.theme.brand)
                        .font(.system(size: 32))
                        .padding()
                }
                
            }
            .padding(.top, 40)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: - Albumn Art
            VStack {
                AsyncImage(url: URL(string: episodes.album_cover)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Rectangle()
                        .frame(width: 350, height: 350)
                        .cornerRadius(25)
                        .overlay {
                            Image("logoorange")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250)
                                .offset(y: -35)
                            
                            VStack(alignment: .leading) {
                                Text("How To Study")
                                    .lineLimit(1)
                                    .font(.title)
                                
                                HStack {
                                    Text("Hosted by:")
                                    Text("Nadine")
                                }
                                .font(.caption)
                            }
                            .frame(width: 350, height: 350)
                            .cornerRadius(30)
                            
                            // For testing layout..
                            VStack {
                                // MARK: - Play back timeline...
                                VStack(spacing: 5) {
                                    // timeline...
                                    Slider(value: $value, in: 0...60)
                                        .accentColor(Color.theme.brand)
                                    
                                    
                                    
                                    HStack {
                                        // current time...
                                        Text("0:00")
                                            .font(.caption2)
                                            .foregroundColor(Color.theme.brand)
                                        Spacer()
                                        // remaining time...
                                        Text("1:00")
                                            .font(.caption2)
                                            .foregroundColor(Color.theme.brand)
                                    }
                                }
                            }
                            .padding(.top, 5)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        .padding(.horizontal, 25)
                        .foregroundColor(Color.theme.brand)
                        .padding(.bottom)
                }
            .padding()
            }
            .padding(.horizontal, 20)
            
            
            // MARK: - Slider
            VStack {
                VStack {
                    
                    VStack(alignment: .leading) {
                        
                        // Player control section
                        PlayerControl()
                            .padding(.top)
                        
                        // Volume section
                        VolumeSection()
                            .padding(.top)
                        
                        // User interaction Area
                        UIArea()
                            .padding(.top)
                        
                        
                    }
                    .background(Color("BG"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.top, -5)
                }
            }
            .padding(.bottom)
            .frame(maxWidth: .infinity)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color.theme.background)
    }
}

struct EpisodeSheet_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeSheet(episodes: Episodes.all[0])
    }
}
