//
//  RoundedView.swift
//  Hapkido
//
//  Created by Alex Dearden on 10/06/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}

@IBDesignable
class RoundedView: UIView {

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }   
}

@IBDesignable
class CustomRoundedView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.roundCorners([.topLeft, .topRight], radius: newValue)
        }
        get {
            return layer.cornerRadius
        }
    }
}

// Becase classes can't have multiple inheritance, we have to duplicate code 😭
@IBDesignable
class RoundedCollectionView: UICollectionView {
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.roundCorners([.topLeft, .topRight], radius: newValue)
        }
        get {
            return layer.cornerRadius
        }
    }
}
