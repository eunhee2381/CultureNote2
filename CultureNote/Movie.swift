//
//  Movie.swift
//  Calander
//
//  Created by 남기윤 on 2024/06/17.
//

import Foundation

struct Movie {
    var id: Int
    var title: String
    var director: String
    var date: Date
    var theater: String
    var seat: String
    var rating: Double
    var review: String
    var poster: String?
    
    // 기본 생성자
    init(id: Int, title: String, director: String, date: Date, theater: String, seat: String, rating: Double, review: String, poster: String? = nil) {
        self.id = id
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

extension Movie {
    
    // movie 인스턴스를 딕셔너리로 변환하여 리턴
    static func toDict(movie: Movie) -> [String: Any] {
        var dict = [String: Any]()
        
        dict["id"] = movie.id
        dict["title"] = movie.title
        dict["director"] = movie.director
        dict["date"] = movie.date
        dict["theater"] = movie.theater
        dict["seat"] = movie.seat
        dict["rating"] = movie.rating
        dict["review"] = movie.review
        dict["poster"] = movie.poster
        
        return dict
    }
    
    // 딕셔너리를 movie 인스턴스로 변환하여 리턴
    static func fromDict(dict: [String:Any]) -> Movie {
        
        let id = dict["id"] as! Int
        let title = dict["title"] as! String
        let director = dict["director"] as! String
        let date = dict["date"] as! Date
        let theater = dict["theater"] as! String
        let seat = dict["seat"] as! String
        let rating = dict["rating"] as! Double
        let review = dict["review"] as! String
        let poster = dict["poster"] as! String
        
        return Movie(id: id, title: title, director: director, date: date, theater: theater, seat: seat, rating: rating, review: review)
    }
}
