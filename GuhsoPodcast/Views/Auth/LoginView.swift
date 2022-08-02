//
//  LoginView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("logoorange")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
            
            Text("LOGIN")
                .font(.largeTitle)
                .foregroundColor(Color("Brand"))
                .padding(.top)
            
            VStack(spacing: 20) {
                // Email address
                HStack {
                    Image(systemName: "envelope")
                    
                    TextField("Email", text: $email)
                        .autocapitalization(.none)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.emailAddress)
                }
                .foregroundColor(Color.theme.brand)
                
                // Password
                HStack {
                    Image(systemName: "key")
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                }
                .foregroundColor(Color.theme.brand)
                
                // Submit button
                Button {
                    //
                } label: {
                    Text("SUBMIT")
                        .font(.title.bold())
                        .foregroundColor(Color.theme.brown)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .background{
                    Capsule()
                        .foregroundColor(Color.theme.brand)
                }
                
                // Trouble signing in
                Button {
                    //
                } label: {
                    Text("Trouble Signing In")
                }


            }
            .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(email: "email")
    }
}
