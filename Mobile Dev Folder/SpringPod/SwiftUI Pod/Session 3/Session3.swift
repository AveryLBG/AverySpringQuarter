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
                    Image("HGPLogo")
                        .resizable() // Needed to resize Images
                        .aspectRatio(contentMode: .fit)   //Fits Image to the Device's screen
                    //                .scaledToFit() //Scaled to Fit page
                    //                .scaledToFill() //Scaled to Fill the page
                    //                .edgesIgnoringSafeArea(.all)
                        .clipShape(RoundedRectangle(cornerRadius: 30.0))  //Clips Image into shape
                        .offset(x:0, y:-75)
                    //                .clipShape(Ellipse()) // Clips Image into shape
                    //                .clipShape(Capsule()) // Clips Image into shape
                        
                    ZStack{
                        
                        Rectangle()
                            .offset(x:0, y:-75)
                            .fill(Color.yellow)
                            .frame(width: 370, height: 190)
                            
                        HStack{
                            Text("The Hidden Genius Project")
                                .offset(x:0, y:-75)
                                .padding(.horizontal, 10)
                                Spacer()
                            Text("The Hidden Genius Project trains black male youth in technology creation, entrepreneurship, and leadership skills to transform their lives and communities.")
                                .offset(x:0, y:-75)
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
