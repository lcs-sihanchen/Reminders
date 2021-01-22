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
