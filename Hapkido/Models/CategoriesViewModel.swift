//
//  CategoriesViewModel.swift
//  Hapkido
//
//  Created by Alex Dearden on 26/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation

protocol CategoriesModel {
    var categories: [Category] { get set }
    mutating func getCategories()
    func configure(cell: CategoriesCollectionViewCell, for category: Category)
}


struct CategoriesViewModel: CategoriesModel {
    
    init() {
        getCategories()
    }
    
    var categories = [Category]()
    
    mutating func getCategories() {
        let storedCategories = StorageManager.shared.getCagegories()
        
        if storedCategories.count < 15 {
            categories = CustomInitialiser.createAndStoreCategories()
        } else {
            categories = Array(storedCategories)
        }
    }
    
    func configure(cell: CategoriesCollectionViewCell, for category: Category) {
        cell.koreanLabel.text = category.koreanName
        cell.localisedTextLabel.text = category.localisedName
        cell.imageView.image = category.image
    }
    
    
}

