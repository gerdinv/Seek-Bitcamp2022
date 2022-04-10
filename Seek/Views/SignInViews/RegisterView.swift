//
//  RegisterView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var newUser : UserClass
    
    var colors : [Color] = [.red, .green, .blue, .purple, .pink, .brown]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Create an Account")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 0, height: 10)
            VStack {
                CustomTextField(myText: $newUser.fullname,
                                isSecure: false,
                                imageName: "person.fill",
                                placeholder: Text("Full Name"))
                
                CustomTextField(myText: $newUser.email,
                                isSecure: false,
                                imageName: "envelope.badge",
                                placeholder: Text("Email"))
                
                CustomTextField(myText: $newUser.password,
                                isSecure: true,
                                imageName: "lock",
                                placeholder: Text("Password"))
            }
            
            VStack(alignment: .leading) {
                DatePicker("Birth date:", selection: $newUser.bday, in: ...Date(), displayedComponents: .date)
                    .datePickerStyle(.compact)
                    .frame(width: 280)
                    .font(.system(size: 20, weight: .semibold))
                Text("Graduation Year:")
                    .fontWeight(.semibold)
                Picker("What is your graduation year?", selection: $newUser.gradYear) {
                    Text("2022").tag(0)
                    Text("2023").tag(1)
                    Text("2024").tag(2)
                    Text("2025").tag(3)
                    Text("2026").tag(4)
                    Text("2027").tag(5)
                }
                .pickerStyle(.segmented)
                Text("Desired Lease Length")
                    .fontWeight(.semibold)
                Picker("What is your desired lease length?", selection: $newUser.leaseLength) {
                    Text("6 Months").tag(0)
                    Text("12 Months").tag(1)
                }
                .pickerStyle(.segmented)
            }
            .frame(width: 280)
            
            NavigationLink {
                ExtraSignupInfo().environmentObject(newUser)
            } label: {
                CustomNextButton()
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
