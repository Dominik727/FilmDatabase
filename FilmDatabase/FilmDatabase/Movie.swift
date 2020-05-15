//
//  Movie.swift
//  FilmDatabase
//
//  Created by Suszter Dominik on 2020. 05. 15..
//  Copyright © 2020. Suszter Dominik. All rights reserved.
//

import Foundation

struct MovieResponse : Decodable {
    var page : Int
    var total_results : Int
    var total_pages: Int
    var results : [Movie]
}
struct Movie:Decodable {
    var popularity: String
    var title: String
    var vote_average: Int
    var release_date: Date
}
