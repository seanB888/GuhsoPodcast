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
            title: "Dem Woman Ya Today!",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso page and drop your opinion about this show, it Ghuso.",
            album_cover: "https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=860&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38312242/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-5%2F210291962-44100-2-a41ad77410a16.m4a",
            duration: 1488,
            season: 2,
            epispode: 8,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        OtherEpisodes(
            title: "Eco-tourism with Boris",
            description: "In this episode of Guhso, we discuss Eco-tourism with Boris, who has an eco-tourism business in Jamaica. We learn what eco-tourism is, how it can benefit everyone, and how we all can contribute to this growing form of vacationing. If you have had an eco-tourism experience, or want to learn more about it, leave a comment down below or send us an email at chatbout@guhso.com. Also, to listen to other episodes, just search for guhsolive on our social media platforms and check out other videos on youtube, search for guhso. We look forward to hearing from you. Likkle more...",
            album_cover: "https://images.unsplash.com/photo-1595366586798-11e020008a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/29835926/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-2-24%2F8395047a-aabb-522e-6e08-95139b6de5e2.mp3",
            duration: 3909,
            season: 2,
            epispode: 4,
            datePublished: "2020-04-08",
            category: "Society"
        ),
        OtherEpisodes(
            title: "Let's Talk About Texting & UFO's",
            description: "In this episode of Guhso, Juli and Sean take a look at texting and the message that it carrys when it is sent. We touch some conspiracy subjects about aliens, ufo's, planets and Anunnaki. Leave us a comment what your thoughts are about the subject. Do you talk about these thinks with friends and what does conspiracy mean to you. You can reach out to us at , or on our social media platforms, links below. We look forward to reading a post or an email from you. Little more.",
            album_cover: "https://images.unsplash.com/photo-1591731619717-356551d82dac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/27743272/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-2-3%2F84b77371-a371-3126-1ac4-4b0657afbf5e.mp3",
            duration: 3682,
            season: 2,
            epispode: 3,
            datePublished: "2020-04-08",
            category: "LifeStyle"
        ),
        OtherEpisodes(
            title: "Cross Culture Dating",
            description: "In this episode of Guhso, we look at cross culture dating. We analyze and get candid with the experience we had with it. We would like to know how your experience has been. Share your success or not so successful stories of cross culture dating at chatbout@guhso.com, we look forward to reading an email from you.",
            album_cover: "https://images.unsplash.com/photo-1564858625447-278284a4d574?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1127&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/26099007/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-1-2%2Fbbeb23da-f28c-0386-7b39-37195871f6ef.mp3",
            duration: 3963,
            season: 2,
            epispode: 1,
            datePublished: "2020-04-08",
            category: "Culture"
        ),
        OtherEpisodes(
            title: "When Women Vex",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1521075486433-bf4052bb37bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1044&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 8864,
            season: 2,
            epispode: 5,
            datePublished: "2020-04-08",
            category: "Culture"
        ),
        OtherEpisodes(
            title: "Ole Time Christmas",
            description: "It’s almost time for Christmas and many of our Jamaicans/Caribbean families have already started their preparations. In this episode , Sean and Julia takes a trip down memory lane, reminiscing on the traditional ole time Jamaican Christmas festivities and culture. Do you still practice the Jamaican Christmas traditions? Or, do you have some new traditions to share?",
            album_cover: "https://images.unsplash.com/photo-1596414403549-fdfbc37f7146?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/24011540/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-15%2F663018a3-524d-1f45-91e9-af7ee2555e66.mp3",
            duration: 2118,
            season: 1,
            epispode: 8,
            datePublished: "2020-04-08",
            category: "Culture"
        )
    ]
}
