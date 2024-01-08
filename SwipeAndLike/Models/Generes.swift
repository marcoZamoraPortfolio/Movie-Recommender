//
//  Generes.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 12/4/23.
//

import Foundation

enum Generes: String, Identifiable, CaseIterable {
    var id: Self {
        return self
    }
    
    case action = "Action"
    case adult = "Adult"
    case adventure = "Adventure"
    case animation = "Animation"
    case biography = "Biography"
    case crime = "Crime"
    case documentary = "Documentary"
    case drama = "Drama"
    case family = "Family"
    case fantasy = "Fantasy"
    case history = "History"
    case horror = "Horror"
    case musical = "Musical"
    case mystery = "Mystery"
    case romance = "Romance"
    case sciFi = "Sci-Fi"
    case thriller = "Thriller"
    case war = "War"
    case western = "Western"
}


let mockGenere = Generes.action
 
