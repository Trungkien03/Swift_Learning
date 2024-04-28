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
}
