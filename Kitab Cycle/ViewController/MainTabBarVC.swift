//
//  MainTabBarVC.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/16/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [createHomeNC(), createAddProductNC()]
    }
    
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    func createAddProductNC() -> UINavigationController {
        let addProductVC = AddProductVC()
        addProductVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "plus.circle.fill"), tag: 1)
        return UINavigationController(rootViewController: addProductVC)
    }
}
