//
//  NewItemViewModel.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import Foundation

class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var isShowAlert = false
    
    init(title: String = "", dueDate: Date = Date(), isShowAlert: Bool = false) {
        self.title = title
        self.dueDate = dueDate
        self.isShowAlert = isShowAlert
    }
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
