//
//  Book.swift
//

import Foundation

struct Book {
    var id: Int
    var title: String
    var author: String
    var startdate: Date
    var enddate: Date
    var review: String
    var image: String?
    
    // 기본 생성자
    init(id: Int, title: String, author: String, startdate: Date, enddate: Date, review: String, image: String? = nil) {
        self.id = id
        self.title = title
        self.author = author
        self.startdate = startdate
        self.enddate = enddate
        self.review = review
        self.image = image
    }
}

extension Book {
    
    // book 인스턴스를 딕셔너리로 변환하여 리턴
    static func toDict(book: Book) -> [String: Any] {
        var dict = [String: Any]()
        
        dict["id"] = book.id
        dict["title"] = book.title
        dict["author"] = book.author
        dict["startdate"] = book.startdate
        dict["enddate"] = book.enddate
        dict["review"] = book.review
        dict["image"] = book.image
        
        return dict
    }
    
    // 딕셔너리를 book 인스턴스로 변환하여 리턴
    static func fromDict(dict: [String:Any]) -> Book {
        
        let id = dict["id"] as! Int
        let title = dict["title"] as! String
        let author = dict["author"] as! String
        let startdate = dict["startdate"] as! Date
        let enddate = dict["enddate"] as! Date
        let review = dict["review"] as! String
        let image = dict["image"] as! String
        
        return Book(id: id, title: title, author: author, startdate: startdate, enddate: enddate, review: review)
    }
}
