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
                                    "Lease_Term" : leaseLength == 0 ? 6 : 12,
                        "Major": majorsClicked[0],
                                    "Sports" : hobbies.contains("Sports") ? 1 : 0,
                      "Gaming" : hobbies.contains("Gaming") ? 1 : 0,
                      "Coding" : hobbies.contains("Coding") ? 1 : 0,
                    "Outdoors" : hobbies.contains("Outdoors") ? 1 : 0,
                      "Movies" : hobbies.contains("Movies") ? 1 : 0,
                         "Art" : hobbies.contains("Art") ? 1 : 0,
                       "Anime" : hobbies.contains("Anime") ? 1 : 0,
                      "Foodie" : hobbies.contains("Foodie") ? 1 : 0,
                       "Music" : hobbies.contains("Music") ? 1 : 0,
                      "Travel" : hobbies.contains("Travel") ? 1 : 0,
                  "Interest_1" : hobbies[0],
                  "Interest_2" : hobbies[1],
                  "Interest_3" : hobbies[2]
        ] 
        body = arr
        print(arr)
    }
}
