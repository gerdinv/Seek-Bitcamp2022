//
//  RegisterView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordConfirmation: String = ""
    @State var birthday: String = ""
    @State private var selectedFlavor: String = ""

    var body: some View {
        VStack(spacing: 10) {
            Text("Create an Account")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
                .frame(width: 0, height: 30)
            
            CustomTextField(myText: $username,
                            isSecure: false,
                            imageName: "person.fill",
                            placeholder: Text("Full Name"))
            
            CustomTextField(myText: $email,
                            isSecure: false,
                            imageName: "envelope.badge",
                            placeholder: Text("Email"))
            
            CustomTextField(myText: $password,
                            isSecure: true,
                            imageName: "lock",
                            placeholder: Text("Password"))
            
            CustomTextField(myText: $passwordConfirmation,
                            isSecure: true,
                            imageName: "lock",
                            placeholder: Text("Confirm Password"))
            
     
            FilledButton(text: "Continue") {
                print("HEY")
            }
            .padding(.top, 25)
            
            Spacer()
        }
        .padding()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
