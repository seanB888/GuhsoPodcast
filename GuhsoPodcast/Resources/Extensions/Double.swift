//
//  Double.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/30/22.
//

import Foundation

extension Double {
    
    /// Converts a Double into a Currency with 2decimal places
    /// ```
    /// Convert 0.123456 to $0.12
    /// ```
    private var timeFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .decimal
        // formatter.locale = .current // <- default value
        // formatter.currencyCode = "usd" // <- Can change the currency
        // formatter.currencySymbol = "$" // <- Can change the currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    // the rest of the code can access this here...
    /// Converts a Double into a Currency with 2-6 decimal places
    /// ```
    /// Convert 1234.56 to "$1,234.56"
    /// Convert 0.123456 to "$0.12"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return timeFormatter.string(from: number) ?? "0.00"
    }
}
