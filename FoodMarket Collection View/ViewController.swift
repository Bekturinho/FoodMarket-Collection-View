//
//  ViewController.swift
//  FoodMarket Collection View
//
//  Created by fortune cookie on 2/22/24.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    private var foodInfoArray: [FoodInfo] = [
        FoodInfo(image: "burger", foodName: "Mr.Cheezy", foodPrice: "$5.49"),
        FoodInfo(image: "fries", foodName: "Fries M", foodPrice: "$3.29"),
        FoodInfo(image: "vanila", foodName: "Vanilla Ice", foodPrice: "$6.99"),
        FoodInfo(image: "coffee", foodName: "Americano L", foodPrice: "$1.99"),
        FoodInfo(image: "burger", foodName: "Mr.Cheezy", foodPrice: "$5.49"),
        FoodInfo(image: "fries", foodName: "Fries M", foodPrice: "$3.29"),
        FoodInfo(image: "vanila", foodName: "Vanilla Ice", foodPrice: "$6.99"),
        FoodInfo(image: "coffee", foodName: "Americano L", foodPrice: "$1.99"),
        FoodInfo(image: "burger", foodName: "Mr.Cheezy", foodPrice: "$5.49"),
        FoodInfo(image: "fries", foodName: "Fries M", foodPrice: "$3.29")]

    
    private lazy var myCartView: UIView = {
        MyCartUiView()
    }()
    
    private lazy var foodScrollCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout:layout )
        layout.itemSize = CGSize(width: 350, height: 100)
        layout.minimumLineSpacing = 30
        view.register(FoodAssortyCell.self, forCellWithReuseIdentifier: "cell")
        view.backgroundColor = .red
        view.dataSource = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
setUpSubViews()
        
    }
    private func setUpSubViews(){
        
        view.addSubview(myCartView)
        myCartView.snp.makeConstraints({make in
            make.top.equalTo(view.snp.top)
            make.horizontalEdges.equalTo(view.alpha)
            make.height.equalTo(view.alpha).offset(250)
            
        })
        
        view.addSubview(foodScrollCollectionView)
        foodScrollCollectionView.snp.makeConstraints({make in
            make.top.equalTo(myCartView.snp.bottom).offset(100)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(view.alpha).offset(400)
            make.width.equalTo(view.alpha).offset(400)
        })
    }


}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        foodInfoArray.count
            }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = foodScrollCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FoodAssortyCell else{
       
            return UICollectionViewCell()
        }
        cell.configureFoodInfo(with: foodInfoArray[indexPath.item])
        cell.backgroundColor = .systemPink
        cell.layer.cornerRadius = 20
        
        return cell
    }
    
    
}
