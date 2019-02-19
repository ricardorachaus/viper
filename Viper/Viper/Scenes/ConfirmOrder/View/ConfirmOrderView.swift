//
//  ConfirmOrderView.swift
//  Viper
//
//  Created by Ricardo Rachaus on 18/02/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import UIKit

final class ConfirmOrderView: UIView {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Confirm Order"
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
    
    lazy var itemNameLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Item Name"
        view.font = UIFont.systemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var paymentMethodLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Payment Method:"
        view.font = UIFont.boldSystemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var methodLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Method"
        view.font = UIFont.systemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var priceLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Price:"
        view.font = UIFont.boldSystemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var valueLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Value"
        view.font = UIFont.systemFont(ofSize: 14)
        view.textAlignment = .left
        return view
    }()
    
    lazy var confirmOrderButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Confirm Order", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = 10
        view.backgroundColor = .lightGray
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ConfirmOrderView: CodeView {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(itemLabel)
        addSubview(itemNameLabel)
        addSubview(paymentMethodLabel)
        addSubview(methodLabel)
        addSubview(priceLabel)
        addSubview(valueLabel)
        addSubview(confirmOrderButton)
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
        
        itemNameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(itemLabel.snp.left)
            make.top.equalTo(itemLabel.snp.bottom)
            make.width.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        paymentMethodLabel.snp.makeConstraints { (make) in
            make.left.equalTo(itemNameLabel.snp.left)
            make.top.equalTo(itemNameLabel.snp.bottom)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        
        methodLabel.snp.makeConstraints { (make) in
            make.left.equalTo(paymentMethodLabel.snp.left)
            make.top.equalTo(paymentMethodLabel.snp.bottom)
            make.width.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(methodLabel.snp.left)
            make.top.equalTo(methodLabel.snp.bottom)
            make.width.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        valueLabel.snp.makeConstraints { (make) in
            make.left.equalTo(priceLabel.snp.left)
            make.top.equalTo(priceLabel.snp.bottom)
            make.width.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        confirmOrderButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(valueLabel.snp.bottom).offset(50)
            make.width.equalTo(150)
            make.height.equalTo(35)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
}
