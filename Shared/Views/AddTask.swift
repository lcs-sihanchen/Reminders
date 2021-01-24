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
    // 2 placeholder for user information
    @State private var description = ""
    @State private var priority = TaskPriority.low

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
        }
    }
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask()
    }
}
