//
//  ExclusiveContent.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/15/22.
//

import Foundation

enum ExlusiveCategories: String, CaseIterable, Identifiable {
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

struct ExclusiveEpisodes: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let album_cover: String
    let enclouser: String
    let duration: TimeInterval
    let season: Int
    let epispode: Int
    let datePublished: String
    let category: ExlusiveCategories.RawValue
}

extension ExclusiveEpisodes {
    static var all: [ExclusiveEpisodes] = [
        ExclusiveEpisodes(
            title: "Online Dating",
            description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
            album_cover: "https://images.unsplash.com/photo-1571771826307-98d0d0999028?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
            duration: 1858,
            season: 1,
            epispode: 4,
            datePublished: "2020-27-10",
            category: "LifeStyle"
        ),
        ExclusiveEpisodes(
            title: "Tea or not to Tea",
            description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
            album_cover: "https://images.unsplash.com/photo-1478737270239-2f02b77fc618?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
            duration: 1822,
            season: 1,
            epispode: 2,
            datePublished: "20202-20-10",
            category: "LifeStyle"
        ),
        ExclusiveEpisodes(
            title: "Lets Talk Fashion with Kalure Beauty",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        ExclusiveEpisodes(
            title: "Dem Woman Ya Today! With Yogi.",
             description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://images.unsplash.com/photo-1573497491208-6b1acb260507?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 2,
            epispode: 9,
            datePublished: "2020-04-08",
            category: "Society"

        ),
        ExclusiveEpisodes(
            title: "When Women Vex.",
            description: "In this episode of Guhso, Sean and Juli sit down with a group of friends to speak about when women vex. What is the reason for it and what can we do when we are there with them. Now, we know you have your piece that you would like to share. You can take over to our.",
            album_cover: "https://images.unsplash.com/photo-1521075486433-bf4052bb37bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1044&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Fashion"
        )
    ]
}
