//
//  AboutMe.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/8/25.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        VStack{
            Image("Cameron Warner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Divider()
            
            Text("Cameron Warner")
                .font(.largeTitle)
            
            Text("Here's my first sentencte! Add one more sentence to have at least two sentences.")
                .padding()
        }//End of VStack
    }
}

#Preview {
    AboutMe()
}



