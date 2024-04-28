//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Trung Kiên Nguyễn on 28/4/24.
//

import SwiftUI

@main
struct iCaloriesApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
