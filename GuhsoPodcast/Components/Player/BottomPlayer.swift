//
//  BottomPlayer.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/4/22.
//

import SwiftUI

struct BottomPlayer: View {
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 16) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 44)
                    
                    Text("Shotta Culture")
                        .font(.title2.bold())
                        .foregroundColor(Color.theme.brand)
                    Spacer()
                    IconButton(icon: "play.fill", action: {})
                        .font(.title)
                    IconButton(icon: "forward.fill", action: {})
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 44)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.theme.background)
            )
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct BottomPlayer_Previews: PreviewProvider {
    static var previews: some View {
        BottomPlayer()
    }
}
