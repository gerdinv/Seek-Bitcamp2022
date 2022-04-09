//
//  Flavor.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import Foundation

enum Interests: String, CaseIterable, Identifiable {
    var id: Self { self }
    case TRAVEL
    case OUTDOORS
    case ANIME
    case GAMING
    case SPORTS
    case MOVIES
    case ART
    case ACCOUNTING
    case COMPUTER_SCIENCE
    case CODING
    case FOODIE
    case BIOLOGY
    case NURSING
    case ENGINEERING
    case LIBERAL_ARTS
    case BUSINESS
}
