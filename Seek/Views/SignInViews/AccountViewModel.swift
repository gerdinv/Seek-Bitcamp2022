//
//  LoginViewModel.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import Foundation
import Parse

class AccountViewModel: ObservableObject {
    
    @Published var signedIn = false
    @Published var currUser : UserModel = UserModel( cluster: 1, first_name: "Bob", last_name: "Jones", email: "", gender: "", University: "University of Maryland", Age: 2, Class_Graduation_Year: 1, Lease_Term: 2, Major: "Computer Science", Sports: 1, Gaming: 1, Coding: 1, Outdoors: 1, Movies: 1, Art: 1, Anime: 1, Foodie: 1, Music: 1, Travel: 1, Interest_1: "Football", Interest_2: "Pool", Interest_3: "")
    
    var isSignedIn: Bool {
        return PFUser.current() != nil
    }
    
    func signIn(username: String, password: String) {
        PFUser.logInWithUsername(inBackground:username, password:password) { [weak self]
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
              DispatchQueue.main.async {
                  self?.signedIn = true
              }
          } else {
              print("Failed login")
          }
        }
    }
    
    func logout() {
        PFUser.logOut()
        DispatchQueue.main.async {
            self.signedIn = false
        }
    }
    
    func signup(username: String, password: String) {
        let user = PFUser()
        user.username = username
        user.password = password
        user.signUpInBackground { [weak self]
            (succeeded: Bool, error: Error?) -> Void in
            if let error = error {
                let errorString = error.localizedDescription
                print(errorString)
            } else {
                DispatchQueue.main.async {
                    self?.signedIn = true
                }
            }
        }
        
        // Add cockroach DB save for rest of info
        
    }
    
    
}

