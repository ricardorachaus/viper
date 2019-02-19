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
    
    var viewModel: ConfirmOrderViewModel
    
    var presenter: ConfirmOrderPresenterProtocol
    
    init(order: Order, presenter: ConfirmOrderPresenterProtocol) {
        self.viewModel = ConfirmOrderViewModel(order: order)
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        setupView()
        presenter.confirmOrder()
    }
    
}

extension ConfirmOrderViewController: ConfirmOrderDelegate {
    func confirm() {
        presenter.showCreateOrder(from: self)
    }
}

extension ConfirmOrderViewController: ConfirmOrderViewProtocol {
    func displayConfirmation() {
        print("Order confirmed!")
    }
}

extension ConfirmOrderViewController: CodeView {
    func buildViewHierarchy() {
        view = theView
    }
    
    func setupContraints() {}
    func setupAdditionalConfiguration() {
        theView.delegate = self
        theView.viewModel = viewModel
    }
    
}
