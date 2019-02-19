//
//  ConfirmOrderInputInteractorProtocol.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import Foundation

protocol ConfirmOrderInputInteractorProtocol: class {
    var presenter: ConfirmOrderOutputInteractorProtocol { get set }
    
    func confirm()
}
