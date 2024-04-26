//
//  AccountView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDay = Date()
    @State private var extraNapkin = false
    @State private var frequentRefills = false
    
    
    var body: some View {
        NavigationView {
            Form(content: {
                Section(header: Text("Personal Info"), content: {
                    TextField("First Name", text: $firstName )
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("BirthDay", selection: $birthDay, displayedComponents: .date)
                    
                    Button(action: {
                        print("Save")
                    }, label: {
                        Text("Save Changes")
                    })
                })
                
                Section(header: Text("Requests"), content: {
                    Toggle("Extra Napkins", isOn: $extraNapkin)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                })
                
            })
                .navigationTitle("Accounts")
        }
    }
}

#Preview {
    AccountView()
}
