//
//  FeaturedCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/9/22.
//

import SwiftUI

struct FeaturedCard: View {
    let colors: [Color] = [Color.theme.brand.opacity(0.01), Color.theme.brown.opacity(0.7)]
    @State var logo: String
    @State var backgroundImage: String
    @State var title: String
    @State var subTitle: String
    @State var category: String
    
    var body: some View {
//        GeometryReader { proxy in
//            VStack {
//                VStack(alignment: .leading) {
//                    VStack {
//                        // Top left corner
//                        // Company Logo...
//                        HStack {
//                            AsyncImage(url: URL(string: logo)) {image in
//                                image
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fill)
//                                    .frame(width: proxy.size.width / 5, height: 50)
//                                    // .position(x: 70, y: 40)
//                            }placeholder: {
//                                ProgressView()
//
//                            }
//                            .tint(Color.theme.brand)
//                            .padding()
//                            Spacer()
//
//                            Text(category)
//                                .font(.title)
//                                .fontWeight(.heavy)
//                                .foregroundColor(Color.theme.brand)
//                        }
//                        .frame(maxWidth: .infinity, maxHeight: 50)
//                        .padding()
//
//                        // Bottom
//                        VStack(alignment: .leading) {
//                            Text(title)
//                                .font(.largeTitle)
//                                .fontWeight(.heavy)
//                                .foregroundColor(Color.white)
//                                .lineLimit(3)
//
//                            Text(subTitle)
//                                .foregroundColor(Color.theme.accent)
//                        }
//                        .padding(.horizontal)
//                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
//                        .padding(.bottom, 25)
//                    }
//                }
//                .frame(maxWidth: proxy.size.width / 1.1, maxHeight: proxy.size.height / 1.5)
//                .background {
//                    AsyncImage(url: URL(string: backgroundImage)) { image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            //.position(x: -20, y: 290)
//
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .tint(Color.theme.brand)
//                    .frame(maxWidth: proxy.size.width / 1, maxHeight: proxy.size.height / 1)
//                    .overlay(
//                        LinearGradient(colors: colors, startPoint: UnitPoint(x: 0.00, y: 0.00), endPoint: UnitPoint(x: 1.00, y: 1.00))
//                    )
//                    .clipped()
//                }
//
//                .shadow(color: .black.opacity(0.5), radius: 30, x: 5, y: 5)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//        }
    
       
            
        VStack(alignment: .leading, spacing: 8) {
                // Company logo...
                AsyncImage(url: URL(string: logo)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                } placeholder: {
                    ProgressView()
                }
                .tint(Color.theme.accent)
                .padding(.horizontal, 45)
                
                Spacer()
                
                // Title of Event...
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                // Subtitle area...
                Text(subTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.accent)
                
                // button...
                Capsule()
                    .fill(Color.theme.brand)
                    .frame(height: 44)
                    .overlay(
                        Text("Check Them Out").bold()
                            .foregroundColor(Color.theme.brown)
                    )
            }
            .padding()
            .frame(width: 350, height: 500)
            .background{
                AsyncImage(url: URL(string: backgroundImage)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .overlay(
                    LinearGradient(colors: colors, startPoint: UnitPoint(x: 0.00, y: 0.00), endPoint: UnitPoint(x: 1.00, y: 1.00))
                )
            }
            .clipShape(Rectangle())
       
    }
}

struct FeaturedCard_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCard(
            logo: "https://phatboysushi.com/wp-content/uploads/2022/01/Website_Header_white.png",
            backgroundImage: "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
            title: "This Is How Phat Boy \nRolls",
            subTitle: "This is the place where the information can go.",
            category: "Dine")
        .previewInterfaceOrientation(.portrait)
        
        
    }
}
