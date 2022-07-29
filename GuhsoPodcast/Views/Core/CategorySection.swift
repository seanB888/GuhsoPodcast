//
//  CategoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CategorySection: View {
    var body: some View {
        VStack {
            Text("Explore")
                .font(.largeTitle)
            .foregroundColor(Color("Brand"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySection()
    }
}
