//
//  AuthenticationView.swift
//  SwiftUIFirebaseBootcamp
//
//  Created by Trung Kiên Nguyễn on 27/4/24.
//

import SwiftUI

struct AuthenticationView: View {
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
            
            
        }
        .navigationTitle("Sign In")
    }
}

#Preview {
    NavigationStack {
        AuthenticationView()
    }
    
}
