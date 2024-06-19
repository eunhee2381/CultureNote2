//
//  Exhibit.swift
//

import Foundation

struct Exhibit {
    var id: Int
    var title: String
    var author: String
    var hall: String
    var date: Date
    var rating: Double
    var review: String
    var poster: String?
    
    // 기본 생성자
    init(id: Int, title: String, author: String, hall: String, date: Date, rating: Double, review: String, poster: String? = nil) {
        self.id = id
        self.title = title
        self.author = author
        self.hall = hall
        self.date = date
        self.rating = rating
        self.review = review
        self.poster = poster
    }
}

extension Exhibit {
    
    // exhibit 인스턴스를 딕셔너리로 변환하여 리턴
    static func toDict(exhibit: Exhibit) -> [String: Any] {
        var dict = [String: Any]()
        
        dict["id"] = exhibit.id
        dict["title"] = exhibit.title
        dict["author"] = exhibit.author
        dict["hall"] = exhibit.hall
        dict["date"] = exhibit.date
        dict["rating"] = exhibit.rating
        dict["review"] = exhibit.review
        dict["poster"] = exhibit.poster
        
        return dict
    }
    
    // 딕셔너리를 exhibit 인스턴스로 변환하여 리턴
    static func fromDict(dict: [String:Any]) -> Exhibit {
        
        let id = dict["id"] as! Int
        let title = dict["title"] as! String
        let author = dict["author"] as! String
        let hall = dict["hall"] as! String
        let date = dict["date"] as! Date
        let rating = dict["rating"] as! Double
        let review = dict["review"] as! String
        let poster = dict["poster"] as! String
        
        return Exhibit(id: id, title: title, author: author, hall: hall, date: date, rating: rating, review: review)
    }
}
