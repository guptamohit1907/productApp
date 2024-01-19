//
//  Double+Extension.swift
//  ProductAPIYoutube
//
//  Created by Mohit Gupta on 29/11/23.
//

import Foundation
extension Double {
    func toString() -> String{
        return String(format: "%.1f", self)
    }
    
    func currencyFormatter() -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
