//
//  Person.swift
//  Project10
//
//  Created by Ünal Öztürk on 16.03.2019.
//  Copyright © 2019 Ünal Öztürk. All rights reserved.
//

import UIKit

class Person: NSObject,NSCoding {
    var name: String = ""
    var image:String
    
    init(name:String, image:String) {
        
        self.name = name
        self.image = image
    }
    
}
