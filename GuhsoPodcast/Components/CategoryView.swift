//
//  CategoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/14/22.
//

import SwiftUI

struct CategoryView: View {
    var episodes: [Episodes]
    
    var body: some View {
        VStack {
            HStack {
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Tags of categories
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(episodes) { item in
                        CategoryButton(categoryTitle: item.category)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(episodes: Episodes.all)
    }
}
