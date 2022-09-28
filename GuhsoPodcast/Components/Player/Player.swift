//
//  Player.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 9/3/22.
//

import SwiftUI

struct Player: View {
    @Environment(\.presentationMode) var closeOut
    @State private var addFav = false
    @State private var playing = false
    @State private var playerProgress: CGFloat = 20
    @State var volumProgress = 0.75
    @State var volume: CGFloat = 0.4
    
    var body: some View {
        VStack {
            // Top section...
            HStack {
                // close out button...
                Button {
                    closeOut.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "x.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.theme.brand)
                }

                Spacer()
                
                // Share button...
                IconButton(icon: "square.and.arrow.up", action: {})
            }
            .padding(.horizontal, 45)
            
            // Cover art
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 400, height: 300)
                    .padding(.top)
                    .padding(.bottom)
                
                // Player progress...
                VStack {
                    Slider(value: $playerProgress)
                        .accentColor(Color.theme.brand)
                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("30:00")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .font(.caption)
                .foregroundColor(Color.theme.brand)
                .padding(.horizontal, 30)
                .padding(.bottom, 25)
            }
            .frame(width: 400, height: 300)
            
            // Title & favorite button
            HStack {
                VStack(alignment: .leading, spacing: 3) {
                    Text("Season 2")
                        .foregroundColor(Color.theme.accent)
                    Text("Show Title")
                        .font(.title.bold())
                        .foregroundColor(Color.theme.brand)
                    Text("Episode 10")
                        .foregroundColor(Color.theme.accent)
                }
                Spacer()
                HStack {
                    FavButton()
                    //IconButton(icon: addFav ? "heart.fill" : "heart", action: { addFav.toggle() })
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            // Counter...
            HStack {
                Text("00:00")
                    .font(.title)
                    .foregroundColor(Color.theme.brand)
                
                Text("/ 3:05")
                    .font(.title2)
                    .foregroundColor(Color.theme.accent)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 25)
            .padding(.top, 5)
            
            // Player controls...
            HStack {
                Spacer()
                // go backward 10 secs.
                Button {
                    //
                } label: {
                    Image(systemName: "gobackward.10")
                        .font(.largeTitle)
                }
                Spacer()
                // play.
                Button {
                    //
                    playing.toggle()
                } label: {
                    Image(systemName: playing ? "pause.circle.fill" : "play.circle.fill")
                        .font(.system(size: 65))
                }
                Spacer()
                // go forward 10 secs.
                Button {
                    //
                } label: {
                    Image(systemName: "goforward.15")
                        .font(.largeTitle)
                }
                Spacer()
            }
            .foregroundColor(Color.theme.brand)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 45)
            .padding(.top, 5)
            
            // Functions
            HStack {
                Spacer()
                IconButton(icon: "repeat", action: {})
                Spacer()
                IconButton(icon: "stop.fill", action: {})
                Spacer()
                IconButton(icon: "shuffle", action: {})
                Spacer()
            }
            .padding(.top)
            
            
            // Volume controls...
            HStack {
                // Turn volume down
                IconButton(icon: "speaker.wave.1.fill", action: {
                    // to decrease the volume...
                    volume = volume - 0.1 > 0 ? volume - 0.1 : 0
                })
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
                                .frame(maxWidth:.infinity, alignment: .center)
                            }
                            .frame(maxHeight: 5)
                            .padding(.horizontal, getRec().width < 750 ? 1 : 20)
                
                // Turn Volume up
                IconButton(icon: "speaker.wave.3.fill", action: {
                    // increase volume...
                    volume = volume + 0.1 < 1.0 ? volume + 0.1 : 1
                })
            }
            .padding(.horizontal, 25)
            .frame(maxWidth: .infinity, maxHeight: 85)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.theme.background)
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
