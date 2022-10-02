//
//  foodAppApp.swift
//  foodApp
//
//  Created by Carly Wenig on 10/2/22.
//

import SwiftUI

@main
struct foodAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
