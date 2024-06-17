//
//  CircleImage.swift
//  LandMarks
//
//  Created by Meet Madhu on 2024-06-16.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: landmarks[0].image)
}
