//
//  ToDoListViewModel.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import Foundation
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId:String) {
        self.userId = userId
    }
    
    
    
    ///  delete to do list item
    /// - Parameter id: item id to delete
    func deleteItem(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}
