//
//  ConfirmOrderFactory.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class ConfirmOrderFactory {
    static func make(order: Order) -> UIViewController {
        let wireframe = ConfirmOrderRouter()
        let presenter = ConfirmOrderPresenter(wireframe: wireframe)
        let interactor = ConfirmOrderInteractor(presenter: presenter)
        let controller = ConfirmOrderViewController(order: order, presenter: presenter)
        presenter.interactor = interactor
        presenter.view = controller
        
        return controller
    }
}

