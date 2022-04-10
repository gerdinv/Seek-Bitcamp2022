//
//  APIError.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import Foundation

enum APIError: Error {
    case INVALID_RESPONSE
    case INVALID_DATA
    case UNABLE_TO_DECODE
    case UNABLE_TO_CREATE_IMAGE
}
