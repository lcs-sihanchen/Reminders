//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Chen, Sihan on 2021-01-22.
//

import Foundation


struct Task: Identifiable {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = [

    Task(description: "Grow long hair", priority: .high, completed: true),
    Task(description: "Get modeling contract", priority: .medium, completed: false),
    Task(description: "Retire from teaching", priority: .low, completed: false)
    

]
