//
//  Padding&SpacingView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 1/26/26.
//

import SwiftUI

struct Padding_SpacingView: View {
    var body: some View {
        
        VStack{
            Spacer()
            Circle()
                .padding()
        }// End of VStack

    }
}

#Preview {
    Padding_SpacingView()
}
