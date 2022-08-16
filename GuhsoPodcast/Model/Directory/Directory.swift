//
//  Directory.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/10/22.
//

import Foundation

enum DirectoryCategories: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case dine = "Dine"
    case bar = "Bar"
    case grill = "Grill"
    case takeOut = "Take Out"
    case orderOut = "Order Out"
    case vegan = "Vegan"
    case pastry = "Pastry"
    case caribbean = "Caribbean"
    case clothes = "Clothes"
    case pcRepair = "PC Repair"
    case gaming = "Gaming"
    case eventParty = "Events"
}

struct Directory: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let description: String
    let price: Double
    let location: String?
    let address: String
    let suit:String?
    let city: String
    let state: String
    let zip: String
    let country: String
    let phone: String
    let email: String?
    let website: String?
    let instagram: String?
    let facebook: String?
    let twitter: String?
    let imageURL: String?
    let logoURL: String?
    let category: DirectoryCategories.RawValue
}

extension Directory {
    static let featured: [Directory] = [
        Directory(
            title: "This Is How Phat Boy \nRolls",
            subTitle: "This is the place where the information can go.",
            description: "This is the place where the information can go.",
            price: 50.00,
            location: "OAKLAND PARK",
            address: "4100 N Federal Hwy",
            suit: "",
            city: "Ft Laudarle",
            state: "FL",
            zip: "33308",
            country: "USA",
            phone: "954.533.4218",
            email: "",
            website: "https://phatboysushi.com/",
            instagram: "",
            facebook: "",
            twitter: "",
            imageURL: "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
            logoURL: "https://phatboysushi.com/wp-content/uploads/2022/01/Website_Header_white.png",
            category: "Dine"
        ),
        
        Directory(
            title: "AT BIG BEAR BREWING COMPANY",
            subTitle: "Big Bear Brewing Co. opened its doors in July of 1997",
            description: "We provide outstanding service and the highest quality food.",
            price: 30.00,
            location: "Coral Springs",
            address: "1800 North University Drive",
            suit: "",
            city: "Coral Springs",
            state: "FL",
            zip: "33071",
            country: "USA",
            phone: "954.341.5545",
            email: "",
            website: "https://bigbearbrewingco.com/",
            instagram: "",
            facebook: "",
            twitter: "",
            imageURL: "https://bigbearbrewingco.com/wp-content/uploads/IMG_9964-1.jpg",
            logoURL: "https://bigbearbrewingco.com/wp-content/themes/webdiner/img/AnnivLogo.png",
            category: "Take Out"
        ),
        Directory(
            title: "TAVOLINO DELLA NOTTE",
            subTitle: "We accept online reservations for parties up to 8 guests",
            description: "Tavolino Della Notte, featuring contemporary Italian Cuisine welcomes local diners with a menu and atmosphere guaranteed to exceed your expectations.",
            price: 85.00,
            location: "Coral Springs",
            address: "10181 West Sample Rd.",
            suit: "",
            city: "Cotal Springs",
            state: "FL",
            zip: "33065",
            country: "USA",
            phone: "",
            email: "",
            website: "https://www.tavolinorestaurant.com/",
            instagram: "",
            facebook: "",
            twitter: "",
            imageURL: "https://images.squarespace-cdn.com/content/v1/553814cde4b099f68bcfdc52/1534275588608-G6SPI15FS7GHQPXZZWI0/34851-051.jpg?format=2500w",
            logoURL: "https://images.squarespace-cdn.com/content/v1/553814cde4b099f68bcfdc52/1575950523744-582FHY6JC2SIJ9131CKB/tav-white.png?format=1500w",
            category: "Grill"
        )
    ]
    

}
