//
//  BeltsViewModel.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation

struct BeltsViewModel {
    
    init() {
        getBelts()
    }
    
    public var belts: [Belt] = []
    
    mutating func getBelts() {
        // TODO: Get them from local realm cache
        let beltNames = ["yellow", "green", "blue", "red", "brown", "black"]
        var order = 1
        belts = beltNames.map { belt -> Belt in
            return Belt(name: belt, order: order)
            order += 1
        }
    }
}
