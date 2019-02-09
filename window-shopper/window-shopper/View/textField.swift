//
//  RoundedOpacity.swift
//  window-shopper
//
//  Created by Finn Kiesinger on 09.02.19.
//  Copyright © 2019 Finn Kiesinger. All rights reserved.
//

import UIKit
@IBDesignable

class textField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        borderStyle = UITextField.BorderStyle.roundedRect
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: UIColor.white.withAlphaComponent(0.725)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
        }
    }
    
}
