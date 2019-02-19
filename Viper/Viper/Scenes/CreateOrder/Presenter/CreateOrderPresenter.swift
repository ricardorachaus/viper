//
//  CreateOrderPresenter.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class CreateOrderPresenter: CreateOrderPresenterProtocol, CreateOrderOutputInteractorProtocol {
    
    var interactor: CreateOrderInputInteractorProtocol?
    var view: CreateOrderViewProtocol?
    var wireframe: CreateOrderWireframeProtocol
    
    var order: Order?
    
    init(wireframe: CreateOrderWireframeProtocol) {
        self.wireframe = wireframe
    }
    
    func request(order: Order) {
        self.order = order
        interactor?.create(order: order)
    }
    
    func showOrder(from view: UIViewController) {
        if let order = order {
            if !order.item.isEmpty &&
               !order.paymentMethod.isEmpty &&
               !order.price.isEmpty {
                wireframe.showOrderConfirmation(order: order, from: view)
            }
        }
    }
    
    func present(status: Bool) {
        view?.displayOrder(status: status)
    }
}
