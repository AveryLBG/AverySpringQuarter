//
//  AboutMisterCam.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/7/25.
//

import SwiftUI

struct AboutMisterCam: View {
    
    var body: some View {
        VStack{
            Image("Cameron Warner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()

            HStack  {
                Image(systemName: "lightbulb")
                Text("Mister Cam")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "lightbulb.max")
                
            }// End of HStack
            Divider()
                .padding()
            
            ScrollView() {
                Text("The Hidden Genius Project trains and mentors Black male youth in technology creation, entrepreneurship, and leadership skills to transform their lives and communities.")
                    .padding()
                    .italic()
                    .font(.headline)
            } // End of ScrollView
            
            Spacer()
        }// End of VStack
        
    }
}

#Preview {
    AboutMisterCam()
}

//Retrieved from https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-horizontal-and-vertical-scrolling-using-scrollview

