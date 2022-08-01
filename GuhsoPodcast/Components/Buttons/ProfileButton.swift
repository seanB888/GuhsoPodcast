//
//  ProfieButton.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct ProfileButton: View {
    @State private var isLoggedIn = false
    
    // This button will switch to the users image if signed in.
    var body: some View {
        NavigationLink(destination: {LoginView()}) {
            VStack {
                Image(systemName: "person.circle")
                    .font(.title3)
                    .foregroundColor(Color.theme.brand)
            }
            .frame(width: 45, height: 45)
            .background(Color.theme.secondaryColor.opacity(0.7))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

struct ProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButton()
    }
}
