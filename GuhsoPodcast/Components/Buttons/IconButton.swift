//
//  IconButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct IconButton: View {
    @State var icon: String
    @State var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: icon)
                .font(.title3)
                .foregroundColor(Color.theme.brand)
        }

    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(icon: "repeat", action: {})
    }
}
