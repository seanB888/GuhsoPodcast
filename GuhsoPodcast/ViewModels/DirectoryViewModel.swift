//
//  DirectoryViewModel.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/11/22.
//

import Foundation

class DirectoryViewModel: ObservableObject {
    @Published private(set) var directory: [Directory] = []
    
    init() {
        directory = Directory.featured
    }
    
    func addToDirectory(directoryNew: Directory) {
        // Adds Item to the directory Array
        directory.append(directoryNew)
    }
}
