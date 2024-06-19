//
//  Movie.swift
//  Calander
//
//  Created by 남기윤 on 2024/06/17.
//

import Foundation

struct Movie {
    var title: String
    var director: String
    var date: Date
    var theater: String
    var seat: String
    var rating: Double
    var review: String
    var poster: String?
    
    // 기본 생성자
    init(title: String, director: String, date: Date, theater: String, seat: String, rating: Double, review: String, poster: String? = nil) {
        self.title = title
        self.director = director
        self.date = date
        self.theater = theater
        self.seat = seat
        self.rating = rating
        self.review = review
        self.poster = poster
    }
}
