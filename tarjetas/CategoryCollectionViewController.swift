//
//  CategoriesCollectionViewController.swift
//  tarjetas
//
//  Created by Gary Yochum on 3/14/17.
//  Copyright © 2017 Gary Yochum. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CategoriesCollectionViewController: UICollectionViewController {
    
    var categories: Array<Category> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: temporary until i pulling in dynamic data
        var category = Category(_id: 1, _title: "Category One", _image: #imageLiteral(resourceName: "Boy_000000_100"))
        category.cards = [
            Card(_name: "Card One", _image: #imageLiteral(resourceName: "Boy_000000_100")),
            Card(_name: "Card Two", _image: #imageLiteral(resourceName: "Children Faces_000000_100")),
            Card(_name: "Card Three", _image: #imageLiteral(resourceName: "Children_000000_100"))
        ]
        
        categories.append(category)
        
        category = Category(_id: 2, _title: "Category Two", _image: #imageLiteral(resourceName: "Father_000000_100"))
        category.cards = [
            Card(_name: "Card One", _image:#imageLiteral(resourceName: "Father_000000_100")),
            Card(_name: "Card Two", _image: #imageLiteral(resourceName: "Family Man Woman_000000_100")),
            Card(_name: "Card Three", _image: #imageLiteral(resourceName: "Old Woman_000000_100"))
        ]
        
        categories.append(category)
        
        category = Category(_id: 3, _title: "Category Three", _image: #imageLiteral(resourceName: "Old Man_000000_100"))
        category.cards = [
            Card(_name: "Card One", _image: #imageLiteral(resourceName: "Old Man_000000_100")),
            Card(_name: "Card Two", _image: #imageLiteral(resourceName: "Pregnant_000000_100"))
        ]
        
        categories.append(category)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let cell = cell as? CategoryCollectionViewCell else { return }
        let category = categories[indexPath.row]
        
        cell.categoryImage.image = category.image
        cell.categoryTitle.text! = category.title
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        
        let _storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = _storyBoard.instantiateViewController(withIdentifier: "CardsCollectionViewController") as! CardsCollectionViewController
        
        destination.setCategory(_category: category)
        
        navigationController?.pushViewController(destination, animated: true)
    }
      
    
}
