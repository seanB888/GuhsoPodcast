//
//  Episodes.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/4/22.
//

import Foundation

enum Categories: String, CaseIterable, Identifiable {
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

struct Episodes: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let album_cover: String
    let enclouser: String
    let duration: Int
    let season: Int
    let epispode: Int
    let datePublished: String
    let category: Categories.RawValue
    
}

extension Episodes {

    static let all: [Episodes] = [
    Episodes(
        title: "Dem Woman Ya Today! With Yogi.",
         description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
        album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
        duration: 1783,
        season: 2,
        epispode: 9,
        datePublished: "2020-04-08",
        category: "Society"

    ),
    Episodes(
        title: "Lets Talk Chicken Farming with Rohan.",
        description: "In this episode of It Guhso, Sean sits down with Rohan to speak about being self-sufficient by raising chicken. We discuss how he got started, the inspiration, and his passion for farming being raised in the city of, Kingston Jamaica. You can head over to our page and drop your opinion about this show.",
        album_cover: "https://guhso.com/wp-content/uploads/2021/03/Resized_Resized_20200422_161755_20200515_160932001.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/37902282/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-27%2F1e41cdec-233c-98e2-2c21-548aefd4bea5.mp3",
        duration: 1488,
        season: 2,
        epispode: 8,
        datePublished: "2020-04-08",
        category: "Society"
    ),
    Episodes(
        title: "Online Dating Episode 4",
        description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
        album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-couple-dating-drinking-coffee-sitting-near-the-c-R3U9CUE-scaled.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
        duration: 1858,
        season: 1,
        epispode: 4,
        datePublished: "202027-27-10",
        category: "LifeStyle"
    ),
    Episodes(
        title: "Tea or not to Tea",
        description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
        album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-cup-of-tea-on-the-wooden-table-tea-bag-in-glass-H8TYR8S-scaled.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
        duration: 1822,
        season: 1,
        epispode: 2,
        datePublished: "2020-20-10",
        category: "LifeStyle"
    ),
    Episodes(
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
    Episodes(
        title: "Dem Woman Ya Today! With Yogi.",
         description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
        album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
        duration: 1783,
        season: 2,
        epispode: 9,
        datePublished: "2020-04-08",
        category: "Society"

    ),
    Episodes(
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
    Episodes(
        title: "Dem Woman Ya Today! With Yogi.",
         description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
        album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
        duration: 1783,
        season: 2,
        epispode: 9,
        datePublished: "2020-04-08",
        category: "Society"

    ),
    Episodes(
        title: "Lets Talk Chicken Farming with Rohan.",
        description: "In this episode of It Guhso, Sean sits down with Rohan to speak about being self-sufficient by raising chicken. We discuss how he got started, the inspiration, and his passion for farming being raised in the city of, Kingston Jamaica. You can head over to our page and drop your opinion about this show.",
        album_cover: "https://guhso.com/wp-content/uploads/2021/03/Resized_Resized_20200422_161755_20200515_160932001.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/37902282/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-27%2F1e41cdec-233c-98e2-2c21-548aefd4bea5.mp3",
        duration: 1488,
        season: 2,
        epispode: 8,
        datePublished: "2020-04-08",
        category: "Society"
    ),
    Episodes(
        title: "Online Dating Episode 4",
        description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
        album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-couple-dating-drinking-coffee-sitting-near-the-c-R3U9CUE-scaled.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
        duration: 1858,
        season: 1,
        epispode: 4,
        datePublished: "202027-27-10",
        category: "LifeStyle"
    ),
    Episodes(
        title: "Tea or not to Tea",
        description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
        album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-cup-of-tea-on-the-wooden-table-tea-bag-in-glass-H8TYR8S-scaled.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
        duration: 1822,
        season: 1,
        epispode: 2,
        datePublished: "2020-20-10",
        category: "LifeStyle"
    ),
    Episodes(
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
    Episodes(
        title: "Dem Woman Ya Today! With Yogi.",
         description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
        album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
        duration: 1783,
        season: 2,
        epispode: 9,
        datePublished: "2020-04-08",
        category: "Society"

    ),
    Episodes(
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
    Episodes(
        title: "Dem Woman Ya Today! With Yogi.",
         description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
        album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
        duration: 1783,
        season: 2,
        epispode: 9,
        datePublished: "2020-04-08",
        category: "Society"

    ),
    Episodes(
        title: "Lets Talk Chicken Farming with Rohan.",
        description: "In this episode of It Guhso, Sean sits down with Rohan to speak about being self-sufficient by raising chicken. We discuss how he got started, the inspiration, and his passion for farming being raised in the city of, Kingston Jamaica. You can head over to our page and drop your opinion about this show.",
        album_cover: "https://guhso.com/wp-content/uploads/2021/03/Resized_Resized_20200422_161755_20200515_160932001.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/37902282/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-27%2F1e41cdec-233c-98e2-2c21-548aefd4bea5.mp3",
        duration: 1488,
        season: 2,
        epispode: 8,
        datePublished: "2020-04-08",
        category: "Society"
    ),
    Episodes(
        title: "Online Dating Episode 4",
        description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
        album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-couple-dating-drinking-coffee-sitting-near-the-c-R3U9CUE-scaled.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
        duration: 1858,
        season: 1,
        epispode: 4,
        datePublished: "202027-27-10",
        category: "LifeStyle"
    ),
    Episodes(
        title: "Tea or not to Tea",
        description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
        album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-cup-of-tea-on-the-wooden-table-tea-bag-in-glass-H8TYR8S-scaled.jpg",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
        duration: 1822,
        season: 1,
        epispode: 2,
        datePublished: "2020-20-10",
        category: "LifeStyle"
    ),
    Episodes(
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
    Episodes(
        title: "Dem Woman Ya Today! With Yogi.",
         description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
        album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
        enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
        duration: 1783,
        season: 2,
        epispode: 9,
        datePublished: "2020-04-08",
        category: "Society"

    ),
    Episodes(
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
    Episodes(
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


    static var otherEpisodes: [Episodes] = [
    Episodes(
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
    Episodes(
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
    Episodes(
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
    Episodes(
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
    Episodes(
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
    Episodes(
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
    
    static var recentEpisodes: [Episodes] = [
        Episodes(
            title: "Online Dating",
            description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
            album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-couple-dating-drinking-coffee-sitting-near-the-c-R3U9CUE-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
            duration: 1858,
            season: 1,
            epispode: 4,
            datePublished: "2020-27-10",
            category: "LifeStyle"
        ),
        Episodes(
            title: "Tea or not to Tea",
            description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
            album_cover: "https://guhso.com/wp-content/uploads/2021/08/a-cup-of-tea-on-the-wooden-table-tea-bag-in-glass-H8TYR8S-scaled.jpg",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
            duration: 1822,
            season: 1,
            epispode: 2,
            datePublished: "20202-20-10",
            category: "LifeStyle"
        ),
        Episodes(
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
        Episodes(
            title: "Dem Woman Ya Today! With Yogi.",
             description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://guhso.com/wp-content/uploads/2021/07/girls.night_.png",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 2,
            epispode: 9,
            datePublished: "2020-04-08",
            category: "Society"

        ),
        Episodes(
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
