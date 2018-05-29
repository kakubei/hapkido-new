//
//  CategoriesCollectionViewCell.swift
//  Hapkido
//
//  Created by Alex Dearden on 26/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var koreanLabel: UILabel!
    @IBOutlet weak var localisedTextLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
    
    private func setupUI() {
        self.layer.cornerRadius = 10                
    }
    
}
