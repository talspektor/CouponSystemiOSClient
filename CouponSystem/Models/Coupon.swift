//
//  Coupon.swift
//  CouponSystem
//
//  Created by Tal talspektor on 14/01/2021.
//

import Foundation

struct Coupon: Codable, Equatable, Identifiable {
    let id: UUID
    let company: Company
    let category: Category
    let title: String
    let description: String
    let staertDate: Date
    let endDate: Date
    let amount: Int
    let price: Double
    let imageUrl: String
}

struct CategoryCoupons: Codable, Identifiable, Equatable {
    let id: UUID
    let category: Category.RawValue
    let coupons: [Coupon]
}

#if DEBUG
let mockElecticityCoupons = [
    Coupon(id: UUID.init(), company: mockCompany, category: Category.ELECTRICITY, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "electricity"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.ELECTRICITY, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "electricity"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.ELECTRICITY, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "electricity"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.ELECTRICITY, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "electricity"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.ELECTRICITY, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "electricity"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.ELECTRICITY, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "electricity")
]
let mockFoodCoupond = [
    Coupon(id: UUID.init(), company: mockCompany, category: Category.FOOD, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "food"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.FOOD, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "food"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.FOOD, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "food"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.FOOD, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "food"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.FOOD, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "food"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.FOOD, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "food")
]
let mockSportsCouopns = [
    Coupon(id: UUID.init(), company: mockCompany, category: Category.SPORTS, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "sports"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.SPORTS, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "sports"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.SPORTS, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "sports"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.SPORTS, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "sports"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.SPORTS, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "sports"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.SPORTS, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "sports")

]
let mockVacationCoupons = [
    Coupon(id: UUID.init(), company: mockCompany, category: Category.VACATION, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "vacation"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.VACATION, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "vacation"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.VACATION, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "vacation"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.VACATION, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "vacation"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.VACATION, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "vacation"),
    Coupon(id: UUID.init(), company: mockCompany, category: Category.VACATION, title: "title", description: "descript", staertDate: Date(), endDate: Date(), amount: 10, price: 200, imageUrl: "vacation")
]
let electricityCategoryCoupons = CategoryCoupons(id: UUID.init(), category: Category.ELECTRICITY.rawValue, coupons: mockElecticityCoupons)
let foodCategoryCoupons = CategoryCoupons(id: UUID.init(), category: Category.FOOD.rawValue, coupons: mockFoodCoupond)
let sportsCategoryCoupons = CategoryCoupons(id: UUID.init(), category: Category.SPORTS.rawValue, coupons: mockSportsCouopns)
let vacationCategorycouopns = CategoryCoupons(id: UUID.init(), category: Category.VACATION.rawValue, coupons: mockVacationCoupons)
let mockSections = [
    electricityCategoryCoupons,
    foodCategoryCoupons,
    sportsCategoryCoupons,
    vacationCategorycouopns
]
#endif
