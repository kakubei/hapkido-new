//
//  BeltsViewController.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class BeltsViewController: UIViewController {

    let beltModel = BeltsViewModel()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}


extension BeltsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beltModel.belts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewController.Belt.Cell.beltCell.rawValue, for: indexPath) as! BeltCollectionViewCell
        
        let belt = beltModel.belts[indexPath.row]
        
        cell.configure(for: belt)
        
        return cell
    }
    
    
}

extension BeltsViewController: UICollectionViewDelegate {
    
}
