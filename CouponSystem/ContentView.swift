//
//  ContentView.swift
//  CouponSystem
//
//  Created by Tal talspektor on 14/01/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var sections = mockSections
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sections) { categoryCoupons in
                    Section(header: Text(categoryCoupons.category)
                                .font(.title2)
                                .foregroundColor(.blue)) {
                        ForEach(categoryCoupons.coupons) { coupon in
                            CouponItemView(coupon: coupon)
                        }
                    }
                }
            }.navigationTitle("iCoupons")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
