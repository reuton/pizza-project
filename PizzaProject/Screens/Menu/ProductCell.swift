//
//  PizzaCell.swift
//  PizzaProject
//
//  Created by Антон Реуцкий on 08.02.2023.
//

import UIKit

class ProductCell: UITableViewCell {

//MARK: - Properties
    
    static let reuseID = "ProductCell"
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.backgroundColor = .yellow
        return label
    }()
    
    var descriptionLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.backgroundColor = .yellow
        return label
    }()
    
    var priceLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.backgroundColor = .yellow
        return label
    }()
    
    var photoImageView: UIImageView = {
       var imageview = UIImageView()
        imageview.image = UIImage.init()
        return imageview
    }()
    
    var stackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    
    
//MARK: - LifeCycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        contentView.addSubview(photoImageView)
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(priceLabel)
    }
    
    func update(_ pizza: Product) {
        nameLabel.text = pizza.name
        descriptionLabel.text = pizza.description
        priceLabel.text = String(pizza.price) + "рублей"
        photoImageView.image = UIImage.init(named: pizza.image)
    }
    
//MARK: - Constraints
    func setupConstraint(){
        
        photoImageView.snp.makeConstraints { make in
            make.left.top.bottom.equalTo(contentView).inset(20)
            make.height.width.equalTo(100)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.bottom.right.equalTo(contentView).inset(20)
            make.left.equalTo(photoImageView.snp.right).offset(10)
        }
    }
}
