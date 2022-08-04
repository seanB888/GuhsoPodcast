//
//  EpisodeViewModle.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/3/22.
//

import Foundation

final class EpisodeViewModel: ObservableObject {
    
    @Published var episodes: [Episode] = []
    
    func getEpisodes() {
        
        let episodesUrlString = "https://guhso.com/api"
        if let url = URL(string: episodesUrlString) {
            
            URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
                // TODO: Handle return data on the main thread...
                // The JSON Decoder
                if let error = error {
                    // TODO: Handle error...
                } else {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase // converts snake case text
                    
                    if let data = data,
                       let episodes = try? decoder.decode([Episode].self, from: data) {
                        // TODO: Handle setting the data...
                        
                        self?.episodes = episodes
                        
                    } else {
                        // TODO: Handle an error...
                        
                    }
                }
                
            }.resume()
            
            
        }
    }
}
