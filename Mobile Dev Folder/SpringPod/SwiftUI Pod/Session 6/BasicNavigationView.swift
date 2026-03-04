//
//  BasicNavigationView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/14/25.
//

import SwiftUI

struct BasicNavigationView: View {
    var body: some View {
        
        NavigationStack{
            VStack() {
                
                NavigationLink("Click Me") {
                    MisterCamSportsFavs()
                } // End of NavLink
                .navigationTitle("Navigation Practice")
                .navigationBarTitleDisplayMode(.inline)
                
            }// End of VStack
        }// End of NavStack
        
      
        
    }
}

#Preview {
    BasicNavigationView()
}

