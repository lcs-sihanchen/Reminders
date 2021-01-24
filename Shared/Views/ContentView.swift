//
//  ContentView.swift
//  Shared
//
//  Created by Chen, Sihan on 2021-01-22.
//

import SwiftUI

struct ContentView: View {
    
    // Information passed by app level
    // Store all task being tracked
    @ObservedObject var store: TaskStore
    
    // Control whether the add task view is showing
    // Need the be toggled by an add button
    @State private var showingAddTaskView = false
    
    var body: some View {
        // A list of items that needs to be displayed
        List(store.tasks) { task in
            
            // Task cell deal with only one task
            TaskCell(task: task)
            
        }
        .navigationTitle("Reminders")
        // is bound to property that we added
        // when change from false to true, sheet is triggered to show, when show addtask view
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    // when click add, switch to add task view
                    showingAddTaskView = true
                }
            }
        }
        
        .sheet(isPresented: $showingAddTaskView) {
            // Trigger add task view once status changes
            AddTask(store: store, showing: $showingAddTaskView)
        }
    }
}

// What I see in the preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Embed in Navigation View
        NavigationView{
            ContentView(store: testStore)
        }
    }
}
