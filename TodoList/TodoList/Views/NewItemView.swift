//
//  NewItemView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented:Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .textFieldStyle(DefaultTextFieldStyle())
                .bold()
                .padding(.top, 20)
            
            Form{
                // Title
                TextField("Tittle", text: $viewModel.title)
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(title: "Save", 
                         background: .pink,
                         action: {
                    if (viewModel.canSave){
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.isShowAlert = true
                    }
                }
                )
            }
            .alert(isPresented: $viewModel.isShowAlert){
                Alert(
                    title:Text("Error"),
                    message: Text("Please fill in all fields and select due date !")
                )
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
