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
                //Login Form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .autocorrectionDisabled()
                    TLButton(title: "Sign In", background: .blue, action: {
                        // Attempt Sign In
                    })
                }
                .frame(width: UIScreen.main.bounds.width * 1)
                .offset(y: -100)
                .padding()
                
                //Create Account
                VStack{
                    Text("New Around Here")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
