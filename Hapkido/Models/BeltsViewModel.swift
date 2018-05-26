//
//  BeltsViewModel.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation
import RealmSwift

protocol BeltsModel {
    var belts: List<Belt> { get set }
    mutating func getBelts() // Retrieve belts from Realm or whatever storage
    func configure(cell: BeltCollectionViewCell, for belt: Belt) // Let the model deal with all config logic
}

struct BeltsViewModel: BeltsModel {
    
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
    
    func configure(cell: BeltCollectionViewCell, for belt: Belt) {
        cell.configure(for: belt)
    }
}
