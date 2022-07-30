//
//  PlayerSheet.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct PlayerSheet: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var progress = 0.75
    // Volume testing...
    @State var volume: CGFloat = 0.4
    
    var body: some View {
        VStack {
            // Close button
            HStack {
                IconButton(icon: "xmark.circle.fill", action: { self.presentationMode.wrappedValue.dismiss() })
            }
            .offset(x: 23, y: 40)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            VStack {
                Image("logoblack")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 330)
                VStack(alignment: .leading) {
                    Text("How To Study")
                        .font(.title)
                    
                    HStack {
                        Text("Hosted by:")
                        Text("Nadine")
                    }
                    .font(.caption)
                    
                    VStack {
                        HStack {
                            ProgressView(value: progress)
                                .accentColor(Color.theme.brand)
                            
                        }
                        HStack {
                            Text("0:00")
                                .font(.caption2)
                                .foregroundColor(Color.theme.brand)
                            Spacer()
                            Text("0:00")
                                .font(.caption2)
                                .foregroundColor(Color.theme.brand)
                            
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }
                .frame(maxHeight: .infinity, alignment: .bottomLeading)
                .padding(.horizontal, 25)
                .foregroundColor(Color.theme.brand)
                
            }
            
            VStack(alignment: .leading) {
                
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
            .background(Color("BG"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .ignoresSafeArea()
    }
}

struct PlayerSheet_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSheet()
            .previewInterfaceOrientation(.portrait)
    }
}

struct UIArea: View {
    var body: some View {
        HStack {
            Text("1x")
                .foregroundColor(Color.theme.brand)
            Spacer()
            FavButton2(action: {})
            Spacer()
            // Share button
            IconButton(icon: "ellipsis", action: {})
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 25)
        .padding(.vertical, 20)
    }
}

struct VolumeSection: View {
    @State var volumProgress = 0.75
    @State var volume: CGFloat = 0.4
    
    var body: some View {
        HStack {
            // Turn volume down
            IconButton(icon: "speaker.wave.1.fill", action: {
                // to decrease the volume...
                volume = volume - 0.1 > 0 ? volume - 0.1 : 0
            })
            Spacer()
            
            // Volume progress bar
            GeometryReader { proxy in
                let width = proxy.frame(in: .global).width
                let progress = width * volume
                
                ZStack(alignment: .leading) {
                    // background color...
                    Capsule()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 4)
                    // foreground color...
                    Capsule()
                        .fill(Color.theme.brand)
                        .frame(width: progress, height: 4)
                }
                .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .center)
            }
            .padding(.horizontal, getRec().width < 750 ? 15 : 20)
            
            // Turn Volume up
            IconButton(icon: "speaker.wave.3.fill", action: {
                // increase volume...
                volume = volume + 0.1 < 1.0 ? volume + 0.1 : 1
            })
        }
        .padding(.horizontal, 25)
        .frame(maxWidth: .infinity)
        .padding(.vertical, 15)
    }
}

struct PlayerControl: View {
    var body: some View {
        HStack {
            // Repeat button
            IconButton(icon: "repeat", action: {})
            Spacer()
            // Skip backwards 10 sec.
            IconButton(icon: "gobackward.10", action: {})
            Spacer()
            
            // Play button
            PlayButton(action: {})
            Spacer()
            
            // Skip foward 10 sec.
            IconButton(icon: "goforward.10", action: {})
            Spacer()
            
            // Stop button
            IconButton(icon: "stop.fill", action: {})
        }
        .padding(.horizontal, 25)
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
    }
}

struct CustomDivider: View {
    @State var size: CGFloat
    var body: some View {
        Capsule()
            .frame(height: size)
            .foregroundColor(Color.theme.accent)
            .padding(.horizontal, 25)
    }
}
