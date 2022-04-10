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
    @Published var body : [String : Any] = [:]

    func toString() {
        let arr : [String : Any] = ["first_name" : fullname.split(separator: " "),
                    "last_name" : fullname.split(separator: " ")[1],
                       "email" : email,
                      "gender" : "Male",
                  "university" : school,
                 "Lease_Term" : 12,
                        "Major": "Computer Science",
                      "Sports" : 0,
                      "Gaming" : 0,
                      "Coding" : 0,
                    "Outdoors" : 0,
                      "Movies" : 0,
                         "Art" : 0,
                       "Anime" : 0,
                      "Foodie" : 1,
                       "Music" : 1,
                      "Travel" : 0,
                  "Interest_1" : "Music",
                  "Interest_2" : "Art",
                  "Interest_3" : "Coding"
        ] 
        body = arr
        print(arr)
    }
}
