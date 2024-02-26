//
//  FoodAssortyCell.swift
//  FoodMarket Collection View
//
//  Created by fortune cookie on 2/23/24.
//

import UIKit
import SnapKit

class FoodAssortyCell: UICollectionViewCell{
    var total = 0
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
        label.text = "\(total)"
        label.font = UIFont.systemFont(ofSize: 13, weight: .thin)
        return label
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.addTarget(self, action: #selector(plus), for: .touchUpInside)
        return button
    }()
    private lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "minus"), for: .normal)
        button.addTarget(self, action: #selector(minus), for: .touchUpInside)
        return button
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpSubViews()
    }
    
    private func setUpSubViews(){
        addSubview(foodImageView)
        foodImageView.snp.makeConstraints({make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.width.height.equalTo(60)

        })
        addSubview(foodNameLAbel)
        foodNameLAbel.snp.makeConstraints({make in
            make.centerY.equalToSuperview().offset(-10)
            make.left.equalTo(foodImageView.snp.right).offset(10)


            
        })
        addSubview(foodPriceLAbel)
        foodPriceLAbel.snp.makeConstraints({make in
            make.top.equalTo(foodNameLAbel.snp.bottom).offset(10)
            make.left.equalTo(foodImageView.snp.right).offset(10)

            
        })
        addSubview(minusButton)
        minusButton.snp.makeConstraints({make in
            make.centerY.equalToSuperview()
            make.width.height.equalTo(24)

            
        })
        addSubview(foodCountLAbel)
        foodCountLAbel.snp.makeConstraints({make in
            make.centerY.equalToSuperview()
            make.left.equalTo(minusButton.snp.right).offset(12)

            
        })
        addSubview(plusButton)
        plusButton.snp.makeConstraints({make in
            make.centerY.equalToSuperview()
            make.left.equalTo(foodCountLAbel.snp.right).offset(12)
            make.right.equalToSuperview().inset(24)

            
        })
        
        
    }
    
    func configureFoodInfo(with: FoodInfo){
        print(with.image)
        foodImageView.image = UIImage(named: with.image)
        foodNameLAbel.text = with.foodName
        foodPriceLAbel.text = with.foodPrice
    }
     @objc func plus(){
        total += 1
         foodCountLAbel.text = "\(total)"
         print(total)
         
    }
    @objc func minus(){
        total -= 1
        if total < 0{
            total = 0
        }else{
            foodCountLAbel.text = String(total)
        }
            
    
        
   }
    func clearAll(){
        total = 0
    }
}
