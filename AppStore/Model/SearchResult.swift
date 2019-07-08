//
//  SearchResult.swift
//  AppStore
//
//  Created by Cristian Leonel Gibert on 07/07/2019.
//  Copyright © 2019 Cristian Gibert. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String
}
