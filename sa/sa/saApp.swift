//
//  saApp.swift
//  sa
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI

@main
struct saApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
