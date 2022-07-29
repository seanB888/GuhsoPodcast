//
//  EpisodeCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct EpisodeCard: View {
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                FavButton()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    
                    PlayButton()
                    
                    VStack(alignment: .leading) {
                        Text("Episode Title")
                            .font(.title)
                            .fontWeight(.bold)
                        HStack {
                            Text("Hosted by:")
                            Text("Sean")
                        }
                        .font(.footnote)
                    }
                    .foregroundColor(Color("Accent1"))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
                .padding(.horizontal, 25)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .frame(height: 350)
        .background{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
        }
        .padding()
    }
}

struct EpisodeCard_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeCard()
    }
}