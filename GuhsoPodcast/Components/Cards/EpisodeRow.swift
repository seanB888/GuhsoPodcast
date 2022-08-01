//
//  EpisodeRow.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/30/22.
//

import SwiftUI

struct EpisodeRow: View {
    var body: some View {
        VStack {
            HStack {
                // Image section...
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100)
                    .cornerRadius(25)
                
                VStack(alignment: .leading) {
                    Text("Meditation")
                        .font(.title3.bold())
                        .foregroundColor(Color.theme.brand)
                    
                    Text("Exclusive Content")
                        .font(.caption)
                        .foregroundColor(Color.theme.accent)
                    
                    Spacer()
                    Text("Dec. 20 1hr.")
                        .font(.caption)
                        .foregroundColor(Color.theme.accent)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                IconButton(icon: "ellipsis.circle.fill", action: {
                    UIApplication.shared.open(URL(string: "https://ucleus.co")!, options: [:]                
                    )
                })
            }
            .frame(maxHeight: 80)
            .padding(.horizontal)
        }
    }
}

struct EpisodeRow_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRow()
    }
}
