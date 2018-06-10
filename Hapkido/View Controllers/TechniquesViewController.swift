//
//  TechniquesViewController.swift
//  Hapkido
//
//  Created by Alex Dearden on 10/06/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class TechniquesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: RoundedCollectionView!
    
    var belt: Belt!
    
    let techniquesModel = TechniquesModel()

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    @IBAction func closeButtonTapped(_ sender: CloseButton) {
        dismiss(animated: true, completion: nil)
    }
}
