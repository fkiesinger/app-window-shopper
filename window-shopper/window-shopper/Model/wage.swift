//
//  wage.swift
//  window-shopper
//
//  Created by Finn Kiesinger on 09.02.19.
//  Copyright © 2019 Finn Kiesinger. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
