//
//  ViewModifiers.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/3/25.
//

import SwiftUI

struct TextViewModifiers: View {
    var body: some View {
        
        // Modify Text
        Text("Hello, Geniuses!")
            .font(.headline) // Sets the font of the text
            .foregroundColor(.green) // Sets the color of the text
            .padding() // Adds padding around the text
        
        // Adding Borders and Corners
        Text("Hello, Geniuses!")
         .padding()
         .border(Color.blue, width: 2) // Adds a blue border with a width of 2 points
         .cornerRadius(10) // Rounds the corners of the text view with a radius of 10 points
        
         // Applying Shadows
        Text("Shadow Example")
            .padding() // Adds padding around the text
            .background(Color.white) // Sets the background color of the padding area
            .shadow(color: .gray, radius: 3, x: 0, y: 5) // Applies a gray shadow
    }
}

#Preview {
    TextViewModifiers()
}
