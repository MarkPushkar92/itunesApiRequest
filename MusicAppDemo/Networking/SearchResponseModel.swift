//
//  SearchResponseModel.swift
//  MusicAppDemo
//
//  Created by Марк Пушкарь on 22.07.2022.
//

import Foundation

struct SearchResponseModel: Codable {
    let resultCount: Int
    let results: [Tracks]
}

// MARK: - Result
struct Tracks: Codable {
    let artistName: String
    let collectionName: String?
    let trackName: String
    let artworkUrl60: String?
   
}

