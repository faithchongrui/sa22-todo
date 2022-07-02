//
//  ContentView.swift
//  todoist
//
//  Created by FAITH CHONG RUI EN stu on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    var todos = [
        Todo(title: "work on skill issue"),
        Todo(title: "draw a techno tribute"),
        Todo(title: "get hot choco"),
        Todo(title: "cry", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List(todos) { todo in
                Text(todo.title)
            }
            .navigationTitle("skill issue")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
