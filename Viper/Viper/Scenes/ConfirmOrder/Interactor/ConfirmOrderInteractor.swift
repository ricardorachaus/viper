//
//  ConfirmOrderInteractor.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import Foundation

final class ConfirmOrderInteractor: ConfirmOrderInputInteractorProtocol {
    var presenter: ConfirmOrderOutputInteractorProtocol
    
    init(presenter: ConfirmOrderOutputInteractorProtocol) {
        self.presenter = presenter
    }
    
    func confirm() {
        presenter.presentConfirmation()
    }
}
