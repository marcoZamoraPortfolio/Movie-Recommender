//
//  Generes.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 12/4/23.
//

import Foundation

enum Genres: String, Identifiable, CaseIterable {
    
    var id: Self {
        return self
    }
    
    case action = "Action"
    case adventure = "Adventure"
    case crime = "Crime"
    case drama = "Drama"
    case family = "Family"
    case fantasy = "Fantasy"
    case horror = "Horror"
    case mystery = "Mystery"
    case romance = "Romance"
    case sciFi = "Sci-Fi"
    case thriller = "Thriller"
    case war = "War"
    case western = "Western"
}


let mockGenre = Genres.action
 
