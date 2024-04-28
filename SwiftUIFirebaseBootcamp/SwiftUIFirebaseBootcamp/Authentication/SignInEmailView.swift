//
//  SignInEmailView.swift
//  SwiftUIFirebaseBootcamp
//
//  Created by Trung Kiên Nguyễn on 28/4/24.
//

import SwiftUI

final class SignInEmailViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            return
        }
        
        Task {
            do {
                let returnData = try await AuthenticationManger.shared.createUser(email: email, password: password)
                print("Success")
                print(returnData)	
            } catch {
                print("Error", error)
            }
        }
    }
    
}


struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        VStack {
            TextField("Email", text: $viewModel.email)
                .padding()
                .foregroundColor(.white)
                .background(Color.gray.cornerRadius(10))
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .foregroundColor(.white)
                .background(Color.gray.cornerRadius(10))
            
            
            Button {
                viewModel.signIn()
            } label: {
                Text("Sign in")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.cornerRadius(10))
                    
            }
            
            Spacer()
        }
        .navigationTitle("Sign in with email")
        .padding()
    }
}

#Preview {
    NavigationStack {
        SignInEmailView()
    }
}
