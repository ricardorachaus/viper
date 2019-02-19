//
//  ConfirmOrderViewController.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class ConfirmOrderViewController: UIViewController {
    
    lazy var theView: ConfirmOrderView = {
        let view = ConfirmOrderView(frame: .zero)
        return view
    }()
    
    override func loadView() {
        setupView()
    }
    
}

extension ConfirmOrderViewController: CodeView {
    func buildViewHierarchy() {
        view = theView
    }
    
    func setupContraints() {}
    func setupAdditionalConfiguration() {}
    
}
