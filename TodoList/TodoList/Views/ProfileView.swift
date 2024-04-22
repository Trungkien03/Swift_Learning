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
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
