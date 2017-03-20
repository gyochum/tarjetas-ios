//
//  Category.swift
//  tarjetas
//
//  Created by Gary Yochum on 3/10/17.
//  Copyright © 2017 Gary Yochum. All rights reserved.
//

import Foundation
import UIKit

class Category{
    
    //instance properties
    var id:Int = 0
    var title:String = ""
    var image:UIImage? = nil
    var cards:Array<Card> = []
    
    init(){
        
    }
    
    init(_id:Int, _title:String, _image: UIImage = #imageLiteral(resourceName: "Baby_000000_100")){
        id = _id
        title = _title
        image = _image
    }
    
}
