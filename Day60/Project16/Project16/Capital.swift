//
//  Capital.swift
//  Project16
//
//  Created by Ünal Öztürk on 2.04.2019.
//  Copyright © 2019 Ünal Öztürk. All rights reserved.
//

import MapKit
import UIKit

class Capital: NSObject , MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title:String,coordinate:CLLocationCoordinate2D,info:String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
