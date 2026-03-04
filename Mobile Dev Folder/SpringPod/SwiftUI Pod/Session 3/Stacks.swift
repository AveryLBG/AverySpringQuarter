//
//  Stacks.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/4/25.
//

import SwiftUI

struct Stacks: View {
    
    var body: some View {
        //Whiteboarding this lesson has a greater effect
        
        VStack {
            Text("Hello, Geniuses!")
            Image(systemName: "globe")
            Text("Hello!")
            Image(systemName: "lightbulb")
        }// End of VStack
        
        Divider()
        
        HStack {
            Text("Hello, Geniuses!")
            Image(systemName: "globe")
        }// End of HStack
        Divider()
        
        ZStack {
            Text("Hello, Alijah!")
            Image(systemName: "globe")
            Text("Hello, Erik!")
            Text("Hello, Ian!")
            Text("Hello, Stephon!")
            Text("Hello, Taeyon!")
            Text("Hello, Andrew!")
            Text("Hello, Braylin!")
            Text("Hello, Willie!")
            Text("Hello, misterCam!")
        }// End of ZStack
        
        
    }
}

#Preview {
    Stacks()
}

//Retrieved from https://www.hackingwithswift.com/books/ios-swiftui/using-stacks-to-arrange-views
