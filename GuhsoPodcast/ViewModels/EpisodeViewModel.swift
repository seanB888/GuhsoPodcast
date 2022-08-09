//
//  EpisodeViewModel.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/4/22.
//

import Foundation

class EpisodeViewModel: ObservableObject {
    @Published private(set) var episodes: [Episodes] = []

    init() {
        episodes = Episodes.all
    }

    func addEpisode(episode: Episodes) {
        // Adds a newly created Episode to the Arry
        episodes.append(episode)
    }
}
