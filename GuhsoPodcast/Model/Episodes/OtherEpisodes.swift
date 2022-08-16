//
//  OtherEpisodes.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/15/22.
//

import Foundation

enum OtherCategories: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case fashion = "Fashion"
    case Energy = "Energy"
    case lifestyle = "LifeStyle"
    case society = "Society"
    case culture = "Culture"
    case movies = "Movies"
    case arts = "Arts"
    case music = "Music"
}

struct OtherEpisodes: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let album_cover: String
    let enclouser: String
    let duration: Int
    let season: Int
    let epispode: Int
    let datePublished: String
    let category: OtherCategories.RawValue
    
}

extension OtherEpisodes {
    static var otherEpisodes: [OtherEpisodes] = [
        OtherEpisodes(
            title: "Lets Talk Fashion with Kalure Beauty",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/07/kalure-beauty.png",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        OtherEpisodes(
            title: "When Women Vex.",
            description: "In this episode of Guhso, Sean and Juli sit down with a group of friends to speak about when women vex. What is the reason for it and what can we do when we are there with them. Now, we know you have your piece that you would like to share. You can take over to our.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/08/exhaustion-X8VYWCY-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        OtherEpisodes(
            title: "Lets Talk Fashion with Kalure Beauty",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/07/kalure-beauty.png",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        OtherEpisodes(
            title: "When Women Vex.",
            description: "In this episode of Guhso, Sean and Juli sit down with a group of friends to speak about when women vex. What is the reason for it and what can we do when we are there with them. Now, we know you have your piece that you would like to share. You can take over to our.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/08/exhaustion-X8VYWCY-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        OtherEpisodes(
            title: "Lets Talk Fashion with Kalure Beauty",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/07/kalure-beauty.png",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        OtherEpisodes(
            title: "When Women Vex.",
            description: "In this episode of Guhso, Sean and Juli sit down with a group of friends to speak about when women vex. What is the reason for it and what can we do when we are there with them. Now, we know you have your piece that you would like to share. You can take over to our.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/08/exhaustion-X8VYWCY-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        )
    ]
}
