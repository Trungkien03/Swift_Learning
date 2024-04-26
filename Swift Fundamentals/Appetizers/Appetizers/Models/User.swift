//
//  User.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDay = Date()
    var extraNapkin = false
    var frequentRefills = false
}
