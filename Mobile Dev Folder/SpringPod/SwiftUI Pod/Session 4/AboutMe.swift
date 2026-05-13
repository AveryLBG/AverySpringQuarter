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
            Image("1000016404")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Divider()
            
            Text("Avery Garner")
                .font(.largeTitle)
            
            Text("My name is Avery. I'm in the 9th grade, and I'm from the bay area.")
                .padding()
        }//End of VStack
    }
}

#Preview {
    AboutMe()
}



