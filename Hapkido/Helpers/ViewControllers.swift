//
//  ViewControllers.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import Foundation

struct ViewController {
    
    enum Belt {
        
        enum Cell: String {
            case beltCell
        }
        
        enum Segue: String {
            case categoriesSegue
        }
    }
    
    enum Category {
        
        static var identifier: String {
            return "CategoriesViewController"
        }
        
        enum Cell: String {
            case categoriesCell
        }
        
        enum Segue: String {
            case techniquesSegue
        }
    }
    
    enum Techniques {
        static var identifier: String {
            return "TechniquesViewController"
        }
        
        enum cell: String {
            case techniquesCell
        }
    }
        
}
