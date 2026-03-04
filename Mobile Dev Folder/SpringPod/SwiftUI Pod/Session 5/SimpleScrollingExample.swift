//
//  SimpleScrollingExample.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 1/26/26.
//

import SwiftUI

struct SimpleScrollingExample: View {
    var body: some View {
        VStack{
            Spacer()
            ScrollView(.horizontal) { //Scrolls left and right
                HStack(spacing: 20) {
                    ForEach(0..<50) { index in
                        Text("Item \(index)")
                            .frame(width: 100, height: 100)
                            .background(Color.green)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }// End of HStack
            }// End of ScrollView
            
            Spacer()
            
            ScrollView(.vertical) { //Scrolls up and down
                VStack(spacing: 20) {
                    ForEach(0..<50) { index in
                        Text("Item \(index)")
                            .frame(width: 100, height: 100)
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }// End of HStack
            }// End of ScrollView
            
            Spacer()
        }// End of VStack
        .frame(width: 350, height: 400)
    }
}

#Preview {
    SimpleScrollingExample()
}
