//
//  ConfirmOrderRouter.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class ConfirmOrderRouter: ConfirmOrderWireframeProtocol {
    func showCreateOrder(from view: UIViewController) {
        let controller = CreateOrderFactory.make()
        view.show(controller, sender: self)
    }
}
