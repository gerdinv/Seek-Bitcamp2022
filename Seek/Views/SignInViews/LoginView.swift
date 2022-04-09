//
//  LoginView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @EnvironmentObject var viewModel: AccountViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            CustomTextField(myText: $username,
                            isSecure: false, imageName: "person.fill",
                            placeholder: Text("Username"))
            
            CustomTextField(myText: $password,
                            isSecure: true, imageName: "lock",
                            placeholder: Text("Password"))
            
            Text("Forgot Password")
                .font(.system(size: 12, weight: .semibold))
                .padding(.leading, 160)
            
            FilledButton(text: "LOGIN") {
                viewModel.signIn(username: username, password: password)
            }
            
            
            
            HStack {
                Rectangle()
                    .frame(width: 110, height: 1)
                Text("or")
                Rectangle()
                    .frame(width: 110, height: 1)
            }
            .foregroundColor(.secondary)
            .padding()
            
            HStack (spacing: 40){
                Image("ig_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .cornerRadius(12)
                
                Image("twitter_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .cornerRadius(12)
                
                Image("google_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .cornerRadius(12)
            }
            
            HStack(spacing: 5) {
                Text("Don't have an account?")
                    .fontWeight(.medium)
                NavigationLink {
//                    RegistrationView()
                } label: {
                    Text("Sign up.")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            .font(.system(size: 15))
            .padding()
        }
        .padding(.top, 20)
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct CustomTextField: View {
    @Binding var myText : String
    @State var isSecure : Bool
    
    var imageName : String
    var placeholder : Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if myText.isEmpty {
                placeholder
                    .fontWeight(.medium)
                    .opacity(0.5)
                    .padding(.leading, 30)
            }
            HStack(spacing: 10) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                if (isSecure) {
                    SecureField("", text: $myText)
                } else {
                    TextField("", text: $myText)
                }
            }
        }
        .padding(20)
        .frame(width: 280, height: 50)
        .overlay(GradientBoarder())
    }
}

struct FilledButton: View {
    var text : String
    var action : ()->Void
    var body: some View {
        Button(action: action) {
            Text(text)
                .bold()
                .frame(width: 220, height: 50)
                .foregroundColor(.white)
                .background(.red)
                .clipShape(Capsule())
        }
    }
}
