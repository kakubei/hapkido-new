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
        print("Creating categories")
        
        let categoriesString = [(koreanName: "Nakpop Sul", localisedName: "Falls"),
                                (koreanName: "Chigui Sul", localisedName: "Attacks"),
                                (koreanName: "Jok Sul", localisedName: "Basic Kicks"),
                                (koreanName: "Toksu Jok Sul", localisedName: "Special Kicks"),
                                (koreanName: "Bakat Son Mok Chapki", localisedName: "External Wrist Grab"),
                                (koreanName: "Some Chapki", localisedName: "Grab Sleeve"),
                                (koreanName: "Palkup Chapki", localisedName: "Grab Elbow"),
                                (koreanName: "Oke Chapki", localisedName: "Shoulder Grab"),
                                (koreanName: "Yang Son Mok Chapki", localisedName: "Grab both Wrists"),
                                (koreanName: "Mokdolmy Chapki", localisedName: "Grab Neck"),
                                (koreanName: "Yop Son Mok Chapki", localisedName: "Side Grab Wrist"),
                                (koreanName: "Yop Kuri Chapki", localisedName: "Side Grab Clothes"),
                                (koreanName: "Ap Mom Chapki", localisedName: "Grab Body"),
                                (koreanName: "Kason Chapki", localisedName: "Push"),
                                (koreanName: "Kochong Sul", localisedName: "Ground Control")
        ]
        
        var categories = [Category]()
        
        var order = 1
        categoriesString.forEach { category in
            let newCategory = Category()
            newCategory.id = order
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
