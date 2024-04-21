//
//  LoginView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView(
                    title: "To Do List",
                    subtitleString: "Get Things Done",
                    angle: 15,
                    backgroundColor: Color.pink)
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .autocorrectionDisabled()
                    TLButton(title: "Sign In", background: .blue, action: {
                        viewModel.login()
                    })
                }
                .offset(y: -100)
                .padding()
                
                //Create Account
                VStack{
                    Text("New Around Here")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
