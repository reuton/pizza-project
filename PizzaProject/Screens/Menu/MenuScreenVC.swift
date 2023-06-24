//
//  ViewController.swift
//  PizzaProject
//
//  Created by Антон Реуцкий on 08.02.2023.
//

import UIKit
import SnapKit


class MenuScreenVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //MARK: - Properties
    
    var products: [Product] = []
    
    var menuService = MenuService()
    
    lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self //data provider -> VC
        tableView.delegate = self //behavior -> VC
        tableView.register(ProductCell.self, forCellReuseIdentifier: ProductCell.reuseID)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupViews()
        setupConstraints()
        fetchPizza()
    }
    
    func fetchPizza() {
        self.products = menuService.fetchPizza()
    }
}

//MARK: - Layout
extension MenuScreenVC {
    
    func setup() {
        navigationItem.title = "Меню"
    }
    
    func setupViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}

//MARK: - Datasource
extension MenuScreenVC {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductCell.reuseID, for: indexPath) as! ProductCell
        
        let pizza = products[indexPath.row]
        
        cell.update(pizza)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let product = products[indexPath.row]
        
        let detailVC = DetailScreenVC.init(product: product)
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
}

