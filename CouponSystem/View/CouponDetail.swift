//
//  CouponDetail.swift
//  CouponSystem
//
//  Created by Tal talspektor on 15/01/2021.
//

import SwiftUI

struct CouponDetail: View {
    @EnvironmentObject var orderCoupon: OrderCoupon
    var coupon: Coupon
    let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6) {
                Image(coupon.imageUrl)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(coupon.description)
                    .padding([.leading, .top])
                Text("Amount left: \(coupon.amount)")
                    .padding([.leading, .top])
                Text("Expitation: \(formatter.string(from: coupon.endDate))")
                    .padding([.leading, .top])
                
                Spacer()
            }
            
            Button("Order Couopn") {
                orderCoupon.add(coupon: coupon)
            }.font(.headline)
            
            Spacer()
            
        }.navigationTitle(Text(coupon.title))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CouponDetail_Previews: PreviewProvider {
    static let orderCouopon = OrderCoupon()
    static var previews: some View {
        CouponDetail(coupon: mockCompany.coupons[0]).environmentObject(orderCouopon)
    }
}
