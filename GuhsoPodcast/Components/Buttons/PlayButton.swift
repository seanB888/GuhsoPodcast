//
//  PlayButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct PlayButton: View {
    @State private var isplaying = false
    
    var body: some View {
        Button {
            //
            isplaying.toggle()
        } label: {
            Image(systemName: isplaying ? "pause.fill" : "play.fill")
                .font(.largeTitle)
                .foregroundColor(Color("Accent4"))
        }
        .padding()
        .background(Color("Brand"))
        .clipShape(Circle())

    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
