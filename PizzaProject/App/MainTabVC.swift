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
        //self.tabBar.barTintColor = .black
        //self.tabBar.unselectedItemTintColor = .red
        //self.tabBar.backgroundColor = .black
        
//        let tabBarAppearance = UITabBarAppearance()
//         tabBarAppearance.backgroundColor = .white
//         tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.red]
//         tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
//         tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.black
//         tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor.red
         //tabBarView.standardAppearance = tabBarAppearance
         //tabBarView.scrollEdgeAppearance = tabBarAppearance
    }
        
    
    
}
