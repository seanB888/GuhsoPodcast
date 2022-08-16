//
//  DirectorySmallCard.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/13/22.
//

import SwiftUI

struct DirectorySmallCard: View {
    @State var logo: String
    @State var image: String
    @State var title: String
    @State var subTotal: String
    
    var body: some View {
        VStack {
            ZStack {
                AsyncImage(url: URL(string: image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 210)
                        .cornerRadius(25)
                } placeholder: {
                    ProgressView()
                }
                
                VStack {
                    
                    // Logo here...
                    AsyncImage(url: URL(string: logo)) { logoImage in
                        logoImage
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(title)
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.theme.brand)
                                
                                Text(subTotal)
                                    .font(.caption)
                                    .foregroundColor(Color.theme.brown)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "location.circle.fill")
                                .foregroundColor(Color.theme.brand)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 75, alignment: .leading)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    }
                    .padding(.horizontal)
                }
            }
        }
        .frame(maxWidth: 350)
    }
}

struct DirectorySmallCard_Previews: PreviewProvider {
    static var previews: some View {
        DirectorySmallCard(logo: "", image: "", title: "Big Eatery", subTotal: "Guhso Choice to Eat")
    }
}
