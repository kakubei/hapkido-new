//
//  BeltsViewModel.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation

protocol BeltsModel {
    var belts: [Belt] { get set }
    mutating func getBelts() // Retrieve belts from Realm or whatever storage
    func configure(cell: BeltCollectionViewCell, for belt: Belt) // Let the model deal with all config logic
}

struct BeltsViewModel: BeltsModel {
    
    init() {
        getBelts()
    }
    
    public var belts = [Belt]()
    
    mutating func getBelts() {
        let storedBelts = StorageManager.shared.getBelts()
        
        if storedBelts.count == 0 {
            belts = CustomInitialiser.createAndStoreBelts()
        } else {
            belts = Array(storedBelts)
        } 
    }
    
    func configure(cell: BeltCollectionViewCell, for belt: Belt) {
        cell.beltLabel.text = belt.localisedName
        cell.colourBand.backgroundColor = belt.colour
    }
}
