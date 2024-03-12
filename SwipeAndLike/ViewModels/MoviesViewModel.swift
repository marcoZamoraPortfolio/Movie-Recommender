//
//  Movies.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/26/23.
//

import Foundation

class MoviesViewModel {
    
    func retrieveMovies(onSuccess: @escaping (MovieData) -> (), onFailure: @escaping (Error) -> ()) {
        let headers = [
            "X-RapidAPI-Key": SystemKeys.apiKey.rawValue,
            "X-RapidAPI-Host": "ott-details.p.rapidapi.com"
        ]
        let page = Int.random(in: 1..<15)
        let request = NSMutableURLRequest(url: NSURL(string: "https://ott-details.p.rapidapi.com/advancedsearch?start_year=1980&end_year=2020&min_imdb=6&max_imdb=10&genre=action&language=english&type=movie&sort=latest&page=" + String(page))! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error as Any)
            }
            do {
                if let data = data {
                    let movies = try JSONDecoder().decode(MovieData.self, from: data)
                    onSuccess(movies)
                }
            } catch {

                onFailure(MoviesDataError.unknown)
            }
        })
        dataTask.resume()
    }
}
