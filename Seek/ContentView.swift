//
//  ContentView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    @EnvironmentObject var homePageViewModel: HomePageViewModel
    
    var body: some View {
        NavigationView {
            if (viewModel.isSignedIn) {
                TabView {
                    HomePageView().tabItem {
                        VStack {
                              Text("Home")
                              Image(systemName: "house.fill")
                          }.background(Color("bg_color"))
                    }
                    .environmentObject(viewModel)
                    
                    MainMessageView().tabItem {
                        VStack {
                              Text("Messages")
                              Image(systemName: "message.fill")
                          }.background(Color("bg_color"))
                    }
                    .environmentObject(viewModel)
                    .environmentObject(homePageViewModel)
                    .navigationBarHidden(true)
                    
                    MapScreenView().tabItem {
                        VStack {
                              Text("Map")
                              Image(systemName: "map.circle.fill")
                          }.background(Color("bg_color"))
                    }
                    .environmentObject(viewModel)
                    
                    // profile view
                    SettingsView().tabItem {
                        VStack {
                              Text("Settings")
                              Image(systemName: "person.fill")
                        }.background(Color("bg_color"))
                        
                    }
                    .environmentObject(viewModel)
                }
                .background(Color("bg_color"))
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
