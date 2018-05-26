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

// TODO: Add Realm later
@objcMembers class Belt {
    dynamic var name: String = ""
    dynamic var order: Int = 0
    
    init(name: String, order: Int) {
        self.name = name
        self.order = order
    }
    
    var image: UIImage {
        return UIImage(named: self.name) ?? UIImage()
    }
}
