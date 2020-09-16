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
        
        viewControllers = [createHomeNC()]
    }
    
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
}
