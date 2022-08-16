//
//  FeaturedEpisodes.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/15/22.
//

import Foundation

enum FeaturedCategories: String, CaseIterable, Identifiable {
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

struct FeaturedEpisodes: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let album_cover: String
    let enclouser: String
    let duration: Int
    let season: Int
    let epispode: Int
    let datePublished: String
    let category: FeaturedCategories.RawValue
    
}

extension FeaturedEpisodes {
    
    static var featuredEpisodes: [FeaturedEpisodes] = [
        FeaturedEpisodes(
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
        FeaturedEpisodes(
            title: "When Women Vex.",
            description: "In this episode of Guhso, Sean and Juli sit down with a group of friends to speak about when women vex. What is the reason for it and what can we do when we are there with them. Now, we know you have your piece that you would like to share. You can take over to our.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/09/jouful-muslim-girl-in-wireless-headphones-listenin-WVY6AYK-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Culture"
        ),
        FeaturedEpisodes(
            title: "Eco-tourism with Boris",
            description: "In this episode of Guhso, we discuss Eco-tourism with Boris, who has an eco-tourism business in Jamaica. We learn what eco-tourism is, how it can benefit everyone, and how we all can contribute to this growing form of vacationing. If you have had an eco-tourism experience, or want to learn more about it, leave a comment down below or send us an email at chatbout@guhso.com. Also, to listen to other episodes, just search for guhsolive on our social media platforms and check out other videos on youtube, search for guhso. We look forward to hearing from you. Likkle more.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/07/kalure-beauty.png",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/29835926/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-2-24%2F8395047a-aabb-522e-6e08-95139b6de5e2.mp3",
            duration: 3079,
            season: 2,
            epispode: 4,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        FeaturedEpisodes(
            title: "Cross Culture Dating",
            description: "In this episode of Guhso, we look at cross culture dating. We analyze and get candid with the experience we had with it. We would like to know how your experience has been. Share your success or not so successful stories of cross culture dating at chatbout@guhso.com, we look forward to reading an email from you.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-couple-dating-drinking-coffee-sitting-near-the-c-R3U9CUE-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/26099007/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-1-2%2Fbbeb23da-f28c-0386-7b39-37195871f6ef.mp3",
            duration: 1262,
            season: 2,
            epispode: 1,
            datePublished: "2021-02-02",
            category: "Fashion"
        ),
        FeaturedEpisodes(
            title: "Ole Time Christmas",
            description: "It’s almost time for Christmas and many of our Jamaicans/Caribbean families have already started their preparations. In this episode , Sean and Julia takes a trip down memory lane, reminiscing on the traditional ole time Jamaican Christmas festivities and culture. Do you still practice the Jamaican Christmas traditions? Or, do you have some new traditions to share? ",
            album_cover: "https://guhso.com/wp-content/uploads/2022/08/ja-christmas.webp",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/24011540/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-15%2F663018a3-524d-1f45-91e9-af7ee2555e66.mp3",
            duration: 3079,
            season: 1,
            epispode: 8,
            datePublished: "2020-15-12",
            category: "Culture"
        )
    ]
}

