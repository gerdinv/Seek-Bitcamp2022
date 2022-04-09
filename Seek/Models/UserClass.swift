//
//  UserClass.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import Foundation
import UIKit

class UserClass: ObservableObject {
    @Published var fullname: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var school: String = ""

    @Published var bday: Date = Date()
    @Published var gradYear = 0
    @Published var leaseLength =  0
    
    @Published var hobbies : [String] =  []
    @Published var majorsClicked : [String] = []
    
    @Published var photos : [UIImage] = []

    func toString() {
        print(fullname + "\n" + email + "\n" + password + "\n" + school + "\n" + bday.description + "\n" + gradYear.description + "\n" + leaseLength.description + "\n" + hobbies.description + "\n" + majorsClicked.description + "\n" + photos.description)
    }
    
}


// (x) Create user class w info that can be passed throughout all the registration screens
// (x) Finish saving the user photos
// (x) Start with the swipe left, swipe right shit
// () Create user profile page for all the roommate matches
// () Fix Registration UI
// () Profile / Settings Page

