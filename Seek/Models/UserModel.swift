//
//  UserModel.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import Foundation

struct UserModelResponse: Codable {
    let results: [UserModel]
}

struct UserModel: Codable, Hashable {
//    var id: Int8
    let cluster : Int
    let first_name : String
    let last_name : String
    let email : String
    let gender : String
    let University : String
    let Age : Int
    let Class_Graduation_Year : Int
    let Lease_Term : Int
    let Major : String
    let Sports : Int
    let Gaming : Int
    let Coding : Int
    let Outdoors : Int
    let Movies : Int
    let Art : Int
    let Anime : Int
    let Foodie : Int
    let Music : Int
    let Travel : Int
    let Interest_1: String
    let Interest_2 : String
    let Interest_3 : String
}


