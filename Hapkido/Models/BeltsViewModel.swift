//
//  BeltsViewModel.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation
import RealmSwift

struct BeltsViewModel {
    
    init() {
        getBelts()
    }
    
    public var belts = List<Belt>()
    
    mutating func getBelts() {
        // TODO: Get them from local realm cache
        let beltNames = ["yellow", "green", "blue", "red", "brown", "black"]
        var order = 1
        beltNames.forEach { belt in
            let newBelt = Belt()
            newBelt.name = belt
            newBelt.order = order
            order += 1
            belts.append(newBelt)
        }
    }
}
