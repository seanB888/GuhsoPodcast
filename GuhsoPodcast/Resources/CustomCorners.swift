//
//  Extensions.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 7/30/22.
//

import Foundation
import SwiftUI

// custom corner for single side corner image...
struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {

        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        return Path(path.cgPath)
    }
}
