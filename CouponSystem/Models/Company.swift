//
//  Company.swift
//  CouponSystem
//
//  Created by Tal talspektor on 14/01/2021.
//

import Foundation

struct Company: Codable, Identifiable, Equatable {
    let id: UUID
    let name: String
    let email: String
    let password: String
    let coupons: [Coupon]
}

#if DEBUG
let mockCompany = Company(id: UUID.init(), name: "conp", email: "comp@mail.com", password: "pass123", coupons: [Coupon]())
#endif
