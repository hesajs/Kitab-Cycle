//
//  CheckVC.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/14/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class CheckVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Check"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        navigationController?.isNavigationBarHidden = true
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let label = UILabel()
        label.text = "hello"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
