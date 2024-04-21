//
//  User.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import Foundation

struct User: Codable {
    let id: String;
    let fullName: String;
    let email: String;
    let joined: TimeInterval;
    
}
