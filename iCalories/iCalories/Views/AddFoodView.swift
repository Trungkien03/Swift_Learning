//
//  AddFoodView.swift
//  iCalories
//
//  Created by Trung Kiên Nguyễn on 28/4/24.
//

import SwiftUI

struct AddFoodView: View {
    @Environment(\.managedObjectContext) var manageObjContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories = 0.0
    
    var body: some View {
        Form {
            Section {
                TextField("Food Name", text: $name)
                
                VStack{
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 10)
                }
                .padding()
                
                
                HStack {
                    Spacer()
                    Button(action: {
                        DataController().addFood(name: name, calories: calories, context: manageObjContext)
                        dismiss()
                    }, label: {
                        Text("Submit")
                    })
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    AddFoodView()
}
