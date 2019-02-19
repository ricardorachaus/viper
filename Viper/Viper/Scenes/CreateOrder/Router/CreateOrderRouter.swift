//
//  CreateOrderRouter.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class CreateOrderRouter: CreateOrderWireframeProtocol {
    
    func showOrderConfirmation(order: Order, from view: UIViewController) {
        let viewController = ConfirmOrderFactory.make(order: order)
        view.show(viewController, sender: nil)
    }
    
}
