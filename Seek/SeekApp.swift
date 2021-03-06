//
//  SeekApp.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

@main
struct SeekApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            let viewModel = AccountViewModel()
            let appI = UserClass()
            let hpvm = HomePageViewModel()
            ContentView().environmentObject(viewModel)
                .environmentObject(appI)
                .environmentObject(hpvm)
        }
    }
}
