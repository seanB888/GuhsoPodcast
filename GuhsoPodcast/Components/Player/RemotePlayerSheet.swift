//
//  RemotePlayerSheet.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/4/22.
//

import SwiftUI

struct RemotePlayerSheet: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 20) {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HStack {
                        Button {
                            //
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.theme.brand)
                        }
                        .padding(.horizontal)
                        .padding(.top, 25)
//                        IconButton(icon: "xmark.circle.fill", action: {
//                            presentationMode.wrappedValue.dismiss()
//                        })
//                        .padding(.horizontal)
//                        .padding()
                    }
                    
                    ImageCard(title: "Shotta Culture", episodeNumber: "1", hostName: "Sean")
                        .padding()
                    
                    // Player control section
                    PlayerControl()
                    
                    // Volume section
                    VolumeSection()
                    
                    // User interaction Area
                    UIArea()
                    
                    CustomDivider(size: 1)
                    
                    // Description
                    HStack {
                        Text("Episode Notes")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.theme.brand)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 25)
                    
                    CustomDivider(size: 0.5)
                    
                    // Description text
                    VStack {
                        ScrollView(showsIndicators: false) {
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                                .foregroundColor(Color.theme.accent)
                                .font(.body)
                        }
                    }
                    .padding(.horizontal, 25)
                }
                .padding(.top)
                
            }
            .background(Color("BG"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        }
    }
}

struct RemotePlayerSheet_Previews: PreviewProvider {
    static var previews: some View {
        RemotePlayerSheet()
    }
}
