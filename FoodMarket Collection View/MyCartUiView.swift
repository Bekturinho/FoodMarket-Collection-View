//
//  MyCartUiView.swift
//  FoodMarket Collection View
//
//  Created by fortune cookie on 2/22/24.
//

import UIKit

class MyCartUiView: UIView{
    
    private lazy var myCartLAbel: UILabel = {
        let label = UILabel()
        label.text = "My Cart"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    private lazy var  myCartButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "cancel"), for: .normal)
        return button
    }()
    private lazy var firstStepButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "first"), for: .normal)
        return button
    }()
    private lazy var secondStepButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "second"), for: .normal)
        return button
    }()
    private lazy var thirdStepButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "third"), for: .normal)
        return button
    }()
    private lazy var myOrderLabel: UILabel = {
        let label = UILabel()
        label.text = "My Order"
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    private lazy var detailsLabel: UILabel = {
        let label = UILabel()
        label.text = "Details"
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    private lazy var paymentLabel: UILabel = {
        let label = UILabel()
        label.text = "Payment"
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    private lazy var orderLabel: UILabel = {
        let label = UILabel()
        label.text = "Order"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    private lazy var  clearAllButton: UIButton = {
        let button = UIButton()
        button.setTitle("Clear All", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
 
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpSubViews()
        
        
        
    }
    
    private func setUpSubViews(){
        addSubview(myCartLAbel)
        myCartLAbel.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(70)
            make.left.equalToSuperview().offset(20)
            make.width.equalToSuperview().offset(300)
        })
        addSubview(myCartButton)
        myCartButton.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(70)
            make.right.equalToSuperview().offset(-20)
        })
        addSubview(secondStepButton)
        secondStepButton.snp.makeConstraints({make in
            make.top.equalTo(myCartButton.snp.bottom).offset(70)
            make.centerX.equalToSuperview()
            })
        addSubview(firstStepButton)
        firstStepButton.snp.makeConstraints({make in
            make.top.equalTo(myCartButton.snp.bottom).offset(70)
            make.right.equalTo(secondStepButton.snp.left).offset(-70)
            })
        addSubview(thirdStepButton)
        thirdStepButton.snp.makeConstraints({make in
            make.top.equalTo(myCartButton.snp.bottom).offset(70)
            make.left.equalTo(secondStepButton.snp.right).offset(70)
            })
        addSubview(myOrderLabel)
        myOrderLabel.snp.makeConstraints({make in
            make.bottom.equalTo(firstStepButton.snp.top).offset(-5)
            make.right.equalTo(secondStepButton.snp.left).offset(-70)
            })
        addSubview(detailsLabel)
        detailsLabel.snp.makeConstraints({make in
            make.bottom.equalTo(secondStepButton.snp.top).offset(-5)
            make.centerX.equalToSuperview()
            })
        addSubview(paymentLabel)
        paymentLabel.snp.makeConstraints({make in
            make.bottom.equalTo(thirdStepButton.snp.top).offset(-5)
            make.left.equalTo(secondStepButton.snp.right).offset(70)
            
            })
        addSubview(orderLabel)
        orderLabel.snp.makeConstraints({make in
            make.top.equalTo(firstStepButton.snp.bottom).offset(70)
            make.left.equalToSuperview().offset(20)
            make.width.equalToSuperview().offset(250)
        })
        addSubview(clearAllButton)
        clearAllButton.snp.makeConstraints({make in
            make.top.equalTo(firstStepButton.snp.bottom).offset(70)
            make.right.equalToSuperview().offset(-20)
        })

        

    }
    
}
