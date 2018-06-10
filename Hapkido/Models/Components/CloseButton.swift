//
//  CloseButton.swift
//  Hapkido
//
//  Created by Alex Dearden on 10/06/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class CloseButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup() {
        self.setImage(UIImage(named: "close"), for: .normal)
    }
}
