//
//  Belt.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

enum Colour: String {
    case white, yellow, green, blue, red, brown, black
    
    var value: UIColor {
        get {
            switch self {
            case .white:
                return .white
            case .yellow:
                return UIColor(red: 1.0, green: 182/255, blue: 39/255, alpha: 1.0)
            case .green:
                return UIColor(red: 181/255, green: 217/255, blue: 94/255, alpha: 1.0)
            case .blue:
                return UIColor(red: 96/255, green: 146/255, blue: 225.255, alpha: 1.0)
            case .red:
                return UIColor(red: 229/255, green: 61/255, blue: 0, alpha: 1.0)
            case.brown:
                return UIColor(red: 107/255, green: 58/255, blue: 24/255, alpha: 1.0)
            case.black:
                return UIColor.black
            }
        }
    }
}


@objcMembers final class Belt: Object {
    dynamic var name: String = ""
    dynamic var order: Int = 0
    
    var colour: UIColor {
        return Colour(rawValue: self.name)?.value ?? Colour.white.value
    }
    
    var image: UIImage {
        return UIImage(named: self.name) ?? UIImage()
    }
    
    // TODO: Create localisation for Spanish and English
    var localisedName: String {
        return name.capitalized
    }
}



