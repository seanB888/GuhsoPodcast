//
//  ViewRouter.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/22/22.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: PageView = .home
    
    enum PageView {
        case home
        case explore
        case directory
        case profile
    }
}
