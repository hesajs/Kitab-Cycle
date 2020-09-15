//
//  KCLogoImageView.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/15/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class KCLogoImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        image = #imageLiteral(resourceName: "kitab-cycle-logo")
        contentMode = .scaleAspectFit
    }
}
