//
//  ProfileView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var modelView = ProfileViewModel()
//    @Binding var userId: String
//    
//    init(userId: String) {
//        self.userId = userId
//    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Member Since
                if let user = modelView.user {
                   Profile(user: user)
                } else {
                    Text("Profile Loading...")
                }
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
        .onAppear(perform: {
            modelView.fetchUser()
        })
    }
    @ViewBuilder
    func Profile(user: User) -> some View {
        VStack(alignment: .leading, content: {
            HStack(content: {
                Text("Name: ")
                    .bold()
                Text("\(user.fullName)")
            })
            .padding()
            
            HStack(content: {
                Text("Email:")
                    .bold()
                Text("\(user.email)")
            })
            .padding()
            
            HStack(content: {
                Text("Member Since:")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            })
            .padding()
            
        })
        
        
        // Button
        Button("Logout") {
            modelView.logOut()
        }
        .tint(.red)
    }
}

#Preview {
    ProfileView()
}
