//
//  CustomFont.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 7/29/25.
//

import SwiftUI

struct CustomFont: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.custom("JockeyOne-Regular", size: 60))
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.system(size: 30))
        Text ("Hello, World")

    }
}

#Preview {
    CustomFont()
}
