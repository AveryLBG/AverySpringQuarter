//
//  NavigationScreen.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/13/25.
//

import SwiftUI

struct NavigationScreen: View {
    var body: some View {
        
        NavigationStack{ //Used to enable Navigation
            
            
            Spacer()
        Section{ //Method 1
                NavigationLink("Click Me") {
                    AboutMisterCam() //The View You Want to Navigate to
                }
            }// End of Section
            Divider()
            Spacer()
        
            
        Section{ //Method 2
                NavigationLink {
                    MisterCamSportsFavs() //The View You Want to Navigate to
                } label: {
                    VStack {
                        Text("Click Here Too")
                        Text("This is the Sports Page")
                        Image(systemName: "american.football")
                    }
                    .font(.largeTitle)
                }
            }//End of Section
            Divider()
            Spacer()
            
            
        Section{ //Method 3
                    NavigationLink {
                        AboutMisterCam()//The View You Want to Navigate to
                    } label: {
                        VStack{
                            Image("Cameron Warner")
                                .resizable()
                                .frame(width: 200, height: 200)
                            Text("Click The Pic")
                                .font(.caption)
                        }
                    }
            
                }//End of Section
            Spacer()
            .navigationTitle("NavigationStackModifers") //Labels title for view
           .navigationBarTitleDisplayMode(.inline) // changes the font style of the view's title
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarTitleDisplayMode(.large)
        }// End of NavStack

        
    }
}

#Preview {
    NavigationScreen()
}


// Retrieved from https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui

// Retrieved from https://www.swiftanytime.com/blog/navigationstack-in-swiftui 

// Retrieved from https://developer.apple.com/documentation/swiftui/navigation
