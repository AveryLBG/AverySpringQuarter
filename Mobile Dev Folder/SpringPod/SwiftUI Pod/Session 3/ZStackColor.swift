//
//  ZStackColor.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/5/25.
//

import SwiftUI

struct ZStackColor: View {
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]
    
    var body: some View {
        ZStack {
            ForEach(1..<colors.count) {
                Rectangle()
//                Circle()
//                Eclipse()
//                Capsule()
                    .fill(colors[$0])
                    .frame(width: 100, height: 100)
                    .offset(x: CGFloat($0) * 10.0,
                            y: CGFloat($0) * 10.0)
            }// End of For loop
        }
    }
}// End of Strut 

#Preview {
    ZStackColor()
}
