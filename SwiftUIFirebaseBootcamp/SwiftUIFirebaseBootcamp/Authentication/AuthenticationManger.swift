//
//  AuthenticationManger.swift
//  SwiftUIFirebaseBootcamp
//
//  Created by Trung Kiên Nguyễn on 28/4/24.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

final class AuthenticationManger {
    static let shared = AuthenticationManger()
    
    
    func getAuthenticationUser() throws -> AuthDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        return AuthDataResultModel(user: user)
    }
    
    func createUser(email:String, password:String) async throws -> AuthDataResultModel {
        let data = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: data.user)
    }
    
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    @discardableResult
    func signInWithGoogle(idToken:String, accessToken: String) async throws -> AuthDataResultModel {
        let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                         accessToken: accessToken)
        let authDataResult = try await Auth.auth().signIn(with: credential)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
}
