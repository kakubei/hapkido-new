//
//  StorageManager.swift
//  Hapkido
//
//  Created by Alex Dearden on 29/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation
import RealmSwift

struct StorageManager {
    private var   database: Realm
    
    // Make sure schema changes (i.e. migration) do not crash app
    private let config = Realm.Configuration(schemaVersion: 1, deleteRealmIfMigrationNeeded: true)
    
    static let   shared = StorageManager()
    
    private init() {
        database = try! Realm(configuration: config)
    }
    
    // MARK: Belts
    
    func getBelts() -> Results<Belt> {
        return database.objects(Belt.self).sorted(byKeyPath: "order")
    }
    
    func add(belt: Belt) {
        try! database.write {
            database.add(belt)
        }
    }
    
    func deleteBelts() {
        try! database.write {
            database.delete(database.objects(Belt.self))
        }
    }
    
    // MARK: Categories
    
    func getCagegories() -> Results<Category> {
        return database.objects(Category.self).sorted(byKeyPath: "order")
    }
    
    func add(category: Category) {
        try! database.write {
            database.add(category, update: true)
        }
    }
    
    func deleteCategories() {
        try! database.write {
            database.delete(database.objects(Category.self))
        }
    }
    
    
    func deleteAll()  {
        try! database.write {
            database.deleteAll()
        }
    }

    // TODO: Create generic method to delete specific object type
//    func deleteFromStorage(object: Item)   {
//        try!   database.write {
//            database.delete(object)
//        }
//    }
}
