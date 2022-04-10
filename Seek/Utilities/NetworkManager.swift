//
//  NetworkManager.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import Foundation


import Foundation
import UIKit
import SwiftUI

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "http://0.0.0.0:8000/"
    private init() {}
    
    
    //    Returns an array of UserModel Objects
    func getPotentialRoommates(firstName : String, lastName : String, n : Int, completion: @escaping(Result<[UserModel], APIError>) -> Void) {
        
            var realUrl = baseURL + "get-cluster?first=" + firstName + "=" + lastName + "&n=" + "\(n)"
//
//        var useUrl = "http://0.0.0.0:8000/get-cluster?first=Cash&last=Foxley&n=1"
            let task = URLSession.shared.dataTask(with: URLRequest(url: URL(string: realUrl)!)) { data, res, err in
                guard let data = data, err == nil else {
                    completion(.failure(.INVALID_DATA))
                    return
                }
                
                do {
                    let ans = try JSONDecoder().decode([UserModel].self, from: data)
                    print(ans)
                    completion(.success(ans))
                    return
                } catch {
                    completion(.failure(.UNABLE_TO_DECODE))
                    return
                }
            }
            
            task.resume()
        }
    
//    Returns an array of USER MATCHES Objects (MAKE A USER MATCHES OBJ
    func getMatches(firstName : String, lastName : String, completion: @escaping(Result<[UserMatches], APIError>) -> Void) {
        var realUrl = baseURL + "get-matches"
        let task = URLSession.shared.dataTask(with: URLRequest(url: URL(string: realUrl)!)) { data, res, err in
            guard let data = data, err == nil else {
                completion(.failure(.INVALID_DATA))
                return
            }
            
            do {
                let ans = try JSONDecoder().decode([UserMatches].self, from: data)
                print(ans)
                completion(.success(ans))
                return
            } catch {
                completion(.failure(.UNABLE_TO_DECODE))
                return
            }
        }
        task.resume()
    }
    
    func postRequest(body : [String : Any]) {
        let url = URL(string: "http://www.thisismylink.com/postName.php")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)

        let task = URLSession.shared.dataTask(with: request) { data, _, err in
            guard let data = data, err == nil else {
                print("Error posting")
                return
            }
            
            do {
                let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                
            } catch {
                print("Error")
            }
        }
        task.resume()
    }
}
