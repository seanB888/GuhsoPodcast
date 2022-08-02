//
//  DirectorySheet.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/2/22.
//

import SwiftUI

struct DirectorySheet: View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack{
                Button {
                    //
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.theme.brand)
                }

            }
            .padding(35)
            
//            Text("Directory Detail")
//                .font(.largeTitle)
//            .foregroundColor(Color.theme.brand)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .ignoresSafeArea()
        .background(Color.theme.background)
    }
}

struct DirectorySheet_Previews: PreviewProvider {
    static var previews: some View {
        DirectorySheet()
    }
}
