//
//  LoginView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct LoginView: View {
//    @State var email: String = ""
//    @State var password: String = ""
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        VStack {
            Image("logoorange")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            
            Text("LOGIN")
                .font(.largeTitle)
                .foregroundColor(Color("Brand"))
                .padding(.top)
            
            VStack(spacing: 20) {
                // Email address
                HStack {
                    Image(systemName: "envelope")
                    
                    TextField("Email", text: $loginVM.credentials.email)
                        .keyboardType(.emailAddress)
                }
                .foregroundColor(Color.theme.brand)
                
                // Password
                HStack {
                    Image(systemName: "key")
                    
                    SecureField("Password", text: $loginVM.credentials.password)
                        .keyboardType(.emailAddress)
                    
                    // the progessview
                    if loginVM.showProgressView {
                        ProgressView()
                    }
                }
                .foregroundColor(Color.theme.brand)
                
                // Submit button
                Button {
                    //
                    loginVM.login { success in
                        //
                        authentication.updateValidation(success: success)
                    }
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
                .disabled(loginVM.loginButtonDisabled)
            }
            .autocapitalization(.none)
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal, 20)
            
            
            // Trouble signing in
            VStack {
                Button {
                    //
                } label: {
                    Text("Trouble Signing In")
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundColor(Color.theme.brand)
                }
                .padding()
            }

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
