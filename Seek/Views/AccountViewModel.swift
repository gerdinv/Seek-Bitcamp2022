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
    }
    
    
}

