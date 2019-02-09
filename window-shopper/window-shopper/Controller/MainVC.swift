//
//  ViewController.swift
//  window-shopper
//
//  Created by Finn Kiesinger on 09.02.19.
//  Copyright © 2019 Finn Kiesinger. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageField: textField!
    @IBOutlet weak var priceField: textField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Button wird mit Eigenschaften erstellt
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4990437031, blue: 0.03226675838, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        //Target ist die Funktion die ausgeführt wird, wenn der Button gedrückt wird
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        //Button wird angezeigt, wenn Eingabe in TextField gefordert wird
        wageField.inputAccessoryView = calcBtn
        priceField.inputAccessoryView = calcBtn
        
    }

    @objc func calculate() {
        
    }

}

