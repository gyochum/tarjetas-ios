//
//  Card.swift
//  tarjetas
//
//  Created by Gary Yochum on 3/14/17.
//  Copyright © 2017 Gary Yochum. All rights reserved.
//

import Foundation
import UIKit

class Card{
    
    var name:String
    var image:UIImage
    var answer:String = ""
    var choices:Array<String> = []
    
    init(_name:String, _image:UIImage){
        name = _name
        image = _image
    }
    
}
