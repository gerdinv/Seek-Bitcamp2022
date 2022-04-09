//
//  ContentView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    var body: some View {
        NavigationView {
            if (!viewModel.isSignedIn) {
                TabView {
                    HomePageView().tabItem {
                        VStack {
                              Text("Home")
                              Image(systemName: "house.fill")
                          }
                    }
                    
                    MatchesView().tabItem {
                        VStack {
                              Text("Home")
                              Image(systemName: "house.fill")
                          }
                    }
                    
                    ProfileView().tabItem {
                        VStack {
                              Text("Settings")
                              Image(systemName: "person.fill")
                          }
                    }
                }
                .tabViewStyle(.automatic)
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
