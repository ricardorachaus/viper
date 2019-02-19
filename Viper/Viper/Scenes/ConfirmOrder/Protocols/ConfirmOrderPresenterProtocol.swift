//
//  ConfirmOrderPresenterProtocol.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

protocol ConfirmOrderPresenterProtocol: class {
    var interactor: ConfirmOrderInputInteractorProtocol? { get set }
    var view: ConfirmOrderViewProtocol? { get set }
    var wireframe: ConfirmOrderWireframeProtocol { get set }
    
    func confirmOrder()
    func showCreateOrder(from view: UIViewController)
}
