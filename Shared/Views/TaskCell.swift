//
//  TaskCell.swift
//  Reminders
//
//  Created by Chen, Sihan on 2021-01-23.
//

import SwiftUI

struct TaskCell: View {
    // allow swift to change with code
    @ObservedObject var task: Task
    
    var taskColor: Color {
        switch task.priority {
        case .high:
            return Color.red
        case .medium:
            return Color.blue
        case .low:
            return Color.primary
        }
    }
    var body: some View {
        HStack {
            // To look at the task.completed
            // If it is true, circle fill
            // If it is false, just circle
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    task.completed.toggle()
                }
            Text(task.description)
        }
        .foregroundColor(self.taskColor)
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
        TaskCell(task: testData[1])
    }
}
