//
//  CustomInitialisers.swift
//  Hapkido
//
//  Created by Alex Dearden on 29/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation

struct CustomInitialiser {
    
    public static func createAndStoreBelts() -> [Belt] {
        print("Creating new belts")
        let beltNames = ["yellow", "green", "blue", "red", "brown", "black"]
        var order = 1
        
        var belts = [Belt]()
        
        beltNames.forEach { belt in
            let newBelt = Belt()
            newBelt.name = belt
            newBelt.order = order
            order += 1
            belts.append(newBelt)
            StorageManager.shared.add(belt: newBelt)
        }
        
        return belts
    }
    
    public static func createAndStoreCategories() -> [Category] {
        let categoriesString = [(koreanName: "Nakpop Sul", localisedName: "Falls"), (koreanName: "Chigui Sul", localisedName: "Attacks"), (koreanName: "Jok Sul", localisedName: "Kicks")]
        
        var categories = [Category]()
        
        var order = 1
        categoriesString.forEach { category in
            let newCategory = Category()
            newCategory.koreanName = category.koreanName
            newCategory.localisedName = category.localisedName
            newCategory.order = order
            categories.append(newCategory)
            StorageManager.shared.add(category: newCategory)
            order += 1
        }
        return categories
    }
}
