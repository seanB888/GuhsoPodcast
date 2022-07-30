//
//  PlayButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct PlayButton: View {
    @State private var isplaying = false
    @State var action: () -> Void
    
    var body: some View {
        Button {
            //
            isplaying.toggle()
            action()
        } label: {
            Image(systemName: isplaying ? "pause.fill" : "play.fill")
                .font(.largeTitle)
                .foregroundColor(Color.theme.brown)
        }
        .padding()
        .background(Color.theme.brand)
        .clipShape(Circle())

    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(action: {})
    }
}
