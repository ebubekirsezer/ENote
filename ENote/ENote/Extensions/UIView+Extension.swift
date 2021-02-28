//
//  UIView+Extension.swift
//  ENote
//
//  Created by Ebubekir Sezer on 28.02.2021.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var topCorners: Bool {
        get {
            return self.topCorners
        }
        set {
            round(corner: .top)
        }
    }
    
    @IBInspectable var bottomCorners: Bool {
        get {
            return self.bottomCorners
        }
        set {
            round(corner: .bottom)
        }
    }
    
    @IBInspectable var allCorners: Bool {
        get {
            return self.allCorners
        }
        set {
            round(corner: .all)
        }
    }
    
    private func round(corner: Corners){
        var corners: CACornerMask
        switch corner {
        case .top:
            corners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        case .bottom:
            corners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        case .all:
            corners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        }
        self.layer.cornerRadius = 15
        self.layer.maskedCorners = corners
    }
}

enum Corners {
    case top
    case bottom
    case all
}
