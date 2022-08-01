//
//  NetworkDataFetcher.swift
//  MusicAppDemo
//
//  Created by Марк Пушкарь on 01.08.2022.
//

import Foundation

class NetworkDataFetcher {
    
    let networkService = NetworkService()
    
    func fetchTasks(urlString: String, response: @escaping (SearchResponseModel?) -> Void) {
        networkService.request(urlString: urlString) { result in
            switch result {
                
            case .success(let data):
                do {
                    let tracks = try JSONDecoder().decode(SearchResponseModel.self, from: data)
                    response(tracks)
                } catch let jsonError{
                    print("Failed to decode JSON", jsonError)
                }
            case .failure(let error):
                print("\(error)")
                response(nil)
            }
        }
    }
}

