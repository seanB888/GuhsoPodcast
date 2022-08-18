//
//  FeaturedEpisodeViewModel.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/15/22.
//

import Foundation

class FeaturedEpisodeViewModel: ObservableObject {
    @Published private(set) var featuredepisodes: [FeaturedEpisodes] = []

    init() {
        featuredepisodes = FeaturedEpisodes.featuredEpisodes
    }

    func FeaturedEpisode(episode: FeaturedEpisodes) {
        // Adds a newly created Episode to the Arry
        featuredepisodes.append(episode)
    }
}
