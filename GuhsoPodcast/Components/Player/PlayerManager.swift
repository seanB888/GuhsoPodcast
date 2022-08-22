//
//  Player.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/19/22.
//

import Foundation
import AVKit

final class PlayerManager {
    static let shared = PlayerManager()
    
    var player: AVAudioPlayer?
    
    func startPlayer(enclouser: String) {
        let urlString = Bundle.main.url(forResource: enclouser, withExtension: "mp3")
        
        do {
            player = try AVAudioPlayer(contentsOf: urlString!)
            
            player?.play()
        } catch {
            print("ERROR: Fail to initialize player.", error)
        }
        
    }
}
