//
//  ContentView.swift
//  Shared
//
//  Created by Chen, Sihan on 2021-01-22.
//

import SwiftUI

struct ContentView: View {
    
    // Information passed by app level
    @ObservedObject var store: TaskStore
    
    var body: some View {
        // A list of items that needs to be displayed
        List(store.tasks) { task in
            
            // Task cell deal with only one task
            TaskCell(task: task)
            
        }
        .navigationTitle("Reminders")
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
