//
//  IA3App.swift
//  IA3
//
//  Created by Ashton Price on 12/5/2023.
//

import SwiftUI

@main
struct IA3App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
