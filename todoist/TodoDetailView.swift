//
//  TodoDetailView.swift
//  todoist
//
//  Created by FAITH CHONG RUI EN stu on 2/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        Form {
            TextField("enter a title", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("mark as \(todo.isCompleted ? "incomplete" : "completed")")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(todo.isCompleted ? .red : .green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
        }
        Spacer()
        
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "sasa")))
    }
}
