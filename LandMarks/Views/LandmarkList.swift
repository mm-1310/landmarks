//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Meet Madhu on 2024-06-16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            // WAS: List(landmarks, id\.id)
            // but we added Identifiable protocol to Landmark.swift
            // so id can be removed
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            // iPhone ❌
            // iPad ✅
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
