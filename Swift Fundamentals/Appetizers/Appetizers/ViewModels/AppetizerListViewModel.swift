//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import Foundation
import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var selectedAppetizer: Appetizer?
    @Published var alertItem: AlertItem?
    @Published var isLoadingData: Bool = false
    
    init(){
    }
    
    func getAppetizers(){
        self.isLoadingData = true
        NetworkManager.shared.getAppetizer { result in
            DispatchQueue.main.async {
                self.isLoadingData = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    self.alertItem = AlertItem(title: Text("Server Error"),
                                               message: Text(AppetizerListViewModel.errorMessages[error] ?? "Unknown Error"),
                                               dismissButton: .default(Text("OK")))
                }
            }
            
        }
    }
    
    
    static let errorMessages: [APError: String] = [
        .invalidData: "The data received from the server was invalid. Please contact support.",
        .invalidResponse: "Invalid response from the server. Please try again later or contact support.",
        .invalidURL: "There was an issue connecting to the server. If this persists, please contact support.",
        .unableToComplete: "Unable to complete your request at this time. Please check your internet connection."
    ]
    
}
