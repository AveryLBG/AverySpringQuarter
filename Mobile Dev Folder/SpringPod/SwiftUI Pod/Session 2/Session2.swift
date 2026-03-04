//
//  MainContentView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/11/25.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        
        VStack {
            Image("Cameron Warner")
                .resizable() // Needed to resize Images
                .frame(width: 200, height: 200)
//                .aspectRatio(contentMode: .fit) // Fits Image to the Device's screen
                .clipShape(Circle()) // Clips Image into shape
            
            Text("Avery Garner")
            
            Image(systemName: "lightbulb") // Use SF Symbols
                .font(.title)
//                .symbolEffect(.bounce.up.byLayer, options: .repeat(.continuous)) //Symbol Effects
            
        }// End of VStack
        .padding()
        
        
    }
}

#Preview {
    MainContentView()
}
