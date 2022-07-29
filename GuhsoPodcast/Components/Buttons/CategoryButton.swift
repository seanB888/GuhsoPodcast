//
//  CategoryButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct CategoryButton: View {
    var body: some View {
        Text("Fashion")
            .foregroundColor(Color("Brand"))
            .padding(.vertical, 5)
            .padding(.horizontal, 20)
            .background{
                Capsule()
                    .fill(Color("Accent2"))
            }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton()
    }
}
