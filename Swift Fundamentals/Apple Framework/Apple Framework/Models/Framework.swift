//
//  Framework.swift
//  Apple Framework
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import Foundation

struct Framework: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
