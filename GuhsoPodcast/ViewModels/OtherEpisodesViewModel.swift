//
//  OtherEpisodesViewModel.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/18/22.
//

import Foundation

class OtherEpisodeViewModel: ObservableObject {
    @Published private(set) var otherEpisodes: [OtherEpisodes] = []

    init() {
        otherEpisodes = OtherEpisodes.otherEpisodes
    }
}
