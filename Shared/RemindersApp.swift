//
//  RemindersApp.swift
//  Shared
//
//  Created by Chen, Sihan on 2021-01-22.
//

import SwiftUI

@main
struct RemindersApp: App {
    // Source of truth
    // data created at the app level
    // @state --- this instance is created by this file, source of truth
   @StateObject private var store = TaskStore(tasks: testData)
    var body: some Scene {
        WindowGroup {
            // reference
            ContentView(store: store)
        }
    }
}
