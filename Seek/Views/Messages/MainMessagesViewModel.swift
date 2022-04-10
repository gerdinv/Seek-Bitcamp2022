//
//  MainMessagesViewModel.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/10/22.
//

import Foundation

final class MainMessagesViewModel: ObservableObject {

    @Published var matches : [UserModel] = []
    
    init() {
//        loadPotentialMatches()
    }
    
//    func loadPotentialMatches() {
//        NetworkManager.shared.getPotentialRoommates { [self] result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let users):
//                    self.matches = users
//                case .failure(let err):
//                    switch err {
//                    case .INVALID_RESPONSE:
//                        print("Invalid response!")
//                    case .INVALID_DATA:
//                        print("Invalid data!")
//                    case .UNABLE_TO_DECODE:
//                        print("Unable to decode!")
//                    case .UNABLE_TO_CREATE_IMAGE:
//                        print("Unable to convert Image!")
//                    }
//                }
//            }
//        }
//    }
}
