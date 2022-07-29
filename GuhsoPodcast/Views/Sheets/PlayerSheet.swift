//
//  PlayerSheet.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct PlayerSheet: View {
    var body: some View {
        VStack {
            Text("Player")
                .font(.largeTitle)
            .foregroundColor(Color("Brand"))
            
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
                    .foregroundColor(Color("Brand"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            CustomDivider(size: 0.1)
            // Description Text
            VStack {
                ScrollView(showsIndicators: false) {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .foregroundColor(Color("Accent1"))
                        .font(.body)
                }
            }
            .padding(.horizontal, 25)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
    }
}

struct PlayerSheet_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSheet()
    }
}

struct UIArea: View {
    var body: some View {
        HStack {
            Text("1x")
                .foregroundColor(Color("Brand"))
            Spacer()
            FavButton()
            Spacer()
            // Share button
            IconButton(icon: "ellipsis", action: {})
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 25)
    }
}

struct VolumeSection: View {
    var body: some View {
        HStack {
            // Turn volume down
            IconButton(icon: "speaker.fill", action: {})
            Spacer()
            
            // Volume progress bar
            
            // Turn Volume up
            IconButton(icon: "speaker.wave.3.fill", action: {})
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
            PlayButton()
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
            .foregroundColor(Color("Accent1"))
            .padding(.horizontal, 25)
    }
}
