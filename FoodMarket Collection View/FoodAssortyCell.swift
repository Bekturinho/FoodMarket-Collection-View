//
//  FoodAssortyCell.swift
//  FoodMarket Collection View
//
//  Created by fortune cookie on 2/23/24.
//

import UIKit
import SnapKit

class FoodAssortyCell: UICollectionViewCell{
    private lazy var foodImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private lazy var foodNameLAbel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 13, weight: .thin)
        return label
    }()
    private lazy var foodPriceLAbel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 13, weight: .thin)
        return label
    }()
  
    private lazy var foodCountLAbel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 13, weight: .thin)
        return label
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        return button
    }()
    private lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "minus"), for: .normal)
        return button
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    private func setUpSubViews(){
        addSubview(foodImageView)
        foodImageView.snp.makeConstraints({make in
            make.center.equalToSuperview()
        })
//        addSubview(foodNameLAbel)
//        foodNameLAbel.snp.makeConstraints({make in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview().offset(10)
//            make.left.equalTo(foodImageView.snp.right).offset(20)
//            
//        })
//        addSubview(foodPriceLAbel)
//        foodPriceLAbel.snp.makeConstraints({make in
//            make.centerX.equalToSuperview()
//            make.top.equalTo(foodNameLAbel.snp.bottom ).offset(10)
//            make.left.equalTo(foodImageView.snp.right).offset(20)
//            
//        })
//        addSubview(minusButton)
//        minusButton.snp.makeConstraints({make in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview().offset(20)
//            make.left.equalTo(foodNameLAbel.snp.right).offset(20)
//            
//        })
//        addSubview(foodCountLAbel)
//        foodCountLAbel.snp.makeConstraints({make in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview().offset(20)
//            make.left.equalTo(minusButton.snp.right).offset(10)
//            
//        })
//        addSubview(plusButton)
//        plusButton.snp.makeConstraints({make in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview().offset(20)
//            make.left.equalTo(foodCountLAbel.snp.right).offset(10)
//            
//        })
        
        
    }
    
    func configureFoodInfo(with: FoodInfo){
        foodImageView.image = UIImage(named: with.image)
        foodNameLAbel.text = with.foodName
        foodPriceLAbel.text = with.foodPrice
    }
}
