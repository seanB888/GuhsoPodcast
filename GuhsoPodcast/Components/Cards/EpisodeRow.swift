//
//  EpisodeRow.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/30/22.
//

import SwiftUI

struct EpisodeRow: View {
    @State var title: String
    @State var season: Int
    @State var episode: Int
    @State var datePublished: String
    @State var image: String
    
    var body: some View {
        VStack {
            HStack {
                // Image section...
                AsyncImage(url: URL(string: image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .cornerRadius(25)
                } placeholder: {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 100, height: 100)
                        .cornerRadius(25)
                    
                }
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title3.bold())
                        .foregroundColor(Color.theme.brand)
                    
                    Text("Episode: \(season)")
                        .font(.caption)
                        .foregroundColor(Color.theme.brand)
                    
                    Text("Episode: \(episode)")
                        .font(.caption)
                        .foregroundColor(Color.theme.accent)
                    
                    Spacer()
                    Text(datePublished)
                        .font(.caption)
                        .foregroundColor(Color.theme.accent)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                IconButton(icon: "ellipsis.circle.fill", action: {
//                    showShareCard()
                })
            }
            .frame(maxHeight: 80)
            .padding(.horizontal)
        }
    }
    
    // MARK: - Share button
//    func showShareCard() {
//        let url = URL(string: "https://ucleus.com")
//        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
//
//        UIApplication.shared.windows.first?.rootViewController!
//          .present(activityController, animated: true, completion: nil)
//    }
}

struct EpisodeRow_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRow(title: "Meditation", season: 1, episode: 1, datePublished: "2020-27-10", image: "")
    }
}
