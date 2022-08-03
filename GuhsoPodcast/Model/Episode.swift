//
//  ShowModel.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/2/22.
//

import Foundation


// MARK: - ShowModel
struct Episode: Codable {
    let channel: Title
}

// Main title...
struct Title: Codable {
    let title: CData
    let description: ShowCData
    let image: [ShowImage]
    let generator: String
    let lastBuildDate: String
    let author: Author
    let summary: Summary
    let type: EpisodeType
    let owner: ShowOwner
    let eplicit: ShowType
    let category: Category
    let item: Items
}

// For the title of the show
struct CData: Codable {
    let __cdata: String
}

// For the show description...
struct ShowCData: Codable {
    let __cdata: String
}

// Show images...
struct ShowImage: Codable {
    let url: URLLinks
    let url2: OtherURL
    
    struct URLLinks: Codable {
        let url: String
        let title: String
        let link: [String]
    }
    
    struct OtherURL:Codable {
        let _href: String
    }
}

// Author data...
struct Author: Codable {
    let author: [Data]
    
    struct Data: Codable {
        let __cdata: String
        let __text: String
    }
}

// Summary data...
struct Summary: Codable {
    let __text: String
}

// EpisodeType data...
struct EpisodeType: Codable {
    let __text: String
}

// ShowOwner data...
struct ShowOwner: Codable {
    let name: OwnerName
    let email: OwnerEmail
    
    struct OwnerName: Codable {
        let text: String
    }
    
    struct OwnerEmail: Codable {
        let __text: String
    }
}

// Show type...
struct ShowType: Codable {
    let __text: String
}

// Category data...
struct Category: Codable {
    let __text: String
}

// Items data...
struct Items: Codable {
    let title: Title
    let description: String
    let link: String
    let guid: GUID
    let creator: Creator
    let pubDate: String
    let enclosure: Enclosure
    let summary: String
    let explicit: ExplicitShow
    let duration: ShowDuration
    let image: Images
    let season: Season
    let episode: Episode
    let episodeType: EpisodeType
    
    
    struct Title: Codable {
        let __cdata: String
    }
    
    struct GUID: Codable {
        let _isPermaLink: String
        let __text: String
    }
    
    struct Creator: Codable {
        let __cdata: String
    }
    
    struct Enclosure: Codable {
        let _url: String
        let _length: String
        let _type: String
    }
    
    struct ExplicitShow: Codable {
        let __text: String
    }
    
    struct ShowDuration: Codable {
        let __text: String
    }
    
    struct Images: Codable {
        let _href: String
    }
    
    struct Season: Codable {
        let __text: String
    }
    
    struct Episode: Codable {
        let __text: String
    }
    
    struct EpisodeType: Codable {
        let __text: String
    }
}
