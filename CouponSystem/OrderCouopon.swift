//
//  OrderCouopon.swift
//  CouponSystem
//
//  Created by Tal talspektor on 16/01/2021.
//

import SwiftUI

class OrderCoupon: ObservableObject {
    @Published var coupons = [Coupon]()
    @Published var myCouopns = [Coupon]()
    
    var total: Double {
        if coupons.count > 0 {
            return coupons.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }
    
    func add(coupon: Coupon) {
        coupons.append(coupon)
    }
    
    func fetchMyCoupons() {
        // get coupons from REST API
    }
}
