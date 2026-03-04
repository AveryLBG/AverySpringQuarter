//
//  ImageViewModifiers.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/4/25.
//

import SwiftUI

struct ImageViewModifiers: View {
    var body: some View {
            Image("MiracleB")
                .resizable() // Needed to resize Images
                .aspectRatio(contentMode: .fit)  // Fits Image to the Device's screen
            
                .clipShape(RoundedRectangle(cornerRadius: 70.0)) // Clips Image into Rounded Rectangle shape
//                .clipShape(Ellipse()) // Clips Image into Ellipse shape
//                .clipShape(Capsule()) // Clips Image into Capsule shape
            Divider() //Adds a thin line
            
            Image(systemName: "star") // Use SF Symbols to find text symbols
                .font(.title)
                .foregroundStyle(.blue) //Changes character a different color

        

    }
}

#Preview {
    ImageViewModifiers()
}
