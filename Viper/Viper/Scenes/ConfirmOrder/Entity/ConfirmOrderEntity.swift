//
//  ConfirmOrderEntity.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import Foundation

struct ConfirmOrderViewModel {
    var item: String
    var paymentMethod: String
    var price: String
    
    init(item: String, paymentMethod: String, price: String) {
        self.item = item
        self.paymentMethod = paymentMethod
        self.price = price
    }
    
    init(order: Order) {
        self.init(item: order.item,
                  paymentMethod: order.paymentMethod,
                  price: order.price)
    }
}
