//
//  CategoryButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CategoryButton: View {
    @State var categoryTitle: String
    
    var body: some View {
        Text(categoryTitle)
            .foregroundColor(Color.theme.brand)
            .padding(.vertical, 5)
            .padding(.horizontal, 20)
            .background{
                Capsule()
                    .fill(Color.theme.secondaryColor)
            }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(categoryTitle: "Styles")
    }
}
