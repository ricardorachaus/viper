//
//  CreateOrderWireframeProtocol.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

protocol CreateOrderWireframeProtocol: class {
    func showOrderConfirmation(order: Order, from view: UIViewController)
}
