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
            
            // Volume section
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
            .padding(.vertical)
            
            // User interaction Area
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
