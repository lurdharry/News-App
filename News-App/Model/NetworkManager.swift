//
//  NetworkManager.swift
//  News-App
//
//  Created by Hammed on 18/01/2023.
//

import Foundation

class NetworkManager: ObservableObject {
    
    
    func fetchData(from url  : String,completion: @escaping([News]) -> Void)  {

        if let url = URL(string: url) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results  =  try  decoder.decode(Results.self, from: safeData)
                            completion(results.articles)
                        } catch  {
                            print(error)
                        }
                    }
                }
            }
            
            task.resume()
        }
    }
}

