//
//  SwiftUIView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 4/15/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {

      
        Image("Cameron Warner")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        
        Text("Mister Cam")
            .font(.largeTitle)
    }
}

#Preview {
    SwiftUIView()
}
