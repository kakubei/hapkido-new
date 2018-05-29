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

@objcMembers final class Belt: Object {
    dynamic var name: String = ""
    dynamic var order: Int = 0
    
    var image: UIImage {
        return UIImage(named: self.name) ?? UIImage()
    }
    
    // TODO: Create localisation for Spanish and English
    var localisedName: String {
        return name.capitalized
    }
}



