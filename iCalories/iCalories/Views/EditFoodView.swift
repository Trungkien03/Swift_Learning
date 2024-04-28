//
//  EditFoodView.swift
//  iCalories
//
//  Created by Trung Kiên Nguyễn on 28/4/24.
//

import SwiftUI

struct EditFoodView: View {
    
    @Environment(\.managedObjectContext) var manageObjContext
    @Environment(\.dismiss) var dismiss
    
    var food: FetchedResults<Food>.Element
    
    @State private var name	= ""
    @State private var calories: Double = 0
    
    var body: some View {
        Form {
            Section {
                TextField("\(food.name!)",text: $name )
                    .onAppear {
                        name = food.name!
                        calories = food.calories
                    }
                
                VStack {
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 10)
                }
                .padding()
                
                Button(action: {
                    DataController().editFood(food: food, name: name, calories: calories, context: manageObjContext)
                    dismiss()
                }, label: {
                    Text("Submit")
                })
                
            }
        }
    }
}
