//
//  CreateOrderFactory.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class CreateOrderFactory {
    static func make() -> UIViewController {
        let wireframe = CreateOrderRouter()
        let presenter = CreateOrderPresenter(wireframe: wireframe)
        let interactor = CreateOrderInteractor(presenter: presenter)
        let controller = CreateOrderViewController(presenter: presenter)
        presenter.interactor = interactor
        presenter.view = controller
        
        return controller
    }
}
