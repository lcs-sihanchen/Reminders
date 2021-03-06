//
//  AddTask.swift
//  Reminders
//
//  Created by Chen, Sihan on 2021-01-23.
//

import SwiftUI

// Source of truth provided by the user
// Detail of the new task

struct AddTask: View {
    @ObservedObject var store: TaskStore
    // 2 placeholder for user information
    @State private var description = ""
    @State private var priority = TaskPriority.low

    // a binding that allows us to see whether the view is showing
    // derived value
    // change true false
    
    @Binding var showing: Bool
    var body: some View {
        NavigationView{
            VStack {
                // Form for user to provide info
                Form {
                    //$?
                    TextField("Description", text: $description)
                    // Rawvalue is what shows the text on screen
                    // tag makes the item identifiable
                    Picker("priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)

                    }
                    // this style is for a small number of choices
                    .pickerStyle(SegmentedPickerStyle())
                    
                }
                
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        // When clicking save, trigger save task view
                        saveTask()
                    }
                }
            }
            
        }
    }
    
    func saveTask() {
        // Add the task to the list of tasks
        store.tasks.append(Task(description: description, priority: priority, completed: false))
        // Dismiss this view
        showing = false
    }
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        // When we don't have a binding in the view
        AddTask(store: testStore, showing: .constant(true))
    }
}
