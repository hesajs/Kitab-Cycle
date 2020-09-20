//
//  ProductCell.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/19/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    static let reuseID = "ProductCell"
    let productImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "productImage")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let productLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.90
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubview(productImageView)
        addSubview(productLabel)
//        backgroundColor = .red
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            productImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            productImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
//            productImageView.heightAnchor.constraint(equalTo: productImageView.widthAnchor),
            productImageView.heightAnchor.constraint(equalTo: productImageView.widthAnchor, multiplier: 1.15),
            
            productLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: padding),
            productLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            productLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            productLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
