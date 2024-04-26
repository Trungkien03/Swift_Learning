//
//  Appetizer.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import Foundation

struct Appetizer: Codable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let calories: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleData: Appetizer = Appetizer(id: 1,
                                                    name: "Asian Flank Steak",
                                                    description: "This perfectly thin cut just melts in your mouth.",
                                                    price: 8.99,
                                                    imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
                                                    protein: 14,
                                                    calories: 300,
                                                    carbs: 0)
    
    static let appetizers: [Appetizer] = [sampleData, Appetizer(id: 2,
                                                                name: "Asian Flank Steak",
                                                                description: "This perfectly thin cut just melts in your mouth.",
                                                                price: 8.99,
                                                                imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
                                                                protein: 14,
                                                                calories: 300,
                                                                carbs: 0)]
}
