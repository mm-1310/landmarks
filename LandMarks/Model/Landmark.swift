//
//  Landmark.swift
//  LandMarks
//
//  Created by Meet Madhu on 2024-06-16.
//

import Foundation
import SwiftUI
import CoreLocation

// Adding Codable conformance makes it easier to move
// data between the structure and a data file

// Identifiable protocol required unique id,
// in the JSON data, we already have id property
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
