//
//  CreateOrderView.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class CreateOrderView: UIView {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Create Your Order"
        view.font = UIFont.boldSystemFont(ofSize: 24)
        view.textAlignment = .center
        return view
    }()
    
    lazy var itemLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Item:"
        view.font = UIFont.boldSystemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var itemTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.layer.cornerRadius = 10
        view.backgroundColor = UIColor(red: 0.95,green: 0.95,
                                       blue: 0.95, alpha: 1)
        return view
    }()
    
    lazy var paymentMethodLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Payment Method:"
        view.font = UIFont.boldSystemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var paymentMethodTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.layer.cornerRadius = 10
        view.backgroundColor = UIColor(red: 0.95, green: 0.95,
                                       blue: 0.95, alpha: 1)
        return view
    }()
    
    lazy var priceLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Price:"
        view.font = UIFont.boldSystemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var priceTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.layer.cornerRadius = 10
        view.backgroundColor = UIColor(red: 0.95, green: 0.95,
                                       blue: 0.95, alpha: 1)
        return view
    }()
    
    lazy var orderButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Order!", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = 10
        view.backgroundColor = .lightGray
        view.addTarget(self, action: #selector(requestOrder), for: .touchUpInside)
        return view
    }()
    
    var delegate: CreateOrderDelegate?
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func requestOrder() {
        if let item = itemTextField.text,
           let paymentMethod = paymentMethodTextField.text,
           let price = priceTextField.text {
            let order = Order(item: item,
                              paymentMethod: paymentMethod,
                              price: price)
            delegate?.create(order: order)
        }
    }
    
}

extension CreateOrderView: CodeView {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(itemLabel)
        addSubview(itemTextField)
        addSubview(paymentMethodLabel)
        addSubview(paymentMethodTextField)
        addSubview(priceLabel)
        addSubview(priceTextField)
        addSubview(orderButton)
    }
    
    func setupContraints() {
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
            make.width.equalToSuperview().inset(20)
            make.height.equalTo(35)
        }
        
        itemLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(30)
            make.top.equalTo(titleLabel.snp.bottom).offset(100)
            make.size.equalTo(40)
        }
        
        itemTextField.snp.makeConstraints { (make) in
            make.left.equalTo(itemLabel.snp.left)
            make.top.equalTo(itemLabel.snp.bottom).offset(10)
            make.width.equalToSuperview().inset(50)
            make.height.equalTo(35)
        }
        
        paymentMethodLabel.snp.makeConstraints { (make) in
            make.left.equalTo(itemTextField.snp.left)
            make.top.equalTo(itemTextField.snp.bottom).offset(20)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        
        paymentMethodTextField.snp.makeConstraints { (make) in
            make.left.equalTo(paymentMethodLabel.snp.left)
            make.top.equalTo(paymentMethodLabel.snp.bottom).offset(10)
            make.width.equalToSuperview().inset(50)
            make.height.equalTo(35)
        }
        
        priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(paymentMethodTextField.snp.left)
            make.top.equalTo(paymentMethodTextField.snp.bottom).offset(20)
            make.size.equalTo(40)
        }
        
        priceTextField.snp.makeConstraints { (make) in
            make.left.equalTo(priceLabel.snp.left)
            make.top.equalTo(priceLabel.snp.bottom).offset(10)
            make.width.equalToSuperview().inset(50)
            make.height.equalTo(35)
        }
        
        orderButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(priceTextField.snp.bottom).offset(50)
            make.width.equalTo(90)
            make.height.equalTo(35)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
}

