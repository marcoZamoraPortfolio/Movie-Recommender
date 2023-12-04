//
//  Movie.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/27/23.
//

import Foundation


struct Movie: Codable {
    var title: String?
    var imageUrl: [String]?
    var genre: [String]?
    var imdbId: String?
    var imdbRating: Double?
    var released: Int?
    var synopsis: String?
    var type: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case imageUrl = "imageurl"
        case genre
        case imdbId = "imdbid"
        case imdbRating = "imdbrating"
        case released
        case synopsis
        case type
    }
}
