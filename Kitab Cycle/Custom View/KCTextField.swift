//
//  KCTextField.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/14/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class KCTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    
    init(textAlignment: NSTextAlignment, placeholder: String, keyboardType: UIKeyboardType = .default) {
        super.init(frame: .zero)
        
        self.placeholder = placeholder
        self.textAlignment = textAlignment
        self.keyboardType = keyboardType
        
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor // layer border needs CGColor
        
        textColor = .label
        tintColor = .label
        font = .preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        autocapitalizationType = .sentences
    }

}
