//
//  GuhsoPodcastApp.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

@main
struct GuhsoPodcastApp: App {
    //@StateObject var authentication = Authentication()
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
