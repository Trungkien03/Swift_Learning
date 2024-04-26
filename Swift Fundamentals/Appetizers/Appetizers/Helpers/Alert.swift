//
//  Alert.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI


struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid response from the server. Please try again later or contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("This was an issue connecting to the server. If this persists, please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidForm = AlertItem(title: Text("Invalid Form Data"),
                                       message: Text("Please ensure all fields in the form have been filled out."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("Please ensure your emaill is correct"),
                                       dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                       message: Text("Your profile information was successully saved"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                       message: Text("Your profile information was failed to save."),
                                       dismissButton: .default(Text("OK")))
}
