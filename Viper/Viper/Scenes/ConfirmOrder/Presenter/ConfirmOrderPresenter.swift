//
//  ConfirmOrderPresenter.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class ConfirmOrderPresenter: ConfirmOrderPresenterProtocol, ConfirmOrderOutputInteractorProtocol {
    
    var interactor: ConfirmOrderInputInteractorProtocol?
    var view: ConfirmOrderViewProtocol?
    var wireframe: ConfirmOrderWireframeProtocol
    
    init(wireframe: ConfirmOrderWireframeProtocol) {
        self.wireframe = wireframe
    }
    
    func confirmOrder() {
        interactor?.confirm()
    }
    
    func showCreateOrder(from view: UIViewController) {
        wireframe.showCreateOrder(from: view)
    }
    
    func presentConfirmation() {
        view?.displayConfirmation()
    }
    
    
}
