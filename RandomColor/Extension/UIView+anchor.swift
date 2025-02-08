//
//  UIView+anchor.swift
//  RandomColor
//
//  Created by Seol WooHyeok on 2/8/25.
//

import Foundation
import UIKit

extension UIView {
    enum Axis {
        case horizontal
        case vertical
    }
    
    // 개선 필요...
    func anchor(
        top: NSLayoutYAxisAnchor?,
        topMargin: CGFloat = 0,
        right: NSLayoutXAxisAnchor?,
        rightMargin: CGFloat = 0,
        bottom: NSLayoutYAxisAnchor?,
        bottomMargin: CGFloat = 0,
        left: NSLayoutXAxisAnchor?,
        leftMargin: CGFloat = 0,
        size: CGSize = .zero
    ) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: topMargin).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: rightMargin).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: bottomMargin).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: leftMargin).isActive = true
        }
        
        if size.width != 0 {
            self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}
