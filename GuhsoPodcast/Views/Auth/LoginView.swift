//
//  LoginView.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/29/22.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var loginVM = LoginViewModel()
    // @EnvironmentObject var authentication: Authentication
    @State private var textFieldData = ""
    
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
            
            VStack(spacing: 10) {
                // Email address
                CustomTextField(icon: "envelope", placeholder: "Email", binding: $loginVM.credentials.email)
                
                // Password
                CustomSecureField(icon: "key", placeholder: "Password", binding: $loginVM.credentials.password)
                
                // Submit button
                Button {
                    //
//                    loginVM.login { success in
//                        authentication.updateValidation(success: success)
//                    }
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
                .padding(.horizontal)
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

struct CustomTextField: View {
    @State var icon: String
    @State var placeholder: String
    @Binding var binding: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            TextField(placeholder, text: $binding)
        }
        .padding(.vertical, 5)
        .foregroundColor(Color.theme.brand)
        .padding(.horizontal)
        .background{
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.theme.accent, lineWidth: 1)
        )
        .padding(.horizontal)
        .padding(.bottom)
    }
}

struct CustomSecureField: View {
    @State var icon: String
    @State var placeholder: String
    @Binding var binding: String
    @State var reveal = false
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            // Secure reveal...
            if reveal {
                TextField(placeholder, text: $binding)
            } else {
                SecureField(placeholder, text: $binding)
            }
            
            Spacer()
            Image(systemName: reveal ? "eye.slah" : "eye")
                .onTapGesture {
                    reveal.toggle()
                }
        }
        .padding(.vertical, 5)
        .foregroundColor(Color.theme.brand)
        .padding(.horizontal)
        .background{
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.theme.accent, lineWidth: 1)
        )
        .padding(.horizontal)
        .padding(.bottom)
    }
}
