//
//  DiaryPublicApp.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 9.04.2023.
//

import SwiftUI

@main
struct DiaryPublicApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
