//
//  RegisterView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subtitleString: "Start Organizing Todos", angle: -15, backgroundColor: .orange)
            
            // Form
            Form {
                TextField("Full Name", text: $viewModel.fullName)
                    .padding(.vertical, 5)
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .padding(.vertical, 5)
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text: $viewModel.password)
                    .autocorrectionDisabled()
                    .padding(.vertical, 5)
                
                TLButton(title: "Sign Up", background: .green, action: {
                    viewModel.register()
                })
                .padding()
            }
            .offset(y: -100)
            
            
            Spacer()
        }
        
        
        
        

    }
}

#Preview {
    RegisterView()
}
