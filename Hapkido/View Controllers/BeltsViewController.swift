//
//  BeltsViewController.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class BeltsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let beltModel = BeltsViewModel()
    
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
        
        // All config logic is encapsulated in the view model
        beltModel.configure(cell: cell, for: belt)
        
        return cell
    }    
}

extension BeltsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let belt = beltModel.belts[indexPath.row]
        let catVC = storyboard?.instantiateViewController(withIdentifier: ViewController.Category.identifier) as! CategoriesViewController
        catVC.belt = belt
        performSegue(withIdentifier: ViewController.Belt.Segue.categoriesSegue.rawValue, sender: nil)
    }
}


