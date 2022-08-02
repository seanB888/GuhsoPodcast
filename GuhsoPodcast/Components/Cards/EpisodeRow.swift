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
                    showhareCard()
                })
            }
            .frame(maxHeight: 80)
            .padding(.horizontal)
        }
    }
    
    // MARK: - Share button
    func showhareCard() {
        let url = URL(string: "https://ucleus.com")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController!
            .present(activityController, animated: true, completion: nil)
    }
}

struct EpisodeRow_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRow()
    }
}
