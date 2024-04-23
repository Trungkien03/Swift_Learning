//
//  ToDoListView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    private let userId: String
    @StateObject var viewModel: ToDoListViewModel
    @FirestoreQuery var todoItems: [ToDoListItem]
    
    init(userId: String = "") {
        self.userId = userId
        self._todoItems = FirestoreQuery(collectionPath: "users/\(self.userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewModel(userId: userId))
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                List (todoItems) { item in
                    ToDoListItemView(itemTodo: item)
                        .swipeActions {
                            Button {
                                viewModel.deleteItem(id: item.id)
                            } label: {
                                Text("Delete")
                            }
                            .tint(.red) // Set the background color
                        }
                }
                .listStyle(.automatic)
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
    ToDoListView(userId: "SzCUCIV1D1Yt2sNxzVQxv4eySn23")
}
