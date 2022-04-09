//
//  AppDelegate.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import Foundation
import Parse
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let parseConfig = ParseClientConfiguration {
            $0.applicationId = Secrets.applicationId
            $0.clientKey = Secrets.clientKey
            $0.server = Secrets.server
        }
        Parse.initialize(with: parseConfig)

        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let config = UISceneConfiguration(name: "My Scene Delegate", sessionRole: connectingSceneSession.role)
        config.delegateClass = SceneDelegate.self
        return config
    }
    
    // MARK: UISceneSession Lifecycle


    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
