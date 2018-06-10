//
//  CategoriesViewController.swift
//  Hapkido
//
//  Created by Alex Dearden on 25/05/2018.
//  Copyright © 2018 Alex Dearden. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    public var belt: Belt?
    
    let categoryModel = CategoriesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

extension CategoriesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryModel.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewController.Category.Cell.categoriesCell.rawValue, for: indexPath) as! CategoriesCollectionViewCell
        
        let category = categoryModel.categories[indexPath.row]
        
        categoryModel.configure(cell: cell, for: category)
        
        return cell
    }
}

extension CategoriesViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let techniquesVC = storyboard?.instantiateViewController(withIdentifier: ViewController.Techniques.identifier) as! TechniquesViewController
        techniquesVC.belt = belt
        performSegue(withIdentifier: ViewController.Category.Segue.techniquesSegue.rawValue, sender: nil)
    }
}
