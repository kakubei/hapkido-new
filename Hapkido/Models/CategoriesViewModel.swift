//
//  CategoriesViewModel.swift
//  Hapkido
//
//  Created by Alex Dearden on 26/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation
import RealmSwift

protocol CategoriesModel {
    var categories: List<Category> { get set }
    mutating func getCategories()
    func configure(cell: CategoriesCollectionViewCell, for category: Category)
}


struct CategoriesViewModel: CategoriesModel {
    
    init() {
        getCategories()
    }
    
    var categories = List<Category>()
    
    mutating func getCategories() {
        // TODO: Get them from real cache
        let categoriesString = [(koreanName: "Nakpop Sul", localisedName: "Falls"), (koreanName: "Chigui Sul", localisedName: "Attacks"), (koreanName: "Jok Sul", localisedName: "Kicks")]
        
        var order = 1
        categoriesString.forEach { category in
            let newCategory = Category()
            newCategory.koreanName = category.koreanName
            newCategory.localisedName = category.localisedName
            newCategory.order = order
            categories.append(newCategory)
            
            order += 1
        }
    }
    
    func configure(cell: CategoriesCollectionViewCell, for category: Category) {
        cell.koreanLabel.text = category.koreanName
        cell.localisedTextLabel.text = category.localisedName
        cell.imageView.image = category.image
        
    }
    
    
}
