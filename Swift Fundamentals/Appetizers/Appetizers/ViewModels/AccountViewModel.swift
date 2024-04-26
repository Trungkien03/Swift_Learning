//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.trimmingCharacters(in: .whitespaces).isEmpty &&
                !user.lastName.trimmingCharacters(in: .whitespaces).isEmpty &&
                !user.email.trimmingCharacters(in: .whitespaces).isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    
    func retrieveUser(){
        guard let userData = userData else {return}
        
        do{
            user =  try JSONDecoder().decode(User.self, from: userData)
        } catch {
            print(error)
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func saveChanges(){
        guard isValidForm else {
            return
        }
        
        do {
            let data =  try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            print(error)
            alertItem = AlertContext.invalidUserData
        }
    }
}
