//
//  Database.swift
//  CultureNote
//
//  Created by 남기윤 on 2024/06/19.
//

import Foundation

enum DbAction {
    case add, delete, modify
}

protocol Database{
    
    // 생성자,데이터베이스에 변경이 생기면 parentNotification을 호출하여 부모에게 알림
    init(parentNotification:(([String: Any]?, DbAction?) -> Void)?)
    
    // from~toD 사이의 데이터를 읽어 parentNotification을 호출하여 부모에게 알림
    func setQuery(from: Any, to: Any)
    
    // 데이터베이스에 plan을 변경하고 ..을 호출하여 부모에게 알림
    func saveChange(key: String, object: [String: Any], action: DbAction)
}
