//
//  ToDoListView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewModel()
    private let userId: String
    
    init(userId: String = "") {
        self.userId = userId
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar(){
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
