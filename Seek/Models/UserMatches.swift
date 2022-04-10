//
//  UserMatches.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/10/22.
//

import Foundation

struct UserMatchesResponse: Codable {
    let results: [UserMatches]
}

struct UserMatches: Codable, Identifiable {
    var id: Int8
    let cluster : String
    let first_name : String
    let last_name : String
    let email : String
    let gender : String
    let University : String
    let Age : Int8
    let Class_Graduation_Year : String
    let Lease_Term : Int8
    let Major : String
    let Sports : String
    let Gaming : String
    let Coding : String
    let Outdoors : String
    let Movies : String
    let Art : String
    let Anime : String
    let Foodie : String
    let Music : String
    let Travel : String
    let Interest_1: String
    let Interest_2 : String
    let Interest_3 : String
}
