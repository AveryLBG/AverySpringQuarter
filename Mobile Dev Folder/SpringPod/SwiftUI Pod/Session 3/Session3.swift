//
//  Page2.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/3/25.
//

import SwiftUI

struct Session3: View {
    var body: some View {
        VStack {
            ZStack {
                
                VStack{
                    Image("Avery")
                        .resizable() // Needed to resize Images
                        .aspectRatio(contentMode: .fit)   //Fits Image to the Device's screen
                    //                .scaledToFit() //Scaled to Fit page
                    //                .scaledToFill() //Scaled to Fill the page
                    //                .edgesIgnoringSafeArea(.all)
                        .clipShape(RoundedRectangle(cornerRadius: 30.0))  //Clips Image into shape
                    //                .clipShape(Ellipse()) // Clips Image into shape
                    //                .clipShape(Capsule()) // Clips Image into shape
                        
                    ZStack{
                        
                        Rectangle()
                            .offset(x:0, y:-35)
                            .fill(Color.yellow)
                            .frame(width: 360, height: 75)
                            
                        HStack{
                            Text("Avery Garner")
                                .offset(x:0, y:-35)
                                .padding(.horizontal, 10)
                                Spacer()
                            Text("Current HGP Genius")
                                .offset(x:0, y:-35)
                                .padding(.horizontal, 10)
                        }
                    }
                }
                
            }
                   
         
            
            Image(systemName: "pencil.tip")
                .font(.title)
        }// End of VStack
        .padding()
    }
}

#Preview {
    Session3()
}


// https://www.swiftyplace.com/blog/mastering-swiftui-image-view
