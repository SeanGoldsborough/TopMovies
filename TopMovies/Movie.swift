//
//  Movie.swift
//  TopMovies
//
//  Created by Sean Goldsborough on 11/26/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation

//struct Movie: Codable {
//    let title: String
//
//    func asDictionary() -> [String:Any] {
//        return [String:Any]()
//    }
//}
struct Movie {
    let title: String
}




func createMovie(title: String = "TEST") -> Movie {
    return Movie(title: title)
}
