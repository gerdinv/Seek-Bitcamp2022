//
//  HomePageViewModel.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import Foundation
import Parse

final class HomePageViewModel: ObservableObject {
    @Published var fName : String = ""
    @Published var lName : String = ""
    @Published var num : Int = 0
    

    @Published var potentialRoommates : [UserModel] = []
    
    init() {
        loadPotentialRoommates()
    }
    
    func loadPotentialRoommates() {
        NetworkManager.shared.getPotentialRoommates(firstName: fName, lastName: lName, n: num, completion: { [self] result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let users):
                        self.potentialRoommates = users
                    case .failure(let err):
                        switch err {
                        case .INVALID_RESPONSE:
                            print("Invalid response!")
                        case .INVALID_DATA:
                            print("Invalid data!")
                        case .UNABLE_TO_DECODE:
                            print("Unable to decode!")
                        case .UNABLE_TO_CREATE_IMAGE:
                            print("Unable to convert Image!")
                        }
                    }
                }
        })
    }
}
