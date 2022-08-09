//
//  UIApplication+Extension.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/7/22.
//

import UIKit

extension UIApplication {
    // use to hide keyboard if tapped outside of the textField...
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
