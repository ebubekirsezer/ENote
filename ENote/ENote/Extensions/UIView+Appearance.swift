//
//  UIView+Appearance.swift
//  ENote
//
//  Created by Ebubekir Sezer on 2.03.2021.
//

import UIKit

extension UIView {
    
    func changeStackCustomAppearenceWith(image: UIImageView? = nil){
        self.backgroundColor = BaseColor.BackgroundWhiteColor
        self.allCorners = true
        self.borderColor = BaseColor.PrimaryColor ?? .white
        
        if let image = image {
            image.tintColor = BaseColor.PrimaryColor
        }
    }
    
    func changeStackDefaultAppearenceWith(image: UIImageView? = nil){
        self.backgroundColor = BaseColor.BackgroundGrayColor
        self.allCorners = false
        self.borderColor = .clear
        
        if let image = image {
            image.tintColor = BaseColor.GrayTextColor
        }
    }
}
