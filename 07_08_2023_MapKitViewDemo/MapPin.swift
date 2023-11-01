//
//  MapPin.swift
//  07_08_2023_MapKitViewDemo
//
//  Created by Vishal Jagtap on 01/11/23.
//

import Foundation
import MapKit

class MapPin : NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title : String?
    var locationName : String
    
    init(coordinate: CLLocationCoordinate2D, title: String?, locationName: String) {
        self.coordinate = coordinate
        self.title = title
        self.locationName = locationName
    }
}
