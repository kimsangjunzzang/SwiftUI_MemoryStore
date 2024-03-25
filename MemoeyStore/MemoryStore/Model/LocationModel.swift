//
//  LocationModel.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//

import Foundation
import MapKit


struct NationalParkLocation: Codable, Identifiable {
    var id: String
    let places: [Place]
    var latitude: Double
    var longitude: Double
    
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct Place: Codable, Identifiable {
    let name: String
    let id : String
    let image: [String]
    var memo: String
}
