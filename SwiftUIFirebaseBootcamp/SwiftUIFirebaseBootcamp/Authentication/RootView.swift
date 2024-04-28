//
//  RootView.swift
//  SwiftUIFirebaseBootcamp
//
//  Created by Trung Kiên Nguyễn on 28/4/24.
//

import SwiftUI

struct RootView: View {
    
    @State var isShowing: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                Text("Setting")
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManger.shared.getAuthenticationUser()
            self.isShowing = authUser == nil ? false : true
        }
        .fullScreenCover(isPresented: $isShowing, content: {
            NavigationStack{
                AuthenticationView()
            }
        })
    }
}

#Preview {
    RootView()
}
