//
//  CouponSystemApp.swift
//  CouponSystem
//
//  Created by Tal talspektor on 14/01/2021.
//

import SwiftUI

@main
struct CouponSystemApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
