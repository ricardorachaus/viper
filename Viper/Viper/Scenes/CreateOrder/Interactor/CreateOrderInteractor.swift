//
//  CreateOrderInteractor.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import Foundation

final class CreateOrderInteractor: CreateOrderInputInteractorProtocol {
    var presenter: CreateOrderOutputInteractorProtocol
    
    init(presenter: CreateOrderOutputInteractorProtocol) {
        self.presenter = presenter
    }
    
    func create(order: Order) {
        if !(order.item.isEmpty || order.paymentMethod.isEmpty ||
            order.price.isEmpty) {
            presenter.present(status: true)
        } else {
            presenter.present(status: false)
        }
    }
    
}
