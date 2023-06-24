//
//  IngredientsViewController.swift
//  PizzaProject
//
//  Created by Антон Реуцкий on 05.03.2023.
//

import UIKit
import SnapKit

class DetailScreenVC: UIViewController {

    //var collectionView
    
    var product: Product?
    
    init(product: Product) {
        self.product = product
        super.init(nibName:nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Product -> ", product)
    }

    func setupViews(){
        
    }
    
    func setupConstraints(){
        
    }

}
