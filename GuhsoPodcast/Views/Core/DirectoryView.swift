//
//  DirectoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct DirectoryView: View {
    @StateObject var vm: DirectoryViewModel
    var directory: [Directory]
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            
            Text("The Directory")
                .fontWeight(.heavy)
                .font(.title)
                .foregroundColor(Color.theme.background)
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .ignoresSafeArea()
               
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(directory) { item in
                        FeaturedCard(
                            logo: item.logoURL ?? "",
                            backgroundImage: item.imageURL ?? "",
                            title: item.title,
                            subTitle: item.title,
                            category: item.category
                        )
                        .padding(.bottom)
                    }
                    
                    CustomDivider(size: 1.0)
                    
                    Text("FACINATING PLACES")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.theme.brand)
                    
                    ForEach(directory) { place in
                        DirectorySmallCard(
                            logo: place.logoURL ?? "",
                            image: place.imageURL ?? "",
                            title: place.title,
                            subTotal: place.subTitle)
                    }
                }
                .padding(.top)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct DirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryView(vm: DirectoryViewModel(), directory: Directory.featured)
            
    }
}

