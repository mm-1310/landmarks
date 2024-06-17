//
//  LandmarkRow.swift
//  LandMarks
//
//  Created by Meet Madhu on 2024-06-16.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview("Landmarks") {
//    Group {
//        // added ForEach just for testing,
//        // its a row component so should be only one row
//        ForEach(0..<landmarks.count, id: \.self) { i in
//            LandmarkRow(landmark: landmarks[i])
//        }
//    }
    
    LandmarkRow(landmark: landmarks[0])
}
