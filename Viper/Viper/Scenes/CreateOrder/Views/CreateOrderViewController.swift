//
//  CreateOrderViewController.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class CreateOrderViewController: UIViewController {
    
    lazy var theView: CreateOrderView = {
        let view = CreateOrderView(frame: .zero)
        return view
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        setupView()
    }
    
}

extension CreateOrderViewController: CodeView {
    func buildViewHierarchy() {
        view = theView
    }
    
    func setupContraints() {}
    func setupAdditionalConfiguration() {}
    
}
