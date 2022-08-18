//
//  ExclusiveContentViewModel.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/18/22.
//

import Foundation

class ExclusiveEpisodesViewModel: ObservableObject {
    @Published private(set) var exclusiveEpisodes: [ExclusiveEpisodes] = []

    init() {
        exclusiveEpisodes = ExclusiveEpisodes.all
    }
}
