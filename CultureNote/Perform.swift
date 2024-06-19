//
//  Perform.swift
//

import Foundation

struct Perform {
    var id: Int
    var genre: String
    var title: String
    var date: Date
    var theater: String
    var seat: String
    var price: Int
    var review: String
    var poster: String?
    
    // 기본 생성자
    init(id: Int, genre: String, title: String, date: Date, theater: String, seat: String, price: Int, review: String, poster: String? = nil) {
        self.id = id
        self.genre = genre
        self.title = title
        self.date = date
        self.theater = theater
        self.seat = seat
        self.price = price
        self.review = review
        self.poster = poster
    }
}

extension Perform {
    
    // perform 인스턴스를 딕셔너리로 변환하여 리턴
    static func toDict(perform: Perform) -> [String: Any] {
        var dict = [String: Any]()
        
        dict["id"] = perform.id
        dict["genre"] = perform.genre
        dict["title"] = perform.title
        dict["date"] = perform.date
        dict["theater"] = perform.theater
        dict["seat"] = perform.seat
        dict["price"] = perform.price
        dict["review"] = perform.review
        dict["poster"] = perform.poster
        
        return dict
    }
    
    // 딕셔너리를 perform 인스턴스로 변환하여 리턴
    static func fromDict(dict: [String:Any]) -> Perform {
        
        let id = dict["id"] as! Int
        let genre = dict["genre"] as! String
        let title = dict["title"] as! String
        let date = dict["date"] as! Date
        let theater = dict["theater"] as! String
        let seat = dict["seat"] as! String
        let price = dict["price"] as! Int
        let review = dict["review"] as! String
        let poster = dict["poster"] as! String
        
        return Perform(id: id, genre: genre, title: title, date: date, theater: theater, seat: seat, price: price, review: review)
    }
}
