//
//  Category.swift
//  Hapkido
//
//  Created by Alex Dearden on 26/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

@objcMembers final class Category: Object {
    dynamic var id: Int = 0
    dynamic var koreanName: String = ""
    dynamic var localisedName: String = ""
    dynamic var localisedExplanation: String = ""
    dynamic var order: Int = 0
    
    var image: UIImage {
        return UIImage(named: self.koreanName) ?? UIImage()
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
