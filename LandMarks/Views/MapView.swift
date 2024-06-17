//
//  MapView.swift
//  LandMarks
//
//  Created by Meet Madhu on 2024-06-16.
//

import SwiftUI
import MapKit

struct MapView: View {
    var locationCoordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: locationCoordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(locationCoordinate:CLLocationCoordinate2D(
        latitude: landmarks[0].locationCoordinate.latitude,
        longitude: landmarks[0].locationCoordinate.longitude)
    )
}
