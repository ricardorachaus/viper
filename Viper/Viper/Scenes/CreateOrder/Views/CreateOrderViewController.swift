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
    
    var presenter: CreateOrderPresenterProtocol
    
    init(presenter: CreateOrderPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        setupView()
    }
    
}

extension CreateOrderViewController: CreateOrderViewProtocol {
    func displayOrder(status: Bool) {
        print("Order status: " + status.description)
        presenter.showOrder(from: self)
    }
}

extension CreateOrderViewController: CreateOrderDelegate {
    func create(order: Order) {
        presenter.request(order: order)
    }
}

extension CreateOrderViewController: CodeView {
    func buildViewHierarchy() {
        view = theView
    }
    
    func setupContraints() {}
    
    func setupAdditionalConfiguration() {
        theView.delegate = self
    }
    
}
