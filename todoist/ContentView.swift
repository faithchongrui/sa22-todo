//
//  ContentView.swift
//  todoist
//
//  Created by FAITH CHONG RUI EN stu on 2/7/22.
//

import SwiftUI

struct ContentView: View {
//    @State var todos = [
//        Todo(title: "work on skill issue"),
//        Todo(title: "draw a techno tribute"),
//        Todo(title: "get hot choco"),
//        Todo(title: "cry", isCompleted: true)
//    ]
    
    @State var isSheetGive = false
    
    @StateObject var todoManager = TodoManager()
    
    var body: some View {
        NavigationView {
            List {
                ForEach($todoManager.todos) { $todo in
                    NavigationLink {
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack {
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(todo.isCompleted ? .green : .red)
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                                .foregroundColor(todo.isCompleted ? .green : .red)
                        }
                    }
                }
                .onDelete { indexSet in
                    todoManager.todos.remove(atOffsets: indexSet)
                }
                .onMove { oldOffset, newOffset in
                    todoManager.todos.move(fromOffsets: oldOffset, toOffset: newOffset)
                }
            }
            .navigationTitle("skill issue")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSheetGive = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetGive) {
            NewTodoView(todos: $todoManager.todos)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
