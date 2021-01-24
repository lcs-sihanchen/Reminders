//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Chen, Sihan on 2021-01-22.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks:[Task] = []) {
        self.tasks = tasks
    }
}

// instance of the class
let testStore = TaskStore(tasks: testData)
