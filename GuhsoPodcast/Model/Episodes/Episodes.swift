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
    let duration: TimeInterval
    let season: Int
    let epispode: Int
    let datePublished: String
    let category: Categories.RawValue
    
}

extension Episodes {
    
    static let all: [Episodes] = [
        Episodes(
            title: "Dem Woman Ya Today!",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso page and drop your opinion about this show, it Ghuso.",
            album_cover: "https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=860&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38312242/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-5%2F210291962-44100-2-a41ad77410a16.m4a",
            duration: 1488,
            season: 2,
            epispode: 8,
            datePublished: "2020-04-08",
            category: "Society"
            
        ),
        Episodes(
            title: "Lets Talk Chicken Farming with Rohan.",
            description: "In this episode of It Guhso, Sean sits down with Rohan to speak about being self-sufficient by raising chicken. We discuss how he got started, the inspiration, and his passion for farming being raised in the city of, Kingston Jamaica. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1638231367437-fe446878d25a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1112&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37902282/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-27%2F1e41cdec-233c-98e2-2c21-548aefd4bea5.mp3",
            duration: 1488,
            season: 2,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Society"
        ),
        Episodes(
            title: "Lets Talk Fashion with Kalure Beauty",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1571924849183-a68a3879348d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 2,
            epispode: 6,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        Episodes(
            title: "When Woman Vex.",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://images.unsplash.com/photo-1521075486433-bf4052bb37bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1044&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 2,
            epispode: 5,
            datePublished: "2020-04-08",
            category: "Society"
            
        ),
        Episodes(
            title: "ECO Tourism",
            description: "In this episode of It Guhso, Sean sits down with Rohan to speak about being self-sufficient by raising chicken. We discuss how he got started, the inspiration, and his passion for farming being raised in the city of, Kingston Jamaica. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1595366586798-11e020008a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37902282/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-27%2F1e41cdec-233c-98e2-2c21-548aefd4bea5.mp3",
            duration: 1488,
            season: 2,
            epispode: 4,
            datePublished: "2020-04-08",
            category: "Society"
        ),
        Episodes(
            title: "Lets Talk About Texting & UFO's",
            description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
            album_cover: "https://images.unsplash.com/photo-1591731619717-356551d82dac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
            duration: 1858,
            season: 1,
            epispode: 3,
            datePublished: "202027-27-10",
            category: "LifeStyle"
        ),
        Episodes(
            title: "Your Health & Wellness",
            description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
            album_cover: "https://images.unsplash.com/photo-1627483298423-03e2e972431c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
            duration: 1822,
            season: 2,
            epispode: 2,
            datePublished: "2020-20-10",
            category: "LifeStyle"
        ),
        Episodes(
            title: "Cross Culture Dating",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1564858625447-278284a4d574?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1127&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 2,
            epispode: 1,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        
        // END OF SEASON 1...
        Episodes(
            title: "Moving on out and up with Sir Mike",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://images.unsplash.com/photo-1523287562758-66c7fc58967f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 1,
            epispode: 10,
            datePublished: "2020-04-08",
            category: "Society"
            
        ),
        Episodes(
            title: "Dating a Yardie",
            description: "In this episode of Guhso, Sean and Juli sit down with a group of friends to speak about when women vex. What is the reason for it and what can we do when we are there with them. Now, we know you have your piece that you would like to share. You can take over to our.",
            album_cover: "https://images.unsplash.com/photo-1605994543054-6ffbabbd8139?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 1,
            epispode: 9,
            datePublished: "2020-04-08",
            category: "Fashion"
        ),
        Episodes(
            title: "Ole Time Christmas",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://images.unsplash.com/photo-1628220599026-cdebbd48b009?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 1,
            epispode: 8,
            datePublished: "2020-04-08",
            category: "Society"
            
        ),
        Episodes(
            title: "Coming to America",
            description: "In this episode of It Guhso, Sean sits down with Rohan to speak about being self-sufficient by raising chicken. We discuss how he got started, the inspiration, and his passion for farming being raised in the city of, Kingston Jamaica. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1517400508447-f8dd518b86db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37902282/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-27%2F1e41cdec-233c-98e2-2c21-548aefd4bea5.mp3",
            duration: 1488,
            season: 1,
            epispode: 7,
            datePublished: "2020-04-08",
            category: "Society"
        ),
        Episodes(
            title: "Foreign is not always an easy road.",
            description: "In this day and age individuals are turning to alternate ways to dating or just to meet new people. Online dating is one such way and has been trending upwards in our society. Have you ever tried online dating? Was it a success or epic fail? Sean and Julia shares their online dating experiences from the good, the bad, and the unexpected.",
            album_cover: "https://images.unsplash.com/photo-1608748534664-912c712263dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/22046921/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-3%2F0969a0fa-1295-6b54-7bc2-d12623e300f4.mp3",
            duration: 1858,
            season: 1,
            epispode: 6,
            datePublished: "202027-27-10",
            category: "LifeStyle"
        ),
        Episodes(
            title: "Words/ Phrases Jamaican's mispronounce",
            description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
            album_cover: "https://images.unsplash.com/photo-1588364742217-acf8f5e35ae6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1154&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
            duration: 1822,
            season: 1,
            epispode: 5,
            datePublished: "2020-20-10",
            category: "Culture"
        ),
        Episodes(
            title: "Online Dating",
            description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
            album_cover: "https://images.unsplash.com/photo-1634908386772-66d3b750ab73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
            duration: 1822,
            season: 1,
            epispode: 4,
            datePublished: "20202-20-10",
            category: "LifeStyle"
        ),
        Episodes(
            title: "Energy Vampire",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1495558685573-aba7573d9c01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1148&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 1,
            epispode: 3,
            datePublished: "2020-04-08",
            category: "Energy"
        ),
        Episodes(
            title: "Tea Or Not To Tea",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://images.unsplash.com/photo-1597318181409-cf64d0b5d8a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 1,
            epispode: 2,
            datePublished: "2020-04-08",
            category: "Lifestyle"
            
        ),
        Episodes(
            title: "What Our Jamaican / Caribbean Parents Never Taught Us!",
            description: "Positive vibez through story telling:  Reminiscing the past, and sprinkle a Lickle toops of the present to help mold the future.This is our very first episode. Episode number 1. In this episode we want to reflect on the things that our good up good up parents never taught us that we should have learnt to go through life. We do realize and recognize that they taught us these things in their own little way. Our parents have taught us the art of troubleshooting which we use til this very day. Listen and enjoy",
            album_cover: "https://images.unsplash.com/photo-1606466123170-d39e5346aa76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 1,
            epispode: 1,
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
            title: "Online Dating",
            description: "Tea or not to Tea talks about some of the different types of teas we drink in the Caribbean and Latin American communities. This podcast seeks to highlight some of the most commonly consumed teas/bushes across the Caribbean diaspora for health reasons or for overall maintenance.. So take it easy and check if you can learn of a new tea or bush. Thanks for listening and come guhso!",
            album_cover: "https://images.unsplash.com/photo-1634908386772-66d3b750ab73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/21376515/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-20%2F8a6a8544-552c-d8cf-3404-af023ed06ecf.mp3",
            duration: 1822,
            season: 1,
            epispode: 4,
            datePublished: "20202-20-10",
            category: "LifeStyle"
        ),
        Episodes(
            title: "Energy Vampire",
            description: "In this episode of <strong>It Guhso</strong>, Sean sits down with Mona the Ceo and one of the founders of Kalure Beauty to speak about the style choices you are missing out on. We discuss how she got started, her inspiration, and where Kalure Beauty is heading. You can head over to our page and drop your opinion about this show.",
            album_cover: "https://images.unsplash.com/photo-1495558685573-aba7573d9c01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1148&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/37563470/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-6-20%2F46dfbeb6-7f74-02c6-67a6-f540ae1fa007.mp3",
            duration: 3079,
            season: 1,
            epispode: 3,
            datePublished: "2020-04-08",
            category: "Culture"
        ),
        Episodes(
            title: "Tea Or Not To Tea",
            description: "In this episode of Guhso, Sean sits down with a good friend name Yogi to chat bout some of the experiences that we both had with some of the women that came in our lives. Sit back and take a listen at what we have to say and enjoy the ride. You can head over to guhso",
            album_cover: "https://images.unsplash.com/photo-1597318181409-cf64d0b5d8a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/38588207/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-7-10%2Fb82fea3d-699b-91a1-647c-e7376a03f004.mp3",
            duration: 1783,
            season: 1,
            epispode: 2,
            datePublished: "2020-04-08",
            category: "Lifestyle"
            
        ),
        Episodes(
            title: "What Our Jamaican / Caribbean Parents Never Taught Us!",
            description: "Positive vibez through story telling:  Reminiscing the past, and sprinkle a Lickle toops of the present to help mold the future.This is our very first episode. Episode number 1. In this episode we want to reflect on the things that our good up good up parents never taught us that we should have learnt to go through life. We do realize and recognize that they taught us these things in their own little way. Our parents have taught us the art of troubleshooting which we use til this very day. Listen and enjoy",
            album_cover: "https://images.unsplash.com/photo-1606466123170-d39e5346aa76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            enclouser: "https://anchor.fm/s/341db29c/podcast/play/32318513/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-3-27%2F43caa4c2-d1cf-9f97-df70-fe2810bd0ad3.mp3",
            duration: 1262,
            season: 1,
            epispode: 1,
            datePublished: "2020-04-08",
            category: "Fashion"
        )
    ]
    
}
