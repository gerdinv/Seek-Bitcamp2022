//
//  SettingsView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    
    var body: some View {
        ZStack {
            Color("bg_color").ignoresSafeArea(.all, edges: .all)

            VStack {
                CircularImageView(photo: "profile")
                Text(viewModel.currUser.first_name + " " + viewModel.currUser.last_name)
                    .font(.system(size: 12, weight: .semibold))
                Text(viewModel.currUser.University)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.secondary)
                Spacer().frame(height: 30)
                VStack(spacing: 15){
                    NavigationLink {
                        Text("HEY")
                    } label: {
                        NavigationTextView(text: "Edit Profile")
                    }
                    NavigationLink {
                        Text("HEY")
                    } label: {
                        NavigationTextView(text: "Notfication Settings")
                    }
                    NavigationLink {
                        Text("HEY")
                    } label: {
                        NavigationTextView(text: "My Location")
                    }
                    
                    Button {
                        viewModel.logout()
                    } label: {
                        NavigationTextView(text: "Log Out")
                        
                    }

                }
            }.frame(width: 330, height: 450)
                .background(.white)
                .cornerRadius(20)
            .shadow(radius: 20)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
