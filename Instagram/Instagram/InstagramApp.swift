//
//  InstagramApp.swift
//  Instagram
//
//  Created by 현수빈 on 12/30/23.
//

import SwiftUI

@main
struct InstagramApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
