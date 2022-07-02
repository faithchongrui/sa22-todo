//
//  NewTodoView.swift
//  todoist
//
//  Created by FAITH CHONG RUI EN stu on 2/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todoTitle = ""
    @Binding var todos: [Todo]
    
    @Environment(\.dismiss) var dismiss
//    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("enter todo name", text: $todoTitle)
            Button("save todo") {
                // "do something" code to save the todo
                let todo = Todo(title: todoTitle)
                todos.append(todo)
                dismiss()
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
