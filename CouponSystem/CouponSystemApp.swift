//
//  CouponSystemApp.swift
//  CouponSystem
//
//  Created by Tal talspektor on 14/01/2021.
//

import SwiftUI

@main
struct CouponSystemApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let persistenceController = PersistenceController.shared
    let orederCoupon = OrderCoupon()

    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(orederCoupon)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
