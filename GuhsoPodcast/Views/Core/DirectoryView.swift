//
//  DirectoryView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct DirectoryView: View {
    var body: some View {
        VStack {
            Text("Directory")
                .font(.largeTitle)
            .foregroundColor(Color("Brand"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
    }
}

struct DirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryView()
    }
}
