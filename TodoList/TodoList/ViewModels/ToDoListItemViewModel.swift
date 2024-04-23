//
//  ToDoListItemViewModel.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class ToDoListItemViewModel: ObservableObject {
    init() {
            
    }
    
    func toggleIsDone( item: ToDoListItem) {
        var itemCopy = item;
        itemCopy.isDone = !item.isDone ? true : false
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(item.id)
            .setData(itemCopy.asDictinary())
        
    }
}
