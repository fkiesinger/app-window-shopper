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
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        
        let currencyLabel = UILabel(frame: CGRect(x: 10, y: (frame.size.height/2) - size/2 , width: size, height: size))
        
        currencyLabel.backgroundColor = #colorLiteral(red: 0.6929635406, green: 0.7489494681, blue: 0.8295274377, alpha: 0.8017165493)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
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
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: UIColor.white.withAlphaComponent(0.725)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
        }
    }
    
}
