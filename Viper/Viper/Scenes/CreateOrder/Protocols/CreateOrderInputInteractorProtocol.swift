//
//  CreateOrderInputInteractorProtocol.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import Foundation

protocol CreateOrderInputInteractorProtocol: class {
    var presenter: CreateOrderOutputInteractorProtocol { get set }
    
    func create(order: Order)
}
