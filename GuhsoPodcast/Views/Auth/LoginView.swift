//
//  LoginView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("LOGIN")
                .font(.largeTitle)
            .foregroundColor(Color("Brand"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
