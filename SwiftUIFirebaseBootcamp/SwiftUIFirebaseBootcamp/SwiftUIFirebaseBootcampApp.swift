//
//  SwiftUIFirebaseBootcampApp.swift
//  SwiftUIFirebaseBootcamp
//
//  Created by Trung Kiên Nguyễn on 27/4/24.
//

import SwiftUI
import Firebase

@main
struct SwiftUIFirebaseBootcampApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                AuthenticationView()
            }
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
