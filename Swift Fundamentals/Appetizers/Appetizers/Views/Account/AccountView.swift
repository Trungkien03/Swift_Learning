//
//  AccountView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AccountView: View {
    @StateObject var modelView = AccountViewModel()
    
    
    var body: some View {
        NavigationView {
            Form(content: {
                Section(header: Text("Personal Info"), content: {
                    TextField("First Name", text: $modelView.user.firstName )
                    TextField("Last Name", text: $modelView.user.lastName)
                    TextField("Email", text: $modelView.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("BirthDay", selection: $modelView.user.birthDay, displayedComponents: .date)
                    
                    
                    Button(action: {
                        modelView.saveChanges()
                    }, label: {
                        Text("Save Changes")
                    })
                })
                
                Section(header: Text("Requests"), content: {
                    Toggle("Extra Napkins", isOn: $modelView.user.extraNapkin)
                    Toggle("Frequent Refills", isOn: $modelView.user.frequentRefills)
                })
                .toggleStyle(SwitchToggleStyle(tint: .mainBrandPrimary))
                
            })
            .navigationTitle("Accounts")
        }
        .onAppear{
            modelView.retrieveUser()
        }
        .alert(item: $modelView.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
        
    }
}

#Preview {
    AccountView()
}
