//
//  MainTabVC.swift
//  PizzaProject
//
//  Created by Антон Реуцкий on 09.06.2023.
//

import UIKit

//Container Controller -
class MainTabVC: UITabBarController {

    var menuVC: UINavigationController = {
        var controller = MenuScreenVC()
        controller.tabBarItem = UITabBarItem(title: "Menu",
                                             image: UIImage(systemName: "menucard"),
                                             selectedImage: UIImage(systemName: "menucard.fill"))
        
        let menuNav = UINavigationController.init(rootViewController: controller)
        return menuNav
    }()
    
    var cartVC: UINavigationController = {
        var controller = CartScreenVC()
        
        let image = UIImage(systemName: "cart")
        image?.withTintColor(.black, renderingMode: .alwaysOriginal)
        
        let tabItem = UITabBarItem(title: "Cart", image: image,
                                  selectedImage: UIImage(systemName: "cart.fill"))
        
        controller.tabBarItem = tabItem
        
        
        let cartNav = UINavigationController.init(rootViewController: controller)
        return cartNav
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [menuVC, cartVC]
        
        self.tabBar.tintColor = .black

    }
        
    
    
}
