//
//  BeltCollectionViewCell.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class BeltCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var beltImageView: UIImageView!
    
    public func configure(for belt: Belt) {
        beltImageView.image = belt.image
    }
}
