//
//  AuthenticationView.swift
//  SwiftUIFirebaseBootcamp
//
//  Created by Trung Kiên Nguyễn on 27/4/24.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift
import FirebaseAuth

@MainActor
final class AuthenticationViewModel: ObservableObject {
    
    func signInGoogle() async throws {
        guard let topVC =  Utilities.shared.topViewController() else {
            throw URLError(.cannotFindHost)
        }
        
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topVC)
        
        let user = gidSignInResult.user
        
        guard let idToken = user.idToken?.tokenString else {
            throw URLError(.badServerResponse)
        }
        
        try await AuthenticationManger.shared.signInWithGoogle(idToken: idToken, accessToken: user.accessToken.tokenString)
        
        
    }
}


struct AuthenticationView: View {
    @StateObject var viewModel = AuthenticationViewModel()
    
    var body: some View {
        VStack {
            
            
            NavigationLink {
                Text("Hello")
            } label: {
                Text("Sign in with Email")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(10))
            }
            
            
            GoogleSignInButton(viewModel: GoogleSignInButtonViewModel(scheme: .dark, style: .standard, state: .normal), action: {
                Task {
                    do {
                        try await viewModel.signInGoogle()
                    } catch {
                        print(error)
                    }
                }
            })
            .padding()
            .frame(width: 250)
            .cornerRadius(10)
            
            
            
        }
        .navigationTitle("Sign In")
    }
}

#Preview {
    NavigationStack {
        AuthenticationView()
    }
    
}
