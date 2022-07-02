//
//  Todo.swift
//  todoist
//
//  Created by FAITH CHONG RUI EN stu on 2/7/22.
//

import Foundation

struct Todo: Identifiable, Codable {
    var id = UUID()
    
    var title: String
    var isCompleted: Bool = false
}
