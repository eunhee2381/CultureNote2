//
//  DbFirebase.swift
//

import Foundation
import FirebaseFirestore

class DbFirebase: Database {
    var reference: CollectionReference = Firestore.firestore().collection("note")
    
    var parentNotification: (([String: Any]?, DbAction?) -> Void)?
    var existQuery: ListenerRegistration?
    
    required init(parentNotification: (([String: Any]?, DbAction?) -> Void)?){
        self.parentNotification = parentNotification
    }
    
    func setQuery(from: Any, to: Any) {
        if let query = existQuery{
            query.remove()
        }
        let query = reference.whereField("id", isGreaterThan: 0).whereField("id", isLessThanOrEqualTo: 10000)
        existQuery = query.addSnapshotListener(onChangingData)
    }
    func saveChange(key: String, object: [String : Any], action: DbAction) {
        if action == .delete {
            reference.document(key).delete()
            return
        }
        reference.document(key).setData(object)
    }
    
    func onChangingData(querySnapshot: QuerySnapshot?, error: Error?) {
        guard let querySnapshot = querySnapshot else {return}
        
        if (querySnapshot.documentChanges.count == 0) {
            return
        }
        
        for documentChange in querySnapshot.documentChanges{
            let dict = documentChange.document.data()
            var action: DbAction?
            switch(documentChange.type) {
                case .added: action = .add
                case .modified: action = .modify
                case .removed: action = .delete
            }
            
            //부모에게 알림
            if let parentNotification = parentNotification{parentNotification(dict, action)}
        }    }
}
