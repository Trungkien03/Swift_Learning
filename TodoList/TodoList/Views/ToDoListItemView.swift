//
//  ToDoListItemView.swift
//  TodoList
//
//  Created by Trung Kiên Nguyễn on 19/4/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewModel()
    let itemTodo: ToDoListItem
    var body: some View {
        HStack {
            VStack (alignment: .leading, content: {
                Text(itemTodo.title)
                    .font(.headline)
                    .bold()
                Text("\(Date(timeIntervalSince1970: itemTodo.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            })
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: itemTodo)
            } label: {
                Image(systemName: itemTodo.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(.blue)
            }
        }
    }
}

#Preview {
    ToDoListItemView(itemTodo: .init(id: "123", title: "todo", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
