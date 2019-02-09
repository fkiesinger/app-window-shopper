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
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var hours: UILabel!
    @IBAction func clear(_ sender: Any) {
        clear()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Result - Labels sind Hidden
        clear()
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

    func clear() {
        result.isHidden = true
        hours.isHidden = true
        wageField.text = ""
        priceField.text = ""
    }
    @objc func calculate() {
        if let wageField = wageField.text, let priceField = priceField.text {
            if let wage = Double(wageField), let price = Double(priceField) {
                view.endEditing(true)
                result.isHidden = false
                hours.isHidden = false
                result.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

}

