//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Chen, Sihan on 2021-01-22.
//

import Foundation

// This class requires 3 parameters, and it allows us to change the properties
class Task: Identifiable, ObservableObject {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
}

let testData = [

    Task(description: "Grow long hair", priority: .high, completed: true),
    Task(description: "Get modeling contract", priority: .medium, completed: false),
    Task(description: "Retire from teaching", priority: .low, completed: false)
    

]
