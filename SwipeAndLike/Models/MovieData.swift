//
//  MovieData.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 12/4/23.
//

import Foundation


struct MovieData: Codable {
    var movies: [Movie]
    
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}

enum MoviesDataError: Error{
    case unknown
}
