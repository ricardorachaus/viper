//
//  CreateOrderPresenterProtocol.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

protocol CreateOrderPresenterProtocol: class {
    var interactor: CreateOrderInputInteractorProtocol? { get set }
    var view: CreateOrderViewProtocol? { get set }
    var wireframe: CreateOrderWireframeProtocol { get set }
    
    func request(order: Order)
    func showOrder(from view: UIViewController)
}
