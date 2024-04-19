//
//  LoginView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Email Address", text: $email)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $password)
                        .autocorrectionDisabled()
                    TLButton(title: "Sign In", background: .blue, action: {
                        // Attempt Sign In
                    })
                }
                .offset(y: -70)
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
