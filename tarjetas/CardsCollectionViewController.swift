//
//  CardsCollectionViewController.swift
//  tarjetas
//
//  Created by Gary Yochum on 3/14/17.
//  Copyright © 2017 Gary Yochum. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CardsCollectionViewController: UICollectionViewController {

    var category:Category = Category();
    
    override func viewDidLoad() {
        super.viewDidLoad()     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return category.cards.count
    }

    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let cell = cell as? CardCollectionViewCell else {return}
        let card:Card = category.cards[indexPath.row]
        
        cell.cardImage.image = card.image
        cell.cardName.text = card.name
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    }
    
    func setCategory(_category:Category) -> Void{
        category = _category
    }
   

}
